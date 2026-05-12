.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0xdced4f8b
                  li x1, 0x80000000
                  li x2, 0xfbb21552
                  li x3, 0xfc9de813
                  li x4, 0x80000000
                  li x5, 0x374bd378
                  li x6, 0xfae4830f
                  li x7, 0x3e1de441
                  li x8, 0x0
                  li x9, 0x6
                  li x10, 0xd7cf0ba9
                  li x11, 0x80000000
                  li x12, 0x6
                  li x13, 0xf41a0afa
                  li x14, 0xf76c5d5b
                  li x15, 0xc8cd2875
                  li x17, 0xfd6c85d8
                  li x18, 0x0
                  li x19, 0xa
                  li x20, 0x0
                  li x21, 0x4
                  li x22, 0xf5825fb6
                  li x24, 0x1
                  li x25, 0x2
                  li x26, 0x80000000
                  li x27, 0xf59310b7
                  li x28, 0xdd8c0bdf
                  li x29, 0x6
                  li x30, 0x0
                  li x31, 0x0
                  la x23, user_stack_end
main:             xori         sp, t6, 1732
                  blt          gp, s1, 21f
                  ori          a2, tp, 1292
                  sll          a0, t5, s4
                  slli         s11, ra, 16
                  sub          s0, s11, t5
                  lui          s5, 936660
                  sltiu        s3, s6, -1805
                  sll          s6, s4, t4
                  or           a2, s10, t2
                  sra          s11, t2, a5
                  or           a2, tp, t5
                  la           s10, region_0+1027 #start riscv_load_store_rand_instr_stream_0
                  sw           t1, 141(s10)
                  lh           t1, -75(s10)
                  ori          s2, sp, -1269
                  addi         gp, s5, -1782
                  sltiu        a7, s4, -672
                  sra          a4, a4, t4
                  lh           s4, 81(s10)
                  sb           s1, -156(s10)
                  lbu          a2, -24(s10)
                  ori          t6, t2, 1777
                  sh           t4, 71(s10)
                  sll          s6, a7, sp
                  nop
                  sra          t6, ra, s5
                  sb           s7, 38(s10)
                  lb           a2, -6(s10)
                  sra          t6, s1, gp
                  lb           a2, 78(s10)
                  slli         t4, s10, 1
                  sb           s8, 100(s10)
                  srai         s1, t5, 27
                  add          sp, a0, t1
                  nop
                  xori         s3, t0, 1760
                  xor          a5, s5, sp
                  slt          s8, ra, t0
                  lbu          s1, -187(s10)
                  lbu          a4, -190(s10)
                  lb           a5, -40(s10)
                  sb           ra, 26(s10)
                  srai         s3, s5, 22
                  xor          a0, s5, s5
                  sub          sp, s0, s9
                  lb           s5, 120(s10)
                  sltiu        zero, a5, 260
                  nop
                  add          a2, a2, a1
                  xori         a1, gp, 1285
                  andi         t2, t4, -909
                  slli         s0, s10, 7
                  lbu          a2, -145(s10)
                  lb           t6, -137(s10)
                  andi         a4, a3, -1459
                  lhu          a0, 179(s10)
                  lhu          s4, 157(s10)
                  lb           t4, 54(s10)
                  sra          a7, t6, s10
                  sll          a2, s6, t4
                  lw           s8, 149(s10)
                  sw           s6, -27(s10)
                  xori         a5, t0, -1855
                  xor          t1, s5, a3
                  lbu          a1, 66(s10) #end riscv_load_store_rand_instr_stream_0
                  sltiu        t4, a7, -781
                  srl          a4, s4, a4
                  bltu         sp, t0, 20f
                  slli         t2, s1, 11
                  ori          t5, t4, 1106
                  lui          a5, 854124
                  or           a7, s0, s5
                  xori         a2, s2, 1779
20:               srl          s8, s1, s7
21:               sll          t3, s0, s8
                  nop
                  blt          s2, a5, 28f
                  sra          t2, a5, t0
                  bge          s4, gp, 31f
                  addi         s11, s0, -707
                  and          a5, s10, a0
28:               xor          s5, a5, t4
                  nop
                  bltu         a3, sp, 39f
31:               xori         t4, t2, -1793
                  bge          t5, s5, 48f
                  slt          a5, gp, a0
                  nop
                  bgeu         zero, a5, 47f
                  srai         a4, s4, 21
                  slli         t2, s4, 2
                  sll          t1, t6, zero
39:               srli         s6, s9, 16
                  sll          t6, a4, s3
                  srai         a4, a1, 22
                  addi         t6, gp, 588
                  ori          tp, zero, 1551
                  sub          a4, t4, t0
                  blt          s6, t5, 53f
                  bne          t0, a4, 51f
47:               sub          s0, s7, s8
48:               andi         s9, t1, 1324
                  lui          a1, 757833
                  sra          a1, a4, t3
51:               add          t4, s3, a6
                  srl          s9, tp, t1
53:               xori         a0, s3, 643
                  add          s6, a2, tp
                  srl          t1, t4, gp
                  and          t0, a7, a6
                  and          a7, sp, s5
                  slt          t6, s1, t3
                  bne          t4, sp, 67f
                  sub          a0, ra, s2
                  lui          a4, 854096
                  srli         t5, zero, 8
                  srli         t4, t0, 30
                  srai         zero, s4, 30
                  beq          t5, s9, 75f
                  andi         s11, a1, -486
67:               slli         s5, t1, 29
                  sltiu        a4, a7, 637
                  sra          t2, s9, a7
                  auipc        a7, 775603
                  sub          s2, s2, s9
                  beq          s10, s8, 86f
                  add          s4, t6, t1
                  bltu         s0, s7, 80f
75:               sra          t0, a6, s0
                  or           s10, t4, a4
                  sub          s4, s9, a1
                  nop
                  auipc        t0, 651830
80:               srai         gp, s9, 29
                  addi         s4, s7, -433
                  or           t2, t3, s5
                  andi         t5, a3, -883
                  ori          a7, a6, 1508
                  nop
86:               slli         s3, gp, 12
                  addi         a2, s11, 255
                  slt          a7, s1, a5
                  and          a3, tp, t3
                  slt          t5, zero, s4
                  sltu         s10, a1, a0
                  slti         t2, a7, 1998
                  sltu         s0, s5, tp
                  and          s10, t3, s0
                  la           a2, sub_1
                  sub          a4, s8, s11
                  srli         tp, t0, 19
                  slt          t4, t0, t1
                  add          s9, a0, s1
                  andi         s11, t0, -698
                  addi         a2, a2, -781
                  bge          gp, a0, main_j1 #branch to jump instr
                  addi         a7, t0, 1578
                  xor          s11, s0, a7
                  xori         s5, s3, -449
                  or           s6, t0, s3
                  xori         t4, s9, 1672
main_j1:          jalr         t1, a2, 782 #jump main -> sub_1
                  sra          t4, a0, s6
                  srl          s0, a3, a3
                  sra          gp, s6, sp
                  srai         t6, t0, 23
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            auipc        t3, 203208
                  sltiu        t2, a4, 482
                  sra          t5, s1, s4
                  blt          t3, a2, sub_3_stack_p
                  sub          t6, t6, s0
                  xori         a2, t5, 1789
sub_3_stack_p:    addi         s7, s7, -64
                  sll          a3, a0, s1
                  sw           t1, 4(s7)
                  or           s2, a2, s1
                  xor          a0, s9, t6
                  sltiu        a7, s4, -1941
                  or           t0, t5, s10
                  nop
                  bltu         zero, t0, sub_3_j8 #branch to jump instr
                  nop
                  srli         a1, t5, 18
                  or           t2, a1, a5
                  nop
sub_3_j8:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  srl          s8, a0, s9
                  sltu         s5, s7, t3
                  xori         t2, t0, -973
                  la           s10, sub_4
                  sltiu        s0, s4, -93
                  addi         s10, s10, -24
                  slt          a7, s3, a6
sub_3_j10:        jalr         t1, s10, 24 #jump sub_3 -> sub_4
                  la           sp, region_1+748 #start riscv_load_store_rand_instr_stream_7
                  addi         t4, s1, 1732
                  andi         s9, s1, -1977
                  sub          tp, a3, s11
                  lui          s4, 187308
                  slt          s10, s6, zero
                  sb           a2, -71(sp)
                  lb           a4, -235(sp)
                  sb           s0, 41(sp)
                  lhu          a0, 186(sp)
                  add          a3, t6, s3
                  slt          s2, a2, s8
                  sb           a7, 73(sp)
                  lb           t5, 52(sp)
                  lbu          tp, -63(sp)
                  srl          tp, ra, tp
                  auipc        t1, 235173
                  lh           t0, -148(sp)
                  srai         s9, t2, 19
                  sub          t5, t6, a5
                  lb           a0, 151(sp)
                  xor          a5, gp, s5
                  or           s9, s3, s4
                  sb           t6, 177(sp)
                  ori          s5, ra, 614
                  sb           t5, 255(sp)
                  lbu          t1, 227(sp)
                  slti         s6, t2, -1187
                  xor          a1, sp, t2
                  add          t1, s9, t2
                  lb           s11, -131(sp)
                  srli         a2, t3, 24
                  xori         t0, sp, -1753
                  nop
                  sltiu        a3, gp, 1044
                  and          a5, s7, s0
                  sltiu        s0, s9, 237
                  or           a4, a3, s7
                  and          t2, s0, a5
                  sb           ra, -59(sp)
                  lui          s11, 348302
                  slti         t2, s8, -291
                  sh           s6, 192(sp)
                  auipc        a5, 635231
                  srl          a2, s0, t4
                  sub          gp, a3, a7
                  lb           a5, 184(sp)
                  sb           t5, -234(sp) #end riscv_load_store_rand_instr_stream_7
                  la           a4, region_0+1087 #start riscv_load_store_rand_instr_stream_0
                  lbu          s11, -50(a4)
                  lh           sp, 79(a4)
                  srli         a5, t3, 18
                  sh           s1, -233(a4)
                  lh           a3, 153(a4)
                  ori          s10, tp, 1503
                  sb           s10, 72(a4)
                  srli         tp, zero, 31
                  lb           a2, -86(a4)
                  lb           s9, -10(a4)
                  sb           a6, 164(a4)
                  lb           a1, 156(a4)
                  sll          t0, s6, s9
                  lbu          s9, -105(a4)
                  lb           t3, 218(a4)
                  lb           s10, 56(a4)
                  lb           s9, -74(a4)
                  lbu          s9, 76(a4)
                  sra          s3, t1, ra
                  lbu          s6, -96(a4)
                  srai         s9, a2, 12
                  sb           a2, 181(a4)
                  slt          sp, s11, a1
                  sb           t3, 81(a4)
                  lb           t3, -164(a4)
                  lb           s0, 188(a4)
                  lui          s1, 400523
                  sra          t5, ra, s5
                  sra          t2, s11, a6
                  sb           s2, 103(a4) #end riscv_load_store_rand_instr_stream_0
                  la           a1, region_0+1863 #start riscv_load_store_rand_instr_stream_1
                  lbu          a4, 4(a1)
                  lb           t6, -8(a1)
                  lb           a7, -10(a1)
                  slti         a5, s9, -1529
                  sb           s2, 10(a1)
                  lb           a2, -6(a1)
                  sb           a6, 11(a1)
                  lb           s1, -14(a1)
                  lb           t4, -1(a1)
                  lh           t2, 3(a1)
                  slt          s2, a5, a1
                  add          gp, s10, a5
                  sb           s3, -2(a1)
                  sw           a6, -15(a1)
                  sh           t5, 7(a1)
                  sh           tp, -3(a1)
                  lb           s6, -13(a1)
                  sltiu        a5, s5, -571
                  xor          a2, s4, t4
                  lbu          s11, 3(a1)
                  xori         s4, s10, 1433
                  sw           s6, 13(a1)
                  slt          a2, a6, a0
                  sltu         s5, a7, sp
                  sltu         a3, s11, a7
                  slt          a7, s10, gp
                  ori          s4, s9, -97
                  lb           gp, 6(a1)
                  andi         s5, s9, -760
                  sb           s7, -5(a1)
                  ori          a5, s3, -1640
                  andi         tp, a2, 19
                  slli         s3, a6, 29
                  sh           a3, 11(a1)
                  sb           a2, -2(a1)
                  andi         s9, t6, -486
                  sb           t4, -8(a1)
                  xori         a5, s3, -1540
                  sw           s8, -11(a1)
                  auipc        a3, 104447
                  addi         t2, s3, 1285
                  or           s5, gp, s8
                  sb           gp, 6(a1)
                  lb           t6, -14(a1) #end riscv_load_store_rand_instr_stream_1
                  la           tp, region_0+118 #start riscv_load_store_rand_instr_stream_5
                  auipc        s1, 552986
                  sb           t2, 634(tp)
                  lui          a2, 849722
                  sh           t2, 682(tp)
                  lbu          s4, 737(tp)
                  lbu          s10, 7(tp)
                  lb           a2, 635(tp)
                  sll          s9, t0, s4
                  lw           a7, 14(tp)
                  slli         s11, s10, 29
                  add          gp, s1, t5
                  lbu          s0, 1717(tp)
                  slti         zero, tp, -442
                  andi         t4, s2, 17
                  sb           s11, 1289(tp)
                  lb           t5, -49(tp)
                  sb           s3, 1707(tp)
                  sb           s0, 1719(tp)
                  lui          s1, 930559
                  sh           t1, 1054(tp)
                  sb           s3, 1235(tp)
                  lb           t2, 564(tp)
                  lbu          t1, 1681(tp)
                  addi         s5, tp, 1455
                  srl          s5, gp, s4
                  and          s11, s2, gp
                  sb           t5, 1273(tp)
                  lbu          a4, 168(tp)
                  ori          a5, t6, 205
                  lbu          s10, 519(tp)
                  lb           t4, 1157(tp)
                  sltu         zero, s1, s0
                  slli         zero, t4, 23
                  srl          s4, s4, s11
                  and          t3, a4, sp
                  srai         a1, gp, 9
                  ori          a0, t6, 987
                  lb           a5, 699(tp)
                  lb           a5, 968(tp)
                  andi         a7, gp, -1397
                  sb           s9, 927(tp)
                  sw           s1, 134(tp) #end riscv_load_store_rand_instr_stream_5
                  la           t5, region_1+1940 #start riscv_load_store_rand_instr_stream_2
                  slt          s10, a7, t1
                  lh           s1, 0(t5)
                  add          s6, t5, s4
                  ori          gp, a1, 189
                  sw           sp, 16(t5)
                  lb           s6, 7(t5)
                  sltu         gp, s0, s10
                  lh           a7, -14(t5)
                  lh           s1, -8(t5)
                  lui          t0, 603809
                  auipc        a3, 343985
                  or           s5, s2, a4
                  lb           s11, -3(t5)
                  sb           s3, 13(t5)
                  nop
                  lw           tp, -12(t5)
                  lui          s4, 138515
                  sh           a1, 14(t5)
                  addi         a7, s7, -1266
                  lb           t2, -4(t5)
                  and          s6, s8, a7
                  lbu          a3, -9(t5)
                  lb           a3, 13(t5)
                  lb           s10, -11(t5)
                  lb           s6, 11(t5)
                  srl          s2, t2, a3
                  lbu          s1, 10(t5)
                  lh           t4, -4(t5) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_1+495 #start riscv_load_store_rand_instr_stream_4
                  lb           s5, -80(t3)
                  srl          t1, a2, sp
                  or           s9, sp, a5
                  slti         s11, s9, 1781
                  lbu          t4, -186(t3)
                  sltu         s4, s7, a3
                  lui          s6, 86551
                  sub          a4, a7, s8
                  sltiu        t5, t1, -435
                  xori         a7, s1, 119
                  sltu         s4, s3, a6
                  lh           s11, 227(t3)
                  nop
                  sub          t0, s10, a5
                  sltu         s6, t2, s2
                  sltiu        t5, t1, -141
                  nop
                  sltu         a5, a2, s6
                  add          a5, sp, s5
                  srai         a4, a7, 10
                  lbu          gp, 247(t3)
                  slli         a5, t1, 16
                  and          s9, t3, a6
                  sh           s1, 241(t3)
                  add          zero, s8, s10
                  add          a0, s5, s5
                  lb           a5, 131(t3)
                  andi         a1, s9, 1100
                  andi         s3, s2, -499
                  sltiu        t6, gp, 1255
                  lb           t2, -70(t3)
                  lbu          zero, -29(t3)
                  auipc        t6, 163132
                  and          s8, a3, s3
                  sb           zero, 192(t3)
                  srli         t2, s4, 28
                  lui          s4, 410092
                  xori         s6, s3, -694
                  and          a7, s5, s2
                  lb           t6, 160(t3) #end riscv_load_store_rand_instr_stream_4
                  xor          tp, t5, a4
                  or           t3, s8, s1
                  slt          s11, t2, s1
                  add          s9, t6, a7
                  xori         s5, a5, -581
                  and          a0, s2, a2
                  srli         s8, t4, 24
                  add          a2, a3, a5
                  sltiu        a2, s4, -843
                  sltiu        t5, a5, 1767
                  slti         s3, s1, -88
                  xor          t1, gp, s9
                  and          gp, a4, s9
                  lui          s2, 758507
                  sra          t4, s7, a7
                  add          gp, zero, t2
                  xor          a5, zero, t1
                  sll          a0, s2, s0
                  sll          a3, s8, zero
                  and          a1, a4, s5
                  srl          a7, s3, a3
                  ori          s5, t4, 1083
                  srli         t3, s7, 12
                  bltu         s6, t1, 37f
                  bge          a3, t5, 42f
                  sltu         a4, s2, t1
                  addi         sp, a6, 894
                  la           sp, region_0+612 #start riscv_load_store_rand_instr_stream_6
                  lh           t5, -6(sp)
                  slti         s9, a1, -1222
                  sltu         s1, a4, a6
                  sb           gp, 8(sp)
                  sw           sp, 8(sp)
                  sh           t5, 2(sp)
                  sll          s3, a6, s6
                  auipc        t6, 669966
                  lb           s9, 12(sp)
                  sb           t4, -6(sp)
                  sb           s4, -10(sp)
                  lbu          a4, -6(sp)
                  sb           t5, -2(sp)
                  lbu          a4, -13(sp)
                  andi         t5, s7, 1638
                  lb           s1, 3(sp)
                  lh           s9, -12(sp)
                  lhu          tp, 0(sp)
                  lbu          s10, -13(sp)
                  lbu          gp, -9(sp)
                  srl          tp, tp, s5
                  sb           s11, 9(sp)
                  lbu          s3, 8(sp)
                  lh           a3, -4(sp)
                  and          t2, a3, t6
                  sb           s6, -16(sp)
                  lbu          t6, -1(sp)
                  sb           t4, -13(sp)
                  lbu          gp, 13(sp)
                  sll          gp, a6, t3
                  sb           a2, 7(sp)
                  srl          zero, a0, t2
                  sb           a7, 11(sp)
                  auipc        a7, 818656
                  slti         gp, s8, 1736
                  lb           s8, 11(sp)
                  lui          s1, 995153
                  sltu         s4, gp, t3
                  addi         t6, s1, 416
                  lbu          a0, -15(sp)
                  lbu          t5, 11(sp)
                  sb           s8, -15(sp)
                  lbu          s3, -13(sp) #end riscv_load_store_rand_instr_stream_6
                  sltiu        s1, s6, -1008
                  addi         t3, a5, -158
                  bne          s6, s6, 46f
                  blt          t4, a7, 39f
                  or           s8, t3, t1
                  bne          s7, t3, 49f
                  xori         s1, t4, -1552
                  xori         t0, a5, 1702
                  sra          tp, gp, t6
                  nop
37:               xori         zero, s2, 22
                  sltu         gp, a2, a3
39:               bge          a4, t0, 59f
                  or           a5, s7, s3
                  srl          t6, a7, ra
42:               xor          t4, s3, s5
                  bne          t4, s3, 50f
                  auipc        a4, 974172
                  sll          t6, ra, t6
46:               slt          s11, s3, t5
                  sltu         a4, s10, s8
                  beq          t1, s0, 50f
49:               slt          a0, t1, s2
50:               beq          s4, sp, 52f
                  slli         gp, t5, 21
52:               srl          s1, s2, a5
                  sltiu        t2, a5, -277
                  auipc        sp, 707579
                  and          tp, s3, a1
                  ori          s3, s0, -52
                  xor          s4, t2, s0
                  srl          t6, s9, gp
59:               srli         a3, a2, 8
                  slli         a5, sp, 11
                  sra          s4, s8, a5
                  slti         a0, gp, 1157
                  slli         t5, a3, 12
                  sltu         s9, s10, s4
                  bgeu         s0, ra, 74f
                  sltiu        s11, a5, -440
                  add          s3, t3, zero
                  sltiu        tp, a1, -74
                  sra          a1, gp, t6
                  sra          a4, a1, t2
                  and          a3, a4, s1
                  bne          s4, t5, 77f
                  srai         gp, t0, 8
74:               xor          s3, a3, s6
                  ori          s10, s4, 1809
                  srai         s5, s10, 13
77:               xor          s3, a3, t2
                  bge          ra, a1, 92f
                  ori          s5, tp, 1170
                  nop
                  nop
                  auipc        a4, 301581
                  bgeu         s6, gp, 84f
84:               srl          t4, t1, s5
                  srl          s8, a6, t0
                  blt          s0, t3, 89f
                  sll          tp, s1, s8
                  sltu         tp, s5, sp
89:               sltiu        zero, t4, -922
                  xor          s6, s4, s10
                  xor          a2, s10, s8
92:               slt          s8, a2, s9
                  ori          a1, s0, 1150
                  lui          s10, 941579
                  beq          a1, a5, 105f
                  bgeu         t4, s5, 105f
                  or           s10, t1, t1
                  nop
                  and          a4, t2, t0
                  slti         s0, a5, -291
                  or           s8, t5, t5
                  blt          s0, s1, 104f
                  xor          a7, s6, s0
104:              srai         sp, s4, 12
105:              srai         s9, t1, 26
                  xori         s6, s4, 300
                  ori          t2, s2, 839
                  bge          t5, tp, 123f
                  srli         s8, s6, 1
                  lui          a1, 631328
                  xori         a2, a6, 1914
                  blt          s7, a1, 129f
                  or           s8, s3, t4
                  sub          s11, s5, a6
                  add          t4, t0, t2
                  add          s4, s4, t0
                  and          s4, a7, a0
                  add          a2, a5, a1
                  beq          sp, a7, 122f
                  sltiu        zero, a4, -342
                  ori          t4, zero, -2036
122:              sltiu        s10, a0, 1550
123:              sltiu        a0, s1, 328
                  xori         s1, t6, 1329
                  and          t6, a7, a5
                  sll          a0, s0, s4
                  auipc        s3, 155544
                  srl          s4, a5, t4
129:              srli         s9, s4, 16
                  slti         s1, s8, -169
                  nop
                  and          a1, s10, s9
                  srl          zero, t2, gp
                  lui          t3, 874734
                  srl          zero, s2, a3
                  sltiu        s8, s7, -1117
                  slt          s9, a6, a4
                  beq          s10, a3, 149f
                  slli         a2, t1, 3
                  ori          t5, s3, 737
                  bge          t2, gp, 159f
                  lui          a0, 565345
                  xori         t0, s2, -1768
                  andi         t6, s8, -1354
                  sll          s4, a3, a3
                  add          gp, a5, s9
                  add          s10, a0, a1
                  bgeu         a3, a4, 158f
149:              nop
                  bltu         t4, s1, 169f
                  slt          s1, a2, a0
                  sll          a5, a7, a4
                  sub          sp, s10, t0
                  and          t0, a7, zero
                  and          t6, s11, t0
                  or           s5, s1, t0
                  add          s8, t2, t4
158:              slti         t6, ra, -1690
159:              srl          t5, s5, t0
                  slt          s10, ra, s2
                  blt          s11, a3, 171f
                  auipc        a4, 453614
                  lui          s8, 377779
                  ori          s8, s10, -1562
                  xori         t4, s10, 271
                  lui          s9, 346359
                  sltu         s11, t1, ra
                  xori         t6, zero, 521
169:              slti         a2, a0, -1951
                  slti         tp, a1, -218
171:              sltiu        a1, a4, 1455
                  auipc        zero, 904262
                  beq          a1, s4, 179f
                  or           s1, s9, s11
                  auipc        a4, 732390
                  sltiu        s10, s6, 1425
                  slt          t2, s11, a0
                  addi         t3, s4, 1788
179:              bgeu         a6, t1, 183f
                  sub          t3, s7, ra
                  xori         a7, t0, 1697
                  beq          t3, s0, 196f
183:              sll          sp, a2, zero
                  lui          gp, 98772
                  nop
                  bltu         t4, tp, 205f
                  bne          s3, a4, 198f
                  bltu         s9, s1, 198f
                  sll          a2, a7, a3
                  xori         a7, s5, -225
                  bltu         s5, s6, 194f
                  sll          t4, a2, gp
                  srl          a1, s0, a6
194:              bltu         zero, tp, 213f
                  ori          t4, a7, 1392
196:              slt          t3, s0, s7
                  srl          s4, s3, t6
198:              bge          t3, a5, 215f
                  beq          t6, ra, 203f
                  sub          s11, t4, s9
                  sltu         t5, s0, s5
                  srl          a5, zero, a1
203:              sub          a7, zero, a3
                  slti         sp, s6, 977
205:              beq          s7, t1, 223f
                  xor          tp, s11, t0
                  blt          a6, a2, 209f
                  srai         s4, s6, 22
209:              slt          gp, t3, ra
                  ori          gp, sp, -1515
                  and          s0, s5, s11
                  add          a3, s9, s10
213:              nop
                  auipc        t2, 631277
215:              ori          t3, s9, -454
                  sltu         gp, gp, t4
                  andi         s3, zero, 1249
                  or           s1, s6, s7
                  bgeu         s4, t2, 233f
                  beq          s0, sp, 237f
                  beq          s11, t5, 222f
222:              sub          s8, a2, tp
223:              beq          sp, a5, 232f
                  slti         zero, a6, -1526
                  srai         s3, s5, 25
                  andi         s9, s11, 1452
                  slt          a7, t3, sp
                  andi         s3, t3, 2045
                  sll          s10, s2, a7
                  add          s11, t3, a3
                  sll          a0, ra, gp
232:              bge          s5, s8, 242f
233:              auipc        s8, 271692
                  slti         s4, a7, -1110
                  bltu         s8, s6, 252f
                  sltiu        s2, s8, -1540
237:              sltu         t6, t0, s9
                  sltiu        s2, s0, -891
                  sltu         s8, a2, s1
                  srai         s5, a6, 5
                  ori          t4, sp, -471
242:              xor          sp, s0, s3
                  ori          t1, s10, -1837
                  slli         a2, t2, 5
                  xor          a1, s0, a1
                  auipc        s4, 171143
                  bgeu         a1, t4, 266f
                  blt          a2, a5, 268f
                  slt          s9, a5, t4
                  sub          t5, tp, a5
                  bne          t5, s8, 262f
252:              and          t3, gp, s5
                  blt          t4, s10, 262f
                  ori          t5, s5, -420
                  bgeu         s9, a1, 260f
                  sra          tp, sp, s8
                  or           s5, t2, s5
                  srli         zero, zero, 11
                  nop
260:              lui          t5, 13814
                  and          t1, s3, t3
262:              sltiu        s6, s7, 307
                  xori         a7, ra, -331
                  auipc        tp, 752032
                  bgeu         t5, s7, 274f
266:              and          t0, s1, a6
                  xor          t3, s11, s9
268:              slli         s0, s11, 19
                  xori         t1, t5, -1142
                  bne          t5, s3, 273f
                  blt          a3, s11, 273f
                  ori          s5, t0, -1399
273:              sltiu        s1, t5, 901
274:              slli         s11, a7, 10
                  la           a3, sub_6
                  sltiu        s3, s11, -1112
                  addi         a3, a3, 701
                  xori         a5, s10, 1709
                  slli         s2, t3, 31
                  and          gp, t1, a0
                  nop
                  lui          t3, 72024
                  xor          s3, a6, a1
sub_3_j6:         jalr         t1, a3, -700 #jump sub_3 -> sub_6
                  andi         zero, s5, 1406
                  srl          a0, zero, s3
                  xor          s5, t2, t0
                  xor          t4, tp, s5
                  sltu         a2, a6, s3
                  blt          s6, t0, 286f
                  andi         s4, a3, 1848
                  andi         t2, s6, 598
                  nop
                  addi         t1, a3, 1603
                  bltu         s2, a7, 299f
286:              add          t1, a0, a6
                  and          a5, s7, t4
                  slt          t1, s11, a3
                  bne          s7, s10, 304f
                  srli         t0, s7, 27
                  srli         t5, t0, 3
                  sub          a4, s9, s2
                  xori         t1, zero, -32
                  srli         s6, s11, 30
                  srai         zero, sp, 7
                  srl          s3, sp, t6
                  xor          t0, t4, gp
                  srli         s0, tp, 25
299:              sub          a2, zero, sp
                  sub          a2, s6, t2
                  add          t4, ra, a6
                  lui          zero, 34879
                  srli         a4, t2, 8
304:              bne          t5, s11, 315f
                  xor          a2, s3, s6
                  lui          t6, 1007052
                  slti         a7, ra, -522
                  auipc        zero, 253257
                  xori         s2, ra, -621
                  andi         s6, s2, 1399
                  xori         s11, a3, 1308
sub_3_j7:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  sra          s3, s1, s1
                  sll          s8, gp, t0
                  slti         a1, s4, -784
                  srai         s10, a2, 22
                  sub          s0, a2, t3
                  beq          a1, a7, 320f
                  sll          t3, s10, sp
                  srai         t5, s3, 5
                  bne          s11, t1, 331f
                  beq          a0, s8, 321f
315:              bne          t2, s11, 317f
                  bne          s4, t0, 330f
317:              slt          a5, s11, t1
                  nop
                  blt          zero, t5, 328f
