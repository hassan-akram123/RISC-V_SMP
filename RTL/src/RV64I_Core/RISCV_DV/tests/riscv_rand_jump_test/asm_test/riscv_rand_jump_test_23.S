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
                  la x17, kernel_stack_end

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
                  li x0, 0x1
                  li x1, 0xc
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0xb1390d29
                  li x6, 0x946b5204
                  li x7, 0x3
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x7922c9ee
                  li x11, 0xf89858fb
                  li x12, 0x0
                  li x13, 0xef687c81
                  li x14, 0x3
                  li x15, 0xe
                  li x16, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x4
                  li x22, 0xb
                  li x23, 0x80000000
                  li x24, 0xf25be2a5
                  li x25, 0xb
                  li x26, 0x1
                  li x27, 0x6
                  li x28, 0xe8d0173
                  li x29, 0x80000000
                  li x30, 0x9
                  li x31, 0x80000000
                  la x18, user_stack_end
main:             lui          s8, 23142
                  la           t6, sub_5
                  addi         t6, t6, -128
                  slli         s0, tp, 6
                  sltu         sp, t6, s0
                  andi         s1, s11, 206
                  bltu         s11, s6, main_j2 #branch to jump instr
                  sll          a4, t6, s0
main_j2:          jalr         tp, t6, 129 #jump main -> sub_5
                  slt          tp, gp, a4
                  la           s7, sub_2
                  xori         t3, s1, 146
                  sltu         s8, s5, tp
                  xori         s3, s3, 236
                  addi         s7, s7, -944
                  xori         s1, s2, -1755
                  bge          s4, a3, main_j3 #branch to jump instr
                  slt          a1, t0, t6
main_j3:          jalr         tp, s7, 945 #jump main -> sub_2
                  ori          s6, s9, 668
                  lui          a5, 340747
                  la           t6, sub_1
                  sltu         a0, a6, s5
                  addi         t6, t6, -385
                  sltu         t1, t1, a1
                  auipc        s3, 873199
                  addi         s0, s0, 1925
                  add          a2, zero, a5
main_j4:          jalr         tp, t6, 385 #jump main -> sub_1
                  slti         t5, a0, -997
                  addi         s9, a7, -1045
                  lui          s8, 798444
                  la           s6, sub_4
                  srl          t0, s8, tp
                  lui          t6, 232519
                  addi         s6, s6, -973
                  auipc        gp, 253796
main_j5:          jalr         tp, s6, 974 #jump main -> sub_4
                  la           s9, sub_3
                  slt          s8, t3, t2
                  xori         t4, s5, -435
                  xor          a6, a7, zero
                  slti         s10, t1, -290
                  sub          t2, s11, t1
                  add          s5, a2, s7
                  sub          t0, s0, a3
                  slt          a3, s2, a0
                  addi         s9, s9, 553
                  bne          a6, s10, main_j6 #branch to jump instr
                  sltiu        s11, ra, 282
main_j6:          jalr         tp, s9, -553 #jump main -> sub_3
                  la           sp, region_0+533 #start riscv_load_store_rand_instr_stream_0
                  sub          t5, a1, a1
                  lb           a6, 442(sp)
                  slli         ra, s0, 8
                  srl          s8, a0, t2
                  slli         t1, t3, 30
                  addi         t0, a0, 751
                  lbu          t2, 1402(sp)
                  sltu         a3, t4, s4
                  srai         a6, t4, 16
                  sltu         a2, t1, gp
                  xor          tp, t2, tp
                  lh           gp, 453(sp)
                  add          s6, a0, s1
                  slti         s1, s2, 178
                  ori          s9, zero, -2010
                  sltiu        s10, s11, 853
                  sb           s0, 650(sp)
                  slti         t1, t0, 895
                  nop
                  sltiu        a1, a3, -2046
                  sh           tp, 565(sp)
                  slt          a1, ra, a5
                  lh           gp, -499(sp)
                  slli         s8, a7, 27
                  xori         a1, s10, -194
                  auipc        s11, 892154
                  sh           a1, 625(sp)
                  srl          zero, s0, a7
                  lb           t2, 1174(sp)
                  nop
                  lhu          a2, 669(sp)
                  srai         a3, s3, 10
                  lb           s6, 452(sp)
                  xor          t4, a4, t4
                  lb           s5, 1291(sp)
                  nop
                  sub          t2, s10, s8
                  lui          a2, 950917
                  lbu          s3, 1211(sp) #end riscv_load_store_rand_instr_stream_0
                  xor          t6, gp, s8
                  srli         a2, t1, 16
                  addi         a6, s0, -1025
                  blt          a7, t5, 10f
                  slti         zero, t5, 920
                  addi         sp, s7, 1138
                  or           s11, tp, t1
                  auipc        s3, 850284
                  slli         a5, t0, 24
                  la           s3, sub_2
                  srl          tp, tp, tp
                  addi         s3, s3, -594
                  srai         s7, a6, 26
                  xori         s1, a6, 190
                  auipc        ra, 162211
                  blt          s0, s5, main_j1 #branch to jump instr
                  andi         s8, a3, 1132
main_j1:          jalr         tp, s3, 594 #jump main -> sub_2
                  sltu         a0, tp, t5
10:               slti         tp, sp, -1905
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           addi         s2, s2, -24
                  sw           tp, 4(s2)
                  or           a1, s8, s10
                  sltiu        ra, a2, 31
                  slti         a1, t1, -140
                  srai         a2, a6, 12
                  slt          a6, s7, a2
                  bltu         a6, t2, 14f
                  bne          s10, t0, 7f
                  addi         a3, t6, -1544
                  lui          t3, 164288
                  auipc        s1, 947503
7:                xori         s10, s9, -855
                  lui          s3, 217786
                  blt          s1, s5, 10f
10:               blt          zero, a0, 28f
                  sra          s0, a6, s9
                  bne          gp, s3, 26f
                  sub          s5, a3, t4
14:               srai         s9, s8, 26
                  ori          zero, a3, -301
                  ori          t3, ra, 306
                  slli         s7, s7, 16
                  lui          zero, 51340
                  sra          t6, s2, t2
                  srl          s3, zero, ra
                  and          ra, s1, t3
                  auipc        t1, 106760
                  xori         s9, gp, 1474
                  bltu         s11, t0, 26f
                  and          a0, tp, tp
26:               sub          a2, a1, gp
                  blt          s11, a4, 47f
28:               auipc        tp, 645902
                  or           s9, t3, ra
                  sltiu        t2, s8, 107
                  lui          t6, 446682
                  bltu         s3, a2, 50f
                  xor          a5, a4, a2
                  sll          s1, tp, t5
                  bge          s8, s8, 54f
                  sll          t4, s0, a2
                  srli         a2, sp, 21
                  xor          t2, a6, t6
                  or           s0, s10, s4
                  sll          t5, s9, t1
                  srli         s9, s4, 7
                  sll          s1, s7, t2
                  sra          a2, s4, t3
                  sra          s10, gp, a5
                  slli         a2, s0, 24
                  beq          s8, s10, 63f
47:               add          a1, t1, gp
                  xor          s1, t6, s7
                  bltu         t4, gp, 59f
50:               bne          t1, a4, 67f
                  bne          s4, ra, 67f
                  xori         sp, a0, -917
                  slt          t5, t0, s0
54:               bge          s11, a4, 56f
                  lui          a0, 168595
56:               sll          s9, s4, t5
                  sltiu        s7, s10, 2045
                  bne          t3, s1, 67f
59:               bne          t3, s11, 60f
60:               sltiu        t5, tp, 1914
                  bltu         a5, a4, 62f
62:               ori          s11, t0, 88
63:               slli         s6, a0, 0
                  ori          a3, a7, 1136
                  bltu         s0, s4, 67f
                  beq          t3, a6, 67f
67:               xor          gp, gp, t0
                  sltiu        s0, s1, 1399
                  or           a4, s4, s5
                  slti         gp, a3, 1047
                  lw           tp, 4(s2)
                  slli         a6, t5, 30
                  ori          s8, t0, 1507
                  ori          t2, s11, 933
                  addi         s2, s2, 24
                  or           a0, s10, s3
                  xor          t5, zero, t4
                  slti         s11, gp, -1565
84:               addi x11, x4, 0
84:               jalr x11, x11, 0
sub_6:            srai         t3, t3, 6
                  xor          s11, a4, a3
                  addi         s2, s2, -24
                  or           zero, t3, t0
                  or           s8, t0, t5
                  auipc        t5, 116356
                  srli         a5, s9, 22
                  sw           tp, 4(s2)
                  srli         s5, t6, 2
                  addi         a5, ra, 1696
                  bltu         s6, s8, 2f
                  or           s5, a1, s0
2:                blt          s3, ra, 8f
                  srai         a2, t5, 15
                  slli         t5, a2, 7
                  sra          gp, a6, t6
                  slt          s6, gp, t2
                  sltiu        s0, s7, 1008
8:                sub          s9, s5, s3
                  or           t6, t1, sp
                  lw           tp, 4(s2)
                  srli         a6, t4, 27
                  sltu         gp, s8, ra
                  addi         s2, s2, 24
                  srli         ra, sp, 31
                  lui          s1, 227902
                  add          s9, tp, s2