320:              auipc        a1, 305626
321:              and          s5, s8, s5
                  add          s1, s3, s6
                  sltu         s4, s3, s7
                  auipc        zero, 360489
                  slti         s8, a2, 414
                  add          s4, gp, s8
                  ori          a0, s7, 1702
328:              bltu         a1, gp, 345f
                  addi         gp, s2, 1977
330:              ori          s5, a4, 173
331:              nop
                  slti         t4, s4, -1587
                  addi         t2, zero, 807
                  slli         a7, sp, 30
                  bgeu         s2, t5, 346f
                  sub          a1, t5, t6
                  srli         s4, a6, 25
                  blt          t2, a7, 345f
                  slt          zero, t3, s6
                  sra          a7, s10, t1
                  srai         a1, t4, 21
                  add          s2, s5, t4
                  or           gp, t5, s10
                  ori          s2, s8, 1212
345:              srai         zero, t1, 6
346:              srai         s6, tp, 3
                  xori         t4, s4, 1198
                  slti         s5, a5, -1104
                  slti         t4, s10, -1022
                  addi         s10, s8, 1160
                  xor          a0, zero, a4
                  bltu         s8, s2, 366f
                  addi         s4, s5, 111
                  srl          s5, s11, t6
                  andi         a7, a4, -83
                  srai         a1, s4, 1
                  add          s6, sp, s8
                  sltiu        s3, t5, 418
                  xor          s8, s2, gp
                  add          zero, t5, a0
                  nop
                  ori          a1, s9, 781
                  sub          a5, a1, s2
                  xor          t3, a1, t5
                  addi         sp, s8, -610
366:              slti         t3, t4, 227
                  lui          s0, 608242
                  bgeu         s2, s1, 378f
                  slli         s11, a3, 29
                  srai         a2, a6, 22
                  add          a1, a0, s9
                  slt          s5, s8, s5
                  xor          a0, s6, a4
                  bne          a7, s3, 393f
                  slt          t3, a0, s8
                  addi         s11, s11, -922
                  slt          t6, a1, a6
378:              beq          a1, t5, 395f
                  sll          a2, s9, t1
                  slli         t6, a7, 21
                  bltu         a5, t4, 400f
                  addi         gp, t2, 288
                  add          a4, a3, a5
                  ori          gp, a5, -1331
                  sub          t6, zero, s10
                  srli         s3, t5, 15
                  add          gp, s6, t1
                  sll          t2, s11, a0
                  slt          a1, a0, a0
                  bltu         s0, s7, 399f
                  addi         tp, s5, -759
                  srli         s11, gp, 10
393:              blt          s6, a1, 407f
                  bgeu         a3, s6, 398f
395:              srl          s1, a2, t1
                  beq          s5, s3, 402f
                  xori         s10, a0, -1315
398:              sll          t6, a5, a1
399:              slt          s8, sp, t5
400:              sub          a1, t3, s2
                  sltiu        t0, s7, 1585
402:              srl          t4, s2, t1
                  and          tp, t1, s7
                  add          s5, gp, sp
                  xor          s10, s10, a2
                  or           s3, tp, s10
407:              bgeu         a7, t2, 417f
                  beq          s9, a0, 409f
409:              auipc        s11, 492365
                  sltu         tp, tp, s0
                  sra          s1, ra, a6
                  nop
                  lui          s5, 927559
                  add          s1, s0, s10
                  nop
                  bltu         a7, s7, 418f
417:              xor          t0, s7, t3
418:              blt          t3, t1, 428f
                  slli         a1, a1, 4
                  add          t5, ra, t6
                  srli         s9, t0, 26
                  sltu         s0, s6, t3
                  andi         s1, s8, -1101
                  sra          s4, t0, a3
                  bgeu         s1, a1, 428f
                  sub          s9, t2, t4
                  sra          t6, gp, s6
428:              and          tp, s1, t2
                  and          s8, tp, a6
                  sltiu        s1, a5, -844
                  lui          zero, 861848
                  and          s5, a2, sp
                  andi         gp, s8, -1776
                  slli         t1, t4, 11
                  slt          s9, t4, a4
                  lui          t0, 195120
                  sll          t3, s6, s10
                  lui          s4, 418816
                  add          s0, s1, s1
                  ori          t4, s4, 1783
                  sltiu        gp, a3, -591
                  sll          a2, a6, s1
                  sub          a3, zero, s7
                  lui          s6, 883430
                  auipc        a0, 33756
                  xor          tp, t2, t2
                  and          s10, t3, s3
                  blt          a3, s1, 466f
                  xor          t2, sp, ra
                  sltiu        s1, s4, -864
                  beq          zero, a5, 453f
                  or           a3, tp, tp
453:              bltu         ra, s7, 470f
                  sltiu        a4, a3, 4
                  slt          a5, s1, s7
                  lui          t4, 73475
                  add          a0, a4, s3
                  slti         tp, t0, -950
                  bge          s6, a7, 461f
                  ori          t4, a7, 1452
461:              bge          tp, s3, 481f
                  lui          t1, 1026334
                  xor          s8, s2, s2
                  bltu         s0, s3, 482f
                  bgeu         t0, s11, 480f
466:              beq          t3, s6, 475f
                  srli         zero, t0, 19
                  add          s11, s3, t5
                  auipc        s9, 461596
470:              bne          s1, sp, 475f
                  bne          s2, zero, 485f
                  and          s8, a4, t1
                  sll          t5, zero, t4
                  bge          s6, s6, 485f
475:              slti         s9, a0, 1631
                  ori          gp, t5, -97
                  bne          s10, s2, 480f
                  xor          t3, gp, a1
                  xor          s4, s8, a0
480:              ori          s5, s3, -1101
481:              slt          a7, s0, s6
482:              bgeu         a6, s4, 489f
                  add          t1, s8, a4
                  bgeu         s7, zero, 501f
485:              bge          zero, s4, 489f
                  slt          s4, a4, s9
                  slt          a2, s4, zero
                  beq          s9, s8, 497f
489:              or           s5, a5, s6
                  or           t0, a5, a6
                  srl          a5, s2, ra
                  xor          a0, s11, t1
                  blt          sp, a3, 495f
                  xor          s6, a1, a6
495:              sll          a2, s5, s0
                  bge          ra, ra, 515f
497:              sltu         s5, zero, a2
                  blt          a0, t6, 500f
                  blt          s5, t5, 510f
500:              add          s8, a4, t0
501:              slli         a7, sp, 1
                  add          s4, sp, a0
                  and          s9, a0, s0
                  slti         s2, a5, -1508
                  blt          s2, s11, 511f
                  ori          a3, t3, -1954
                  srl          a1, a7, s6
                  sra          s0, sp, t6
                  and          s9, t6, t2
510:              and          s8, s9, t6
511:              add          a0, s3, t6
                  sra          a3, a0, s7
                  slti         s0, a1, 925
                  andi         a5, zero, 2035
515:              slt          t5, t6, t4
                  sra          s3, a4, s5
                  blt          t4, a0, 535f
                  lui          t1, 739132
                  sltiu        t3, t5, -1767
                  bge          s6, s6, 529f
                  sra          t4, a5, s7
                  xori         a2, s10, 1675
                  xori         gp, t5, -260
                  bne          a1, s0, 525f
525:              add          t1, tp, s2
                  nop
                  ori          a5, s3, -1444
                  or           s8, s11, tp
529:              xor          a1, t0, a7
                  xor          t2, s6, t6
                  srli         a5, s0, 28
                  nop
                  and          tp, s4, s5
                  srl          a7, a0, a6
535:              slli         s3, t3, 17
                  srai         zero, ra, 30
                  nop
                  and          sp, t5, a7
                  xori         a5, a3, 703
                  srli         t6, s3, 21
                  beq          sp, t4, 558f
                  addi         t3, a1, -22
                  sltiu        s5, a0, 1478
                  lui          s6, 500958
                  sltu         tp, tp, t2
                  or           s8, a0, a3
                  srai         s3, gp, 16
                  slli         t0, a1, 4
                  auipc        t2, 913119
                  srai         s6, a2, 29
                  bltu         a7, s8, 561f
                  sltiu        s3, t4, 1591
                  beq          sp, ra, 573f
                  bge          t6, s10, 556f
                  sltiu        s11, s11, -1128
556:              xor          a1, t3, ra
                  xor          s5, t4, t4
558:              beq          t6, a4, 572f
                  slli         tp, sp, 7
                  sra          s4, t0, a1
561:              or           s11, a1, a2
                  blt          a7, s9, 581f
                  srai         a2, s5, 2
                  andi         sp, t3, 140
                  slti         t5, s10, -1707
                  or           s3, gp, a3
                  slli         s2, s10, 24
                  sra          t3, s8, t4
                  xori         a3, s7, 1779
                  ori          s10, s10, 1801
                  xori         a1, s0, 587
572:              and          s11, gp, a4
573:              bne          a1, t0, 584f
                  beq          s2, a0, 592f
                  beq          zero, s9, 578f
                  sra          s0, t2, t4
                  xor          zero, s11, t6
578:              xor          a1, t0, a4
                  auipc        zero, 327753
                  sltiu        a7, t2, 1753
581:              srl          sp, s3, t5
                  sub          t1, a0, a7
                  bge          a2, a1, 592f
584:              or           s6, s6, s2
                  xori         a3, s5, -1884
                  srl          s11, s3, s6
                  ori          s10, s11, -675
                  andi         a2, s5, 403
                  xor          s9, t2, s10
                  bgeu         a4, t6, 604f
                  ori          s8, a5, -56
592:              sra          t6, tp, t0
                  sra          s0, t4, s10
                  slt          s4, t0, s6
                  srl          a7, s6, s6
                  nop
                  addi         a2, s4, 1213
                  bge          t4, a7, 603f
                  and          t0, a3, zero
                  beq          s7, a1, 610f
                  lui          s4, 756371
                  bge          ra, s0, 617f
603:              ori          s3, tp, 216
604:              sltu         s0, a0, a6
                  slti         a0, a4, -379
                  sltiu        t3, a6, -1368
                  andi         a0, s1, 205
                  bltu         t0, t0, 611f
                  sll          a2, t5, zero
610:              lui          s8, 614497
611:              addi         s2, s2, 1325
                  xor          s2, t2, s10
                  slt          a0, a7, t2
                  slli         s5, t5, 23
                  nop
                  sra          s9, a1, s3
617:              ori          t4, t1, -983
                  bge          ra, t3, 632f
                  bge          s0, t3, 629f
                  slli         a4, s0, 10
                  ori          s11, a5, 1195
                  and          a3, s3, s4
                  lui          a7, 555384
                  srai         s2, t1, 24
                  auipc        s6, 635614
                  srai         s3, a5, 4
                  bltu         a1, s2, 644f
                  and          t5, sp, a2
629:              srli         t2, a4, 29
                  bltu         s10, s4, 641f
                  add          s11, ra, t6
632:              sll          t0, a2, t3
                  bge          s6, s1, 652f
                  or           gp, s2, tp
                  and          s10, s11, sp
                  bge          t5, t0, 639f
                  bltu         s8, s2, 639f
                  bgeu         s6, s10, 647f
639:              xor          a4, a3, gp
                  addi         sp, zero, 859
641:              sltu         s2, a2, a0
                  srai         s3, s10, 6
                  srl          s6, s5, a4
644:              and          t0, a6, t6
                  andi         s8, s0, -568
                  xor          a0, s7, t0
647:              auipc        s6, 446644
                  sub          s5, s4, ra
                  bgeu         s9, s1, 668f
                  sra          a5, s1, s2
                  xori         tp, a5, 465
652:              xori         a5, zero, -814
                  slt          a2, s1, s1
                  addi         s2, t4, -86
                  nop
                  sltu         t4, t5, gp
                  slti         tp, s9, -1068
                  srli         gp, s3, 8
                  srli         t0, a2, 9
                  xori         a3, gp, 1709
                  bne          s6, s9, 663f
                  slli         a5, tp, 30
663:              xor          a2, a5, a6
                  slt          t3, t1, s11
                  or           tp, s5, s6
                  sltu         a3, s10, a6
                  srli         s5, t3, 10
668:              nop
                  slt          s0, s9, a7
                  slti         a0, s6, 739
                  addi         sp, s6, -639
                  sltiu        s4, a6, -630
                  sltiu        sp, gp, -1274
                  sub          s1, a3, a3
                  xori         t6, s5, 222
                  addi         s9, a1, -1625
                  srai         zero, s8, 29
                  slt          a0, t2, a7
                  andi         s3, a4, -227
                  sltu         t1, zero, s1
                  ori          a4, a5, -1814
                  beq          a3, s9, 699f
                  nop
                  addi         s3, gp, -885
                  blt          t0, s9, 700f
                  sub          s2, ra, a5
                  nop
                  lui          a1, 718630
                  srli         s10, a1, 28
                  xori         s9, t2, -147
                  slli         t3, s3, 13
                  blt          s2, gp, 701f
                  beq          a3, tp, 697f
                  sra          a5, s4, gp
                  bge          a0, s8, 709f
                  addi         a5, s8, 1642
697:              srl          a7, a0, sp
                  lui          t5, 606270
699:              sra          s5, t4, s7
700:              sub          a2, s1, gp
701:              ori          zero, a1, -324
                  xori         s1, gp, 1864
                  bge          t5, t2, 712f
                  sltiu        s11, a7, 1171
                  sltu         a5, s6, s4
                  sub          a2, s1, sp
                  sra          s0, s9, s11
                  slli         s5, s2, 23
709:              or           a4, t1, t5
                  slti         a0, a6, -1256
                  sra          a3, sp, t3
712:              sltiu        a0, zero, -111
                  bltu         zero, s0, 730f
                  auipc        s1, 425182
                  slt          t0, sp, tp
                  and          s2, sp, s3
                  beq          t1, a5, 723f
                  sub          s11, zero, t0
                  blt          s10, t3, 721f
                  bge          s0, s8, 734f
721:              blt          s1, a1, 731f
                  sll          s4, sp, a3
723:              sra          s5, t3, t4
                  or           a2, s8, t1
                  sll          a5, t1, ra
                  bge          s11, a2, 737f
                  srli         t6, s6, 29
                  ori          s3, t3, -89
                  bge          t4, t0, 734f
730:              sltu         a3, a7, a4
731:              bgeu         a2, a4, 738f
                  auipc        a0, 413353
                  srl          s10, s7, s4
734:              lui          a2, 551519
                  addi         a7, s1, 1198
                  nop
737:              lui          s3, 495929
738:              bge          s4, a3, 752f
                  xor          a7, t5, s10
                  beq          s11, s1, 750f
                  andi         a2, s3, 1948
                  andi         s4, t0, -980
                  andi         gp, zero, -365
                  xori         t0, t6, -27
                  addi         zero, tp, -476
                  xori         a1, a3, -1955
                  xori         a3, t4, -791
                  bge          t5, a0, 766f
                  add          s11, zero, a3
750:              auipc        a3, 911121
                  sltiu        a4, s5, 873
752:              bltu         s10, t2, 755f
                  xor          a5, a5, tp
                  xori         gp, a7, 263
755:              xori         s1, t5, 1770
                  addi         s5, a5, -1928
                  and          t5, a1, t2
                  lui          t5, 498338
                  and          t6, s8, s10
                  or           s6, a5, t0
                  sub          t2, s0, t3
                  lui          s6, 357021
sub_3_j9:         jal          t1, sub_7 #jump sub_3 -> sub_7
                  srli         t5, a5, 25
                  srl          t4, s8, a7
                  slti         s0, tp, 755
                  slt          s1, sp, tp
                  add          t0, a3, a5
                  ori          sp, t0, -829
                  sll          s3, a3, s1
                  andi         tp, a0, -622
                  blt          a0, s5, 774f
                  beq          a2, a4, 766f
766:              and          s8, s4, s7
                  bltu         a5, t0, 787f
                  xori         t6, a7, -1563
                  srl          a5, t1, a5
                  addi         s9, t2, -923
                  or           t6, t1, a5
                  sra          s5, s1, s1
                  sltu         a2, a0, t5
774:              sra          t3, s7, s2
                  blt          t3, t4, 792f
                  bne          a4, a1, 794f
                  slti         t6, s9, 1005
                  andi         zero, t1, -53
                  sub          s6, zero, s8
                  auipc        a7, 58030
                  andi         s9, ra, -84
                  slt          s8, s1, s3
                  beq          a4, s10, 798f
                  sltu         t0, zero, t6
                  lui          s6, 65306
                  auipc        s4, 988431
787:              andi         s0, sp, -1142
                  xori         gp, s6, -1487
                  sub          a7, t1, a5
                  add          t4, t4, gp
                  bltu         sp, s9, 793f
792:              srai         a5, s2, 23
793:              add          s1, s11, t0
794:              srli         s2, s8, 17
                  andi         gp, a4, -981
                  sll          a5, s5, s3
                  slli         a3, a6, 26
798:              srai         s9, t1, 30
                  or           a1, s6, s4
                  slt          t2, a1, a7
                  srli         gp, t1, 16
                  bgeu         s5, s2, 822f
                  lui          a1, 519967
                  ori          s2, t3, -1435
                  xori         a0, a1, 957
                  auipc        gp, 14184
                  or           s0, t3, s0
                  lui          t4, 615480
                  bgeu         t2, s9, 823f
                  bgeu         t5, s3, 813f
                  srl          t3, s3, t2
                  sltu         s11, tp, s9
813:              slt          s6, gp, t4
                  slt          a1, tp, t2
                  xori         a3, t0, -733
                  xori         s2, s11, 1384
                  bne          s2, t4, 828f
                  blt          a6, a0, 832f
                  srl          s2, t2, t2
                  sltu         s2, t2, a0
                  bge          tp, t4, 831f
822:              nop
823:              slli         a5, t1, 27
                  and          s3, t5, s7
                  bge          a0, zero, 836f
                  bgeu         a3, s8, 835f
                  lui          t1, 672488
828:              sll          s6, zero, s10
                  bgeu         s8, gp, 848f
                  sra          s1, s10, s1
831:              or           s9, s2, ra
832:              ori          tp, a6, 1109
                  and          a7, s6, tp
                  lui          t6, 883652
835:              auipc        s3, 288269
836:              slti         a0, t3, -249
                  or           gp, s11, t5
                  srl          t2, t6, s3
                  srl          t1, s2, t3
                  srl          t2, ra, t0
                  or           s0, s2, s9
                  sub          a1, a5, t3
                  andi         a3, s3, -1945
                  sra          s0, a1, t3
                  sll          a1, tp, gp
                  ori          tp, s6, -2011
                  xor          s4, t6, a7
848:              add          t2, s3, a7
                  xori         t2, t0, -206
                  sll          a5, t4, s10
                  and          a2, s2, sp
                  slt          a5, s10, sp
                  xori         s3, t2, 1339
                  andi         s8, t1, -207
                  andi         t5, t6, 950
                  xor          s9, s6, s11
                  blt          a0, t5, 861f
                  nop
                  bge          s2, s6, 873f
                  beq          s6, s8, 869f
861:              add          a0, s9, s4
                  la           sp, region_1+1705 #start riscv_load_store_rand_instr_stream_3
                  sb           t4, -760(sp)
                  add          s5, a5, t5
                  xori         a5, t6, 1495
                  auipc        s0, 403371
                  sh           s10, -899(sp)
                  xor          s0, s5, t6
                  lbu          s10, -246(sp)
                  srli         t4, a7, 30
                  lbu          t0, -223(sp)
                  and          t0, a1, a5
                  srl          s11, s10, a5
                  xor          a5, a3, s11
                  xori         a7, ra, -1293
                  slti         s4, a1, 756
                  lbu          t5, -636(sp)
                  srai         a3, s2, 6
                  andi         s8, a3, 1723
                  and          a7, s1, zero
                  xori         s8, t3, -807
                  addi         s5, s5, -2021
                  lb           a4, -248(sp)
                  sll          s2, a5, s7
                  slti         t2, a2, 1903
                  lbu          a3, -1682(sp)
                  lui          a1, 1028928
                  add          a4, a6, t1
                  sb           zero, -967(sp)
                  or           s3, a3, t6
                  sll          a4, s6, s9
                  lb           t0, -1491(sp)
                  sra          a4, ra, sp
                  lbu          t0, -632(sp)
                  lbu          t2, -1506(sp)
                  lbu          s11, -406(sp)
                  ori          t5, a2, -879
                  sb           s2, -783(sp)
                  sub          t6, ra, s4
                  sub          gp, t3, s7
                  lb           a2, -986(sp) #end riscv_load_store_rand_instr_stream_3
                  or           s8, t3, a0
                  auipc        t6, 991431
                  srli         s9, t2, 8
                  slt          t5, a1, t4
                  lui          t4, 542300
                  xori         s4, sp, 815
                  sltiu        s2, s5, -1963
869:              sub          t5, s0, a5
                  slti         t0, tp, 1251
                  blt          a4, s6, 877f
                  sub          s1, s1, s9
873:              and          s8, gp, sp
                  sltiu        a3, s0, -1966
                  addi         tp, a3, -1474
                  srai         t0, s3, 28
877:              add          a2, a1, t4
                  addi         s3, a6, -1072
                  slti         t2, s1, 312
                  sltiu        a0, s6, -1983
                  srai         a7, s11, 18
                  sub          t2, tp, s5
                  srl          s6, s3, s2
                  lui          t2, 748814
                  sltu         s0, t2, a1
                  nop
                  slti         a7, gp, 1633
                  xori         t4, t6, 178
                  sll          s10, t3, s10
                  blt          s6, gp, 909f
                  nop
                  xor          t6, s8, t2
                  ori          sp, t3, -989
                  slli         sp, sp, 27
                  sltu         s1, s7, t4
                  srl          a7, t6, s1
                  bltu         a2, s5, 906f
                  ori          s2, s7, 1550
                  bge          t6, t4, 916f
                  srai         t6, t6, 11
                  beq          s4, t3, 919f
                  bltu         sp, a4, 912f
                  andi         a4, t4, -132
                  sub          t0, s0, sp
                  sltiu        t2, a0, -940
906:              andi         s6, s7, -363
                  add          s5, s6, s3
                  srai         s11, s5, 16
909:              sra          s0, s6, s8
                  addi         gp, a3, -1567
                  sltiu        a3, s0, 1913
912:              sltu         t6, a5, s5
                  sll          t1, t1, t0
                  bne          t0, s11, 921f
                  srai         t6, t2, 14
916:              beq          a7, sp, 921f
                  ori          a2, s1, 392
                  beq          t3, a7, 920f
919:              sub          t5, s11, a5
920:              lui          a2, 770830
921:              slti         t2, a1, -326
                  bge          zero, s5, 939f
                  addi         s5, s2, 2037
                  beq          s8, s0, 925f
925:              srai         a3, s5, 24
                  sra          s0, t6, s3
                  sra          gp, a3, s8
                  add          a1, a0, t5
                  blt          ra, t0, 946f
                  or           a0, t2, a5
                  bge          s9, s10, 934f
                  add          a2, a1, s7
                  bgeu         tp, t2, 935f
934:              srl          a7, a2, s0
935:              sltu         a3, s11, a2
                  addi         a2, a1, 1334
                  slt          s3, t2, s11
                  nop
939:              bgeu         s7, t1, 949f
                  bge          t6, s9, 958f
                  blt          s7, s11, 958f
                  blt          t5, s0, 959f
                  bltu         sp, t5, 952f
                  and          s6, s6, a3
                  slli         s11, a1, 12
946:              srli         tp, a0, 31
                  auipc        s9, 40267
                  sll          t5, a7, a4
949:              srai         s0, s6, 20
                  slti         a4, s3, -1677
                  srai         sp, t6, 25
952:              auipc        a3, 57361
                  srl          s11, s2, s4
                  nop
                  lui          s6, 519955
                  bgeu         a3, s9, 965f
                  bgeu         s3, ra, 960f
958:              bge          t0, a1, 968f
959:              slti         t6, tp, 1426
960:              srli         s3, t4, 8
                  add          s8, s7, t4
                  andi         tp, t1, -1722
                  beq          a1, s3, 981f
                  beq          s0, s4, 978f
965:              sltiu        zero, t6, 1029
                  xori         sp, ra, 99
                  xor          tp, t3, t0
968:              addi         s6, s3, 610
                  blt          s6, a2, 983f
                  nop
                  sltiu        s6, s10, 37
                  srl          t1, a1, s8
                  sltu         a5, t5, a1
                  slt          gp, a5, a7
                  sub          s11, s6, a0
                  slti         t6, s11, 1196
                  sub          t6, tp, a0
978:              add          gp, a1, t1
                  sltu         a0, s4, zero
                  andi         s5, t6, 1789
981:              addi         t5, s3, -256
                  sub          a4, s6, s11
983:              bge          sp, tp, 994f
                  auipc        s6, 184257
                  blt          t5, a7, 994f
                  lui          a4, 274191
                  sra          t5, t2, zero
                  add          a4, s8, a7
                  slli         s11, zero, 21
                  sra          a4, t5, a1
                  and          s1, s2, s6
                  auipc        s10, 17642
                  auipc        a0, 530356
994:              lui          s11, 712112
                  sll          s10, t4, a7
                  bgeu         t6, a5, 1003f
                  auipc        s11, 160589
                  lui          s1, 529991
                  and          t2, a6, sp
                  bge          t2, t5, 1018f
                  xor          t2, s2, a6
                  xor          t6, a7, gp
1003:             beq          s5, t6, 1022f
                  slti         s8, t5, 1583
                  ori          a5, s4, 1765
                  srl          tp, s4, a5
                  nop
                  add          t2, a7, t3
                  srai         tp, zero, 0
                  and          a2, t2, s9
                  slt          t6, a1, t1
                  sltiu        s4, a3, -197
                  or           zero, a4, t2
                  beq          s0, a1, 1031f
                  sltiu        s1, s4, 1813
                  sltu         t5, s10, s8
                  or           a7, tp, s10
1018:             sub          t0, tp, a3
                  add          t0, t1, s1
                  ori          sp, a6, -1540
                  and          a7, zero, t4
1022:             ori          a0, s11, 977
                  xor          a0, a3, s11
                  srli         zero, t0, 13
                  blt          t1, s6, 1026f
1026:             xori         s2, a2, 112
                  sltiu        t1, a0, 1699
                  slti         t3, s1, -1695
                  nop
                  ori          s5, a1, -131
1031:             srli         sp, s8, 20
                  srai         t4, s8, 4
                  nop
                  sltiu        a2, t0, 1249
                  and          s0, a3, t6
                  bne          a3, s0, 1047f
                  andi         a0, a3, 1715
                  slli         a1, s11, 8
                  srl          t3, s7, t6
                  bgeu         a0, a1, 1054f
                  ori          s8, tp, -1762
                  auipc        s1, 836741
                  nop
                  beq          s4, zero, 1046f
                  lui          zero, 760345
1046:             slli         a4, t4, 23
1047:             sltu         s11, t6, s6
                  bltu         t0, sp, 1058f
                  auipc        sp, 678902
                  xori         s0, a4, -787
                  and          t2, sp, s9
                  sub          t6, a4, t1
                  bne          a2, s6, 1063f
1054:             nop
                  sll          s0, s2, ra
                  slti         t2, t2, 1918
                  blt          s1, a1, 1061f
1058:             add          s3, s4, s5
                  andi         a4, s6, -1558
                  and          s1, t5, zero
1061:             beq          t6, a4, 1065f
                  ori          a3, s3, -400
1063:             xor          a3, s3, s1
                  auipc        t2, 918056
1065:             lui          s1, 779158
                  auipc        s2, 467920
                  slti         a4, gp, -672
                  and          s5, s4, s10
                  sltu         zero, a3, s8
                  lw           t1, 4(s7)
                  xori         t5, t4, -1911
                  addi         s7, s7, 64
                  srl          s10, t6, tp
1449:             addi x27, x6, 0
1449:             jalr x27, x27, 0
sub_9:            slli         t5, a7, 19
                  lui          s0, 181724
                  addi         s7, s7, -64
                  sll          a2, a4, t0
                  slli         s5, a5, 15
                  or           t2, s4, t5
                  sra          t4, t6, t1
                  sw           t1, 4(s7)
                  xori         s9, s6, 1298
                  sltiu        s9, s6, 141
                  la           s11, sub_10
                  addi         s11, s11, 349
                  srai         t6, a4, 24
                  andi         s10, gp, 1288
                  srai         s10, a7, 2
                  slli         a4, a3, 22
                  sltu         a2, a6, a1
                  sra          a2, t0, a4
                  sra          sp, s3, s2
                  bne          zero, s5, sub_9_j15 #branch to jump instr
                  srai         s6, t0, 1
                  auipc        a1, 973869
                  sltiu        a0, tp, 1580
sub_9_j15:        jalr         t1, s11, -349 #jump sub_9 -> sub_10
                  lui          a4, 246460
                  bgeu         a2, tp, sub_9_j16 #branch to jump instr
                  xor          a3, tp, a0
                  sra          a7, s0, a2
                  slt          s6, tp, a2
                  sll          t0, t5, a3
                  sltu         s4, sp, t6
                  auipc        s0, 793164
                  sltu         a7, s5, s0
                  sll          s1, s0, a7
sub_9_j16:        jal          t1, sub_10 #jump sub_9 -> sub_10
                  beq          s3, a1, 12f
                  beq          t4, ra, 5f
                  addi         s10, a6, -1253
                  lui          s5, 984654
                  blt          s0, s9, 22f
5:                slt          s11, s5, t0
                  xor          s10, a7, s2
                  slt          t5, zero, zero
                  beq          t2, s8, 13f
                  bne          a7, a5, 13f
                  xori         s10, a3, 756
                  slti         s10, a2, 1710
12:               blt          t1, zero, 23f
13:               sra          zero, s1, s5
                  andi         s2, s3, -1790
                  sltiu        t5, t6, -859
                  ori          t2, s8, -1613
                  beq          a5, a3, 19f
                  slli         t1, s1, 28
19:               andi         a7, zero, -1508
                  addi         a7, s7, 691
                  bne          sp, s8, 41f
22:               bne          ra, s9, 32f
23:               bgeu         a6, t5, 43f
                  slli         s11, a2, 20
                  srai         s5, t0, 21
                  sra          t1, a3, sp
                  add          a2, a2, tp
                  and          a0, a7, a0
                  bne          s11, s8, 48f
                  and          t0, a3, a4
                  add          s10, ra, t4
32:               slli         t2, t2, 4
                  auipc        zero, 424406
                  lui          t0, 326298
                  srl          a7, a6, s10
                  sub          a7, a7, a7
                  addi         zero, a1, 12
                  sll          s9, tp, s6
                  sub          s10, s8, s7
                  sub          a1, gp, s9
41:               sll          a1, s2, s8
                  xor          s8, t0, t0
43:               or           sp, s4, a4
                  sub          s4, sp, s10
                  ori          s1, a0, 1661
                  slti         zero, s6, 362
                  sra          zero, t0, a1
48:               slt          t2, s7, s11
                  bltu         a3, t1, 60f
                  sra          s1, s3, t1
                  bne          s9, tp, 58f
                  slti         s2, t0, 971
                  bltu         s7, t6, 61f
                  andi         a5, s8, -1441
                  srl          t0, s8, t5
                  slti         a5, tp, -1063
                  slti         t3, t6, -1744
58:               or           a3, s4, s0
                  bltu         s10, s5, 67f
60:               beq          a6, s1, 67f
61:               slti         s0, s10, -1506
                  srl          s5, t3, zero
                  nop
                  blt          a7, s8, 67f
                  andi         a0, a0, -1290
                  sra          a2, a4, s7
67:               srl          a0, s4, sp
                  lw           t1, 4(s7)
                  xor          gp, s10, a5
                  addi         s7, s7, 64
                  srli         s5, t4, 1
                  or           s2, s9, t0
                  slt          tp, s8, gp
                  and          s6, a4, a4