27:               addi x1, x4, 1
27:               jalr x1, x1, 0
sub_7:            xori         s1, zero, -1243
                  sll          s8, s11, s7
                  sll          a6, s11, gp
                  and          a5, t4, gp
                  sra          a0, zero, tp
                  addi         s2, s2, -44
                  and          s7, s1, a4
                  sw           tp, 4(s2)
                  slt          s3, s6, sp
                  andi         a0, s7, -252
                  la           s5, region_0+1900 #start riscv_load_store_rand_instr_stream_5
                  sb           s10, -3(s5)
                  sb           s2, -12(s5)
                  sub          t1, s1, s8
                  sh           t4, 14(s5)
                  sb           s9, 3(s5)
                  lui          a0, 1033918
                  lh           a5, 8(s5)
                  lb           s9, 1(s5)
                  lui          a3, 801193
                  sltiu        s7, a1, 635
                  lb           s8, 5(s5)
                  sra          t0, t2, a6
                  sb           t2, 13(s5)
                  lbu          a5, -1(s5)
                  sub          t1, ra, s0
                  addi         a0, a4, -866
                  add          tp, t1, a4
                  slti         s3, t4, 1294
                  sh           s10, -14(s5)
                  sltu         s11, s11, a3
                  sltiu        sp, sp, 1812
                  lbu          ra, 1(s5)
                  sb           t1, -7(s5)
                  lbu          gp, -10(s5)
                  lbu          s7, -8(s5)
                  sb           s7, -3(s5)
                  srl          t5, a1, s2
                  lb           s8, -9(s5)
                  addi         t0, t1, 300
                  lhu          a1, -4(s5)
                  lbu          a0, -5(s5)
                  sub          s10, s0, s3
                  sb           t2, 15(s5) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1675 #start riscv_load_store_rand_instr_stream_2
                  sltiu        s0, t3, -1202
                  sb           s4, -162(sp)
                  add          s10, a3, t4
                  lb           a0, 110(sp)
                  lhu          a6, 189(sp)
                  xor          tp, s0, a4
                  slti         a2, s9, -432
                  addi         s10, a5, -1924
                  sb           t2, -222(sp)
                  srai         a1, s11, 1
                  sb           s3, 41(sp)
                  sh           s1, 105(sp)
                  and          a3, s9, s11
                  sw           sp, 141(sp)
                  lw           s5, 153(sp)
                  lbu          s0, -110(sp)
                  srai         t6, s5, 10
                  or           t2, t0, t6
                  srli         ra, tp, 5
                  lb           gp, -255(sp)
                  lbu          t0, -172(sp)
                  srli         s1, a7, 11
                  ori          s7, s4, -575
                  sra          tp, s1, s2
                  lb           s9, -142(sp)
                  lbu          t4, 96(sp)
                  sb           t0, 250(sp)
                  slti         ra, gp, 586
                  sb           tp, -88(sp)
                  sltu         t5, s4, a4
                  lb           ra, -24(sp)
                  lb           zero, -234(sp)
                  and          s1, s0, s6
                  sra          s7, zero, t1
                  lh           a2, 45(sp)
                  sub          t1, s1, sp
                  srl          a6, a3, a1
                  xor          a1, s8, a4
                  sb           t0, -104(sp)
                  sb           t3, -168(sp)
                  lb           t5, 132(sp)
                  lhu          gp, -57(sp)
                  ori          t3, s4, 1745
                  nop
                  slt          t6, a5, zero
                  sltiu        ra, s7, 675
                  lbu          t1, 32(sp)
                  sb           s5, 252(sp)
                  srli         zero, t3, 10
                  addi         s3, s6, -885
                  lbu          s6, 207(sp)
                  lhu          a0, 155(sp)
                  lbu          t5, -72(sp)
                  lhu          s0, -25(sp)
                  nop
                  xor          t2, a3, zero
                  sb           zero, 114(sp)
                  or           s10, t0, s3
                  ori          t1, s9, -1479
                  lb           a6, -212(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_0+464 #start riscv_load_store_rand_instr_stream_1
                  ori          zero, a6, 109
                  sltu         s11, s3, a6
                  lbu          gp, -80(s5)
                  srli         t6, s4, 24
                  srl          s8, s2, a0
                  xor          a0, s1, a0
                  sltu         t3, t2, s2
                  lhu          s6, 818(s5)
                  nop
                  slt          t5, s3, s8
                  lbu          s0, -41(s5)
                  lb           zero, 861(s5)
                  sb           a6, 491(s5)
                  lb           t0, -229(s5)
                  sw           s6, -396(s5)
                  sltu         t5, tp, s10
                  andi         s10, t3, 1622
                  addi         sp, t5, 1542
                  srai         s6, s11, 4
                  nop
                  lb           a3, -274(s5)
                  srl          a6, zero, s4
                  srai         s3, s1, 12
                  nop
                  sw           s10, 1324(s5)
                  lb           gp, -250(s5) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1689 #start riscv_load_store_rand_instr_stream_0
                  lb           s10, 147(sp)
                  nop
                  sb           zero, 44(sp)
                  lbu          s3, 256(sp)
                  lbu          a1, -136(sp)
                  lbu          s9, 164(sp)
                  lb           s9, -94(sp)
                  lb           a2, -157(sp)
                  nop
                  slt          t2, t5, t2
                  and          t4, a5, a7
                  xor          s6, a4, a4
                  sb           s8, -60(sp)
                  slti         t1, s5, 223
                  lbu          gp, -154(sp)
                  or           a3, s8, t3
                  lh           a1, 79(sp)
                  lbu          a5, -184(sp)
                  sll          s9, s10, t2
                  sb           a5, 246(sp)
                  lbu          a2, -40(sp)
                  lbu          s9, -231(sp)
                  nop
                  lbu          s8, 118(sp)
                  lbu          s10, 68(sp)
                  nop
                  srl          t0, a7, s6
                  lbu          s0, -6(sp)
                  slt          s8, a3, s3
                  slt          s11, t5, t6
                  sltiu        s7, t4, 570
                  sb           s5, -104(sp)
                  addi         t1, s7, 174
                  sltiu        s5, a5, -558
                  lw           t3, 235(sp)
                  sb           s8, 106(sp)
                  srli         t2, t4, 3
                  srl          s7, s5, gp
                  sub          a1, s5, ra
                  sh           a3, 63(sp)
                  auipc        s0, 409164
                  nop
                  lhu          t4, -69(sp)
                  lbu          t2, -188(sp)
                  slt          t1, a7, gp
                  sb           a0, -101(sp)
                  lbu          a3, 225(sp)
                  sh           gp, -191(sp)
                  andi         a3, a7, -1421
                  add          a2, a6, t1
                  and          t1, a0, t1
                  sltiu        t0, t2, -377
                  sb           t2, -136(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s6, region_1+242 #start riscv_load_store_rand_instr_stream_7
                  sb           s9, 1226(s6)
                  slt          a2, sp, t3
                  lb           gp, 13(s6)
                  sb           t1, -38(s6)
                  lbu          a0, 803(s6)
                  srli         s3, s3, 29
                  xori         t4, gp, 507
                  lb           t5, 1271(s6)
                  sltu         a1, t5, s3
                  lhu          s0, 200(s6)
                  slti         s9, a0, -124
                  sb           s1, 1472(s6)
                  lb           zero, 1091(s6)
                  andi         a0, t3, 1566
                  lb           a4, -11(s6)
                  sll          s10, a6, s3
                  sltu         s7, a1, s1
                  srl          a6, s2, s10
                  slt          s0, s8, s11
                  or           a0, s6, a0
                  lbu          a3, 451(s6)
                  xor          ra, s8, a5
                  andi         s5, t5, 1908
                  lb           a6, 596(s6)
                  andi         a0, t4, -1085
                  slti         s1, a2, 148
                  srai         s8, a3, 9
                  srli         a0, a5, 13
                  lb           s3, -129(s6)
                  sltu         s1, tp, s1
                  lui          a0, 695147
                  srai         t5, s6, 18
                  lb           s10, 353(s6)
                  or           s10, s3, tp
                  slli         sp, a0, 14
                  andi         ra, a5, 423
                  lb           gp, 1710(s6)
                  lbu          tp, 507(s6)
                  lhu          s8, 1426(s6)
                  sw           s7, 902(s6)
                  sb           a5, -199(s6)
                  addi         a0, t5, -457
                  srl          tp, t6, s4
                  lbu          a0, 687(s6) #end riscv_load_store_rand_instr_stream_7
                  la           t4, region_0+699 #start riscv_load_store_rand_instr_stream_10
                  lbu          s9, 5(t4)
                  sra          ra, t3, s5
                  sh           tp, -1(t4)
                  sw           a4, 9(t4)
                  sb           tp, 11(t4)
                  addi         s10, a5, 747
                  andi         a2, s0, -1575
                  addi         ra, t5, 442
                  sb           t5, -10(t4)
                  srl          s0, s10, gp
                  and          a4, a4, s7
                  slli         a0, t1, 8
                  sh           gp, 5(t4)
                  lbu          a2, 6(t4)
                  add          s7, s7, s4
                  sll          sp, a7, ra
                  lb           ra, 0(t4)
                  sb           s4, 10(t4)
                  and          a5, t1, a0
                  lb           a5, 7(t4)
                  andi         t0, t6, -713
                  sh           s0, 11(t4)
                  lb           s6, 0(t4)
                  nop
                  lb           t5, 4(t4)
                  nop
                  srl          s6, s1, sp
                  lbu          sp, 3(t4)
                  srl          a6, sp, t1
                  or           a5, a2, a5
                  lb           a0, 0(t4)
                  lhu          sp, 1(t4)
                  lbu          s6, 6(t4)
                  auipc        t2, 507591
                  srai         s5, s10, 20
                  andi         s9, a2, -904
                  auipc        s3, 95988
                  srl          a6, s5, s4
                  lbu          a2, -6(t4)
                  lbu          s7, 6(t4)
                  xor          t0, s0, t6
                  srl          s7, a2, a2
                  sll          t2, tp, t1
                  ori          ra, tp, -814
                  slt          t0, t4, s9
                  sra          a5, a1, s3
                  lb           s5, -14(t4)
                  sub          a3, a6, a2
                  lui          s11, 48604
                  nop
                  lb           t6, 6(t4) #end riscv_load_store_rand_instr_stream_10
                  la           t3, region_0+1441 #start riscv_load_store_rand_instr_stream_9
                  slti         s1, t2, 138
                  lb           a0, 6(t3)
                  sra          s6, tp, t4
                  sub          s11, s5, s4
                  sra          t2, a1, s3
                  sb           a3, -50(t3)
                  sh           a3, 39(t3)
                  lb           t6, 47(t3)
                  sltu         a3, t1, s8
                  lb           s0, -64(t3)
                  sb           s8, -59(t3)
                  nop
                  lbu          a4, -41(t3)
                  sll          t6, s11, a3
                  srl          s0, a5, a5
                  sb           ra, -4(t3)
                  lb           t2, 6(t3)
                  lb           gp, 11(t3)
                  slt          zero, gp, s8
                  lhu          s5, 11(t3)
                  lb           sp, -42(t3)
                  sb           a6, 8(t3)
                  slti         s0, tp, -277
                  srl          t5, s4, ra
                  lb           t4, 24(t3)
                  sw           s6, 63(t3)
                  ori          s3, s8, 966
                  lbu          a6, 2(t3)
                  lb           a2, 41(t3)
                  sub          t5, a0, s4
                  lh           t0, 41(t3)
                  sltu         a6, a2, t6
                  lh           s6, 13(t3)
                  sb           a2, 1(t3)
                  sub          a3, zero, a6
                  lbu          a2, 52(t3)
                  lbu          a5, -22(t3)
                  slt          a5, a1, a0
                  ori          s10, t6, 1175
                  lh           s9, 1(t3)
                  lb           zero, 8(t3)
                  srai         a2, a2, 26
                  auipc        s5, 1032754
                  or           t0, t4, t4
                  sh           t2, 13(t3)
                  lhu          t6, 45(t3) #end riscv_load_store_rand_instr_stream_9
                  la           s0, region_0+291 #start riscv_load_store_rand_instr_stream_11
                  xor          zero, a5, t4
                  sw           a2, -7(s0)
                  andi         sp, s7, -1247
                  sb           a7, 10(s0)
                  srai         s6, a1, 16
                  lw           s7, 5(s0)
                  srai         gp, s1, 31
                  sra          t6, a3, s9
                  slli         s10, s3, 25
                  slti         s11, s10, -1189
                  srl          s7, t2, t0
                  slli         t0, s7, 16
                  xori         a1, s5, -1022
                  sh           t1, -9(s0)
                  sltiu        t4, s7, 332
                  lhu          t3, -9(s0)
                  slt          t4, t2, a0
                  sltu         s6, t2, t3
                  sra          a2, s8, tp
                  xori         ra, t1, -832
                  sll          sp, s6, ra
                  ori          sp, a4, 1253
                  sb           s2, 6(s0)
                  sll          s7, s4, a7
                  and          s10, a3, t1
                  or           gp, s9, s4
                  andi         s7, t4, 897
                  ori          t2, a1, -472
                  sll          a5, gp, s2
                  nop
                  lbu          s8, 10(s0)
                  lb           a5, -8(s0)
                  lb           a6, 4(s0)
                  srli         s6, s2, 7
                  lui          t1, 750364
                  nop
                  xori         s7, t3, 1371
                  slt          gp, s1, gp
                  add          a3, t1, gp
                  sh           s2, 11(s0)
                  lbu          s3, 16(s0) #end riscv_load_store_rand_instr_stream_11
                  la           s11, region_1+1044 #start riscv_load_store_rand_instr_stream_6
                  lb           a0, 673(s11)
                  lb           t0, 63(s11)
                  lhu          t0, -150(s11)
                  lbu          t4, 940(s11)
                  andi         t0, s2, -1934
                  sub          a0, a2, a0
                  sb           zero, -995(s11)
                  xor          t5, s11, gp
                  ori          s7, a1, -176
                  lhu          a4, 446(s11)
                  nop
                  srl          s10, s11, a3
                  srli         s9, t6, 23
                  addi         s0, t5, -332
                  lw           t2, -364(s11)
                  sh           t0, -444(s11)
                  slt          s5, a2, t5
                  sltu         a4, tp, a4
                  slt          a4, t0, ra
                  lbu          t5, 27(s11)
                  lb           a5, -624(s11)
                  sltiu        sp, s3, -333
                  sb           tp, 883(s11)
                  srli         tp, t1, 2
                  srl          s8, sp, a0
                  srl          s9, s9, s9
                  xori         a2, s1, 79
                  lbu          s6, -313(s11)
                  lb           s9, 783(s11)
                  sb           t1, -457(s11) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1078 #start riscv_load_store_rand_instr_stream_4
                  lb           s10, -311(sp)
                  srai         tp, sp, 14
                  slt          s3, t4, a1
                  sub          s9, a3, a7
                  lb           a4, -757(sp)
                  lh           ra, 412(sp)
                  sb           t3, 107(sp)
                  andi         t4, zero, 1659
                  sb           t6, -253(sp)
                  lui          s11, 900042
                  sb           zero, -685(sp)
                  sb           a3, -1047(sp)
                  lh           s10, -348(sp)
                  sub          a2, zero, t6
                  add          s11, s11, a5
                  slli         s1, s0, 6
                  lui          s8, 699831
                  or           t4, s7, s11
                  sra          s5, s8, zero
                  andi         gp, t6, -186
                  srli         t5, t2, 20
                  srai         s5, tp, 25
                  xor          a3, t2, s9
                  srai         s6, t1, 22
                  slti         t2, t5, -74
                  addi         tp, s11, -1645
                  lb           t6, 392(sp)
                  lui          s7, 920701
                  sb           s10, 629(sp)
                  xor          s11, a1, t4
                  lbu          a5, -544(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a3, region_1+503 #start riscv_load_store_rand_instr_stream_8
                  lbu          t0, -16(a3)
                  xori         sp, s11, -1494
                  nop
                  and          a2, gp, a1
                  lbu          s0, -8(a3)
                  lw           t3, -7(a3)
                  srai         t4, s1, 3
                  nop
                  lb           a2, -10(a3)
                  sll          t6, a1, t0
                  lbu          a5, 9(a3)
                  sb           s10, 15(a3)
                  srl          tp, ra, a5
                  lb           s3, -11(a3)
                  sb           s11, -5(a3)
                  sb           a7, 5(a3)
                  add          zero, s10, a6
                  sb           gp, -2(a3)
                  sb           a7, -9(a3)
                  sb           t4, 13(a3)
                  lb           s3, 2(a3)
                  lb           s1, 6(a3)
                  slt          t2, s8, s1
                  slti         a1, s1, 154
                  xor          s5, zero, s11
                  sw           ra, -7(a3)
                  sll          s6, a7, s1
                  lhu          s11, -13(a3)
                  lw           s1, 13(a3)
                  slti         t5, s4, 1438
                  lb           a5, 0(a3)
                  sb           a0, -16(a3)
                  lbu          t5, -16(a3)
                  lbu          t6, 12(a3)
                  sb           ra, 10(a3)
                  slti         sp, s6, -102
                  add          s1, s10, s11
                  sh           a0, 7(a3) #end riscv_load_store_rand_instr_stream_8
                  bne          a1, s8, 14f
                  addi         s1, ra, -2033
                  sra          t5, t5, s6
                  sll          s0, tp, a7
                  sltu         t6, s8, s8
                  sltiu        zero, a7, 1551
                  srai         t3, gp, 11
                  sra          s6, s11, t3
                  add          gp, a4, a7
                  sra          s6, s4, s8
                  slli         a0, s6, 16
                  bgeu         t0, a0, 26f
                  bltu         t6, ra, 30f
                  srli         t5, sp, 1
14:               ori          s3, sp, -571
                  xori         gp, a7, 641
                  srli         t6, t0, 27
                  bne          a6, gp, 34f
                  xori         a1, s2, -1916
                  sltu         zero, a2, t4
                  xori         s7, ra, -1934
                  sra          zero, s0, s11
                  sltu         a1, a6, t4
                  bge          s7, s2, 35f
                  sll          s11, a7, t5
                  bge          s5, s2, 45f
26:               andi         zero, a1, -1059
                  bge          s0, s1, 46f
                  xori         t3, s4, 697
                  bgeu         s8, a7, 32f
30:               and          t4, t5, t5
                  slli         s7, a2, 7
32:               slti         a5, s5, 501
                  add          t1, s7, s8
34:               or           s3, t3, s8
35:               bltu         t5, t6, 44f
                  sltu         t6, a3, t0
                  xor          s7, sp, t2
                  sltu         s8, a1, t0
                  srl          s8, sp, a7
                  sra          a4, t0, ra
                  bltu         t3, a4, 54f
                  srai         t0, s11, 25
                  srai         s0, gp, 0
44:               xori         a5, t6, 300
45:               sll          s6, s10, s4
46:               sll          s5, tp, zero
                  xori         s1, s0, -1743
                  and          s10, s10, sp
                  sltiu        s3, s11, -1493
                  nop
                  sll          s0, a1, t0
                  add          a4, t0, s11
                  xori         s8, a1, 1345
54:               srli         a0, s3, 0
                  xor          gp, a3, s9
                  sub          s3, gp, s4
                  andi         sp, a6, -1107
                  srl          t0, t3, a4
                  bge          a0, t5, 71f
                  slli         s8, s10, 17
                  sub          s3, s3, s4
                  srl          s1, t0, s10
                  sltiu        sp, a3, 347
                  auipc        s5, 633268
                  bne          a6, gp, 75f
                  slli         s5, s10, 29
                  bgeu         t3, gp, 79f
                  andi         sp, zero, 282
                  slt          s6, a2, a7
                  srai         s10, s8, 12
71:               srli         t2, t0, 13
                  bne          a6, t4, 80f
                  beq          s8, s5, 86f
                  sltiu        t5, a6, -972
75:               bge          a7, a1, 85f
                  sra          s0, t3, s6
                  bltu         ra, t3, 97f
                  bne          t6, a2, 80f
79:               srl          t1, t0, s6
80:               nop
                  auipc        ra, 337833
                  srl          t4, t1, t2
                  beq          a0, s8, 93f
                  bgeu         t6, t6, 94f
85:               sll          t3, s4, t6
86:               sll          ra, s1, sp
                  xor          s1, t5, a2
                  srl          s11, a3, gp
                  sra          t6, zero, s8
                  slt          t0, t6, s4
                  sll          a2, sp, a1
                  auipc        s7, 413058
93:               xori         t5, a4, -1861
94:               blt          a0, s6, 98f
                  slti         s10, t3, -1036
                  slli         s11, t4, 16
97:               slli         sp, a5, 5
98:               sll          t3, t0, t4
                  blt          gp, s6, 119f
                  sltiu        a5, s2, 1526
                  sub          s1, s0, t4
                  and          t5, t5, ra
                  bltu         t6, a5, 111f
                  srli         s10, s0, 3
                  xor          s10, s6, a7
                  sra          s11, a3, a4
                  slli         s9, sp, 9
                  xor          s0, s6, s2
                  sltu         t1, a6, s0
                  sll          s10, a4, a5
111:              slti         s11, s2, -159
                  xori         s3, tp, 1295
                  bne          s10, t3, 116f
                  andi         s0, ra, 965
                  srl          s5, s10, a2
116:              and          sp, a2, t3
                  blt          sp, s2, 136f
                  addi         s6, s10, 1428
119:              ori          s1, sp, 768
                  beq          t1, a0, 126f
                  srli         a0, t3, 17
                  ori          s10, s11, 639
                  sltiu        t2, a3, 1194
                  or           t5, s6, a2
                  srai         t0, a1, 6
126:              addi         a3, a5, -544
                  bgeu         s6, s10, 147f
                  sll          s8, s2, t1
                  sltiu        t3, s6, 1593
                  srli         s3, s4, 26
                  srl          s9, s2, a0
                  bne          a1, s10, 133f
133:              sltu         a2, s9, s10
                  bgeu         t0, s5, 140f
                  blt          t5, t6, 139f
136:              slti         t4, a2, 195
                  blt          a6, t1, 151f
                  andi         a3, s8, 111
139:              bgeu         t5, ra, 141f
140:              xori         t3, t5, -1325
141:              addi         a6, s1, 208
                  slli         a2, a7, 9
                  nop
                  auipc        a4, 830142
                  andi         t5, t3, -226
                  sub          a4, sp, s1
147:              sltiu        t3, zero, 1754
                  and          t6, sp, t3
                  bge          s11, a3, 150f
150:              sra          a5, s1, s9
151:              blt          s11, t3, 171f
                  addi         s7, zero, 485
                  xori         zero, t0, 1165
                  ori          s8, s10, -1623
                  blt          s9, a2, 165f
                  srli         t5, s5, 15
                  bne          tp, s6, 163f
                  lui          s9, 32542
                  ori          s0, s11, 1947
                  nop
                  slt          a3, s11, s9
                  xori         ra, ra, -79
163:              sltu         a1, s11, t6
                  lui          s1, 207338
165:              sub          tp, a3, a5
                  xori         a4, sp, 1606
                  bne          s10, s0, 187f
                  bne          s6, zero, 172f
                  slti         a5, s3, 275
                  srl          s6, s4, t4
171:              andi         t1, a4, -128
172:              ori          a4, a3, 1615
                  blt          s1, a0, 176f
                  xori         a3, s9, 1711
                  srai         a1, sp, 19
176:              auipc        sp, 124299
                  bgeu         a0, gp, 187f
                  sll          a0, a6, a7
                  sltu         tp, s8, t0
                  sub          s3, s1, a6
                  slli         t6, a2, 14
                  lui          s9, 63479
                  xor          a1, t1, a1
                  sltu         t3, sp, s10
                  slti         s8, s1, -80
                  srl          zero, t6, a5
187:              and          t3, s6, a4
                  sll          s3, sp, s6
                  srl          t6, s10, s0
                  lui          s1, 279525
                  and          s8, t1, t3
                  bge          a5, a4, 205f
                  sll          t4, sp, a4
                  srli         a0, s4, 31
                  ori          a3, s5, 63
                  slli         t2, t2, 18
                  sra          t6, s1, a4
                  srai         t3, t5, 29
                  add          s9, a1, s6
                  nop
                  slt          s5, tp, t5
                  ori          a2, t2, -1674
                  sub          s10, s5, tp
                  blt          s8, s8, 208f
205:              lui          t4, 699491
                  sltiu        tp, t6, 1343
                  sltu         t0, s0, t0
208:              slli         s6, s1, 3
                  srai         t2, s4, 0
                  blt          gp, s1, 225f
                  slt          a1, s4, t0
                  srai         a1, a7, 27
                  slli         s1, a7, 21
                  ori          t4, t4, -888
                  xori         s9, s10, 1173
                  srl          s9, a3, t6
                  srai         s10, a5, 15
                  srli         s1, gp, 29
                  slli         s6, a3, 1
                  slt          a4, t0, a1
                  lui          ra, 903034
                  xor          t1, zero, s3
                  xori         tp, gp, -1412
                  ori          a6, ra, -559
225:              xori         gp, s10, -1243
                  xori         a1, a7, -1275
                  bltu         a1, t5, 233f
                  addi         t2, s5, 1147
                  nop
                  nop
                  nop
                  or           s0, t4, s10
233:              sub          s7, t6, t0
                  and          t1, t3, a1
                  bltu         s3, t5, 247f
                  bgeu         a6, s4, 256f
                  lui          s8, 1038718
                  andi         zero, zero, 1016
                  bltu         s8, t2, 249f
                  andi         a1, s7, 1254
                  auipc        s7, 993687
                  auipc        t1, 6083
                  andi         s8, s6, 1487
                  bgeu         a6, a7, 257f
                  or           s5, s6, t6
                  andi         s1, t3, -1138
247:              bge          a4, a3, 255f
                  slt          t3, s4, t6
249:              srai         sp, t4, 29
                  bge          s7, tp, 269f
                  slt          s3, a4, gp
                  bltu         gp, a3, 260f
                  lui          t2, 265248
                  sltu         s8, s9, sp
255:              sltiu        tp, a6, 276
256:              bgeu         t3, s2, 268f
257:              bgeu         zero, a6, 269f
                  sltiu        a1, tp, -589
                  lui          tp, 318534
260:              sltiu        t2, t3, 300
                  ori          zero, s5, 1259
                  sltu         a1, s7, s5
                  sltu         a1, gp, t5
                  slti         t4, tp, -1828
                  or           a2, s3, s7
                  bge          s7, s9, 284f
                  bgeu         t0, s7, 284f
268:              beq          a6, gp, 277f
269:              slti         a5, zero, -967
                  srl          s9, a2, s4
                  sll          a5, zero, s4
                  srl          t6, t0, tp
                  xor          zero, a3, s2
                  bltu         t1, s5, 277f
                  sltiu        s7, s5, 437
                  bgeu         s7, s1, 286f
277:              ori          t2, t3, -1360
                  slli         s5, s3, 0
                  bgeu         zero, t6, 298f
                  bge          s11, a0, 300f
                  slt          a2, s6, s7
                  blt          s7, t0, 294f
                  beq          a2, a5, 286f
284:              or           a3, s8, s11
                  srli         s0, t2, 28
286:              srli         s8, s8, 24
                  sub          s7, s10, s8
                  srl          a5, s2, a6
                  srai         a3, t4, 14
                  auipc        s9, 883184
                  bgeu         s9, s3, 304f
                  and          sp, s4, a4
                  addi         s0, t1, 771
294:              xor          t2, t1, a6
                  addi         t3, t4, 1499
                  ori          a3, a1, -813
                  bltu         a0, a0, 317f
298:              slli         s6, sp, 31
                  srli         t0, s1, 12
300:              or           a2, s4, a7
                  bltu         zero, s0, 311f
                  xori         s3, gp, -1366
                  auipc        a4, 121836
304:              sub          s9, tp, s10
                  bgeu         a7, s1, 313f
                  sll          a2, s10, s5
                  auipc        a2, 501663
                  slli         sp, s10, 23
                  srai         sp, s10, 1
                  xor          s11, s8, t0
311:              slt          s5, t6, tp
                  andi         s11, t0, 701
313:              beq          s4, s11, 321f
                  sll          s5, s3, s1
                  sltu         t0, s8, t6
                  lui          t2, 463535
317:              sub          s3, ra, t2
                  nop
                  nop
                  beq          s3, a0, 324f
321:              and          t1, s4, zero
                  sltu         s9, gp, a3
                  lui          a4, 957291
324:              srai         s3, s8, 4
                  nop
                  srli         a0, s7, 3
                  srai         s9, s6, 24
                  slt          zero, t5, ra
                  sra          s10, tp, t3
                  slti         s10, tp, 67
                  xor          t3, a2, s11
                  lui          t0, 986675
                  xor          s5, s3, a3
                  slt          s1, a4, s8
                  slti         s10, a6, 951
                  sll          a4, s10, s4
                  srl          t1, a7, a0
                  sltu         s10, s6, t6
                  bltu         a2, a7, 345f
                  slti         t1, ra, 790
                  srai         s6, ra, 5
                  slti         ra, a2, -1573
                  xori         s9, a7, -1618
                  ori          a1, s0, 946
345:              addi         s11, a7, 1899
                  nop
                  slti         sp, t5, 1656
                  andi         s9, a7, 1095
                  beq          s9, gp, 361f
                  srli         t3, tp, 6
                  sltu         s11, a6, s11
                  beq          gp, a0, 362f
                  bge          t5, a7, 362f
                  xor          t6, t2, s11
                  or           s8, s2, t0
                  add          s11, a6, zero
                  ori          s5, gp, -1871
                  addi         t2, a2, -375
                  sltiu        t2, s8, -1053
                  srli         a6, a1, 1
361:              sltu         a3, t5, s10
362:              srli         s0, ra, 26
                  bgeu         a1, t1, 382f
                  sra          s10, s7, s7
                  srl          s3, s2, gp
                  sra          s11, a1, a7
                  bltu         s9, t2, 381f
                  andi         sp, gp, -234
                  andi         s6, a6, 811
                  srai         s1, a1, 25
                  xori         t6, s10, -1874
                  sub          t1, a4, s6
                  bltu         a3, t1, 393f
                  add          t3, s8, t6
                  xor          s5, s11, s8
                  xori         s7, t6, 446
                  slt          s7, sp, s0
                  slt          ra, gp, s6
                  srl          a1, s10, t3
                  bne          a3, s2, 398f
381:              sltu         s0, a7, a2
382:              slt          a1, a0, s5
                  andi         s6, zero, -1195
                  or           a2, a3, ra
                  slt          t0, a1, s10
                  bge          ra, s9, 392f
                  add          zero, s7, s1
                  srli         s1, a5, 24
                  slli         ra, tp, 7
                  addi         a2, s2, 1604
                  and          t2, sp, a4
392:              and          t4, s11, t0
393:              blt          a0, a1, 403f
                  auipc        s5, 468221
                  bltu         s5, gp, 410f
                  andi         s0, a3, -1930
                  add          t1, a5, t1
398:              sra          s7, t3, t5
                  bne          t6, sp, 400f
400:              bgeu         s11, ra, 403f
                  sltiu        s8, a4, -921
                  srai         a3, s5, 18
403:              bgeu         s8, a1, 405f
                  add          a1, t1, a2
405:              nop
                  slti         a1, tp, 1588
                  sltu         s11, t3, a6
                  sll          s5, a0, s5
                  or           s3, a2, s2
410:              sltu         s6, a4, s9
                  beq          t6, a1, 428f
                  addi         sp, t2, 1559
                  auipc        sp, 964175
                  blt          t4, t0, 426f
                  add          tp, s9, t1
                  bgeu         gp, s9, 429f
                  xor          a3, t1, sp
                  xor          a6, a2, s6
                  beq          t1, zero, 439f
                  blt          s2, sp, 439f
                  nop
                  srl          t6, s10, t3
                  slti         t0, s8, 128
                  bgeu         s0, a2, 428f
                  bge          a5, t4, 435f
426:              add          a0, s10, tp
                  slti         ra, a5, -1964
428:              sra          t2, a4, ra
429:              sra          s3, s0, sp
                  nop
                  ori          a5, s11, 776
                  srai         sp, a2, 27
                  srli         sp, s7, 27
                  nop
435:              ori          s3, s0, 1594
                  addi         sp, t4, 617
                  addi         s0, t5, -897
                  srai         s0, s2, 9
439:              sltu         sp, a2, t5
                  ori          t1, s5, -529
                  or           a3, s7, t6
                  sltu         a2, a1, s8
                  xor          gp, t6, s9
                  add          tp, t2, a0
                  beq          a4, s5, 465f
                  or           t0, s4, a4
                  addi         s5, s8, -869
                  srli         tp, s0, 6
                  blt          a5, zero, 458f
                  or           ra, s6, s4
                  sra          t6, s9, s6
                  xor          t6, s11, a2
                  sltu         t6, s11, tp
                  srai         a1, gp, 6
                  slti         a2, a0, 1208
                  and          s0, t6, t2
                  and          a4, s11, t4
458:              bge          zero, s9, 461f
                  sra          a0, t4, t4
                  bne          s9, s6, 466f
461:              ori          s6, s8, -1474
                  srai         t0, s1, 10
                  beq          s11, ra, 480f
                  bge          a4, a6, 484f
465:              slti         s0, t6, 17
466:              blt          s3, s11, 478f
                  beq          zero, a2, 485f
                  lui          a6, 889537
                  srl          t4, a4, s9
                  andi         s9, t2, -707
                  xor          a3, t3, t3
                  slt          sp, s5, s5
                  srai         a0, s8, 12
                  sltiu        t5, a3, 276
                  sll          t6, s4, a2
                  srai         s1, ra, 31
                  sltiu        s8, a7, -2014
478:              bge          a6, a7, 481f
                  lui          t3, 391071
480:              sltiu        s7, s0, 750
481:              slli         a1, a1, 30
                  blt          s5, ra, 502f
                  sub          t0, s2, s0
484:              xori         s0, s3, 477
485:              slli         a2, a6, 2
                  add          sp, tp, t3
                  xori         s1, s7, 354
                  sltu         a0, ra, s9
                  beq          t6, s0, 497f
                  srl          a6, t1, a1
                  slti         s5, a1, -985
                  slti         a4, t6, -1908
                  sll          t6, a4, a0
                  sltu         t6, s7, a4
                  xor          tp, s5, t6
                  add          a1, gp, t0
497:              bne          a2, a4, 503f
                  bne          s5, a5, 502f
                  xor          gp, s1, gp
                  sub          s10, t5, a1
                  slt          a1, t6, zero
502:              nop
503:              slt          s0, a1, s11
                  auipc        t6, 429023
                  andi         gp, t5, -485
                  addi         ra, s8, 1593
                  sltu         s11, s6, gp
                  blt          s9, s1, 528f
                  beq          t5, a6, 529f
                  sra          t4, s8, s2
                  srli         s3, tp, 9
                  slli         sp, t1, 26
                  srl          t1, s7, t2
                  slli         s7, a3, 20
                  sub          a3, sp, a1
                  sll          t3, t3, s0
                  sra          s11, t6, a7
                  sltiu        a6, a7, -200
                  bge          s8, s11, 538f
                  sltiu        a0, s8, -510
                  ori          a3, s3, 1818
                  bgeu         s7, t5, 523f
523:              bge          s4, s5, 535f
                  blt          s8, s9, 534f
                  srai         gp, a5, 8
                  srli         ra, sp, 31
                  andi         t1, a6, -1086
528:              xor          sp, t6, gp
529:              addi         t6, a1, 932
                  slti         a2, a6, -365
                  xori         t4, s1, 606
                  nop
                  bne          ra, s7, 546f
534:              sltu         s0, t3, a4
535:              xori         tp, gp, 617
                  bgeu         s7, s7, 549f
                  slli         s0, t0, 27
538:              bltu         a7, s0, 550f
                  slt          t1, s0, a3
                  srai         tp, t4, 12
                  sub          a3, a5, a1
                  xori         t3, a3, -1308
                  slti         a4, a0, -932
                  slli         sp, t4, 15
                  slti         t0, a6, 1134
546:              and          s1, s7, t6
                  sltu         s3, t4, t2
                  ori          a4, s1, 1296
549:              slti         a4, s4, -1010
550:              andi         s7, gp, 885
                  bgeu         s7, s6, 570f
                  xori         t1, a0, -1247
                  sltu         a3, a2, t2
                  auipc        a4, 282214
                  slt          t5, a6, t6
                  auipc        t6, 171033
                  sltiu        t6, s6, -38
                  sltu         s8, a2, s6
                  slt          t6, a7, t6
                  bne          a3, a6, 564f
                  ori          a4, a3, 90
                  add          a5, a0, sp
                  srl          a1, t5, a5
564:              bgeu         sp, gp, 574f
                  bge          t5, a5, 575f
                  srai         s9, a3, 26
                  sltiu        a3, a7, -490
                  addi         s9, t2, -188
                  beq          sp, sp, 579f
570:              addi         tp, t5, 2017
                  nop
                  auipc        s9, 1039343
                  sra          t2, ra, a5
574:              addi         a2, a2, 89
575:              sltu         t0, t0, s4
                  sub          zero, s2, s6
                  sra          t3, sp, a1
                  sra          t6, s10, s3
579:              and          s3, t0, s8
                  bltu         s4, a6, 588f
                  slt          sp, gp, s0
                  andi         s1, s8, -1523
                  xori         s11, s11, 499
                  sll          s5, a7, s3
                  auipc        s7, 277389
                  auipc        s0, 269946
                  slli         ra, gp, 19
588:              addi         a2, t0, -206
                  addi         a2, s7, -1590
                  xori         s0, s1, 1822
                  blt          s3, zero, 605f
                  xori         s0, zero, -321
                  add          a3, s0, s0
                  nop
                  bltu         s2, s9, 597f
                  ori          t4, s7, 1562
597:              sltu         t5, s5, t0
                  andi         s3, zero, 1660
                  slt          s5, sp, s5
                  srai         s7, a3, 19
                  sra          t2, a3, t6
                  ori          a0, s9, 585
                  lui          s1, 93297
                  bltu         sp, t5, 619f
605:              slt          a0, a2, t3
                  or           zero, t6, s5
                  sltiu        t5, a5, 1957
                  sltu         tp, s8, s7
                  srl          t6, a4, s6
                  andi         s8, s5, -1197
                  bgeu         s8, s3, 621f
                  slli         a5, a4, 23
                  addi         t1, a2, -1568
                  lui          tp, 89226
                  srli         s3, t2, 29
                  or           a2, t0, a0
                  and          s8, s2, s1
                  xori         gp, t0, 1214
619:              blt          s10, zero, 639f
                  auipc        a2, 303051
621:              auipc        s11, 321908
                  slt          a6, t2, a1
                  bgeu         s9, s11, 642f
                  sub          s11, t3, s0
                  and          s3, t3, a0
                  bne          s3, zero, 643f
                  blt          t0, a0, 640f
                  sltiu        s3, a7, 1249
                  auipc        t6, 742629
                  srl          s0, s1, t2
                  beq          t4, s4, 651f
                  blt          t6, a7, 651f
                  ori          t1, s9, -118
                  add          a0, gp, s9
                  slt          t5, a7, t1
                  nop
                  ori          zero, t0, 2031
                  beq          a0, t5, 658f
639:              nop
640:              andi         s7, s5, -1094
                  slti         s7, t2, -931
642:              slt          s1, a2, gp
643:              bge          a4, t3, 656f
                  srli         s9, tp, 21
                  srai         t5, s10, 12
                  beq          s6, t5, 658f
                  srl          s3, s3, t5
                  bltu         s5, s11, 666f
                  xor          t4, zero, ra
                  xori         t0, tp, -1213
651:              bne          a5, s0, 665f
                  bgeu         s1, a3, 655f
                  slli         s7, s11, 5
                  xori         a4, a6, -133
655:              sra          a0, a3, zero
656:              slli         s10, a2, 20
                  nop
658:              sra          s8, s1, s3
                  xor          a4, t6, s6
                  xori         t6, s9, 1812
                  blt          gp, a7, 673f
                  xori         a0, tp, -1871
                  beq          t1, zero, 666f
                  nop
665:              slli         t2, t1, 12
666:              addi         sp, s11, -653
                  sub          a4, s6, a2
                  auipc        a3, 636645
                  slli         a2, s2, 20
                  bge          a7, sp, 680f
                  srl          s7, a3, s0
                  sra          sp, t5, a0
673:              xori         s8, a0, 1499
                  xori         tp, s10, 1158
                  srai         s1, s8, 23
                  or           s11, a7, s0
                  sll          a5, a6, s8
                  srai         s3, a0, 18
                  sll          a0, t4, s5
680:              xori         a6, a2, 1235
                  srli         s10, a2, 21
                  srai         t5, s3, 6
                  bgeu         s11, s3, 693f
                  slli         t3, s2, 11
                  sra          a5, s1, s7
                  srai         t5, a1, 3
                  bne          a5, t4, 693f
                  srli         s1, a3, 24
                  bge          a3, s7, 697f
                  srai         t4, s3, 23
                  sll          s0, a7, s3
                  slli         a2, a1, 12
693:              lui          a3, 338935
                  lui          t1, 704447
                  nop
                  bge          s10, t4, 705f
697:              bltu         s3, gp, 701f
                  add          a4, a2, t6
                  sltiu        sp, s9, 974
                  sll          s7, s0, a1
701:              beq          t1, a0, 702f
702:              or           s8, s0, zero
                  sra          a2, t3, a7
                  bgeu         s3, s1, 714f
705:              srai         a5, s5, 24
                  sra          s1, a7, a5
                  bgeu         t6, tp, 713f
                  or           s8, a3, a2
                  slt          a1, t1, s2
                  beq          a0, t4, 714f
                  sub          s0, a0, a3
                  auipc        t0, 51899
713:              bgeu         s8, s6, 733f
714:              addi         t0, a0, -1591
                  bltu         a5, zero, 727f
                  xor          s8, t3, s2
                  add          a2, a5, a4
                  sltu         s10, a2, t4
                  sll          s1, t6, t5
                  sltiu        t5, zero, 1408
                  slt          zero, s5, a3
                  blt          a0, sp, 724f
                  bne          a4, s10, 731f
724:              addi         a6, a6, -438
                  srli         s6, t6, 4
                  bge          a3, s11, 741f
727:              or           t0, a1, s10
                  slt          s7, a2, zero
                  slli         t1, a2, 7
                  bgeu         t6, s7, 744f
731:              sub          a3, s4, s1
                  sra          s0, s1, s8
733:              srl          s3, a3, t1
                  sltiu        t6, sp, -1333
                  srai         tp, s9, 6
                  bne          t1, ra, 740f
                  sltiu        a4, a2, -1857
                  or           a5, t5, a7
                  beq          a3, s8, 747f
740:              bge          t6, s7, 741f
741:              srli         s6, a5, 6
                  nop
                  add          t5, s6, t6
744:              xori         t1, a5, -1685
                  blt          t2, a0, 755f
                  sltu         s10, s9, s6
747:              xori         t4, a1, -85
                  blt          s6, a6, 763f
                  sltiu        t6, s1, 921
                  blt          s9, s5, 768f
                  srai         a5, t0, 28
                  and          sp, t4, s4
                  addi         s3, a3, 1445
                  bgeu         zero, a3, 771f
755:              xor          s9, a0, t1
                  addi         s9, s6, -1581
                  bge          s0, zero, 769f
                  sltu         gp, s4, a4
                  sub          s10, t3, a3
                  bltu         ra, gp, 763f
                  andi         ra, gp, -866
                  sra          t3, s6, t6
763:              ori          s9, t2, 818
                  slt          s5, t4, a3
                  bgeu         t6, s6, 785f
                  add          gp, s0, a7
                  lui          s9, 38378
768:              beq          s9, zero, 781f
769:              nop
                  andi         s1, a6, -836
771:              sltiu        a3, s0, 921
                  srl          s0, ra, t4
                  sub          t6, a5, a7
                  addi         sp, s9, 1568
                  sltiu        a5, s0, 1301
                  bgeu         s7, t6, 779f
                  sltiu        t6, s0, 1984
                  add          a4, ra, a3
779:              slti         s0, s11, -259
                  andi         ra, sp, -16
781:              nop
                  slli         t3, s0, 21
                  sll          t1, a2, a0
                  slti         s0, s7, -1747
785:              bltu         s2, a5, 805f
                  andi         gp, s3, -284
                  srli         s10, gp, 7
                  sltu         ra, t6, t6
                  ori          s5, a3, 1304
                  addi         a5, s5, 1760
                  srli         s7, t6, 17
                  or           t5, t0, s2
                  srli         s9, a2, 28
                  bgeu         t5, s8, 814f
                  slli         s10, s8, 5
                  bltu         ra, a6, 808f
                  and          t0, s2, sp
                  sltu         t0, a6, gp
                  sll          a2, a5, s0
                  sub          s6, ra, s8
                  sra          s6, s4, t6
                  andi         a0, a2, 1171
                  srai         s0, s1, 12
                  slti         a2, s0, -161
805:              sra          a0, s10, s5
                  addi         gp, t5, -2032
                  sltu         a1, s7, s11
808:              slli         a6, zero, 18
                  beq          t4, s11, 815f
                  bgeu         s4, a1, 822f
                  slli         a3, a5, 5
                  slti         s1, a1, -1520
                  sltu         t0, s0, zero
814:              auipc        s11, 479594
815:              sltiu        s5, s7, -1896
                  blt          sp, gp, 826f
                  auipc        t5, 91427
                  or           tp, s4, t3
                  bne          gp, s0, 821f
                  and          s11, sp, sp
821:              auipc        a6, 383243
822:              bgeu         a0, gp, 832f
                  nop
                  sll          s10, s9, s7
                  bge          tp, s4, 829f
826:              xor          t1, tp, tp
                  xor          a0, ra, tp
                  xori         tp, s3, -1822
829:              xor          a4, t3, a6
                  add          sp, s11, s8
                  and          tp, gp, s0
832:              sltu         t3, s2, s10
                  srl          s3, a2, ra
                  sll          s0, s10, a3
                  beq          a1, s5, 845f
                  sub          s6, s5, tp
                  xori         t0, zero, -1001
                  srai         s0, a3, 6
                  andi         t5, s1, 679
                  or           t3, s3, t3
                  srl          t2, s9, t3
                  beq          s9, a7, 862f
                  sra          gp, s3, t3
                  bne          t3, s0, 853f
845:              addi         sp, a2, 279
                  andi         a2, s8, -704
                  or           s11, s9, s2
                  sra          t2, a4, a2
                  slti         a1, sp, 1039
                  auipc        a2, 315552
                  ori          zero, t2, 1174
                  nop
853:              blt          zero, a2, 859f
                  srl          tp, s11, a5
                  lui          a0, 511143
                  sltiu        t3, t5, 1261
                  nop
                  or           a4, s0, s3
859:              xor          s6, t5, ra
                  xori         a2, s9, -1511
                  lui          s5, 895022
862:              srl          s3, s9, a1
                  bge          a0, t2, 882f
                  bge          a7, s6, 883f
                  add          s10, s2, t4
                  bgeu         a3, a3, 879f
                  addi         t5, t3, -385
                  lui          a0, 43988
                  or           a4, a2, s5
                  srli         t3, t3, 6
                  sra          s3, s11, sp
                  or           s8, a7, ra
                  addi         a6, a4, -1595
                  and          t1, a7, s3
                  srl          a4, tp, t4
                  srl          s7, s3, gp
                  srli         t6, gp, 2
                  addi         a0, s7, 118
879:              addi         t0, s1, 711
                  sltu         a3, t4, tp
                  bltu         a4, s6, 889f
882:              sltiu        a2, s10, -953
883:              bge          s9, ra, 889f
                  andi         s10, a0, 117
                  xor          t2, sp, sp
                  xori         a3, t6, 1966
                  srl          a5, s9, s10
                  nop
889:              sltu         t4, t0, t1
                  addi         gp, s6, 520
                  bne          s10, s9, 893f
                  auipc        a0, 454343
893:              slt          a4, a5, s3
                  bne          zero, t5, 913f
                  bltu         t1, s7, 908f
                  add          gp, t1, a2
                  add          a1, a7, gp
                  xor          s3, ra, a0
                  sll          s5, a2, a3
                  sltiu        s1, a4, 78
                  nop
                  slti         t2, ra, -614
                  lui          t2, 609943
                  lui          tp, 809272
                  sll          t3, a5, sp
                  sll          s6, s10, t5
                  bgeu         s2, a0, 921f
908:              auipc        gp, 597365
                  addi         s8, t1, 954
                  slti         tp, a1, -246
                  sll          s3, t0, t5
                  bge          a2, s6, 916f
913:              sub          s1, s4, s11
                  sra          s0, s9, a5
                  bne          a1, s0, 919f
916:              and          a0, s3, t5
                  and          s0, t1, ra
                  lui          s0, 878120
919:              bgeu         a1, sp, 937f
                  sltu         a1, ra, s1
921:              and          a1, t3, t6
                  xori         s5, a0, 878
                  ori          a5, gp, 1522
                  andi         s10, s1, -797
                  bne          s9, a6, 935f
                  lui          s1, 679013
                  sll          t4, s4, s1
                  beq          s2, a3, 931f
                  bne          ra, s7, 941f
                  sra          s10, s6, t0
931:              xor          a6, s2, s9
                  blt          s5, t4, 942f
                  bltu         s7, s9, 941f
                  srli         a6, s2, 22
935:              xori         a2, s6, -1997
                  xor          s0, t4, s5
937:              xor          sp, ra, t4
                  srai         s8, s8, 12
                  sra          s10, s1, t1
                  sltiu        s1, a7, 1802
941:              sll          zero, ra, a7
942:              sra          a3, a7, s8
                  andi         a3, t4, -345
                  slt          t4, tp, gp
                  bgeu         t3, s7, 964f
                  bge          a1, s11, 959f
                  auipc        a6, 1008601
                  sltu         t1, t2, a6
                  slti         t2, sp, -738
                  addi         t0, t4, 1261
                  bne          t0, t3, 952f
952:              slt          tp, t2, s10
                  slti         t2, a7, 2016
                  sra          a3, s9, s5
                  srai         a0, t1, 11
                  xor          s0, a0, s6
                  auipc        gp, 1027440
                  lui          s8, 460034
959:              xor          ra, s8, t6
                  or           zero, a5, t5
                  slli         t6, t1, 16
                  or           t6, a1, a2
                  auipc        ra, 118329
964:              auipc        t3, 824766
                  bltu         s5, s11, 980f
                  slli         s3, s9, 7
                  sltu         t6, s2, a3
                  blt          t5, sp, 978f
                  andi         gp, t0, -279
                  slli         a2, s5, 4
                  sll          a4, s4, s1
                  xori         t6, tp, 24
                  sltu         t3, s4, s11
                  ori          s3, s2, 1998
                  sltu         t4, s8, t4
                  auipc        s3, 405376
                  and          t1, t5, sp
978:              bltu         ra, a0, 995f
                  or           sp, t0, a0
980:              sra          t2, a6, s11
                  srli         t6, s2, 9
                  ori          s7, s0, -1687
                  auipc        gp, 106870
                  srai         t2, s8, 10
                  sll          a3, s2, sp
                  addi         a2, sp, 1049
                  or           s5, s3, a6
                  xor          s0, a7, s0
                  auipc        s1, 690250
                  bge          t5, a3, 993f
                  xori         s6, t4, 485
                  sltiu        zero, s3, 1267
993:              blt          t1, s2, 999f
                  srl          t0, a3, a7
995:              xori         s9, s2, -452
                  bgeu         t4, t4, 1006f
                  nop
                  bge          sp, a2, 1010f
999:              add          a6, a6, a6
                  andi         a2, a1, -517
                  xor          a6, t2, a2
                  and          t4, a6, t3
                  auipc        t2, 855585
                  bltu         ra, tp, 1024f
                  or           s1, sp, tp
1006:             sll          s7, s11, a5
                  beq          a5, gp, 1027f
                  add          t1, s9, a2
                  slt          s9, a2, s8
1010:             or           s8, s9, s0
                  srai         t1, s6, 28
                  blt          s0, t4, 1032f
                  bne          s6, gp, 1022f
                  lui          s0, 931961
                  srli         tp, zero, 29
                  sra          t4, sp, a7
                  xori         s0, zero, -1823
                  sra          s11, t1, t3
                  nop
                  srl          tp, s11, t3
                  nop
1022:             addi         a4, t3, -56
                  or           t4, gp, t6
1024:             add          t1, t5, a7
                  blt          s11, s11, 1033f
                  bltu         s4, t6, 1038f
1027:             add          s1, a2, a7
                  beq          s11, t0, 1048f
                  sltu         a1, t6, s9
                  addi         s10, a4, -84
                  andi         ra, t6, 1358
1032:             xori         s8, s5, -1562
1033:             sll          s6, t5, t4
                  bne          s11, s1, 1038f
                  slli         ra, zero, 6
                  slt          s3, t1, gp
                  sltiu        a1, t5, 1393
1038:             ori          s6, s2, -230
                  sltu         t4, a3, s9
                  ori          t4, a0, -1616
                  srli         s6, a7, 9
                  bge          s1, zero, 1062f
                  bltu         a4, a4, 1053f
                  bltu         t3, tp, 1046f
                  srli         t4, sp, 1
1046:             or           a4, s2, gp
                  add          a6, t1, a3
1048:             sub          ra, t0, s0
                  nop
                  auipc        a3, 18650
                  bltu         t4, t1, 1070f
                  slti         a3, t2, -476
1053:             srl          sp, ra, tp
                  sra          tp, s6, tp
                  srl          s6, a0, s7
                  addi         t6, t1, 1414
                  sra          gp, t3, a5
                  xor          s9, s7, t3
                  bge          s7, s9, 1062f
                  bgeu         s11, t4, 1069f
                  slt          t6, a0, t0
1062:             sltu         sp, s7, a7
                  or           t4, s0, s2
                  srl          s9, ra, gp
                  nop
                  sra          a4, s4, a4
                  srl          t4, gp, a6
                  lui          s5, 294804
1069:             addi         a2, t5, 1934
1070:             sll          a6, a1, a6
                  sra          tp, t4, s4
                  bge          sp, s10, 1084f
                  add          sp, a4, t5
                  blt          t6, s0, 1091f
                  andi         a0, a0, -1117
                  xor          t5, t1, a7
                  add          ra, s11, a5
                  lui          a0, 611324
                  sub          t1, a3, a1
                  slli         a1, t1, 10
                  srl          s8, gp, t1
                  nop
                  xor          a0, gp, t0
1084:             bne          s7, s4, 1098f
                  bltu         s9, sp, 1095f
                  xor          t5, t6, sp
                  slt          a5, t6, t0
                  bge          s4, t5, 1098f
                  slt          a1, s0, a5
                  bgeu         s1, s0, sub_7_j11 #branch to jump instr
                  slli         s3, t5, 9
                  sll          s9, ra, s2
                  or           a0, a4, t4
                  and          s10, s10, tp
                  slli         s1, ra, 2
                  add          s0, a3, t2
                  add          t3, a7, s4
                  andi         a1, s7, 1136
                  slt          t0, s6, t3
                  srai         zero, s7, 13
sub_7_j11:        jal          tp, sub_10 #jump sub_7 -> sub_10
                  lui          s8, 657056
1091:             xor          a5, s3, s5
                  bltu         s6, t6, 1104f
                  addi         s8, gp, -865
                  sll          t3, sp, a1
1095:             add          a4, t3, t5
                  slti         a1, gp, -828
                  auipc        zero, 699683
1098:             srl          t3, t6, s3
                  sub          s5, a0, s2
                  sll          t6, a0, sp
                  sltiu        a3, a0, 1663
                  bltu         a1, s10, 1115f
                  lui          a0, 625529
1104:             or           t0, a2, zero
                  blt          s7, a1, 1111f
                  sll          t2, t6, s11
                  srai         tp, s6, 26
                  bgeu         t2, s5, 1111f
                  bltu         s4, a7, 1113f
                  srl          s9, tp, s10
1111:             andi         a3, s3, 470
                  sra          t0, a5, a0
1113:             beq          t6, s5, 1133f
                  srl          s1, a3, ra
1115:             sltiu        s1, sp, -1526
                  ori          s1, a4, -397
                  slti         a1, s1, 1116
                  blt          tp, s0, 1124f
                  bge          s9, s6, 1139f
                  srl          s0, gp, a4
                  bge          a0, a2, 1136f
                  blt          t4, t3, 1123f
1123:             beq          s0, a5, 1131f
1124:             xori         s10, tp, -1072
                  srai         s5, t3, 10
                  slt          s6, s3, s11
                  addi         zero, t2, 962
                  beq          s9, t4, 1136f
                  slt          t4, s2, a6
                  and          a2, s7, s3
1131:             slt          a5, s7, t0
                  slli         a6, t0, 31
1133:             auipc        s6, 413333
                  sltu         tp, t6, a0
                  srai         a5, s1, 13
1136:             bne          t3, a0, 1148f
                  lui          s0, 201701
                  lui          s7, 358755
1139:             slti         tp, t3, -342
                  sub          t1, sp, t2
                  bge          a3, a5, 1159f
                  beq          t3, a4, 1162f
                  sub          s8, gp, a7
                  slli         s8, zero, 5
                  xor          t4, t0, s3
                  add          s0, t0, a3
                  srli         tp, t0, 21
1148:             bne          s8, a0, 1167f
                  or           ra, s7, t4
                  blt          s11, s6, 1160f
                  add          s9, a4, tp
                  bne          a0, s4, 1165f
                  sub          s3, s3, s0
                  auipc        s5, 739681
                  blt          t5, a5, 1168f
                  srli         a0, a5, 10
                  beq          a7, s10, 1172f
                  nop
1159:             xori         s3, a4, 1940
1160:             bge          s10, t6, 1180f
                  slti         a4, s10, 224
1162:             slli         s11, s8, 31
                  and          s5, tp, s4
                  beq          a7, s1, 1165f
1165:             bltu         zero, tp, 1177f
                  bgeu         t3, s2, 1186f
1167:             blt          t2, gp, 1177f
1168:             srai         a4, t2, 21
                  srl          t6, sp, s4
                  ori          t6, s1, -1933
                  sll          a6, t6, t3
1172:             xor          s1, s9, a6
                  srli         t3, a4, 3
                  lui          s3, 388203
                  bgeu         ra, t3, 1177f
                  bne          a7, s5, 1186f
1177:             bgeu         t5, s8, 1191f
                  beq          s11, a5, 1197f
                  andi         a0, zero, 1679
1180:             sll          s1, s5, a4
                  lui          a6, 861524
                  sll          a4, s6, s6
                  bge          a3, s11, 1196f
                  bgeu         a2, s4, 1204f
                  bne          s4, a5, 1197f
1186:             slli         s9, a1, 20
                  addi         gp, s10, -186
                  bgeu         s10, t6, 1191f
                  bltu         s8, a7, 1209f
                  sub          s11, s7, t5
1191:             srl          a2, s10, t1
                  or           a3, a1, t0
                  or           a4, s4, s3
                  bge          a3, s0, 1198f
                  andi         s6, s4, -483
1196:             sll          a4, a6, t6
1197:             blt          a3, s7, 1205f
1198:             bge          sp, t6, 1216f
                  nop
                  beq          s2, a3, 1212f
                  sltiu        t2, a7, 922
                  srai         s7, ra, 25
                  sll          a1, s10, t5
1204:             sll          t0, t0, a6
1205:             bltu         s9, s5, 1224f
                  slti         s6, s7, 1227
                  srl          a5, s7, sp
                  sra          s10, s4, s7
1209:             nop
                  srli         s0, t6, 10
                  slt          s6, a5, t5
1212:             addi         a2, t6, 1705
                  beq          s6, a4, 1219f
                  bne          s2, a2, 1220f
                  xor          a3, t4, s8
1216:             slli         s6, a0, 3
                  beq          a2, t6, 1227f
                  and          a4, s5, s0
1219:             sltu         t6, s5, s10
1220:             auipc        s10, 761824
                  srli         t1, t3, 14
                  bne          tp, t1, 1231f
                  nop
1224:             slti         zero, a1, 971
                  srai         a5, a1, 6
                  srai         s9, s1, 7
1227:             slli         s10, s7, 28
                  beq          t4, tp, 1245f
                  slli         t4, t2, 23
                  nop
1231:             blt          s10, s0, 1239f
                  andi         s6, s4, -1371
                  auipc        s8, 404917
                  auipc        s7, 470254
                  add          a4, t4, tp
                  sltu         t4, a3, a5
                  add          a2, a1, s8
                  slli         a4, a4, 16
1239:             xor          t5, s2, t3
                  bge          a4, t4, 1244f
                  xor          t4, t4, t5
                  bltu         tp, s7, 1252f
                  nop
1244:             or           s11, s9, s2
1245:             sltu         s1, s10, t5
                  bgeu         s5, s7, 1249f
                  lui          zero, 41076
                  srl          t2, t5, s9
1249:             srai         a0, t3, 8
                  xor          s10, gp, a4
                  sub          s8, s3, a4
1252:             xor          s9, t0, s4
                  sltu         a6, s7, a7
                  srl          s1, a0, a4
                  sltu         s1, a4, tp
                  sll          s9, a1, s7
                  slt          t4, s4, gp
                  slti         a3, ra, -1466
                  sltu         t6, t2, s7
                  slt          zero, s9, s0
                  srl          t3, s6, s6
                  xor          a1, t4, sp
                  srl          a1, t3, t2
                  blt          t3, s3, 1276f
                  srli         s6, sp, 8
                  addi         s11, sp, -1052
                  slt          a0, t0, s2
                  sltiu        a6, t1, -218
                  addi         a1, s0, 939
                  or           a5, t1, tp
                  auipc        a4, 142880
                  slli         zero, a7, 1
                  slti         s7, t2, 1065
                  slt          t0, ra, s8
                  sltiu        t4, a1, 380
1276:             slt          a5, ra, zero
                  blt          s5, a4, 1289f
                  sltu         t3, a0, s10
                  bne          s0, t6, 1282f
                  srli         t6, a0, 3
                  srli         t5, a6, 14
1282:             or           s11, a3, s9
                  xori         s3, t6, -1439
                  ori          a0, s0, -1236
                  sll          a0, a0, t5
                  andi         a5, s0, -1227
                  sll          s7, s2, t2
                  srl          s7, s7, a4
1289:             xor          zero, ra, t4
                  addi         t5, s3, -32
                  bge          tp, t3, 1297f
                  nop
                  srai         a5, zero, 6
                  sltiu        a2, s0, 356
                  lui          a4, 289149
                  slti         t2, s11, 1902
1297:             bgeu         s9, a4, 1307f
                  sra          t4, s0, s6
                  xor          t2, s4, sp
                  auipc        a2, 136358
                  add          t2, a1, gp
                  bgeu         s1, t1, 1312f
                  add          s3, s4, tp
                  xori         a6, a0, 979
                  or           a3, a7, a0
                  xor          t0, s4, tp
1307:             sra          a5, a0, a4
                  slti         a1, a6, -894
                  ori          a0, a7, 1731
                  sltiu        sp, gp, 1005
                  sltiu        a3, a7, 887
1312:             add          s5, a6, t2
                  xori         t1, t4, 1552
                  or           s11, s4, t3
                  addi         s6, a2, -1554
                  beq          t3, a1, 1336f
                  bne          a7, sp, 1325f
                  srli         zero, s1, 29
                  sltiu        t0, s8, 1521
                  slti         t0, sp, -45
                  srai         sp, zero, 30
                  sra          s1, s10, a1
                  bgeu         s0, a2, 1343f
                  ori          s0, t1, -1305
1325:             sltiu        a3, t6, 854
                  bltu         s2, s5, 1339f
                  srli         zero, s1, 15
                  sra          tp, t2, a1
                  sltiu        s11, s7, 134
                  srl          t1, tp, sp
                  nop
                  slli         s6, a2, 6
                  srli         a0, s0, 29
                  srai         s3, t1, 6
                  lui          s0, 669055
1336:             xor          a4, a0, s1
                  srli         t0, gp, 25
                  beq          ra, s3, 1351f
1339:             bne          t3, gp, 1343f
                  srai         s11, a3, 29
                  sub          s6, s9, tp
                  ori          s8, gp, -1457
1343:             bne          a5, tp, 1346f
                  lui          tp, 761087
                  sll          a4, ra, s3
1346:             bne          s7, a6, 1354f
                  bne          a2, a7, 1357f
                  bgeu         t1, s5, 1352f
                  sltu         zero, s1, gp
                  beq          s8, a1, 1359f
1351:             andi         a6, a4, -1175
1352:             sltu         t1, gp, s4
                  sltiu        gp, ra, 1265
1354:             srl          t3, s11, t5
                  sltiu        t4, a5, 524
                  bltu         t1, t6, 1370f
1357:             sub          t0, t5, s0
                  bltu         a0, t0, 1377f
1359:             nop
                  ori          s8, gp, -902
                  beq          t4, s11, 1381f
                  sub          a0, s7, a4
                  beq          s11, a2, 1381f
                  sll          t1, gp, ra
                  bge          t5, t3, 1371f
                  slli         s5, s4, 10
                  slli         s9, a4, 11
                  ori          zero, s4, 1519
                  blt          t4, a3, 1384f
1370:             srli         s11, sp, 9
1371:             auipc        s5, 982776
                  blt          a3, a3, 1374f
                  sltu         t2, a0, t3
1374:             bne          t2, gp, 1375f
1375:             addi         t4, a4, 602
                  slt          t6, s7, a3
1377:             add          t4, t4, s11
                  sltu         s11, t2, s10
                  bgeu         s9, t3, 1389f
                  xor          s3, s2, t5
1381:             sub          a5, a2, ra
                  ori          t3, a2, 244
                  srai         a3, s6, 22
1384:             andi         zero, a0, -68
                  sltiu        zero, s2, 416
                  sll          ra, t3, s11
                  srli         zero, ra, 21
                  slli         t2, s5, 27
1389:             bge          s3, s11, 1409f
                  sll          gp, a4, a6
                  or           s7, t4, a4
                  bgeu         s7, a7, 1409f
                  srl          t3, tp, a7
                  sltu         tp, s3, s4
                  sltu         s3, t5, a4
                  andi         tp, s9, -1956
                  beq          t5, t3, 1416f
                  add          t3, a0, s9
                  srl          a3, t6, a5
                  srli         gp, zero, 16
                  bltu         a2, t1, 1413f
                  bne          a6, t0, 1406f
                  addi         gp, t3, 694
                  srai         t6, a7, 5
                  xor          a0, t6, t3
1406:             slt          s6, sp, s4
                  andi         gp, t0, -1876
                  ori          s0, s2, -541
1409:             sltiu        s7, a0, -1389
                  bltu         t6, t3, 1418f
                  bne          s9, a6, 1421f
                  andi         t1, a4, -130
1413:             sll          s9, s6, t0
                  sub          t2, t0, s6
                  ori          ra, t1, 750
1416:             sra          a2, tp, tp
                  and          zero, t2, s11
1418:             bne          t5, s9, 1437f
                  xori         tp, s4, 1525
                  sub          t2, t5, s8
1421:             add          t3, ra, t0
                  bgeu         t1, s1, 1434f
                  srli         t0, a3, 18
                  bgeu         a0, s9, 1434f
                  srai         s10, a4, 11
                  bge          ra, a0, 1428f
                  nop
1428:             sra          ra, s8, t6
                  sra          t1, a5, t0
                  xor          gp, a6, s5
                  and          a0, s1, t5
                  sub          ra, t1, a0
                  nop
1434:             nop
                  sll          s9, s6, zero
                  srl          tp, s3, t6
1437:             sub          s6, t4, t2
                  addi         s6, s0, -478
                  sub          sp, s3, t3
                  auipc        s3, 126057
                  nop
                  srai         s8, t6, 19
                  slti         t0, s11, 552
                  blt          s4, t6, 1450f
                  beq          gp, t3, 1457f
                  slt          tp, a5, ra
                  or           t1, a4, s9
                  nop
                  and          s1, t6, s3
1450:             nop
                  blt          t4, s11, 1459f
                  bne          zero, s8, 1466f
                  add          t2, a1, tp
                  add          zero, a2, s0
                  sltiu        t5, s10, -1575
                  slli         s11, a5, 13
1457:             xor          s11, s11, t2
                  bge          s9, a1, 1470f
1459:             slli         s1, t4, 17
                  addi         t3, a4, -1442
                  sra          a4, s6, ra
                  srli         t6, gp, 24
                  and          t1, t3, s1
                  bge          s9, t3, 1484f
                  xor          t2, a6, a5
1466:             sll          t0, tp, a6
                  sll          s6, t6, a3
                  xori         t3, gp, -1684
                  slti         s3, a2, -1882
1470:             ori          t1, t3, 826
                  bne          s8, s10, 1481f
                  addi         s10, t5, -192
                  add          s8, gp, s7
                  slti         s7, a1, 772
                  slt          a4, sp, a4
                  srl          t0, a5, zero
                  bltu         s6, s4, 1497f
                  slti         zero, t5, -991
                  sll          t0, s11, t0
                  add          ra, a2, t1
1481:             bge          a5, t5, 1494f
                  add          a5, zero, t4
                  srli         s8, a0, 5
1484:             sltiu        t5, s2, -478
                  beq          s11, s8, 1488f
                  srli         a1, a7, 18
                  srai         s9, ra, 9
1488:             lui          s3, 958610
                  add          tp, a1, a5
                  slti         t0, a0, -1392
                  add          s9, a0, a0
                  srl          gp, a3, t6
                  sub          t4, s6, gp
1494:             auipc        zero, 58333
                  slli         t0, sp, 21
                  xor          s3, a0, gp
1497:             add          t4, s2, t2
                  bgeu         s0, s11, 1502f
                  bgeu         a7, s5, 1502f
                  bgeu         s5, s9, 1509f
                  bne          s6, s2, 1521f
1502:             sub          a0, a3, a0
                  addi         ra, t5, 723
                  sra          t5, s7, a1
                  andi         t2, s0, 970
                  sll          t1, s3, s1
                  slti         t2, t5, -145
                  lui          t5, 373677
1509:             beq          sp, s9, 1524f
                  or           s5, tp, a2
                  nop
                  slli         gp, t6, 12
                  andi         s5, s1, -421
                  sltiu        t3, s3, -165
                  lui          zero, 893495
                  bge          s2, s7, 1517f
1517:             sub          t0, s7, a4
                  ori          s8, a7, -323
                  or           a2, a1, s7
                  bltu         t2, gp, 1540f
1521:             andi         s8, a7, 693
                  nop
                  sra          a2, s8, gp
1524:             sll          t6, a2, s1
                  blt          a7, t4, 1544f
                  sub          a4, s10, s9
                  sll          sp, s11, a0
                  sll          s7, t6, s6
                  bge          a0, ra, 1547f
                  blt          t0, s11, 1547f
                  add          s7, t5, s7
                  beq          tp, ra, 1538f
                  bgeu         s0, s1, 1543f
                  nop
                  slli         a0, a6, 24
                  sltu         a3, s11, s10
                  sra          s8, s11, a1
1538:             sll          a2, tp, t1
                  auipc        s11, 554002
1540:             auipc        s5, 248927
                  sub          t1, s6, a6
                  auipc        zero, 128453
1543:             bltu         t2, s10, 1556f
1544:             or           s10, t3, t4
                  srli         a1, s3, 17
                  nop
1547:             srli         t4, zero, 13
                  ori          s10, gp, 390
                  srli         s11, sp, 8
                  bne          a4, a5, 1551f
1551:             auipc        s8, 1031577
                  bgeu         s1, s3, 1556f
                  xori         s9, s3, 1127
                  or           s7, ra, s0
                  slli         tp, s0, 16
1556:             andi         s8, s5, 1141
                  sra          s6, s8, gp
                  srai         t2, t0, 27
                  xori         t3, s11, 850
                  sltiu        s7, s3, 1612
                  bgeu         a7, t2, 1569f
                  or           s3, s6, s6
                  sub          s3, s4, s11
                  bge          sp, s10, 1567f
                  xori         a5, a7, -109
                  sll          s5, t2, gp
1567:             sll          s0, s9, s5
                  srai         zero, t3, 19
1569:             sll          s0, a2, sp
                  auipc        s6, 500590
                  srai         sp, t3, 16
                  sltu         s9, gp, a1
                  add          a2, s2, s1
                  xor          s10, s4, s3
                  slti         a6, a2, -1724
                  bgeu         a5, a4, 1594f
                  ori          s3, gp, -1430
                  bltu         s11, s5, 1588f
                  sltu         tp, gp, t6
                  lui          a4, 557692
                  addi         a6, t6, -1402
                  slli         a5, a2, 24
                  slt          t1, a1, s5
                  blt          ra, a3, 1587f
                  blt          s1, s0, 1589f
                  bne          t6, s5, 1601f
1587:             bgeu         a5, ra, 1604f
1588:             xori         s1, t0, -594
1589:             sltiu        t5, t2, 1112
                  addi         s1, s2, 1900
                  bltu         zero, a3, 1611f
                  beq          t3, t6, 1598f
                  auipc        a3, 645004
1594:             and          a6, tp, t6
                  bge          t4, s8, 1603f
                  sltu         s1, sp, a3
                  slli         s9, tp, 25
1598:             sub          gp, zero, s4
                  add          s1, s5, t2
                  ori          gp, s7, 1090
1601:             andi         s1, a5, -1158
                  bge          a4, s4, 1614f
1603:             sltu         gp, a1, a4
1604:             srl          a3, s3, t1
                  auipc        a5, 332661
                  la           tp, region_0+248 #start riscv_load_store_rand_instr_stream_3
                  sh           a5, 700(tp)
                  add          s0, a6, a2
                  lbu          t0, 135(tp)
                  sltu         s8, s0, s8
                  sb           s4, 1135(tp)
                  sltu         s1, t5, t4
                  sb           t4, 621(tp)
                  srai         a1, a0, 12
                  sra          a5, s9, sp
                  sra          t1, a6, s10
                  sra          s5, s6, a3
                  sll          a1, a1, s8
                  lh           a1, 668(tp)
                  sb           a1, 1488(tp)
                  add          t4, a4, s3
                  sb           s0, 818(tp)
                  lui          t3, 858697
                  lb           a4, 1348(tp)
                  lh           s8, 306(tp)
                  xori         s7, a3, -1852
                  srli         s11, s0, 28
                  lh           t2, 1092(tp)
                  sll          sp, a3, a4
                  lhu          t5, 1350(tp)
                  lb           s11, 383(tp)
                  ori          a2, a4, -37
                  sb           ra, -92(tp)
                  and          t0, a6, s10
                  add          gp, a0, s4
                  sh           a6, 1344(tp)
                  xor          s1, s11, ra
                  srai         sp, s1, 22
                  lbu          t6, 1129(tp)
                  srl          t3, s4, a4
                  sb           s4, 1661(tp)
                  srai         ra, t6, 16
                  sb           s9, 1345(tp)
                  sll          a3, s3, s5
                  sub          zero, s10, s6
                  slti         sp, t0, 902
                  lbu          s6, 1478(tp) #end riscv_load_store_rand_instr_stream_3
                  xor          t1, a0, s6
                  slti         a1, a4, -1594
                  srl          t2, a3, s8
                  bge          a5, a6, 1614f
                  sub          ra, a7, s4
1611:             srl          s7, a7, gp
                  bge          zero, s11, 1614f
                  nop
1614:             andi         ra, t3, 980
                  slt          a1, ra, a0
                  ori          s1, s7, 1177
                  slti         t2, t4, 142
                  lui          gp, 613363
                  lw           tp, 4(s2)
                  addi         s2, s2, 44
                  ori          s5, s6, 33
                  srli         sp, a5, 30
                  andi         sp, sp, -1971
                  nop
2153:             addi x29, x4, 0
2153:             jalr x29, x29, 0
sub_9:            slt          s10, a1, a0
                  addi         s2, s2, -12
                  sw           tp, 4(s2)
                  addi         s5, s5, 628
                  slti         s10, s8, -1017
                  sll          t3, s10, t1
                  sub          s0, s3, s4
                  add          a2, t4, ra
                  sltiu        s9, zero, 968
                  andi         a0, a7, 808
                  sra          s0, s5, t2
                  slt          s7, t3, a6
                  ori          gp, t2, -364
                  sltiu        s11, ra, 230
                  slt          s7, a3, s10
                  add          t1, t1, a7
                  sub          s9, s11, a0
                  ori          s3, s9, 1971
sub_9_j12:        jal          tp, sub_10 #jump sub_9 -> sub_10
                  nop
                  sra          a6, t4, a4
                  or           a5, s3, tp
                  add          a0, s9, s11
                  srli         a1, t0, 18
                  and          ra, a6, s6
                  bltu         s9, s8, 9f
                  lui          a0, 52134
                  sltu         gp, s8, t1
9:                ori          a0, t5, 382
                  sra          tp, a7, tp
                  sub          a5, ra, zero
                  srl          ra, t3, tp
                  sub          s9, s8, s8
                  andi         a3, zero, -1515
                  sub          a4, t5, s11
                  sll          s8, a4, ra
                  sub          t6, s4, a7
                  andi         s7, s9, 377
                  add          s9, t6, ra
                  or           a5, t6, s10
                  srl          t2, t5, a4
                  slli         a4, t1, 8
                  add          sp, s5, a2
                  andi         a2, s0, 1391
                  lw           tp, 4(s2)
                  nop
                  addi         s2, s2, 12
                  sltiu        t5, t2, -1300
                  xor          t5, t3, sp
                  slti         t3, t1, 1211
50:               addi x14, x4, 1
50:               jalr x14, x14, 0
sub_8:            beq          t3, a1, sub_8_stack_p
                  add          s1, t3, a0
                  slt          sp, s11, s0
                  sltiu        t4, s6, -1343
sub_8_stack_p:    addi         s2, s2, -60
                  xor          s0, s3, t4
                  sw           tp, 4(s2)
                  sltu         a1, s1, s1
                  xori         s5, zero, -1515
                  slti         sp, a7, -326
                  or           s10, a3, t4
                  xori         t1, s6, -194
                  slt          s3, t5, ra
                  and          a5, t5, t5
                  auipc        tp, 467212
                  srli         sp, a2, 15
                  ori          t1, t6, 1857
                  sra          gp, s5, zero
                  bge          t2, tp, 11f
                  bltu         s6, tp, 21f
11:               lui          a6, 1040612
                  sltu         a1, s6, a4
                  slti         s5, tp, 1019
                  andi         s8, s8, 3
                  addi         s10, a0, -1171
                  sltiu        s5, s9, -1561
                  bltu         s8, s5, 33f
                  blt          s5, t6, 27f
                  sll          a1, s0, a1
                  nop
21:               addi         s7, s4, -979
                  auipc        s10, 79622
                  xori         zero, tp, -1529
                  srli         t0, t4, 1
                  auipc        s6, 874943
                  sltiu        s0, s5, -517
27:               sub          t5, gp, t3
                  slli         ra, s11, 3
                  bne          s7, sp, 47f
                  auipc        t6, 222606
                  bne          s5, a0, 36f
                  slli         zero, ra, 8
33:               srl          t2, a1, s3
                  bge          s5, t0, 35f
35:               blt          t6, t2, 39f
36:               sltiu        s6, a0, 241
                  sub          a3, s8, sp
                  la           sp, region_0+1369 #start riscv_load_store_rand_instr_stream_0
                  lbu          s3, -4(sp)
                  sltiu        a6, sp, -582
                  sll          s9, gp, s9
                  sltu         s9, s2, s6
                  lh           s8, -23(sp)
                  andi         a3, sp, 1499
                  srai         s1, s8, 5
                  andi         s9, s11, 739
                  lbu          a2, 27(sp)
                  lw           ra, -45(sp)
                  lb           zero, -32(sp)
                  add          gp, sp, a2
                  sra          t3, a2, a2
                  addi         a5, s5, 664
                  lui          s7, 310269
                  lhu          t6, 31(sp)
                  auipc        t5, 539591
                  lh           a5, -47(sp)
                  lbu          t0, 51(sp)
                  sw           s10, -17(sp)
                  slli         ra, a7, 1
                  lbu          a4, 55(sp)
                  slli         s10, t5, 30
                  lb           s9, 25(sp)
                  lb           t2, 61(sp)
                  lbu          a5, -60(sp)
                  srl          s10, gp, a5
                  lb           s7, -62(sp)
                  sb           a4, -27(sp)
                  srai         s3, s1, 5
                  xori         a2, t3, -85
                  sb           gp, -32(sp) #end riscv_load_store_rand_instr_stream_0
                  xori         t6, t4, -98
39:               add          t3, t6, s9
                  addi         gp, zero, -788
                  slti         a1, s11, 1313
                  srli         sp, a3, 6
                  sll          t3, a2, a0
                  blt          s8, a0, 45f
45:               or           a3, a2, s7
                  srai         tp, s8, 23
47:               xor          s1, s3, t4
                  srl          s3, sp, s6
                  slli         s10, t5, 28
                  slti         s0, a1, 1452
                  addi         t3, zero, 1005
                  add          t3, t2, ra
                  sll          s7, zero, s2
                  andi         s6, s2, -296
                  slli         t5, t6, 9
                  ori          t4, ra, 276
                  auipc        a4, 942758
                  bne          s7, a1, 64f
                  andi         s6, s5, -402
                  sltiu        s3, s7, 1766
                  slt          t6, s10, t3
                  srli         gp, t5, 23
                  bltu         a4, s1, 66f
64:               sub          t0, a4, s5
                  nop
66:               blt          t6, s5, 73f
                  sub          s1, s4, a1
                  sra          sp, s1, gp
                  srl          zero, gp, t3
                  slli         sp, s6, 8
                  ori          s1, t3, 926
                  bne          t2, t0, 80f
73:               slt          s10, s9, s9
                  srl          a0, s11, t1
                  slti         gp, sp, -2004
                  xori         t2, s10, -1854
                  sll          zero, s7, s9
                  sltiu        a2, t6, -1194
                  sltu         a4, s5, t0
80:               addi         a2, s8, 1711
                  bne          a3, t5, 87f
                  slt          t1, ra, zero
                  or           gp, s5, a0
                  bge          gp, s4, 92f
                  sll          ra, t5, t0
                  bne          s8, a0, 87f
87:               slt          a2, t4, s0
                  bge          t0, s6, 94f
                  srai         a0, a2, 16
                  bge          t6, s5, 94f
                  add          s7, s4, a2
92:               bne          ra, t1, 93f
93:               sltiu        s11, t2, 597
94:               sltu         s9, a6, t0
                  xor          s11, s2, t3
                  srli         t2, t2, 28
                  bgeu         t3, s0, 100f
                  nop
                  and          zero, t1, a0
100:              blt          s10, gp, 118f
                  xor          s5, a6, s9
                  add          a2, s9, t2
                  xor          zero, t6, s4
                  addi         a6, s8, 1942
                  and          t1, s10, t1
                  bge          a4, a0, 124f
                  lui          s7, 352862
                  sra          a0, s11, s5
                  addi         a4, t3, 1436
                  andi         t0, s9, 2029
                  bgeu         t2, s9, 125f
                  nop
                  sub          s5, s10, s0
                  bne          s4, s7, 128f
                  bgeu         sp, a3, 128f
                  nop
                  xor          a1, s4, a3
118:              or           tp, ra, ra
                  bltu         s3, t0, 126f
                  slti         a6, a5, 1841
                  slli         ra, s7, 14
                  slt          t3, s6, a5
                  or           t1, s7, t3
124:              or           a4, t6, a5
125:              xori         t6, a3, 1898
126:              and          tp, s5, t6
                  bltu         t6, sp, 135f
128:              auipc        a5, 597056
                  sub          t0, t3, t2
                  andi         a3, a4, -1948
                  and          s3, s5, a4
                  nop
                  bne          s8, t0, 137f
                  ori          s9, a1, 179
135:              slt          a4, t3, s8
                  blt          s9, t5, 137f
137:              addi         a2, t2, -366
                  lui          a6, 958675
                  sub          t5, s3, s10
                  lw           tp, 4(s2)
                  addi         s2, s2, 60
                  or           a0, s4, t6
                  sra          s6, t5, a0
                  add          a0, s4, s0
                  lui          s5, 7669
188:              addi x29, x4, 0
188:              jalr x29, x29, 0
sub_1:            lui          s1, 1009160
                  and          gp, tp, a7
                  beq          s2, t1, sub_1_stack_p
                  sltu         a4, s11, t1
                  srl          t6, s3, s5
                  nop
                  sltu         s5, a3, a7
                  slli         t3, t0, 10
sub_1_stack_p:    addi         s2, s2, -36
                  sw           tp, 4(s2)
                  nop
                  and          a3, s7, s10
                  srli         gp, gp, 8
                  xor          zero, s3, a5
                  add          t4, t3, t5
                  slt          zero, s9, a5
                  sltu         sp, s7, s6
                  add          gp, a2, tp
                  auipc        ra, 142622
                  la           a1, sub_9
                  srl          s1, a4, t6
                  auipc        a4, 666245
                  lui          s0, 272870
                  addi         a1, a1, 569
                  xori         t1, s6, -42
sub_1_j7:         jalr         tp, a1, -568 #jump sub_1 -> sub_9
                  and          s6, t4, a6
                  la           t0, sub_8
                  or           tp, a4, t0
                  addi         t0, t0, 744
                  sll          a6, t0, s11
                  xor          s9, t1, s9
                  nop
sub_1_j8:         jalr         tp, t0, -744 #jump sub_1 -> sub_8
                  xori         a5, a5, -1150
                  bge          t2, a2, 6f
                  xori         a0, zero, 1301
                  bgeu         s5, ra, 5f
                  srai         s6, tp, 17
5:                bgeu         a1, t6, 13f
6:                and          s5, s11, a0
                  srl          s0, a4, a4
                  slti         a5, s6, -1176
                  sub          tp, a6, s9
                  slli         a1, t2, 24
                  add          s8, s5, t5
                  slli         a0, a4, 25
13:               or           s7, a5, s7
                  beq          sp, t6, 15f
15:               sll          a6, s6, t5
                  nop
                  bge          s9, t2, 19f
                  srai         s7, s2, 18
19:               xori         s5, ra, -139
                  srl          gp, tp, s1
                  lw           tp, 4(s2)
                  lui          gp, 445114
                  sra          s8, a6, t5
                  addi         s2, s2, 36
                  slti         t4, s7, 1928
                  add          s11, s11, s2
                  and          s5, t2, t5
                  addi         s7, a4, 1148
                  xori         s0, gp, 1188
64:               addi x11, x4, 0
64:               jalr x11, x11, 0
sub_4:            beq          s8, tp, sub_4_stack_p
                  sltu         a5, s3, tp
                  and          t5, t0, s0
                  srai         ra, s11, 5
sub_4_stack_p:    addi         s2, s2, -60
                  sw           tp, 4(s2)
                  slti         gp, a2, -1167
                  la           s1, region_1+1795 #start riscv_load_store_rand_instr_stream_0
                  lbu          s10, 183(s1)
                  lb           t5, 36(s1)
                  slt          s11, s6, t4
                  sb           a2, -132(s1)
                  sll          t5, s10, s4
                  andi         t5, t5, -861
                  andi         a0, t3, -918
                  sub          t5, s8, s3
                  sh           t0, -53(s1)
                  slt          tp, tp, t5
                  xor          ra, s5, t2
                  srli         s8, t0, 22
                  and          s8, s4, s2
                  lhu          s0, -163(s1)
                  sh           a2, -173(s1)
                  slt          t1, gp, a6
                  xori         a2, s7, 526
                  slli         a4, s1, 12
                  sll          zero, sp, t6
                  lhu          s10, -239(s1)
                  lui          a0, 433878
                  sra          s8, s2, a0
                  nop
                  sb           sp, -211(s1)
                  lui          s5, 76831
                  srai         a3, a5, 19
                  sb           a6, -231(s1)
                  lbu          t1, -198(s1)
                  sub          t0, gp, s2
                  slt          a5, a5, s1
                  auipc        a0, 501977
                  and          t0, t2, s4
                  lbu          a3, 164(s1)
                  srli         a0, a4, 2
                  sh           s11, -221(s1) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_0+1453 #start riscv_load_store_rand_instr_stream_3
                  sb           a0, 2(s5)
                  lb           s8, 12(s5)
                  sb           s4, 12(s5)
                  srai         s9, a2, 19
                  lbu          s11, 8(s5)
                  srl          s6, s0, t0
                  nop
                  lh           s7, -3(s5)
                  sltiu        a6, t1, 835
                  lbu          t5, 10(s5)
                  lbu          s9, 8(s5)
                  lhu          a2, 13(s5)
                  nop
                  xori         a3, t3, -350
                  sh           s2, -3(s5)
                  auipc        a4, 911337
                  sh           s10, 15(s5)
                  sb           t0, -6(s5)
                  sw           t0, 3(s5)
                  srl          t5, s11, s8
                  lh           t2, -1(s5)
                  slli         t5, s10, 5
                  lbu          s11, 1(s5)
                  xor          ra, s8, s4
                  lbu          s3, 2(s5)
                  sw           s11, 7(s5)
                  lhu          zero, 11(s5)
                  lh           t5, 9(s5)
                  lb           a5, 8(s5)
                  xori         s10, ra, -1701
                  slt          s10, t4, s7
                  sltiu        sp, tp, -331
                  xori         a5, tp, -1396
                  sb           s10, 12(s5) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+745 #start riscv_load_store_rand_instr_stream_2
                  xori         t4, a0, -1379
                  auipc        ra, 309329
                  ori          t0, s9, -1619
                  lb           s7, 14(sp)
                  sra          s7, a2, a4
                  lbu          zero, -15(sp)
                  lb           s10, -14(sp)
                  lb           a1, 8(sp)
                  sltu         s11, s0, s3
                  sub          zero, a4, ra
                  and          t6, sp, s7
                  lb           a2, -2(sp)
                  srl          s8, a0, zero
                  lb           s9, 1(sp)
                  sltiu        a5, s2, -1636
                  or           t4, gp, a1
                  sll          ra, a6, t3
                  sb           tp, -6(sp)
                  or           ra, a6, t4
                  sll          t0, a0, a3
                  sb           t2, 6(sp)
                  sltiu        a1, s9, 278
                  lhu          s9, -3(sp)
                  sll          tp, s3, s6
                  sltu         t0, s7, t2
                  lb           s8, 14(sp)
                  sh           a3, -1(sp)
                  lbu          s1, -11(sp)
                  sb           a6, 6(sp)
                  sh           s11, -9(sp)
                  sub          a6, a6, s6
                  srl          tp, a7, t4
                  sh           a2, -7(sp)
                  auipc        s5, 801520
                  lb           zero, -8(sp)
                  nop
                  lb           s3, -14(sp)
                  lb           s11, 8(sp)
                  sra          tp, s10, sp
                  lw           t1, -9(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+520 #start riscv_load_store_rand_instr_stream_1
                  sb           t3, 2(sp)
                  sb           a7, 9(sp)
                  lb           t2, 6(sp)
                  lb           s0, 7(sp)
                  sb           t4, -15(sp)
                  slti         ra, sp, 1611
                  srli         t2, a4, 22
                  ori          a1, t4, -1624
                  sb           s1, 9(sp)
                  xori         t4, a6, -859
                  lbu          a2, 15(sp)
                  sb           s10, 11(sp)
                  sb           s10, 13(sp)
                  xor          t6, a2, s9
                  sb           t0, -11(sp)
                  lb           zero, 6(sp)
                  lb           s1, -2(sp)
                  xori         a4, s0, 1078
                  xor          s6, s5, s1
                  lbu          s0, 1(sp)
                  lb           t0, 14(sp)
                  ori          s8, a5, -929
                  srli         s5, t3, 30
                  lbu          s9, 11(sp)
                  sb           sp, -10(sp)
                  lb           s11, 11(sp)
                  auipc        a6, 888180
                  lb           t1, -15(sp)
                  lbu          tp, 4(sp)
                  sh           t0, 6(sp)
                  sb           s0, -6(sp)
                  sltiu        s8, s8, -1511
                  slt          a1, t4, t4
                  lb           t4, 4(sp) #end riscv_load_store_rand_instr_stream_1
                  bge          s5, t6, 16f
                  xor          a1, a7, a7
                  and          t0, t5, tp
                  nop
                  srai         a6, ra, 6
                  beq          s5, t6, 10f
                  xori         a3, s3, -2042
                  addi         a6, tp, -1409
                  sll          s10, zero, s0
                  blt          a5, zero, 24f
10:               beq          sp, t3, 21f
                  sltiu        a3, t6, 346
                  srl          t4, s7, a0
                  blt          t2, s6, 17f
                  srai         a6, zero, 28
                  xori         a3, s9, -1613
16:               sltiu        a6, s7, 24
17:               beq          ra, a0, 18f
18:               sub          s7, s10, t0
                  srai         s0, a0, 26
                  add          s9, t1, s1
21:               sub          zero, ra, s1
                  lui          a3, 829788
                  sub          s9, s1, s10
24:               sltiu        tp, s4, 138
                  beq          t4, gp, 33f
                  slti         s9, s4, -897
                  bgeu         s2, s4, 31f
                  sub          a2, s3, t5
                  beq          t2, s10, 44f
                  srai         s1, t1, 27
31:               slti         sp, s1, 1167
                  addi         t5, t5, 1848
33:               slli         a2, a6, 29
                  beq          t2, a5, 54f
                  beq          s3, s9, 38f
                  xor          t5, a5, s10
                  andi         a0, t5, 1425
38:               bge          t5, s0, 39f
39:               add          s5, t3, s0
                  slti         a1, s4, 174
                  srl          s11, tp, s9
                  srl          s5, s9, tp
                  addi         a3, s11, 1772
44:               bgeu         s2, s3, 50f
                  andi         a1, gp, -1758
                  slti         ra, s2, -922
                  add          sp, zero, ra
                  sltu         a4, a5, t3
                  lui          t0, 424535
50:               sltu         a4, t4, s9
                  srai         s3, s3, 8
                  bne          t3, s5, 56f
                  srai         t2, s3, 7
54:               and          zero, a4, t0
                  blt          a4, a6, 67f
56:               xor          a5, sp, a1
                  slti         t1, s4, 1164
                  ori          a0, a1, 777
                  or           zero, s3, s0
                  sub          s5, s5, a0
                  addi         a6, a2, -1337
                  bge          s2, t2, 77f
                  bltu         t0, t0, 80f
                  ori          s5, s2, -473
                  or           a5, zero, a2
                  srl          t5, s4, t3
67:               sll          t0, sp, a3
                  andi         s5, s9, -1764
                  ori          s3, a5, -1924
                  sltu         t0, s8, a7
                  bge          s8, s7, 78f
                  srai         s10, a7, 20
                  nop
                  add          t1, t3, a7
                  bgeu         s0, t3, 82f
                  bltu         t5, s7, 91f
77:               nop
78:               blt          a3, t1, 94f
                  srli         a3, t3, 17
80:               srl          zero, t3, sp
                  beq          a4, tp, 88f
82:               slt          a0, t3, a3
                  add          gp, s6, a6
                  xor          s3, a0, sp
                  or           s10, t4, t5
                  or           s5, zero, a4
                  ori          t5, s7, 1861
88:               nop
                  lui          a1, 1016553
                  beq          t2, s1, 106f
91:               slli         s0, a2, 14
                  addi         a5, t4, -267
                  blt          gp, t1, 105f
94:               sll          s5, s2, t6
                  srli         t5, s10, 17
                  sltiu        s7, t6, -500
                  auipc        s9, 244078
                  bltu         a0, t1, 102f
                  nop
                  blt          t3, ra, 105f
                  sub          a5, s0, s11
102:              slli         s9, ra, 30
                  slti         s0, a5, 1067
                  sltiu        a2, tp, -1136
105:              xori         s10, a3, -1721
106:              xor          s10, t0, s11
                  bgeu         a1, tp, 124f
                  blt          s2, s9, 122f
                  andi         a3, gp, -1339
                  add          zero, t0, s5
                  bge          s2, a2, 124f
                  srli         t1, gp, 15
                  srai         a5, sp, 9
                  add          s3, s1, s8
                  srl          s7, t5, s10
                  sltu         tp, t5, s10
                  bne          a5, t0, 134f
                  bgeu         t1, sp, 134f
                  slti         t3, s2, -1516
                  sltu         ra, s9, s1
                  srli         s0, t5, 26
122:              slti         s8, s10, -1358
                  sltu         a2, s8, gp
124:              auipc        a0, 414679
                  beq          t2, a1, 128f
                  sll          t2, tp, gp
                  srli         s9, ra, 6
128:              slli         s11, ra, 27
                  lui          t3, 740205
                  lui          a6, 82536
                  srli         a6, ra, 8
                  nop
                  andi         t3, s6, 1558
134:              sub          t3, t6, a3
                  sra          a4, t0, s4
                  sll          ra, s4, s0
                  srli         tp, ra, 10
                  sltu         a6, a3, a4
                  andi         t0, a6, -496
                  auipc        s9, 121147
                  srl          a1, sp, t0
                  bgeu         gp, t3, 159f
                  sll          a2, s0, s10
                  and          sp, s1, a3
                  sub          s11, t3, sp
                  sltu         s3, ra, t6
                  slti         s11, s3, 470
                  xori         s0, s4, -321
                  lui          a0, 1020761
                  add          a6, t4, a0
                  slti         t1, a6, -204
                  srai         a6, s1, 30
                  sra          sp, a5, s4
                  sra          a5, s4, s8
                  addi         s0, s1, 1367
                  andi         t1, a5, -1759
                  sll          s1, a3, s7
                  srai         t6, t2, 13
159:              xor          t6, a0, a3
                  andi         gp, a6, 1972
                  andi         t0, s4, 407
                  blt          s10, s4, 177f
                  and          a2, s6, t3
                  sll          s0, a3, a3
                  ori          s1, s3, 33
                  srli         gp, a1, 0
                  la           t5, region_1+136 #start riscv_load_store_rand_instr_stream_4
                  sh           s0, 240(t5)
                  andi         s3, t1, -11
                  sb           s4, 169(t5)
                  sh           s10, 206(t5)
                  slt          s6, s2, t2
                  sll          s10, t6, a1
                  sltiu        a2, s2, 0
                  srl          t4, sp, a0
                  sb           s0, 222(t5)
                  lh           a2, -98(t5)
                  lh           tp, -54(t5)
                  lhu          s3, 12(t5)
                  lb           a0, -127(t5)
                  lh           zero, 2(t5)
                  srai         sp, a1, 8
                  xor          ra, s11, a0
                  lh           s5, -118(t5)
                  lui          a5, 681851
                  lbu          gp, -61(t5)
                  xor          t1, s8, a4
                  slti         s0, a6, -650
                  sb           s2, -57(t5)
                  lhu          s8, -114(t5)
                  nop
                  sltiu        a5, gp, 473
                  lbu          t2, 12(t5)
                  lb           s6, 178(t5)
                  sb           a7, -135(t5)
                  auipc        s3, 614314
                  lhu          a3, -20(t5)
                  slt          tp, s5, a5
                  lhu          t2, 246(t5)
                  slt          t2, a3, a3
                  lh           t6, 146(t5)
                  sh           a6, 102(t5)
                  srai         t3, t0, 30
                  lbu          s5, 30(t5)
                  sra          tp, s9, s8
                  add          gp, t5, a7
                  sw           s6, -132(t5)
                  sltu         a2, s6, t1
                  slt          s9, a5, a4
                  lbu          sp, 123(t5)
                  lb           t3, 59(t5)
                  nop
                  slt          s9, s8, s9
                  sb           s1, 207(t5)
                  lb           s1, 195(t5)
                  sb           tp, 88(t5)
                  lb           t3, 222(t5)
                  lhu          s5, 110(t5) #end riscv_load_store_rand_instr_stream_4
                  nop
                  slti         a2, s7, 1960
                  ori          a1, s2, -1157
                  nop
                  lui          sp, 555162
                  slli         ra, s5, 1
                  beq          t0, a4, 177f
                  srl          ra, zero, t1
                  srli         a6, t4, 3
                  srl          s9, gp, s7
177:              sra          s7, gp, s11
                  lui          a0, 815010
                  slli         a1, gp, 15
                  sltiu        a0, s4, -381
                  bgeu         a7, s1, 198f
                  nop
                  blt          a5, a7, 189f
                  sub          t5, a2, t4
                  andi         s5, s6, -1150
                  blt          zero, s8, 193f
                  andi         s7, t0, 922
                  sll          s6, s3, sp
189:              srl          a0, t1, a7
                  lui          a1, 793852
                  srl          a6, s0, a4
                  ori          tp, t6, 1403
193:              addi         s5, a1, 1781
                  auipc        zero, 27140
                  addi         tp, sp, 662
                  auipc        t3, 3103
                  add          t0, gp, a2
198:              bltu         t0, s9, 205f
                  slti         t2, gp, -1400
                  bltu         s4, a1, 208f
                  bne          t0, a3, 205f
                  add          a6, t6, a1
                  srli         a6, sp, 14
                  bltu         t2, t6, 221f
205:              xori         a1, s1, -1451
                  slt          s8, s8, a1
                  srli         t2, s4, 8
208:              andi         t1, t4, 766
                  or           a5, a7, a7
                  andi         s6, s2, 1020
                  srli         a1, a2, 2
                  bge          a5, s10, 228f
                  bltu         t4, a2, 225f
                  andi         t3, t1, -975
                  slt          s9, a4, a1
                  xor          s9, a6, t5
                  bltu         s1, a1, 231f
                  sra          s10, s7, t3
                  sll          t1, s4, s8
                  srl          t5, s4, t1
221:              add          s7, s6, a5
                  sra          tp, t0, s9
                  or           a3, s10, t3
                  xor          a1, a6, s2
225:              sll          s0, a4, s6
                  bne          s2, t4, 241f
                  addi         s6, a7, 1955
228:              bltu         s5, a2, 235f
                  auipc        a2, 800875
                  or           a4, s9, s3
231:              sll          t4, t3, t0
                  slt          s6, gp, t4
                  slt          s10, sp, ra
                  bne          t4, s7, 235f
235:              srl          s8, s2, s5
                  srai         a6, gp, 2
                  addi         t6, t3, 520
                  ori          s8, s2, -607
                  sub          s5, t4, t0
                  srai         zero, t3, 7
241:              or           gp, s3, zero
                  srli         s6, a2, 31
                  srl          t3, s1, a1
                  auipc        a1, 224331
                  xori         a4, s4, 1213
                  sltiu        s7, a3, -1891
                  addi         s8, s7, -199
                  sub          gp, a4, a5
                  bne          s8, ra, 269f
                  sra          a1, t3, a5
                  andi         gp, t6, 1374
                  bge          t0, s8, 268f
                  auipc        tp, 961320
                  slt          s7, t0, a3
                  slti         s8, t0, 927
                  slti         s10, s1, -1085
                  bge          s6, zero, 262f
                  xor          a6, a3, t6
                  sra          t1, s6, s0
                  bne          s5, zero, 264f
                  lui          a1, 227564
262:              bgeu         t5, tp, 263f
263:              srl          a0, tp, t0
264:              and          s6, t0, a0
                  sltu         s0, s7, s10
                  srai         s6, s0, 2
                  sll          t5, s2, t5
268:              sra          s3, zero, zero
269:              sltu         s5, a5, s10
                  bne          s11, s5, 274f
                  addi         s7, s10, 1123
                  slti         t2, tp, -1115
                  bltu         gp, gp, 288f
274:              sltu         t0, s10, a1
                  sll          a0, zero, s3
                  srl          a4, a4, s6
                  srai         s10, s3, 1
                  srai         s1, a7, 29
                  sub          s5, s2, t2
                  lui          s5, 1039473
                  sra          s5, a7, s4
                  sltu         ra, s1, a5
                  or           t2, gp, t0
                  nop
                  addi         s11, a5, 188
                  slli         s0, zero, 11
                  blt          t1, s0, 300f
288:              and          sp, s4, t0
                  blt          s5, s11, 300f
                  bgeu         s8, a6, 302f
                  slti         t6, a5, 421
                  beq          t1, a5, 307f
                  xori         gp, a3, 400
                  srai         a0, t5, 7
                  slli         s8, a5, 7
                  and          t0, s5, t6
                  bgeu         s8, t2, 302f
                  bgeu         t2, t2, 299f
299:              sltu         tp, tp, s7
300:              ori          t2, a3, -11
                  add          sp, t5, sp
302:              add          tp, gp, s7
                  slli         a5, a6, 16
                  andi         t0, s5, -617
                  or           a3, t4, a5
                  addi         s0, a1, 1390
307:              beq          a5, a5, 311f
                  slli         t6, gp, 22
                  slli         a1, s3, 30
                  bne          s4, t6, 317f
311:              addi         a5, a4, -895
                  addi         a3, gp, -358
                  add          t0, s8, a7
                  auipc        s3, 915596
                  sll          a1, tp, s9
                  srai         zero, a3, 10
317:              xor          s11, s5, a4
                  lui          s6, 734847
                  and          s3, s5, t5
                  and          gp, t1, s1
                  sll          s7, t0, t4
                  srl          t3, a1, a2
                  xori         s3, ra, 1482
                  sub          s7, t0, a4
                  sub          ra, s6, t3
                  bltu         ra, tp, 333f
                  sltu         t3, a7, a5
                  blt          a6, a3, 336f
                  and          gp, a3, zero
                  slli         t3, s10, 31
                  srl          t3, a3, t0
                  srli         a2, a6, 5
333:              nop
                  bltu         gp, s3, 338f
                  bne          s0, a3, 340f
336:              sltiu        tp, s9, -872
                  sra          s8, t1, s7
338:              sub          a5, t4, s7
                  sll          a2, zero, a5
340:              andi         a3, t2, -1345
                  bgeu         t4, ra, 357f
                  slti         t4, s2, 351
                  bge          a3, ra, 359f
                  nop
                  bne          tp, s2, 359f
                  bne          t2, sp, 363f
                  nop
                  lui          s8, 393824
                  xori         t5, t1, -1461
                  srl          sp, s2, s6
                  bgeu         s10, ra, 366f
                  xori         s0, s7, 471
                  blt          s6, zero, 368f
                  nop
                  lui          a4, 183180
                  sll          a0, gp, a1
357:              sub          tp, ra, sp
                  nop
359:              sll          zero, t5, s3
                  blt          ra, a3, 363f
                  bltu         zero, t4, 365f
                  blt          s2, a1, 367f
363:              bgeu         s10, s1, 367f
                  bne          s10, a2, 376f
365:              add          a1, ra, t5
366:              sra          s10, t3, s3
367:              xor          t5, a4, a2
368:              bne          t2, zero, 379f
                  sltu         a5, s8, t0
                  and          sp, t5, a7
                  auipc        s9, 566433
                  bge          s7, t1, 388f
                  slt          s7, t0, a7
                  auipc        s8, 464326
                  add          t3, t6, s2
376:              lui          t0, 87899
                  sltiu        s6, s11, 584
                  beq          s11, t5, 395f
379:              lui          zero, 190109
                  xor          a1, s10, s9
                  bltu         a0, s3, 401f
                  bne          s8, a2, 395f
                  sll          s3, a4, s2
                  xor          s5, a4, t6
                  lui          a4, 205122
                  bgeu         t4, s2, 398f
                  addi         s1, a5, -215
388:              lui          s9, 381483
                  srli         t0, a1, 25
                  bltu         s5, gp, 405f
                  sub          t0, a4, s3
                  srl          s8, zero, s8
                  xori         a3, a1, -1208
                  lui          s9, 1020261
395:              bgeu         s2, s1, 410f
                  nop
                  srai         gp, a6, 17
398:              srli         t5, ra, 7
                  slli         a0, zero, 6
                  sub          s6, s11, a3
401:              beq          a4, a1, 402f
402:              bge          t2, s2, 409f
                  or           t0, t3, a4
                  add          s9, t0, zero
405:              sub          t6, a2, a7
                  xori         t3, s2, 996
                  nop
                  auipc        tp, 189018
409:              slli         t4, s0, 10
410:              lui          a5, 492316
                  sltu         s6, a6, t1
                  xor          sp, s3, s10
                  nop
                  bne          s1, a4, 420f
                  slti         ra, a2, -1457
                  sltiu        s9, gp, 1805
                  sltu         a2, ra, a6
                  srl          t0, zero, t3
                  sltu         s0, t4, t3
420:              sra          s6, s7, t1
                  bltu         s11, t2, 438f
                  or           tp, s1, s10
                  slt          a6, s8, a0
                  ori          a4, tp, -510
                  sltu         t2, a0, a1
                  srl          s6, s11, s8
                  add          s9, t4, t3
                  slt          t0, a4, s7
                  auipc        t5, 157156
                  bne          t6, sp, 444f
                  lui          s0, 630924
                  slt          s5, s9, t2
                  sra          a3, t2, t3
                  or           a0, zero, a6
                  xori         s10, tp, 743
                  bgeu         s8, sp, 441f
                  bge          a1, ra, 452f
438:              sra          t1, s3, sp
                  xor          s3, s10, a3
                  or           a6, zero, t3
441:              xori         a4, a1, 1323
                  nop
                  sra          a3, s11, s9
444:              sltiu        s1, s11, -830
                  xor          sp, t5, t5
                  ori          tp, a5, -400
                  ori          t5, s6, -267
                  srai         s10, a0, 2
                  srl          s7, s3, t0
                  sltiu        t5, s10, 1431
                  blt          gp, s3, 455f
452:              xori         sp, ra, 1347
                  bgeu         zero, s9, 468f
                  beq          t3, a0, 465f
455:              slti         s10, t0, 1561
                  srl          tp, s9, a0
                  sub          t2, s9, a6
                  ori          a3, t6, 1372
                  xor          ra, t0, t3
                  xori         s10, a2, -153
                  auipc        t4, 124918
                  bltu         a7, t2, 466f
                  slt          s8, t0, ra
                  sub          a1, a3, a5
465:              sll          a6, a4, s10
466:              bgeu         s9, zero, 478f
                  and          s0, s11, t6
468:              srl          t2, s1, s0
                  auipc        a5, 977169
                  srli         sp, a1, 3
                  beq          s5, a5, 479f
                  sub          a4, t6, tp
                  xor          t6, gp, t5
                  blt          t0, a2, 478f
                  addi         t6, s0, -15
                  srai         s9, a5, 8
                  sltu         s10, a3, t2
478:              slt          t0, s1, tp
479:              bgeu         a6, a6, 496f
                  auipc        a4, 792938
                  sra          a3, a0, tp
                  sll          a3, t4, s1
                  add          a1, ra, s7
                  nop
                  xori         t5, s6, 654
                  and          a4, a0, a4
                  xor          a4, s7, s11
                  sltiu        a2, t2, 92
                  bne          t2, s1, 496f
                  nop
                  add          t1, s3, s3
                  slti         s8, t0, 584
                  bgeu         s8, t4, 508f
                  slt          a3, a2, t4
                  and          s3, s1, s7
496:              srl          zero, a2, s1
                  bltu         s1, s6, 503f
                  sll          a0, sp, a4
                  srl          a4, s2, s8
                  srli         t3, ra, 27
                  sltiu        s6, s1, 653
                  sra          s1, zero, t6
503:              slt          a0, t5, gp
                  addi         zero, a4, -2019
                  auipc        zero, 338451
                  lui          a1, 954831
                  andi         s1, t4, -976
508:              srli         s7, sp, 23
                  bge          a4, s5, 526f
                  srl          t3, t2, t3
                  srai         a1, a2, 23
                  blt          s2, gp, 532f
                  auipc        s10, 118042
                  sll          a5, s8, a4
                  bgeu         s9, s3, 522f
                  sra          a6, a6, a2
                  or           s8, t4, s7
                  bne          t2, a0, 519f
519:              srli         a4, sp, 11
                  bne          sp, s1, 533f
                  auipc        sp, 631348
522:              slt          sp, s9, t5
                  sltiu        gp, s7, -579
                  sll          a0, a2, s8
                  srli         a5, s3, 16
526:              addi         s6, a4, -1725
                  lui          a5, 282127
                  slt          t1, t5, a0
                  sub          s6, a5, a0
                  blt          a2, s0, 535f
                  bge          s1, ra, 547f
532:              lui          s1, 175189
533:              auipc        s7, 735135
                  bltu         tp, s8, 549f
535:              lui          s10, 691443
                  sltiu        t3, sp, 694
                  nop
                  bne          t4, s9, 539f
539:              sub          gp, s7, s10
                  slt          t3, a6, a7
                  addi         a6, a3, 512
                  addi         s7, s8, -586
                  bltu         t1, zero, 559f
                  lui          s5, 301176
                  and          t3, s11, s0
                  beq          s11, tp, 563f
547:              bne          a7, a6, 554f
                  slli         t5, gp, 22
549:              sub          a5, s11, s9
                  bne          s3, a7, 562f
                  sll          a1, s2, t2
                  sll          s6, t2, a6
                  beq          s8, a6, 556f
554:              addi         t6, a0, 185
                  auipc        s5, 674397
556:              bge          a5, a6, 572f
                  bgeu         ra, a2, 561f
                  sltu         a4, s5, s6
559:              bne          a1, sp, 579f
                  srli         t2, sp, 23
561:              bgeu         s8, s8, 564f
562:              or           ra, a7, s0
563:              sltu         s10, t5, s6
564:              xori         a3, a1, -946
                  bltu         a1, s10, 570f
                  or           s11, a0, a7
                  bge          zero, sp, 579f
                  lui          a2, 470573
                  srli         t2, a0, 29
570:              ori          s6, t4, 818
                  srl          s10, sp, s5
572:              beq          s8, sp, 580f
                  bltu         a4, s1, 588f
                  auipc        s6, 95605
                  or           t2, s7, ra
                  beq          s5, gp, 591f
                  xor          s3, ra, sp
                  bne          zero, s7, 584f
579:              bltu         t0, t5, 596f
580:              addi         t1, zero, 22
                  nop
                  slt          sp, s5, t1
                  slli         t1, a5, 4
584:              blt          t3, a5, 595f
                  andi         sp, a7, 28
                  beq          s7, s0, 603f
                  bltu         s2, s9, 591f
588:              slt          a4, s0, s3
                  xor          t1, ra, s7
                  bne          s8, s7, 606f
591:              or           a0, s8, a4
                  slti         s1, s3, 1239
                  andi         s0, s1, -782
                  slt          ra, a0, s5
595:              beq          t6, t2, 596f
596:              srai         tp, s7, 24
                  slt          t0, t6, gp
                  ori          zero, s8, 1890
                  and          gp, a0, s4
                  andi         a5, s4, 635
                  sub          t1, tp, t1
                  lui          t6, 468831
603:              sra          s6, ra, t0
                  slti         a4, a3, -161
                  ori          a0, ra, 25
606:              srl          s9, s4, zero
                  slli         s7, t0, 29
                  sub          s3, s2, a5
                  bgeu         t4, s5, 626f
                  slli         t6, s1, 19
                  sltu         t4, ra, s4
                  srli         a3, s5, 23
                  sll          t3, t5, s3
                  nop
                  lui          t6, 612866
                  sub          a4, s11, a7
                  or           t3, s0, s10
                  xor          a5, a4, s3
                  auipc        a4, 29366
                  bge          s8, s0, 624f
                  xori         s9, s7, 1437
                  slt          s3, t0, sp
                  slti         t3, s11, -1836
624:              andi         a6, sp, 846
                  xor          s3, s4, t2
626:              or           s0, a5, a4
                  sltu         t1, s8, a5
                  lui          a2, 317365
                  slti         s0, s11, -448
                  xori         t0, t2, 1980
                  slti         s0, s2, -1262
                  add          s7, t5, s5
                  blt          s10, t1, 637f
                  nop
                  and          tp, t4, t5
                  sltiu        a6, s4, -322
637:              xor          s11, a0, t6
                  slti         a4, t2, -961
                  bne          sp, s8, 655f
                  and          zero, t4, s0
                  xori         s6, s4, 290
                  xor          a5, zero, s4
                  sltu         t1, zero, s6
                  slt          s5, sp, zero
                  andi         gp, t5, -337
                  bge          s3, t4, 651f
                  or           zero, s6, a3
                  bltu         a6, s6, 661f
                  sltu         ra, s10, zero
                  nop
651:              srli         t2, s2, 26
                  lui          t3, 239081
                  sltiu        s6, s9, 1590
                  bgeu         t5, gp, 670f
655:              sltiu        a5, s5, -978
                  srli         t5, t5, 15
                  sltu         t2, s5, t1
                  blt          t2, a3, 662f
                  bne          s0, a0, 671f
                  or           sp, a0, s4
661:              blt          t6, s9, 668f
662:              bne          t0, s3, 677f
                  sltiu        s3, s4, 1212
                  bltu         a2, a6, 679f
                  bge          s0, a3, 672f
                  slt          t6, a2, t4
                  sra          a4, t4, a7
668:              or           a0, s5, zero
                  xori         s9, zero, -1708
670:              beq          a6, t4, 677f
671:              sra          s6, t1, a6
672:              xori         tp, zero, -452
                  andi         a3, gp, -1683
                  bltu         s8, a6, 688f
                  xor          ra, s11, a6
                  srl          t6, t3, t6
677:              beq          sp, a3, 678f
678:              auipc        s6, 593917
679:              slt          a3, a5, s7
                  slli         ra, s2, 10
                  slti         a4, s1, 892
                  slli         s10, s5, 17
                  srl          s10, s9, s2
                  andi         t2, s9, 1886
                  or           gp, s3, t1
                  and          s3, sp, s7
                  slt          t0, s0, tp
688:              and          s9, ra, a1
                  auipc        gp, 906110
                  slt          t0, a6, a4
                  or           sp, t2, s6
                  auipc        s6, 652346
                  xor          t3, a5, s5
                  sll          a5, s8, ra
                  add          a4, gp, zero
                  beq          s1, a1, 703f
                  or           a6, t4, a5
                  add          s8, t1, zero
                  add          t2, t5, s5
                  slt          t5, a4, s6
                  or           t2, s3, t1
                  srli         t2, sp, 31
703:              sra          a6, s11, t4
                  xori         a4, s5, 246
                  and          a4, t0, t1
                  add          s9, a5, a4
                  srli         a5, s2, 21
                  blt          a1, gp, 725f
                  bgeu         t1, t0, 717f
                  srli         t3, s9, 29
                  srl          s8, t0, t1
                  ori          a2, s2, -597
                  slt          s8, a6, a5
                  sra          a5, t5, s10
                  bne          a4, a7, 719f
                  and          sp, s7, t0
717:              bltu         s3, s11, 737f
                  andi         s6, s11, 1716
719:              sub          s7, a4, ra
                  bge          s3, t2, 724f
                  and          sp, a2, sp
                  andi         ra, ra, 253
                  add          t3, zero, zero
724:              blt          a4, s11, 740f
725:              ori          sp, t2, 313
                  srl          s0, gp, tp
                  beq          zero, s2, 739f
                  sltiu        zero, s3, 20
                  slt          a1, a6, s2
                  xor          a0, s9, s2
                  bgeu         t6, t5, 745f
                  sub          a4, s0, t2
                  bne          a7, s9, 738f
                  add          s8, s5, tp
                  slti         t2, s4, -683
                  ori          a2, s2, 236
737:              slli         s3, ra, 11
738:              ori          s7, s3, -297
739:              slli         ra, a1, 28
740:              xor          s5, s2, tp
                  srai         s6, a1, 21
                  srli         s11, a4, 12
                  slti         s7, s0, -1307
                  blt          s5, a6, 750f
745:              sra          t6, s3, a1
                  add          gp, ra, s11
                  slli         a1, s3, 27
                  add          s11, s2, a7
                  srai         t1, a0, 16
750:              sub          s5, s1, sp
                  sll          gp, s0, a4
                  blt          s2, zero, 768f
                  srai         s9, s3, 24
                  beq          s1, t5, 769f
                  slli         a3, s1, 17
                  sll          s10, s1, s4
                  or           a1, a0, ra
                  srli         t4, t2, 9
                  sub          a5, gp, t2
                  srai         s8, t1, 7
                  bgeu         s2, t1, 773f
                  bge          gp, s10, 779f
                  addi         a5, t5, -1764
                  lui          a6, 191946
                  or           a3, a4, s2
                  slli         t2, gp, 12
                  sub          s11, t4, s1
                  la           a4, region_1+1136 #start riscv_load_store_rand_instr_stream_5
                  add          s5, s2, a0
                  lui          tp, 358732
                  lbu          zero, -853(a4)
                  sb           s5, -338(a4)
                  slt          t3, gp, s2
                  lb           zero, -83(a4)
                  sltiu        zero, sp, 328
                  slli         sp, a3, 3
                  srli         t4, ra, 1
                  sb           t0, -938(a4)
                  xori         a1, t2, 265
                  srai         s10, a6, 19
                  srl          s10, t3, s7
                  lbu          s8, 171(a4)
                  lb           t3, 61(a4)
                  auipc        s0, 61970
                  slti         s11, s0, -2004
                  lbu          a2, -973(a4)
                  sra          a3, t4, sp
                  or           t1, a7, t0
                  lb           sp, -904(a4)
                  lb           a0, 824(a4)
                  sltiu        t1, t0, 584
                  lbu          tp, 198(a4)
                  andi         sp, a0, -704
                  slti         s6, t0, 647
                  auipc        a2, 898493
                  sll          t3, a6, gp
                  auipc        tp, 353660
                  lbu          s6, 769(a4)
                  sb           s3, 797(a4)
                  lhu          s5, 470(a4)
                  andi         s11, ra, 1685
                  add          s6, t2, s10
                  nop
                  lbu          t2, 466(a4)
                  ori          s0, t2, -1877
                  nop
                  xor          s0, t6, a3
                  sb           a0, -233(a4)
                  andi         sp, a4, -1698
                  slt          a2, t3, ra
                  andi         gp, s4, -439
                  lh           s10, 550(a4) #end riscv_load_store_rand_instr_stream_5
768:              sltu         s10, s1, a5
769:              lui          s3, 849238
                  sltu         a1, ra, s8
                  bge          sp, s4, 774f
                  sll          a5, s8, s2
773:              and          gp, s9, s6
774:              addi         t6, s2, 1769
                  sub          a3, sp, t3
                  lui          a5, 683545
                  sra          a6, s10, a6
                  ori          s1, a0, 76
779:              add          t6, a5, s2
                  add          s5, t2, gp
                  xori         a0, a2, 966
                  bgeu         a4, t5, 786f
                  xori         t5, s9, 1405
                  bgeu         s7, t4, 788f
                  bne          s10, t1, 786f
786:              lui          a4, 640062
                  sll          t0, t3, a4
788:              bge          tp, zero, 802f
                  or           t2, s6, a3
                  beq          a3, s2, 802f
                  sub          s7, ra, t0
                  add          a4, a7, t0
                  xor          a3, s0, t6
                  bge          a7, s3, 802f
                  srl          t4, s8, s4
                  xor          s7, t6, a0
                  and          s7, t6, a6
                  sltiu        a2, t0, -270
                  andi         zero, s11, -1510
                  auipc        s3, 275066
                  bge          zero, s9, 802f
802:              slti         a1, t2, 2010
                  lw           tp, 4(s2)
                  srai         t6, s6, 16
                  auipc        s0, 723461
                  slti         s10, s5, 1860
                  addi         s2, s2, 60
                  xori         s6, s4, -319
1060:             addi x25, x4, 1
1060:             jalr x25, x25, 0
sub_5:            andi         s6, s10, 63
                  sub          a6, a3, s9
                  addi         s3, s1, 58
                  bltu         t0, a3, sub_5_stack_p
sub_5_stack_p:    addi         s2, s2, -16
                  and          s6, s2, a7
                  sw           tp, 4(s2)
                  and          a2, ra, sp
                  la           s9, region_0+1833 #start riscv_load_store_rand_instr_stream_12
                  srli         a4, tp, 16
                  sb           s0, -684(s9)
                  srai         s10, tp, 21
                  lui          s8, 924399
                  lbu          a3, -1155(s9)
                  lb           s6, -718(s9)
                  or           t5, s7, a7
                  andi         s1, t0, -1324
                  srli         s1, tp, 2
                  or           t6, s11, s6
                  sb           t4, -1344(s9)
                  sb           s4, -1784(s9)
                  sub          s10, a1, a1
                  addi         s5, s8, 1944
                  lbu          a5, -1156(s9)
                  sub          a0, t6, s9
                  lbu          a0, -1661(s9)
                  sltu         a2, t2, t3
                  sw           gp, -953(s9)
                  sra          t0, a4, s9
                  xori         t4, a3, -1459
                  slti         gp, s4, -625
                  slt          t3, tp, s4
                  lbu          s7, -1518(s9)
                  sltiu        s7, a4, -233
                  slti         a4, a7, -1105
                  xori         t5, t1, 936
                  xor          a5, s10, t5
                  xor          a4, gp, s11
                  srl          s10, s2, s10
                  sltiu        a6, t5, 1546
                  sltiu        t4, s3, -789
                  srli         t5, a4, 22
                  lh           a5, -39(s9) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_0+98 #start riscv_load_store_rand_instr_stream_11
                  lb           tp, 659(sp)
                  sltiu        t5, t0, -561
                  slt          a1, s1, ra
                  sra          s5, t5, s5
                  ori          s10, s7, -1453
                  lbu          a6, 664(sp)
                  lui          a0, 574796
                  lb           a6, 333(sp)
                  lb           a2, 1894(sp)
                  lui          s3, 437037
                  lbu          t6, 749(sp)
                  lbu          t0, 455(sp)
                  lbu          tp, 1486(sp)
                  sh           zero, 240(sp)
                  lhu          t3, 822(sp)
                  lui          s6, 951549
                  lhu          s8, 432(sp)
                  lh           gp, 1362(sp)
                  lb           a2, 167(sp)
                  lbu          t3, 392(sp)
                  lb           s8, 1283(sp)
                  or           gp, t0, s7
                  lbu          s10, 1070(sp)
                  sw           s6, 78(sp)
                  sh           s11, 642(sp)
                  lui          s0, 540828
                  lhu          zero, 1872(sp)
                  srl          a5, a5, s10
                  sb           t5, 1604(sp)
                  lh           s3, 598(sp)
                  lb           t5, 1880(sp)
                  sltu         t6, t1, s11
                  lbu          s1, 1764(sp)
                  lhu          s9, 1112(sp)
                  sh           a0, 1132(sp)
                  lbu          a6, 121(sp)
                  xor          a0, a5, t3
                  sb           t3, 1528(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+1175 #start riscv_load_store_rand_instr_stream_6
                  sh           gp, -1(sp)
                  sltiu        ra, a0, -1925
                  sb           t4, -16(sp)
                  lb           s7, -25(sp)
                  lb           s5, 30(sp)
                  lb           t6, 30(sp)
                  sb           zero, -24(sp)
                  nop
                  srai         ra, a6, 7
                  nop
                  lui          zero, 776418
                  lbu          s0, -64(sp)
                  sb           t2, -49(sp)
                  xori         ra, s9, 205
                  and          t3, gp, t1
                  sll          t4, s9, s5
                  ori          t1, t5, -980
                  slt          a3, zero, s11
                  xor          t5, t6, t0
                  and          tp, s5, a4
                  srl          ra, a6, s9
                  lbu          t4, 37(sp)
                  sb           s0, 56(sp)
                  lbu          ra, 24(sp)
                  lb           s10, -54(sp)
                  slli         t6, a7, 1
                  lbu          s0, -38(sp)
                  sra          tp, s1, s8
                  srai         tp, t2, 25
                  add          zero, s11, a2
                  lb           a4, 28(sp)
                  sb           a6, 10(sp)
                  slt          gp, s5, t6
                  sb           t4, -56(sp)
                  auipc        s11, 653950
                  ori          t1, sp, -1721
                  ori          s5, tp, 1358
                  add          t5, s4, tp
                  add          s5, t6, a5
                  lbu          zero, -53(sp)
                  lb           s11, -16(sp)
                  lh           a4, 61(sp)
                  addi         a6, a4, -1680
                  lbu          a5, 31(sp)
                  or           s5, a1, t0
                  srli         a3, s5, 24
                  sb           s0, -6(sp) #end riscv_load_store_rand_instr_stream_6
                  la           t6, region_0+411 #start riscv_load_store_rand_instr_stream_13
                  lbu          s5, 10(t6)
                  slli         zero, s11, 5
                  add          tp, a2, gp
                  sltu         zero, t3, s2
                  sltu         t4, s8, zero
                  sra          gp, t3, t1
                  xor          s7, s10, t0
                  sb           s10, 1(t6)
                  lb           t2, 14(t6)
                  sb           a5, -11(t6)
                  lui          ra, 576773
                  or           a0, a2, s5
                  lui          s11, 818030
                  lui          t3, 472191
                  sra          ra, a6, s1
                  lb           s9, -16(t6)
                  xor          ra, s2, a2
                  sb           zero, 12(t6)
                  sh           t4, -1(t6)
                  sb           a2, 5(t6)
                  addi         t1, a1, -1436
                  srl          t2, s4, s10
                  slt          a5, sp, t1
                  lbu          a4, 10(t6)
                  sll          s3, a6, t4
                  lhu          t0, 13(t6)
                  lhu          a2, -7(t6)
                  srai         ra, t1, 15
                  sltu         s3, s4, t2
                  lbu          s5, -7(t6)
                  lbu          a0, 14(t6)
                  xori         s11, t5, -292
                  slt          s9, a7, s5
                  xori         s7, s2, 105
                  lb           gp, -16(t6)
                  or           t3, zero, s5
                  sb           a1, -14(t6)
                  lb           s9, 8(t6)
                  xor          a4, s6, t6
                  lbu          a2, 0(t6)
                  slli         a2, t5, 14
                  and          s0, s5, a6
                  add          t1, a6, t0
                  ori          t5, a2, 281
                  lh           a4, -13(t6)
                  lh           a1, 9(t6)
                  lbu          t5, 11(t6) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+1532 #start riscv_load_store_rand_instr_stream_7
                  srai         a2, t2, 16
                  ori          a4, t6, -919
                  slli         gp, s11, 2
                  addi         t0, a6, -2003
                  auipc        t1, 228089
                  lhu          s8, -122(sp)
                  sltu         ra, s6, s3
                  lbu          tp, -42(sp)
                  lbu          t5, 225(sp)
                  lbu          s1, -204(sp)
                  lhu          s3, 156(sp)
                  lb           s8, 247(sp)
                  lb           t2, -81(sp)
                  sub          s10, a2, s1
                  lhu          a4, -22(sp)
                  slli         s6, a2, 24
                  auipc        s6, 903738
                  sra          a1, t6, ra
                  lui          t0, 256597
                  lb           a5, 142(sp)
                  lbu          s11, 27(sp)
                  sh           s2, 194(sp)
                  and          s9, s8, t1
                  sb           s7, 9(sp)
                  lbu          s11, 183(sp)
                  slt          s1, gp, s4
                  lbu          gp, 228(sp)
                  slli         t3, s1, 5
                  slti         s3, s11, -71
                  or           t3, t0, tp
                  xori         s11, s8, -826
                  lbu          s7, 141(sp)
                  sub          a2, a7, a2
                  lb           a1, 27(sp)
                  lh           s0, 34(sp)
                  slti         s9, t4, 1106
                  sb           s7, -3(sp)
                  sub          t5, s2, zero
                  lbu          s9, -147(sp)
                  lb           s3, 235(sp)
                  lh           s6, 116(sp)
                  lb           s1, -11(sp)
                  slt          zero, a3, s5
                  sltu         s8, s10, ra
                  sll          a4, s11, t6
                  lb           gp, 226(sp) #end riscv_load_store_rand_instr_stream_7
                  la           a2, region_1+688 #start riscv_load_store_rand_instr_stream_14
                  sb           t4, -2(a2)
                  add          t1, s8, s11
                  lhu          t6, -12(a2)
                  sw           s10, -8(a2)
                  sb           a2, -5(a2)
                  sw           a5, 12(a2)
                  sb           s9, 4(a2)
                  lb           ra, 13(a2)
                  lw           s7, -4(a2)
                  lh           a5, -12(a2)
                  slt          t1, tp, s9
                  sll          t0, a6, a4
                  lbu          a5, -3(a2)
                  sra          s0, t6, a2
                  xor          t6, t1, s9
                  add          s5, s10, s4
                  sb           s11, -3(a2)
                  lb           gp, 13(a2)
                  lui          a1, 836662
                  lb           zero, -11(a2)
                  lb           s1, -5(a2)
                  lb           s5, 6(a2)
                  lb           t4, -5(a2)
                  lb           t3, 11(a2)
                  lh           s9, -2(a2)
                  auipc        ra, 520576
                  ori          s0, sp, -1965
                  srl          t6, t2, s6
                  lb           s10, -11(a2)
                  sb           a7, -2(a2)
                  sb           s8, 14(a2)
                  sub          a3, a5, a7
                  sltu         sp, s7, a4
                  lbu          s11, 2(a2)
                  srl          tp, t0, t0
                  lbu          s9, 13(a2)
                  sh           a4, -10(a2)
                  srai         zero, s4, 15
                  slti         s10, t4, 641
                  srai         a4, gp, 18
                  lbu          t5, -6(a2)
                  srl          a0, a6, a7
                  lbu          t1, 0(a2) #end riscv_load_store_rand_instr_stream_14
                  la           t2, region_0+1991 #start riscv_load_store_rand_instr_stream_10
                  lh           a3, -17(t2)
                  lbu          t3, 2(t2)
                  lbu          t5, -60(t2)
                  lbu          s0, 7(t2)
                  auipc        ra, 1011779
                  sb           t6, 6(t2)
                  sb           t6, -20(t2)
                  sb           t4, -42(t2)
                  lbu          s3, 4(t2)
                  sb           a7, -42(t2)
                  sll          gp, gp, sp
                  sb           a3, -24(t2)
                  sub          s5, s9, s1
                  slt          s5, a2, s6
                  sltu         a5, gp, a0
                  sw           a0, -23(t2)
                  andi         a3, a4, -1302
                  srai         t4, sp, 23
                  auipc        s7, 611058
                  ori          a0, s10, 434
                  addi         tp, a4, -1403
                  lb           a0, 4(t2)
                  lbu          sp, -35(t2)
                  srai         s9, s4, 1
                  sh           s8, -55(t2)
                  lb           tp, -14(t2) #end riscv_load_store_rand_instr_stream_10
                  la           a3, region_0+97 #start riscv_load_store_rand_instr_stream_2
                  lbu          a4, -14(a3)
                  srli         zero, s0, 15
                  and          s3, s3, t1
                  addi         s8, s6, 714
                  sra          t0, t3, s6
                  lh           zero, 11(a3)
                  sra          s0, a5, t3
                  lh           ra, -7(a3)
                  sb           t1, 4(a3)
                  and          gp, ra, s4
                  xor          a0, s3, s4
                  lbu          tp, 5(a3)
                  xori         a2, gp, -1675
                  sb           t3, 12(a3)
                  sra          s0, a2, s0
                  lbu          a4, 7(a3)
                  sb           t2, 11(a3)
                  lb           s6, -15(a3)
                  add          s9, s3, s3
                  sw           t5, -9(a3)
                  addi         a1, s4, 1459
                  lbu          s11, -6(a3)
                  lbu          s9, -16(a3)
                  addi         s9, t4, -924
                  nop
                  lb           zero, 0(a3)
                  lhu          gp, 15(a3)
                  auipc        s8, 40027
                  lhu          a6, -9(a3)
                  sb           a3, 6(a3)
                  sltu         t1, s7, s4
                  slli         t5, s11, 10
                  lbu          s9, -7(a3)
                  lbu          tp, 2(a3)
                  slli         sp, a4, 2
                  lb           s7, 0(a3)
                  srli         a6, s10, 7
                  lui          t6, 235291
                  sltiu        s9, s5, 1283
                  sb           zero, 16(a3)
                  ori          a1, gp, -1676
                  lui          s1, 493244
                  auipc        s9, 267561
                  slti         s8, s1, 367
                  lbu          t0, -6(a3)
                  ori          a6, a0, 1526
                  nop
                  lb           t2, -6(a3)
                  lb           s7, 12(a3)
                  sb           s11, -8(a3)
                  lhu          t2, -7(a3)
                  and          s11, s5, s5
                  sra          t6, ra, s1
                  lbu          t3, 2(a3)
                  and          t6, s6, a4
                  lb           zero, -15(a3) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+188 #start riscv_load_store_rand_instr_stream_5
                  sltu         tp, s2, s9
                  sb           s0, 6(sp)
                  lb           t0, -16(sp)
                  addi         s9, t1, -1090
                  sh           a4, 10(sp)
                  lbu          t2, 13(sp)
                  lb           s8, 12(sp)
                  sb           s11, -9(sp)
                  lbu          s9, -11(sp)
                  nop
                  lui          zero, 313185
                  srl          s6, ra, a4
                  sh           s11, 4(sp)
                  srl          t2, s0, t6
                  lb           zero, -15(sp)
                  or           a3, sp, gp
                  lw           s5, -8(sp)
                  xor          t1, s0, t5
                  auipc        s9, 401735
                  sb           a4, -11(sp)
                  lb           t4, 15(sp)
                  ori          zero, t5, -1615
                  sw           s2, 8(sp)
                  lb           a5, 15(sp)
                  lbu          s10, -15(sp)
                  or           zero, t1, s4
                  sh           s0, -12(sp)
                  lb           s1, 1(sp)
                  lbu          a1, -7(sp) #end riscv_load_store_rand_instr_stream_5
                  la           a6, region_1+828 #start riscv_load_store_rand_instr_stream_3
                  nop
                  lb           s6, 17(a6)
                  nop
                  add          s7, t4, s2
                  and          sp, s0, a0
                  xor          tp, a3, t1
                  lbu          a5, 9(a6)
                  sub          tp, t5, t0
                  add          t5, ra, t6
                  sh           t1, 40(a6)
                  or           a4, a5, s9
                  ori          s3, s3, 728
                  xori         t3, t2, 58
                  andi         a3, a6, -1741
                  or           a0, t1, a5
                  sltiu        s7, a0, -1169
                  add          sp, s3, a7
                  lbu          t1, -61(a6)
                  sb           ra, -46(a6)
                  sb           a5, 9(a6)
                  sra          s9, t3, a2
                  lui          s1, 729124
                  addi         tp, s0, -781
                  sb           tp, -38(a6)
                  sw           gp, 56(a6)
                  xori         s3, gp, 776
                  sltu         s8, a1, s10
                  addi         ra, s8, -1219
                  lbu          s3, 58(a6)
                  slt          s1, t4, s6
                  slli         t0, s0, 1
                  sb           t4, 34(a6)
                  auipc        a2, 281330
                  lb           zero, -47(a6)
                  add          t1, t6, t4
                  and          zero, s11, sp
                  add          t6, t6, s5
                  slt          t0, gp, a1
                  lbu          gp, 27(a6) #end riscv_load_store_rand_instr_stream_3
                  la           a3, region_0+1452 #start riscv_load_store_rand_instr_stream_9
                  lbu          s7, -35(a3)
                  lbu          a2, 46(a3)
                  lbu          s3, 13(a3)
                  srl          a4, s10, sp
                  sb           a1, 59(a3)
                  lui          a5, 150254
                  slt          s11, a3, tp
                  sltu         s0, t6, s4
                  lh           s10, 12(a3)
                  xor          t4, s1, t6
                  ori          t5, s8, -796
                  sb           t5, 21(a3)
                  lhu          a2, -36(a3)
                  or           s1, gp, t5
                  srai         t2, s11, 2
                  sb           t4, 58(a3)
                  andi         a0, s9, 741
                  lbu          s6, -25(a3)
                  addi         gp, t6, 361
                  lh           t4, 54(a3)
                  lbu          a4, -52(a3)
                  slti         t1, sp, -1952
                  srai         t5, t2, 9
                  auipc        s5, 24161
                  xor          t0, t4, s8
                  nop
                  or           s9, a0, a0
                  slt          t2, s10, s3
                  lb           a2, -48(a3)
                  sll          t5, s0, a6
                  or           s6, ra, a3
                  lb           t5, 25(a3)
                  lh           s11, -34(a3)
                  lw           sp, 12(a3)
                  xor          t2, s7, t6
                  sh           gp, 22(a3)
                  srl          gp, gp, t0
                  sub          ra, sp, s3
                  lb           s0, 53(a3)
                  sra          a6, t0, s10
                  sll          s3, a0, s6
                  srli         a4, a0, 2
                  addi         a1, s3, 1697
                  lbu          zero, 31(a3)
                  sb           t4, 25(a3) #end riscv_load_store_rand_instr_stream_9
                  bgeu         t5, s11, 10f
                  bge          sp, s4, 2f
2:                beq          tp, ra, 3f
3:                beq          s8, s11, 16f
                  bge          a1, s6, 21f
                  or           gp, t0, s11
                  sra          s10, t3, s4
                  sltiu        s3, s4, -331
                  beq          s9, t6, 20f
                  and          a5, a3, s11
10:               srai         s6, s11, 17
                  blt          s0, a1, 19f
                  bne          s9, gp, 27f
                  slli         s6, a0, 3
                  la           t4, region_0+313 #start riscv_load_store_rand_instr_stream_4
                  sltiu        s9, s9, 1283
                  lui          tp, 760351
                  lhu          s3, -49(t4)
                  sb           s7, 41(t4)
                  lw           t0, -61(t4)
                  sub          a4, zero, t3
                  xori         t0, sp, 1744
                  lbu          t1, 22(t4)
                  lui          t6, 90444
                  lb           t5, -51(t4)
                  sh           ra, 19(t4)
                  sltiu        s10, t4, -466
                  lhu          a6, -3(t4)
                  sub          s9, s1, a1
                  sb           a7, -2(t4)
                  slt          t2, tp, t0
                  lb           s7, 34(t4)
                  lh           s6, 41(t4)
                  lh           t6, -59(t4)
                  xor          a1, s6, a6
                  xor          ra, s3, t1
                  sb           gp, -56(t4)
                  lbu          t6, 54(t4) #end riscv_load_store_rand_instr_stream_4
                  bne          a6, a2, 32f
                  slti         t0, s9, -1949
16:               nop
                  slti         a6, a0, -936
                  sub          a3, s1, zero
19:               xor          tp, s3, t5
20:               lui          sp, 204284
21:               addi         a3, s0, 100
                  lui          a0, 98601
                  beq          a5, t0, 35f
                  andi         a4, t4, 770
                  bne          a3, t3, 39f
                  xori         sp, t4, -1827
27:               bltu         s6, s5, 40f
                  bltu         a0, tp, 38f
                  auipc        t6, 928147
                  slli         s10, tp, 29
                  sltu         t1, s9, a5
32:               add          zero, s2, s3
                  sra          gp, s1, t2
                  addi         s3, ra, -1873
35:               xor          s8, a0, t0
                  xor          a3, sp, t1
                  nop
38:               addi         a3, t2, -693
39:               xori         s9, t4, 1528
40:               andi         s0, a6, 1048
                  srl          t2, a3, s8
                  andi         s5, a2, -1856
                  andi         a6, a4, 1794
                  ori          a3, t0, -1531
                  srli         tp, gp, 28
                  sll          sp, s6, a1
                  addi         a3, s0, 1479
                  bgeu         a2, zero, 50f
                  slli         zero, a0, 8
50:               bne          gp, t5, 54f
                  slt          gp, s3, a4
                  bltu         t3, t4, 56f
                  nop
54:               beq          a1, s7, 55f
55:               xori         s11, gp, -905
56:               sll          a2, t3, t0
                  auipc        s9, 794313
                  nop
                  sltiu        t2, s9, -1420
                  slti         zero, s5, 360
                  xori         t1, t1, 832
                  bltu         a7, a0, 68f
                  auipc        a6, 407283
                  srl          a4, gp, s7
                  auipc        a2, 715107
                  sll          zero, t0, s11
                  bne          t2, s9, 86f
68:               bgeu         ra, a5, 79f
                  bgeu         t3, a0, 89f
                  sll          a6, s0, s5
                  add          a5, a1, gp
                  xori         s0, a3, -462
                  xori         a5, a7, 852
                  slli         a1, s1, 24
                  srai         a2, t2, 3
                  and          tp, t3, t5
                  bge          s7, t2, 86f
                  xor          a6, s2, a1
79:               and          a4, t2, s8
                  add          t2, ra, tp
                  slt          t4, t2, ra
                  slli         gp, s8, 18
                  sltiu        s1, s2, -1099
                  bge          t0, s9, 103f
                  blt          s8, a6, 103f
86:               lui          a2, 824478
                  bne          ra, a6, 105f
                  sll          zero, t5, t2
89:               srai         tp, s8, 7
                  bltu         a5, t0, 102f
                  auipc        s8, 923293
                  xor          t1, t4, s4
                  sltu         a3, ra, s5
                  slti         t3, s5, 1288
                  xori         ra, s11, 498
                  add          a3, t6, ra
                  ori          a4, gp, 1940
                  bltu         t2, s6, 110f
                  srl          s5, s10, a5
                  auipc        a6, 643715
                  and          a1, t3, s4
                  slli         s5, gp, 8
                  add          zero, a7, t6
                  srl          s6, t3, s2
sub_5_j10:        jal          tp, sub_7 #jump sub_5 -> sub_7
                  and          t6, s7, tp
                  sra          a2, s4, s3
                  sra          s10, s5, a6
102:              or           s7, a3, s7
103:              addi         a5, t6, -431
                  xori         a0, zero, -463
105:              and          t0, ra, zero
                  xori         ra, t1, 707
                  slli         s5, gp, 27
                  lui          s5, 318090
                  auipc        t3, 226434
110:              bgeu         a2, t6, 115f
                  slt          s11, s7, a6
                  ori          gp, s7, -1343
                  addi         s8, s3, 1137
                  ori          t6, t6, 1255
115:              sltiu        a3, sp, -1842
                  or           t5, t3, gp
                  xor          s8, s5, gp
                  lui          ra, 1025801
                  lui          a3, 867799
                  sltu         s5, tp, s9
                  slli         a5, s8, 10
                  sub          s11, s2, t2
                  sll          a4, s11, t0
                  sltiu        t0, s8, -1489
                  or           t0, zero, a5
                  bgeu         ra, a3, 135f
                  sltu         sp, a4, sp
                  slli         ra, s8, 8
                  nop
                  xori         t2, a7, 414
                  xor          a0, t1, s8
                  sltiu        s6, t1, -558
                  beq          a4, a2, 149f
                  ori          a2, t2, -245
135:              slti         s3, s1, -764
                  sltu         sp, t5, s7
                  srl          t2, s9, s2
                  or           a1, a1, t1
                  or           s10, zero, t3
                  auipc        s10, 32539
                  auipc        s9, 598286
                  slti         a2, s5, 345
                  nop
                  xori         a4, tp, 1013
                  and          s5, s7, s6
                  srai         s9, s7, 21
                  bltu         s5, a4, 148f
148:              sltiu        ra, t1, -848
149:              and          a4, s4, t5
                  srai         s7, s1, 17
                  slt          gp, s10, a4
                  sll          a1, t5, a5
                  lui          t0, 581949
                  sltiu        a5, s4, 1090
                  bltu         a6, s7, 164f
                  sltiu        t3, t2, 616
                  lui          a6, 370564
                  andi         a4, a7, 745
                  srai         a1, a2, 28
                  sltiu        s8, s2, 20
                  xor          t1, a0, t6
                  auipc        ra, 548258
                  srl          a0, t6, t5
164:              xori         a4, gp, 1808
                  beq          a3, sp, 171f
                  add          a2, t4, s9
                  sltu         t4, a5, s5
                  blt          t4, a7, 178f
                  bltu         s4, s10, 189f
                  slli         s1, s6, 19
171:              srli         s5, t4, 26
                  bgeu         t6, gp, 180f
                  sub          t4, a7, s8
                  sltu         s0, a1, gp
                  slli         sp, s11, 30
                  beq          a3, t6, 194f
                  sltu         ra, s2, t2
178:              sltu         t5, a2, a2
                  bltu         a4, a0, 196f
180:              xori         t5, t1, -820
                  bge          t6, a4, 183f
                  slli         t6, a5, 29
183:              xor          s1, a0, s8
                  addi         s1, t4, -1470
                  xori         t5, s4, 1552
                  slt          s9, s2, t4
                  and          s6, s10, t5
                  xor          s0, a1, a0
189:              sra          t1, s3, zero
                  blt          s3, a1, 203f
                  sll          t6, s5, zero
                  auipc        t2, 365735
                  lui          sp, 242621
194:              addi         t1, a2, 742
                  bge          s5, t5, 207f
196:              srli         a3, s3, 19
                  sltiu        tp, gp, 1663
                  bne          a2, a4, 210f
                  xori         s8, s5, -658
                  bgeu         gp, s3, 212f
                  sra          s6, s0, a4
                  srai         a4, t1, 18
203:              andi         a1, t0, -1658
                  blt          s9, s5, 218f
                  sltiu        a1, tp, -1874
                  nop
207:              sra          a1, a7, t2
                  lui          s0, 989720
                  lui          s3, 825550
210:              srli         a3, a2, 11
                  bne          s1, t0, 230f
212:              add          s5, zero, t6
                  slti         ra, s10, 1223
                  slti         ra, a7, 1393
                  xor          a0, s5, a1
                  auipc        a0, 237848
                  beq          a5, s7, 221f
218:              slti         zero, a1, -308
                  ori          a6, a4, -16
                  auipc        s5, 534198
221:              bge          sp, s4, 222f
222:              bltu         tp, a4, 227f
                  bgeu         s4, a4, 236f
                  or           t4, s11, a6
                  bgeu         a6, t4, 244f
                  bge          sp, s5, 244f
227:              blt          a7, s3, 231f
                  and          t6, s1, ra
                  auipc        s8, 978844
230:              beq          t2, t4, 248f
231:              sltu         a3, s7, t6
                  bgeu         s5, s11, 241f
                  sltiu        a0, s1, -1157
                  or           t5, s5, s11
                  auipc        s1, 677252
236:              add          zero, s0, a5
                  xori         t4, ra, -1303
                  srli         s7, t5, 13
                  sra          a2, a5, s11
                  sll          tp, tp, t3
241:              bge          t2, a3, 256f
                  sra          tp, a1, s2
                  srl          s8, sp, ra
244:              blt          zero, a5, 255f
                  sltiu        t6, a6, -489
                  addi         a1, s10, -509
                  sra          t2, t6, a2
248:              sltu         tp, s3, a4
                  slli         a6, s11, 8
                  or           s6, a1, a3
                  srli         a0, a1, 15
                  andi         tp, s10, -834
                  slli         a6, a6, 10
                  srai         t4, a6, 10
255:              blt          a2, a6, 267f
256:              bgeu         s3, s6, 272f
                  slli         a0, s1, 22
                  blt          a3, a1, 259f
259:              slt          s6, a1, a7
                  bltu         a4, ra, 270f
                  srl          s5, a6, a5
                  sltu         sp, s7, a0
                  add          a4, s8, a7
                  sltiu        tp, s2, -590
                  srai         a2, s2, 21
                  bge          a4, a6, 268f
267:              sub          gp, t6, s11
268:              bge          a5, s0, 269f
269:              andi         s8, t3, 558
270:              or           t4, gp, a5
                  bltu         s7, s5, 287f
272:              beq          t2, t5, 273f
273:              srai         s7, s7, 1
                  blt          t0, zero, 287f
                  blt          gp, a5, 276f
276:              nop
                  addi         sp, s5, -1954
                  srl          s1, a5, s10
                  or           a6, t1, s0
                  sll          gp, t4, a1
                  sltu         s8, a5, zero
                  slli         gp, gp, 16
                  ori          t4, a2, -1340
                  andi         gp, s4, -285
                  srli         t5, s0, 20
                  lui          sp, 282402
287:              xor          a3, t5, s5
                  sub          t5, s6, t4
                  bgeu         a0, t3, 298f
                  sltu         s6, gp, a0
                  bltu         t2, a3, 309f
                  sub          a0, gp, a1
                  sltu         t1, sp, s11
                  sltu         a4, zero, s7
                  srai         ra, ra, 4
                  xori         s3, s1, -500
                  bne          s8, a3, 307f
298:              lui          s0, 865147
                  sltiu        a0, t3, -1069
                  andi         t0, a3, -2041
                  sra          s7, a2, ra
                  bltu         s1, a6, 311f
                  addi         s3, a5, -1554
                  bgeu         s5, s10, 308f
                  blt          s10, gp, 310f
                  slt          t1, s9, s5
307:              blt          a3, ra, 324f
308:              ori          s8, t0, -107
309:              slt          s9, s9, zero
310:              bge          s3, t4, 325f
311:              sll          t4, a2, s5
                  slli         a5, s3, 23
                  bne          s9, a0, 325f
                  beq          t2, s3, 332f
                  andi         t2, s1, 1819
                  sltiu        tp, zero, 226
                  ori          a2, t0, 1724
                  bne          s5, s4, 330f
                  sub          sp, zero, gp
                  andi         t1, zero, 810
                  bge          t6, a5, 333f
                  ori          a5, t3, -103
                  sra          a4, s1, t5
324:              srli         ra, s2, 2
325:              nop
                  slli         s5, t2, 16
                  slli         a2, s6, 10
                  slli         tp, t1, 23
                  addi         s5, s10, -1054
330:              and          ra, t5, s3
                  add          s1, a6, t5
332:              blt          sp, ra, 338f
333:              bne          s7, s2, 345f
                  ori          s5, t4, -996
                  bgeu         s6, s7, 354f
                  bne          zero, s2, 356f
                  bgeu         a5, t5, 351f
338:              srai         t2, sp, 17
                  sll          t6, s6, s11
                  nop
                  auipc        a0, 957083
                  sra          a5, s11, ra
                  sub          s9, a3, s9
                  sltiu        t4, t3, 1353
345:              xor          t5, s7, sp
                  slli         a5, gp, 10
                  lui          t5, 977912
                  sra          s1, s11, s4
                  auipc        s10, 484494
                  xori         s9, a2, 1493
351:              sub          t0, t4, t6
                  and          a1, a2, t1
                  lui          s11, 34141
354:              andi         tp, a5, 1942
                  auipc        t3, 924398
356:              sll          a4, s11, a7
                  xor          a1, t2, s5
                  slli         s3, a0, 15
                  bge          a5, tp, 369f
                  auipc        a5, 207855
                  srai         a5, s11, 10
                  ori          t2, s2, -189
                  bge          a7, ra, 374f
                  xor          gp, a3, t2
                  bgeu         a1, a7, 373f
                  lui          zero, 438845
                  slli         gp, s8, 7
                  sll          a3, s2, ra
369:              sltiu        s9, t3, 1573
                  ori          a0, s0, -1500
                  addi         gp, a7, 1323
                  slti         a6, s7, -1219
373:              blt          s9, tp, 377f
374:              addi         s1, a7, 505
                  slti         t5, s7, 677
                  srai         zero, s8, 4
377:              slli         gp, a7, 18
                  slli         s5, s4, 13
                  or           t4, a2, s8
                  add          s3, s9, a6
                  and          s0, t4, t3
                  blt          s9, s10, 395f
                  bgeu         s3, s6, 402f
                  srl          t4, t3, s10
                  srai         s1, a3, 19
                  beq          s5, s5, 404f
                  sltu         s0, t3, zero
                  sltu         s5, a2, s6
                  bgeu         t2, s6, 401f
                  sll          a4, sp, ra
                  sll          s5, t5, a6
                  sub          sp, zero, a0
                  srli         s5, t4, 24
                  sra          sp, ra, sp
395:              andi         t4, s7, 735
                  beq          a2, zero, 416f
                  lui          t3, 80902
                  add          a4, ra, s7
                  srl          s1, a1, s10
                  beq          t4, t1, 409f
401:              slt          t2, sp, t4
402:              sll          a4, s7, a5
                  sub          t5, s9, a5
404:              sltu         a1, t3, t5
                  add          t6, s4, a2
                  or           s8, s8, t2
                  nop
                  lui          a3, 648867
409:              srli         t2, s0, 11
                  and          a3, zero, t4
                  bne          s10, a2, 415f
                  nop
                  nop
                  beq          a4, s4, 426f
415:              srli         t5, t6, 19
416:              blt          t1, s1, 421f
                  sltiu        a5, s8, -1255
                  sll          t3, a4, a2
                  bne          s10, a6, 437f
                  xor          t1, s11, s11
421:              add          t0, t3, t6
                  sltu         t1, sp, s4
                  sltiu        s11, a4, -723
                  sra          t0, a2, s5
                  srai         a1, t4, 6
426:              bne          zero, zero, 442f
                  add          s5, t6, a3
                  bne          s7, t2, 438f
                  lui          s1, 832769
                  auipc        s6, 561485
                  bgeu         a3, gp, 437f
                  bge          s11, ra, 447f
                  srl          s6, ra, t4
                  blt          t4, t3, 446f
                  blt          t2, t4, 453f
                  addi         s3, a7, 354
437:              ori          t3, a4, 1108
438:              slti         a2, a3, 82
                  srl          s0, s0, tp
                  blt          a0, t6, 450f
                  blt          s0, a6, 443f
442:              auipc        t2, 349530
443:              sltiu        t0, a1, 900
                  and          t6, a3, tp
                  nop
446:              slli         s7, s9, 21
447:              blt          tp, t5, 460f
                  andi         a0, s3, 1622
                  add          s3, a5, s0
450:              slli         t2, s3, 23
                  sub          a3, s1, t2
                  bltu         t6, sp, 465f
453:              beq          s2, sp, 454f
454:              nop
                  nop
                  andi         a2, zero, -512
                  xori         t0, a0, -518
                  slli         s9, s0, 23
                  or           a6, s3, s6
460:              bltu         s6, t4, 477f
                  srai         gp, a7, 24
                  nop
                  sra          s8, t3, t5
                  or           gp, a1, a0
465:              sltiu        s5, tp, 385
                  sub          t2, s3, t5
                  srl          tp, a4, s5
                  add          s11, a5, s7
                  sll          s1, a2, t2
                  srli         t5, s0, 5
                  sra          s5, zero, a4
                  nop
                  bltu         s5, a3, 491f
                  andi         a6, zero, -11
                  sltu         s9, s3, t6
                  bge          a1, a6, 490f
477:              slt          zero, s0, tp
                  sub          a1, gp, s6
                  addi         tp, t5, -766
                  addi         tp, a5, -694
                  beq          s2, s10, 482f
482:              bge          a1, s5, 494f
                  sll          a1, t3, a5
                  or           a1, s4, a5
                  or           gp, s1, s8
                  and          t4, t0, gp
                  srli         a3, zero, 6
                  xori         s5, s10, 990
                  andi         s9, a7, -439
490:              xor          t4, zero, ra
491:              bgeu         t2, t4, 499f
                  slti         s11, t3, -528
                  ori          t4, tp, 1879
494:              add          a1, s3, s3
                  and          a2, t6, ra
                  add          a5, s11, t1
                  and          a2, s6, s8
                  lui          t4, 555964
499:              xor          tp, a0, a7
                  add          a1, a4, s6
                  beq          a0, s2, 502f
502:              slt          ra, tp, a6
                  bgeu         sp, tp, 522f
                  xor          a0, a3, s10
                  srli         a5, s9, 2
                  ori          t5, s8, -1385
                  sltu         a2, s0, s1
                  sra          a2, a6, s1
                  add          t2, s1, s6
                  bgeu         gp, a5, 529f
                  add          t0, a3, sp
                  srl          s9, s6, s8
                  bge          t6, a5, 522f
                  or           s6, s8, sp
                  bgeu         sp, s9, 526f
                  and          t5, t1, s11
                  srai         s1, s9, 15
                  srli         s8, s3, 1
                  la           sp, region_0+1925 #start riscv_load_store_rand_instr_stream_8
                  lh           s3, -11(sp)
                  sh           a1, 1(sp)
                  slli         t2, s4, 15
                  ori          s0, a3, -1017
                  slt          t0, gp, a2
                  sb           t5, 6(sp)
                  slli         a6, a2, 20
                  lb           a1, 0(sp)
                  ori          s11, s7, 755
                  sub          t5, s9, a4
                  addi         s10, a4, 1617
                  lh           zero, 13(sp)
                  slt          tp, s8, s5
                  lh           a4, -1(sp)
                  srl          s6, s5, a7
                  sb           a1, -14(sp)
                  xor          a5, s6, gp
                  lbu          t2, -16(sp)
                  xor          zero, a6, s3
                  lhu          gp, 11(sp)
                  lui          a5, 85957
                  sh           a2, -9(sp)
                  sb           t2, 8(sp)
                  lh           a2, -11(sp)
                  xor          gp, t5, s8
                  lbu          a4, -8(sp)
                  add          a0, sp, t5
                  sb           tp, -9(sp)
                  lbu          t0, 16(sp)
                  and          t0, s11, s7
                  lhu          t5, 5(sp)
                  lb           t0, -16(sp)
                  sub          ra, t5, s11
                  sll          a5, s1, s10
                  lb           a3, -4(sp)
                  lb           a2, 5(sp)
                  lb           t0, 12(sp)
                  sub          t4, s1, zero
                  sb           s1, -6(sp)
                  srl          a1, s0, a2
                  lhu          ra, 3(sp)
                  lbu          t2, -2(sp)
                  slti         a4, tp, -1059
                  slli         t2, s3, 8
                  lb           t5, -15(sp)
                  lbu          t4, -16(sp)
                  sh           s9, 3(sp)
                  lb           a1, -15(sp)
                  lb           s8, 2(sp) #end riscv_load_store_rand_instr_stream_8
                  bge          a3, a2, 523f
                  ori          s11, s11, -261
                  bgeu         s0, t2, 527f
522:              addi         t4, a5, -1980
523:              xori         gp, s8, -2021
                  sltiu        s1, t2, 128
                  addi         t6, gp, 46
526:              bgeu         t5, s11, 530f
527:              auipc        s8, 925533
                  xori         s0, s9, -966
529:              bge          a0, a0, 541f
530:              srli         s3, sp, 5
                  slti         s3, t4, 1088
                  sll          a5, s10, t1
                  srli         t5, s4, 3
                  sltu         s1, s3, a5
                  bgeu         tp, zero, 545f
                  slt          s10, s1, ra
                  andi         t1, sp, -728
                  bgeu         s4, zero, 550f
                  sub          s8, a3, t0
                  blt          t1, s11, 553f
541:              andi         s1, s11, -277
                  sltiu        a0, s4, 1774
                  srai         s11, a7, 8
                  add          s3, zero, t2
545:              srai         ra, s1, 22
                  slti         a5, s1, 751
                  slti         gp, s10, 62
                  sll          s3, s0, a6
                  beq          zero, a0, 558f
550:              nop
                  srli         a6, s2, 28
                  nop
553:              or           t2, s8, a7
                  or           t2, a4, a6
                  bne          s5, s8, 571f
                  slt          a0, t5, a7
                  add          s10, tp, a7
558:              auipc        s7, 70717
                  sltiu        s8, t0, 1662
                  xor          a4, ra, s8
                  andi         s1, a7, 345
                  sra          a5, a5, s7
                  or           s11, s4, a5
                  auipc        a1, 949926
                  beq          s11, s2, 570f
                  sll          t6, zero, t5
                  bne          s4, s9, 579f
                  bgeu         a1, t1, 578f
                  lui          s5, 577707
570:              andi         s1, s10, -202
571:              bge          t5, s9, 583f
                  sub          a6, t5, s1
                  sra          sp, s3, t0
                  addi         sp, s0, 1921
                  ori          a5, t6, -1590
                  and          a2, t5, s7
                  and          s11, a3, s1
578:              slti         s6, t3, 429
579:              slt          ra, s1, t5
                  lui          t3, 809343
                  bge          s6, a1, 583f
                  xori         s8, ra, -670
583:              bge          t3, a6, 584f
584:              addi         gp, a0, -92
                  slt          s0, a5, s2
                  slti         t6, t2, 1891
                  sltiu        t6, s3, -408
                  srai         a3, t2, 0
                  xor          s1, a5, t0
                  bltu         s2, s7, 608f
                  bltu         s11, s11, 592f
592:              or           s8, tp, t1
                  add          s11, sp, a6
                  andi         a6, a4, 1783
                  srli         tp, t0, 11
                  slti         t2, s11, -128
                  bge          t2, a1, 615f
                  beq          t3, sp, 606f
                  slt          s9, a5, s3
                  addi         a5, a1, 129
                  sltu         s8, tp, s10
                  add          ra, t0, s0
                  bne          t2, a2, 618f
                  auipc        t3, 525801
                  and          a3, a0, ra
606:              ori          t6, a3, -414
                  bge          a7, a0, 618f
608:              lui          s5, 477437
                  or           s8, a3, sp
                  add          a3, gp, s0
                  bne          a0, a4, 624f
                  bne          s2, t2, 631f
                  ori          s9, t6, 73
                  sltu         s10, t3, s4
615:              srl          zero, a4, s2
                  and          t5, zero, s0
                  xori         s10, t2, -1314
618:              bgeu         gp, sp, 619f
619:              blt          a0, a7, 637f
                  or           t2, s5, s4
                  blt          s3, t0, 630f
                  xori         t4, tp, 1442
                  srli         gp, a4, 18
624:              sub          s0, t3, s5
                  beq          a4, s2, 639f
                  sub          sp, sp, t3
                  blt          a2, t2, 646f
                  sra          s10, a4, s0
                  xor          t3, a4, t2
630:              sltu         a2, gp, zero
631:              bltu         t1, t4, 635f
                  srli         t6, t6, 19
                  nop
                  and          s7, s1, gp
635:              lui          s10, 187468
                  sltu         t5, zero, t4
637:              xor          s6, s4, sp
                  beq          t0, s3, 658f
639:              or           s5, s3, sp
                  bge          sp, s8, 657f
                  srl          s3, a7, sp
                  lui          tp, 999990
                  andi         a4, s6, -1790
                  sra          s10, s5, s3
                  blt          s2, s4, 646f
646:              xor          sp, sp, s5
                  slti         t6, t1, 456
                  xor          a5, zero, t2
                  nop
                  beq          s8, a1, 663f
                  slli         a2, s3, 11
                  andi         a6, a5, -1617
                  andi         t0, a5, -600
                  bgeu         t2, a3, 667f
                  lui          a1, 453643
                  xor          t6, s4, s10
657:              ori          s1, s1, 1501
658:              auipc        t2, 885677
                  add          tp, a1, tp
                  bgeu         zero, sp, 661f
661:              srai         zero, s11, 3
                  addi         s3, a5, -1850
663:              xori         t4, s0, 919
                  addi         a6, a5, 554
                  addi         zero, s5, -1140
                  slti         a3, t4, 636
667:              bge          gp, a5, 679f
                  slli         ra, s8, 0
                  and          t5, s2, s11
                  srli         zero, s8, 1
                  beq          a1, ra, 675f
                  blt          t6, s6, 676f
                  xor          gp, s3, t1
                  addi         s7, s8, 2023
675:              and          t1, a7, s11
676:              bgeu         s5, s0, 695f
                  slli         t3, zero, 30
                  bge          a6, a3, 687f
679:              lui          t6, 450680
                  addi         s3, s2, -1775
                  auipc        t3, 988995
                  xor          t6, a4, s9
                  slli         s1, a1, 10
                  bge          s6, s10, 685f
685:              andi         a6, a7, 1161
                  sll          s11, a2, a1
687:              srl          gp, t0, a6
                  sltu         zero, a1, s6
                  lui          s9, 878662
                  sra          t2, s7, s0
                  nop
                  bge          a6, s6, 712f
                  sll          s3, s8, s7
                  srl          t6, t4, s7
695:              sub          s8, a3, t3
                  srli         gp, a1, 18
                  sub          gp, ra, a2
                  srli         t0, t1, 28
                  sub          tp, t2, zero
                  srai         s10, a5, 18
                  bge          s5, s10, 715f
                  srl          ra, a4, t5
                  ori          s8, a6, -86
                  bne          s9, a1, 722f
                  add          t3, s0, t4
                  sub          a1, s5, s8
                  srai         s6, s0, 12
                  bgeu         t2, s11, 725f
                  bne          s1, ra, 721f
                  add          gp, s7, t3
                  and          t3, a7, t0
712:              sll          t0, s5, s1
                  srli         s5, s8, 8
                  xori         a0, zero, -1309
715:              blt          a3, t4, 725f
                  srli         a4, a7, 16
                  sll          a0, s2, s6
                  beq          sp, zero, 733f
                  bgeu         a4, gp, 730f
                  lui          a6, 720125
721:              srl          s5, s0, t1
722:              auipc        a6, 68828
                  srl          tp, ra, s7
                  bne          a7, s0, 733f
725:              slt          t0, a6, t5
                  xori         s9, t0, 1083
                  bne          s0, t0, 743f
                  add          s7, s11, s4
                  sra          s0, t6, s5
730:              beq          t5, t5, 742f
                  xori         a5, t0, -1949
                  srli         s11, t1, 27
733:              sll          a1, t3, gp
                  sltu         s7, zero, s3
                  bne          t1, a3, 745f
                  bne          s7, s0, 744f
                  sub          t5, a4, t3
                  sub          t6, tp, t3
                  auipc        t1, 1015100
                  srl          s3, a3, s1
                  slt          a1, s7, ra
742:              addi         t2, a0, -589
743:              nop
744:              srli         s11, tp, 14
745:              sltu         a6, s2, t2
                  slli         s8, t0, 12
                  nop
                  beq          a4, t4, 753f
                  srli         s0, s11, 22
                  sll          t3, s7, a5
                  xori         gp, s10, -1140
                  srli         t1, t2, 27
753:              nop
                  bge          zero, ra, 766f
                  sub          s5, t3, a2
                  sltiu        s11, s5, 1130
                  slli         tp, s0, 26
                  add          a6, a6, s11
                  sub          t6, s10, s10
                  lui          a4, 182309
                  addi         a2, t1, 1903
                  or           t4, ra, s3
                  and          t2, s4, a5
                  auipc        a5, 709698
                  bltu         s6, s3, 784f
766:              bgeu         t0, t4, 784f
                  andi         t3, tp, -783
                  slti         s0, zero, 1143
                  bge          a1, a7, 775f
                  srai         s10, t4, 30
                  lui          gp, 597403
                  ori          tp, s2, -1013
                  slti         sp, a3, -1197
                  beq          s5, tp, 776f
775:              sub          zero, a2, s9
776:              bge          a2, t3, 794f
                  andi         a2, zero, 373
                  or           a1, a5, s0
                  auipc        tp, 28783
                  xori         s5, t3, -928
                  sub          sp, tp, tp
                  slli         a5, s7, 15
                  auipc        a6, 960527
784:              sub          a6, s3, a3
                  lui          a6, 709933
                  xor          s0, s3, s11
                  lui          a4, 535029
                  add          t5, s0, s11
                  srl          s3, s11, a4
                  sll          sp, a1, a1
                  bne          t3, a3, 800f
                  sltu         s0, sp, t3
                  sltiu        s3, ra, -450
794:              sltu         s9, s11, t5
                  slti         ra, zero, -1771
                  andi         zero, t4, -56
                  sra          a3, s4, a0
                  slli         a6, s1, 6
                  sltiu        s0, a1, -211
800:              beq          s5, s11, 811f
                  addi         gp, s6, 1080
                  slli         s9, s1, 25
                  sltiu        s10, s2, -802
                  nop
                  beq          sp, s5, 818f
                  srai         a4, s9, 2
                  slti         s1, s4, 898
                  srai         s1, s1, 13
                  slti         s10, t1, -1370
                  bge          a4, s0, 820f
811:              andi         s10, a6, 53
                  bne          s0, a5, 829f
                  srl          t2, sp, t0
                  bgeu         sp, a7, 826f
                  sltu         t2, s11, t2
                  auipc        t0, 51354
                  slli         a3, a4, 31
818:              ori          t2, s9, -3
                  slti         t3, s5, -88
820:              add          t6, t2, s11
                  xori         s3, a2, 1746
                  slli         tp, a4, 17
                  blt          a3, gp, 835f
                  srai         t4, t5, 10
                  sltiu        t3, s8, 1895
826:              or           s5, zero, zero
                  sll          t4, gp, s7
                  nop
829:              beq          t0, a0, 838f
                  slt          gp, s2, a3
                  add          s3, s6, s10
                  add          a4, t5, t6
                  xori         a1, s11, 51
                  bne          sp, a1, 838f
835:              addi         t5, s10, -56
                  beq          gp, sp, 838f
                  add          tp, a4, a3
838:              andi         zero, a1, -99
                  xori         s8, gp, 646
                  beq          s3, t2, 845f
                  bgeu         s10, a7, 847f
                  sll          t0, s3, a5
                  sltu         t2, s7, a1
                  addi         a6, a5, -1723
845:              xor          a2, tp, a5
                  sra          t4, s9, t1
847:              and          a5, t4, t4
                  slt          s5, t0, t1
                  bne          t4, s11, 861f
                  sltiu        a0, s6, 1857
                  beq          s5, s10, 852f
852:              ori          a6, t5, 910
                  srai         a4, s2, 28
                  beq          s8, t1, 874f
                  sub          t3, a2, s7
                  andi         a1, s3, 1871
                  slt          s9, s1, s10
                  srai         s9, a7, 29
                  add          sp, t1, ra
                  and          a4, t0, t6
861:              and          sp, t2, s4
                  lui          s6, 1018360
                  and          ra, t4, tp
                  xor          s7, s4, s6
                  sll          a3, t3, t0
                  add          tp, t6, s2
                  or           s1, sp, t5
                  bge          s1, s4, 886f
                  auipc        a0, 308130
                  xori         sp, t1, -264
                  sltu         ra, s5, a2
                  bltu         s9, s9, 882f
                  auipc        a2, 233630
874:              addi         s0, zero, -238
                  slt          s9, s2, s2
                  bge          s8, a5, 895f
                  auipc        s5, 791172
                  sltu         a5, a6, a3
                  srli         a6, t5, 4
                  xori         s1, tp, -852
                  sra          t5, t0, a5
882:              bge          t5, s8, 883f
883:              srai         a2, a2, 17
                  xori         a2, s1, -1062
                  bgeu         a3, a4, 904f
886:              ori          t3, t6, 1442
                  blt          s1, t0, 905f
                  srl          t4, t0, t5
                  addi         zero, a4, -1782
                  lui          s9, 586259
                  slti         tp, t4, 1744
                  addi         a0, sp, 1050
                  bge          a1, a6, 909f
                  add          a5, s11, s9
895:              beq          s10, s10, 899f
                  bne          s5, a6, 904f
                  xori         s5, t6, -438
                  andi         a1, a0, -1901
899:              bgeu         s6, gp, 900f
900:              slti         a1, a4, -822
                  andi         s3, t1, -1348
                  xori         s1, s9, 1462
                  nop
904:              nop
905:              sra          s5, s2, s1
                  bge          t0, s11, 924f
                  slli         a5, s6, 22
                  add          tp, a7, a0
909:              slt          s11, t1, s1
                  slli         a5, tp, 24
                  sltiu        s3, s3, -385
                  sll          s1, ra, s4
                  sltu         s10, s5, s6
                  xor          t1, s6, ra
                  or           t0, t2, s3
                  andi         s6, s0, -530
                  xori         t6, s5, 441
                  xori         zero, gp, 1607
                  sub          t0, zero, a1
                  slt          t0, t3, a0
                  nop
                  xor          s5, a1, s11
                  slli         ra, gp, 28
924:              ori          t5, t5, -601
                  bne          s5, s3, 938f
                  lui          a3, 142327
                  sub          a1, tp, ra
                  srl          a4, s8, t4
                  xori         t3, s1, -1045
                  srai         zero, s11, 11
                  bne          t3, gp, 943f
                  nop
                  sub          s9, s2, s1
                  or           s5, s1, s2
                  srl          t6, a3, t5
                  xori         t6, a0, 689
                  slti         zero, a6, 1917
938:              sra          t4, s1, a4
                  bltu         sp, s7, 954f
                  nop
                  srli         s11, s2, 4
                  addi         s9, s9, 976
943:              bltu         a6, t0, 957f
                  or           s3, s9, a4
                  auipc        a4, 592485
                  sub          s8, a1, t3
                  srai         ra, s11, 16
                  srl          gp, a0, s10
                  xori         s8, sp, 1702
                  sub          s1, a7, a3
                  bge          s0, t0, 964f
                  addi         s5, t5, -65
                  add          s6, s11, s3
954:              sltiu        s11, t2, -2038
                  bltu         a0, a6, 956f
956:              srl          s3, t6, s8
957:              slt          s9, s2, a7
                  addi         a3, a0, -1645
                  beq          s4, sp, 977f
                  ori          s9, s11, 1506
                  srli         sp, a6, 4
                  beq          sp, a7, 980f
                  sub          t4, a2, ra
964:              bgeu         s8, a6, 965f
965:              blt          s2, s7, 981f
                  xor          tp, s0, s8
                  and          s3, s1, t2
                  srli         s6, s11, 19
                  bge          t2, s8, 975f
                  bltu         gp, sp, 981f
                  xor          s5, a0, tp
                  xor          s3, t0, a5
                  slli         s10, a5, 24
                  sltu         s6, s5, s0
975:              nop
                  beq          s0, s11, 988f
977:              sltiu        t6, s9, 215
                  bge          t2, s5, 996f
                  bne          t6, zero, 991f
980:              bgeu         s1, a1, 994f
981:              addi         t2, s3, -857
                  and          a4, s2, s1
                  bltu         s10, s0, 987f
                  andi         t0, tp, 539
                  bne          t3, s1, 997f
                  bne          t1, tp, 1003f
987:              slt          t6, ra, s7
988:              nop
                  bne          t2, t1, 991f
                  sltiu        s6, a7, 576
991:              srl          s3, s5, gp
                  slti         s3, s5, -1815
                  sltu         t3, a1, s10
994:              xor          a5, t2, zero
                  auipc        t1, 569630
996:              xor          a3, a0, a3
997:              andi         s3, s0, -587
                  srl          a4, ra, s2
                  slli         t1, s6, 2
                  xor          s10, a5, a0
                  beq          s0, s1, 1020f
                  srl          ra, s10, a0
1003:             nop
                  ori          s7, s6, 904
                  and          gp, t6, t6
                  slli         tp, s8, 5
                  srl          a1, s4, a0
                  xori         sp, a3, -1854
                  slti         tp, a4, -865
                  andi         s9, s7, -1034
                  slti         tp, a5, 1894
                  sll          t3, s1, t5
                  xor          a4, s2, s7
                  add          a4, s6, s3
                  slt          s8, gp, t1
                  srai         zero, s3, 12
                  bne          s6, t5, 1032f
                  auipc        zero, 723288
                  sll          s5, a6, a2
1020:             bltu         t6, tp, 1021f
1021:             sll          s8, t5, a4
                  sll          a2, sp, t2
                  bge          zero, t5, 1043f
                  ori          s5, tp, -1138
                  srl          ra, s2, ra
                  add          s9, s6, s1
                  sra          s1, s11, t2
                  sltu         a1, s6, s9
                  andi         s0, s5, 1383
                  bgeu         s4, s7, 1034f
                  slti         gp, s3, -1364
1032:             nop
                  sll          s10, a3, s3
1034:             srli         a1, s6, 10
                  bne          s10, a5, 1044f
                  slli         tp, zero, 28
                  add          t0, a4, s9
                  and          a1, s5, s5
                  slti         zero, s5, -1609
                  ori          t4, t0, 988
                  ori          a1, t6, -91
                  slli         s10, s8, 12
1043:             slt          sp, a6, gp
1044:             bltu         s0, s2, 1049f
                  sltiu        s0, a2, -1799
                  nop
                  bge          a7, s7, 1066f
                  xor          s3, t6, t3
1049:             sltiu        t3, ra, 523
                  bgeu         s3, gp, 1058f
                  bne          t0, s9, 1060f
                  bltu         a3, a3, 1065f
                  beq          s5, a6, 1063f
                  addi         zero, t1, -1762
                  slti         a5, t3, -1796
                  beq          t5, s1, 1068f
                  andi         sp, a4, 1677
1058:             bgeu         t2, s6, 1068f
                  addi         a4, gp, -1079
1060:             xori         s9, a1, 1565
                  andi         s6, s5, -102
                  auipc        s8, 290800
1063:             addi         gp, s4, -749
                  sltu         t5, t4, s11
1065:             nop
1066:             slt          a1, t1, s3
                  blt          s5, s5, 1069f
1068:             sub          a4, s5, a3
1069:             or           gp, a6, s11
                  add          s8, s11, t3
                  xori         s0, s0, 1221
                  bne          a1, ra, 1073f
1073:             xor          t4, s2, a5
                  bne          s5, t2, 1079f
                  beq          ra, tp, 1081f
                  srai         s9, a1, 21
                  sll          s1, a3, s8
                  sltu         s1, a4, s7
1079:             or           t4, tp, s2
                  blt          s2, s3, 1089f
1081:             sra          a4, s5, s3
                  slti         s10, tp, -327
                  or           zero, s8, s0
                  slli         a2, tp, 18
                  and          s1, s8, s4
                  xor          t5, s4, t0
                  addi         ra, a7, 173
                  sltiu        t6, t1, -1388
1089:             lui          gp, 147456
                  srli         t4, s9, 5
                  slt          s6, a1, s11
                  bltu         t6, ra, 1106f
                  srai         t3, a6, 22
                  ori          t4, s5, -1225
                  bltu         a4, s3, 1110f
                  nop
                  bgeu         gp, t4, 1098f
1098:             ori          tp, zero, -590
                  auipc        s7, 91004
                  srli         ra, t4, 2
                  lui          a2, 317581
                  xor          s11, ra, s9
                  bne          s7, s3, 1116f
                  srl          t3, s8, a3
                  addi         t4, s2, -1767
1106:             ori          s7, t4, 154
                  andi         s6, t5, -723
                  srai         t0, a1, 4
                  bltu         s1, s9, 1113f
1110:             sub          s5, s6, a1
                  srli         tp, a0, 21
                  addi         ra, s1, 1708
1113:             slt          sp, s4, s7
                  xori         s9, a4, 1336
                  bltu         zero, t6, 1127f
1116:             sll          t4, gp, a2
                  lui          s6, 837077
                  xor          s9, s2, t6
                  sltiu        t3, s8, 722
                  bltu         t4, s0, 1136f
                  srl          a0, s6, t5
                  srl          t6, t1, gp
                  or           s5, tp, s11
                  beq          zero, s4, 1128f
                  andi         s3, s0, -411
                  and          s1, zero, t6
1127:             andi         a4, s11, 1809
1128:             xori         a2, s6, -718
                  andi         s1, gp, -295
                  auipc        a3, 318952
                  bltu         t0, a3, 1143f
                  blt          t3, a0, 1150f
                  or           t4, t3, zero
                  bge          zero, a1, 1146f
                  srai         gp, a3, 7
1136:             lui          a0, 958409
                  srl          t4, t1, a0
                  addi         t5, s11, 161
                  bgeu         zero, t6, 1157f
                  xori         s8, s2, -1161
                  blt          s10, sp, 1150f
                  srai         s7, t6, 17
1143:             sub          a3, t0, s8
                  addi         s8, s6, -67
                  bgeu         s11, s3, 1162f
1146:             slti         s6, a6, -1334
                  sltiu        s7, t4, -558
                  slt          a2, s6, s7
                  bltu         s8, s3, 1167f
1150:             bltu         a5, s9, 1158f
                  andi         a2, t5, 1747
                  sll          a4, s1, a0
                  andi         a5, a3, 1052
                  sub          a3, t5, s11
                  xori         a0, t2, 317
                  sub          a2, tp, s5
1157:             srai         t3, t4, 0
1158:             and          t3, a5, ra
                  srl          s8, sp, a1
                  nop
                  bge          a6, t3, 1171f
1162:             add          a5, s0, ra
                  sltu         s9, s4, s5
                  and          s11, t0, t2
                  ori          s6, s2, -628
                  sltu         a3, s9, s2
1167:             lui          s9, 819670
                  andi         t1, s4, 1443
                  bne          a1, s6, 1180f
                  bne          zero, tp, 1180f
1171:             slt          a0, a5, s0
                  bge          sp, t0, 1191f
                  xor          a2, a4, a6
                  or           t2, a6, s6
                  sltu         t4, s1, a0
                  addi         s10, s2, -1530
                  blt          a3, sp, 1196f
                  sra          t0, s5, s0
                  bne          t4, zero, 1192f
1180:             bne          a4, s11, 1192f
                  nop
                  srli         a5, a7, 1
                  slti         a6, s2, 122
                  slti         s3, s8, 1125
                  slli         a1, t6, 4
                  or           s1, a2, s11
                  xori         a2, ra, 1501
                  beq          t2, s3, 1189f
1189:             srai         s6, t4, 7
                  sltiu        t3, s11, 622
1191:             sltiu        t1, a1, 139
1192:             srai         t2, t4, 26
                  xor          ra, s0, ra
                  slli         s0, s11, 12
                  sltu         ra, a5, a5
1196:             andi         s11, t1, -278
                  beq          s11, zero, 1217f
                  sra          ra, a1, a3
                  auipc        t1, 286785
                  and          tp, s7, s6
                  xor          s0, s5, s1
                  lui          gp, 912306
                  bgeu         t5, a6, 1217f
                  slli         s0, a4, 8
                  xori         s0, a0, -1474
                  srli         a1, s1, 27
                  auipc        s9, 616251
                  slti         s0, t3, 1274
                  and          a6, a0, zero
                  add          t3, s11, tp
                  sltiu        s7, t6, -1847
                  add          s0, tp, a2
                  slti         s5, t0, -1641
                  nop
                  or           ra, t6, s0
                  lui          t1, 156011
1217:             andi         t6, s1, 1958
                  bgeu         s6, a7, 1227f
                  slt          s9, t1, s3
                  sltiu        t0, t6, -121
                  bge          s11, a1, 1233f
                  slli         s10, gp, 13
                  or           s8, s4, a3
                  sltiu        t2, s4, 1986
                  beq          sp, s9, 1238f
                  ori          a0, s11, -1977
1227:             addi         a5, a2, -937
                  bltu         s0, t0, 1246f
                  or           s6, a7, s1
                  sra          t6, s7, t3
                  srl          ra, s7, sp
                  beq          s4, t6, 1236f
1233:             bltu         s1, s5, 1234f
1234:             beq          s9, t0, 1242f
                  srli         s1, s0, 12
1236:             add          t5, zero, a5
                  nop
1238:             xor          t5, a2, a6
                  and          t2, a4, a4
                  slti         sp, sp, -1824
                  slt          a5, t1, a1
1242:             sra          a6, a0, t5
                  lui          tp, 970138
                  sll          s3, t0, sp
                  and          s0, t1, a2
1246:             bne          s11, s8, 1261f
                  la           a3, region_1+1745 #start riscv_load_store_rand_instr_stream_0
                  nop
                  slt          t3, ra, s9
                  lh           a4, -411(a3)
                  slti         s8, s10, 393
                  lh           ra, 203(a3)
                  sub          s5, t1, a0
                  srai         t0, a7, 5
                  lbu          s6, -344(a3)
                  andi         tp, tp, 441
                  slt          t1, s8, t0
                  lhu          gp, -1247(a3)
                  lbu          s6, -1032(a3)
                  and          a0, t3, t1
                  lh           sp, -1355(a3)
                  or           s6, a7, sp
                  lh           s6, -91(a3)
                  sh           a4, -453(a3)
                  lbu          sp, -588(a3)
                  andi         sp, s1, -500
                  lbu          a1, -670(a3)
                  lbu          s5, 2(a3)
                  or           t4, a1, a0
                  sb           s9, -436(a3)
                  sra          sp, ra, s1
                  sb           zero, 146(a3)
                  lb           t2, -107(a3) #end riscv_load_store_rand_instr_stream_0
                  bgeu         s8, a3, 1267f
                  srl          t1, s0, s9
                  xor          zero, a0, s10
                  srli         tp, tp, 30
                  srai         s3, s6, 4
                  srli         a0, gp, 2
                  auipc        s3, 885546
                  sll          a5, a5, a5
                  and          a5, s6, a5
                  sltu         t1, ra, s5
                  bne          t6, t2, 1275f
                  sltiu        t6, s2, 462
                  or           s9, s10, t0
                  srai         t2, s9, 25
1261:             lui          s11, 89032
                  and          s7, t1, t0
                  sltu         a3, t5, ra
                  sll          s6, t0, s6
                  slti         s9, t2, -847
                  add          a5, t2, a1
1267:             xor          s6, ra, ra
                  slti         t3, s1, -1035
                  blt          t5, t3, 1281f
                  xori         a4, s3, -1209
                  sll          t2, s9, gp
                  srai         s7, s10, 3
                  sltu         s7, t2, s5
                  add          s0, t2, t2
1275:             sub          s9, s5, s0
                  addi         s8, a4, 264
                  blt          s11, s9, 1279f
                  sll          a5, s7, tp
1279:             bgeu         s3, a0, 1283f
                  and          tp, t1, t2
1281:             bgeu         t3, t6, 1287f
                  or           zero, t1, t5
1283:             sll          sp, s11, a2
                  xori         t6, a0, -1688
                  addi         t1, s1, 685
                  srli         a6, s7, 5
1287:             sub          t3, s8, gp
                  auipc        t5, 864340
                  bltu         s10, s8, 1294f
                  bgeu         s7, s8, 1306f
                  and          s10, t4, s6
                  ori          sp, s9, -1437
                  andi         t5, t6, -1138
1294:             srli         s6, s8, 23
                  addi         ra, s4, 823
                  sub          a6, s4, s4
                  sltiu        t0, s9, 1335
                  sltu         s5, a3, s11
                  auipc        a2, 1039133
                  srl          t0, a0, s7
                  xori         t4, t3, 2012
                  auipc        s6, 865792
                  slt          tp, a3, ra
                  addi         s0, s8, -1121
                  bgeu         t3, t4, 1317f
1306:             sra          t2, ra, s7
                  sra          s11, tp, s4
                  ori          zero, a0, -613
                  add          a6, a0, s11
                  auipc        s5, 1033838
                  andi         tp, s4, -219
                  sltu         tp, s11, s6
                  bltu         a1, s9, 1314f
1314:             lui          a3, 428585
                  srai         a0, t0, 3
                  bne          s9, s2, 1326f
1317:             bgeu         a2, s3, 1336f
                  add          gp, t5, a4
                  slti         t6, s2, -526
                  slti         ra, s1, 1108
                  slti         s9, sp, 301
                  or           s5, s3, s4
                  xori         t0, t5, -1988
                  sltu         s7, s8, t4
                  auipc        t4, 90961
1326:             sra          t1, s7, a0
                  bltu         a4, t0, 1344f
                  xori         s8, s0, 2034
                  ori          zero, a6, 1581
                  srl          s10, s9, s10
                  sltu         s1, s1, s2
                  ori          sp, sp, -1983
                  sltu         t6, t1, s10
                  bne          t6, s9, 1345f
                  addi         s10, a7, -1310
1336:             andi         s3, t2, -506
                  bge          t5, a5, 1349f
                  slli         tp, s7, 27
                  lui          t2, 333767
                  sltu         s11, gp, a3
                  bne          a1, s11, 1360f
                  slti         s7, t0, 1613
                  andi         s1, sp, 1691
1344:             andi         a2, ra, -1837
1345:             ori          t5, t0, -1365
                  add          t2, t5, s1
                  xori         a2, t3, -1956
                  xor          tp, s9, t2
1349:             sltiu        sp, s11, -325
                  nop
                  ori          s10, s11, 1587
                  blt          tp, s0, 1361f
                  bne          s8, a5, 1371f
                  slt          t1, t5, s7
                  andi         s9, t6, -2033
                  or           t2, t6, s7
                  add          zero, t1, s0
                  lui          ra, 202566
                  bgeu         t6, ra, 1369f
1360:             srai         sp, s7, 24
1361:             andi         s1, s11, 481
                  ori          a3, s5, 1263
                  srli         zero, s4, 31
                  sltiu        a2, a6, 1966
                  sll          tp, s8, s11
                  xor          s8, a2, s5
                  sub          a6, s10, s3
                  auipc        a2, 613271
1369:             lui          t6, 571553
                  srl          s6, s3, s1
1371:             srli         s1, ra, 0
                  nop
                  sra          a5, a7, t1
                  sra          a0, s7, zero
                  xori         s0, s10, -1897
                  sltiu        s8, a3, -944
                  and          s5, sp, s9
                  sll          gp, a1, a5
                  nop
                  ori          t0, zero, 445
                  sra          t0, t5, a5
                  andi         tp, t1, 1981
                  slti         sp, a1, 86
                  sll          a3, a0, tp
                  xori         s3, s2, 80
                  addi         t3, s10, 1494
                  auipc        s3, 775577
                  bgeu         t3, s11, 1401f
                  slt          sp, a4, s9
                  slt          tp, t1, s4
                  add          s0, t3, s9
                  beq          s11, s9, 1393f
1393:             srli         ra, a4, 10
                  srl          tp, a0, t3
                  ori          s6, zero, 1966
                  xori         s0, t3, 1037
                  slti         s8, a2, -1416
                  ori          a2, s8, -1377
                  sra          s10, sp, s5
                  and          s10, a1, s5
1401:             slti         t0, t0, 1779
                  ori          t5, s4, 993
                  or           a1, s10, a7
                  slt          a3, a0, s10
                  srli         s9, s7, 11
                  blt          s6, s5, 1414f
                  bne          s3, a2, 1408f
1408:             slli         a3, a3, 31
                  bne          t2, s7, 1428f
                  sub          t5, tp, t1
                  lui          a4, 184422
                  ori          s9, t6, -1742
                  sub          s0, a0, t1
1414:             bge          s6, a2, 1424f
                  nop
                  bgeu         t5, a4, 1428f
                  xor          a1, a7, zero
                  srai         a3, s9, 10
                  sltu         ra, s0, tp
                  auipc        a0, 443602
                  sltu         tp, s6, a1
                  slti         s0, t5, -1006
                  ori          a5, s5, -950
1424:             nop
                  auipc        a3, 572499
                  xori         s8, t6, 1620
                  srli         a6, zero, 21
1428:             and          a0, a5, sp
                  srli         t1, t6, 19
                  sltu         s6, s9, s11
                  xor          t4, t5, s1
                  add          ra, t0, s0
                  auipc        a2, 68380
                  bltu         a4, a7, 1438f
                  slti         a2, a4, -967
                  la           s7, region_0+162 #start riscv_load_store_rand_instr_stream_1
                  lbu          s3, -6(s7)
                  srai         s3, s1, 29
                  xori         s1, s4, -331
                  sub          tp, sp, a6
                  lw           a2, -2(s7)
                  lb           s3, 11(s7)
                  slti         sp, a3, 725
                  lbu          a2, 13(s7)
                  sltu         sp, s8, a0
                  lhu          s9, 8(s7)
                  lbu          s5, 14(s7)
                  nop
                  sw           a5, -10(s7)
                  lw           t1, 10(s7)
                  lh           a2, -10(s7)
                  slli         s9, a7, 23
                  lbu          a1, 3(s7)
                  and          s6, s7, t2
                  sb           t0, -9(s7)
                  addi         zero, zero, -1858
                  sra          t6, a3, t0
                  sub          t5, t0, s11
                  addi         t3, t1, 1159
                  lw           a1, 10(s7)
                  slt          a3, s8, t3
                  lbu          t0, -14(s7)
                  sltiu        ra, a2, 1451
                  sb           t2, 7(s7)
                  lb           s1, 3(s7)
                  lbu          s9, 15(s7)
                  ori          t6, t3, -499
                  lbu          a5, 15(s7)
                  sw           s5, 6(s7) #end riscv_load_store_rand_instr_stream_1
                  beq          s7, t1, 1437f
1437:             or           s1, t3, zero
1438:             nop
                  beq          a5, s2, 1459f
                  slt          a6, a5, t3
                  nop
                  bne          s11, zero, 1451f
                  sltu         s1, t2, t6
                  or           t5, a6, s10
                  and          a1, ra, a1
                  slli         a6, a5, 14
                  slt          s9, a5, tp
                  bne          s5, s8, 1467f
                  andi         s3, t1, 30
                  srl          ra, a7, s1
1451:             bge          t1, sp, 1457f
                  slli         zero, t3, 16
                  auipc        t1, 709207
                  srai         s1, s10, 0
                  xor          ra, t1, t0
                  add          a2, s0, s4
1457:             bne          s8, s5, 1468f
                  bge          s1, t0, 1474f
1459:             sub          a5, t1, a0
                  bgeu         t4, s8, 1473f
                  sra          t5, t1, s9
                  blt          s3, s8, 1474f
                  ori          a6, s8, -834
                  xor          zero, t5, s8
                  xori         t3, sp, 381
                  blt          s9, sp, 1476f
1467:             sltiu        t5, a1, -1195
1468:             bne          s7, t4, 1477f
                  bge          s9, t0, 1487f
                  add          ra, s9, tp
                  bge          s5, t5, 1476f
                  sll          ra, a4, gp
1473:             sll          s11, gp, s9
1474:             bltu         s3, a7, 1492f
                  blt          tp, a5, 1488f
1476:             srai         t1, s5, 14
1477:             andi         t2, t6, 1754
                  auipc        t0, 1026057
                  auipc        a2, 330099
                  lui          a4, 404222
                  slti         s1, a2, 1916
                  srl          s8, a6, t5
                  blt          a3, a4, 1498f
                  add          a0, a7, s10
                  and          zero, tp, a2
                  and          sp, s10, s9
1487:             ori          s1, s0, -1612
1488:             sub          s10, a2, s3
                  bge          s3, s6, 1501f
                  bne          a6, t3, 1504f
                  addi         s6, a1, -450
1492:             lui          t0, 928508
                  andi         s3, s3, 341
                  sltiu        sp, a2, -249
                  bge          t1, a4, 1497f
                  bltu         t3, t5, 1508f
1497:             auipc        t4, 396298
1498:             slt          a3, s0, s6
                  nop
                  xor          s5, a2, t1
1501:             blt          a6, s2, 1505f
                  sltu         gp, a2, s2
                  lui          s8, 967809
1504:             slti         s5, a7, -1590
1505:             srl          s5, sp, s7
                  srai         s10, sp, 4
                  auipc        t5, 850023
1508:             bgeu         a3, t2, 1526f
                  sra          t6, tp, sp
                  or           s1, s11, t4
                  auipc        s3, 706437
                  slti         s6, a2, 774
                  addi         s8, t6, 1256
                  xor          a0, a4, s5
                  bne          t6, t2, 1532f
                  xor          t1, a1, t5
                  sra          t3, t3, s8
                  slti         t6, s4, -346
                  and          s0, t3, a1
                  slt          t0, s9, s3
                  and          a2, gp, t1
                  bne          a1, t3, 1523f
1523:             addi         s3, a5, 994
                  addi         t2, t6, 1735
                  bge          t2, t5, 1538f
1526:             sltu         t5, s8, s4
                  ori          s6, ra, -791
                  beq          tp, s2, 1536f
                  blt          ra, s10, 1541f
                  sll          sp, s0, a0
                  xori         t0, t3, -432
1532:             xor          a5, t3, a7
                  bne          a0, s10, 1550f
                  bge          s3, s3, 1553f
                  add          s1, a6, tp
1536:             or           zero, s0, a6
                  sll          gp, t4, s4
1538:             beq          ra, t0, 1552f
                  or           gp, gp, s2
                  add          s8, s4, tp
1541:             slli         a5, t5, 12
                  andi         t6, a0, 1724
                  slti         t2, t2, -1021
                  bltu         a3, s4, 1562f
                  sltiu        zero, s1, -1106
                  nop
                  and          tp, a2, a6
                  ori          a3, gp, -830
                  bgeu         t4, s8, 1567f
1550:             blt          s11, s8, 1551f
1551:             slt          s6, tp, a3
1552:             sltiu        s5, s10, -1037
1553:             srl          a0, s2, s9
                  nop
                  bge          s1, t2, 1556f
1556:             nop
                  xori         s11, t5, 956
                  slti         a2, s0, 731
                  or           t4, a4, a0
                  srai         t0, s11, 26
                  sub          gp, a1, t1
1562:             ori          zero, t0, 1417
                  sltiu        s11, a4, -322
                  sll          zero, a0, sp
                  add          a3, t2, s4
                  sll          a0, t0, s6
1567:             sltiu        s7, t4, 91
                  srl          s8, s7, t3
                  slt          gp, t1, a1
                  bgeu         t3, sp, 1581f
                  blt          sp, s9, 1583f
                  xor          t4, a1, ra
                  beq          t2, s5, 1575f
                  beq          tp, s10, 1589f
1575:             bltu         s8, a7, 1594f
                  srl          a1, a3, gp
                  bltu         s4, s5, 1590f
                  bge          s11, t6, 1584f
                  sll          t2, a7, a2
                  nop
1581:             sltiu        a0, a6, 415
                  add          t6, t6, sp
1583:             slti         tp, a5, 102
1584:             ori          s1, s4, -1707
                  nop
                  srli         s3, s5, 17
                  add          s6, a0, s5
                  or           t3, gp, t4
1589:             auipc        t4, 597692
1590:             sll          s1, a5, a4
                  sltu         a6, s2, s4
                  andi         s7, a2, -657
                  sub          s1, t1, a7
1594:             bltu         a7, gp, 1614f
                  and          a3, a1, a2
                  bltu         a2, s6, 1608f
                  xor          s5, a1, s9
                  add          s7, t4, gp
                  add          t2, a2, a2
                  sltu         sp, s0, s3
                  slli         t1, s10, 29
                  nop
                  sltiu        t6, gp, -1804
                  andi         a2, t1, 550
                  nop
                  slt          a0, t5, a0
                  srli         s0, t5, 13
1608:             slti         t4, a7, -520
                  xor          a5, t2, t2
                  sub          a4, a6, t3
                  sra          t0, s4, t6
                  bge          s3, a3, 1613f
1613:             auipc        a0, 332551
1614:             bge          t3, t2, 1618f
                  xori         t1, s3, -543
                  slli         a6, s11, 27
                  sltu         s0, a1, a3
1618:             add          a0, s4, a5
                  slli         s3, t5, 21
                  addi         a1, gp, 81
                  auipc        t2, 518319
                  xori         gp, ra, -766
                  add          a1, s10, s10
                  bgeu         s1, s9, 1633f
                  blt          a2, a7, 1635f
                  or           t1, a5, a3
                  bgeu         t0, a1, 1631f
                  sra          gp, s11, a4
                  lui          s6, 891352
                  slti         s11, a7, 91
1631:             sra          gp, a4, s2
                  sll          s9, t0, a6
1633:             andi         t5, a4, -55
                  sra          s8, t2, a7
1635:             lui          t0, 468495
                  sltiu        t2, s0, 1815
                  slti         t3, t5, 1646
                  srl          a1, t3, a4
                  bne          s2, t4, 1651f
                  bge          s10, a2, 1656f
                  bltu         a0, s1, 1651f
                  xori         t3, s0, 1245
                  sltiu        s1, s5, 731
                  bgeu         t5, s10, 1653f
                  ori          t5, t1, 1819
                  blt          a2, s3, 1651f
                  ori          t6, a5, -291
                  lui          s0, 179443
                  or           t4, s8, s10
                  sra          a6, s1, s0
1651:             auipc        s10, 704657
                  sra          t5, s3, s4
1653:             bgeu         a3, s0, 1671f
                  ori          tp, s7, -547
                  bltu         s8, a6, 1665f
1656:             or           s6, s3, s11
                  bge          a0, t1, 1674f
                  xor          a1, s8, s3
                  addi         t4, a2, 887
                  sra          t0, t6, a1
                  sll          s6, a3, t6
                  bgeu         a2, t6, 1673f
                  nop
                  xor          a4, zero, sp
1665:             addi         a1, t3, 723
                  srl          ra, s6, a3
                  slli         s9, t6, 5
                  xori         t0, tp, -1413
                  or           a6, t3, s2
                  bgeu         s7, zero, 1679f
1671:             bne          s0, t6, 1683f
                  blt          tp, a7, 1677f
1673:             srli         s8, s5, 23
1674:             sltu         tp, t4, s11
                  addi         s3, t2, -863
                  slt          t1, sp, a4
1677:             bgeu         s0, tp, 1693f
                  xori         a3, t5, 1913
1679:             nop
                  lui          ra, 322448
                  slti         a4, s7, 1933
                  bgeu         a6, s5, 1688f
1683:             add          a6, s2, s3
                  slti         s9, gp, -1929
                  auipc        t5, 600412
                  add          t2, s5, a2
                  xori         a2, a5, -283
1688:             bge          a6, s9, 1696f
                  and          a5, a5, s8
                  slti         t5, s9, 702
                  bge          gp, ra, 1695f
                  xori         a5, s0, -1714
1693:             slti         s11, a4, 654
                  sra          sp, a6, t1
1695:             slt          s6, a0, s10
1696:             slt          ra, tp, s2
                  sll          s8, s9, s8
                  sll          s5, s8, t1
                  sltiu        s7, a0, -1061
                  bltu         zero, s9, 1701f
1701:             addi         tp, s4, -1997
                  or           s8, tp, s11
                  auipc        t6, 275983
                  and          tp, s5, s3
                  bltu         tp, t3, 1717f
                  bltu         s5, t1, 1718f
                  sltiu        zero, a0, -667
                  xor          s5, s1, ra
                  bne          s5, s5, 1727f
                  bgeu         a1, s1, 1725f
                  sra          a0, s6, s1
                  slti         t3, a2, -306
                  nop
                  slt          a5, a6, s3
                  sub          gp, a4, a3
                  bge          a0, s4, 1725f
1717:             slli         s0, a5, 23
1718:             and          s6, s11, a3
                  slt          s3, sp, a5
                  nop
                  srli         ra, s4, 20
                  sub          s0, t3, t5
                  bgeu         s3, t5, 1742f
                  sll          ra, tp, sp
1725:             beq          t5, a4, 1743f
                  sll          a1, s9, sp
1727:             andi         tp, gp, -730
                  auipc        s9, 14933
                  slti         ra, s3, 144
                  sub          gp, a1, s1
                  and          gp, s11, t6
                  or           s1, s7, s5
                  or           s5, ra, t1
                  nop
                  addi         sp, ra, -1456
                  ori          t3, tp, -342
                  xori         s1, tp, 1467
                  xori         ra, s11, -257
                  nop
                  auipc        s11, 104977
                  beq          t4, a6, 1754f
1742:             sub          s0, t2, s9
1743:             blt          s3, gp, 1755f
                  sub          a1, a2, s3
                  nop
                  sra          zero, s9, s10
                  slt          a4, t5, a4
                  blt          s3, zero, 1766f
                  slt          a6, t5, t1
                  bgeu         a2, s11, 1760f
                  auipc        s3, 509919
                  bgeu         gp, a3, 1772f
                  srl          s10, s11, s4
1754:             addi         s7, t2, 1483
1755:             sltiu        s11, a7, -1601
                  sra          a4, t3, zero
                  slli         t5, s2, 9
                  sll          s3, a7, s7
                  sltiu        t5, ra, 581
1760:             bge          s4, s10, 1761f
1761:             andi         s1, s8, -1219
                  add          t6, a3, s2
                  bge          a6, tp, 1782f
                  add          s9, s11, t2
                  ori          zero, s1, -234
1766:             xori         a1, s2, 1324
                  sltu         a6, zero, a2
                  bne          gp, t1, 1781f
                  xor          a2, t4, s4
                  sub          a1, s7, t6
                  beq          s0, ra, 1785f
1772:             blt          s3, a5, 1774f
                  bge          s4, t6, 1777f
1774:             sltiu        a5, t4, 959
                  sub          t6, tp, a1
                  or           a3, a4, t0
1777:             sltu         ra, s2, sp
                  srai         s6, t3, 8
                  ori          t5, s0, -1475
                  ori          s8, s11, -1223
1781:             slt          t1, s9, a1
1782:             sltiu        s0, t2, -1744
                  slt          s3, t2, a2
                  and          s8, a0, t3
1785:             srl          a2, tp, s9
                  or           zero, a6, a4
                  xor          s8, s6, t5
                  add          t4, t4, t5
                  lui          a0, 866982
                  and          t2, s2, a0
                  slli         s1, gp, 9
                  beq          a6, s1, 1793f
1793:             srai         t3, t6, 22
                  ori          t5, t0, 256
                  sll          t6, a6, s7
                  sra          s5, t6, s0
                  xor          s1, s0, s8
                  srl          s3, a1, s11
                  sll          a1, s2, s9
                  slt          sp, t6, t3
                  slti         a6, gp, -1993
                  sra          a5, s2, s4
                  xori         s6, s10, -1184
                  blt          s9, a5, 1817f
                  sll          gp, s9, a4
                  sltu         a2, t0, s1
                  srai         t4, s4, 8
                  nop
                  auipc        a0, 615398
                  sltiu        zero, gp, -780
                  slt          s9, s10, s1
                  addi         s0, s1, 320
                  sub          ra, t5, s5
                  nop
                  sub          a4, s5, t1
                  sll          t4, ra, a4
1817:             sltu         ra, a3, t0
                  blt          s2, s11, 1836f
                  and          s8, t4, t2
                  sll          s8, sp, s10
                  sub          t5, ra, t5
                  ori          s1, a4, -943
                  slti         a6, a4, 1206
                  slti         a1, s5, 1650
                  bge          ra, t4, 1833f
                  and          a3, a6, a0
                  srai         a5, tp, 17
                  nop
                  or           t2, s10, a1
                  bgeu         s8, s8, 1843f
                  auipc        s8, 790353
                  blt          a6, t3, 1851f
1833:             bge          tp, s11, 1834f
1834:             xori         s7, s2, 1072
                  sll          a0, sp, sp
1836:             add          t1, a6, t1
                  srai         a0, a5, 22
                  blt          t5, t3, 1853f
                  add          zero, t1, a7
                  auipc        s7, 200899
                  sltu         ra, t1, s7
                  xori         zero, sp, 1962
1843:             nop
                  sub          a4, s10, a7
                  and          gp, s0, s1
                  nop
                  and          t5, s0, t0
                  sub          s6, tp, s4
                  add          s9, t5, a4
                  sub          a4, s0, s8
1851:             auipc        a4, 411493
                  sub          a3, s7, s8
1853:             sltu         a6, s4, gp
                  bltu         s6, a6, 1858f
                  blt          ra, s8, 1867f
                  bne          a1, a6, 1868f
                  add          gp, sp, sp
1858:             nop
                  sra          t4, t0, t2
                  srai         s3, t1, 18
                  lui          a5, 228324
                  bgeu         a2, t4, 1873f
                  andi         t5, a2, -1447
                  sub          t4, s0, a3
                  or           t5, t3, s11
                  srl          t1, t4, s10
1867:             bne          a5, zero, 1876f
1868:             srai         s0, s0, 25
                  auipc        t3, 465979
                  sltiu        a2, a5, -505
                  ori          a5, a6, -1159
                  slti         zero, s0, -49
1873:             srai         a6, a0, 27
                  slti         t6, gp, 912
                  sub          a2, a1, s1
1876:             addi         a1, t0, 337
                  slti         tp, t3, -769
                  sub          a1, t6, s3
                  blt          s6, s3, 1888f
                  beq          s6, a6, 1881f
1881:             blt          a1, t1, 1899f
                  srli         a5, s0, 26
                  bltu         t0, s8, 1901f
                  sra          s9, s8, sp
                  bltu         a6, t0, 1905f
                  beq          s9, ra, 1902f
                  slli         a4, zero, 22
1888:             lui          gp, 153911
                  sltiu        t5, a0, 1822
                  ori          sp, s3, -1463
                  slli         s7, t4, 1
                  andi         a1, s9, 1227
                  slt          t2, t4, t4
                  blt          t2, a7, 1896f
                  slt          s8, t6, t6
1896:             sltiu        s5, s1, 116
                  xor          a5, s7, t0
                  bgeu         a2, s6, 1907f
1899:             andi         a6, t0, -455
                  andi         t1, s1, 1395
1901:             xor          ra, a2, s2
1902:             sltu         t4, a2, s4
                  add          s9, a2, zero
                  xori         a2, t3, -1781
1905:             sub          a1, zero, sp
                  beq          t3, sp, 1907f
1907:             andi         s9, a3, -1712
                  srai         s3, zero, 18
                  lw           tp, 4(s2)
                  addi         s10, t2, 209
                  srai         t2, a2, 5
                  slti         t3, s11, -1153
                  xori         t5, t2, 942
                  slti         sp, s0, 1836
                  addi         s2, s2, 16
                  srai         t0, t0, 8
                  srai         ra, a0, 22
                  sll          zero, s10, s6
2530:             addi x23, x4, 0
2530:             jalr x23, x23, 0
sub_2:            bge          sp, a3, sub_2_stack_p
                  slti         s3, s6, 1751
                  or           gp, t6, t4
                  sra          t5, tp, a0
                  slt          t5, t3, t0
                  sra          ra, a4, a5
                  lui          zero, 800291
                  slti         t2, a4, 36
                  sltu         zero, s3, a3
sub_2_stack_p:    addi         s2, s2, -60
                  sw           tp, 4(s2)
                  ori          ra, s2, 1270
                  la           sp, region_0+674 #start riscv_load_store_rand_instr_stream_1
                  lb           t2, -16(sp)
                  or           zero, a4, t0
                  lb           a2, -193(sp)
                  and          a0, s11, a0
                  slli         s7, tp, 1
                  xor          s7, s3, s7
                  lui          zero, 939704
                  xor          t5, t6, a4
                  sb           a4, -203(sp)
                  srli         ra, t0, 15
                  sb           t0, 165(sp)
                  sltiu        t4, t5, 247
                  xori         a6, t2, 314
                  srl          a5, t5, s1
                  lb           t5, 74(sp)
                  sh           s5, 34(sp)
                  sb           gp, 236(sp)
                  add          s8, gp, s11
                  lb           ra, 17(sp)
                  lui          t4, 969611
                  addi         s6, gp, 318
                  lb           s9, -21(sp)
                  andi         t0, ra, -752
                  sb           t6, -39(sp)
                  or           a0, zero, s0
                  or           a5, s11, s11
                  lbu          s10, 244(sp)
                  sh           s4, -156(sp)
                  sb           a4, 26(sp)
                  lh           s0, -186(sp)
                  nop
                  or           s5, s0, s7
                  slti         tp, a0, -1138
                  sll          a3, s3, a1
                  lb           s3, -55(sp)
                  sltiu        gp, t6, 338
                  srai         s7, tp, 25
                  lb           s10, 101(sp)
                  sb           s6, -231(sp)
                  slt          a5, a6, a2
                  lhu          s6, -22(sp)
                  add          t3, gp, s7
                  sll          a3, t5, s3
                  slti         s5, t1, 451
                  sltiu        s9, s10, 972
                  xori         t3, s8, -761
                  lhu          t3, 20(sp)
                  sb           t3, 25(sp)
                  slli         s5, gp, 11
                  lb           t2, -242(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s8, region_1+800 #start riscv_load_store_rand_instr_stream_0
                  slt          s3, a5, a7
                  lw           s10, 20(s8)
                  sll          a1, a4, sp
                  nop
                  sub          s10, a3, a4
                  lh           a4, -32(s8)
                  lb           a4, -47(s8)
                  or           t0, a0, a1
                  sb           s10, 16(s8)
                  sra          s11, s8, s7
                  auipc        a3, 615675
                  addi         a3, tp, -1208
                  sub          t3, t0, s0
                  lbu          s3, -1(s8)
                  lbu          sp, -9(s8)
                  lbu          t6, 25(s8)
                  lbu          a6, 49(s8)
                  lh           s11, 18(s8)
                  srl          a0, s1, sp
                  sh           t2, -52(s8)
                  addi         s0, t0, 1795
                  lh           a3, 32(s8)
                  sll          a4, a7, s7
                  sh           a7, -14(s8)
                  lb           a3, -29(s8)
                  lbu          a1, -8(s8)
                  sb           zero, -53(s8)
                  ori          a6, s11, 329
                  ori          sp, zero, 1929
                  lbu          t6, 48(s8)
                  ori          zero, s3, -577
                  slli         tp, s5, 9
                  lui          t3, 76580
                  sra          a1, s6, a3
                  sb           t6, -55(s8)
                  slti         s5, t2, -1133
                  xori         s5, s8, -1489
                  lh           t3, -46(s8)
                  lbu          a6, -15(s8)
                  slti         t3, t0, 1144
                  lb           a6, 59(s8)
                  srl          ra, a0, s4
                  srai         a1, zero, 5
                  lbu          a6, 37(s8)
                  and          s5, s10, a7
                  ori          s5, s1, 2043
                  ori          t6, t0, 956
                  sll          s9, t2, s5
                  sh           a5, 32(s8)
                  sra          t6, s6, t3
                  lb           s3, -10(s8)
                  lb           a1, -57(s8)
                  xori         sp, gp, 225
                  lhu          sp, -50(s8) #end riscv_load_store_rand_instr_stream_0
                  srai         a2, t2, 5
                  addi         t0, t5, 1938
                  sltiu        t0, s4, -1792
                  and          s1, t4, a0
                  sra          t0, s8, a7
                  xori         s9, a4, 516
                  or           s0, s8, a6
                  srli         s9, s11, 23
                  or           t6, t0, a1
                  or           zero, s11, a3
                  blt          a3, s10, 20f
                  auipc        a2, 214736
                  srl          a6, t4, t5
                  sub          s11, s6, a6
                  slti         t1, a5, 620
                  and          s9, t1, s8
                  sub          t6, a2, t1
                  addi         a6, s0, 1660
                  auipc        t6, 810525
                  beq          gp, s2, 27f
20:               srli         a2, a6, 29
                  add          t6, s0, s1
                  nop
                  ori          a0, s7, -708
                  or           s10, s4, gp
                  blt          t5, gp, 45f
                  auipc        tp, 109645
27:               auipc        a2, 987672
                  nop
                  xor          s3, a0, gp
                  srli         a4, t2, 19
                  xor          s11, ra, a6
                  andi         s1, ra, 111
                  sra          t4, s0, a4
                  or           a4, s5, s10
                  bge          t5, t6, 53f
                  nop
                  sltu         s10, t4, s6
                  blt          s7, sp, 40f
                  bne          s10, a4, 58f
40:               xori         s10, t2, -330
                  srai         a1, a0, 31
                  blt          t1, t1, 45f
                  srai         ra, s2, 9
                  and          s10, gp, s2
45:               slt          s5, t5, t2
                  srl          a2, a3, t1
                  xor          a0, a3, sp
                  add          a1, s4, t0
                  blt          a2, s3, 63f
                  sra          a2, a4, s11
                  sltiu        ra, ra, -289
                  blt          sp, a4, 58f
53:               sll          gp, s8, t4
                  bltu         s0, sp, 61f
                  slt          a6, s1, sp
                  addi         t0, a4, -45
                  xori         gp, a0, 288
58:               or           t1, s1, a2
                  sltiu        s5, tp, -1607
                  andi         t1, a5, -240
61:               srl          t1, t5, t0
                  slt          s9, s7, s8
63:               sltiu        a0, s10, 1519
                  sub          s6, a2, zero
                  and          t3, a3, s3
                  bgeu         a2, t3, 84f
                  sra          a1, s9, gp
                  bgeu         a2, t3, 83f
                  slti         a6, t2, -356
                  nop
                  lui          s10, 319515
                  slti         t4, s5, -1296
                  xor          a3, s0, a1
                  nop
                  xori         gp, s11, -1859
                  srai         gp, s11, 12
                  slt          zero, sp, t5
                  sra          a4, t1, s3
                  ori          t1, a3, -1783
                  sll          tp, s2, a0
                  and          zero, s0, a5
                  sltiu        s8, s2, -2039
83:               or           s0, t6, ra
84:               beq          t6, ra, 92f
                  xori         s5, zero, 1660
                  auipc        t3, 359648
                  sltu         s3, s4, t4
                  addi         s9, ra, 739
                  bgeu         a7, t2, 109f
                  nop
                  sltu         t1, s10, s5
92:               add          s3, s4, t5
                  addi         a2, s0, 914
                  addi         s6, s0, 1038
                  nop
                  ori          t5, a7, 682
                  srl          s8, tp, sp
                  xor          t2, s1, s4
                  blt          sp, s7, 109f
                  sra          a0, s8, t1
                  or           s10, s8, t3
                  sra          s3, s11, a3
                  bge          t5, a4, 119f
                  or           s1, tp, zero
                  sub          a3, s3, a1
                  sra          s0, a6, ra
                  or           a2, s6, tp
                  bltu         s1, s8, 126f
109:              bltu         t6, s9, 112f
                  bge          a7, t2, 128f
                  addi         s9, sp, -894
112:              ori          s7, t3, -1619
                  slti         a6, s3, 1430
                  sub          s0, s10, t3
                  xor          s5, s1, s2
                  andi         s7, t6, 1215
                  bne          s8, s9, 122f
                  bltu         gp, s7, 128f
119:              slti         ra, a7, 1187
                  andi         t3, tp, -903
                  srl          s6, a0, a6
122:              or           s0, a1, a2
                  ori          s9, a5, 1959
                  addi         a4, t1, -931
                  nop
126:              beq          s11, s6, 144f
                  srli         s10, a7, 9
128:              addi         t2, zero, -1475
                  slti         t3, t5, -144
                  sub          t3, s10, a4
                  sltiu        ra, t0, 50
                  or           a0, s0, s7
                  slli         t2, s6, 3
                  nop
                  or           a6, t4, tp
                  andi         a2, a3, -642
                  slti         zero, s4, 1290
                  sll          t6, s7, gp
                  blt          a6, ra, 149f
                  bgeu         s9, s4, 142f
                  and          t4, t6, t4
142:              srai         a5, s3, 0
                  and          s10, t2, s4
144:              slti         s10, a5, 1976
                  xori         s9, s2, -1345
                  nop
                  ori          ra, a0, 563
                  sra          t4, t2, s0
149:              srl          s11, s11, a5
                  ori          a1, s3, -1967
                  and          s3, t0, s4
                  sltu         a1, a4, sp
                  bne          s9, t6, 159f
                  bne          t6, a1, 167f
                  sll          a4, s1, sp
                  addi         t1, s8, -1308
                  and          s8, a4, a3
                  xori         zero, s7, 1126
159:              bne          s7, s9, 167f
                  srli         t4, gp, 3
                  sll          zero, a5, s10
                  bgeu         s7, zero, 168f
                  srli         t0, ra, 27
                  auipc        t4, 497658
                  sltiu        s5, s2, -301
                  lui          s11, 91818
167:              addi         a5, zero, 1067
168:              or           s8, gp, s6
                  ori          a0, s1, 465
                  xori         a2, s2, -670
                  auipc        zero, 122111
                  xor          a6, a7, gp
                  srli         t0, t1, 14
                  sltiu        a3, s1, 550
                  or           s10, s5, a6
                  beq          s4, a4, 180f
                  sra          s3, s6, t6
                  slli         s10, a2, 7
                  srai         t4, s5, 22
180:              nop
                  sltu         sp, s11, tp
                  bgeu         a2, s7, 188f
                  auipc        ra, 1042841
                  bltu         s7, s4, 204f
                  and          sp, a1, s0
                  srli         a0, gp, 14
                  add          t2, s5, tp
188:              beq          s11, t6, 196f
                  lui          s8, 506533
                  lui          a5, 343754
                  nop
                  xori         a0, t3, -1336
                  blt          a3, s8, 211f
                  bge          s8, s5, 197f
                  slti         s5, t3, -355
196:              xori         ra, a2, 2045
197:              srli         sp, s9, 29
                  sltiu        t5, s0, -469
                  sltu         a2, s3, s5
                  blt          t4, t4, 220f
                  bge          tp, t0, 208f
                  bltu         a4, s5, 215f
                  sll          a4, s9, s4
204:              andi         s6, s10, 156
                  bne          a3, s2, 211f
                  or           a6, a0, t0
                  auipc        s0, 232332
208:              srai         a6, s7, 25
                  bne          t2, sp, 213f
                  ori          s0, t0, 274
                  andi         s0, gp, -2037
                  sub          s7, s4, s8
                  slti         a4, s4, -1518
                  sltiu        a4, s10, 973
sub_2_j9:         jal          tp, sub_6 #jump sub_2 -> sub_6
                  beq          s1, s5, 228f
211:              srai         t4, t2, 28
                  sll          t5, a5, t4
213:              bge          s8, s1, 219f
                  nop
215:              bne          t6, s8, 233f
                  bge          a5, s3, 222f
                  sltiu        s6, gp, 1602
                  sra          a4, t5, a6
219:              bge          sp, s6, 221f
220:              srl          s3, s2, s10
221:              bltu         t2, a7, 226f
222:              sltiu        t0, a7, 392
                  slt          t4, ra, a7
                  addi         t5, tp, 208
                  slli         s0, ra, 9
226:              sra          a5, s7, s11
                  addi         s5, t5, 1415
228:              slti         zero, s11, 340
                  slti         t2, sp, -1211
                  xor          a6, sp, s4
                  xor          t1, zero, a6
                  lui          t2, 932522
233:              or           t3, s6, a3
                  srl          s9, a3, s3
                  sub          a1, a6, s11
                  bgeu         s10, a6, 244f
                  ori          zero, a2, -1791
                  sll          s5, sp, t0
                  sltu         a6, s0, s3
                  xori         t4, t5, 830
                  bgeu         s9, s7, 257f
                  sltu         t1, a0, s9
                  slli         tp, t4, 31
244:              slt          t5, tp, s10
                  nop
                  bltu         t0, s9, 264f
                  slti         zero, a4, 1912
                  slli         t0, s8, 23
                  sll          a2, t2, a2
                  addi         s10, a3, -1916
                  slti         s8, s6, 482
                  xor          a6, tp, s10
                  and          s10, ra, a2
                  ori          t6, s1, -436
                  sltiu        s5, t4, -1688
                  bgeu         a7, a7, 266f
257:              bltu         t2, t4, 267f
                  blt          s11, sp, 273f
                  slt          t2, a7, t5
                  slli         a6, s1, 23
                  bne          sp, t5, 267f
                  srai         sp, a1, 26
                  slt          t1, t0, s11
264:              slt          t6, a3, s0
                  srli         s5, a1, 26
266:              sra          s6, s11, a2
267:              sltiu        t4, a3, -1298
                  sll          tp, a2, s8
                  srai         a1, a4, 30
                  slti         s8, a5, 1270
                  bge          s0, a3, 273f
                  srl          a4, a4, s0
273:              or           a3, s3, gp
                  sll          a4, s3, s9
                  srl          s6, gp, s9
                  beq          a1, a5, 294f
                  xor          tp, s8, ra
                  bge          s7, s9, 297f
                  sll          t0, a2, a2
                  nop
                  slti         tp, s8, -567
                  sltu         s0, s5, s8
                  bne          a2, t5, 293f
                  lui          s0, 389146
                  bne          t3, a3, 295f
                  add          gp, t1, s11
                  sltiu        a6, s10, 1226
                  ori          t2, gp, 2
                  nop
                  srli         a1, t3, 16
                  andi         s9, gp, 715
                  blt          s4, a3, 306f
293:              sltu         a4, a7, a7
294:              sltiu        t3, s10, 2016
295:              srli         s5, s10, 25
                  sll          sp, tp, a5
297:              blt          s7, a1, 300f
                  addi         ra, s10, -181
                  sltiu        t3, t0, 1938
300:              sltu         s7, a3, t1
                  add          zero, gp, t1
                  auipc        t1, 228570
                  sub          gp, s1, s9
                  ori          t3, a6, 2011
                  sltiu        s6, s2, -1994
306:              sltiu        a6, a7, -1351
                  blt          s6, a3, 315f
                  srai         a3, s7, 12
                  sltiu        a3, s10, -1547
                  beq          sp, s4, 320f
                  xori         s5, sp, 281
                  sltu         a0, s3, t5
                  auipc        ra, 974149
                  bne          a2, s11, 316f
315:              xori         s1, t5, -1477
316:              add          a6, t2, t1
                  xor          s0, a0, t1
                  slt          t4, zero, s2
                  and          s8, zero, ra
320:              andi         tp, t6, 233
                  bltu         zero, t6, 326f
                  ori          t6, a4, -595
                  auipc        zero, 455110
                  sub          a4, s10, s11
                  addi         t4, gp, 294
326:              sll          a6, s2, t3
                  or           a0, t0, s9
                  auipc        s7, 379961
                  bge          s10, zero, 339f
                  ori          sp, t6, 1279
                  bne          t6, s6, 350f
                  srli         s9, s0, 15
                  bne          a1, s1, 351f
                  slt          s3, t1, s5
                  slt          s9, s4, t6
                  xori         s6, gp, 286
                  addi         a2, t1, -665
                  blt          a6, a7, 344f
339:              and          t2, a4, s6
                  and          t0, t5, ra
                  srl          t4, ra, t0
                  bne          s3, t5, 352f
                  sll          s10, s5, t6
344:              srai         a4, s6, 18
                  or           t6, t4, gp
                  slli         t3, t6, 11
                  xori         s3, t3, -1063
                  beq          s10, s3, 357f
                  nop
350:              srl          s9, sp, t6
351:              slli         a3, a7, 1
352:              auipc        s6, 396091
                  blt          s8, zero, 357f
                  andi         a3, s10, -1815
                  srl          s5, a4, s0
                  slt          ra, t3, s8
357:              addi         s10, t5, -1223
                  xor          sp, ra, ra
                  slti         t3, s0, -960
                  lw           tp, 4(s2)
                  lui          t4, 117221
                  ori          t1, t0, -1552
                  addi         s2, s2, 60
                  slt          a2, t2, a0
489:              addi x19, x4, 0
489:              jalr x19, x19, 0
sub_3:            addi         s2, s2, -64
                  sra          s7, s5, t1
                  andi         gp, a7, 314
                  sw           tp, 4(s2)
                  auipc        sp, 872415
                  srai         t3, s8, 17
                  slt          a2, t0, t6
                  sll          s8, a0, t3
                  bge          s2, a5, 7f
                  and          s1, s10, gp
                  add          a4, s9, a2
                  xori         a2, a6, 178
                  nop
                  add          ra, tp, a5
                  sra          t2, s0, s5
7:                blt          a6, ra, 22f
                  xor          s9, s4, s10
                  blt          t2, s0, 16f
                  sltu         tp, t0, a2
                  add          s11, gp, tp
                  auipc        s0, 187760
                  and          a5, t6, s4
                  lui          s9, 1007410
                  addi         s0, a7, -1017
16:               bge          s1, t4, 27f
                  sll          a3, a3, tp
                  auipc        s1, 1036158
                  bltu         t0, a4, 28f
                  slli         t6, a6, 28
                  auipc        s5, 409452
22:               and          t0, t5, a7
                  add          sp, tp, t1
                  sltu         s9, a5, s4
                  lui          t0, 38607
                  bgeu         a6, zero, 43f
27:               xori         t0, a0, 856
28:               add          gp, t4, sp
                  nop
                  bge          a6, a6, 38f
                  srl          tp, s4, t0
                  beq          gp, t6, 43f
                  srai         a6, a3, 7
                  srai         s9, t2, 10
                  sub          t3, s0, s3
                  addi         s0, a5, -808
                  xori         ra, t2, 932
38:               sltiu        gp, t1, 1195
                  bne          t3, s8, 43f
                  srli         s7, a7, 11
                  blt          t0, ra, 43f
                  srl          gp, t1, s2
43:               xori         a4, a5, -277
                  nop
                  lui          t6, 886599
                  xori         a2, sp, 285
                  lw           tp, 4(s2)
                  sll          t0, s6, s11
                  addi         s2, s2, 64
                  xor          s0, s5, t6
                  sll          t2, a6, t2
                  slt          t1, t4, s5
                  slt          t4, t5, tp
62:               addi x26, x4, 0
62:               jalr x26, x26, 0
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
.align           2
mtvec_handler:    
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x17, x18, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x31, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x31, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x31, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x31, x5, ecall_handler
                  li x5, 0x1
                  beq x31, x5, instr_fault_handler
                  li x5, 0x5
                  beq x31, x5, load_fault_handler
                  li x5, 0x7
                  beq x31, x5, store_fault_handler
                  li x5, 0xc
                  beq x31, x5, pt_fault_handler
                  li x5, 0xd
                  beq x31, x5, pt_fault_handler
                  li x5, 0xf
                  beq x31, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
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
                  add x18, x17, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x17, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x17, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x18, x17, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x18, x17, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x18, x17, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