110:              addi x19, x6, 0
110:              jalr x19, x19, 0
sub_7:            addi         s7, s7, -64
                  xor          t2, t2, s11
                  srai         a3, zero, 11
                  sra          t5, zero, s1
                  sw           t1, 4(s7)
                  sltu         a2, a4, t4
                  slti         s3, t6, 496
                  add          tp, s3, a7
                  srli         s5, tp, 3
                  bltu         s7, gp, 14f
                  srli         gp, t4, 10
                  la           sp, region_0+1277 #start riscv_load_store_rand_instr_stream_0
                  lb           a3, 74(sp)
                  ori          a2, a7, -23
                  slt          gp, sp, gp
                  auipc        t4, 1032971
                  or           gp, s1, s7
                  sll          a5, a3, t1
                  sb           t0, -193(sp)
                  sb           a7, -253(sp)
                  auipc        s9, 944327
                  andi         a7, gp, 953
                  sub          a5, t4, s11
                  lb           a7, 178(sp)
                  or           s0, s0, s9
                  or           tp, a2, t1
                  sb           t0, -149(sp)
                  sltu         s1, a4, s1
                  lb           zero, 36(sp)
                  lh           a3, -71(sp)
                  add          s5, s7, s10
                  sh           s10, 181(sp)
                  sb           a4, -237(sp)
                  lhu          s10, 253(sp)
                  sltu         s6, s9, t0
                  sra          t0, a2, s0
                  srli         zero, s3, 21
                  sb           a1, 68(sp)
                  slli         s5, a1, 12
                  srai         t3, s8, 27
                  sh           ra, 157(sp)
                  sltu         s6, a1, ra
                  lhu          gp, 27(sp)
                  lbu          s1, 61(sp)
                  lh           a7, 19(sp)
                  xori         a4, a1, 404
                  sb           t0, -148(sp)
                  xor          s0, ra, s1
                  sb           t4, -118(sp)
                  xor          s6, t3, a5
                  sb           s11, 42(sp)
                  lui          t4, 112939
                  lbu          a4, -27(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          t2, tp, 18f
                  xor          t4, a3, t1
                  and          tp, a2, s10
                  blt          s3, t1, 12f
                  srai         a1, t5, 1
                  srai         a1, t0, 22
                  srai         t5, ra, 20
                  srl          s10, t3, t6
12:               addi         a5, ra, -1245
                  or           s10, a0, a1
14:               sra          t1, s2, s8
                  and          s11, s1, s2
                  slt          s9, s1, s0
                  auipc        s11, 795077
18:               sub          t6, a5, s7
                  and          s10, a2, tp
                  xor          s0, s10, zero
                  srl          a0, s10, a4
                  andi         gp, gp, -577
                  sltiu        s9, t3, 1808
                  sub          s4, a3, a0
                  blt          s9, t4, 44f
                  lui          a1, 43236
                  slti         s2, t1, 262
                  slti         t5, t6, 1362
                  bltu         s3, s5, 49f
                  sltu         t0, s7, s8
                  slt          t5, t3, ra
                  bne          s0, a7, 44f
                  slli         t3, a7, 15
                  slt          s4, s3, s9
                  andi         a1, s8, 192
                  or           t0, s1, a3
                  add          a2, s0, s5
                  and          t0, s2, t4
                  lui          s1, 558285
                  sra          s8, s7, t5
                  bne          s0, s10, 44f
                  bge          t0, s9, 59f
                  or           t5, sp, t6
44:               bne          s3, s8, 60f
                  sll          a3, s1, s7
                  and          s8, a4, a0
                  sub          s8, t5, s5
                  nop
49:               or           a4, gp, t3
                  bltu         t3, a3, 52f
                  sll          s3, a1, t0
52:               bgeu         a0, t1, 64f
                  auipc        s0, 875477
                  blt          s1, a7, 65f
                  sra          s2, s7, s8
                  blt          s7, a2, 59f
                  and          sp, s5, a6
                  srl          a3, s10, s1
59:               beq          s1, a2, 63f
60:               sub          a1, s2, sp
                  slti         t1, s0, 1915
                  bge          t0, tp, 64f
63:               bge          s9, zero, 64f
64:               slti         s2, s10, 1161
65:               ori          s3, s8, -715
                  ori          a1, s2, 1937
                  srai         a3, a1, 9
                  srai         s4, tp, 20
                  xor          s4, s3, t5
                  sltu         s1, s0, a6
                  andi         a5, sp, 7
                  sra          s6, s2, t1
                  blt          t3, s9, 87f
                  addi         s0, s4, 1439
                  add          s4, s11, s10
                  sra          s6, a4, t6
                  blt          s5, s7, 95f
                  blt          s2, t5, 81f
                  srli         a1, t6, 23
                  xori         t4, t2, 2008
81:               sra          t2, s0, a1
                  srli         sp, a7, 14
                  ori          s4, s0, -573
                  sra          s11, t1, gp
                  or           a2, s1, s5
                  lui          s5, 207786
87:               add          s9, s10, s0
                  lui          s9, 528936
                  xori         gp, a5, 1191
                  and          a2, s9, s3
                  nop
                  nop
                  sra          s9, s3, t2
                  blt          t4, t6, 113f
95:               xori         tp, s0, -1751
                  sltiu        t2, s1, -1070
                  and          s1, s0, s3
                  auipc        a3, 447146
                  blt          gp, tp, 104f
                  sra          s0, s7, a1
                  srai         s4, a3, 22
                  bltu         a3, a3, 106f
                  sltiu        a2, t0, -768
104:              ori          sp, s6, 997
                  sra          t0, ra, tp
106:              bge          tp, s0, 115f
                  andi         a1, s11, 2017
                  sll          s8, s5, s8
                  lui          t2, 942508
                  srai         a1, s0, 6
                  bltu         t2, s8, 129f
                  sltu         a5, t6, s5
113:              slt          gp, sp, s11
                  srli         zero, a4, 22
115:              srai         a2, a4, 29
                  bgeu         tp, a1, 128f
                  blt          a1, s9, 133f
                  sub          a7, s2, t1
                  andi         t1, s11, -1757
                  addi         gp, t4, -747
                  slli         zero, t6, 2
                  srli         s6, s0, 25
                  srl          t1, s8, s10
                  sll          t0, s6, t3
                  sltiu        t5, t5, 1062
                  andi         s9, t3, -802
                  blt          zero, t4, 129f
128:              slt          s0, s9, t2
129:              sltiu        t2, a4, -616
                  nop
                  add          tp, a4, s1
                  andi         a2, sp, -720
133:              sll          a0, t4, s9
                  bne          a6, a5, 144f
                  sra          s6, a0, zero
                  xor          t2, s3, t0
                  lui          gp, 661371
                  slt          s10, a5, tp
                  sra          a1, t1, gp
                  or           t4, s4, s9
                  xori         zero, s8, -1443
                  or           t5, s1, s6
                  sll          s1, s4, s2
144:              and          s0, s9, t1
                  beq          a2, sp, 146f
146:              add          t2, ra, a4
                  sltiu        gp, t6, 1485
                  xori         t3, s4, -879
                  sltiu        t4, s3, -560
                  lui          a4, 127358
                  sll          s8, s0, s5
                  beq          a7, ra, 154f
                  add          s3, s3, s0
154:              sll          a1, t6, s1
                  sll          tp, s5, s7
                  sltiu        s6, t4, 895
                  bgeu         s3, a6, 169f
                  andi         t0, t1, 647
                  or           t2, s1, t1
                  or           t0, a2, s6
                  sltu         t3, t2, s6
                  slt          s3, t5, s10
                  nop
                  sub          t6, gp, t4
                  ori          t4, s5, -181
                  srli         a2, s7, 26
                  andi         zero, a3, -1070
                  sll          s2, a1, t0
sub_7_j12:        jal          t1, sub_8 #jump sub_7 -> sub_8
                  nop
                  bgeu         gp, t3, 175f
                  sll          a5, zero, s11
                  addi         t1, s7, 683
                  lui          s2, 186320
                  sll          t2, t6, s5
                  andi         t4, s8, -1591
                  auipc        a3, 433405
                  slt          a4, s7, t4
169:              nop
                  bne          s9, t2, 189f
                  srl          t2, tp, a6
                  srl          t5, s7, t6
                  sra          s10, a5, zero
                  add          s5, s6, t1
175:              add          a5, t5, a4
                  srli         s0, s2, 9
                  add          a2, s4, s0
                  addi         t4, s6, -1628
                  slti         a4, a1, 1148
                  ori          s5, t0, 496
                  ori          t6, s9, -1894
                  slt          s5, t6, t2
                  srli         t4, a1, 6
                  or           s8, a2, s6
                  sltu         s4, s9, t0
                  bne          s6, t2, 189f
                  srl          a0, a6, t4
                  beq          a2, s2, 204f
189:              andi         s11, t4, 1007
                  xori         s10, s6, 1604
                  bgeu         s0, sp, 193f
                  sub          s5, t1, tp
193:              slt          s11, t1, sp
                  sra          t5, s6, gp
                  ori          t3, s11, 1158
                  sll          a2, s0, t5
                  andi         a7, a0, -231
                  bne          a3, ra, 210f
                  xori         a0, gp, -1143
                  xori         a3, s2, -307
                  sub          tp, a7, s0
                  auipc        s5, 776848
                  sltiu        sp, s11, -1976
204:              srli         sp, s10, 22
                  and          t4, a7, t5
                  beq          s3, t4, 208f
                  bgeu         s0, s8, 208f
208:              beq          s3, a2, 224f
                  and          zero, s1, s4
210:              bne          a0, s2, 213f
                  sll          s1, t1, sp
                  add          t0, t2, s8
213:              sub          s9, a6, s0
                  add          t3, s4, zero
                  addi         s1, a2, 646
                  sltu         s4, s6, s10
                  sub          s6, s11, s6
                  sltu         a0, a7, sp
                  sltiu        a1, t6, 1088
                  xor          a4, t6, s8
                  slti         t0, s5, -608
                  sub          a4, a7, sp
                  bgeu         a1, a1, 226f
224:              slti         t3, s3, 630
                  ori          s8, t3, 1928
226:              srl          a2, a5, a2
                  sltu         a0, sp, s5
                  sltu         zero, s8, s7
                  bge          s1, a7, 234f
                  lui          tp, 480695
                  or           s3, s6, s3
                  bge          a3, a1, 234f
                  add          s11, ra, t1
234:              nop
                  sll          tp, t5, s6
                  lw           t1, 4(s7)
                  xor          t4, t2, s0
                  addi         s7, s7, 64
                  lui          s6, 22332
                  andi         gp, zero, 1
                  add          s1, s4, t1
                  sll          gp, a5, s10
302:              addi x7, x6, 0
302:              jalr x7, x7, 0
sub_4:            addi         s7, s7, -56
                  sltu         sp, s8, gp
                  srli         sp, a3, 2
                  andi         t2, s1, -1836
                  srli         tp, t1, 30
                  srl          t6, a4, s2
                  andi         s10, a5, -262
                  sw           t1, 4(s7)
                  sll          s10, s4, ra
                  srl          s11, s11, s1
                  slti         t4, a4, 1712
                  sra          t3, s5, gp
                  srai         a3, s9, 11
                  bge          s0, a5, 14f
                  sltu         a3, s2, s9
                  auipc        s6, 816156
                  xor          s5, t2, s4
                  srli         tp, s5, 16
                  srli         s10, s6, 11
                  andi         t1, t2, 1208
                  srl          sp, s4, gp
                  andi         a4, ra, 119
                  sltiu        t3, gp, -1746
                  slt          s8, t0, s10
                  srl          a1, s11, t5
                  nop
14:               sltiu        s3, t4, 1935
                  blt          s0, a4, 19f
                  srli         t6, zero, 27
                  xor          t3, s3, t0
                  lui          s4, 584180
19:               srai         t6, s4, 8
                  andi         s3, s1, -31
                  andi         a0, a2, 1440
                  ori          t5, s10, 1394
                  bltu         s0, a2, 30f
                  slli         s10, t6, 30
                  and          s1, t1, t1
                  slli         s11, s11, 30
                  slti         s10, t1, -1126
                  add          a3, s4, s8
                  addi         a2, a7, 1392
30:               xori         t4, s5, 2027
                  srl          a4, t2, a5
                  beq          s9, sp, 51f
                  auipc        a1, 1042778
                  xori         t1, t2, -1344
                  sub          s11, s9, a0
                  slt          s1, zero, s7
                  beq          a0, t2, 54f
                  bne          t0, a1, 42f
                  beq          zero, s2, 54f
                  sltiu        s6, zero, 325
                  and          s4, t0, s6
42:               xori         t5, s8, 1688
                  blt          s3, zero, 55f
                  slli         a2, s3, 20
                  slli         s8, a7, 27
                  add          t0, t3, s5
                  srai         s6, a3, 9
                  sltiu        s9, a5, 1917
                  add          t2, s11, t6
                  xori         s4, t0, -1400
51:               srai         s4, s10, 11
                  andi         s6, s8, -26
                  blt          a3, s11, 66f
54:               bne          s4, s0, 69f
55:               sll          s0, a0, tp
                  slti         t3, t4, 233
                  srai         s2, t1, 17
                  slti         s9, t4, 628
                  slt          a1, t0, gp
                  slt          s11, s3, gp
                  srai         zero, s10, 21
                  addi         s8, a5, -657
                  sltu         t5, zero, a2
                  sra          s4, s8, t6
                  sll          s2, t5, s5
66:               srl          s2, s5, t4
                  andi         tp, a6, 670
                  slti         s11, t1, 59
69:               srl          s8, a4, t0
                  bne          t1, gp, 77f
                  beq          ra, s4, 75f
                  srli         t5, t3, 1
                  srli         tp, a6, 20
                  beq          a2, s11, 94f
75:               bne          a4, s9, 78f
                  and          s1, a1, gp
77:               sltu         s0, a2, a2
78:               lui          s0, 111991
                  xor          a4, s4, s7
                  blt          ra, a5, 99f
                  bgeu         s4, t5, 92f
                  xor          t5, gp, s10
                  xor          zero, s11, s8
                  xor          s11, a0, t5
                  sra          s0, s5, t1
                  lui          s6, 903540
                  xor          s2, t2, s3
                  xori         s6, s4, -1732
                  beq          zero, a2, 100f
                  sltu         s3, s1, s7
                  sltiu        s2, a2, 1001
92:               bgeu         a4, s7, 101f
                  sra          sp, t0, s4
94:               bge          a7, s10, 100f
                  sra          s0, s4, s7
                  blt          a1, a4, 110f
                  add          tp, ra, t1
                  slt          s8, t1, s1
99:               xori         t4, s4, 951
100:              andi         a4, t1, 609
101:              bge          t2, a0, 112f
                  xori         t0, s10, 816
                  bltu         a4, ra, 113f
                  srli         tp, a0, 26
                  srli         a1, a7, 1
                  lui          s8, 694915
                  bge          tp, t0, 113f
                  blt          s1, a3, 113f
                  sltu         tp, t1, s5
110:              slt          s6, a5, t5
                  bltu         s4, t6, 113f
112:              xori         a5, sp, -558
113:              srai         a3, s6, 30
                  lw           t1, 4(s7)
                  slt          a4, t6, s9
                  sltu         a4, t1, a5
                  addi         t2, t1, -1167
                  addi         s7, s7, 56
                  slti         a3, s11, -552
132:              addi x29, x6, 1
132:              jalr x29, x29, 0
sub_1:            slti         s0, a0, -294
                  addi         s7, s7, -48
                  andi         s6, t1, 1721
                  ori          s9, s1, -1732
                  xor          s4, tp, s0
                  srai         a4, s3, 16
                  addi         s6, s8, -1194
                  and          gp, a5, sp
                  andi         s8, gp, 648
                  lui          t6, 1022140
                  sw           t1, 4(s7)
                  slt          a5, s5, s6
                  srli         gp, s11, 1
                  ori          a4, t1, 1031
                  srai         s3, s0, 30
                  xori         t2, t5, -661
                  lui          gp, 35917
                  slti         a5, s6, 2000
                  slt          s2, s4, s8
                  or           a0, t2, s8
                  auipc        a0, 422589
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  la           s10, region_0+227 #start riscv_load_store_rand_instr_stream_0
                  slti         t3, s10, -813
                  sb           zero, -24(s10)
                  xori         a0, s7, -1123
                  and          a2, s10, s8
                  andi         s6, s4, -1624
                  sb           zero, 10(s10)
                  sltiu        s11, ra, -444
                  sh           s10, -57(s10)
                  lui          t5, 108979
                  add          t5, s6, s6
                  lb           s4, -54(s10)
                  add          s5, t3, a5
                  ori          t0, a5, 189
                  lhu          a7, -1(s10)
                  and          sp, a3, s9
                  srl          s4, t1, gp
                  ori          s1, ra, -273
                  sb           a0, -50(s10)
                  andi         s1, t5, -637
                  and          tp, a5, a0
                  sb           t5, 50(s10)
                  andi         a3, t2, 1586
                  sub          t3, s4, s4
                  lb           zero, -56(s10)
                  sub          sp, a1, a6
                  srli         a3, t6, 24
                  xori         a7, t4, -201
                  srl          t4, s6, s10
                  sll          a4, s2, tp
                  lbu          s5, 20(s10)
                  nop
                  nop
                  lhu          t4, -49(s10)
                  lui          t6, 24542
                  lb           a0, -42(s10) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_1+298 #start riscv_load_store_rand_instr_stream_1
                  nop
                  and          zero, gp, zero
                  lbu          a0, -64(t3)
                  lh           a5, 32(t3)
                  lbu          zero, 30(t3)
                  lb           a0, -48(t3)
                  sra          a7, ra, sp
                  sb           t0, 64(t3)
                  sb           tp, -15(t3)
                  lbu          s11, 21(t3)
                  lb           a4, -62(t3)
                  ori          tp, s8, 1391
                  add          t1, a3, t3
                  sb           t6, -23(t3)
                  add          sp, s5, s11
                  sb           s2, -35(t3)
                  sb           s7, 50(t3)
                  lbu          a0, -16(t3)
                  and          s6, ra, s1
                  lh           s4, -14(t3)
                  sub          t6, s6, s1
                  sltu         t2, t4, t1
                  xori         tp, s2, 382
                  sb           s5, -33(t3)
                  addi         zero, s3, 1212
                  lb           t5, 50(t3)
                  sh           a7, 56(t3) #end riscv_load_store_rand_instr_stream_1
                  bltu         a5, a4, 3f
                  srli         s11, s11, 3
                  srl          a2, s7, tp
3:                sll          s3, s9, zero
                  andi         t3, a0, -803
                  blt          a0, zero, 10f
                  blt          t2, s7, 16f
                  and          t2, a2, a7
                  xori         a2, s5, -237
                  or           t0, a7, s3
10:               andi         s0, a6, 438
                  addi         t6, s7, -886
                  srli         s1, s2, 25
                  lui          s9, 996379
                  andi         t2, a6, 137
                  bge          a2, t3, 17f
16:               sltu         t1, t5, a2
17:               nop
                  addi         a5, sp, 733
                  bgeu         s2, s8, 23f
                  sll          s8, a4, a4
                  add          s4, a2, zero
                  xori         sp, s2, 1115
23:               srli         a7, s0, 21
                  andi         s4, a6, -627
                  lui          sp, 21167
                  srai         s3, s10, 0
                  srl          t2, s4, s5
                  bne          a4, s0, 42f
                  sltu         s10, a3, a0
                  xori         s5, s0, -1813
                  sltu         t1, s8, s8
                  sll          a3, s4, s7
                  sra          a5, t3, zero
                  or           s9, tp, ra
                  slti         t1, a7, 1533
                  add          t0, s7, s2
                  nop
                  sltiu        s0, a7, -1621
                  xori         zero, s7, 444
                  slli         s6, t1, 12
                  sltiu        s6, a3, -1208
42:               srl          a1, a7, s1
                  sll          zero, sp, gp
                  blt          s6, a1, 55f
                  sub          s11, gp, t5
                  blt          sp, a3, 50f
                  addi         t1, tp, -1182
                  sll          s2, s0, s4
                  slli         gp, t4, 23
50:               addi         a0, s5, 953
                  auipc        a0, 363000
                  ori          s3, a7, -1758
                  addi         s8, t2, -424
                  sll          t6, zero, s5
55:               slli         s10, t0, 12
                  sub          a0, t3, s9
                  sub          s3, a4, t4
                  sll          t5, a4, t6
                  beq          a7, s4, 68f
                  srai         a0, a1, 18
                  xor          a7, a5, a5
                  blt          a0, s7, 73f
                  andi         t1, s10, 1650
                  or           a7, zero, gp
                  beq          s4, t5, 71f
                  slt          a3, zero, s1
                  add          a4, a7, s1
68:               slti         s0, s11, -1645
                  sltu         s6, s2, a7
                  sltu         s6, s9, tp
71:               nop
                  blt          t3, s6, 75f
73:               slt          s0, zero, a7
                  lui          a0, 708030
75:               add          s8, a3, zero
                  slli         t5, a3, 29
                  ori          a5, tp, 1109
                  blt          s1, s4, 95f
                  sltu         t6, t5, t2
                  sll          s10, s11, s3
                  ori          t4, t2, 1953
                  add          s8, t6, a2
                  slt          t5, s5, ra
                  ori          sp, a0, -911
                  bge          a1, s0, 94f
                  or           s4, s8, s4
                  ori          a0, s5, -1246
                  srai         s8, t6, 28
                  bne          ra, a5, 99f
                  ori          s1, t4, -1347
                  sub          s3, s10, a4
                  srli         a7, a5, 5
                  bge          a6, s3, 94f
94:               sll          a3, a3, gp
95:               addi         s8, t6, 271
                  srli         a0, t2, 28
                  slti         s0, s4, 1429
                  sra          a5, a3, a3
99:               srai         t6, t1, 31
                  slti         zero, a3, -88
                  srl          a2, s7, s11
                  xor          sp, s3, tp
                  xor          sp, t1, t4
                  sll          a0, zero, a7
                  slli         s5, t0, 28
                  slt          s5, t4, s11
                  auipc        s3, 137620
                  xor          a3, t6, t0
                  slt          t0, s0, s5
                  xor          s10, s9, a3
                  auipc        s6, 244155
                  sra          sp, a4, a5
                  sll          s11, s5, s4
                  ori          a5, s8, 844
                  bgeu         tp, a2, 129f
                  bne          s10, t0, 133f
                  slti         s5, s3, 1639
                  add          s5, a6, s1
                  srli         t1, s7, 24
                  bne          s11, a0, 134f
                  xor          tp, zero, a6
                  sra          a7, s3, zero
                  sub          a3, s10, t0
                  xor          t4, t3, s3
                  beq          s8, a2, 140f
                  beq          a0, sp, 132f
                  and          a4, s10, t1
                  bltu         a2, a6, 131f
129:              or           s0, a7, zero
                  srli         s3, t0, 15
131:              sll          t0, s0, s5
132:              bgeu         s6, s1, 151f
133:              slt          t5, s8, a3
134:              andi         s6, a0, -729
                  bne          t5, t4, 143f
                  lui          s2, 315442
                  slti         t0, ra, 20
                  srli         a5, s8, 21
                  sltu         s3, s10, s3
140:              slt          s2, t4, t5
                  sltu         s2, s3, a3
                  slti         s1, sp, -1115
143:              xor          tp, t3, tp
                  blt          t4, a3, 150f
                  bne          a1, a4, 160f
                  blt          ra, zero, 152f
                  bltu         s10, t4, 151f
                  bge          a1, s8, 167f
                  sltu         s1, a1, a4
150:              auipc        a7, 294521
151:              srl          a0, a2, s3
152:              srli         t2, t2, 25
                  sltu         s0, s4, s6
                  slti         sp, t5, -789
                  slti         s11, zero, 154
                  nop
                  bne          s2, a2, 171f
                  srl          tp, gp, t2
                  bltu         a6, sp, 168f
160:              bgeu         s11, a2, 163f
                  beq          t2, s4, 164f
                  add          a7, s8, s1
163:              srli         a0, s9, 26
164:              srl          s6, s4, t1
                  beq          sp, ra, 180f
                  srl          s5, s5, t6
167:              bge          t0, gp, 177f
168:              ori          s11, tp, 135
                  and          s5, a7, t6
                  sltiu        s10, s3, -1575
171:              srl          t2, a7, s11
                  sra          s5, s2, s9
                  sltu         a7, s4, s9
                  bltu         s7, t5, 178f
                  add          s6, t5, s9
                  lui          t2, 899246
177:              sltu         a7, a1, ra
178:              srli         t5, zero, 22
                  andi         s4, t0, -1068
180:              sll          s11, s1, sp
                  sltu         s5, s3, s3
                  bgeu         s8, zero, 193f
                  auipc        s1, 390868
                  sltiu        s4, t5, 1608
                  beq          tp, a7, 186f
186:              slli         a5, s3, 29
                  blt          t2, a1, 198f
                  bltu         a0, tp, 205f
                  slti         t6, a2, -1057
                  blt          t3, s3, 195f
                  bltu         s7, s3, 195f
                  sll          t0, s6, a2
193:              bgeu         s9, t4, 199f
                  lui          a3, 868495
195:              addi         a7, a4, -750
                  addi         t1, t3, -1145
                  nop
198:              slli         t5, a2, 20
199:              bne          s7, s9, 218f
                  and          a7, s1, t0
                  or           t6, s1, s11
                  slti         s2, a5, -1581
                  bne          t5, s3, 218f
                  sltiu        a0, s4, 302
205:              ori          t3, s4, 1970
                  slti         s2, t5, -1804
                  sra          s5, s5, zero
                  srl          t5, s8, t3
                  add          a2, a5, a0
                  slt          a1, s6, s8
                  slt          s2, a5, a4
                  srli         s4, s3, 20
                  slli         a1, a6, 3
                  bgeu         a0, gp, 222f
                  sub          t1, s8, zero
                  lui          s10, 886055
                  bltu         t5, tp, 231f
218:              add          s2, gp, a1
                  srl          s2, s9, t0
                  srli         s4, s0, 12
                  add          s2, gp, s2
222:              or           t4, s5, s3
                  andi         a0, gp, -1272
                  bltu         s1, s7, 234f
                  xori         t6, a4, -117
                  srai         s1, s6, 16
                  lui          s5, 914070
                  blt          t0, s6, 234f
                  srl          a4, s4, s0
                  nop
231:              slti         s1, s11, -214
                  sltu         a2, t0, a0
                  bge          s4, ra, 239f
234:              sub          s3, a0, a5
                  slt          s11, s3, s4
                  bltu         s11, s7, 245f
                  slti         s4, a2, -7
                  or           s0, a7, a0
239:              xor          a7, t3, tp
                  auipc        s5, 158478
                  beq          t5, s10, 244f
                  bltu         s3, s1, 256f
                  slt          a5, s6, s5
244:              nop
245:              add          t2, a2, t2
                  xor          t6, a3, a3
                  srli         s8, a6, 4
                  nop
                  bgeu         a6, s2, 263f
                  slti         t5, t0, -1570
                  xori         a2, t0, 1596
                  bltu         s8, s1, 256f
                  bge          t0, tp, 259f
                  slt          a0, t5, zero
                  sltu         t5, s3, s10
256:              srl          gp, sp, s9
                  andi         sp, s4, 191
                  ori          tp, t5, 1101
259:              sub          t6, sp, a7
                  ori          a1, gp, 285
                  srli         s11, s8, 18
                  or           s2, s11, a4
263:              slli         t1, s10, 26
                  add          sp, gp, s7
                  lui          s5, 386153
                  lui          t0, 424452
                  addi         s5, s6, -786
                  xor          s6, t3, a4
                  blt          s9, a5, 283f
                  srli         s9, a7, 15
                  ori          a1, s7, 1623
                  xor          tp, a6, s0
                  xor          gp, s6, s1
                  sltiu        a1, t3, 261
                  xor          s3, s5, t4
                  addi         s1, t5, 1484
                  sra          a2, t4, ra
                  or           t5, gp, t2
                  sub          s0, a5, a2
                  sltu         s1, t3, t1
                  srli         t0, ra, 10
                  srai         t2, a2, 16
283:              bne          a5, s7, 300f
                  andi         s10, t2, 622
                  sll          gp, s1, ra
                  slli         a3, a2, 22
                  slt          t1, s6, s5
                  srli         t0, a4, 8
                  or           a4, ra, s8
                  slli         a5, a4, 27
                  blt          s3, s8, 293f
                  addi         s8, t5, 1032
293:              blt          t1, t4, 312f
                  add          s0, gp, t6
                  bltu         s6, s8, 304f
                  bltu         a1, s10, 307f
                  andi         t0, s4, 210
                  slt          tp, s10, s7
                  andi         a1, s5, 951
300:              bne          s0, a6, 314f
                  sll          a5, s2, a1
                  or           zero, gp, s2
                  sltiu        t4, s0, -163
304:              srai         s11, s7, 5
                  beq          t6, tp, 308f
                  bne          gp, s9, 312f
307:              sltu         s8, s2, t5
308:              slti         s9, t1, -966
                  sltu         s2, t4, gp
                  sltiu        t2, a4, 1034
                  or           zero, s9, s4
312:              addi         s6, tp, -53
                  andi         t5, zero, 1145
314:              slli         s6, a2, 22
                  slli         s9, a3, 18
                  sub          a1, a5, sp
                  srl          s6, s4, a7
                  slti         s4, s7, -95
                  or           t5, a0, tp
                  nop
                  srai         t0, t2, 12
                  bltu         s9, t6, 337f
                  auipc        t6, 173302
                  bltu         s4, sp, 328f
                  andi         s1, s8, -68
                  sltu         s2, s10, s2
                  srai         a1, a1, 18
328:              srli         s9, s0, 16
                  slti         t1, s9, -618
                  slli         sp, tp, 15
                  slli         t3, s8, 22
                  sltu         s0, s5, t0
                  bne          t5, a4, 352f
                  lui          tp, 536428
                  ori          a4, a6, 207
                  slli         s0, a2, 30
337:              bne          a7, t3, 343f
                  bge          s11, t1, 354f
                  blt          s5, s6, 353f
                  bge          t2, a4, 350f
                  bge          s6, s0, 354f
                  or           s2, ra, a1
                  nop
                  auipc        t1, 634685
                  add          zero, t5, a0
                  sra          t4, a4, t1
                  slti         sp, a6, 1778
                  blt          ra, t2, sub_1_j3 #branch to jump instr
                  slt          t5, a5, a2
                  srai         s5, zero, 0
                  nop
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
343:              nop
                  addi         t5, s5, 735
                  slli         t6, s5, 14
                  srl          t4, a0, ra
                  slt          s9, s4, ra
                  nop
                  sra          s6, s11, s5
350:              srli         zero, a5, 1
                  sra          s11, a7, s5
352:              beq          a1, t3, 354f
353:              sub          t0, s1, t0
354:              srli         s1, s5, 11
                  slt          a2, s1, a0
                  lw           t1, 4(s7)
                  srl          s1, t2, t5
                  andi         t6, s1, -1217
                  sub          a2, s9, t6
                  slt          s0, t1, gp
                  auipc        t4, 919986
                  lui          s0, 417448
                  sltiu        s10, s2, -705
                  addi         s7, s7, 48
                  nop
462:              addi x28, x6, 1
462:              jalr x28, x28, 0
sub_10:           slt          s6, t2, t6
                  addi         s7, s7, -32
                  xor          a3, a0, s8
                  xor          a0, t1, s11
                  sw           t1, 4(s7)
                  srai         s10, s1, 26
                  slt          s5, t4, t4
                  sll          s2, a6, a2
                  bne          s7, a5, 8f
                  lui          gp, 629890
                  auipc        t2, 227320
                  sll          s5, a4, t4
                  xori         t0, s9, -1913
                  srl          a1, s8, a0
8:                slli         t0, sp, 25
                  srli         a3, a3, 3
                  bge          a2, zero, 14f
                  bge          t4, t2, 17f
                  srli         t2, ra, 21
                  or           t4, zero, gp
14:               sltu         s5, t5, s11
                  or           s6, zero, s3
                  slt          s10, s7, s9
17:               slti         s9, t0, -1211
                  bltu         s11, s7, 19f
19:               srli         a4, a3, 15
                  sra          a7, s11, a5
                  srli         s1, zero, 24
                  slt          t2, sp, a7
                  beq          s1, gp, 29f
                  slti         s2, t0, -541
                  srai         a4, s1, 0
                  beq          a2, a1, 30f
                  ori          sp, s9, -647
                  sltu         s10, tp, s8
29:               bge          s10, s4, 49f
30:               nop
                  srl          s2, zero, s11
                  nop
                  add          s9, t4, gp
                  slti         t1, ra, 158
                  beq          t5, s8, 49f
                  sll          a2, s11, a4
                  nop
                  lui          s10, 605509
                  bge          a4, gp, 41f
                  nop
41:               beq          a6, a4, 54f
                  sltu         t5, t3, ra
                  slt          s11, s5, a1
                  or           s0, s7, a0
                  and          s10, a4, t4
                  auipc        t3, 1048156
                  xor          a7, a3, s6
                  xor          s3, t5, s1
49:               addi         t6, s7, 1149
                  bgeu         a0, t4, 60f
                  or           s1, t3, t6
                  srl          a4, t4, s6
                  xor          t3, s7, t2
54:               slli         a0, t5, 5
                  xor          a1, a6, s0
                  sra          a2, s3, s5
                  slti         t5, s9, -1755
                  sltu         s11, s9, s4
                  slt          t2, s6, a3
60:               lui          a2, 516877
                  xor          s0, t3, t0
                  sltu         s6, t5, ra
                  sltiu        s4, s5, -1277
                  andi         s9, a5, -1592
                  add          s4, s5, a0
                  bgeu         s11, a6, 68f
                  blt          s10, t6, 75f
68:               srl          t2, sp, a7
                  blt          s4, a1, 85f
                  beq          a0, t6, 87f
                  srli         s4, t6, 2
                  srai         a7, s6, 29
                  addi         zero, t4, -1001
                  slt          s3, s4, s8
75:               sltu         t1, s3, t4
                  lui          tp, 54010
                  beq          ra, s11, 83f
                  bne          s3, a1, 92f
                  slti         tp, a5, -1712
                  nop
                  sll          tp, a0, t2
                  or           a3, t2, a4
83:               bge          s9, t0, 92f
                  bge          t2, s7, 85f
85:               sra          a2, s0, a1
                  sltu         t4, s4, s4
87:               add          s2, ra, s6
                  auipc        gp, 549561
                  ori          t5, a6, -840
                  bltu         t0, t3, 92f
                  srli         a5, s11, 12
92:               auipc        tp, 942286
                  sll          gp, s0, t3
                  lw           t1, 4(s7)
                  slli         t2, t4, 17
                  or           s5, a2, sp
                  addi         s7, s7, 32
                  auipc        a0, 111559
                  srl          zero, tp, s2
                  xori         a4, s3, -513
                  xori         s3, t4, 528
108:              addi x19, x6, 1
108:              jalr x19, x19, 0
sub_5:            addi         s7, s7, -12
                  nop
                  sw           t1, 4(s7)
                  ori          s10, tp, 1723
                  srli         zero, a7, 17
                  slli         tp, t0, 25
                  srli         s2, gp, 25
                  nop
                  auipc        a0, 792655
                  slt          a3, t5, t0
                  xor          t3, t4, t6
                  srai         a4, s8, 4
                  sltiu        s9, s11, 1399
                  srli         s9, a3, 25
                  slt          t0, s8, a0
                  andi         a7, s10, 655
sub_5_j11:        jal          t1, sub_8 #jump sub_5 -> sub_8
                  sra          t0, s3, gp
                  lui          t0, 517145
                  bne          a5, s3, 18f
                  bltu         a1, t3, 23f
                  auipc        t4, 695219
                  sltiu        t0, s6, -209
                  srli         gp, a7, 25
                  srli         t2, tp, 20
                  beq          a3, s6, 20f
                  srli         s4, s9, 23
                  bgeu         t1, t4, 12f
                  bltu         a1, s3, 17f
12:               sltu         s3, t4, a7
                  slt          a1, zero, a6
                  bgeu         zero, t6, 34f
                  and          zero, t2, s4
                  and          s10, t6, a6
17:               slti         a3, s4, -1215
18:               srl          s2, s10, a4
                  xor          a4, s3, t4
20:               bne          t1, gp, 39f
                  slti         t5, gp, -173
                  lui          a0, 55979
23:               xori         a1, t1, -1774
                  sub          s3, s6, s0
                  bge          t0, s7, 45f
                  addi         s1, zero, -83
                  slti         tp, t2, 668
                  bltu         sp, t4, 38f
                  slli         s11, s11, 29
                  slli         s2, zero, 29
                  auipc        s10, 799965
                  bltu         s0, t0, 52f
                  nop
34:               andi         s11, a5, 1071
                  srl          s6, a1, s9
                  sub          t1, t4, s7
                  bltu         a3, s7, 52f
38:               ori          s3, s10, -1510
39:               slt          t3, a4, sp
                  sub          a2, t3, t6
                  sltu         t3, s10, tp
                  bltu         gp, s3, 46f
                  or           s5, a0, s1
                  sll          s1, a4, t6
45:               slti         t4, s3, -1912
46:               auipc        s8, 405594
                  bltu         s8, t0, 52f
                  sltu         a0, s0, s3
                  srli         s5, t5, 28
                  srl          s4, s8, a4
                  sub          a4, a0, s3
52:               andi         a3, t0, -431
                  sltu         gp, t3, t1
                  srai         t0, a6, 0
                  andi         s1, t0, 906
                  lw           t1, 4(s7)
                  slli         tp, s3, 24
                  sltiu        s0, a5, -527
                  ori          s6, a1, 906
                  addi         s7, s7, 12
                  nop
79:               addi x31, x6, 0
79:               jalr x31, x31, 0
sub_2:            addi         s7, s7, -44
                  add          s6, a2, zero
                  sw           t1, 4(s7)
                  xori         a0, a1, 1044
                  srli         a3, s11, 29
                  and          s3, a7, t2
                  sltu         sp, a7, t6
                  srli         a2, t5, 21
                  sltu         s11, s9, t1
                  and          s9, t0, a2
                  la           sp, sub_3
                  nop
                  srl          s2, s7, s9
                  andi         zero, s10, -1911
                  or           s6, t0, ra
                  sub          s1, t3, s10
                  slti         s5, tp, -529
                  addi         sp, sp, 292
                  srli         t0, s10, 8
                  srli         s2, t4, 27
                  sll          s9, t1, sp
sub_2_j5:         jalr         t1, sp, -292 #jump sub_2 -> sub_3
                  la           a5, region_1+1025 #start riscv_load_store_rand_instr_stream_0
                  lh           s6, -725(a5)
                  sh           s6, 487(a5)
                  lb           s9, 440(a5)
                  auipc        gp, 60730
                  xori         s1, a6, 117
                  lbu          s11, -348(a5)
                  ori          s5, s3, 1329
                  lbu          a3, 528(a5)
                  lbu          a2, -17(a5)
                  addi         s1, t5, -1540
                  lhu          s10, -113(a5)
                  lb           zero, 588(a5)
                  lbu          t3, 796(a5)
                  and          t1, a3, s11
                  lhu          a1, -641(a5)
                  lhu          zero, -319(a5)
                  lbu          t3, -446(a5)
                  lb           a2, -1011(a5)
                  slli         a1, s1, 24
                  lbu          t5, -1006(a5)
                  lh           tp, 655(a5)
                  lh           a4, -5(a5)
                  lw           s4, -317(a5)
                  lh           a0, 703(a5)
                  lbu          a2, -420(a5)
                  sub          s11, a1, tp
                  lb           a1, 470(a5)
                  sltiu        s5, t4, 1401
                  sw           s4, 187(a5)
                  lb           zero, -483(a5)
                  lb           a3, -287(a5)
                  sb           gp, -920(a5)
                  lbu          a4, -265(a5)
                  lbu          s2, 314(a5)
                  xor          s1, t1, a6
                  and          a1, s2, s3
                  lbu          s2, -304(a5)
                  lh           a0, -309(a5)
                  lbu          t4, -78(a5)
                  sra          t3, a5, s10
                  lbu          t2, 634(a5) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_1+1347 #start riscv_load_store_rand_instr_stream_1
                  lb           s5, -518(a5)
                  lb           zero, -602(a5)
                  lb           sp, 630(a5)
                  srai         tp, a4, 23
                  sw           a0, -211(a5)
                  sw           tp, -267(a5)
                  sb           a7, -76(a5)
                  lbu          s9, 53(a5)
                  sb           t2, -796(a5)
                  sh           s6, -1297(a5)
                  add          s9, a6, sp
                  slt          t6, t1, s10
                  lbu          a3, -1050(a5)
                  lhu          t5, 211(a5)
                  lui          s2, 685231
                  srl          s2, a7, s5
                  srli         a7, s7, 3
                  lb           s8, 154(a5)
                  lbu          a3, -924(a5)
                  sh           ra, -377(a5)
                  sb           s11, 572(a5)
                  lbu          t3, -508(a5)
                  lb           t0, -156(a5)
                  sub          s0, sp, t4
                  sb           s9, 520(a5)
                  lb           t6, -988(a5)
                  or           t3, t4, s10
                  lbu          s1, -363(a5)
                  lb           t1, 128(a5)
                  andi         s9, a2, 837
                  srli         s8, s1, 5
                  addi         zero, sp, 1384
                  andi         t0, t6, -1423
                  lui          s1, 1039305
                  slli         t3, a4, 26
                  sub          t1, sp, a4
                  lw           a4, -379(a5) #end riscv_load_store_rand_instr_stream_1
                  slt          a7, t1, a6
                  auipc        a5, 482504
                  bge          gp, zero, 17f
                  bne          a4, a0, 19f
                  beq          a2, s11, 19f
                  sub          a5, t2, t5
                  sra          gp, s6, t5
                  srl          s6, sp, t5
                  sll          s8, s11, s5
                  auipc        s8, 213802
                  bgeu         sp, zero, 14f
                  andi         a3, t2, -512
                  bge          s4, s1, 32f
                  sub          gp, zero, a1
14:               add          s9, a7, a1
                  bgeu         t3, a7, 30f
                  xor          a4, s9, t0
17:               xor          zero, s5, s4
                  beq          zero, a4, 25f
19:               lui          t5, 112173
                  bne          t1, a1, 35f
                  sll          s0, s4, s1
                  sra          sp, s7, t3
                  bltu         t4, s3, 31f
                  srai         s6, a1, 20
25:               slti         s10, t4, -1459
                  bgeu         s0, gp, 40f
                  slt          sp, tp, s11
                  sltu         s1, t0, zero
                  xori         t2, gp, 1293
30:               bge          s3, s8, 45f
31:               srl          s1, t0, s3
32:               bgeu         gp, s0, 40f
                  nop
                  sub          a0, t6, s11
35:               auipc        s2, 51205
                  beq          s2, s7, 48f
                  sltu         s9, a3, s11
                  xori         a4, s8, 766
                  sub          s10, t2, t3
40:               andi         gp, s3, 729
                  sll          s11, s11, s5
                  blt          a2, ra, 54f
                  add          s6, a2, a7
                  bge          s1, zero, 47f
45:               ori          s4, a5, 205
                  beq          ra, s5, 55f
47:               xor          t3, zero, s7
48:               bge          a5, a7, 56f
                  slti         sp, gp, 1235
                  sra          a3, a7, a2
                  sra          a7, s7, gp
                  addi         a7, s10, 282
                  lui          zero, 611034
54:               xori         s10, s5, -1710
55:               sra          t3, t1, s10
56:               xor          t1, s9, t3
                  and          zero, s2, t5
                  sltiu        s3, s0, 513
                  sll          s2, s1, t5
                  blt          t6, s3, 76f
                  bgeu         sp, t3, 80f
                  auipc        sp, 721856
                  sltu         t2, zero, t1
                  beq          t5, tp, 77f
                  slli         t6, a0, 7
                  xori         s11, s10, 1280
                  bltu         s11, a1, 82f
                  blt          a2, s5, 81f
                  auipc        t0, 384891
                  add          a7, t1, s10
                  sra          a2, a5, t6
                  add          a4, s5, a6
                  sltu         a7, t6, s5
                  lui          a7, 884685
                  xori         t5, s11, 1622
76:               bltu         a0, a7, 91f
77:               addi         s8, s0, -622
                  add          a5, t2, sp
                  xor          a1, t1, ra
80:               sll          zero, t3, a6
81:               slti         s6, s8, -1119
82:               ori          sp, t3, -246
                  bne          a3, a0, 102f
                  xori         tp, t1, -1796
                  nop
                  bne          s8, sp, 96f
                  sra          s4, t4, gp
                  lui          t1, 953611
                  and          s2, a6, s1
                  nop
91:               xor          t0, sp, zero
                  beq          ra, t1, 100f
                  slli         s11, zero, 13
                  srl          s0, s8, a0
                  slti         s5, a4, 441
96:               nop
                  ori          s11, t0, 933
                  slti         s4, t1, -1926
                  add          s8, sp, s2
100:              and          s5, t5, s4
                  addi         a7, ra, 374
102:              bne          a2, t6, 117f
                  add          zero, s3, t0
                  sltiu        t1, ra, 1400
                  lui          a7, 1037033
                  bne          s4, ra, 124f
                  or           a5, s11, s1
                  beq          zero, s2, 126f
                  sll          t4, s5, s4
                  lui          zero, 132874
                  and          a2, a4, zero
                  slli         t1, a0, 24
                  add          sp, a4, s1
                  slt          a7, a4, s1
                  srl          s9, tp, a1
                  bltu         zero, ra, 118f
117:              beq          t5, tp, 127f
118:              auipc        s11, 618122
                  bge          s3, t1, 133f
                  bge          s11, s4, 136f
                  bltu         a6, ra, 130f
                  srli         a1, a4, 18
                  ori          s10, s2, 432
124:              slt          s5, s4, a0
                  bge          zero, a0, 133f
126:              xori         t5, a6, -1203
127:              blt          a7, t5, 147f
                  slt          t0, zero, s2
                  sltu         t3, t3, t2
130:              slli         s10, t2, 11
                  ori          zero, a2, 1229
                  ori          s6, s6, 525
133:              auipc        a5, 667282
                  beq          s6, t5, 149f
                  or           t3, tp, s8
136:              auipc        a7, 300275
                  addi         s2, a2, -1689
                  srl          s0, s10, sp
                  sltiu        s8, a4, 1106
                  beq          a3, s6, 155f
                  andi         a7, a0, 424
                  and          s10, s1, sp
                  slti         s11, s0, 1807
                  and          s5, s0, s5
                  sub          s0, t2, t1
                  srli         s5, a7, 1
147:              ori          a2, s10, -52
                  lui          a7, 428010
149:              auipc        t4, 741157
                  bge          t3, t5, 165f
                  slli         t2, t2, 24
                  sra          t4, s1, s6
                  xor          t0, t3, s0
                  bge          t5, s6, 172f
155:              srl          s9, a5, a5
                  xori         a0, a3, 88
                  bltu         a2, a7, 159f
                  nop
159:              srl          t6, zero, s7
                  beq          zero, s1, 172f
                  blt          s7, ra, 180f
                  sra          a4, a5, t4
                  or           s5, ra, a5
                  auipc        tp, 527181
165:              addi         s1, s1, 2023
                  or           s4, t4, t2
                  slli         t4, s10, 26
                  or           a5, a1, a0
                  addi         a1, s9, -1582
                  slli         s5, s2, 31
                  srai         gp, t5, 2
                  lui          a4, 462169
                  sub          s10, s6, zero
                  lui          gp, 554268
                  or           a7, zero, s2
                  or           s1, a2, a3
                  and          t3, s1, s11
                  ori          zero, s9, 779
                  bne          s5, s7, sub_2_j4 #branch to jump instr
                  xor          t3, gp, a1
sub_2_j4:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  auipc        tp, 554973
                  ori          s5, a6, 1587
172:              xor          t3, s7, s9
                  srl          tp, s0, s2
                  bltu         s0, s9, 189f
                  andi         t2, a0, -100
                  sll          sp, t5, a0
                  bne          tp, s7, 185f
                  nop
                  add          t3, s5, t1
180:              sltu         t0, s6, s10
                  bne          t6, s4, 199f
                  bge          s8, s11, 186f
                  bne          ra, a0, 191f
                  sra          s10, sp, t5
185:              slt          sp, t1, s8
186:              slli         t0, s0, 12
                  bge          a3, sp, 202f
                  beq          a4, t3, 204f
189:              xori         s1, s11, -1203
                  or           a0, s3, gp
191:              lui          t5, 986477
                  add          s4, tp, s10
                  beq          s2, s3, 208f
                  slli         t5, a2, 15
                  bltu         t1, s10, 210f
                  slli         t0, t0, 15
                  slti         a2, s0, -241
                  nop
199:              add          t6, zero, a2
                  add          s2, tp, t2
                  and          a1, a5, sp
202:              slli         t2, s4, 28
                  slli         s3, s3, 19
204:              bltu         a4, s9, 223f
                  addi         t6, s8, -578
                  beq          sp, s11, 219f
                  and          t6, a6, s11
208:              bne          t0, sp, 215f
                  sll          s5, s3, s3
210:              srai         s2, s3, 6
                  nop
                  bgeu         s3, s7, 227f
                  and          t5, t0, ra
                  add          zero, t0, s10
215:              or           t4, zero, t2
                  bge          s11, t5, 229f
                  addi         tp, t0, 1368
                  auipc        t6, 561930
219:              slli         s5, s10, 4
                  auipc        s1, 708972
                  bge          t0, t6, 233f
                  bge          s0, s3, 225f
223:              bge          ra, s4, 231f
                  addi         a7, a6, -595
225:              ori          t1, t1, 90
                  bgeu         t1, a6, 234f
227:              sll          s5, s2, t2
                  and          a0, s4, a3
229:              bge          t6, a7, 244f
                  xori         t4, gp, 575
231:              bge          s10, t6, 250f
                  andi         s11, s6, 1181
233:              xori         a1, t4, -1224
234:              srli         t0, a7, 14
                  xor          s3, a1, t6
                  srai         a0, s1, 26
                  ori          t2, a5, -25
                  or           t3, t2, s11
                  lui          sp, 76768
                  lui          s0, 6473
                  addi         s11, s7, 1162
                  addi         a0, t6, -1690
                  and          t6, a1, a7
244:              srl          a3, s11, a2
                  or           sp, a4, a4
                  bge          zero, t4, 258f
                  and          s6, s6, a5
                  sra          s8, a4, s9
                  srli         s0, s10, 26
250:              srli         t6, s3, 26
                  bgeu         t3, a1, 267f
                  srli         a4, t2, 22
                  addi         a2, s6, 978
                  bge          s6, a6, 269f
                  bge          tp, s6, 270f
                  add          a2, s1, gp
                  srai         t1, s4, 12
258:              lui          s8, 118379
                  bltu         a2, sp, 273f
                  bge          s10, sp, 268f
                  bne          t1, s1, 273f
                  add          s3, a5, tp
                  slt          t4, t2, t5
                  bltu         zero, a6, 282f
                  sub          tp, zero, sp
                  beq          s10, tp, 279f
267:              add          sp, t1, a4
268:              beq          tp, zero, 275f
269:              sra          t0, a5, s2
270:              bne          t4, sp, 285f
                  xori         s2, a6, -1506
                  lui          s3, 398433
273:              and          tp, a5, s11
                  and          s6, s6, a4
275:              lui          zero, 183457
                  ori          t1, t3, 749
                  auipc        t5, 875985
                  lui          s4, 389772
279:              srli         sp, gp, 25
                  sltu         gp, s3, a4
                  sll          s2, s7, t5
282:              blt          a1, t4, 289f
                  bgeu         a1, t5, 289f
                  xori         a1, s5, -1436
285:              or           a1, s2, s11
                  xori         a1, tp, -565
                  auipc        a2, 535139
                  xori         gp, a6, 1510
289:              sltu         t3, a4, s5
                  lw           t1, 4(s7)
                  slti         s8, s10, -1326
                  sub          s5, t3, a7
                  srli         sp, a2, 10
                  or           s11, a5, tp
                  auipc        a0, 465958
                  sltiu        a7, s10, 1992
                  auipc        t6, 251787
                  sltiu        a3, s7, -1898
                  addi         s7, s7, 44
                  nop
415:              addi x13, x6, 0
415:              jalr x13, x13, 0
sub_6:            slti         t6, t4, 1364
                  addi         s7, s7, -44
                  sra          s4, tp, a3
                  slti         a7, a2, -1557
                  xor          s9, zero, s9
                  andi         t6, s4, -458
                  nop
                  andi         s4, t3, 182
                  slli         gp, a7, 2
                  sw           t1, 4(s7)
                  andi         zero, t4, -501
                  andi         a1, a1, 34
                  la           gp, region_1+1084 #start riscv_load_store_rand_instr_stream_2
                  xor          a2, gp, tp
                  slti         a3, t3, 1718
                  xori         a7, s1, 1804
                  and          s8, a3, s11
                  sll          s8, t1, s6
                  sra          t0, s5, t5
                  auipc        t1, 615846
                  sb           a4, -473(gp)
                  sb           s9, -656(gp)
                  add          t4, s2, t0
                  lb           s1, 145(gp)
                  sb           t6, -667(gp)
                  andi         t0, tp, -863
                  sltu         zero, s8, s7
                  or           s0, a2, s3
                  lbu          zero, -619(gp)
                  lui          s9, 525090
                  andi         t6, zero, -1633
                  sb           s1, 455(gp)
                  and          s8, t0, t5
                  andi         tp, s0, 826
                  and          t1, t1, zero
                  sltiu        a4, s2, -830
                  addi         a1, s8, -1670
                  sltu         s2, t4, s4
                  sw           t6, 708(gp)
                  lb           s10, 626(gp)
                  sb           t6, -717(gp)
                  sb           a3, 389(gp)
                  lbu          s11, -621(gp)
                  sh           a1, -284(gp)
                  lb           s6, 51(gp)
                  lbu          s5, -647(gp)
                  lb           zero, 307(gp) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_0+177 #start riscv_load_store_rand_instr_stream_6
                  lbu          a0, 72(s9)
                  srl          gp, s9, s9
                  slti         tp, t2, -1904
                  sh           s5, 437(s9)
                  sub          gp, tp, s2
                  lbu          t3, 1352(s9)
                  srai         t1, a1, 18
                  sb           tp, -75(s9)
                  add          a5, a1, tp
                  lb           s10, 1324(s9)
                  add          a1, s0, s10
                  sh           a0, 97(s9)
                  lui          a5, 780631
                  sltiu        s8, zero, 1711
                  lb           a4, 1541(s9)
                  slt          s1, t5, a2
                  sltiu        a2, t2, -545
                  andi         a4, a4, -1670
                  lbu          t6, 1589(s9)
                  sb           t5, 1054(s9)
                  sb           tp, 1253(s9)
                  xori         s8, s7, 988
                  xor          t5, gp, t2
                  sb           s11, 821(s9)
                  lb           s3, 1068(s9)
                  lb           s4, 1289(s9)
                  lbu          t1, -46(s9)
                  add          s5, s2, s7
                  lh           s6, 1285(s9)
                  auipc        t5, 698367
                  and          t4, s7, s0
                  lbu          a3, 1256(s9)
                  sra          t4, s7, t4
                  lui          t0, 104892
                  auipc        s11, 1011166
                  lbu          t2, 1100(s9)
                  srl          a3, t1, t3
                  lbu          s4, 1658(s9)
                  srli         a0, s3, 30
                  slti         a2, t0, -1458
                  lb           s5, 558(s9)
                  auipc        s4, 319933
                  sll          a1, s11, s10
                  add          zero, s8, zero
                  lb           zero, 90(s9)
                  lb           gp, 1138(s9)
                  sb           s0, 1344(s9)
                  lbu          a1, 1199(s9)
                  lh           s4, -33(s9) #end riscv_load_store_rand_instr_stream_6
                  la           a3, region_0+970 #start riscv_load_store_rand_instr_stream_13
                  lh           s5, -10(a3)
                  lh           s8, 10(a3)
                  lb           s9, -16(a3)
                  lb           t5, 8(a3)
                  auipc        s1, 686801
                  slt          t5, ra, t6
                  sb           s6, -13(a3)
                  or           s9, s8, s8
                  lbu          s5, 3(a3)
                  srai         a4, s3, 4
                  auipc        s8, 444806
                  lui          t6, 884324
                  srli         t1, a7, 8
                  slti         s6, s7, -1878
                  lb           s8, -2(a3)
                  sh           s7, 2(a3)
                  lb           s5, 11(a3)
                  slli         t4, s5, 27
                  srli         t6, a1, 10
                  slt          a7, a5, a6
                  sltu         s11, a7, a1
                  lh           sp, 2(a3)
                  or           tp, a1, t5
                  srli         sp, s2, 27
                  srl          a0, a6, a3
                  add          a2, a0, t1
                  lbu          sp, -5(a3)
                  srli         a4, a7, 31
                  sra          a4, s7, s9
                  auipc        a1, 313710
                  sw           gp, -14(a3)
                  sh           s4, 16(a3)
                  sltiu        gp, s10, -2000
                  nop
                  lh           tp, -6(a3)
                  lbu          s2, -15(a3)
                  srai         a2, s1, 30
                  lb           s10, -6(a3)
                  sb           a4, -1(a3) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_0+1043 #start riscv_load_store_rand_instr_stream_18
                  srli         a7, t1, 18
                  sh           t3, 599(sp)
                  ori          a7, t4, 1315
                  xori         tp, s9, 1672
                  lh           t4, -87(sp)
                  lb           s8, 156(sp)
                  sub          t0, s6, a2
                  lb           s6, 204(sp)
                  auipc        s8, 331709
                  lbu          s8, -132(sp)
                  nop
                  xori         t4, s6, 1316
                  slti         s8, s0, -1926
                  or           s5, tp, t1
                  lbu          s9, -817(sp)
                  andi         zero, s7, -1401
                  lbu          gp, 716(sp)
                  lb           s9, -800(sp)
                  sb           t0, 280(sp)
                  sw           s5, 357(sp)
                  srli         tp, a5, 31
                  sw           t1, 777(sp)
                  slli         a5, t2, 11
                  slli         a7, sp, 8
                  lhu          a1, -917(sp)
                  lbu          s2, -829(sp)
                  lw           s4, -763(sp)
                  slli         s4, s10, 24
                  xori         s8, t1, -1532
                  lb           s10, -566(sp)
                  slt          a2, s7, a6
                  add          a7, t2, zero
                  srai         t1, s3, 10
                  ori          t1, t6, -1152
                  sb           a5, 954(sp)
                  slti         tp, s3, 3
                  lb           s6, 120(sp)
                  xori         s9, s8, 1160
                  andi         a1, t4, 1491
                  lb           s5, -746(sp)
                  lb           t4, 343(sp)
                  ori          a2, a3, 1108
                  lhu          t0, -749(sp)
                  lb           t0, 164(sp)
                  srli         s0, s5, 0
                  addi         t4, t5, 709
                  sll          t4, t4, s8
                  lw           t5, -743(sp) #end riscv_load_store_rand_instr_stream_18
                  la           sp, region_1+208 #start riscv_load_store_rand_instr_stream_5
                  lb           s5, 13(sp)
                  lui          s2, 487121
                  xori         s8, s4, -200
                  lb           t5, -13(sp)
                  lbu          zero, -15(sp)
                  lbu          t6, -3(sp)
                  lbu          s10, 8(sp)
                  ori          s0, sp, -1375
                  lbu          t2, -9(sp)
                  slt          s6, a2, t4
                  auipc        t2, 478975
                  sub          a1, t0, a6
                  add          a3, t1, a4
                  lbu          a0, -10(sp)
                  and          t6, ra, t0
                  lbu          s4, 5(sp)
                  add          a5, s5, gp
                  sll          zero, s3, s8
                  lbu          a5, 12(sp)
                  lbu          t0, -1(sp)
                  lbu          s5, 16(sp)
                  sll          t4, a2, zero
                  and          s11, zero, s1
                  lb           a2, -16(sp)
                  lb           s1, -9(sp)
                  lbu          s4, 11(sp)
                  nop
                  sll          s1, t6, s1
                  lbu          a3, -5(sp)
                  sb           t6, -2(sp)
                  lbu          s0, 2(sp)
                  lhu          gp, 2(sp)
                  lbu          s9, 3(sp)
                  lbu          s4, -15(sp)
                  lhu          t2, -16(sp)
                  sub          a3, s11, t1
                  lh           a4, 8(sp)
                  and          s0, s5, s3
                  sb           a5, -16(sp)
                  lb           s8, -15(sp)
                  lh           a3, 10(sp)
                  lhu          s8, 6(sp) #end riscv_load_store_rand_instr_stream_5
                  la           a4, region_1+752 #start riscv_load_store_rand_instr_stream_15
                  sltiu        s6, a2, -374
                  lb           a3, 59(a4)
                  and          s10, s2, a0
                  xori         t5, s11, -778
                  lb           s6, 175(a4)
                  slt          t3, s7, s9
                  slli         s11, sp, 6
                  lbu          s1, -79(a4)
                  sb           a7, -116(a4)
                  lb           t4, 126(a4)
                  sltu         s10, t4, gp
                  sll          s6, a2, gp
                  lbu          s8, 97(a4)
                  or           t1, a3, s10
                  srl          s0, s7, a0
                  lui          s11, 1009837
                  sb           t0, -255(a4)
                  lbu          t5, -243(a4)
                  sltu         t4, t6, ra
                  auipc        s3, 312969
                  lhu          s10, -34(a4)
                  sltiu        s0, zero, -1647
                  xor          a7, a5, a3
                  ori          a7, s7, 16
                  srli         s2, s9, 13
                  add          s9, gp, t3
                  sltiu        s0, t3, 526
                  or           sp, s0, a4
                  sub          t6, a1, ra
                  xor          tp, a3, a2
                  sltu         s1, s3, s4
                  sra          t3, a4, s8
                  lui          t2, 563242
                  lhu          s6, 8(a4) #end riscv_load_store_rand_instr_stream_15
                  la           s11, region_1+865 #start riscv_load_store_rand_instr_stream_1
                  nop
                  sll          a2, a5, sp
                  sb           a1, 50(s11)
                  lbu          a3, -142(s11)
                  lbu          s1, 194(s11)
                  lbu          t6, 198(s11)
                  lw           s6, 27(s11)
                  sll          s6, s0, t2
                  slti         t2, a6, -1610
                  lh           gp, -239(s11)
                  xori         s5, t6, -54
                  sh           zero, -227(s11)
                  lhu          s6, -103(s11)
                  lb           s2, -218(s11)
                  lh           zero, -143(s11)
                  auipc        s0, 508499
                  sb           a2, 28(s11)
                  auipc        s3, 924923
                  auipc        s10, 794081
                  xor          a7, s5, s0
                  sh           s9, 185(s11)
                  auipc        t1, 30638
                  and          t1, t6, s7
                  lb           t0, -252(s11)
                  sltiu        t1, t3, -1014
                  lb           s5, -64(s11)
                  sb           t5, -40(s11)
                  sltu         a1, s10, s0
                  srli         t0, a3, 30
                  lb           s5, 0(s11) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_1+1315 #start riscv_load_store_rand_instr_stream_19
                  lhu          tp, -117(t3)
                  srli         s5, t5, 20
                  lbu          t5, 174(t3)
                  srl          zero, s9, s6
                  slli         a1, s4, 22
                  sb           s2, 66(t3)
                  lb           s6, -6(t3)
                  and          a4, s6, a4
                  sb           s10, -151(t3)
                  lb           t5, 198(t3)
                  sll          s11, s10, a6
                  nop
                  sb           s5, 177(t3)
                  sra          s9, s3, s4
                  ori          s4, a6, 31
                  sb           a6, 86(t3)
                  slt          a1, t2, a0
                  lbu          a5, 71(t3)
                  slt          s4, zero, s11
                  lb           s6, -64(t3)
                  and          s3, a1, t6
                  or           s3, s11, t1
                  slti         a7, a1, 131
                  slti         a0, a4, 335
                  lb           t2, 108(t3)
                  sb           a0, -48(t3) #end riscv_load_store_rand_instr_stream_19
                  la           sp, region_1+1365 #start riscv_load_store_rand_instr_stream_17
                  addi         t6, ra, 68
                  sb           a3, 164(sp)
                  srli         t4, t6, 20
                  lb           s6, 74(sp)
                  sb           t2, -78(sp)
                  srli         t3, s4, 13
                  sb           s5, 242(sp)
                  srl          s6, a0, t3
                  sb           a5, 187(sp)
                  auipc        a5, 325451
                  auipc        s0, 857439
                  lbu          s4, -4(sp)
                  sb           a2, 159(sp)
                  srl          s10, s2, a2
                  srl          s6, t6, t4
                  and          s9, sp, zero
                  srl          zero, s6, a1
                  sb           s5, 2(sp)
                  xori         t0, gp, -1735
                  slti         s2, t0, -542
                  sll          a4, a3, a0
                  andi         zero, a5, 1235
                  sb           s5, 16(sp)
                  sltu         a7, s8, s2
                  lb           s3, -79(sp)
                  andi         a5, t5, 685
                  lbu          zero, -32(sp)
                  lb           a3, 104(sp)
                  srl          a1, t2, t5
                  lbu          a1, 248(sp)
                  and          s0, a4, t1
                  add          s2, t5, a5
                  or           t6, s0, t0
                  sw           t0, 47(sp)
                  lbu          a1, 68(sp)
                  or           t6, a1, t1
                  andi         zero, s4, 2006
                  ori          s10, t5, 18
                  sb           s9, 126(sp)
                  sh           a1, 11(sp)
                  xor          s6, t0, s8
                  auipc        t6, 162100
                  slli         s1, a7, 8
                  lb           s2, -40(sp) #end riscv_load_store_rand_instr_stream_17
                  la           a4, region_0+1024 #start riscv_load_store_rand_instr_stream_16
                  lb           sp, 1(a4)
                  lb           s11, -127(a4)
                  lbu          gp, -246(a4)
                  srli         gp, s4, 16
                  sb           s7, 51(a4)
                  lbu          s0, 124(a4)
                  sll          s3, t1, a2
                  lhu          s0, -160(a4)
                  sub          zero, a2, t4
                  lbu          a2, 74(a4)
                  lbu          a0, 187(a4)
                  lb           gp, -243(a4)
                  sll          s11, s11, t5
                  sll          a3, s11, t3
                  andi         s11, gp, 1569
                  lb           t4, -97(a4)
                  and          a1, t4, a1
                  sltu         s4, t4, t0
                  lb           t6, 209(a4)
                  lw           t6, -32(a4)
                  sb           s7, 91(a4)
                  lhu          a3, -4(a4)
                  lb           tp, 115(a4)
                  xor          gp, a6, s5
                  lbu          t4, -35(a4)
                  xor          a5, t6, t6
                  or           a1, s8, s2
                  lbu          gp, 14(a4)
                  sb           a0, 3(a4)
                  and          s10, tp, s10
                  sb           t5, -253(a4)
                  xori         t1, s3, 311
                  lbu          t6, -202(a4)
                  sra          s6, gp, s7
                  lui          s4, 328618
                  sltu         s0, t1, t0
                  or           a7, t6, s9
                  lb           t2, -225(a4)
                  sb           t4, -94(a4)
                  lb           s11, 227(a4)
                  xor          t5, s5, t2
                  sb           s0, 42(a4)
                  sll          t1, s0, t4
                  srai         a1, t4, 31
                  addi         t1, t2, -1070
                  addi         a3, t6, 709
                  sh           s6, -96(a4)
                  lbu          a2, -51(a4)
                  sh           t4, 178(a4) #end riscv_load_store_rand_instr_stream_16
                  la           t3, region_1+1696 #start riscv_load_store_rand_instr_stream_9
                  lb           s8, -181(t3)
                  xori         zero, gp, 1702
                  lhu          s11, 80(t3)
                  lb           s4, -31(t3)
                  srl          s1, a6, s7
                  or           sp, s3, s7
                  srl          a7, s10, a0
                  srai         t2, s6, 20
                  nop
                  sb           t6, 125(t3)
                  sra          s11, s6, zero
                  andi         t1, s5, -1886
                  lb           t4, -85(t3)
                  xori         zero, s3, 1173
                  lb           a4, 58(t3)
                  add          a4, gp, s6
                  sb           s4, -249(t3)
                  lhu          t2, -224(t3)
                  sltiu        t4, s6, 1037
                  srai         s2, a0, 24
                  slti         s0, s7, -2002
                  srli         sp, a4, 26
                  lb           s2, -67(t3)
                  slli         t0, t6, 16
                  lbu          t0, 67(t3)
                  xori         s0, t6, 1465
                  addi         a5, t2, 1932
                  srli         a1, t1, 11
                  sub          zero, sp, s11
                  addi         s3, s11, 464
                  sh           tp, -240(t3)
                  lbu          a1, -25(t3)
                  lbu          s8, -211(t3)
                  slt          s2, t3, a7
                  srl          s3, t3, t3
                  lbu          s9, -61(t3)
                  lb           t2, 37(t3)
                  auipc        zero, 337502
                  sh           t0, -146(t3)
                  sw           s11, -120(t3)
                  lhu          s5, -110(t3)
                  andi         s6, s6, -1903
                  slt          s10, a0, t3
                  lb           s8, -233(t3)
                  lb           t1, 184(t3)
                  sub          sp, sp, s6
                  or           tp, s6, a0
                  sh           s11, -56(t3)
                  lb           s6, 227(t3)
                  lbu          a4, 45(t3)
                  lw           s1, -8(t3) #end riscv_load_store_rand_instr_stream_9
                  la           tp, region_0+1290 #start riscv_load_store_rand_instr_stream_14
                  lb           t6, -9(tp)
                  add          a5, t6, t6
                  slt          t2, a3, t2
                  lbu          s5, 39(tp)
                  nop
                  sltu         s2, t5, gp
                  sh           s9, -4(tp)
                  lbu          a4, -61(tp)
                  lbu          zero, -55(tp)
                  sb           s6, -27(tp)
                  sb           s0, -47(tp)
                  sra          t6, s1, t5
                  sra          s11, t6, sp
                  lhu          s3, 50(tp)
                  sh           s9, 24(tp)
                  sb           s4, 63(tp)
                  ori          a0, s7, -1142
                  sltu         sp, a0, a6
                  lbu          a5, 52(tp)
                  sra          t4, s0, s9
                  sltu         a0, t5, s1
                  sb           s11, 1(tp)
                  lbu          a3, -64(tp)
                  or           s8, a5, a5
                  srl          s2, gp, s8
                  add          a1, sp, gp
                  lbu          a5, -1(tp)
                  lb           t0, 43(tp)
                  lb           s4, 30(tp)
                  lbu          a2, 11(tp)
                  lhu          t0, 40(tp)
                  andi         t0, tp, -2040
                  sb           a1, 59(tp)
                  sra          t4, s0, a1
                  sub          s4, s5, s2
                  sll          a5, s11, gp
                  sb           a4, -23(tp)
                  slti         a5, t6, 1099
                  ori          a1, s6, 1839
                  lui          s9, 484101
                  sltiu        s10, a3, 315
                  lb           s5, 37(tp)
                  lb           t0, 51(tp)
                  lui          s9, 161420
                  srli         s5, s11, 8
                  srl          t3, gp, a5
                  sb           t0, -7(tp)
                  sh           s0, -16(tp) #end riscv_load_store_rand_instr_stream_14
                  la           s1, region_0+45 #start riscv_load_store_rand_instr_stream_3
                  sb           s7, -29(s1)
                  and          s11, a5, tp
                  lbu          s8, -10(s1)
                  sb           zero, -10(s1)
                  sltu         s9, a6, s2
                  sltiu        sp, t4, 1105
                  lbu          gp, -30(s1)
                  lbu          t3, -40(s1)
                  sw           t0, -45(s1)
                  sb           a4, -34(s1)
                  lh           s3, 63(s1)
                  sb           s9, -8(s1)
                  lh           t6, -43(s1)
                  sub          t2, tp, s8
                  xori         s9, a4, -1551
                  ori          tp, s3, -1721
                  sltu         sp, a0, t0
                  lh           a0, -25(s1)
                  lb           s6, -4(s1)
                  lui          a2, 156548
                  sra          t6, s3, a2
                  add          a4, t3, a2
                  lb           s2, -44(s1)
                  slli         t2, s6, 24
                  slli         s11, t6, 27
                  lb           t6, -16(s1)
                  andi         a4, s5, 457
                  lbu          a3, -29(s1)
                  lb           s10, 21(s1)
                  lb           s9, -4(s1)
                  lb           t2, 36(s1)
                  slli         s9, a5, 8
                  xor          a5, a7, s6
                  lw           t2, 47(s1)
                  lb           s2, 11(s1)
                  srli         s11, s3, 21
                  nop
                  lh           s6, -23(s1)
                  lbu          s4, 52(s1)
                  sh           s5, -23(s1)
                  sll          a4, zero, t4
                  srli         a1, ra, 12
                  sh           a5, -43(s1)
                  lbu          s11, 54(s1)
                  lhu          t2, 5(s1)
                  sb           t6, -9(s1)
                  sb           sp, -36(s1) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+658 #start riscv_load_store_rand_instr_stream_11
                  srli         a1, t6, 5
                  lw           a7, -58(sp)
                  xori         s11, s9, 882
                  sb           s1, -133(sp)
                  sltiu        a5, a2, -1934
                  slli         s5, t1, 13
                  sltu         s2, t4, a0
                  sub          s2, s4, s2
                  ori          tp, t1, 1661
                  lui          s10, 991253
                  add          t5, tp, t5
                  lui          a3, 406080
                  sb           s1, 107(sp)
                  lb           t0, -255(sp)
                  sltu         a4, t4, s4
                  srl          a4, sp, t4
                  nop
                  xori         a4, s0, -460
                  ori          t5, s1, 1855
                  slti         zero, t3, -704
                  lbu          s10, 56(sp)
                  sb           a1, 3(sp)
                  auipc        s3, 32488
                  sltiu        a2, a2, 1883
                  addi         a5, s1, 602
                  slli         s10, t4, 30
                  srai         s10, s2, 2
                  sh           s7, 16(sp)
                  xori         a4, s5, 1725
                  auipc        t5, 598321
                  add          t0, s1, s9
                  lb           a2, 11(sp)
                  xor          s6, a3, tp
                  lb           a2, 109(sp)
                  lbu          t3, -175(sp)
                  sltu         s8, t6, a2
                  srli         s11, s5, 20
                  lbu          s2, -79(sp)
                  srai         t3, s7, 29
                  srli         t6, s5, 11
                  lh           t6, -14(sp) #end riscv_load_store_rand_instr_stream_11
                  la           t0, region_1+1698 #start riscv_load_store_rand_instr_stream_12
                  sh           a7, -372(t0)
                  lh           t3, -820(t0)
                  nop
                  lb           tp, -1689(t0)
                  sltiu        a7, s8, 240
                  lb           a5, 31(t0)
                  lbu          s4, 59(t0)
                  lw           s0, -1182(t0)
                  ori          a0, t3, 164
                  lbu          s9, -1625(t0)
                  sb           s5, 269(t0)
                  auipc        s6, 58177
                  lw           s0, -1550(t0)
                  lb           s5, -642(t0)
                  sra          s3, s4, tp
                  srl          s8, s1, s0
                  srai         zero, a5, 28
                  lbu          zero, -1383(t0)
                  sh           a0, -302(t0)
                  lb           t6, -321(t0)
                  ori          t1, s2, 1053
                  sra          t5, s4, t2
                  sb           t1, -1248(t0)
                  andi         s11, ra, -1575
                  lb           s9, -1347(t0) #end riscv_load_store_rand_instr_stream_12
                  la           a2, region_0+1698 #start riscv_load_store_rand_instr_stream_7
                  lb           a1, -44(a2)
                  xori         a5, s4, 1683
                  addi         t2, ra, -702
                  lbu          s1, 91(a2)
                  sh           s3, -142(a2)
                  sb           s6, -23(a2)
                  sltiu        gp, t4, -1271
                  xori         s6, t5, -688
                  lbu          s6, -235(a2)
                  add          t5, a0, s3
                  lb           t5, 163(a2)
                  srl          s2, s5, a1
                  slli         a4, t5, 19
                  sh           s8, -236(a2)
                  andi         tp, s11, -1250
                  sb           s10, -129(a2)
                  lb           a0, -17(a2)
                  lbu          t3, 5(a2)
                  sltiu        t5, a5, 95
                  sb           t0, 141(a2)
                  lb           s1, 30(a2)
                  sb           s2, 117(a2)
                  sb           s4, -101(a2)
                  ori          a7, a7, -392
                  lb           t0, -235(a2)
                  lb           s10, 17(a2)
                  lbu          a1, -249(a2)
                  lui          s4, 740932
                  slt          a1, s4, s4
                  sltiu        gp, s6, 373
                  lh           s8, -246(a2)
                  lhu          tp, -196(a2)
                  sb           s10, -153(a2)
                  or           s6, s6, s6
                  slli         s5, t1, 8
                  lh           s11, 42(a2)
                  andi         a4, sp, 355
                  sb           s0, 136(a2)
                  sb           s7, 219(a2) #end riscv_load_store_rand_instr_stream_7
                  nop
                  nop
                  bgeu         t0, t4, 10f
                  srl          s8, a2, a1
                  slli         t3, a0, 20
                  sra          s11, s7, a2
                  xor          s4, s11, a3
                  andi         sp, s7, -290
                  and          s9, s11, zero
                  add          s8, s9, s7
10:               beq          a1, a6, 22f
                  sub          s11, s4, tp
                  auipc        t4, 965096
                  sll          t1, a7, s9
                  bgeu         tp, a1, 25f
                  xori         a4, s11, 30
                  sll          s0, a6, gp
                  lui          a1, 776718
                  srl          s0, s11, s2
                  add          s1, a6, t4
                  sra          a0, a6, a4
                  bne          t0, s9, 38f
22:               bne          s8, s10, 40f
                  sll          t4, t6, t6
                  sltiu        a3, t6, -467
25:               bne          t3, t3, 43f
                  bge          s2, a3, 29f
                  bne          s7, a6, 38f
                  xor          t4, a7, s10
29:               andi         s9, a3, -1743
                  xori         zero, s4, -622
                  bgeu         t0, s9, 37f
                  ori          gp, sp, 66
                  lui          t0, 502484
                  sltu         a0, t4, s4
                  xor          sp, t3, a0
                  slli         tp, a0, 16
37:               srai         t0, gp, 8
38:               bltu         s5, t3, 52f
                  addi         a3, s2, -416
40:               andi         s5, t3, -1998
                  or           a7, a3, t0
                  bgeu         s8, s5, 57f
43:               sll          t2, t5, a6
                  slli         s8, t2, 10
                  beq          s2, a2, 46f
46:               slli         s5, sp, 16
                  xori         a2, s6, -2047
                  addi         gp, a4, -1553
                  bne          a1, s4, 51f
                  bgeu         t4, t3, 52f
51:               sra          t1, a1, s2
52:               blt          a2, s11, 71f
                  beq          tp, s5, 58f
                  sra          s2, s9, s9
                  ori          s4, t0, 544
                  sltiu        s4, s7, -1086
57:               or           s3, t3, s4
58:               addi         a3, s9, -1784
                  sra          s0, ra, s0
                  sltu         t3, s11, t5
                  slt          t2, s5, t5
                  addi         t2, ra, 781
                  addi         s5, t4, 646
                  and          s3, s4, tp
                  xori         sp, sp, -1975
                  or           a5, t3, s9
                  slt          s5, a4, s8
                  sub          t6, a6, ra
                  lui          s2, 4403
                  bgeu         a7, gp, 90f
71:               slti         t5, zero, 133
                  srai         a0, zero, 21
                  sll          s1, s8, a5
                  xor          t1, a0, a3
                  andi         a3, s11, 1797
                  and          t2, s11, t1
                  sub          t4, ra, t1
                  or           s9, t6, a6
                  srai         t4, gp, 20
                  beq          s6, a6, 90f
                  andi         s9, s5, 1575
                  srai         s9, s2, 2
                  xori         s8, s6, 1982
                  sltiu        zero, a3, -30
                  xori         s6, s5, 1790
                  auipc        s11, 780128
                  blt          s9, a3, 96f
                  slli         s8, t2, 5
                  bltu         sp, a5, 99f
90:               and          a7, s2, a3
                  srl          s10, s9, a5
                  auipc        t4, 433077
                  bne          t6, t1, 100f
                  nop
                  nop
96:               beq          s2, a0, 113f
                  bgeu         t6, s0, 110f
                  add          t4, a3, t2
99:               sra          t5, gp, t5
100:              srai         a1, s7, 13
                  slli         s9, s4, 2
                  sltiu        a5, a7, 1920
                  or           s5, a6, t1
                  slli         s0, zero, 16
                  nop
                  slti         t0, s1, -1848
                  nop
                  sltiu        a7, gp, -343
                  bltu         t4, a1, 122f
110:              lui          s6, 489229
                  lui          t5, 170946
                  sub          a1, t1, s4
113:              bge          s6, s8, 118f
                  sll          a2, a6, s7
                  sub          a3, a4, s1
                  bne          a4, t2, 136f
                  xor          s9, a7, t2
118:              sra          t6, a1, s6
                  slt          t1, a0, a0
                  slt          t3, s7, sp
                  sltiu        s0, gp, 1091
122:              andi         s0, t3, 1393
                  xor          s2, a2, t2
                  slti         s11, a6, -645
                  and          s0, tp, t1
                  or           t0, t6, a4
                  xor          a3, s10, a6
                  srai         s10, a0, 4
                  lui          s6, 398585
                  slti         s8, zero, -729
                  xori         s8, s9, -1155
                  lui          s11, 277422
                  bgeu         s9, s1, 153f
                  ori          s8, s2, 270
                  sltu         a2, s11, s7
136:              or           t6, t6, s5
                  andi         s0, zero, -731
                  sll          s10, s1, s6
                  nop
                  srl          a3, a5, t3
                  andi         t6, t3, 397
                  bgeu         s4, tp, 143f
143:              bge          a0, a0, 150f
                  srli         s10, t1, 7
                  sltu         s2, ra, a7
                  slti         a7, s2, 193
                  slt          tp, s5, s9
                  bltu         s6, s8, 150f
                  slli         s6, t6, 16
150:              xori         zero, s2, 105
                  andi         s11, s9, -498
                  andi         sp, a0, -1291
153:              sltiu        t3, s6, -711
                  slt          sp, t3, t1
                  sltu         a4, sp, a1
                  xori         s11, s10, -906
                  bne          a1, t4, 158f
158:              and          s1, a1, gp
                  slti         tp, s6, -599
                  srli         a4, t4, 25
                  addi         a1, s3, 1633
                  srl          t0, gp, a0
                  sltu         s3, s11, a6
                  xor          a0, s0, ra
                  or           t1, s7, ra
                  auipc        a4, 681572
                  bge          t0, s6, 176f
                  bltu         t1, ra, 188f
                  xori         s9, a3, 392
                  srai         a7, s5, 6
                  sltu         t1, s6, a5
                  ori          a7, s3, -1690
                  xor          s3, a2, s4
                  xor          s1, ra, t4
                  andi         s3, a2, -1680
176:              sub          zero, t0, s3
                  add          a1, t1, a1
                  srli         tp, t3, 27
                  slt          sp, zero, s3
                  or           s10, a3, s6
                  slt          tp, zero, sp
                  andi         s9, ra, 1750
                  sltiu        s10, s1, -1192
                  sll          t2, a0, s6
                  beq          sp, a5, 196f
                  slli         s2, t2, 6
                  bgeu         sp, s11, 197f
188:              sra          s1, zero, s10
                  bge          t6, t0, 195f
                  add          a3, t0, a6
                  bge          s11, a2, 199f
                  beq          s9, s9, 202f
                  slli         t4, a0, 27
                  or           s6, a6, a4
195:              bge          t5, s7, 208f
196:              bltu         t5, tp, 211f
197:              bge          a3, sp, 216f
                  xori         t6, gp, -791
199:              nop
                  slt          s6, gp, s7
                  ori          a1, a5, -265
202:              slt          t4, tp, sp
                  srl          s11, a6, a4
                  srli         s6, s10, 15
                  and          t3, a0, t5
                  and          a2, ra, tp
                  sll          t1, t5, a6
208:              ori          t3, t2, -616
                  and          a2, a4, t2
                  sltiu        t3, a7, 1347
211:              sll          a5, a4, s8
                  srli         sp, s10, 21
                  lui          a5, 1032103
                  lui          a4, 1013383
                  bge          s8, t0, 218f
216:              bge          a2, s0, 233f
                  sll          t6, t1, a2
218:              xori         a1, t4, 1678
                  srli         s2, t0, 20
                  xori         a1, s5, 117
                  andi         s9, t0, -1423
                  srli         a3, a4, 26
                  xori         s6, s3, -646
                  ori          s3, t1, -210
                  bge          s1, a4, 237f
                  andi         s2, a1, 120
                  auipc        s9, 117122
                  sub          a7, a4, s0
                  addi         t2, t6, -90
                  sub          s5, tp, t3
                  slli         a5, t2, 7
                  slt          s10, s3, t3
233:              srli         s5, a2, 1
                  sltu         s6, t2, t3
                  bgeu         s3, t0, 236f
236:              srli         t5, a1, 10
237:              sltiu        gp, a0, -1497
                  xori         s11, a0, -926
                  or           t2, a1, t3
                  and          sp, s6, s2
                  slt          gp, s7, a1
                  auipc        t3, 340408
                  auipc        t0, 749206
                  auipc        t3, 840372
                  slli         zero, t2, 19
                  ori          s10, s4, -566
                  slli         t4, t2, 28
                  srai         s5, tp, 30
                  sll          s2, s10, a0
                  bgeu         s4, s8, 261f
                  xor          a0, s11, a0
                  xor          s10, t1, t6
                  andi         t6, s4, 1451
                  sltu         s4, s3, ra
                  nop
                  bltu         s8, s10, 270f
                  sra          s3, a7, a0
                  xor          t1, a0, ra
                  ori          s10, tp, -2015
                  xori         sp, a1, -1315
261:              srl          zero, t5, s8
                  ori          s4, s11, -886
                  bgeu         sp, s7, 280f
                  slti         s1, a3, 689
                  srli         s4, t6, 21
                  add          sp, gp, zero
                  or           tp, s8, s3
                  srai         s1, t2, 6
                  andi         s4, t6, -1825
270:              bgeu         s1, t1, 288f
                  and          a4, s10, t3
                  sra          s2, t3, s6
                  beq          s8, t0, 291f
                  bge          s8, t2, 294f
                  blt          t2, a7, 295f
                  xori         s10, s2, 810
                  sltiu        s8, s11, -438
                  blt          t0, a6, 280f
                  slti         t2, s4, -1255
280:              nop
                  bne          t0, a1, 283f
                  addi         zero, s1, 691
283:              xori         a0, t0, -1371
                  lui          s11, 536200
                  slti         s11, s2, 460
                  beq          s10, s6, 293f
                  or           s8, t6, s11
288:              xori         t2, s0, -1868
                  bltu         a1, a2, 291f
                  xori         a4, s2, -1377
291:              xor          s10, a3, a1
                  bltu         s4, s9, 305f
293:              bgeu         t2, s5, 300f
294:              bne          a6, s11, 299f
295:              add          s6, sp, s10
                  andi         a3, t1, 1866
                  bne          s5, s6, 302f
                  and          s2, s5, zero
299:              or           s6, gp, s8
300:              sltiu        sp, s11, -65
                  xor          t6, t5, s4
302:              bltu         a2, a6, 315f
                  sll          s4, s6, a4
                  srli         t5, s10, 23
305:              bne          a2, t4, 310f
                  srai         gp, s11, 6
                  sltiu        a0, t6, -454
                  sub          s2, a4, a3
                  beq          a1, a6, 319f
310:              slt          s4, t4, s2
                  add          t3, ra, t2
                  ori          s5, a7, 440
                  bge          t1, tp, 333f
                  slt          t6, a7, t5
315:              bge          t6, a2, 333f
                  addi         s4, s2, -971
                  sltiu        tp, s8, -975
                  srl          t0, a7, s4
319:              srli         a7, t3, 21
                  sltiu        s3, t3, -1631
                  srai         t6, s10, 6
                  srli         s0, a7, 6
                  blt          t5, s4, 332f
                  xor          t0, s1, s5
                  add          s11, s1, a4
                  bne          t1, a6, 344f
                  slti         t0, t5, 569
                  srli         zero, t6, 24
                  xori         t2, t0, -104
                  blt          a6, a3, 332f
                  bge          t1, a6, 350f
332:              bne          a4, t4, 342f
333:              slli         a0, s1, 12
                  or           a7, s1, tp
                  bltu         ra, t6, 342f
                  addi         tp, t6, -526
                  srl          a2, a7, a4
                  lui          t3, 99012
                  and          s10, t5, a5
                  srl          s11, a0, s9
                  add          s2, sp, tp
342:              sub          t6, s4, s3
                  srli         t1, a7, 4
344:              auipc        s2, 735993
                  beq          ra, a3, 359f
                  slli         sp, a2, 29
                  xori         s3, s9, -859
                  bgeu         s10, t2, 349f
349:              addi         s3, s11, -1280
350:              auipc        s0, 788971
                  sltu         t3, a5, s11
                  bgeu         s1, tp, 372f
                  srli         s3, s3, 18
                  blt          a3, s2, 362f
                  add          a0, s6, t3
                  sra          t3, a7, t2
                  slli         a1, s8, 13
                  bne          s8, t0, 365f
359:              srai         s4, t2, 11
                  nop
                  blt          s4, a5, 363f
362:              blt          s8, s1, 379f
363:              lui          s9, 244555
                  slt          a2, s11, s6
365:              slt          s11, s7, zero
                  blt          t6, a1, 377f
                  addi         s5, a1, 2016
                  bne          tp, s7, 370f
                  bgeu         sp, s0, 382f
370:              nop
                  bge          t0, s9, 374f
372:              xor          a4, s11, s9
                  beq          a7, s8, 384f
374:              blt          t5, t3, 389f
                  slli         t6, a0, 3
                  nop
377:              sll          a2, a2, s10
                  bltu         t0, a1, 395f
379:              sub          a4, t3, a1
                  sub          s1, s10, t6
                  lui          sp, 625072
382:              bltu         t1, t5, 394f
                  add          s4, s8, s4
384:              bne          tp, s6, 404f
                  blt          t0, t5, 390f
                  addi         s8, s6, 1733
                  blt          s8, a7, 393f
                  andi         s5, gp, -2028
389:              slti         a0, t1, -146
390:              srai         s3, zero, 3
                  xor          a1, s3, ra
                  andi         s5, s6, -1123
393:              lui          t4, 480438
394:              sltu         a2, a5, a2
395:              xori         s2, s10, 228
                  sll          a7, gp, s2
                  srai         s2, t0, 0
                  ori          s2, s1, -473
                  sltu         s11, gp, s6
                  blt          s5, s10, 401f
401:              slti         t1, a4, -1579
                  ori          s11, t4, -1733
                  sub          a0, a3, s1
404:              slli         zero, s8, 29
                  or           a5, t6, a4
                  auipc        s6, 630752
                  add          t2, s9, s1
                  sll          a5, s7, s5
                  srai         s10, s7, 30
                  or           s9, s7, s4
                  sll          s0, sp, s0
                  sub          a3, s4, t2
                  srli         s8, s3, 10
                  sltu         s11, a2, ra
                  beq          s1, a3, 424f
                  srl          s2, t4, s1
                  slli         a3, s9, 14
                  slti         s3, a4, 1387
                  nop
                  sll          s11, s8, s8
                  ori          a0, a6, -75
                  xori         t2, s4, 427
                  ori          s8, t1, -1514
424:              add          t2, s7, gp
                  or           s4, a2, t5
                  addi         a7, a5, -2040
                  sll          t6, s10, t6
                  blt          sp, t3, 429f
429:              sra          s8, s7, a6
                  add          s2, ra, t3
                  beq          t6, t2, 432f
432:              bltu         t3, s1, 442f
                  add          s8, s2, t6
                  sra          a5, s4, a2
                  srai         sp, gp, 17
                  sub          t1, s7, zero
                  srli         t4, a1, 3
                  bne          s10, s8, 449f
                  bgeu         s0, t1, 458f
                  slt          t3, a0, s7
                  xor          sp, a7, t6
442:              sltu         s1, t2, t6
                  sra          s4, s1, tp
                  and          sp, s9, tp
                  and          s8, zero, s7
                  or           sp, gp, ra
                  bltu         a7, a1, 467f
                  sub          t4, s4, s4
449:              slt          t5, tp, s3
                  lui          t0, 482825
                  nop
                  srl          a3, s1, s3
                  slti         t5, a6, 1950
                  slti         s3, t4, 576
                  bgeu         t4, a7, 473f
                  sra          gp, s3, t1
                  addi         t6, s10, 1496
458:              bne          s10, t3, 460f
                  srl          t4, s1, t3
460:              beq          s3, tp, 473f
                  or           a5, s6, s5
                  sll          s2, t4, s7
                  auipc        s3, 448826
                  srl          t4, s0, t1
                  auipc        a0, 132310
                  blt          zero, sp, 484f
467:              bne          a6, t3, 477f
                  addi         t6, s10, 1246
                  bgeu         t2, a7, 482f
                  sra          zero, t5, s2
                  bge          a3, s2, 488f
                  srl          s6, s10, tp
473:              xori         a1, s10, 1788
                  sub          a5, zero, ra
                  slt          a5, a4, a0
                  bgeu         gp, a0, 491f
477:              sltu         a4, a6, a2
                  and          sp, zero, a6
                  lui          s1, 816923
                  srai         t2, a4, 22
                  slti         a0, sp, -233
482:              sll          zero, s10, a4
                  srai         s1, t0, 30
484:              sltu         s2, a7, a0
                  beq          gp, gp, 505f
                  slli         zero, t6, 3
                  sltu         t6, s10, t1
488:              addi         gp, s8, -142
                  xor          a7, s0, s6
                  addi         s9, t2, -951
491:              addi         s1, s4, 1659
                  addi         s9, s9, 534
                  srl          a2, sp, a1
                  sltiu        s11, gp, 1909
                  blt          s1, t6, 503f
                  lui          a0, 32032
                  ori          s4, sp, 1999
                  sltiu        t2, sp, 265
                  bge          t3, s2, 504f
                  slt          sp, a4, a3
                  bge          t4, sp, 507f
                  sub          s9, s0, s0
503:              sltiu        a2, s11, 1808
504:              sll          zero, t0, a7
505:              sra          t5, s2, a0
                  blt          t6, s4, 523f
507:              or           s0, s6, s8
                  bge          a0, s3, 510f
                  srl          s4, gp, a2
510:              add          t0, t5, s3
                  xori         t2, t4, 1245
                  srl          a5, sp, sp
                  sltiu        s0, tp, -1505
                  beq          zero, a3, 525f
                  xor          s11, s5, a2
                  addi         s2, s11, -277
                  auipc        t4, 677927
                  or           s5, s6, s4
                  auipc        s8, 890570
                  ori          t1, t0, -669
                  sra          s3, s7, s2
                  slt          sp, s8, t0
523:              lui          a3, 986111
                  xor          s8, s8, t4
525:              and          s11, s10, t0
                  xor          t4, ra, s1
                  srai         t4, t3, 9
                  or           t6, t0, a1
                  or           t1, a6, s5
                  auipc        a0, 361784
                  sra          a5, ra, s5
                  andi         s3, gp, 987
                  srai         s4, s1, 5
                  xor          a0, s3, s3
                  slti         t6, s3, -900
                  bgeu         s10, sp, 556f
                  and          s11, t5, s7
                  addi         s8, a4, 492
                  auipc        t4, 710752
                  sltiu        a2, zero, 1897
                  srl          tp, t0, a6
                  addi         t6, t5, 369
                  addi         s3, a7, -1860
                  sra          s3, s9, s7
                  add          t6, a7, a4
                  addi         s11, tp, 1385
                  and          t4, s5, s3
                  slt          s1, a3, t2
                  beq          s8, a7, 551f
                  bltu         s11, s1, 557f
551:              blt          s0, s9, 563f
                  srli         s9, t1, 5
                  bltu         a0, s4, 567f
                  bge          a7, s5, 559f
                  lui          t0, 964184
556:              andi         s9, t2, -1042
557:              sltu         a5, t1, s9
                  andi         s2, s6, 327
559:              ori          s10, s5, -305
                  sra          s5, t3, s9
                  addi         t1, t0, 307
                  addi         s9, s5, -1141
563:              and          s10, a2, zero
                  slli         s5, s11, 24
                  srl          s3, t3, sp
                  beq          t0, s8, 569f
567:              blt          a2, gp, 574f
                  ori          zero, zero, -1137
569:              slli         a5, s11, 0
                  srl          a2, a7, s1
                  or           gp, ra, a7
                  sltu         s10, a3, ra
                  bltu         s9, ra, 592f
574:              sltu         s0, s0, sp
                  blt          a1, gp, 580f
                  auipc        a4, 18811
                  bltu         s9, a4, 595f
                  and          s2, t6, t1
                  sra          s0, a3, s11
580:              auipc        s4, 213423
                  bltu         zero, a2, 590f
                  add          a3, s1, s2
                  ori          zero, s7, -577
                  sub          a7, s1, s5
                  and          a5, a6, t2
                  add          s8, a4, t4
                  bgeu         gp, sp, 601f
                  or           s2, gp, a0
                  add          sp, a7, t4
590:              sra          t6, t4, a1
                  xor          t0, s4, s9
592:              bne          a0, s7, 612f
                  bne          t3, ra, 603f
                  blt          t3, s1, 599f
595:              sll          s3, a2, a2
                  sltu         t1, t4, sp
                  blt          sp, s9, 604f
                  auipc        t5, 123529
599:              blt          s6, ra, 607f
                  auipc        sp, 156463
601:              sll          t4, s5, s6
                  sub          sp, s4, a5
603:              slti         t3, s4, 1249
604:              slt          s10, s6, a1
                  bge          t4, s2, 618f
                  auipc        t3, 491050
607:              srai         s4, a7, 16
                  blt          s8, t5, 628f
                  xori         s6, s2, 1958
                  srai         sp, tp, 19
                  srai         t0, s5, 7
612:              and          t1, s0, t1
                  bge          gp, a3, 619f
                  blt          gp, sp, 616f
                  bltu         s11, s3, 632f
616:              xor          t0, t2, s0
                  lui          s1, 886648
618:              ori          a5, ra, -1198
619:              bne          s0, s7, 621f
                  sll          s10, a2, s11
621:              xor          a5, t4, s11
                  sub          a5, s5, s6
                  xor          t4, a6, a4
                  ori          a3, a3, -1973
                  lui          s0, 149248
                  slli         t6, s1, 1
                  slt          t2, a1, s2
628:              sra          t4, a5, t1
                  slt          s4, a2, s1
                  xor          t3, a2, sp
                  slli         s1, sp, 6
632:              blt          s0, zero, 642f
                  srli         zero, s4, 4
                  beq          a3, t3, 637f
                  blt          a3, s9, 650f
                  slt          s1, t5, s11
637:              and          t1, gp, tp
                  bgeu         a1, s1, 639f
639:              bne          t4, s9, 659f
                  bne          s6, zero, 652f
                  andi         s1, a6, 658
642:              xor          t5, s0, a0
                  slli         t1, ra, 28
                  xor          s9, tp, s1
                  slti         s11, s7, -63
                  bge          t2, s6, 653f
                  auipc        a2, 342502
                  andi         s10, s7, -176
                  srli         s4, t4, 8
650:              lui          s9, 3116
                  srl          t5, t6, zero
652:              or           s1, t5, s4
653:              bltu         sp, a1, 655f
                  bne          a3, tp, 665f
655:              sltiu        s2, s0, -1806
                  bge          t2, a5, 674f
                  addi         s1, t6, -107
                  xor          s3, sp, s10
659:              or           s0, s1, zero
                  nop
                  lui          t6, 885028
                  srai         a0, t1, 24
                  bne          t0, s0, 680f
                  sub          s4, t1, a5
665:              sra          s4, s9, s9
                  nop
                  srli         a5, s10, 7
                  slti         s9, a6, 728
                  sltiu        a1, a2, 1324
                  or           t5, t1, a3
                  bgeu         a4, s9, 672f
672:              addi         zero, s9, -810
                  srli         s6, t1, 22
674:              slli         a2, s1, 26
                  slti         s11, s0, -886
                  slli         s8, a1, 30
                  bge          t3, zero, 690f
                  auipc        a5, 610946
                  ori          t1, s0, -955
680:              and          s10, t1, s10
                  xori         s0, t1, 493
                  beq          s5, zero, 693f
                  lui          a5, 32802
                  bgeu         a5, s6, 695f
                  srli         s0, gp, 15
                  srl          a0, gp, ra
                  sll          tp, s2, a0
                  bne          tp, s8, 694f
                  sltiu        s8, s3, 1237
690:              sltiu        a1, a0, 187
                  srai         s5, a2, 10
                  sra          s6, t6, s3
693:              xori         t6, t0, 868
694:              auipc        s8, 281193
695:              addi         s8, s0, 1475
                  beq          ra, sp, 698f
                  add          a0, s1, ra
698:              xori         tp, a2, 567
                  xor          s9, a4, sp
                  blt          a3, sp, 702f
                  and          t1, ra, t2
702:              bge          a7, a3, 717f
                  addi         s9, t2, -1691
                  bgeu         a2, tp, 713f
                  slti         s1, s10, -1111
                  sll          tp, s11, a6
                  bge          s8, a4, 726f
                  andi         a3, s11, -521
                  bltu         s0, s1, 716f
                  srl          s5, ra, a0
                  srai         t3, a6, 22
                  bltu         t5, t6, 713f
                  la           sp, region_1+606 #start riscv_load_store_rand_instr_stream_0
                  sb           t2, -8(sp)
                  lbu          t0, 5(sp)
                  lbu          a2, 5(sp)
                  sw           t6, -14(sp)
                  sb           a1, 16(sp)
                  lb           t5, 1(sp)
                  lhu          s2, 4(sp)
                  sltu         a5, s9, s3
                  slt          t3, a4, tp
                  xori         a2, s3, -1822
                  lh           t1, -6(sp)
                  sll          s6, s3, a0
                  sb           t2, 3(sp)
                  lb           s11, 9(sp)
                  lbu          s1, 3(sp)
                  sb           a4, -2(sp)
                  srl          a3, t5, a7
                  sra          s11, a4, s2
                  lw           t3, -2(sp)
                  ori          zero, t4, -766
                  sb           t0, -1(sp)
                  sb           s7, -5(sp)
                  sltiu        t5, zero, -1181
                  slli         a1, ra, 21
                  lbu          s8, 9(sp)
                  and          gp, t1, t0
                  srl          zero, s1, s3
                  lbu          t0, 11(sp)
                  auipc        a5, 406611
                  xor          t3, a7, zero
                  lbu          t0, 4(sp)
                  sb           s10, 7(sp)
                  lhu          a7, -8(sp)
                  lbu          s10, -3(sp)
                  sra          t2, gp, a0
                  sb           a2, -12(sp)
                  slt          gp, t3, sp
                  lb           t3, 9(sp)
                  lb           gp, -1(sp)
                  lhu          t3, -2(sp)
                  lhu          s3, -8(sp) #end riscv_load_store_rand_instr_stream_0
713:              andi         a0, t2, 912
                  ori          t2, a3, 294
                  srai         s6, s3, 8
716:              sub          t5, s11, t6
717:              xori         a3, s0, -1532
                  xor          s6, a6, t1
                  blt          a7, t3, 732f
                  srl          a5, a1, s5
                  ori          tp, tp, 389
                  andi         sp, a6, -759
                  ori          s0, a5, -1719
                  lui          a7, 225022
                  bltu         ra, t3, 745f
726:              sra          s3, s1, a5
                  andi         s6, s6, -67
                  lui          a0, 703293
                  beq          s7, s3, 731f
                  sub          a5, s0, sp
731:              slli         s2, s9, 3
732:              srl          s6, gp, s3
                  srai         a2, tp, 26
                  sra          gp, s5, t5
                  bgeu         tp, s5, 742f
                  bne          s3, tp, 754f
                  xori         a7, zero, 1392
                  slli         s9, s5, 22
                  xor          a5, s10, a6
                  auipc        t5, 186114
                  addi         t6, s8, 1848
742:              slli         t5, s10, 7
                  slt          t4, a1, t2
                  beq          t5, t4, 757f
745:              srl          s0, t3, s11
                  add          t6, t0, a5
                  srl          t6, t3, s11
                  blt          a0, t3, 765f
                  andi         s6, s8, 888
                  add          s1, ra, t2
                  nop
                  beq          a0, a5, 762f
                  sltiu        s6, a2, 77
754:              nop
                  auipc        s9, 832437
                  auipc        zero, 322647
757:              add          zero, s8, a6
                  slti         s6, s11, -136
                  addi         s8, t2, 137
                  xor          tp, s6, a1
                  ori          s2, s1, -112
762:              sra          t5, sp, a3
                  sltu         a3, a2, s11
                  xori         sp, gp, -1743
765:              sra          s3, s9, t5
                  add          t6, a0, t5
                  slti         a5, s7, 571
                  add          s5, gp, s4
                  auipc        s1, 582768
                  blt          s11, a5, 787f
                  sra          tp, s2, s6
                  andi         a3, a4, 169
                  addi         s1, s5, 283
                  bgeu         a2, t5, 792f
                  sll          a7, zero, t1
                  and          t2, tp, gp
                  nop
                  sltiu        t4, s2, 1812
                  beq          t0, t1, 793f
                  bltu         a6, s8, 791f
                  ori          sp, s11, -350
                  or           t5, a3, zero
                  andi         a2, a0, 1448
                  xori         s6, s1, 723
                  addi         s3, t3, -1738
                  sub          s4, t0, s8
787:              sub          s10, t5, t2
                  auipc        s10, 701782
                  ori          s10, t5, 63
                  add          a2, s7, sp
791:              srl          zero, s3, s0
792:              sltu         t0, s3, s9
793:              bltu         a6, a1, 813f
                  or           a7, a1, a4
                  andi         t2, s2, -1299
                  sra          s0, a6, t3
                  srl          s6, t5, s5
                  beq          s6, t3, 818f
                  andi         a2, s10, -1599
                  srai         a0, t5, 22
                  and          t0, a6, a0
                  ori          zero, a4, 1994
                  sll          a1, a3, t4
                  andi         gp, a2, -860
                  bgeu         a4, s2, 808f
                  xori         s9, t5, -761
                  or           t4, s11, s1
808:              srli         sp, t0, 0
                  blt          s0, zero, 817f
                  sll          zero, s1, t1
                  andi         gp, a4, -1195
                  bltu         t1, s5, 824f
813:              blt          a7, a4, 818f
                  sltiu        tp, s2, -1770
                  slti         t4, s0, -1616
                  sra          gp, t2, s11
817:              sll          s3, a6, zero
818:              and          a3, t0, a6
                  srl          s0, s2, a3
                  sll          t0, a4, s2
                  nop
                  slti         t2, a5, -393
                  beq          t3, t6, 828f
824:              sll          a0, s10, s1
                  bgeu         a4, ra, 826f
826:              add          t5, a5, a0
                  srl          s0, a6, sp
828:              slli         t2, s0, 18
                  auipc        a4, 391447
                  sltu         s2, t5, s9
                  lui          s2, 905865
                  add          s8, t6, s4
                  add          t6, ra, s3
                  and          s1, sp, s3
                  beq          t2, t5, 845f
                  and          zero, s4, s4
                  blt          t0, s0, 851f
                  bne          t6, t0, 844f
                  sll          s2, a7, a0
                  nop
                  bge          s9, t2, 852f
                  addi         a5, s10, -1281
                  srli         a0, a1, 15
844:              beq          t5, s5, 863f
845:              or           tp, zero, s4
                  srli         a1, a5, 3
                  sltiu        t3, a6, 1931
                  xor          t0, s7, s2
                  bne          a6, s0, 854f
                  srli         a2, s1, 10
851:              andi         s1, s10, 1663
852:              bltu         a7, tp, 854f
                  add          t0, s10, a4
854:              sub          tp, gp, s2
                  blt          a1, s3, 862f
                  lui          s8, 424412
                  add          a0, a7, a4
                  and          t1, s8, s0
                  or           t4, t5, a0
                  or           a1, a2, t3
                  add          a2, t4, s5
862:              slt          a1, a4, t6
863:              srai         a1, a1, 7
                  sra          s8, a3, t2
                  auipc        sp, 793546
                  slt          s6, s8, a2
                  srli         s2, a3, 23
                  auipc        a5, 420400
                  ori          s2, a5, 1793
                  bgeu         s9, tp, 882f
                  sltu         s3, a7, s5
                  sub          s3, s10, a7
                  srl          s5, a1, zero
                  and          a2, t1, a2
                  bltu         t2, a2, 880f
                  xor          a5, t2, s4
                  sltiu        a4, s2, -1784
                  srli         s9, a5, 23
                  xor          a0, a2, a6
880:              bne          a6, a5, 881f
881:              slli         s8, s6, 30
882:              andi         a3, ra, 1846
                  sltiu        gp, t0, 1940
                  ori          a2, a7, -1168
                  srai         a5, a1, 14
                  nop
                  bge          a4, t4, 898f
                  srl          sp, zero, s0
                  sltiu        zero, a6, -876
                  sltu         t6, a7, s8
                  andi         s10, t2, 1650
                  beq          s8, s10, 909f
                  srli         a3, s0, 12
                  slli         s0, s1, 27
                  sra          s8, t1, a3
                  bge          s4, s5, 905f
                  slt          t4, a4, s5
898:              sra          s9, s5, s11
                  blt          t0, t3, 919f
                  bltu         s9, ra, 920f
                  sltiu        s10, zero, 595
                  or           a0, t3, s1
                  bgeu         t1, s10, 904f
904:              srai         s2, a4, 12
905:              slt          s0, a4, s5
                  sltiu        a1, a7, 1212
                  sub          s5, s0, t5
                  srli         a2, a3, 26
909:              or           s1, s6, s6
                  srl          s9, s2, s3
                  sub          zero, a5, s5
                  andi         s6, a1, 705
                  ori          sp, s11, 1823
                  sltu         a5, zero, a3
                  addi         t3, t3, -1130
                  xori         s9, s3, -522
                  slti         s5, s4, 1075
                  ori          s2, s6, -756
919:              srai         s6, a0, 29
920:              bge          a5, s7, 938f
                  xor          zero, t4, s5
                  bge          a5, a0, 937f
                  sltu         t6, t3, a1
                  or           s2, gp, s11
                  and          tp, a3, t5
                  srli         s9, t1, 3
                  sltu         a2, a0, sp
                  srai         a7, s3, 22
                  andi         a2, a2, 903
                  xor          t3, gp, t6
                  srli         s4, tp, 31
                  sltu         t0, s5, s0
                  add          gp, t2, t0
                  sub          s9, t2, t3
                  slli         s6, s1, 27
                  add          s8, ra, t6
937:              slli         a7, s1, 18
938:              add          a3, s3, t3
                  srl          t0, t2, s10
                  bgeu         s0, tp, 943f
                  bne          zero, gp, 959f
                  xori         a7, s2, -1939
943:              bgeu         s3, s6, 945f
                  add          s1, a0, s10
945:              addi         a0, t2, -1417
                  auipc        t3, 706555
                  bne          s4, s11, 957f
                  bltu         a3, sp, 955f
                  sltu         s6, s2, s0
                  xori         a2, a0, -1768
                  or           a2, a4, t6
                  sra          gp, t6, a6
                  slt          sp, s6, t4
                  slti         a1, s0, 1941
955:              srl          s2, t2, s9
                  srli         s3, t1, 0
957:              blt          s4, t5, 967f
                  ori          zero, t4, 1799
959:              slti         t3, a7, -741
                  bne          s2, t6, 968f
                  sra          a2, t2, s0
                  bge          s1, s7, 975f
                  slti         s3, a0, -898
                  xor          s5, t6, s7
                  sltu         s1, s7, s4
                  srl          a7, s5, a6
967:              or           t5, zero, s0
968:              add          s8, gp, t3
                  ori          s3, s1, -20
                  bltu         t1, s1, 990f
                  or           s10, gp, s4
                  andi         t6, ra, 7
                  bge          ra, zero, 975f
                  beq          a6, tp, 987f
975:              nop
                  and          s1, s10, t2
                  slt          t0, t5, s1
                  bgeu         a7, t4, 995f
                  auipc        gp, 333633
                  blt          t1, tp, 992f
                  slti         s9, s3, 1814
                  sltiu        a0, t5, 475
                  srli         a5, a4, 13
                  sra          s1, t4, a5
                  andi         gp, s9, -803
                  srli         t0, t1, 12
987:              bge          s6, s7, 1007f
                  srli         gp, a7, 9
                  bge          s10, gp, 1008f
990:              xor          t0, t4, a0
                  nop
992:              sltiu        a3, s1, -405
                  srli         gp, s11, 27
                  addi         gp, s9, 1642
995:              slli         t0, a1, 11
                  bne          t4, tp, 1006f
                  sltiu        a7, s2, -609
                  sra          zero, a0, t5
                  slti         s1, s5, 1189
                  and          t5, s5, s4
                  srli         s1, t0, 28
                  sltu         s8, t6, a4
                  sra          t6, s3, s10
                  lui          s3, 885728
                  bltu         gp, sp, 1018f
1006:             bge          s8, gp, 1026f
1007:             bgeu         t6, zero, 1009f
1008:             blt          t3, a7, 1014f
1009:             slt          s6, s4, s2
                  sltiu        a0, s2, -141
                  bgeu         s5, s0, 1019f
                  lui          t4, 986944
                  bgeu         a2, t5, 1018f
1014:             bltu         t0, t1, 1015f
1015:             slti         zero, gp, -2042
                  addi         s0, s3, 1229
                  bltu         ra, a0, 1031f
1018:             xori         a5, s9, -448
1019:             ori          zero, a6, -9
                  beq          t4, s10, 1029f
                  srli         s10, a1, 29
                  bltu         t5, a6, 1027f
                  ori          t4, s4, 885
                  srl          a5, tp, t0
                  srli         s11, s11, 11
1026:             ori          s1, s11, 746
1027:             sra          zero, a3, s11
                  addi         s5, t1, 830
1029:             srli         t0, t1, 5
                  and          t2, s0, s9
1031:             blt          s4, tp, 1032f
1032:             andi         s8, a7, 1445
                  ori          s9, a5, 1468
                  andi         a1, sp, 1943
                  slt          t4, t2, s8
                  srli         s0, zero, 3
                  bltu         a2, a1, 1048f
                  bgeu         a5, a4, 1041f
                  slt          s4, s8, s10
                  bgeu         s11, s1, 1050f
1041:             auipc        a2, 729228
                  xori         a4, t0, -1099
                  addi         s9, s10, -1603
                  ori          t5, sp, -466
                  bgeu         zero, t2, 1063f
                  blt          a7, a0, 1061f
                  andi         s5, t6, -1282
1048:             slt          s0, s6, s5
                  sub          t4, s1, t0
1050:             bge          a1, t5, 1067f
                  slt          a5, s1, s0
                  slli         a3, a6, 16
                  sra          s9, t0, a5
                  andi         s4, s7, -1227
                  sra          t2, s4, s4
                  nop
                  sltu         s4, a2, a6
                  or           s4, a7, a5
                  auipc        tp, 363763
                  xori         s9, t5, 1311
1061:             srl          s1, a3, sp
                  nop
1063:             blt          s0, t3, 1081f
                  bne          a7, s0, 1071f
                  slti         t2, s7, 1475
                  ori          s1, s8, -1484
1067:             nop
                  nop
                  srl          t3, a3, gp
                  xor          s8, s6, a0
1071:             slti         s10, s5, 503
                  bgeu         s1, a5, 1085f
                  slti         tp, s6, -1286
                  srai         s10, sp, 28
                  srli         t2, s5, 31
                  xor          t0, t3, a6
                  sra          s10, s0, s6
                  and          tp, t5, t3
                  ori          gp, a1, 620
                  ori          a5, a5, 158
1081:             srli         a7, s3, 6
                  andi         s6, tp, -828
                  srl          a3, a1, zero
                  andi         gp, a0, 393
1085:             and          t4, t1, t6
                  sub          s0, s11, t6
                  sra          s4, t5, t2
                  blt          a6, s4, 1095f
                  srai         s10, sp, 31
                  xori         a3, a3, 768
                  slti         a3, s1, -572
                  lui          t5, 695908
                  srli         a5, gp, 12
                  slt          s10, a4, s5
1095:             sltu         t6, s6, sp
                  srai         s3, s3, 12
                  add          a4, t5, t2
                  addi         t3, s3, -1618
                  bne          sp, tp, 1116f
                  slli         a0, s1, 13
                  and          s11, t1, s1
                  la           a2, region_1+1319 #start riscv_load_store_rand_instr_stream_8
                  srl          s3, t5, s7
                  lh           tp, 31(a2)
                  srli         a7, s7, 5
                  sltiu        t1, t4, -1942
                  slti         t1, zero, 758
                  sb           a6, -48(a2)
                  lh           a7, 17(a2)
                  lhu          s4, 61(a2)
                  slli         t0, a7, 4
                  lb           s1, -60(a2)
                  sb           t1, -50(a2)
                  sltiu        s6, t4, 1796
                  lbu          t6, 26(a2)
                  slli         a0, s11, 14
                  xor          s3, s1, s9
                  lui          s2, 874989
                  lb           s9, -15(a2)
                  lw           s2, -39(a2)
                  lbu          a0, -19(a2)
                  srai         s4, t6, 3
                  slt          s6, sp, s6
                  lb           s11, -22(a2)
                  addi         tp, t4, 326
                  xor          t1, t3, s7
                  srli         a0, s10, 26
                  sb           t2, 48(a2)
                  lw           t3, -63(a2)
                  lbu          s11, 60(a2)
                  srli         t4, t1, 17
                  lbu          t5, 42(a2)
                  sb           s9, 2(a2) #end riscv_load_store_rand_instr_stream_8
                  xori         s0, s6, -1259
                  xori         s1, t6, -1241
                  bgeu         s8, t0, 1115f
                  ori          tp, s8, -1948
                  slli         s5, t6, 30
                  auipc        s3, 139696
                  sra          s3, s4, t2
                  srai         zero, s3, 8
                  lui          t5, 493828
                  bne          s8, s4, 1131f
                  sltu         s8, s1, t0
                  and          s8, t1, t6
                  slt          t3, t0, s9
1115:             auipc        s10, 756349
1116:             or           t3, s2, s1
                  sub          s0, a6, s3
                  and          t2, a2, tp
                  blt          a1, s11, 1121f
                  srli         s8, s1, 18
1121:             slti         a4, s1, 1377
                  and          t4, s2, s10
                  and          s0, s3, tp
                  srl          s4, s9, s8
                  bge          s4, s3, 1127f
                  bltu         t0, s1, 1139f
1127:             bgeu         a0, a1, 1139f
                  bgeu         s2, a6, 1135f
                  sltu         a0, t2, a5
                  sra          a5, s10, s1
1131:             bne          tp, ra, 1151f
                  auipc        s10, 909556
                  bne          gp, ra, 1138f
                  sltiu        t2, zero, -1321
1135:             slti         a7, s1, -1827
                  sltu         s6, s1, a5
                  bltu         s10, s7, 1157f
1138:             andi         t1, t2, -917
1139:             sltiu        t3, s1, 1138
                  sll          s8, s1, a5
                  srl          s3, a4, zero
                  srai         s10, a5, 2
                  xor          s9, s5, a5
                  srl          a1, a1, tp
                  sltiu        s4, s2, 211
                  blt          a3, gp, 1157f
                  blt          tp, s9, 1149f
                  addi         a7, a5, 268
1149:             srl          s8, a7, gp
                  sra          s2, a7, s8
1151:             or           t6, s10, t5
                  bne          a6, a5, 1159f
                  nop
                  sub          s5, a0, t2
                  nop
                  ori          s5, s11, 196
1157:             srli         s2, a3, 30
                  bne          a0, gp, 1172f
1159:             addi         s3, s8, 1303
                  bge          t3, a3, 1169f
                  addi         t6, a7, -714
                  or           s4, s1, sp
                  slti         t3, a7, -192
                  srai         a7, a5, 4
                  bne          s4, a0, 1166f
1166:             srl          a7, sp, s0
                  srl          gp, sp, t6
                  slli         a3, a3, 28
1169:             srai         zero, s9, 2
                  xor          a7, t1, t1
                  andi         t0, s3, -1965
1172:             sll          s6, gp, a7
                  srai         s8, a7, 16
                  or           t4, s8, t5
                  bltu         t3, s0, 1194f
                  xori         s2, a1, 826
                  srl          a2, a4, s2
                  and          t3, t6, t2
                  auipc        t2, 297374
                  srai         t6, t6, 22
                  sltu         t2, ra, s2
                  sll          gp, s4, a2
                  nop
                  and          a5, s4, s7
                  srai         a4, ra, 11
                  addi         s2, t2, 1790
                  add          t1, s5, a5
                  beq          a5, t0, 1206f
                  srai         sp, a7, 11
                  srai         s6, sp, 6
                  addi         a5, t4, -1261
                  bltu         s8, t5, 1194f
                  ori          s2, t4, 2003
1194:             nop
                  sub          s5, s7, a2
                  srai         t6, ra, 16
                  srli         a1, tp, 4
                  slli         s6, tp, 18
                  slt          s6, s10, sp
                  slti         a2, s7, 1539
                  slti         s10, s5, 571
                  bne          gp, a2, 1219f
                  xori         t5, t5, 916
                  srai         s4, s6, 12
                  sltiu        t2, t4, 1675
1206:             sub          s3, t5, a5
                  blt          t5, s9, 1217f
                  andi         a1, s9, -306
                  and          t3, a2, a4
                  bltu         a4, a5, 1215f
                  slti         t5, zero, -435
                  andi         a4, s4, 893
                  and          gp, t0, s6
                  auipc        s1, 844099
1215:             slti         t1, s6, -413
                  or           s10, t0, ra
1217:             blt          t1, t2, 1219f
                  slt          s5, sp, a5
1219:             sltu         t0, a1, zero
                  lui          a0, 6118
                  beq          s0, zero, 1231f
                  bne          t5, s4, 1237f
                  slli         zero, s11, 3
                  beq          a3, s7, 1242f
                  sltiu        a0, t2, -119
                  srli         t0, s5, 24
                  sll          t2, s5, t2
                  slti         s0, t3, -1001
                  sltu         t6, s3, s4
                  slt          a1, t6, t4
1231:             xor          s9, ra, s1
                  sub          a0, a4, a6
                  blt          t2, a2, 1236f
                  bne          s4, t1, 1247f
                  bne          t2, tp, 1236f
1236:             sra          a7, t0, t6
1237:             slt          t1, a0, a6
                  bgeu         s5, s3, 1258f
                  slli         s8, a7, 10
                  slti         s0, a0, -1782
                  bne          tp, t5, 1247f
1242:             andi         zero, s7, 2032
                  beq          s10, gp, 1254f
                  xor          zero, a2, s7
                  and          a4, s3, s8
                  lui          a4, 610176
1247:             slli         gp, s2, 10
                  beq          a2, a6, 1265f
                  srl          a5, a3, a6
                  slli         s3, a2, 2
                  sll          s10, tp, a5
                  sra          s1, t0, t5
                  sra          s4, s10, tp
1254:             srli         s9, s1, 24
                  sra          gp, s8, s2
                  or           s5, a6, s4
                  sltiu        a5, t2, -1314
1258:             bge          s3, tp, 1266f
                  beq          t2, a1, 1261f
                  auipc        a7, 85370
1261:             slli         s11, a2, 11
                  auipc        t0, 531384
                  and          t3, s1, s4
                  nop
1265:             addi         a5, a2, -2031
1266:             bge          s1, s0, 1279f
                  add          s2, s6, zero
                  sltiu        t0, s8, 86
                  sub          s9, s7, t2
                  lui          a3, 650341
                  sub          s9, a7, tp
                  bne          t3, t2, 1282f
                  srai         t6, t2, 18
                  slti         a2, a0, 576
                  srai         s11, s8, 19
                  bltu         t2, t0, 1288f
                  srai         t1, a0, 18
                  lui          s6, 100858
1279:             addi         t2, t1, -387
                  sll          t2, t0, t5
                  bge          zero, a5, 1283f
1282:             bne          t3, a2, 1302f
1283:             bltu         s6, a7, 1303f
                  sltu         a5, ra, s3
                  slt          sp, a0, a2
                  sltu         s9, s2, a0
                  slli         a4, s9, 6
1288:             or           s3, ra, s9
                  lui          s2, 882426
                  beq          a5, a5, 1310f
                  ori          t2, s2, 886
                  xori         t0, t4, 1021
                  addi         s4, t0, -1037
                  beq          s2, zero, 1300f
                  sltiu        a0, s6, -1493
                  and          a1, a0, a7
                  lui          gp, 362772
                  sltiu        t6, s0, -64
                  srli         a1, gp, 25
1300:             add          zero, t5, a0
                  bne          t1, s11, 1318f
1302:             slti         s2, t5, 674
1303:             srai         a5, a7, 5
                  nop
                  sra          s1, s10, a7
                  and          sp, s0, t0
                  bltu         s6, s1, 1325f
                  sub          t4, a3, a1
                  slli         s10, t6, 31
1310:             slli         t2, ra, 5
                  srli         t0, ra, 9
                  sltu         s2, t0, t6
                  auipc        t3, 904399
                  add          s6, t2, s10
                  slti         s1, t1, -940
                  ori          s2, t1, 1790
                  sltiu        t1, a7, -1246
1318:             sll          s3, a5, a0
                  slli         s4, t2, 15
                  slti         t2, s2, -1643
                  slti         t2, s4, 1396
                  sll          a5, s11, a3
                  sll          a4, tp, a2
                  slti         t2, s3, -903
1325:             srai         s8, s8, 12
                  slt          s2, s3, s5
                  or           t3, s5, s3
                  addi         s8, s10, 1329
                  andi         s9, t2, 1988
                  bltu         s3, s2, 1349f
                  sub          s8, s10, sp
                  auipc        s5, 1034369
                  sltu         s5, t2, ra
                  auipc        t1, 971960
                  and          t3, a0, a0
                  sll          t3, s2, a0
                  xor          s0, gp, s2
                  addi         s11, s9, -1065
                  bne          s4, t5, 1347f
                  bltu         tp, a2, 1358f
                  and          tp, a1, t2
                  bgeu         a1, a1, 1347f
                  or           t1, a7, t1
                  sltiu        s11, a7, -1902
                  bge          s0, s0, 1356f
                  srl          tp, s7, t0
1347:             andi         a3, a0, -301
                  blt          a6, t6, 1361f
1349:             sub          s9, t6, t4
                  andi         gp, t2, -679
                  srl          s11, s0, t4
                  sll          s8, s6, t0
                  beq          t2, a4, 1356f
                  sll          a1, t0, a4
                  auipc        s5, 1032301
1356:             slli         s2, s6, 6
                  andi         sp, s5, 1147
1358:             nop
                  blt          a1, t3, 1370f
                  sll          a1, s2, t4
1361:             nop
                  blt          a6, s0, 1377f
                  ori          t0, t5, 1636
                  and          s0, ra, a5
                  blt          s8, s1, 1374f
                  add          s8, a0, a0
                  nop
                  ori          a2, ra, -509
                  auipc        zero, 571244
1370:             sll          s2, sp, s0
                  bge          s9, a4, 1381f
                  xor          s11, sp, s10
                  slli         t4, ra, 9
1374:             xor          sp, s6, t1
                  ori          s8, zero, -273
                  sltu         a7, gp, tp
1377:             xori         a0, a4, 1624
                  srai         tp, tp, 2
                  slli         a5, t2, 25
                  sub          a4, ra, s2
1381:             sltu         s0, s8, a5
                  bne          t5, a2, 1383f
1383:             bge          a1, s1, 1400f
                  bltu         s11, a0, 1398f
                  add          zero, s4, s2
                  and          s9, ra, t5
                  lui          t6, 862288
                  xor          s4, a7, s0
                  xori         a4, t5, -363
                  sltu         t4, s5, t3
                  bgeu         a3, a5, 1393f
                  srli         a4, s0, 13
1393:             bne          t6, a6, 1400f
                  srai         s9, s3, 29
                  slli         s8, a3, 25
                  bltu         s9, s9, 1403f
                  ori          s10, a7, 1666
1398:             bltu         s3, t3, 1403f
                  andi         t0, sp, 431
1400:             xori         a3, s8, -883
                  xor          a0, s4, a3
                  xor          a7, a4, s11
1403:             bge          s3, s9, 1404f
1404:             slt          t6, a5, t6
                  or           a2, s1, s9
                  bltu         t5, s8, 1426f
                  sra          a7, s5, gp
                  sltu         t4, s5, a0
                  or           a3, a4, t5
                  addi         a2, gp, -124
                  auipc        tp, 1002885
                  sra          tp, a5, a6
                  srai         zero, s7, 0
                  ori          s2, gp, -2007
                  sltu         s6, a4, a4
                  andi         t4, s3, -679
                  bgeu         s9, s1, 1437f
                  xor          s8, s2, a7
                  andi         s8, t2, 1342
                  srl          t6, t6, s7
                  sltu         a0, s7, s8
                  andi         a7, t2, -1036
                  sll          zero, a4, a7
                  sra          t1, s0, zero
                  lui          t1, 618996
1426:             lui          t5, 551006
                  or           s1, a6, s2
                  slti         t6, s2, 513
                  slt          t0, ra, t6
                  sub          t3, sp, zero
                  bge          s9, s6, 1439f
                  srli         a7, s10, 26
                  slti         sp, s6, 1997
                  andi         t3, a0, 1280
                  sra          tp, s1, t6
                  bge          a1, a5, 1438f
1437:             sub          a7, s5, a4
1438:             slti         sp, a7, -1493
1439:             srl          t5, t3, a7
                  add          t2, s7, t2
                  and          s2, t2, t0
                  addi         s9, a4, 767
                  sltu         a4, t1, s2
                  sra          a1, gp, s1
                  and          s2, t0, t2
                  slli         t3, t5, 10
                  sub          t6, s10, zero
                  bne          t5, t0, 1455f
                  slti         s4, ra, 814
                  sltu         s2, zero, s9
                  sra          a5, t5, t3
                  sltu         a2, s5, s8
                  sltiu        s9, s2, 488
                  srai         a3, a5, 8
1455:             lui          s1, 665284
                  addi         tp, s1, 1200
                  sub          s6, tp, s9
                  blt          a2, zero, 1477f
                  srai         a7, s0, 24
                  sub          s4, a2, s1
                  sltiu        t4, s4, -625
                  bltu         s1, a6, 1475f
                  bltu         a2, s4, 1468f
                  blt          t6, a0, 1471f
                  addi         s10, a2, 347
                  sll          s8, s2, s2
                  add          s2, s0, a3
1468:             and          a0, s7, a5
                  andi         a3, a1, 950
                  srli         t6, a0, 23
1471:             or           s9, t6, t3
                  xori         s4, s5, 1429
                  sra          s10, s4, s2
                  sra          s6, t6, a4
1475:             blt          zero, a0, 1484f
                  beq          s11, a5, 1493f
1477:             sltu         a5, sp, t4
                  sll          s11, s6, s7
                  auipc        t1, 13354
                  sltiu        t6, a3, -205
                  nop
                  sra          a7, s6, sp
                  or           s8, sp, a1
1484:             bne          s10, a6, 1504f
                  sub          a3, a3, a6
                  bltu         a4, s6, 1499f
                  ori          t6, s5, 877
                  nop
                  lui          tp, 242456
                  and          s10, s0, a3
                  xori         s8, s11, 1925
                  sra          s9, s5, s11
1493:             lui          tp, 911318
                  sub          s11, s5, zero
                  andi         t6, s1, -78
                  xori         a7, a0, -679
                  or           t2, a0, s4
                  or           a0, a6, a5
1499:             sll          a0, t5, t4
                  srai         s5, s7, 0
                  bne          s11, t3, 1507f
                  xori         s11, s5, -1596
                  addi         zero, t4, 1763
1504:             xori         a1, s0, -2040
                  slti         t0, a5, -720
                  srli         s0, s6, 28
1507:             andi         t1, s3, -493
                  sltu         s6, a5, s9
                  auipc        s0, 528611
                  auipc        s11, 726935
                  beq          a0, s4, 1516f
                  auipc        s6, 501870
                  nop
                  srli         s3, s2, 21
                  or           s9, s8, a4
1516:             srli         s10, s2, 18
                  andi         t1, a4, -1017
                  sltiu        s9, s2, 163
                  slt          a7, sp, s2
                  bne          s0, s5, 1530f
                  add          s9, a3, a6
                  sub          a3, a0, s2
                  srl          s11, s6, s7
                  bltu         t5, a5, 1541f
                  sltu         s3, s2, t2
                  addi         a3, s7, 1567
                  sub          s0, sp, sp
                  or           s8, s9, s7
                  srl          a0, a3, a4
1530:             slti         a5, a3, -1283
                  auipc        tp, 109155
                  auipc        gp, 747994
                  auipc        a3, 486959
                  sltu         t1, t4, s0
                  bne          t2, s9, 1550f
                  srli         a0, t3, 0
                  nop
                  or           a0, t1, a7
                  and          t5, sp, s6
                  lui          a1, 928302
1541:             andi         a0, a1, -1377
                  xor          zero, a2, gp
                  bgeu         s8, t4, 1554f
                  slli         a3, s5, 5
                  or           s10, s4, t5
                  bltu         a3, a4, 1549f
                  slt          s9, t3, t2
                  srl          gp, t1, a4
1549:             addi         a2, s7, -1845
1550:             xori         t6, s10, -967
                  nop
                  srl          s9, s1, a4
                  sub          s2, s10, t4
1554:             slti         t4, a0, 1522
                  beq          a7, gp, 1569f
                  beq          t2, s5, 1558f
                  bge          ra, a0, 1559f
1558:             andi         s11, tp, -446
1559:             sltiu        t2, s0, 1543
                  bge          a0, s0, 1578f
                  sltu         t1, t5, s8
                  addi         s10, s9, 1789
                  and          t1, t4, zero
                  addi         t2, s3, -1640
                  sltu         s11, s2, s2
                  sltu         s5, a4, s9
                  blt          a0, zero, 1578f
                  add          s8, s1, t1
1569:             bne          s1, a6, 1570f
1570:             srl          a4, a5, s9
                  sll          s9, s10, gp
                  addi         sp, a5, -1048
                  bltu         s10, s7, 1585f
                  bltu         a6, t6, 1584f
                  sll          t4, a3, t2
                  blt          s8, zero, 1577f
1577:             auipc        s1, 518247
1578:             sub          t3, t1, t3
                  srli         zero, t4, 31
                  or           t6, a5, s0
                  addi         s2, s0, 1856
                  sub          t5, a7, t5
                  lui          a2, 404677
1584:             slt          s3, a6, s9
1585:             slti         s8, s9, 923
                  lui          t4, 509782
                  bltu         s3, a4, 1605f
                  ori          t2, ra, -1397
                  slti         a4, s0, 755
                  add          s0, a2, t6
                  sltiu        s6, t4, 2016
                  lui          s10, 108362
                  srl          s10, t6, s9
                  sltiu        a7, t4, 540
                  and          s2, s6, tp
                  blt          s7, s6, 1609f
                  sltu         s1, a2, t2
                  auipc        s2, 1023056
                  sll          sp, s8, ra
                  slti         zero, t6, 481
                  xor          s5, s7, a5
                  sll          s8, gp, a4
                  srli         zero, s9, 0
                  addi         zero, s10, 1878
1605:             sltiu        a4, s3, 1381
                  beq          ra, a1, 1611f
                  andi         t5, s0, 1900
                  slli         t0, s1, 4
1609:             add          a4, s1, tp
                  and          s4, s9, a4
1611:             blt          t5, t5, 1613f
                  srl          s2, t3, s1
1613:             ori          a7, t6, 2000
                  lui          a1, 979516
                  slt          s4, s3, ra
                  xori         t1, sp, 1689
                  addi         s5, s1, 24
                  nop
                  sltiu        s5, s7, 1318
                  lui          s6, 783267
                  xor          t4, t5, tp
                  addi         s11, t6, 1399
                  slt          t6, t4, a6
                  bgeu         a1, t3, 1639f
                  sll          s1, tp, t5
                  auipc        t1, 204743
                  slt          a4, s0, a2
                  bgeu         t5, s11, 1641f
                  srli         gp, a7, 2
                  lui          a4, 250486
                  or           a5, s1, t2
                  slt          s3, t4, a0
                  bgeu         s11, gp, 1642f
                  and          sp, s2, a3
                  sltu         a2, s8, s10
                  sltu         a7, t4, s2
                  ori          t6, a4, -408
                  slt          s6, sp, t2
1639:             lui          s1, 491780
                  bne          s5, t0, 1642f
1641:             sll          a1, t3, a1
1642:             and          s1, s0, s8
                  srai         a0, a4, 15
                  add          a7, t0, a6
                  blt          t4, t6, 1655f
                  auipc        t6, 553326
                  srl          t6, s0, a1
                  srli         t3, s3, 26
                  xori         a1, a6, -1985
                  blt          s7, s6, 1655f
                  srl          s6, a4, t3
                  sll          s9, t1, a3
                  ori          s9, t5, 1745
                  bltu         s5, a2, 1665f
1655:             blt          sp, a3, 1675f
                  andi         tp, s2, 1852
                  andi         s3, t6, -1518
                  sltu         a1, t6, s10
                  slt          a5, a1, a0
                  xori         a7, t3, -1217
                  sltiu        a3, s9, -1997
                  slli         sp, s1, 22
                  bge          s7, s10, 1674f
                  slli         tp, a2, 24
1665:             bltu         s5, t5, 1672f
                  bge          a7, ra, 1672f
                  nop
                  sll          a1, s6, a3
                  xor          gp, s7, tp
                  and          tp, a5, a7
                  and          t3, a6, t1
1672:             bltu         a7, sp, 1692f
                  srai         tp, t2, 0
1674:             slli         t6, s3, 31
1675:             slt          gp, s11, zero
                  bgeu         a5, a5, 1686f
                  bgeu         a1, a5, 1697f
                  bgeu         a2, s3, 1696f
                  and          a4, zero, a6
                  addi         tp, s7, 1538
                  srl          t3, a0, gp
                  auipc        t0, 140641
                  bne          t0, t3, 1685f
                  bltu         a0, t2, 1701f
1685:             srai         s5, t4, 21
1686:             xori         t0, t0, 340
                  slli         zero, s0, 30
                  slt          s8, t3, sp
                  slli         a7, a5, 2
                  ori          s6, ra, 253
                  sub          a4, t1, a5
1692:             sltu         s1, s3, t3
                  slt          s2, t5, a3
                  srli         t2, s1, 6
                  blt          s10, s3, 1696f
1696:             srai         t5, t6, 0
1697:             nop
                  lui          a5, 442960
                  slti         s11, a1, 1226
                  bltu         s4, s9, 1703f
1701:             auipc        t5, 379290
                  bgeu         s9, ra, 1703f
1703:             or           s4, s3, s7
                  andi         t1, s3, -1265
                  sll          t3, a4, s7
                  bgeu         s8, a6, 1713f
                  ori          s8, s11, -777
                  sltu         t3, s0, s0
                  slli         s11, s6, 7
                  slt          a0, s9, s9
                  xor          zero, s5, s11
                  nop
1713:             andi         s4, a3, 538
                  bne          s0, t5, 1728f
                  sltu         tp, a6, s11
                  and          t0, t5, t4
                  ori          tp, t1, 1683
                  sltu         a4, s7, s7
                  auipc        s5, 576015
                  bgeu         t2, s10, 1739f
                  sltu         zero, a5, t1
                  andi         t0, a1, -1010
                  srai         a3, ra, 6
                  nop
                  sll          s1, s1, s8
                  srli         s1, s0, 1
                  bgeu         a1, a6, 1739f
1728:             xor          s9, s10, s3
                  sll          gp, t6, s0
                  andi         s2, sp, 1034
                  xor          s3, t1, a0
                  sra          t0, t2, s10
                  slti         t5, s6, 335
                  and          s10, t0, s4
                  bge          s5, gp, 1753f
                  sll          t6, a7, t4
                  lui          a7, 702062
                  srai         zero, a6, 21
1739:             srli         a1, gp, 30
                  slt          s11, t0, t3
                  slti         s1, t6, -1923
                  or           a4, a7, t5
                  sub          t1, t3, s0
                  xori         a2, s0, 1187
                  srai         a4, a7, 19
                  auipc        t0, 327337
                  sub          t4, t3, s3
                  sll          s1, s0, ra
                  slli         s9, s8, 0
                  sra          sp, a4, s0
                  andi         a0, t5, -97
                  blt          a4, s6, 1769f
1753:             or           a5, s3, a2
                  sltu         a3, t5, s10
                  slti         a2, s2, -1708
                  sll          gp, t5, tp
                  nop
                  sltiu        s11, zero, -1841
                  xori         sp, t2, -84
                  add          gp, t5, a2
                  slli         t3, s10, 3
                  bgeu         s2, a4, 1770f
                  bgeu         ra, t5, 1773f
                  sll          s10, s4, a7
                  nop
                  or           gp, t2, t3
                  and          s3, s8, a7
                  sub          t4, a6, s9
1769:             nop
1770:             slti         a1, t4, 968
                  lui          t5, 299207
                  lui          t2, 791108
1773:             xori         t3, s9, -590
                  addi         t6, s9, 655
                  slli         a7, sp, 28
                  slti         a7, s11, -1012
                  srli         s4, s7, 24
                  nop
                  or           a1, t2, s7
                  nop
                  auipc        a3, 403532
                  ori          t1, s1, 765
                  addi         sp, s0, -140
                  addi         s11, s8, -1380
                  andi         a0, a3, -705
                  sub          a2, s11, sp
                  add          a1, t4, sp
                  la           s0, region_1+714 #start riscv_load_store_rand_instr_stream_4
                  lhu          zero, -76(s0)
                  slli         s10, s9, 1
                  sw           zero, 190(s0)
                  xori         t5, t2, -1539
                  sw           s8, 70(s0)
                  lb           gp, 20(s0)
                  slti         gp, tp, -1023
                  srl          t1, sp, t4
                  slti         a1, s9, 1894
                  srai         a3, t2, 28
                  lb           s4, 74(s0)
                  auipc        sp, 801637
                  sb           s0, 71(s0)
                  sw           s1, -18(s0)
                  nop
                  lhu          t6, -36(s0)
                  addi         a5, a0, 1307
                  sw           a6, 242(s0)
                  slti         zero, s11, -1115
                  lh           s6, -154(s0)
                  nop
                  sb           a4, -74(s0)
                  lhu          t0, 78(s0)
                  auipc        s9, 866119
                  srli         s3, t1, 30
                  lh           a0, -236(s0)
                  or           t6, a5, tp
                  srl          t2, s6, a4
                  auipc        s4, 561003
                  lb           a4, -4(s0)
                  sb           s7, -84(s0)
                  sub          s2, s5, t5
                  sb           t3, 212(s0)
                  srai         t0, zero, 7
                  ori          s5, t5, -1600
                  sb           a0, -81(s0)
                  sra          t2, t1, s4
                  sw           a4, -18(s0)
                  sw           t5, -82(s0)
                  sb           t6, 151(s0)
                  srai         s6, s5, 6
                  add          a7, a4, t5
                  sub          a3, t4, a3
                  lh           a7, 122(s0)
                  sb           s2, 82(s0)
                  slti         t4, a7, -184
                  xori         t4, t4, -482
                  lb           a1, 219(s0)
                  sb           a7, -23(s0)
                  andi         s5, t1, 349
                  lhu          s10, -186(s0)
                  lui          s11, 82924
                  srli         zero, tp, 30
                  sw           s0, 194(s0)
                  lhu          a5, 2(s0)
                  lb           s10, 112(s0)
                  lui          s4, 604265
                  lb           s8, 11(s0) #end riscv_load_store_rand_instr_stream_4
                  slti         a4, s3, -156
                  addi         s3, t5, -1312
                  sltiu        s4, a3, 1666
                  lui          a7, 948543
                  lui          s1, 779864
                  and          a2, a3, t3
                  slti         zero, t3, 969
                  bgeu         a2, t2, 1803f
                  slt          t3, a2, gp
                  add          a0, a6, s10
                  addi         gp, a1, -1805
                  sltu         a5, s7, s5
                  bne          a1, a7, 1811f
                  bne          s10, a2, 1812f
                  or           a4, ra, a4
1803:             xor          a2, t2, s9
                  xor          gp, s11, s10
                  beq          s2, s4, 1807f
                  bge          ra, s10, 1813f
1807:             bltu         gp, t4, 1827f
                  xor          a2, s0, a4
                  or           s4, s11, s11
                  add          t4, ra, a7
1811:             xori         t2, s9, 797
1812:             srl          a1, s7, s5
1813:             or           s9, zero, a0
                  slt          zero, a2, s9
                  srl          t2, ra, a6
                  sltu         t4, s9, s3
                  srli         s11, a4, 10
                  sll          gp, t4, a6
                  beq          t2, zero, 1839f
                  andi         s5, a5, -1950
                  bge          t0, s6, 1839f
                  add          s9, a2, s11
                  srai         zero, a1, 25
                  beq          a4, s8, 1838f
                  xor          s0, zero, s10
                  andi         t4, t3, -1339
1827:             srli         s11, tp, 31
                  sub          zero, t0, s8
                  sub          s6, a6, s1
                  sltiu        s5, s5, -1385
                  slt          s5, a6, tp
                  xor          t5, zero, s5
                  blt          t2, s8, 1839f
                  sltu         a5, a2, sp
                  beq          s2, a3, 1850f
                  sra          a5, s11, s8
                  srai         s2, a3, 3
1838:             srai         gp, s7, 7
1839:             srl          t1, s6, a7
                  nop
                  slti         s9, ra, -1534
                  andi         s6, s4, 589
                  srl          a1, s8, s5
                  bge          a2, t4, 1861f
                  sll          s10, s0, s1
                  sub          t4, gp, sp
                  srl          a3, a0, a0
                  xori         s9, a0, 771
                  or           a4, s6, t4
1850:             add          s10, a4, t0
                  blt          sp, s8, 1864f
                  xori         a0, t4, 1134
                  xori         s10, a5, -1692
                  or           sp, s0, sp
                  xor          tp, t5, t3
                  ori          t1, a6, 490
                  sltiu        t0, s5, -1603
                  slli         s0, ra, 23
                  addi         s11, tp, -923
                  ori          s2, gp, 721
1861:             xori         s8, a5, -1652
                  xori         s6, t1, 1172
                  bne          a6, a7, 1875f
1864:             slti         a0, zero, -1239
                  or           t5, a7, a2
                  lui          s9, 612816
                  auipc        a5, 4946
                  slli         s8, s2, 16
                  blt          gp, t3, 1872f
                  srl          t2, tp, ra
                  and          s5, s5, s0
1872:             slli         sp, tp, 7
                  xor          s11, s4, t2
                  srai         a4, s7, 28
1875:             sltu         a1, a2, s11
                  add          a2, t2, t3
                  srai         a4, a7, 19
                  sub          sp, tp, a4
                  nop
                  bltu         t3, a0, 1881f
1881:             srli         s5, s0, 20
                  or           t5, a7, s10
                  slti         a7, a3, 1543
                  add          tp, t3, a1
                  slli         s8, t2, 17
                  srai         a0, t5, 19
                  srli         s5, s1, 10
                  sub          t4, s9, a3
                  srl          a0, a6, s7
                  bge          s2, t5, 1892f
                  bltu         t6, a0, 1898f
1892:             srli         s10, a2, 11
                  srl          t2, a5, s5
                  slt          tp, tp, s6
                  sltu         s8, a7, t2
                  or           s10, s9, a3
                  bgeu         s11, s10, 1902f
1898:             andi         s11, s8, -299
                  bltu         a5, tp, 1919f
                  or           a1, t5, s4
                  addi         t5, zero, 704
1902:             slt          a2, a0, s8
                  slti         zero, s0, 1379
                  ori          a2, a0, 1454
                  addi         s10, gp, -466
                  lui          tp, 496729
                  slt          s0, t0, t3
                  sltiu        a0, gp, -425
                  bgeu         a0, tp, 1922f
                  la           s0, region_0+1639 #start riscv_load_store_rand_instr_stream_10
                  auipc        a7, 488362
                  srai         a4, s3, 1
                  sltu         tp, gp, s1
                  srl          t5, s8, tp
                  srl          s6, s3, s5
                  sb           t3, -200(s0)
                  lh           a5, 175(s0)
                  sb           gp, 169(s0)
                  sltiu        a2, t4, 1217
                  auipc        s11, 449637
                  and          t0, t3, t4
                  lbu          s8, 222(s0)
                  lhu          zero, 249(s0)
                  lbu          t5, -72(s0)
                  sll          a4, t4, s8
                  lb           s6, 78(s0)
                  or           a5, t5, a2
                  addi         s9, a6, -377
                  slli         t3, t5, 3
                  lbu          t4, -203(s0)
                  lbu          s1, 65(s0)
                  lb           t4, 160(s0)
                  sra          s11, s4, t3
                  xor          s3, t4, s10
                  srli         s2, a6, 5
                  lbu          zero, -124(s0)
                  addi         t0, s0, -1593
                  sll          s5, s4, s4
                  lhu          t4, -231(s0)
                  lhu          a2, 135(s0) #end riscv_load_store_rand_instr_stream_10
                  bltu         s5, t5, 1919f
                  andi         sp, a7, -642
                  bge          a1, s11, 1931f
                  andi         a7, s7, 1229
                  lui          t2, 853504
                  add          s2, s7, s7
                  bge          ra, s4, 1917f
1917:             srl          s8, zero, sp
                  slli         s4, s8, 13
1919:             addi         s8, t2, -329
                  sra          a7, s9, t3
                  bgeu         ra, t4, 1939f
1922:             bltu         t4, t4, 1932f
                  slt          s9, a0, t0
                  bne          t6, s10, 1926f
                  blt          s3, s1, 1942f
1926:             or           s10, a3, a5
                  sll          t6, t5, ra
                  xor          a7, a5, a3
                  andi         t6, a0, -1432
                  auipc        tp, 61865
1931:             auipc        s10, 178455
1932:             xori         t5, a4, -559
                  srli         a0, tp, 21
                  sra          s3, a1, s4
                  sra          s4, t0, s5
                  slti         t2, t4, -1150
                  srli         a5, tp, 16
                  or           a3, a1, a5
1939:             srli         t0, s10, 2
                  sll          t6, s5, t4
                  nop
1942:             and          zero, a1, a5
                  andi         s3, sp, 1836
                  bgeu         a6, a2, 1949f
                  sub          t5, t2, s4
                  srl          s3, s9, s6
                  sltu         s3, s11, t0
                  nop
1949:             lui          s6, 324576
                  sub          s4, ra, ra
                  srl          s11, s6, s4
                  lui          zero, 652352
                  blt          a4, a2, 1955f
                  nop
1955:             slti         a0, a3, 1997
                  sltiu        sp, a6, 1697
                  bge          sp, t5, 1960f
                  nop
                  and          a0, t4, t0
1960:             xori         tp, a5, -1274
                  sltiu        a7, t6, -1304
                  bne          s10, s6, 1979f
                  srl          gp, s9, a2
                  slti         a1, a3, -1574
                  srli         t2, s8, 22
                  and          t3, s10, gp
                  sltiu        sp, t3, -337
                  xor          a3, t0, zero
                  sra          s0, a3, t4
                  xori         s5, t0, 213
                  bltu         s4, a0, 1972f
1972:             bge          a7, zero, 1991f
                  bne          t6, s2, 1978f
                  beq          t5, t2, 1994f
                  and          sp, s10, a7
                  srai         s1, t1, 5
                  add          t0, s2, a7
1978:             auipc        t4, 286239
1979:             srli         s6, sp, 1
                  srai         t5, a0, 26
                  slt          t6, zero, s0
                  sll          s0, a1, t0
                  add          s6, t1, s4
                  bne          s4, s11, 1998f
                  nop
                  sltu         s10, t5, a4
                  sra          s8, s7, t0
                  auipc        sp, 128158
                  bltu         s0, s0, 2000f
                  ori          a2, sp, 1245
1991:             sub          s9, s4, ra
                  srli         gp, s10, 30
                  slt          s5, a1, gp
1994:             bltu         sp, a1, 2011f
                  and          s9, s11, t4
                  bltu         a5, a3, 2006f
                  slti         s9, s0, 1560
1998:             bge          a0, a1, 2010f
                  srl          a0, s3, s5
2000:             sra          sp, s11, tp
                  slli         s3, s3, 16
                  xori         a3, s9, 931
                  sra          zero, s4, a4
                  sltiu        t0, a1, -417
                  xori         a5, s8, 2024
2006:             blt          t0, s9, 2013f
                  bge          s6, t5, 2017f
                  sra          s3, a6, a1
                  slti         s8, s1, 575
2010:             slti         tp, s1, -1755
2011:             addi         s6, a5, -256
                  add          gp, t4, s5
2013:             ori          a4, a1, -1453
                  srl          s8, t2, s9
                  slli         a5, t1, 25
                  andi         a0, s0, 1850
2017:             blt          a0, a0, 2025f
                  slti         t4, a6, -1566
                  sltu         s6, s10, t4
                  add          a7, s9, t3
                  sra          a1, a6, s4
                  and          s8, s5, s2
                  sll          sp, a6, sp
                  sra          a7, a7, sp
2025:             add          sp, s5, s6
                  sll          s0, a4, gp
                  bge          s9, s8, 2040f
                  sll          s10, zero, s0
                  slti         a0, s0, 1481
                  srai         t0, a6, 0
                  and          s8, zero, a7
                  sll          gp, a4, s2
                  xori         gp, a7, 1625
                  bltu         a7, s10, 2047f
                  lui          s0, 42806
                  sll          t2, t5, s10
                  srai         t6, t4, 28
                  sra          s10, s9, a2
                  or           t1, ra, s8
2040:             sra          a1, t3, a3
                  srai         t2, s5, 4
                  slti         s3, tp, -183
                  bge          t1, t0, 2063f
                  bge          s7, s6, 2059f
                  sll          t5, t0, a4
                  slli         t6, s3, 12
2047:             slti         tp, a1, -334
                  ori          t4, gp, 185
                  addi         t6, t5, -560
                  xori         s11, ra, 113
                  add          s9, a7, s0
                  bgeu         t1, ra, 2070f
                  lui          t2, 806615
                  sll          a7, s8, a6
                  srl          tp, s7, tp
                  auipc        t6, 755846
                  bge          t3, s10, 2064f
                  sub          a3, s9, a5
2059:             sub          a2, t6, s7
                  add          t3, t0, zero
                  slti         a3, t5, -1912
                  lui          zero, 718737
2063:             bne          t6, tp, 2074f
2064:             add          t5, s7, gp
                  slli         s8, t4, 15
                  xori         s8, t2, 726
                  bne          gp, gp, 2068f
2068:             xor          s2, gp, s9
                  add          t5, s11, a7
2070:             bltu         a0, s3, 2090f
                  slt          a2, a6, t6
                  addi         s3, a3, -2003
                  sltiu        a0, a1, -909
2074:             slt          a2, s7, s4
                  beq          a3, a7, 2093f
                  sub          s1, t0, a0
                  addi         t0, s0, -478
                  sub          gp, a5, a7
                  nop
                  sltu         t4, t2, s2
                  bne          s4, zero, 2083f
                  sltiu        s8, t3, 1817
2083:             srli         a3, t6, 28
                  ori          s6, tp, 921
                  or           s3, sp, a3
                  blt          t4, a7, 2088f
                  xor          t4, sp, t2
2088:             srai         s5, s9, 12
                  nop
2090:             sltiu        t2, t3, 1074
                  bge          sp, a2, 2096f
                  add          a5, tp, s5
2093:             srli         a2, t0, 18
                  sub          a7, a3, a2
                  sub          zero, s6, s11
2096:             srai         a3, s8, 1
                  sra          s0, a6, s10
                  slt          t6, s11, zero
                  bgeu         s2, a1, 2108f
                  add          s11, s10, t5
                  addi         a1, t6, 1249
                  sltu         s10, a7, s3
                  and          s10, s2, a0
                  sll          gp, t5, s5
                  sltiu        a4, t3, 1104
                  auipc        t1, 43052
                  srl          a4, s11, sp
2108:             sub          s11, s4, s0
                  srai         a2, s10, 23
                  addi         s9, s0, -1825
                  srl          gp, t5, tp
                  and          a5, s11, a0
                  slt          t4, a6, a4
                  bne          sp, tp, 2120f
                  or           t3, sp, tp
                  sub          s9, s7, s9
                  sll          s2, s0, s0
                  sltiu        a0, s2, -1899
                  xori         s11, s2, 499
2120:             add          a5, a2, a5
                  sll          a2, s11, a2
                  srli         t3, a5, 15
                  blt          gp, ra, 2133f
                  ori          s9, a7, -516
                  sltu         gp, s6, t1
                  sub          a1, s8, s11
                  slli         t0, s10, 20
                  blt          s10, a3, 2130f
                  srl          a4, s10, s2
2130:             sltiu        t4, t2, 495
                  sub          s11, s8, s11
                  bgeu         a1, gp, 2152f
2133:             ori          a3, a7, 507
                  bne          a6, t6, 2141f
                  and          s5, a0, gp
                  nop
                  xori         a1, gp, -1928
                  and          s5, s5, s6
                  sra          s1, a1, t3
                  sra          t5, zero, s8
2141:             addi         t6, s3, -86
                  and          a5, a7, s7
                  beq          a3, s8, 2162f
                  srl          s1, t5, s11
                  slt          t5, s10, s10
                  blt          t2, tp, 2159f
                  beq          s5, s10, 2165f
                  slli         gp, a4, 13
                  bne          tp, t3, 2151f
                  slli         a1, s9, 15
2151:             add          s8, t6, t2
2152:             sra          t3, a3, t1
                  xori         a3, s11, 814
                  slli         s0, s9, 28
                  slt          t0, t0, t4
                  addi         a1, t3, -618
                  srli         a1, t0, 17
                  beq          s3, s2, 2160f
2159:             add          a5, t0, t0
2160:             beq          t5, t0, 2171f
                  sltiu        a7, s1, -921
2162:             slt          t2, t1, t3
                  beq          a3, s1, 2181f
                  andi         t4, s9, -1274
2165:             bne          s7, s2, 2175f
                  slti         t6, s9, -2043
                  blt          a4, s5, 2178f
                  xori         zero, a2, -830
                  and          s2, t2, s0
                  sltu         s6, t4, a2
2171:             beq          s5, a6, 2184f
                  bgeu         t2, gp, 2181f
                  auipc        s6, 389221
                  xori         t1, t0, 2032
2175:             ori          s10, s4, 548
                  sll          a3, s2, s3
                  sra          a5, s6, s11
2178:             sltu         t2, t6, s1
                  andi         t2, s5, -663
                  sra          t1, t0, t1
2181:             xor          t6, a4, zero
                  and          t1, s1, s1
                  blt          a7, a4, 2188f
2184:             srai         sp, s4, 9
                  add          s11, sp, a0
                  auipc        gp, 427500
                  sltu         s1, a5, a5
2188:             sltu         s6, tp, a1
                  lui          zero, 589331
                  add          a1, t3, a1
                  blt          gp, t1, 2203f
                  add          t6, s6, a6
                  sltiu        s1, t1, 536
                  bne          s10, s2, 2202f
                  xor          s2, a3, s9
                  sll          s6, a5, tp
                  nop
                  nop
                  or           s2, t1, a4
                  srai         tp, t5, 2
                  beq          a0, ra, 2206f
2202:             blt          sp, a3, 2217f
2203:             bltu         a5, ra, 2220f
                  sra          t4, t6, s7
                  srai         tp, a7, 5
2206:             slt          a7, s8, s5
                  bge          a5, s8, 2208f
2208:             blt          ra, s6, 2228f
                  slli         a1, a2, 13
                  srl          s2, s7, s5
                  add          s1, a1, s8
                  beq          ra, t2, 2219f
                  bgeu         s5, a7, 2227f
                  bgeu         a2, a7, 2217f
                  lui          a3, 674206
                  xori         t3, a5, -980
2217:             addi         zero, a0, -1503
                  sll          t4, s0, s11
2219:             bge          t6, a1, 2220f
2220:             ori          zero, s10, -1919
                  sub          gp, t6, s8
                  bgeu         s9, s6, 2242f
                  bltu         t3, a5, 2240f
                  lui          s10, 974231
                  sltiu        a3, t2, -1537
                  sub          s5, s10, ra
2227:             srl          t4, s9, t5
2228:             or           s11, s6, a5
                  blt          a7, sp, 2235f
                  andi         t4, t5, 1546
                  slli         gp, s7, 26
                  bne          ra, t3, 2242f
                  andi         s6, s6, -1986
                  bgeu         s10, gp, 2236f
2235:             slli         s3, a4, 1
2236:             and          s5, a0, a7
                  xor          zero, gp, ra
                  beq          s10, gp, 2255f
                  bgeu         zero, a5, 2253f
2240:             slli         s4, s6, 0
                  xor          s0, a3, a2
2242:             beq          t6, t3, 2253f
                  xori         t1, a2, 1612
                  nop
                  bge          ra, t6, 2247f
                  addi         s3, t6, 1289
2247:             nop
                  blt          t2, a4, 2250f
                  lui          t6, 818010
2250:             slli         a7, a0, 11
                  addi         zero, ra, -1294
                  srl          s3, sp, s8
2253:             beq          a1, s7, 2273f
                  sltu         s0, gp, s8
2255:             blt          s4, t3, 2272f
                  xori         t3, t5, -1065
                  bge          t2, s6, 2277f
                  sll          t5, a4, a6
                  andi         s9, s7, 1485
                  xori         t6, a5, -2016
                  slt          s8, tp, t1
                  sll          a4, s5, s0
                  xori         s5, t6, -1530
                  xor          a3, a7, a3
                  ori          t2, t2, 105
                  srli         gp, s11, 4
                  bge          s0, t3, 2270f
                  srl          t4, s7, s1
                  and          t1, t4, s6
2270:             bltu         s2, a1, 2288f
                  xor          s2, sp, a2
2272:             ori          t2, t0, -447
2273:             auipc        t6, 947317
                  slli         zero, a4, 27
                  blt          s9, a3, 2276f
2276:             bltu         tp, s8, 2291f
2277:             sll          a2, s2, a6
                  srl          t6, a4, gp
                  blt          a0, s0, 2285f
                  srl          s11, a6, a7
                  sra          s6, s8, t5
                  nop
                  nop
                  blt          t6, a1, 2297f
2285:             slli         s9, gp, 29
                  beq          s0, t4, 2296f
                  nop
2288:             sub          t0, s0, t3
                  bge          s8, s4, 2294f
                  srai         zero, a6, 19
2291:             sltu         t0, s3, s0
                  or           s5, s5, t2
                  sltu         s5, t6, tp
2294:             xor          s9, s4, sp
                  xor          s2, a5, s0
2296:             ori          s3, ra, -507
2297:             and          s3, s6, t1
                  add          s4, a3, s8
                  addi         t5, s7, 1783
                  slti         a1, t4, 1874
                  lui          a3, 980233
                  srl          zero, t3, a2
                  bne          s2, a5, 2304f
2304:             bge          a7, a7, 2311f
                  slti         t0, s2, 1819
                  ori          s10, a4, -1092
                  srl          zero, ra, s7
                  and          s9, s5, s6
                  xor          sp, zero, t2
                  lui          s1, 508614
2311:             sub          s1, s11, s5
                  and          t3, a3, s3
                  bgeu         t1, gp, 2322f
                  bltu         s1, s6, 2322f
                  sll          a1, a6, a5
                  sra          sp, a0, t4
                  add          a7, s2, sp
                  slli         zero, ra, 19
                  srli         a5, gp, 15
                  bge          t3, s4, 2332f
                  slt          s10, s2, t0
2322:             lui          t6, 279134
                  lui          s2, 442658
                  nop
                  sll          t2, t4, s3
                  nop
                  blt          ra, s8, 2346f
                  lui          zero, 529315
                  add          s1, s6, ra
                  bgeu         t0, s8, 2343f
                  blt          s3, s7, 2351f
2332:             or           s6, tp, sp
                  sra          s8, a4, s6
                  bge          a3, s5, 2352f
                  slt          s11, s7, s6
                  bltu         a7, s5, 2343f
                  addi         a7, a4, -1077
                  bgeu         s0, a6, 2343f
                  lui          a1, 933812
                  blt          s2, gp, 2351f
                  beq          s10, a5, 2350f
                  srli         a1, t0, 11
2343:             slti         s1, s8, 1670
                  bgeu         sp, t3, 2354f
                  add          s3, a0, a1
2346:             srai         a1, s10, 12
                  sltiu        s11, t1, 1199
                  addi         t4, a3, -872
                  slli         t0, t6, 28
2350:             ori          a7, a4, -871
2351:             srai         s9, t0, 18
2352:             bge          t0, s10, 2353f
2353:             slt          gp, t0, s8
2354:             lui          a2, 44604
                  or           t1, ra, s3
                  slt          t1, tp, s3
                  bne          t5, a5, 2358f
2358:             auipc        s2, 693542
                  bne          a0, zero, 2377f
                  sra          t4, s2, s3
                  lui          t4, 17623
                  srai         sp, s0, 5
                  srai         a0, s1, 16
                  lui          a0, 862440
                  sub          t2, s1, t5
                  srli         s0, zero, 27
                  ori          a3, a4, -1503
                  srli         s4, s10, 14
                  bge          gp, a5, 2381f
                  bltu         a5, a6, 2384f
                  srli         s0, s10, 23
                  sll          t1, a2, a4
                  slli         tp, ra, 30
                  ori          t0, s0, 970
                  sltu         a7, s3, a1
                  slli         t3, sp, 0
2377:             bne          s0, a2, 2382f
                  nop
                  bne          s5, a1, 2390f
                  blt          s8, s6, 2391f
2381:             bne          t4, a1, 2388f
2382:             slti         tp, t3, 1263
                  addi         s11, zero, 1884
2384:             slt          s1, a1, s4
                  ori          tp, s10, -1601
                  slti         t0, a5, -468
                  srl          a5, a6, s0
2388:             and          s1, tp, s4
                  xori         tp, gp, 248
2390:             ori          gp, s8, 1910
2391:             slt          t2, a0, s9
                  sll          s4, s11, s0
                  ori          t6, zero, 1814
                  add          sp, a0, s7
                  sub          s2, s1, s10
                  xor          a7, t4, t5
                  srli         a2, a7, 19
                  srli         s4, a4, 11
                  addi         s3, s9, 1823
                  andi         a5, ra, -1479
                  slli         a2, s7, 27
                  xori         s1, a1, -665
                  xori         t0, a2, -411
                  srai         a0, s5, 9
                  sltu         t3, s10, s8
                  slt          sp, t5, s0
                  bltu         s8, a2, 2425f
                  xori         s1, t1, 1747
                  or           t1, tp, t6
                  bgeu         s3, a6, 2425f
                  sltiu        s9, s1, -656
                  sra          s8, sp, a0
                  srli         s10, a3, 18
                  bne          gp, a7, 2421f
                  slli         a7, a7, 8
                  nop
                  srl          a4, zero, ra
                  srl          gp, a2, a6
                  sra          a7, a6, a1
                  bne          s4, a6, 2440f
2421:             auipc        a7, 1025482
                  sltu         a4, a5, s9
                  blt          s3, s4, 2426f
                  slli         s0, s1, 20
2425:             srli         s3, s9, 25
2426:             andi         a5, zero, -744
                  sll          t1, zero, a2
                  bne          s4, t5, 2445f
                  xor          t1, a0, s10
                  auipc        zero, 817234
                  xor          s3, a6, t1
                  blt          a3, t4, 2438f
                  xori         a5, sp, 1327
                  slli         t3, s8, 31
                  slti         sp, a3, 1447
                  srl          s10, a1, s2
                  sltiu        s11, s5, -623
2438:             slt          s4, ra, s9
                  sltu         t5, t6, a2
2440:             add          s0, s6, t2
                  beq          s6, t4, 2454f
                  srl          t4, t6, t2
                  sltiu        t0, t0, -1446
                  ori          a2, a6, -1840
2445:             slli         s1, a1, 21
                  beq          a7, s10, 2448f
                  slli         s10, s5, 17
2448:             sll          s2, s5, s0
                  blt          t4, s11, 2451f
                  sltiu        zero, t3, 1208
2451:             nop
                  ori          s0, a7, 1722
                  slt          s4, t1, gp
2454:             blt          t2, t6, 2474f
                  slt          a2, gp, s11
                  sra          a1, t5, ra
                  sll          s10, a2, a6
                  blt          a3, a6, 2477f
                  xor          s0, s7, s9
                  srl          t5, gp, s5
                  and          a0, a2, zero
                  sltu         s0, a7, zero
                  or           tp, s3, t4
                  bgeu         tp, a7, 2469f
                  sub          s9, a5, t0
                  andi         s9, s1, -1194
                  slt          a7, s4, tp
                  bge          s3, t6, 2488f
2469:             ori          s0, t0, 1715
                  addi         a2, s10, 1820
                  bne          a3, t3, 2484f
                  blt          a5, s2, 2474f
                  sltu         t1, s2, s5
2474:             bltu         ra, a0, 2491f
                  srl          t2, t0, a3
                  nop
2477:             bgeu         zero, t3, 2487f
                  slli         sp, t3, 15
                  srai         t4, tp, 13
                  add          t6, a5, a3
                  bge          zero, ra, 2489f
                  slt          a1, a2, t1
                  andi         s9, a3, -167
2484:             nop
                  lui          t1, 438390
                  bgeu         s10, tp, 2497f
2487:             andi         s8, tp, -328
2488:             srl          t4, a4, a0
2489:             srli         s9, s0, 8
                  addi         a2, s7, -455
2491:             or           s0, t5, a7
                  bgeu         s1, t6, 2509f
                  sltu         s8, s0, s11
                  srli         a1, a4, 8
                  or           s0, ra, a0
                  add          s1, s5, t0
2497:             xori         a2, s4, 1184
                  bge          t1, s5, 2506f
                  sltu         s9, zero, a4
                  srli         t4, s0, 19
                  nop
                  xor          t2, a2, zero
                  sub          tp, a1, tp
                  sltiu        s3, s2, 991
                  srli         s1, s6, 20
2506:             addi         a3, s4, -677
                  xori         s4, t6, 346
                  auipc        a2, 1043075
2509:             bne          t1, a5, 2522f
                  srai         s4, sp, 29
                  nop
                  bgeu         ra, gp, 2530f
                  sra          s11, s7, gp
                  addi         t6, sp, -693
                  lui          a1, 405624
                  auipc        gp, 1031923
                  addi         s11, s8, -1441
                  xori         a1, sp, -111
                  sll          s11, zero, t3
                  or           a1, s4, t0
                  srai         a7, a5, 14
2522:             nop
                  bne          gp, t1, 2526f
                  and          t6, a6, s10
                  beq          tp, s11, 2530f
2526:             nop
                  nop
                  slli         zero, t6, 9
                  slt          s2, s8, a3
2530:             slti         s2, s5, 1008
                  sub          a1, a4, s11
                  or           a4, gp, a5
                  or           s2, s10, s1
                  slti         s2, s2, -1540
                  and          t4, s11, s1
                  srai         gp, s9, 0
                  sub          a5, s7, t0
                  sll          s0, s4, s4
                  sll          t6, t5, s4
                  bltu         s5, s0, 2547f
                  xori         a4, ra, 547
                  slti         a1, a7, -333
                  or           s11, t6, a3
                  srai         s2, a7, 12
                  addi         s3, sp, -411
                  sll          t0, a6, t2
2547:             ori          a1, gp, 1636
                  sub          a7, s2, s0
                  lui          a3, 547019
                  auipc        s10, 1010867
                  xori         s10, ra, 131
                  sra          s3, t1, a4
                  addi         t0, sp, 751
                  ori          a1, a7, -1058
                  slli         gp, s2, 29
                  add          a2, a1, zero
                  slli         t0, t5, 31
                  srai         a1, gp, 3
                  addi         s5, s2, 1574
                  srli         a7, t2, 10
                  addi         a7, s1, -682
                  srl          s5, s1, a4
                  slti         a3, t5, 530
                  slt          s6, a2, t0
                  ori          s6, a7, -314
                  beq          t3, s11, 2576f
                  addi         a4, a0, -1315
                  bgeu         a3, a1, 2579f
                  srai         t5, s6, 15
                  ori          s4, s3, -1316
                  sltiu        s1, t2, 248
                  lui          a0, 341863
                  ori          s0, a6, -1986
                  bge          s2, a1, 2576f
                  or           s6, a0, s1
2576:             slti         t1, s7, -1236
                  addi         zero, t2, -488
                  sll          s6, t2, sp
2579:             sltiu        t5, s10, 169
                  lw           t1, 4(s7)
                  addi         s7, s7, 44
                  or           sp, ra, s1
                  lui          zero, 995558
                  andi         a1, s1, -697
3423:             addi x27, x6, 1
3423:             jalr x27, x27, 0
sub_8:            add          s2, t4, ra
                  bgeu         a2, a4, sub_8_stack_p
                  sub          a2, t0, a3
sub_8_stack_p:    addi         s7, s7, -40
                  andi         sp, s7, 1900
                  lui          t6, 723673
                  sw           t1, 4(s7)
                  or           t4, tp, t5
                  andi         a1, a3, -418
                  slli         s2, s1, 19
                  auipc        t1, 903145
                  la           s9, sub_9
                  srl          zero, a4, s9
                  addi         s9, s9, 883
                  sltu         a2, s5, s1
                  srl          s6, zero, t4
                  auipc        s10, 1026379
                  add          sp, s3, a5
                  andi         t0, t1, -1356
                  auipc        t3, 801310
                  bltu         s3, a7, sub_8_j13 #branch to jump instr
                  and          a4, t3, s1
sub_8_j13:        jalr         t1, s9, -882 #jump sub_8 -> sub_9
                  sra          s10, a3, s9
                  add          gp, a7, t2
                  xori         t3, a6, -892
                  sltiu        gp, s3, 590
                  sltiu        s0, s9, 1866
                  sll          s11, zero, s3
                  auipc        t6, 412831
                  la           t4, sub_9
                  xor          s5, sp, a6
                  addi         t4, t4, 848
                  sll          a1, t3, s3
                  srai         t0, s3, 6
sub_8_j14:        jalr         t1, t4, -848 #jump sub_8 -> sub_9
                  slti         tp, t6, -190
                  add          a1, a2, t2
                  beq          s11, zero, 21f
                  sub          s3, a3, ra
                  beq          s1, a4, 5f
5:                lui          a7, 902252
                  auipc        a5, 347049
                  nop
                  nop
                  sltu         s9, t5, s2
                  slli         t1, a6, 22
                  sltu         a4, zero, a1
                  sltiu        s8, a2, -975
                  or           s10, s9, t3
                  sltiu        s3, t6, -194
                  sltiu        a3, a4, -1592
                  ori          s0, s2, 1501
                  and          a4, a3, s2
                  or           s3, t5, t4
                  beq          a6, s9, 24f
                  slti         t3, s1, 780
21:               bltu         a7, s9, 36f
                  bltu         a3, s1, 36f
                  beq          a2, s0, 36f
24:               srl          t4, a3, s8
                  or           a3, s10, s0
                  sltu         a1, sp, sp
                  addi         s3, zero, -252
                  bne          tp, t3, 36f
                  auipc        t0, 878945
                  andi         s6, s2, -1038
                  bge          t3, s9, 36f
                  or           t6, s7, s7
                  and          t0, s7, t2
                  and          s2, gp, a3
                  sltu         a4, a3, s10
36:               auipc        s6, 407775
                  or           t4, t2, t5
                  lw           t1, 4(s7)
                  srl          a3, t1, s1
                  slli         s5, sp, 10
                  sra          a2, t0, s4
                  slli         s6, s6, 0
                  addi         s7, s7, 40
                  slli         gp, a3, 15
                  and          s11, s11, t5
82:               addi x11, x6, 0
82:               jalr x11, x11, 0
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
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
.section .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_2:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_3:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_4:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_5:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_6:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_7:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_8:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_9:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_10:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_11:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_12:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_13:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_14:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_15:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x16, x23, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x5, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x5, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x5, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x5, x12, ecall_handler
                  li x12, 0x1
                  beq x5, x12, instr_fault_handler
                  li x12, 0x5
                  beq x5, x12, load_fault_handler
                  li x12, 0x7
                  beq x5, x12, store_fault_handler
                  li x12, 0xc
                  beq x5, x12, pt_fault_handler
                  li x12, 0xd
                  beq x5, x12, pt_fault_handler
                  li x12, 0xf
                  beq x5, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x23, x16, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x16, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x16, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x23, x16, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x23, x16, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x23, x16, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
