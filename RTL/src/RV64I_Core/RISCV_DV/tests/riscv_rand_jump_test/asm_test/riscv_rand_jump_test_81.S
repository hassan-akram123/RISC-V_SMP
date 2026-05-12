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
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0xf2d97410
                  li x1, 0x12d9ff5
                  li x2, 0xb7aee122
                  li x3, 0x0
                  li x4, 0xf0e887b8
                  li x5, 0x80000000
                  li x6, 0xf06e9f72
                  li x7, 0x6fb538f8
                  li x8, 0x80000000
                  li x9, 0xd835c09f
                  li x10, 0x9a60461a
                  li x11, 0x0
                  li x12, 0xa488d280
                  li x13, 0x0
                  li x14, 0x6d9afa2b
                  li x15, 0x0
                  li x16, 0xf19e835a
                  li x17, 0x0
                  li x18, 0x1
                  li x19, 0x4
                  li x20, 0x4d72564b
                  li x22, 0xb
                  li x23, 0x2
                  li x24, 0xf476c3aa
                  li x25, 0x6
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x9
                  li x29, 0x0
                  li x30, 0x9df5d78d
                  la x21, user_stack_end
main:             srai         a7, a7, 26
                  sltiu        a3, s4, 1781
                  la           s1, sub_1
                  or           t3, a4, t2
                  addi         s1, s1, 597
                  xor          a4, a0, s3
                  lui          t0, 803410
                  and          ra, zero, tp
                  slli         s4, s3, 24
                  xori         a0, s2, -472
                  slti         s11, a5, -502
main_j2:          jalr         ra, s1, -596 #jump main -> sub_1
                  la           s1, region_0+913 #start riscv_load_store_rand_instr_stream_11
                  slt          s4, a5, s0
                  lb           s10, 681(s1)
                  sub          s10, s7, s5
                  xori         tp, a4, -1218
                  lb           s6, 400(s1)
                  lw           a6, 235(s1)
                  sh           a7, 327(s1)
                  srli         s10, zero, 29
                  srl          a5, a2, a5
                  lbu          a5, -831(s1)
                  sltiu        t5, a3, 310
                  sb           t6, 676(s1)
                  sh           gp, 135(s1)
                  lb           t0, 108(s1)
                  sra          a2, a3, s7
                  lh           s10, 417(s1)
                  sb           s3, 838(s1)
                  slt          t4, t0, t1
                  srai         s9, t2, 26
                  sb           a0, 935(s1)
                  sb           a4, -696(s1)
                  or           s7, s6, ra
                  slti         a7, t5, -524
                  lb           s7, -29(s1)
                  sb           a1, -254(s1)
                  lbu          s8, -780(s1)
                  andi         tp, a1, -1647
                  sll          a1, a3, t1
                  sw           a2, -893(s1)
                  lh           t3, 465(s1) #end riscv_load_store_rand_instr_stream_11
                  la           t1, region_0+1405 #start riscv_load_store_rand_instr_stream_4
                  sb           s5, -3(t1)
                  lui          t5, 43580
                  sb           tp, 6(t1)
                  srl          s4, zero, s7
                  sltiu        a6, a6, -772
                  sw           s0, -5(t1)
                  lb           a7, 10(t1)
                  or           zero, t5, a0
                  lui          s11, 647246
                  sb           t3, 8(t1)
                  nop
                  sb           a5, 14(t1)
                  sb           s4, -10(t1)
                  srli         gp, s0, 7
                  lb           t3, 10(t1)
                  sb           s6, 2(t1)
                  srli         gp, zero, 5
                  lbu          t0, 2(t1)
                  lw           tp, 15(t1)
                  srl          s4, a1, t6
                  sltu         a3, a5, t0
                  lb           s2, 10(t1)
                  addi         a7, s2, 663
                  sub          tp, a5, a6
                  ori          t2, gp, -1366
                  lh           t2, -3(t1)
                  lhu          s0, -7(t1)
                  lbu          tp, 12(t1)
                  lbu          ra, 2(t1)
                  sltiu        a1, s6, 1252
                  lbu          s4, -16(t1)
                  sltiu        s0, s9, -1586
                  lui          s7, 890022
                  lbu          s8, -3(t1)
                  or           a3, s6, s10
                  lhu          a7, 15(t1)
                  lb           t5, -10(t1)
                  lbu          a7, -1(t1)
                  sb           s4, -12(t1)
                  slti         t5, t2, -1496
                  sll          ra, a5, s11
                  sb           s10, -2(t1)
                  and          zero, t3, t6
                  lb           s0, -16(t1)
                  and          zero, a7, s3
                  lui          a1, 1040271
                  sub          s10, s0, a2
                  lw           s11, -1(t1)
                  xor          a0, t0, gp
                  sb           s3, 11(t1) #end riscv_load_store_rand_instr_stream_4
                  la           a2, region_0+982 #start riscv_load_store_rand_instr_stream_6
                  add          s7, t6, a0
                  srai         s2, a5, 29
                  lb           t0, 3(a2)
                  sra          s3, gp, s9
                  slt          t2, a1, s5
                  lb           t2, -41(a2)
                  xori         s9, a2, -1883
                  srl          s9, t3, a6
                  nop
                  lhu          s0, -54(a2)
                  or           a0, s5, t5
                  lbu          s3, -3(a2)
                  lb           a4, -33(a2)
                  xori         s6, s6, -1250
                  andi         s2, s1, -1181
                  xor          s4, s9, t2
                  sb           s6, 53(a2)
                  sll          t0, a5, s10
                  addi         a3, gp, 1493
                  srl          s10, ra, a2
                  xori         a0, t2, 365
                  lhu          a5, 12(a2)
                  lh           s11, 14(a2)
                  lb           t0, -56(a2)
                  xor          s11, a6, sp
                  sub          zero, t6, a6
                  sra          a3, zero, a5
                  slt          s2, s2, s5
                  srli         t2, zero, 22
                  add          a1, gp, s10
                  lb           a4, 15(a2)
                  nop
                  sra          tp, a6, a1
                  sll          s6, zero, a7
                  lb           t2, 17(a2)
                  lbu          a3, 35(a2)
                  sb           a1, 5(a2)
                  lb           a1, -63(a2) #end riscv_load_store_rand_instr_stream_6
                  la           t4, region_0+380 #start riscv_load_store_rand_instr_stream_8
                  srai         t5, ra, 4
                  sb           gp, -205(t4)
                  sb           s7, 1255(t4)
                  srai         tp, s5, 7
                  sb           s1, 841(t4)
                  srl          t5, a3, s4
                  lb           a1, 646(t4)
                  sltiu        t0, s4, -1606
                  add          zero, t2, a2
                  lb           a2, -360(t4)
                  sltu         t0, s1, s2
                  lbu          a4, 640(t4)
                  lbu          a5, 182(t4)
                  sb           s10, 519(t4)
                  lhu          a0, 742(t4)
                  lbu          a2, 422(t4)
                  lh           a3, -362(t4)
                  lb           a4, 977(t4)
                  sb           a7, 1362(t4)
                  sw           zero, 1468(t4)
                  sub          ra, s5, t6
                  sub          s2, t4, s10
                  srai         a4, t0, 8
                  sb           a5, 1418(t4)
                  addi         a3, t2, 981
                  lbu          a6, 1452(t4)
                  and          s1, a1, s8
                  srl          s10, t4, t2
                  lw           t0, 456(t4)
                  sb           s2, 617(t4)
                  sb           a0, -251(t4)
                  lbu          s9, 1005(t4)
                  srai         t2, a2, 27
                  slli         a3, s1, 5
                  sh           s11, 138(t4)
                  sw           a3, 1448(t4)
                  lh           s10, -348(t4)
                  and          a3, gp, s11
                  andi         a7, s11, -1257
                  srli         t5, s5, 13
                  xori         a7, s2, 849
                  xor          zero, s4, s6
                  sb           a0, 27(t4)
                  xor          t2, t0, zero
                  lbu          s3, -142(t4)
                  lbu          a6, 363(t4) #end riscv_load_store_rand_instr_stream_8
                  la           s10, region_1+724 #start riscv_load_store_rand_instr_stream_5
                  lbu          s2, -159(s10)
                  lbu          s4, -226(s10)
                  sll          t0, tp, s11
                  lbu          t2, 71(s10)
                  sltu         s0, a4, t5
                  sll          s9, tp, s2
                  lb           s11, -71(s10)
                  lbu          t1, 78(s10)
                  lw           t1, 132(s10)
                  slli         s0, a0, 6
                  sh           sp, -216(s10)
                  slli         s7, s4, 17
                  lui          a6, 315583
                  lhu          a1, -80(s10)
                  sw           s7, -44(s10)
                  sltu         s8, s0, tp
                  andi         s2, zero, 1562
                  ori          s8, s1, 89
                  sb           gp, 150(s10)
                  sll          t5, s2, s1
                  lbu          t2, -117(s10)
                  lb           ra, 203(s10)
                  sb           t2, 67(s10)
                  ori          s4, a7, -309
                  sb           a1, -239(s10)
                  lbu          t0, 83(s10)
                  add          a7, s7, s2
                  sra          t4, tp, a0
                  lw           a1, -28(s10)
                  sb           s3, 177(s10)
                  ori          a3, s3, 472
                  sltu         s1, tp, s9
                  lb           a6, -215(s10)
                  sra          a7, t3, s1
                  sll          s11, zero, a0
                  sb           s1, -49(s10)
                  sltu         t1, s11, t0
                  lb           a6, 57(s10)
                  lbu          s3, -126(s10)
                  lbu          t5, 47(s10)
                  sb           t4, 147(s10) #end riscv_load_store_rand_instr_stream_5
                  la           gp, region_0+792 #start riscv_load_store_rand_instr_stream_7
                  lbu          a0, -711(gp)
                  sltiu        s4, t2, 1036
                  lbu          t2, 636(gp)
                  nop
                  lbu          s3, -307(gp)
                  sltu         a2, t2, s4
                  sb           s2, 763(gp)
                  lb           zero, -309(gp)
                  sh           s9, -750(gp)
                  lb           a6, 481(gp)
                  xori         s7, a2, 1351
                  sh           s8, 1102(gp)
                  or           t1, a5, s2
                  addi         a1, a1, 1709
                  sub          tp, a7, s5
                  sub          s0, t6, s9
                  nop
                  and          zero, t4, s1
                  srai         t0, s1, 25
                  srli         tp, a3, 29
                  lbu          s8, 623(gp)
                  srai         s2, tp, 22
                  sll          s8, a5, s10
                  or           s2, a5, sp
                  sb           a6, 953(gp)
                  lhu          t3, 612(gp)
                  sltiu        s6, s7, 1266
                  andi         tp, a2, 997
                  slli         t5, tp, 13
                  lb           t0, 423(gp)
                  ori          s0, a6, 1812
                  lbu          s0, -384(gp) #end riscv_load_store_rand_instr_stream_7
                  la           s3, region_0+225 #start riscv_load_store_rand_instr_stream_3
                  lbu          a3, 18(s3)
                  sb           t0, 30(s3)
                  lb           s8, -50(s3)
                  sra          s4, t3, s9
                  lbu          s9, -42(s3)
                  and          zero, s4, a1
                  srai         t0, a5, 1
                  add          t5, s9, t5
                  and          a7, sp, s4
                  slli         a4, t5, 29
                  lui          s6, 480576
                  addi         zero, ra, -495
                  xori         s0, t2, -797
                  lb           s0, 30(s3)
                  sb           s1, 56(s3)
                  slt          s7, t0, s5
                  addi         s7, s8, -37
                  xori         s7, s6, 871
                  sltu         t5, a3, a2
                  add          s10, t2, t2
                  and          s2, a1, t3
                  sra          gp, a2, t4
                  sltu         a1, s10, s10
                  add          s11, t4, a1
                  xor          a3, t3, a2
                  sb           t4, -46(s3)
                  lb           s0, 31(s3)
                  sltu         s11, a1, s1
                  lbu          t5, -36(s3)
                  sb           a0, -47(s3)
                  lb           a1, -9(s3)
                  ori          s8, t1, -117
                  srl          a4, s5, a7
                  xori         s8, s2, 1229
                  slt          t1, tp, tp
                  lbu          s0, -15(s3)
                  sb           s6, 58(s3) #end riscv_load_store_rand_instr_stream_3
                  la           a3, region_1+1629 #start riscv_load_store_rand_instr_stream_0
                  sub          s4, s11, t5
                  lh           s6, -53(a3)
                  andi         a2, s1, 193
                  sb           s6, -227(a3)
                  addi         t2, a3, 581
                  andi         s6, a0, 1682
                  lbu          s3, 95(a3)
                  lb           gp, 117(a3)
                  lbu          zero, -231(a3)
                  sb           a1, 45(a3)
                  lb           s0, 232(a3)
                  srai         tp, s9, 28
                  slti         s10, t3, 493
                  lbu          s3, 184(a3)
                  slli         ra, t1, 28
                  lbu          t2, 80(a3)
                  lb           a2, -54(a3)
                  sb           t5, 16(a3)
                  sb           t6, 12(a3)
                  addi         a1, t4, -422
                  lui          s6, 655780
                  add          t4, s3, t1
                  lhu          s6, -49(a3)
                  lhu          s3, -133(a3)
                  lb           a7, 156(a3)
                  sltu         a0, gp, sp
                  lb           s2, -93(a3)
                  sh           a3, -121(a3)
                  sb           t2, 156(a3)
                  auipc        s2, 12543
                  lbu          gp, -173(a3)
                  xori         s10, s8, 1584
                  andi         s10, s0, 409
                  srl          s8, t1, a6
                  sub          t0, t1, a1
                  lui          t5, 1004339
                  lb           s3, -16(a3)
                  lb           t0, -74(a3)
                  sb           s3, -161(a3)
                  sb           t4, 154(a3)
                  lbu          a5, -140(a3)
                  lw           t2, 123(a3) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+557 #start riscv_load_store_rand_instr_stream_1
                  xori         t1, t1, 1932
                  slli         a4, t0, 27
                  sh           s6, 7(t5)
                  lw           s4, 11(t5)
                  lb           zero, -6(t5)
                  lbu          t0, 3(t5)
                  sb           a0, -6(t5)
                  nop
                  andi         s2, a3, 1496
                  andi         s4, s1, -1392
                  sh           s3, -5(t5)
                  sub          a4, t2, s9
                  sra          zero, s2, a2
                  ori          a2, a0, 939
                  lw           a0, 7(t5)
                  srli         a6, t4, 24
                  andi         t3, a4, -1518
                  slt          a7, t4, s6
                  add          ra, s2, a6
                  xori         s4, zero, 132
                  sb           gp, -8(t5)
                  lbu          s11, -6(t5)
                  slli         t3, s7, 1
                  srli         tp, s5, 25
                  sltiu        a6, s6, -159
                  srl          s10, s7, t3
                  slti         t0, zero, 1236
                  lb           ra, 9(t5)
                  lui          s8, 772031
                  and          a2, ra, s5
                  lui          a2, 390101
                  sra          s6, t2, s8
                  xori         ra, t3, -1526
                  xor          s9, s9, tp
                  ori          gp, a1, 1445
                  lhu          s11, 13(t5)
                  lbu          t4, 15(t5)
                  lbu          gp, -4(t5)
                  sb           t1, 10(t5)
                  sltu         a6, t5, a5
                  lhu          s0, 15(t5) #end riscv_load_store_rand_instr_stream_1
                  lui          a6, 736911
                  beq          s8, t1, 12f
                  beq          sp, s5, 22f
                  nop
                  slt          s6, a1, a2
                  slli         s7, ra, 22
                  beq          a5, s0, 25f
                  ori          a3, gp, 1627
                  or           a5, gp, t4
                  srli         a1, a6, 11
                  xor          gp, t6, a6
                  bltu         a1, s4, 25f
12:               slt          ra, sp, a6
                  sltu         tp, t4, t3
                  srai         a0, tp, 17
                  and          a2, t4, a6
                  bltu         s1, s11, 23f
                  bne          s8, s10, 33f
                  blt          t3, a3, 38f
                  slti         t2, s3, 216
                  xor          t1, t0, sp
                  andi         t3, a2, -1745
22:               blt          t6, s8, 36f
23:               slt          a5, t4, t2
                  srl          s2, tp, s10
25:               srli         a7, s4, 4
                  blt          s4, s10, 30f
                  slti         ra, s5, -692
                  slt          a5, s4, s4
                  xori         a7, a3, 1946
30:               slli         t0, s6, 11
                  sltiu        ra, t2, -375
                  sltiu        a6, t3, -1170
33:               sltu         s0, s3, a1
                  sll          a5, t6, s6
                  srli         t1, a7, 29
36:               andi         s8, sp, -1301
                  sub          a3, a5, t3
38:               sub          s7, ra, s8
                  and          s6, t4, a1
                  slt          s10, t6, t0
                  or           a3, s11, s11
                  xor          t5, s10, a6
                  auipc        zero, 1013674
                  sltiu        s11, ra, -852
                  slt          s11, a5, s9
                  sll          s8, tp, zero
                  srli         s9, gp, 21
                  sub          a3, s0, t4
                  srli         a3, s5, 8
                  sltu         a2, t6, sp
                  ori          a4, s4, -1724
                  sltiu        s4, t2, 853
                  sll          s1, s1, tp
                  srl          t4, a2, a4
                  bltu         tp, tp, 71f
                  beq          t0, a4, 71f
                  sub          s3, t6, t3
                  sub          a3, a7, s1
                  slli         s2, t4, 0
                  bge          t5, t0, 69f
                  bgeu         s0, s9, 67f
                  nop
                  srai         s7, s9, 31
                  slli         a6, t5, 16
                  sub          s0, s0, s6
                  andi         s1, a2, 1261
67:               sltiu        t4, s6, -1698
                  bne          ra, a6, 74f
69:               bne          t4, t1, 81f
                  sub          s9, ra, a4
71:               srai         ra, t6, 5
                  bgeu         s7, t0, 76f
                  ori          a2, s9, 752
74:               sra          a7, a7, ra
                  add          t1, gp, a6
76:               srl          a0, s10, a3
                  lui          zero, 733025
                  srai         a3, s11, 1
                  auipc        a1, 781045
                  or           a1, a4, a5
81:               add          a2, zero, a7
                  srai         s2, s2, 12
                  nop
                  beq          t3, t3, 89f
                  blt          s8, zero, 91f
                  or           a0, s6, s10
                  srli         s6, t4, 23
                  slt          s7, s1, ra
89:               blt          s6, a5, 105f
                  bne          gp, t4, 110f
91:               blt          s11, s11, 110f
                  addi         t2, t6, -1699
                  add          tp, s9, a5
                  srl          t4, a3, t3
                  or           s2, s5, a0
                  srli         s2, s7, 7
                  blt          s7, t3, 103f
                  sra          gp, s5, s5
                  sra          gp, s2, s7
                  sra          t5, a5, s11
                  add          a5, a0, s7
                  or           a1, a7, s2
103:              srli         s2, zero, 0
                  beq          a0, sp, 110f
105:              andi         tp, a0, -1537
                  xor          gp, s1, s3
                  srl          a7, a7, t3
                  xori         s10, t3, 31
                  sltu         s4, s0, s10
110:              bge          a4, a1, 120f
                  nop
                  bgeu         sp, a1, 123f
                  auipc        a3, 443961
                  sra          a3, s0, tp
                  bge          s5, a0, 124f
                  slt          s1, s0, s0
                  and          t5, t2, s1
                  auipc        s2, 477177
                  beq          zero, ra, 132f
120:              blt          ra, a1, 128f
                  bltu         t2, ra, 132f
                  xor          a2, s7, s8
123:              sub          s2, zero, tp
124:              xori         t5, s0, 485
                  sll          t5, t0, t1
                  andi         ra, s7, -926
                  auipc        s6, 412793
128:              sra          a2, s5, s3
                  xori         s10, a6, -166
                  sll          a0, s2, t3
                  sltu         s9, t3, s6
132:              xor          a7, gp, t6
                  sltiu        s8, s4, 1286
                  auipc        t5, 566880
                  la           s4, region_0+820 #start riscv_load_store_rand_instr_stream_12
                  slti         s2, a0, 882
                  sll          s8, t6, a7
                  add          t1, s11, s3
                  sll          s3, a5, t2
                  sw           t3, -452(s4)
                  lui          t1, 973723
                  lb           a3, 727(s4)
                  lbu          s3, 871(s4)
                  sw           a3, 684(s4)
                  lbu          s7, -438(s4)
                  lb           a6, -642(s4)
                  srl          t2, s6, s6
                  nop
                  sh           t5, -620(s4)
                  srli         a5, s1, 25
                  lb           s8, -175(s4)
                  sb           s3, 113(s4)
                  lb           a3, 121(s4)
                  lb           a7, 905(s4)
                  slt          a5, ra, a1
                  sh           tp, -750(s4)
                  lhu          ra, -102(s4)
                  sb           s10, 1090(s4)
                  lui          s3, 1003291
                  or           s1, t0, s6
                  sh           t2, -278(s4)
                  sb           a4, 95(s4)
                  lbu          a5, 451(s4)
                  srai         s8, s0, 23
                  lb           t0, 423(s4)
                  addi         t5, a2, -1882
                  slti         s6, s9, 1833
                  lbu          a7, -522(s4)
                  auipc        a7, 839489
                  lb           tp, -366(s4)
                  lb           a6, -91(s4)
                  lhu          t0, 458(s4)
                  sb           sp, -119(s4)
                  and          a4, t5, s8
                  nop
                  lhu          s11, 514(s4) #end riscv_load_store_rand_instr_stream_12
                  auipc        s7, 244426
                  auipc        a7, 467761
                  srli         t5, t5, 31
                  sll          a2, s7, s3
                  add          a5, s7, a7
                  xori         t5, ra, -1718
                  addi         s8, s10, 1270
                  addi         t1, s1, -417
                  ori          t5, a2, 600
                  bne          ra, s7, 159f
                  xori         a0, s2, 1569
                  srai         t0, gp, 17
                  xori         tp, s11, 419
                  nop
                  and          s11, a3, a4
                  bgeu         s7, s2, 165f
                  slt          t0, t3, a3
                  nop
                  beq          s6, s7, 167f
                  andi         a2, s4, 1850
                  addi         a4, t2, -619
                  sltiu        s7, a3, -1207
                  andi         s4, gp, -46
                  addi         ra, s3, 658
159:              beq          s4, sp, 175f
                  lui          a7, 450284
                  addi         s10, s6, -540
                  srai         a5, t4, 27
                  lui          a4, 284452
                  auipc        a2, 838743
165:              sub          t5, s8, t1
                  slt          t4, gp, tp
167:              ori          tp, s4, -1708
                  sltiu        a7, gp, 1978
                  xori         a7, s7, -1070
                  and          a3, s7, a2
                  slt          a3, ra, sp
                  srai         s4, s1, 5
                  bge          s7, a3, 182f
                  sll          t5, t4, t0
175:              srai         s7, sp, 8
                  xor          zero, s1, t5
                  xor          s4, t0, t0
                  bgeu         tp, a4, 197f
                  srai         s9, t0, 24
                  bne          s6, s10, 186f
                  sll          a7, a0, t1
182:              sll          s4, tp, a7
                  beq          s8, sp, 188f
                  bge          gp, a2, 188f
                  addi         gp, s1, 444
186:              sltiu        zero, a2, 1818
                  sll          ra, s6, s1
188:              or           a1, s8, gp
                  blt          s4, t0, 201f
                  sub          t4, a1, s6
                  slti         s1, s9, -1288
                  andi         t0, s3, 1397
                  andi         gp, a0, 1969
                  srl          zero, s3, t5
                  srl          s2, s1, a6
                  sub          s11, s2, t1
197:              lui          s8, 620876
                  blt          s0, s3, 213f
                  auipc        s1, 992183
                  lui          s9, 661084
201:              sra          a2, s10, t0
                  srl          t3, s4, a1
                  andi         a2, a7, -280
                  bge          s8, s7, 210f
                  srl          s10, s0, a2
                  bgeu         sp, ra, 222f
                  add          a7, t2, zero
                  slt          s7, s7, t3
                  sll          s3, a1, s0
210:              blt          t5, s3, 224f
                  bltu         t5, t0, 218f
                  srai         s1, t5, 2
213:              blt          t2, t6, 221f
                  srl          a0, a6, gp
                  and          a2, a6, tp
                  sltu         a5, t3, tp
                  sltu         t4, t2, t1
218:              nop
                  srli         s11, gp, 9
                  lui          a5, 8468
221:              beq          s4, t2, 232f
222:              nop
                  nop
224:              nop
                  sltu         s4, a6, a0
                  srai         s4, zero, 16
                  slt          s7, sp, a2
                  xor          a5, a2, t6
                  bgeu         gp, s11, 249f
                  beq          a2, a2, 236f
                  bgeu         sp, s10, 244f
232:              beq          s3, s2, 252f
                  sltiu        a5, a1, -1437
                  addi         a6, s2, -340
                  srli         s4, ra, 31
236:              srl          t0, s7, a4
                  addi         tp, s11, 1434
                  lui          a5, 466429
                  bge          a1, t0, 255f
                  sll          a2, a2, a0
                  add          s3, t6, a2
                  bne          a1, zero, 251f
                  sltiu        s2, t2, 1806
244:              sll          t4, s6, s2
                  srli         t0, sp, 22
                  beq          a4, tp, 256f
                  ori          a7, a2, -1823
                  xor          s2, t4, a3
249:              sll          t2, s8, t6
                  srai         gp, a3, 24
251:              add          a2, a1, s5
252:              slt          s0, t6, s6
                  slt          a7, t2, s8
                  sll          s8, s11, s9
255:              srl          s3, s9, s10
256:              bge          s5, sp, 267f
                  addi         a2, t0, 1987
                  bgeu         s2, a3, 269f
                  auipc        tp, 943174
                  andi         a3, a0, 241
                  srli         a1, t0, 19
                  srli         a6, a7, 1
                  bge          gp, gp, 282f
                  slli         s0, zero, 12
                  blt          t3, a6, 271f
                  andi         a6, t1, -1405
267:              sll          a5, t5, t4
                  ori          t0, gp, 1629
269:              bne          t2, t3, 275f
                  slt          s1, s8, a2
271:              add          s1, a4, ra
                  sra          s10, s10, s1
                  and          s10, t6, t1
                  srai         gp, s6, 26
275:              xori         a1, a6, -897
                  beq          tp, s0, 296f
                  auipc        a4, 680740
                  ori          ra, zero, 166
                  lui          s1, 642911
                  sub          a2, a2, gp
                  sll          a2, t0, tp
282:              sra          s2, s8, s5
                  nop
                  sub          a2, a6, a0
                  bltu         sp, s0, 289f
                  bne          t5, s7, 293f
                  slti         s7, ra, -801
                  add          a6, t1, zero
289:              bne          s10, s9, 293f
                  xor          a5, s1, a3
                  sltu         s1, s1, a3
                  add          a5, t4, s10
293:              sll          s9, s10, a2
                  xori         t0, s6, -859
                  ori          s8, t4, -557
296:              sltiu        s1, t5, 275
                  add          s2, a5, a1
                  xori         s4, t3, 746
                  addi         s0, sp, 464
                  blt          t1, s5, 320f
                  bltu         t6, s4, 307f
                  and          t3, t1, a5
                  srli         ra, t3, 22
                  nop
                  slli         tp, t4, 4
                  sltu         t0, ra, tp
307:              bge          s7, t2, 315f
                  andi         s3, tp, 801
                  srl          a0, s10, a5
                  and          a7, a3, s1
                  andi         tp, a2, 523
                  sltu         s9, s1, gp
                  beq          t5, s2, 324f
                  and          s4, s11, s2
315:              bge          a1, a4, 330f
                  sub          s11, s11, a3
                  sra          t2, a1, s0
                  bge          sp, ra, 323f
                  sra          s10, s1, t2
320:              slli         s4, s5, 15
                  andi         s10, gp, -831
                  slli         s8, a3, 18
323:              slli         t1, s8, 6
324:              srli         a0, s7, 17
                  srli         zero, a6, 30
                  addi         t3, s4, -1655
                  beq          a6, s6, 337f
                  add          a2, s4, zero
                  bltu         gp, zero, 333f
330:              slti         s9, zero, 1487
                  sltu         t5, gp, a4
                  andi         s8, t5, 902
333:              slli         s1, s11, 19
                  sra          t2, a2, s8
                  nop
                  bltu         gp, a2, 350f
337:              sll          a7, t1, s11
                  srli         t2, s5, 8
                  sltiu        a3, ra, 692
                  addi         s0, s1, 657
                  and          tp, sp, s4
                  ori          s9, s3, -98
                  beq          s4, zero, 354f
                  sll          a6, s6, a2
                  bltu         a6, s5, 365f
                  slli         s0, zero, 9
                  auipc        t0, 294652
                  nop
                  and          t1, a0, a7
350:              xori         gp, s4, -1184
                  bltu         s0, s0, 371f
                  xori         s6, s6, 281
                  beq          s5, a0, 369f
354:              beq          a4, t4, 360f
                  sub          t5, a0, t6
                  sub          t1, s5, s7
                  blt          s3, s4, 363f
                  bge          s4, t2, 367f
                  nop
360:              srli         a5, t0, 10
                  bne          s2, s0, 367f
                  bltu         a6, t5, 381f
363:              xori         s1, t2, -1185
                  bgeu         t4, a6, 380f
365:              beq          a4, s2, 379f
                  xor          a3, t1, s0
367:              srl          a7, a6, s8
                  srai         a1, t2, 14
369:              sltiu        a2, a7, 849
                  sub          t3, t6, s6
371:              sll          t2, t1, gp
                  add          gp, s0, a1
                  nop
                  nop
                  sltu         a4, a5, s3
                  srl          a0, gp, s7
                  slli         t2, t2, 0
                  bltu         gp, a0, 393f
379:              lui          t2, 55308
380:              and          t2, t2, s11
381:              srli         s6, a7, 4
                  nop
                  blt          a2, s11, 396f
                  xori         zero, t6, -1336
                  sltu         s11, t3, sp
                  or           t2, a3, s3
                  sltiu        t3, s11, -1156
                  bne          s6, s7, 394f
                  srli         a1, t2, 3
                  xor          a4, a1, tp
                  bltu         s0, s4, 403f
                  andi         s10, s6, 1243
393:              srl          s3, t2, sp
394:              bgeu         s9, s6, 403f
                  sub          a3, tp, ra
396:              beq          s5, t2, 412f
                  sltu         t5, s5, t3
                  ori          a2, s8, 446
                  srl          a1, s0, tp
                  add          s4, zero, s1
                  lui          a5, 305348
                  sll          a7, a2, t2
403:              sltu         s8, a6, a4
                  auipc        s1, 758491
                  srli         s4, tp, 26
                  nop
                  bgeu         s1, t6, 426f
                  add          a6, s11, a7
                  srli         s2, s8, 25
                  bge          s9, t5, 421f
                  bne          gp, zero, 430f
412:              or           t1, a3, s3
                  bgeu         t3, s4, 427f
                  bgeu         s5, a0, 429f
                  srli         a0, s4, 16
                  or           a2, s4, s9
                  xori         s0, t1, -1986
                  bge          s2, t4, 429f
                  bgeu         a0, s3, 439f
                  nop
421:              xori         s10, tp, -213
                  lui          s2, 545069
                  slt          a6, sp, s4
                  addi         a6, s2, 824
                  lui          a0, 855387
426:              addi         s4, a5, -851
427:              beq          ra, t5, 433f
                  sltiu        a1, s2, -1555
429:              sll          t3, a2, s4
430:              srai         s4, tp, 14
                  bge          s8, a1, 446f
                  sll          s9, gp, a1
433:              nop
                  beq          s9, a1, 453f
                  sll          s1, a2, s1
                  sra          t4, a0, a6
                  nop
                  slli         s8, s5, 31
439:              ori          a1, a6, -770
                  sra          t4, a2, a1
                  sltu         s10, s11, s10
                  xor          zero, t1, t1
                  nop
                  nop
                  auipc        gp, 256922
446:              srai         zero, s1, 22
                  srai         s0, a6, 22
                  add          a5, a0, t3
                  or           gp, s11, s5
                  bltu         t5, tp, 461f
                  auipc        a1, 20333
                  bgeu         a0, gp, 472f
453:              sltu         s10, t3, t1
                  and          s0, s0, s11
                  slti         a7, s2, 510
                  beq          t6, s9, 466f
                  andi         a5, a7, 1148
                  bltu         t6, a0, 464f
                  xori         s7, a7, -676
                  bgeu         sp, s11, 466f
461:              blt          t2, s4, 467f
                  andi         s10, zero, 1899
                  slt          s2, ra, t3
464:              bgeu         a5, zero, 469f
                  ori          s7, t4, -968
466:              sub          ra, t6, s9
467:              bltu         a6, gp, 474f
                  sll          s8, s10, s4
469:              lui          s2, 307683
                  or           a5, s9, s10
                  slt          a6, s11, t2
472:              xori         t2, a0, -10
                  lui          ra, 880419
474:              srl          ra, s3, s3
                  beq          a7, a3, 489f
                  or           s11, a6, t2
                  and          a4, s9, t4
                  blt          t0, a4, 487f
                  sra          a7, gp, a0
                  nop
                  xor          a2, a4, t4
                  bgeu         ra, t4, 494f
                  sltiu        t3, t3, 1008
                  sub          tp, tp, zero
                  sub          s7, a6, a5
                  ori          s10, t1, 200
487:              addi         s11, s2, -1177
                  or           t3, s5, a7
489:              sra          t3, s10, s0
                  bltu         sp, a7, 494f
                  slt          s9, a0, a7
                  slli         ra, s3, 22
                  beq          t0, a0, 499f
494:              sll          s4, zero, a7
                  nop
                  ori          s4, tp, -68
                  andi         s11, s8, 1412
                  bltu         zero, s10, 507f
499:              srl          a6, a6, s10
                  bge          a4, t5, 508f
                  xori         t5, s10, -1292
                  sll          a5, s3, s8
                  slti         a1, s1, 635
                  slli         s2, t0, 18
                  add          t4, a7, t6
                  slli         s11, gp, 22
507:              andi         s7, gp, -783
508:              xor          zero, a4, s1
                  sltiu        gp, zero, 689
                  sltiu        s1, s0, 367
                  sub          a3, s1, t0
                  nop
                  slt          s1, t5, gp
                  bltu         t2, a1, 534f
                  ori          a2, s11, 64
                  bne          tp, s3, 532f
                  sra          s3, gp, t2
                  slti         a1, s4, 456
                  xori         t1, s4, -1713
                  andi         a3, ra, -1811
                  lui          s10, 885050
                  beq          t5, tp, 535f
                  sltiu        t1, tp, -632
                  sll          t3, s8, a2
                  nop
                  slli         t1, ra, 23
                  bge          t1, a1, 543f
                  andi         s0, ra, -116
                  slt          a1, s7, a4
                  auipc        t5, 76977
                  beq          gp, t0, 535f
532:              sub          gp, t0, s11
                  bne          a2, ra, 544f
534:              and          t1, tp, t2
535:              and          s1, a4, t6
                  xori         s1, t1, -1687
                  xor          s11, a5, s2
                  beq          s8, a1, 554f
                  srai         t1, s6, 11
                  andi         zero, a6, 1474
                  bltu         sp, s11, 550f
                  sltiu        s7, t1, 1006
543:              bne          a3, s2, 547f
544:              bltu         gp, s0, 555f
                  srli         t4, s4, 2
                  lui          a0, 901148
547:              xori         s0, ra, 819
                  blt          tp, a2, 554f
                  slt          s10, gp, t1
550:              and          a2, ra, s5
                  auipc        s8, 73631
                  xor          zero, s6, a6
                  sub          s1, s10, ra
554:              sltu         tp, s6, a3
555:              blt          gp, t0, 569f
                  bltu         a3, s5, 562f
                  bge          t0, s7, 577f
                  bge          t5, s2, 563f
                  addi         t3, s2, -1725
                  srai         s9, s5, 6
                  ori          s3, zero, 1382
562:              srli         a6, a4, 18
563:              ori          a2, s9, -1832
                  lui          a0, 385039
                  nop
                  sra          t5, t6, s2
                  andi         s4, ra, 315
                  nop
569:              slt          a5, a6, s9
                  bgeu         t2, t3, 582f
                  bltu         a5, s1, 590f
                  addi         a7, t1, -1027
                  bltu         s9, gp, 592f
                  xor          t1, a5, s6
                  srl          a2, a1, s7
                  sra          a1, t0, s1
577:              slt          gp, a0, s7
                  slt          t0, t0, sp
                  addi         zero, a3, -160
                  or           s1, s3, s5
                  ori          a5, ra, -1969
582:              sub          s9, a0, t2
                  nop
                  bge          s5, a7, 604f
                  slt          s7, a5, zero
                  srai         t5, t2, 22
                  bltu         a5, gp, 593f
                  lui          a2, 506944
                  lui          s6, 873857
590:              sltu         a5, t5, s4
                  add          a0, s7, s6
592:              blt          zero, sp, 596f
593:              xori         t4, t1, -1390
                  andi         s0, s2, -2027
                  andi         t1, s11, 1329
596:              or           t2, a7, s2
                  ori          ra, s0, 181
                  sll          s3, gp, t1
                  andi         a2, s2, -1447
                  bltu         a5, a0, 606f
                  srli         t3, s0, 9
                  slli         s6, tp, 13
                  blt          a0, sp, 618f
604:              lui          a0, 814573
                  ori          tp, t4, -736
606:              ori          a4, t3, -131
                  slti         a4, t0, -1250
                  nop
                  bge          t0, s2, 622f
                  blt          a6, a7, 621f
                  srl          s3, gp, s8
                  andi         t1, ra, 207
                  bge          s6, s8, 622f
                  lui          a5, 732664
                  ori          t0, a4, -1478
                  nop
                  andi         a5, t5, 420
618:              xor          s4, s0, t6
                  slti         s7, sp, 482
                  addi         s11, s6, -1451
621:              sltu         s2, a7, a7
622:              srl          a6, s8, s7
                  slli         a6, tp, 7
                  sra          s2, a7, a4
                  sltiu        t1, ra, -1975
                  srai         s0, a1, 2
                  bge          a4, t2, 637f
                  blt          a0, s9, 648f
                  srai         a3, s2, 6
                  ori          ra, a3, 1276
                  sub          s0, t0, s7
                  nop
                  blt          a2, a0, 644f
                  sltiu        a2, a5, 1616
                  srai         t5, a7, 2
                  slt          a5, sp, a5
637:              beq          t6, a2, 653f
                  and          s2, t3, a7
                  addi         tp, t0, -2046
                  srl          gp, s2, a4
                  sltu         s3, a5, a5
                  add          a5, t3, s3
                  sltiu        s10, s3, -818
644:              bge          ra, s1, 660f
                  addi         s9, s4, -1590
                  sltiu        a7, s10, 1855
                  sra          s3, zero, s1
648:              bge          t6, a1, 663f
                  bge          a4, a4, 656f
                  xor          t4, t1, s7
                  add          zero, a2, t1
                  sll          t4, tp, s2
653:              xor          a0, zero, gp
                  bgeu         a7, t2, 662f
                  addi         a7, s4, -2024
656:              srai         s7, s11, 26
                  sltiu        zero, s10, 739
                  slli         t3, s6, 12
                  andi         t0, a5, -1162
660:              or           a5, s5, a7
                  bge          t5, t3, 675f
662:              bltu         a1, a3, 668f
663:              sra          s6, a3, a3
                  xor          a3, a2, a4
                  sra          t3, s11, gp
                  sltu         a5, t0, t5
                  nop
668:              andi         t0, a7, -74
                  blt          a3, a3, 685f
                  sltu         a4, a0, a4
                  andi         a3, s6, -1718
                  and          s10, s4, t1
                  and          s3, s1, s8
                  beq          s0, s3, 680f
675:              bne          t2, sp, 680f
                  bge          a2, a6, 692f
                  sltu         a2, s9, s11
                  srli         t5, s5, 10
                  sltu         s1, zero, a0
680:              sltiu        s4, s3, 305
                  sltu         a1, s7, s5
                  lui          t5, 522892
                  srai         tp, t2, 20
                  add          s1, ra, zero
685:              sll          s0, s5, gp
                  bgeu         s5, t4, 690f
                  srai         a0, t0, 26
                  andi         ra, a4, 164
                  lui          a2, 626484
690:              addi         s7, a3, 1990
                  auipc        s11, 282450
692:              andi         a0, t6, 941
                  xori         ra, s10, 1481
                  sub          tp, s4, a0
                  srl          s9, t5, t5
                  add          a0, s3, gp
                  andi         t1, t3, -990
                  slti         a3, zero, 697
                  sltu         s11, t2, a4
                  srl          s0, s3, s9
                  or           s3, gp, s8
                  slti         s7, a3, 641
                  lui          t1, 470483
                  bltu         ra, a2, 724f
                  xori         a4, s7, -1173
                  slti         a1, sp, -1904
                  sltiu        s6, s3, -929
                  blt          gp, a4, 719f
                  slli         s8, s2, 2
                  add          s9, s11, ra
                  bge          s7, s10, 715f
                  sltu         s1, a6, s7
                  and          zero, s0, s1
                  slt          t1, s5, s4
715:              add          s9, a7, zero
                  bne          a4, t1, 736f
                  blt          s1, s8, 736f
                  slt          s10, t5, a3
719:              and          a4, a5, a3
                  srl          a5, s9, s7
                  srai         a7, s11, 1
                  srai         a7, t0, 30
                  xor          a0, a5, t1
724:              or           ra, t5, a0
                  slt          s4, t3, s8
                  xori         t2, ra, 887
                  or           zero, s3, t6
                  andi         a2, t3, 1330
                  slti         t4, s9, 1267
                  sll          a3, s5, s0
                  bgeu         a2, ra, 744f
                  ori          a2, s1, 1481
                  ori          s8, s0, -329
                  slt          s4, t2, a7
                  or           s11, s0, a6
736:              and          a0, zero, t3
                  bne          a2, a3, 757f
                  nop
                  addi         t2, a0, 537
                  lui          gp, 793014
                  sltu         zero, s7, s6
                  srai         s7, t3, 9
                  beq          s11, s10, 758f
                  la           s10, region_1+133 #start riscv_load_store_rand_instr_stream_10
                  lb           s8, 12(s10)
                  xori         a0, a1, 1695
                  or           s8, ra, t4
                  lbu          s8, -8(s10)
                  add          gp, a1, a4
                  auipc        t2, 216592
                  lbu          ra, -12(s10)
                  lhu          a3, -1(s10)
                  lb           a1, 0(s10)
                  lbu          a1, 5(s10)
                  lbu          t1, -13(s10)
                  nop
                  lhu          t0, 13(s10)
                  lb           a3, -10(s10)
                  lbu          s0, -8(s10)
                  or           a1, s2, s0
                  lbu          a1, -4(s10)
                  nop
                  sra          t0, s11, t5
                  lb           s2, -13(s10)
                  and          t4, s5, t6
                  lb           s8, -7(s10)
                  add          s1, s3, t2
                  lh           a0, -5(s10)
                  nop
                  xor          zero, s1, t0
                  lb           s6, -4(s10)
                  xori         t4, s8, 932
                  srli         s6, a7, 18
                  sb           t4, 5(s10)
                  sltiu        t1, a2, -1210
                  sub          ra, t4, s6
                  sh           a0, -11(s10)
                  sb           tp, 6(s10)
                  srl          a2, ra, s2
                  sltu         zero, t0, s2
                  addi         t3, s4, -140
                  and          a5, gp, s4
                  lb           s3, -4(s10)
                  lh           ra, -5(s10)
                  sb           sp, -4(s10)
                  sltu         a6, t2, s9
                  lw           gp, 15(s10)
                  lbu          s7, -5(s10)
                  lhu          tp, -9(s10)
                  slt          t3, s8, t4
                  slti         gp, gp, 1439
                  srli         tp, s2, 20
                  auipc        t5, 169923
                  sb           t3, 7(s10)
                  sb           t6, 1(s10)
                  lbu          gp, -1(s10)
                  sb           s10, 11(s10)
                  sb           ra, -8(s10) #end riscv_load_store_rand_instr_stream_10
744:              bgeu         tp, a2, 753f
                  xori         gp, tp, 232
                  lui          a6, 1046764
                  sra          t5, t6, a1
                  blt          a0, gp, 760f
                  andi         a4, s1, 1933
                  bge          gp, a2, 756f
                  bltu         s3, s5, 759f
                  auipc        a1, 816505
753:              addi         s1, a4, 17
                  addi         a3, a4, -1933
                  bne          t4, s7, 769f
756:              and          a2, s11, gp
757:              bgeu         s10, s4, 773f
758:              addi         t5, a0, 1628
759:              srl          gp, ra, a5
760:              slti         t0, t3, 1876
                  andi         a3, s0, -1872
                  xor          ra, s1, t4
                  sll          a1, s7, s11
                  sltiu        zero, s4, -1885
                  sra          s6, a6, a0
                  bltu         s3, s5, 772f
                  slt          s10, s7, s3
                  slli         a1, s11, 9
769:              bge          s2, s10, 778f
                  nop
                  sra          s8, t5, a2
772:              slti         s8, a0, -1447
773:              beq          t0, t4, 783f
                  bltu         s0, a3, 780f
                  sltiu        t2, zero, -1695
                  add          t3, a4, gp
                  auipc        t4, 376915
778:              auipc        s7, 14857
                  and          zero, s1, t0
780:              sra          a6, a3, a4
                  sll          a1, s10, s8
                  srai         t5, s8, 26
783:              slt          s10, t4, s10
                  blt          sp, sp, 790f
                  blt          s1, a5, 796f
                  bge          s11, t6, 802f
                  srai         s11, a3, 20
                  auipc        a5, 490240
                  beq          t0, s9, 808f
790:              nop
                  sltu         s8, t4, zero
                  bgeu         a1, s7, 807f
                  or           s4, t1, s9
                  or           t5, t6, s8
                  andi         s3, s5, 1119
796:              bge          s9, s10, 810f
                  add          tp, a6, a4
                  addi         tp, a1, 1227
                  beq          s0, t1, 806f
                  bne          a2, a1, 811f
                  lui          gp, 270550
802:              sltiu        t0, gp, -1701
                  sll          a6, s4, s11
                  slli         s2, a0, 23
                  srl          s4, s11, s7
806:              bge          zero, a3, 821f
807:              xori         s10, a6, 1132
808:              addi         ra, s11, 652
                  sub          ra, a0, zero
810:              bgeu         gp, a0, 816f
811:              beq          t4, s6, 822f
                  ori          ra, a6, -1372
                  srli         t2, a2, 19
                  sltu         t2, t0, a4
                  andi         tp, s7, -500
816:              srai         s11, s11, 24
                  sltiu        s11, t3, 1889
                  lui          t5, 779981
                  xori         a7, ra, 597
                  bgeu         t0, a6, 840f
821:              bge          a6, s8, 827f
822:              blt          s4, s6, 841f
                  xor          s10, s10, t3
                  bltu         s4, sp, 843f
                  add          a5, a0, s4
                  sub          s4, t0, t1
827:              blt          sp, t4, 841f
                  sltu         s10, a7, a4
                  sltu         ra, t2, s1
                  add          t2, s7, a3
                  bge          tp, s4, 841f
                  addi         t5, s6, -932
                  and          t1, a3, t6
                  blt          gp, a7, 847f
                  beq          zero, s7, 844f
                  blt          s8, s2, 851f
                  nop
                  beq          t0, a6, 845f
                  and          s8, s6, t6
840:              slli         s2, s10, 9
841:              sll          a1, ra, a4
                  slti         gp, t6, -792
843:              sltu         s2, s0, t5
844:              slt          s1, t0, a4
845:              bgeu         a0, s0, 856f
                  and          s7, a7, s2
847:              sub          s2, s2, s3
                  and          s0, a1, a1
                  srl          ra, tp, s3
                  and          t4, t1, s11
851:              ori          gp, a5, -343
                  lui          a7, 178957
                  beq          a0, s1, 862f
                  slti         tp, t6, 1704
                  bgeu         s7, a3, 859f
856:              beq          a1, s5, 876f
                  bne          a5, t3, 873f
                  srli         a5, s10, 28
859:              srli         s8, t4, 9
                  srli         s1, s4, 14
                  srl          s11, s8, s0
862:              slti         t0, s4, 1282
                  bgeu         s7, t1, 879f
                  xori         s7, tp, 559
                  srli         t1, s7, 9
                  xori         s1, s11, -78
                  bne          s4, t1, 879f
                  lui          s1, 1038250
                  bge          zero, a5, 873f
                  sltiu        a6, a1, 727
                  xor          s7, s3, a0
                  add          t5, zero, t5
873:              slti         tp, t2, 361
                  sub          s2, t1, t3
                  bltu         s3, s1, 881f
876:              xor          s8, s3, s2
                  srl          a4, a5, s0
                  bge          t2, tp, 889f
879:              sltiu        tp, t5, 1629
                  lui          gp, 44548
881:              xori         t0, s2, 1141
                  sll          a3, a7, t4
                  srl          t3, a7, s11
                  and          a6, s10, t2
                  andi         s3, a1, -1522
                  sltiu        s4, s8, 1090
                  beq          s3, s1, 903f
                  srai         a1, s9, 7
889:              sltu         a7, tp, ra
                  andi         s4, s3, -361
                  add          s6, t2, gp
                  auipc        s3, 633705
                  sll          gp, s6, t5
                  srl          s3, zero, s11
                  xori         t1, a6, -642
                  add          gp, s0, a3
                  sltu         s2, s11, ra
                  add          gp, a3, s9
                  sltiu        t0, a1, 102
                  ori          a5, t3, -162
                  srli         a6, t0, 9
                  slt          s10, t4, a1
903:              andi         s8, a2, 1447
                  slti         s4, s0, -334
                  addi         tp, a0, 1946
                  ori          a1, a0, 1266
                  sub          tp, s11, s6
                  bltu         a0, s10, 913f
                  bgeu         tp, a7, 929f
                  auipc        s8, 254561
                  srl          s0, zero, s6
                  blt          a6, ra, 918f
913:              beq          a4, t3, 927f
                  la           t2, region_0+1935 #start riscv_load_store_rand_instr_stream_13
                  or           a0, s8, t3
                  sb           s9, 0(t2)
                  lbu          t4, 11(t2)
                  lb           t1, 12(t2)
                  sb           a7, 9(t2)
                  auipc        s3, 371962
                  andi         s4, t3, 1157
                  sltiu        s7, a6, 259
                  lbu          a1, -12(t2)
                  ori          s8, s4, 135
                  lbu          s3, -6(t2)
                  xori         s9, t0, 358
                  sb           s5, -2(t2)
                  slti         s4, s1, -810
                  lh           s3, -5(t2)
                  and          s4, tp, a6
                  lb           s6, -4(t2)
                  lhu          a5, -7(t2)
                  lbu          t1, -15(t2)
                  xori         s11, s4, -1429
                  lbu          s1, -3(t2)
                  lb           s3, 7(t2)
                  lui          s11, 932447
                  sb           s1, 11(t2)
                  lw           a6, 9(t2)
                  lui          ra, 475537
                  lbu          t3, 16(t2)
                  sltiu        tp, a2, -963
                  lw           s1, 9(t2)
                  lbu          a0, -8(t2)
                  lui          t4, 648387
                  lhu          t4, 15(t2)
                  sub          s9, tp, s2
                  sra          a7, s10, a6
                  sltiu        s0, s7, -574
                  add          s1, zero, a7
                  lbu          a1, -10(t2)
                  srl          s11, s7, a1
                  sb           t1, 6(t2)
                  lbu          a2, -7(t2)
                  sb           s10, -14(t2)
                  sh           a2, 15(t2)
                  nop
                  ori          s7, s3, 729
                  lb           s10, -9(t2)
                  lhu          a6, -11(t2)
                  nop
                  sb           t6, -10(t2)
                  ori          s3, a4, -349
                  lbu          t4, -9(t2)
                  sb           s6, -12(t2)
                  xor          s9, sp, s9
                  lb           zero, 12(t2) #end riscv_load_store_rand_instr_stream_13
                  sra          s2, s11, s9
                  bgeu         zero, a1, 923f
                  slt          a5, a3, s1
                  and          zero, s5, s7
918:              srl          s1, a3, t4
                  slt          s0, t3, s2
                  andi         a6, t6, 1701
                  slti         s3, s5, 539
                  sltu         t4, t3, tp
923:              srai         t2, a2, 19
                  sltu         s0, sp, t1
                  sltiu        s6, a1, 123
                  add          s3, a5, a4
927:              bgeu         s3, s8, 933f
                  ori          t3, s11, 1808
929:              beq          s11, a0, 933f
                  bgeu         s10, tp, 941f
                  xori         zero, s9, -1594
                  slti         s8, a0, 1366
933:              beq          t4, s6, 942f
                  xori         s0, gp, -1584
                  bne          s9, s3, 940f
                  blt          t2, s6, 942f
                  add          a4, t5, ra
                  sub          s3, t5, t2
                  bgeu         s10, a2, 959f
940:              beq          ra, s6, 960f
941:              sltu         s9, t3, t6
942:              blt          s10, t2, 948f
                  addi         a0, s6, -421
                  beq          s0, s8, 953f
                  nop
                  slli         tp, s6, 2
                  sra          s7, s10, s0
948:              bge          a3, sp, 967f
                  auipc        a2, 654970
                  auipc        tp, 984724
                  auipc        t5, 590040
                  srai         tp, s4, 9
953:              bltu         a5, t0, 969f
                  blt          a1, s9, 965f
                  addi         a3, a2, -664
                  slli         a5, a3, 8
                  srl          a3, s4, a6
                  add          s1, t0, s2
959:              sltiu        s7, s11, 1316
960:              and          t0, s10, t6
                  srli         s4, t4, 17
                  nop
                  sll          a4, a0, s6
                  bne          s11, a7, 980f
965:              slti         s2, s5, -396
                  and          s10, zero, s1
967:              add          t0, tp, s3
                  sltu         s1, a4, t3
969:              sub          tp, tp, a6
                  xori         s6, a0, 1646
                  or           s0, gp, t6
                  ori          t3, t1, 219
                  sub          a4, a3, t5
                  slt          a4, sp, s11
                  nop
                  andi         s6, s5, -1402
                  sll          tp, s0, s7
                  sra          s7, s2, s9
                  sll          t5, s0, t4
980:              beq          t6, s9, 995f
                  beq          s4, t0, 987f
                  sub          a6, a4, gp
                  blt          a0, a5, 995f
                  add          t0, s4, s0
                  sltu         a4, s2, s5
                  add          s4, s10, s10
987:              xor          s9, a7, a5
                  slti         a6, s10, 1557
                  bltu         s1, s8, 995f
                  slt          t1, a2, s9
                  beq          s1, t1, 1006f
                  bge          a7, ra, 1006f
                  sub          s9, t0, tp
                  sltu         t1, a0, s3
995:              xor          a4, s4, a6
                  addi         s3, a4, 1114
                  srai         a3, s1, 8
                  bge          a1, sp, 1012f
                  srai         tp, s7, 13
                  blt          a4, a3, 1006f
                  andi         s0, s8, 1237
                  sra          s0, ra, s5
                  beq          a4, a7, 1010f
                  nop
                  sll          zero, s8, t4
1006:             bne          s2, a0, 1025f
                  blt          s2, a7, 1027f
                  beq          s10, sp, 1012f
                  andi         t1, t4, 1443
1010:             addi         s3, s3, 727
                  sltu         s8, s8, s4
1012:             xori         t5, s5, -26
                  srl          s3, t4, a2
                  sltu         t2, a7, s8
                  sltu         s10, s7, s9
                  slli         a5, t1, 19
                  sltiu        t4, s11, -201
                  bne          a3, s2, 1031f
                  srai         s10, a0, 16
                  srli         gp, s5, 15
                  sltiu        a6, s7, 1918
                  add          s6, s5, s9
                  ori          zero, a7, 945
                  add          a0, ra, t2
1025:             add          gp, t5, t4
                  add          s2, a5, t6
1027:             and          s2, s11, a2
                  or           ra, s8, t1
                  sub          t5, ra, gp
                  and          a7, a1, s8
1031:             sub          tp, s7, s7
                  slt          a2, ra, s4
                  blt          s9, t0, 1041f
                  or           s11, a4, sp
                  slt          s7, ra, a6
                  sltiu        a1, t6, -159
                  sltu         s10, s5, s9
                  lui          s3, 265245
                  xor          t2, s3, s7
                  xori         tp, a7, 1704
1041:             sub          t4, s2, a3
                  bge          s4, a7, 1052f
                  srli         s11, s9, 21
                  sltiu        tp, s4, -163
                  sltu         t3, s0, t1
                  sub          s11, t4, s4
                  slli         t3, a7, 27
                  sltiu        t5, a0, -1125
                  sub          zero, s8, s5
                  ori          s0, ra, -71
                  ori          a3, s9, 782
1052:             xori         a6, s7, -1200
                  bgeu         gp, s7, 1069f
                  add          t0, s1, s1
                  xor          tp, t0, a1
                  ori          s8, a1, 996
                  ori          s7, a7, 1672
                  srli         a1, a2, 23
                  slti         s9, s7, -1341
                  nop
                  nop
                  addi         a3, a0, 1151
                  xori         t4, a2, -535
                  beq          gp, t6, 1075f
                  sll          s1, s6, a1
                  add          ra, s4, t5
                  xori         s6, t1, 175
                  bne          s4, gp, 1080f
1069:             beq          s10, a7, 1089f
                  xori         a2, a3, -1121
                  add          a1, s9, s6
                  bgeu         ra, gp, 1091f
                  slli         gp, s11, 21
                  auipc        t2, 555739
1075:             andi         a1, a3, -1142
                  srai         t4, s11, 27
                  srl          a6, t5, s1
                  nop
                  xori         ra, s7, 1205
1080:             bgeu         s10, tp, 1091f
                  auipc        a0, 253202
                  bgeu         t2, s8, 1098f
                  sltiu        a5, t5, -1293
                  sltu         t2, t3, ra
                  lui          s2, 181833
                  srai         s9, zero, 15
                  lui          t2, 309782
                  bne          zero, t5, 1103f
1089:             slt          a7, sp, a5
                  sltu         s7, a1, t4
1091:             sltu         s11, s10, s11
                  bne          tp, s11, 1098f
                  beq          t4, a0, 1109f
                  addi         a4, t6, 418
                  slt          s0, tp, s6
                  andi         a3, s11, -2009
                  or           t4, a0, s2
1098:             xor          s6, a4, a4
                  sltu         s9, s9, a5
                  xor          gp, a7, a7
                  and          s10, s6, zero
                  xor          a7, t3, a3
1103:             beq          a6, t0, 1109f
                  slti         a6, t3, 1754
                  auipc        ra, 236983
                  add          s10, s11, a1
                  auipc        a5, 419053
                  or           t3, t2, t2
1109:             beq          a7, gp, 1125f
                  ori          s1, t6, -1539
                  sub          a3, a0, t2
                  bgeu         a5, a5, 1116f
                  add          s4, ra, t1
                  or           a0, a7, a3
                  auipc        s4, 763813
1116:             andi         a6, s8, -392
                  slli         t0, t4, 13
                  auipc        a1, 468437
                  bge          s0, s2, 1132f
                  or           a7, s3, a1
                  srl          t5, a4, s10
                  xori         a1, s1, 1564
                  sra          s8, t1, gp
                  ori          s11, a3, -1795
1125:             sra          s1, zero, s8
                  srai         s0, t0, 14
                  sub          a1, s1, s6
                  bgeu         a0, a5, 1139f
                  nop
                  slt          a6, t1, t4
                  sra          s0, t4, ra
1132:             slti         s1, s2, 423
                  beq          a2, a0, 1153f
                  xori         s7, t0, 832
                  addi         s4, s5, -265
                  slt          s9, t6, s7
                  ori          t4, s4, -809
                  andi         s4, s8, -1982
1139:             bltu         t0, ra, 1145f
                  xor          a0, t6, a5
                  ori          a1, s0, 1620
                  sltu         t5, zero, t4
                  ori          s10, zero, 1309
                  bne          s8, a7, 1158f
1145:             lui          a2, 935758
                  srli         s10, s4, 19
                  ori          zero, t0, -1454
                  srl          t5, a0, s1
                  add          gp, zero, ra
                  srai         a7, t5, 2
                  blt          t4, t3, 1166f
                  blt          s9, tp, 1161f
1153:             andi         a3, s3, -235
                  and          s6, tp, zero
                  xori         s6, t3, -1082
                  auipc        ra, 821218
                  sub          s2, a0, s9
1158:             bgeu         s9, a0, 1163f
                  sra          gp, t3, gp
                  slti         s0, t5, -923
1161:             blt          s9, t1, 1168f
                  slti         a5, t0, -12
1163:             srl          a3, s8, t3
                  slli         a3, s2, 3
                  beq          t6, t5, 1174f
1166:             nop
                  xor          tp, s6, a3
1168:             blt          a1, s7, 1182f
                  sltiu        gp, tp, -1858
                  sll          t3, a1, s6
                  lui          s10, 139558
                  sltiu        ra, a5, -140
                  sra          s10, a6, sp
1174:             sltu         a5, s6, t4
                  bne          tp, s4, 1194f
                  or           a4, s3, a4
                  bltu         a0, a5, 1187f
                  bne          a3, tp, 1198f
                  and          a2, a6, s7
                  or           a4, s10, s7
                  xori         s11, t2, -777
                  la           a4, region_0+1260 #start riscv_load_store_rand_instr_stream_9
                  srl          a0, s0, s6
                  srai         a3, s2, 25
                  sb           a7, -1174(a4)
                  lbu          s7, 129(a4)
                  lw           a2, -644(a4)
                  sltiu        a2, tp, -1338
                  andi         a0, s11, 1588
                  add          t5, s9, t0
                  sra          a3, s1, s0
                  lhu          t0, 148(a4)
                  add          t0, s8, a0
                  sb           gp, -655(a4)
                  lb           s2, -853(a4)
                  srl          t2, s9, a7
                  auipc        s6, 440476
                  srai         s3, s2, 15
                  sw           s8, 28(a4)
                  sw           t1, 168(a4)
                  lh           s3, -736(a4)
                  srli         t4, s7, 15
                  srli         a7, a1, 16
                  srl          a0, sp, a0
                  sb           t5, -58(a4)
                  sh           s1, 692(a4)
                  lhu          s10, 436(a4)
                  lui          s6, 1045247
                  sltu         gp, s9, s3
                  lb           s11, -212(a4)
                  sub          t3, t6, t5
                  or           s7, s6, tp
                  sra          t3, s3, s2
                  sb           a2, -342(a4)
                  lb           s2, -773(a4)
                  sb           s3, 645(a4)
                  slt          gp, tp, a3
                  lb           t0, -227(a4)
                  auipc        a0, 820580
                  lb           zero, -4(a4)
                  lb           a1, -249(a4)
                  sb           s11, -621(a4)
                  srai         t4, t5, 27
                  or           a6, t1, s7
                  nop
                  and          t1, s7, zero
                  and          s6, t0, t1
                  lb           s8, -701(a4)
                  lb           t5, -329(a4)
                  addi         a2, a5, 153
                  srl          s0, s2, s4
                  lw           t2, -212(a4)
                  slt          a7, s4, gp
                  lb           ra, 243(a4)
                  lb           s10, -791(a4)
                  lbu          s2, -878(a4)
                  lb           a6, -142(a4)
                  lb           a5, -251(a4) #end riscv_load_store_rand_instr_stream_9
1182:             blt          s10, tp, 1188f
                  blt          t3, t2, 1194f
                  sub          a0, s2, a6
                  sub          a3, s11, ra
                  or           s4, sp, s5
1187:             srai         s7, t5, 15
1188:             blt          a3, a4, 1192f
                  blt          s10, t6, 1195f
                  sll          a7, s8, s0
                  bne          s7, sp, 1199f
1192:             nop
                  and          s2, s1, s3
1194:             sll          t4, t5, s0
1195:             srai         s3, a6, 21
                  add          s4, s7, tp
                  andi         t4, a1, -1339
1198:             sra          s10, t2, s9
1199:             and          tp, t6, a1
                  add          t4, s4, a2
                  beq          s1, a1, 1216f
                  bgeu         s1, s0, 1213f
                  sltiu        tp, sp, -941
                  lui          a1, 578277
                  lui          t0, 753735
                  xori         s0, a4, 356
                  add          s1, sp, a7
                  bltu         s3, a3, 1214f
                  slli         s2, a0, 5
                  sub          s9, s10, s8
                  bgeu         t0, t0, 1219f
                  or           gp, gp, a2
1213:             and          s7, a0, a4
1214:             or           tp, s9, a6
                  xor          s8, a5, t1
1216:             sub          a7, s10, s5
                  xori         t1, s3, -797
                  sub          s10, t3, s10
1219:             srl          t3, s4, t0
                  blt          s8, tp, 1235f
                  sub          a4, s7, t5
                  blt          t3, s3, 1242f
                  slli         a3, s10, 18
                  andi         a1, s10, 1335
                  nop
                  slli         tp, s8, 7
                  srai         t4, tp, 10
                  sll          s3, t1, s9
                  sltiu        s2, s1, 1476
                  sltiu        a2, a6, -52
                  slt          zero, s3, t1
                  bge          s7, s7, 1238f
                  slti         gp, sp, -1056
                  bne          sp, a2, 1240f
1235:             slt          s6, a1, gp
                  addi         a6, zero, 350
                  ori          a1, s10, -976
1238:             sll          s9, tp, sp
                  slt          t0, t2, a7
1240:             blt          s10, a4, 1260f
                  bge          t0, t3, 1250f
1242:             sub          t4, ra, a3
                  bltu         a2, a5, 1259f
                  bne          tp, s11, 1258f
                  sra          t1, s0, zero
                  add          gp, a2, t6
                  sltiu        t5, a7, 337
                  bne          s9, s2, 1258f
                  xor          gp, s6, t2
1250:             slti         a1, t5, 1638
                  srai         s10, a3, 10
                  lui          a0, 666565
                  addi         t2, s1, 916
                  auipc        s6, 535758
                  bgeu         a5, t5, 1260f
                  blt          a2, t5, 1260f
                  nop
1258:             lui          s4, 721876
1259:             xor          a2, t6, s0
1260:             add          tp, sp, t1
                  slli         zero, a4, 12
                  slt          a1, t1, s1
                  beq          s6, a0, 1277f
                  beq          t1, s6, 1268f
                  addi         s1, s7, 445
                  xor          s6, t4, a6
                  srl          t5, t2, a5
1268:             slt          s6, s3, s3
                  or           a3, t0, zero
                  and          s7, s2, t3
                  beq          t6, s4, 1290f
                  ori          s6, a2, 972
                  bltu         s7, a6, 1282f
                  xori         a7, tp, -399
                  blt          a6, s6, 1295f
                  bltu         s11, a7, 1289f
1277:             bgeu         s2, t3, 1284f
                  and          t1, a5, s0
                  bgeu         a5, t1, 1295f
                  and          s4, s10, s10
                  auipc        a6, 322408
1282:             xori         a0, a0, 800
                  blt          s11, s2, 1294f
1284:             bge          s8, s5, 1300f
                  bgeu         sp, s7, 1297f
                  xor          t0, t0, t4
                  slli         a1, s6, 1
                  bge          t1, s7, 1294f
1289:             blt          tp, s11, 1308f
1290:             lui          t2, 137659
                  ori          ra, t3, -1369
                  sltu         t3, gp, s11
                  slt          t3, a2, s9
1294:             srai         a6, zero, 28
1295:             add          a0, s10, t3
                  sra          s9, s4, a7
1297:             sll          s1, a0, s1
                  and          ra, t1, s6
                  slti         a0, t6, -975
1300:             srai         a5, gp, 11
                  xori         ra, s6, 841
                  srli         t4, a3, 14
                  sra          gp, t0, a2
                  srai         t1, a1, 29
                  bne          t6, a5, 1311f
                  blt          a6, a7, 1317f
                  sra          s3, tp, t4
1308:             sltiu        ra, a6, 47
                  sra          s7, a3, ra
                  addi         s3, s3, -166
1311:             add          s7, s8, a0
                  xor          a5, gp, ra
                  sub          t3, a7, a0
                  addi         s11, s7, -173
                  bne          s4, s8, 1331f
                  auipc        s2, 827586
1317:             slli         t4, s2, 27
                  slti         t4, ra, 978
                  sra          gp, t6, a0
                  ori          t1, sp, 1867
                  blt          s6, a3, 1327f
                  sll          s7, s1, t2
                  slti         t1, t3, -1541
                  sub          gp, a4, t5
                  sltu         zero, s4, t2
                  auipc        a5, 561272
1327:             blt          s9, t2, 1339f
                  bgeu         gp, t2, 1334f
                  ori          s9, a1, 1685
                  sll          a1, t1, tp
1331:             and          s6, s11, gp
                  bne          ra, t6, 1337f
                  srli         s11, t2, 12
1334:             srl          s3, a6, s9
                  bgeu         a5, s10, 1348f
                  bltu         s0, a3, 1346f
1337:             sltiu        t0, t6, -1889
                  sltu         s3, s7, s10
1339:             sltu         t3, s6, s2
                  slli         tp, s0, 5
                  andi         t4, s4, -426
                  auipc        ra, 1033879
                  slti         a2, s6, -1524
                  andi         s11, t3, 760
                  bne          a5, a2, 1353f
1346:             sltu         a1, t0, s6
                  addi         t5, s0, 1459
1348:             addi         s6, s10, -1493
                  andi         t2, a7, -1511
                  sub          a7, s8, a2
                  sltiu        s11, t1, -955
                  bge          zero, s8, 1372f
1353:             sltu         t5, t5, s9
                  ori          s7, t3, 678
                  and          a1, a0, a7
                  and          s3, a7, s9
                  srai         a3, s11, 7
                  slt          s0, gp, s8
                  sra          a2, gp, t5
                  ori          a5, s3, -491
                  sltiu        a4, gp, 118
                  nop
                  slli         s3, a4, 3
                  auipc        zero, 165020
                  slti         a6, s5, -1018
                  sra          t1, a7, t5
                  sub          t4, s7, s0
                  xori         s9, zero, -1109
                  bgeu         a5, a7, 1375f
                  or           zero, a5, t6
                  nop
1372:             bgeu         s2, t0, 1388f
                  and          ra, zero, a2
                  slli         t1, t5, 0
1375:             ori          a3, t6, -1522
                  bge          s9, s10, 1395f
                  sll          t2, s5, s9
                  bge          s5, ra, 1389f
                  sub          s4, s8, t1
                  ori          zero, t0, -328
                  slti         a4, s0, -1017
                  nop
                  sll          s3, s3, t3
                  sub          gp, a2, a0
                  xor          s0, zero, sp
                  sltiu        s4, a3, -1450
                  srai         t5, s4, 25
1388:             bgeu         t0, a0, 1408f
1389:             nop
                  add          s8, tp, a0
                  sll          a7, a5, a1
                  xor          s1, tp, a1
                  sra          a1, s3, t1
                  sltu         s10, s6, a4
1395:             addi         a2, a4, -2010
                  beq          a1, s10, 1403f
                  beq          t5, tp, 1412f
                  nop
                  sll          t1, t3, t6
                  beq          s3, s3, 1420f
                  slli         s8, t0, 12
                  ori          s4, t4, -1845
1403:             srai         a5, s2, 10
                  auipc        a5, 341646
                  xor          t1, a1, a7
                  sll          s3, t2, t0
                  slli         a7, s10, 7
1408:             srai         a5, s6, 29
                  and          s9, s1, s1
                  blt          s0, a1, 1416f
                  and          t2, t5, s7
1412:             addi         s9, s9, -1722
                  blt          a3, a1, 1419f
                  lui          gp, 923896
                  nop
1416:             beq          zero, s0, 1420f
                  sltiu        s10, s3, 73
                  xori         s3, sp, -1734
1419:             bge          s5, s0, 1430f
1420:             srl          a6, a1, tp
                  slli         s8, a7, 15
                  xori         s2, t2, 846
                  sub          s1, ra, s10
                  srli         tp, a5, 8
                  nop
                  bgeu         a6, s4, 1442f
                  sra          a6, a0, s1
                  slli         s3, s0, 26
                  nop
1430:             bgeu         t5, t6, 1434f
                  xori         s11, t3, 651
                  slti         s10, tp, -1125
                  srl          a3, a7, a5
1434:             slli         t5, s11, 28
                  bgeu         a5, s11, 1444f
                  slt          s8, a0, s6
                  xor          s2, s10, ra
                  blt          zero, s2, 1453f
                  blt          ra, a3, 1453f
                  bge          a7, t6, 1449f
                  and          t3, s11, s6
1442:             beq          a2, s9, 1453f
                  sll          zero, a1, zero
1444:             addi         t5, a6, -1415
                  auipc        t2, 647333
                  add          t3, a5, s10
                  slli         a4, t5, 9
                  xori         a4, t5, 1901
1449:             xori         s7, s1, -873
                  slli         a1, s3, 4
                  blt          t2, s9, 1465f
                  add          a3, a7, sp
1453:             srl          a5, s9, s10
                  srli         s11, s7, 24
                  xori         a4, t3, 1510
                  beq          ra, s1, 1475f
                  sra          s11, a4, s10
                  srli         a2, t5, 9
                  and          t2, gp, t2
                  or           a7, s7, a6
                  lui          s9, 140474
                  andi         s10, a2, 1641
                  ori          s7, a1, -1902
                  slt          zero, s8, s4
1465:             xori         s7, t6, -1684
                  ori          ra, tp, 61
                  xor          s9, a1, s0
                  slt          a0, t5, t4
                  bltu         s2, s3, 1485f
                  nop
                  bne          tp, ra, 1478f
                  lui          t5, 696428
                  blt          a2, a7, 1483f
                  srai         a3, a5, 21
1475:             auipc        s11, 1007661
                  xor          t1, s7, s0
                  srli         t5, s8, 13
1478:             srl          t3, sp, t4
                  sll          gp, a5, s2
                  slt          a5, s2, a5
                  sub          gp, s8, s3
                  sltiu        ra, s5, 1227
1483:             slli         a6, s7, 4
                  sub          s11, s4, a0
1485:             andi         s11, s9, 1016
                  sra          s4, t0, t4
                  beq          s11, s3, 1491f
                  xor          s10, s4, s1
                  sub          t0, s10, t3
                  ori          a4, t4, -1804
1491:             lui          s11, 471772
                  add          s2, s1, a5
                  bge          a4, a5, 1505f
                  srl          tp, t1, s9
                  auipc        t0, 720671
                  ori          s2, a5, -250
                  addi         a1, t6, 1683
                  blt          s0, a7, 1502f
                  add          s2, a1, s4
                  sltu         t2, a1, t3
                  slli         t2, t1, 3
1502:             ori          a4, t2, -247
                  blt          s1, sp, 1519f
                  sub          s9, s3, zero
1505:             bgeu         t0, t2, 1519f
                  bne          t6, a3, 1512f
                  sltu         zero, t2, t6
                  blt          t3, ra, 1524f
                  bltu         s0, a3, 1515f
                  addi         t1, t0, -1298
                  auipc        s7, 55988
1512:             sll          gp, t1, ra
                  sltu         a5, t0, a7
                  andi         s6, t6, 761
1515:             srli         s0, a3, 13
                  sltiu        a4, tp, 103
                  blt          s5, s6, 1523f
                  slli         s10, zero, 20
1519:             sltiu        s11, a6, 682
                  bge          s0, sp, 1540f
                  bge          a5, tp, 1541f
                  or           tp, t3, s5
1523:             slti         a5, s9, -1984
1524:             or           s6, s11, s5
                  sltu         s2, sp, a2
                  sll          s2, s3, gp
                  sra          s4, t4, zero
                  or           s0, s4, s6
                  srai         a7, t0, 26
                  add          tp, s2, s9
                  addi         s6, t3, -324
                  bgeu         s1, t6, 1538f
                  sltiu        t4, t6, 426
                  bltu         s0, s3, 1542f
                  slt          a7, t3, s10
                  sltiu        a2, s1, -901
                  add          a2, ra, t4
1538:             srl          a0, a3, t5
                  bltu         t1, t2, 1548f
1540:             beq          ra, a7, 1551f
                  xori         s7, t3, 591
                  add          t5, s4, s6
                  auipc        tp, 545049
                  la           a5, sub_1
                  xor          tp, gp, s10
                  addi         a5, a5, -321
                  and          ra, s7, s3
                  nop
                  slt          s0, t4, t3
                  xori         ra, t2, 1895
                  lui          t5, 483336
main_j1:          jalr         ra, a5, 321 #jump main -> sub_1
1541:             slt          s3, a4, s9
1542:             bltu         tp, s0, 1561f
                  bge          t4, s4, 1557f
                  addi         s0, s8, 1253
                  slli         t4, ra, 14
                  slt          zero, t4, tp
                  add          s8, s2, s2
1548:             ori          a3, s6, -1315
                  lui          a7, 440905
                  sltiu        s1, t6, 1432
1551:             nop
                  slt          a5, s7, s5
                  sra          s2, t5, s6
                  blt          t3, a3, 1565f
                  srl          a3, zero, a5
                  slti         s4, t2, 782
1557:             add          t5, s3, a4
                  xori         s0, t5, -813
                  auipc        ra, 325715
                  blt          s10, sp, 1575f
1561:             nop
                  srai         s7, s8, 20
                  sll          zero, gp, t5
                  sll          s8, gp, t6
1565:             and          a5, s11, t0
                  slt          t2, s5, t2
                  sra          zero, t0, t2
                  srli         s8, s0, 30
                  xor          s11, s7, t1
                  lui          t0, 190009
                  sltiu        a7, a5, 668
                  nop
                  srl          t2, a3, s1
                  or           a4, tp, zero
1575:             beq          t6, a2, 1581f
                  xor          s8, a3, ra
                  xor          a6, ra, gp
                  blt          a3, a4, 1597f
                  bgeu         s2, s10, 1592f
                  andi         s3, ra, -1656
1581:             srai         s6, t5, 22
                  srli         s4, s2, 6
                  srl          gp, t2, t4
                  addi         a2, s9, -1353
                  sub          s1, s10, a2
                  sra          t2, s5, s9
                  sub          s0, t1, a6
                  slti         a7, s2, -1996
                  bltu         a2, sp, 1600f
                  srli         a7, t4, 3
                  xori         t3, gp, -719
1592:             sll          ra, s4, s1
                  and          a2, s8, s8
                  sltiu        gp, a3, 1425
                  auipc        tp, 223977
                  and          a1, a5, ra
1597:             addi         s11, s10, -31
                  bge          s7, s1, 1603f
                  sltu         s0, s3, s11
1600:             sub          a3, sp, t5
                  sltu         a3, s3, ra
                  bltu         a4, t6, 1611f
1603:             slli         s10, t3, 28
                  xor          s0, tp, a6
                  srai         a7, a1, 14
                  and          a7, tp, a5
                  ori          t0, s1, 1884
                  bne          t2, zero, 1623f
                  addi         s1, t1, -1413
                  or           tp, t3, gp
1611:             addi         a3, a7, 263
                  slt          s2, tp, t0
                  sub          a2, s11, t0
                  sub          tp, s9, s1
                  blt          a1, s2, 1635f
                  lui          gp, 937471
                  lui          t0, 958190
                  addi         s6, a7, -1270
                  sra          t5, s3, s11
                  slli         zero, a4, 4
                  slt          zero, s4, t0
                  add          gp, a5, s8
1623:             bge          t1, a5, 1639f
                  xor          t0, a6, t4
                  or           s4, a2, t6
                  slti         t5, t5, 412
                  xori         s10, s6, 841
                  sltiu        a7, s1, 198
                  or           s0, a7, a1
                  sll          s4, tp, t6
                  sltiu        s0, s6, -1708
                  auipc        s9, 743852
                  andi         a0, t2, -741
                  bltu         zero, t2, 1648f
1635:             slti         t2, a5, 1225
                  xori         zero, s9, 732
                  blt          s7, a0, 1646f
                  auipc        s3, 809470
1639:             andi         zero, s3, -390
                  slt          s0, gp, t5
                  ori          a5, sp, 51
                  slti         zero, t5, 51
                  slli         s0, s10, 29
                  sub          a2, s6, s9
                  or           a1, a2, gp
1646:             xor          a1, gp, a4
                  auipc        a3, 263357
1648:             sltiu        t2, s2, -718
                  slti         s9, s8, 594
                  slti         t3, s4, 490
                  bge          t5, t1, 1657f
                  beq          zero, s8, 1658f
                  sra          s4, t6, t6
                  beq          t2, t5, 1660f
                  srl          a2, s11, t5
                  auipc        t3, 142303
1657:             srai         t4, tp, 20
1658:             and          t3, a6, t4
                  bne          s2, a6, 1667f
1660:             bne          s1, s1, 1676f
                  blt          s10, s3, 1672f
                  xor          t5, t2, a0
                  srl          s9, t4, s8
                  blt          zero, t5, 1684f
                  sll          a6, zero, a5
                  bge          a7, a6, 1675f
1667:             sub          t1, s4, a1
                  addi         s3, t0, 1360
                  bge          s9, s1, 1684f
                  add          t5, ra, a7
                  sub          ra, s4, t1
1672:             bne          s9, s10, 1688f
                  ori          gp, t4, 1870
                  beq          t5, t6, 1679f
1675:             bge          a1, a5, 1681f
1676:             bgeu         sp, ra, 1691f
                  srai         a7, tp, 17
                  bne          s8, gp, 1688f
1679:             sll          a2, s4, s3
                  lui          tp, 969664
1681:             xori         s11, s9, 1435
                  auipc        gp, 250643
                  and          t3, gp, s7
1684:             andi         s2, a3, -15
                  xori         t5, t1, 118
                  xori         a2, t0, -1854
                  slli         a7, t1, 28
1688:             auipc        t1, 404163
                  srli         t0, zero, 29
                  xori         t1, s6, -1305
1691:             sltu         t2, s0, s1
                  slt          a7, a4, t0
                  bge          t6, t0, 1713f
                  nop
                  and          gp, a6, s11
                  blt          a3, t4, 1715f
                  sll          s8, s8, t6
                  ori          s1, t5, 782
                  sra          a3, t1, gp
                  andi         s2, s6, -1631
                  slti         s9, s3, -59
                  slti         t1, s10, -199
                  slti         a2, a6, -634
                  ori          s7, gp, 781
                  srl          a2, t0, s7
                  slli         a2, ra, 25
                  bltu         a4, s2, 1727f
                  bltu         t4, t6, 1721f
                  and          s7, a3, t6
                  srai         a7, a7, 25
                  lui          a1, 600157
                  srli         a6, a0, 5
1713:             slli         t0, a1, 30
                  sltu         t1, s2, tp
1715:             bne          a7, s8, 1729f
                  bgeu         a0, a4, 1723f
                  lui          zero, 872831
                  sub          s2, a5, a3
                  slt          ra, s11, a1
                  and          a7, a6, s5
1721:             slli         s10, a4, 5
                  xor          a0, a3, sp
1723:             blt          s9, t5, 1727f
                  lui          s3, 820493
                  lui          a7, 846450
                  nop
1727:             bne          zero, t3, 1733f
                  srl          a4, s0, a3
1729:             and          t0, a4, a4
                  xori         s9, sp, 1118
                  bltu         s7, t0, 1750f
                  nop
1733:             sltu         s10, t4, t3
                  srli         t5, t2, 23
                  slli         s8, tp, 23
                  bge          a2, s0, 1747f
                  slti         t5, gp, 45
                  sra          a1, t4, s5
                  and          s2, a2, gp
                  blt          ra, a6, 1752f
                  blt          gp, a4, 1752f
                  xor          t2, t3, s1
                  srai         s3, a7, 26
                  bltu         t0, gp, 1748f
                  bltu         a4, s2, 1757f
                  nop
1747:             beq          t2, a3, 1763f
1748:             slti         s8, a4, -1749
                  or           s1, t1, ra
1750:             bne          gp, s9, 1766f
                  srl          a5, s1, s11
1752:             slti         a4, s2, 995
                  beq          t0, t3, 1759f
                  bltu         a2, a3, 1760f
                  andi         a2, a0, 185
                  srai         s10, s0, 24
1757:             sll          t3, s6, s8
                  ori          s10, s11, -1188
1759:             and          s1, a3, sp
1760:             blt          t1, ra, 1775f
                  srai         a5, zero, 7
                  sra          s6, s9, s2
1763:             bge          s1, t4, 1769f
                  la           a2, region_0+1038 #start riscv_load_store_rand_instr_stream_2
                  sb           s11, -437(a2)
                  slti         a0, a7, -1806
                  sltiu        gp, t5, -1887
                  sb           t4, 551(a2)
                  sub          a4, s10, zero
                  lbu          s11, 251(a2)
                  sll          a0, s2, t3
                  ori          s3, s6, 725
                  slli         s8, t5, 11
                  sltu         t4, ra, zero
                  slti         a1, tp, 444
                  lhu          s4, -686(a2)
                  srai         t3, s4, 21
                  slti         a0, s8, -695
                  sw           zero, -730(a2)
                  slt          s4, a5, s4
                  srli         t0, t3, 10
                  andi         a6, t0, 1113
                  sll          s6, tp, s4
                  sll          s8, t3, s8
                  sb           t0, 199(a2)
                  and          a6, t1, t6
                  sltiu        t2, t3, -1189
                  lb           a0, -666(a2)
                  srli         t1, a3, 22
                  lbu          t0, 93(a2)
                  auipc        t4, 217261
                  sb           t4, -179(a2)
                  srl          t1, a2, ra
                  slti         t4, s11, -184
                  ori          a6, sp, -309
                  sb           t2, -311(a2)
                  or           s3, s4, s8
                  lbu          a4, 753(a2)
                  srai         a6, t2, 15
                  slt          t3, t4, a4
                  or           s8, s10, t0
                  sltu         a1, a5, ra
                  ori          t0, a1, -1897
                  lbu          ra, 275(a2) #end riscv_load_store_rand_instr_stream_2
                  sltiu        gp, a3, 235
                  bltu         s7, s1, 1780f
1766:             beq          a6, a1, 1775f
                  bne          gp, a3, 1787f
                  bne          t5, s8, 1781f
1769:             blt          s1, t6, 1780f
                  srl          a2, s0, s2
                  blt          s5, t2, 1782f
                  sltiu        a1, s7, -852
                  slt          a6, ra, a7
                  slt          t2, a5, zero
1775:             beq          s10, a0, 1795f
                  sra          s1, s1, a0
                  andi         t4, s5, 1321
                  srai         gp, t5, 18
                  srli         gp, s2, 15
1780:             bltu         a1, t5, 1796f
1781:             slli         zero, a2, 8
1782:             auipc        tp, 340032
                  xor          s9, a7, gp
                  or           s1, zero, t3
                  bgeu         a6, s5, 1790f
                  blt          tp, a6, 1805f
1787:             addi         tp, a3, 1383
                  slt          s2, s6, t6
                  add          s4, s4, a7
1790:             bne          s5, s2, 1810f
                  nop
                  andi         a1, a1, 173
                  sltiu        gp, a7, 1912
                  ori          s1, a4, 798
1795:             slli         s3, s2, 2
1796:             add          t4, a6, a7
                  sltu         a3, a7, s4
                  add          s4, s2, s0
                  andi         a6, s0, -799
                  beq          sp, a3, 1808f
                  auipc        s4, 263398
                  sll          a4, s8, t6
                  srl          gp, s10, a3
                  slti         gp, s8, 1480
1805:             srai         s7, tp, 8
                  sub          t2, tp, t5
                  srai         s6, tp, 29
1808:             sll          s10, a3, s5
                  bne          tp, a1, 1815f
1810:             sltiu        t4, t0, 1096
                  bge          s7, s2, 1822f
                  srl          a5, a6, t4
                  srl          a7, s11, t2
                  xor          t2, a1, s10
1815:             bge          s8, tp, 1819f
                  xor          zero, t1, tp
                  addi         s11, a5, -271
                  sub          t5, s8, a2
1819:             sltu         s0, t4, zero
                  sll          t4, tp, s4
                  addi         a4, a0, -902
1822:             slti         s8, t5, 1424
                  ori          s0, a5, -1385
                  add          gp, t1, t2
                  slti         s6, ra, -1112
                  and          t1, s2, s10
                  or           s1, zero, a6
                  bltu         t0, a2, 1838f
                  addi         s3, t0, -55
                  sra          a2, a2, a0
                  addi         t3, t3, 1292
                  srai         s0, a4, 26
                  add          s8, s5, a4
                  auipc        s1, 1005903
                  bge          s7, s0, 1839f
                  bgeu         t2, zero, 1855f
                  sltu         a1, a5, a5
1838:             and          a6, t2, t6
1839:             nop
                  and          t4, s9, s9
                  slti         a0, t3, -1299
                  sltiu        tp, t2, -1475
                  srl          a6, s0, sp
                  sltu         s10, t5, s10
                  sll          t1, a1, t1
                  xor          s11, a6, ra
                  nop
                  beq          s4, t1, 1855f
                  sltu         a6, a1, s3
                  slli         a0, s6, 12
                  slti         s3, s0, 54
                  sll          s2, a5, s3
                  ori          t5, a4, 612
                  sltu         a0, a4, t2
1855:             slli         t2, s11, 1
                  add          a1, s2, zero
                  bge          gp, t0, 1862f
                  andi         s11, t5, 1449
                  sll          a7, t3, s7
                  lui          a6, 299635
                  slli         s6, a0, 6
1862:             xor          a5, ra, t6
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            add          t3, s1, t5
                  addi         t1, s1, -522
                  beq          gp, a1, sub_3_stack_p
                  xori         t1, s0, -591
                  xor          s11, tp, s3
                  sub          gp, a0, s5
sub_3_stack_p:    addi         s5, s5, -8
                  xori         t3, t6, 179
                  auipc        a1, 148289
                  sw           ra, 4(s5)
                  auipc        a0, 756122
                  slli         s4, zero, 16
                  and          zero, gp, a5
                  xor          t1, s10, a3
                  andi         s7, s6, 2030
                  nop
                  sub          s3, s8, s5
                  xori         t3, a0, -1160
                  bne          tp, t5, sub_3_j7 #branch to jump instr
                  lui          a7, 713910
                  lui          tp, 496
                  xori         a4, a3, -1005
sub_3_j7:         jal          ra, sub_6 #jump sub_3 -> sub_6
                  sra          a5, a3, t5
                  ori          s0, a5, 2031
                  srli         s9, t1, 30
                  sll          a1, gp, s9
                  add          a2, s1, a1
                  ori          t3, tp, -620
                  lui          s4, 430714
                  slt          s10, ra, s6
                  sltiu        t2, s9, -914
                  auipc        s6, 282886
                  or           t2, s10, s8
                  sub          a4, t6, zero
                  srai         a4, s3, 28
                  andi         t5, s8, 1882
                  nop
                  xor          a5, a4, t5
                  blt          t5, t0, 29f
                  srl          t1, a4, tp
                  sub          gp, a7, a5
                  add          a1, s1, zero
                  bge          t6, t3, 28f
                  bne          t0, s7, 28f
                  bgeu         s11, s0, 27f
                  sub          a5, s2, t1
                  slt          t0, a5, s3
                  slti         a3, a5, -783
                  slt          t5, a7, s0
27:               srl          t4, a6, s2
28:               sltiu        t1, t1, 512
29:               ori          t4, s2, -1039
                  auipc        a2, 656996
                  xor          s2, s0, a0
                  srl          s0, s6, s8
                  ori          a1, zero, 269
                  andi         s10, sp, -1067
                  auipc        zero, 77511
                  lui          tp, 158653
                  bge          s9, zero, 42f
                  and          zero, zero, s10
                  auipc        ra, 253781
                  sltu         s11, t1, gp
                  srl          t1, s2, t4
42:               sra          gp, s6, s6
                  sltiu        a3, ra, -1891
                  bge          t1, t1, 61f
                  sll          t2, tp, s2
                  srl          a1, a0, a2
                  nop
                  bne          s2, a3, 67f
                  srl          a7, sp, s9
                  ori          s3, s1, -875
                  slli         tp, s11, 9
                  ori          t1, ra, 108
                  sra          a3, s9, sp
                  xori         tp, s9, 178
                  slt          t5, sp, s0
                  beq          a3, sp, 61f
                  nop
                  bne          s8, gp, 59f
59:               auipc        a0, 585851
                  or           s1, zero, s5
61:               beq          t1, t5, 67f
                  lui          t4, 417841
                  blt          gp, gp, 74f
                  and          gp, s0, s11
                  lui          ra, 279240
                  xor          s3, s0, a4
67:               nop
                  xor          a2, s0, a4
                  sra          a7, t1, s3
                  beq          s11, s10, 76f
                  slt          s10, t3, s1
                  addi         s4, s2, 1685
                  sll          t5, s8, gp
74:               auipc        t4, 9441
                  bltu         s5, t5, 90f
76:               and          t1, a2, a0
                  xor          t0, a3, t1
                  beq          s11, a2, 80f
                  ori          s7, a1, 15
80:               sltiu        s9, t6, -1908
                  srli         ra, s4, 22
                  sltu         s11, t2, s7
                  or           a4, a5, t2
                  slti         t5, t1, -1398
                  addi         gp, t6, 849
                  xori         s8, a4, -55
                  ori          s0, t3, 1531
                  sltu         s1, s0, a7
                  sra          a7, s9, a6
90:               slti         s8, a1, 1550
                  srl          a6, zero, t4
                  slti         s0, t3, -1964
                  slti         a3, s9, -1786
                  beq          s3, sp, 106f
                  nop
                  xori         t5, tp, 1631
                  xor          gp, zero, s10
                  xori         s2, s9, 1484
                  sub          t0, zero, a0
                  xori         tp, s3, 1990
                  blt          s2, s3, 104f
                  or           s10, s3, s11
                  sub          s0, sp, s10
104:              ori          s8, ra, -428
                  srl          s6, s2, a6
106:              blt          t4, s7, 116f
                  or           a5, s0, t3
                  lui          s10, 249918
                  bgeu         gp, a1, 117f
                  auipc        ra, 893079
                  srli         a1, zero, 5
                  and          s0, s0, t4
                  slti         s10, ra, 1399
                  andi         s9, s7, -607
                  ori          zero, tp, -650
116:              ori          s6, t4, 1810
117:              auipc        s9, 870302
                  sra          a2, a7, s8
                  blt          t5, s11, 128f
                  auipc        s8, 692971
                  slli         t2, t5, 13
                  xori         a5, t2, -691
                  blt          s0, s6, 138f
                  blt          t0, a1, 130f
                  srli         s7, t1, 3
                  and          a4, a2, s5
                  xori         a4, a2, 204
128:              add          tp, s0, s11
                  blt          a3, a3, 136f
130:              andi         t5, t3, -604
                  bne          t4, s0, 139f
                  sltu         a7, t6, t3
                  sll          a5, s3, a4
                  slti         s8, s0, 1795
                  or           a5, t6, a5
136:              lui          s8, 469870
                  sltu         s4, zero, gp
138:              andi         s4, a3, 596
139:              sltiu        t4, s0, 1575
                  bltu         a7, s3, 145f
                  nop
                  slt          t0, t2, tp
                  slli         s4, gp, 11
                  srl          ra, t3, zero
145:              slt          t0, s7, t4
                  nop
                  auipc        a3, 484639
                  add          s2, s11, a1
                  ori          s7, a1, 1331
                  sltiu        s0, t0, 543
                  la           s9, region_1+27 #start riscv_load_store_rand_instr_stream_0
                  add          gp, ra, a7
                  nop
                  lbu          t5, -25(s9)
                  auipc        a0, 384908
                  lh           t0, 53(s9)
                  xor          zero, a0, s9
                  sra          s2, ra, a5
                  sb           t3, 114(s9)
                  andi         s11, s6, 1026
                  sll          s11, a0, t5
                  or           t3, t6, s7
                  srl          s3, a5, a6
                  sh           a3, 31(s9)
                  sub          t1, s7, s6
                  ori          t3, s2, -1231
                  ori          a7, s10, -1579
                  slli         s4, s9, 22
                  sh           s9, 13(s9)
                  sh           sp, 237(s9)
                  ori          s2, s2, 550
                  add          t2, tp, a7
                  and          a5, t2, a3
                  sltiu        a6, s7, -1243
                  sra          a2, t2, s8
                  lbu          t2, 212(s9)
                  lbu          a2, 220(s9)
                  xor          a3, zero, a5
                  lui          a2, 236779
                  lbu          s0, 6(s9)
                  sb           a6, 160(s9)
                  nop
                  sb           t4, 64(s9)
                  lbu          t3, 93(s9) #end riscv_load_store_rand_instr_stream_0
                  slli         t3, a4, 23
                  add          a6, s10, t2
                  and          a5, gp, s7
                  bltu         a6, t2, 163f
                  slli         zero, t2, 23
                  srai         tp, a5, 17
                  ori          s1, s1, -1014
                  lui          tp, 331985
                  xor          s7, zero, s3
                  bne          ra, s11, 175f
                  xor          t4, tp, s1
                  lui          s6, 952906
163:              slti         s1, sp, 1089
                  blt          a7, t6, 171f
                  xori         s8, t0, 955
                  blt          t4, s10, 168f
                  or           t2, s8, s4
168:              andi         t0, t2, -527
                  srai         a0, t5, 30
                  and          a5, t0, s3
171:              nop
                  srai         a2, s3, 18
                  slli         s4, tp, 0
                  srl          t1, tp, sp
175:              lui          a0, 962815
                  add          a2, gp, s11
                  sub          t2, ra, t6
                  andi         ra, sp, -1190
                  bgeu         a1, s1, 187f
                  or           t2, a7, s10
                  bgeu         t5, tp, 188f
                  xori         s4, s3, -2037
                  slt          a3, a4, a3
                  sra          a0, t4, gp
                  and          t0, zero, s8
                  nop
187:              slti         a6, t2, -681
188:              srai         t2, s0, 6
                  sltu         a2, a1, s4
                  slli         a0, a2, 26
                  sub          tp, s7, t6
                  sltiu        s9, tp, 1402
                  or           s6, a2, s8
                  sltiu        a6, s7, 1297
                  lw           ra, 4(s5)
                  auipc        a7, 556972
                  addi         s5, s5, 8
                  srl          t0, tp, gp
                  slli         t1, s8, 0
                  sltu         s0, t1, sp
                  sltiu        a1, t1, -867
259:              addi x20, x1, 1
259:              jalr x20, x20, 0
sub_5:            and          gp, t4, s11
                  addi         s5, s5, -52
                  sll          s11, a4, t2
                  xor          a0, ra, zero
                  sw           ra, 4(s5)
                  srl          t0, t0, a7
                  srai         s1, s0, 9
                  sra          a3, t6, t0
                  addi         tp, s9, -1157
                  bne          t5, s2, 1f
1:                sll          a3, s3, t6
                  sra          a5, t3, ra
                  ori          s1, s11, -1578
                  bltu         ra, tp, 5f
5:                sll          a4, t6, t0
                  auipc        a1, 927076
                  sltu         s10, s4, zero
                  ori          a5, a1, 1059
                  and          s2, s3, a5
                  srl          t4, s7, s4
                  and          t1, s1, a0
                  xori         gp, a0, 1087
                  sll          t0, tp, t4
                  sra          a4, tp, s2
                  bne          a0, t4, 29f
                  srai         s0, a1, 24
                  or           s0, t1, t3
                  slti         s8, a2, -2002
                  srai         a2, s4, 6
                  addi         s10, sp, 1929
                  andi         s0, a3, -688
                  auipc        s11, 713340
                  sra          s10, sp, s6
                  xor          a6, s10, s6
                  bgeu         t1, ra, 36f
                  nop
                  slli         gp, s10, 31
                  srli         gp, tp, 17
29:               slt          t1, t3, t1
                  slli         a5, zero, 0
                  srl          gp, s5, s5
                  srai         s2, s6, 6
                  bne          tp, s8, 47f
                  addi         a4, a6, 324
                  slt          s0, sp, a1
36:               slt          t5, s6, a5
                  and          a3, s6, t5
                  or           tp, t6, t5
                  sll          s2, a1, t5
                  bgeu         sp, t6, 49f
                  sltu         a0, s11, s9
                  slli         s8, s7, 4
                  bltu         ra, s8, 49f
                  srai         s7, t3, 1
                  andi         s3, a1, 949
                  slti         s1, s7, 317
47:               xor          a4, t3, a0
                  add          s0, a1, t0
49:               sltiu        a0, tp, 1388
                  lw           ra, 4(s5)
                  addi         s5, s5, 52
                  srl          a3, s10, t3
                  sltu         s4, a3, s3
                  slt          a3, s9, a3
                  or           a3, s6, t2
                  andi         a1, a7, -964
                  sub          gp, a1, a3
67:               addi x6, x1, 0
67:               jalr x6, x6, 0
sub_9:            sub          t3, s8, sp
                  srli         t1, a2, 4
                  srl          t4, t1, a7
                  sltiu        a5, s4, 1040
                  addi         s5, s5, -16
                  sll          s10, s2, tp
                  sll          a0, a5, s4
                  addi         gp, tp, -1344
                  addi         s11, s9, -369
                  add          gp, s5, a7
                  sw           ra, 4(s5)
                  sub          s1, s1, s0
                  la           t2, sub_10
                  sltu         ra, t5, t4
                  lui          tp, 627818
                  slt          s3, s3, t5
                  add          a6, a4, s1
                  srl          t3, s8, a5
                  addi         t2, t2, 986
                  lui          a0, 331232
                  slti         s3, t0, 1083
sub_9_j13:        jalr         ra, t2, -985 #jump sub_9 -> sub_10
                  or           zero, gp, t3
                  srai         s4, s11, 25
                  nop
                  sra          a1, s9, t3
                  andi         a1, t4, 405
                  bge          s1, s1, 9f
                  xori         s1, sp, -598
                  sll          t1, a7, t3
                  blt          a1, a4, 12f
9:                bgeu         t1, zero, 15f
                  slli         t2, t0, 30
                  beq          t1, a0, 16f
12:               sltiu        s2, a0, -1543
                  srl          s3, a7, s2
                  blt          t1, t3, 16f
15:               addi         a1, a7, -1993
16:               srl          gp, s10, a2
                  lw           ra, 4(s5)
                  sll          tp, a1, s5
                  and          t4, gp, t3
                  addi         s5, s5, 16
                  andi         s2, s4, 589
                  srai         a0, s1, 9
                  sltiu        a2, a1, 2025
46:               addi x5, x1, 0
46:               jalr x5, x5, 0
sub_10:           addi         s5, s5, -44
                  add          a3, s4, gp
                  slt          s3, t6, t0
                  sw           ra, 4(s5)
                  sub          s9, s4, s4
                  ori          zero, s6, 1756
                  sltu         s3, s0, a6
                  sra          s8, s4, s2
                  andi         a6, s3, 449
                  xori         t4, zero, -1179
                  la           ra, region_1+1090 #start riscv_load_store_rand_instr_stream_0
                  slli         s9, t0, 11
                  nop
                  and          s6, s11, t6
                  lui          s1, 783407
                  or           gp, a6, a3
                  sub          t3, t5, ra
                  andi         a4, s8, -324
                  xori         a6, s10, -1051
                  lh           zero, 20(ra)
                  sltiu        s3, t1, -726
                  srl          t3, a2, t0
                  slli         tp, ra, 16
                  nop
                  sw           s7, -138(ra)
                  sb           s4, 47(ra)
                  lb           a5, -179(ra)
                  addi         t3, ra, -296
                  srl          s9, sp, s2
                  sb           s1, 40(ra)
                  slli         zero, s9, 10
                  add          s1, s11, t6
                  lhu          t2, -66(ra)
                  addi         tp, t4, 812
                  sltiu        s3, s8, -884
                  lui          s8, 225331
                  lh           a7, 152(ra)
                  lbu          tp, 167(ra)
                  lbu          s7, -102(ra)
                  sll          s11, s9, a7
                  or           a2, s4, a5
                  lbu          a1, -135(ra)
                  sll          t0, s5, a2
                  andi         s8, t0, 136
                  sltu         s2, s2, s7
                  addi         s1, t3, -1981
                  sra          s9, tp, s3
                  sb           s1, 83(ra)
                  lbu          a0, 97(ra) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_1+1511 #start riscv_load_store_rand_instr_stream_1
                  sb           a5, 78(s4)
                  add          s9, s9, gp
                  lb           a5, -88(s4)
                  and          a2, s3, t0
                  sb           s1, -150(s4)
                  lh           s2, -3(s4)
                  nop
                  lb           a6, 142(s4)
                  lb           gp, -207(s4)
                  sra          a3, s11, t4
                  slli         s9, t2, 5
                  add          t1, a7, a6
                  or           s8, s5, t6
                  sra          a2, s0, gp
                  addi         a1, zero, 1196
                  lb           a2, 189(s4)
                  and          tp, s8, s5
                  sh           s1, -167(s4)
                  lb           s0, -142(s4)
                  xori         a4, s2, 404
                  xori         t4, t1, 1218
                  sltu         s3, t3, a0
                  sltiu        t5, a3, 783
                  lbu          tp, -174(s4)
                  slli         s9, s8, 9
                  sll          t1, a0, a7
                  auipc        a0, 477619
                  lbu          a3, -32(s4) #end riscv_load_store_rand_instr_stream_1
                  la           s8, region_0+240 #start riscv_load_store_rand_instr_stream_2
                  srli         a7, s0, 15
                  srai         t2, t2, 5
                  sll          s0, ra, a1
                  sb           zero, -13(s8)
                  lhu          s7, 10(s8)
                  sh           s1, 14(s8)
                  lb           s6, 8(s8)
                  lhu          t1, -4(s8)
                  lbu          s0, -13(s8)
                  srli         s0, a5, 28
                  sh           t0, -2(s8)
                  xor          t3, sp, s9
                  lbu          s2, 16(s8)
                  sra          a5, s0, t2
                  or           s6, a2, t3
                  sra          a5, a5, s9
                  lbu          s6, 2(s8)
                  lb           zero, -16(s8)
                  sb           a0, 8(s8)
                  lb           s1, -12(s8)
                  sb           s2, 14(s8)
                  lh           s1, 12(s8)
                  sh           a7, 10(s8)
                  sb           s2, 16(s8)
                  lb           s6, 15(s8)
                  lh           s10, -6(s8)
                  sh           t1, -8(s8)
                  sh           s3, 12(s8)
                  srai         t4, sp, 12
                  lbu          t1, 15(s8)
                  lh           a5, -6(s8)
                  srl          tp, s0, gp
                  sb           s7, 10(s8)
                  lbu          t4, 5(s8)
                  sb           s4, -10(s8)
                  sb           t1, -5(s8)
                  srai         zero, s7, 13
                  sb           s4, -13(s8)
                  lbu          s2, -5(s8) #end riscv_load_store_rand_instr_stream_2
                  la           s3, region_0+1685 #start riscv_load_store_rand_instr_stream_4
                  sll          s2, s9, a6
                  lbu          a3, -1380(s3)
                  sb           t5, -994(s3)
                  or           s9, zero, a7
                  lbu          tp, -792(s3)
                  or           a0, s4, a7
                  sb           sp, -298(s3)
                  sll          tp, gp, s4
                  lbu          t1, -1157(s3)
                  sb           t3, -1178(s3)
                  sub          s2, t2, a0
                  lbu          a3, -46(s3)
                  lbu          t5, -1045(s3)
                  lhu          a1, -55(s3)
                  lbu          t4, -210(s3)
                  ori          a1, s10, 1557
                  sb           zero, -1442(s3)
                  sb           tp, -1242(s3)
                  lbu          t3, -228(s3)
                  lbu          s1, -1006(s3)
                  sltiu        t3, t1, -30
                  lb           s2, -171(s3)
                  slti         s2, gp, 1469
                  sb           ra, -1208(s3)
                  and          t0, zero, t3
                  lh           t2, -697(s3)
                  sra          tp, a0, a4
                  slt          t0, ra, t0
                  srl          t3, s8, t3
                  srli         a0, sp, 24
                  auipc        zero, 777803
                  lw           gp, 147(s3)
                  slt          t1, s4, a5
                  and          s8, t5, s1
                  or           s11, a3, a6
                  sb           s9, -1454(s3)
                  lhu          s2, -541(s3)
                  lb           s1, -1244(s3)
                  slti         s6, a6, -583
                  lh           s9, -1457(s3)
                  slt          s9, t4, a3
                  slt          t0, t3, t1
                  lw           s10, -961(s3)
                  nop
                  auipc        s6, 124659
                  sb           t2, -118(s3)
                  lbu          s2, 314(s3)
                  lb           s4, 74(s3)
                  lbu          tp, 103(s3)
                  slli         ra, s8, 9
                  lhu          t3, -287(s3)
                  slt          a4, s7, s6
                  lh           s9, 305(s3) #end riscv_load_store_rand_instr_stream_4
                  sra          s4, a1, a1
                  xor          a0, s7, a2
                  add          s2, gp, a5
                  srai         t4, a4, 29
                  auipc        a3, 631782
                  srli         t2, a6, 14
                  slti         t2, t3, 1273
                  slti         s11, a1, -344
                  and          s1, a2, s5
                  xor          ra, a4, t6
                  slti         s2, s5, -727
                  sub          s1, ra, s8
                  sll          zero, a7, ra
                  slli         a0, tp, 12
                  add          s9, t3, zero
                  slti         s4, s4, -1897
                  ori          gp, s10, -1635
                  blt          s8, ra, 23f
                  sra          s11, s4, a4
                  slt          zero, a0, gp
                  auipc        s8, 690820
                  add          s0, s11, a6
                  blt          a5, s0, 39f
23:               bgeu         a1, a4, 36f
                  sltu         s3, t3, tp
                  bne          t3, s4, 44f
                  sll          t4, t6, a1
                  srl          s7, t3, a1
                  slli         s10, s6, 17
                  blt          s7, a2, 45f
                  sub          a6, a7, s6
                  sltu         s1, t2, s8
                  add          s3, s9, s6
                  lui          a1, 660825
                  bgeu         a1, a5, 36f
                  bltu         zero, s0, 39f
36:               bltu         s6, s10, 50f
                  or           a6, a5, t6
                  bgeu         t3, s5, 43f
39:               auipc        zero, 478690
                  xori         zero, s7, -1538
                  andi         t2, s0, -135
                  and          a4, s1, zero
43:               add          gp, s10, t3
44:               sltiu        t4, a3, 874
45:               lui          s1, 108554
                  bltu         t6, a4, 56f
                  beq          t5, a3, 48f
48:               slti         a7, t1, -177
                  sub          a5, s1, s1
50:               sra          s9, zero, s7
                  lui          a2, 601885
                  sll          a4, a4, sp
                  sub          t5, zero, t2
                  srli         a0, t3, 26
                  bge          ra, sp, 73f
56:               slli         t1, s1, 31
                  bne          a6, s1, 69f
                  srai         t2, t1, 30
                  bltu         s11, t3, 67f
                  auipc        s3, 163447
                  and          t0, s6, a2
                  bne          s10, s10, 72f
                  or           a3, a5, ra
                  bne          gp, s3, 69f
                  addi         s7, t2, 782
                  or           t5, t6, s10
67:               sltu         s6, a7, gp
                  add          s7, s1, a3
69:               bne          s3, s7, 86f
                  ori          s1, a2, 1263
                  bltu         s4, s2, 87f
72:               bltu         s3, a7, 85f
73:               sltiu        a4, t6, 347
                  auipc        a5, 685478
                  blt          s6, t5, 86f
                  bge          t2, t5, 78f
                  ori          t2, t2, -1353
78:               xor          s1, a1, zero
                  addi         s8, a6, 1930
                  sltiu        a4, s5, -1456
                  sra          s3, a2, t6
                  sra          s2, s1, s10
                  addi         a5, s9, 461
                  addi         t5, tp, -284
85:               andi         s9, a2, 293
86:               bge          zero, a5, 87f
87:               beq          s9, s2, 90f
                  bgeu         tp, a5, 103f
                  andi         s0, s10, -900
90:               srl          tp, t3, t5
                  auipc        t4, 357696
                  srli         t2, a0, 10
                  bltu         t3, s10, 113f
                  beq          t1, s8, 105f
                  sub          tp, s7, gp
                  auipc        a5, 983974
                  addi         s0, s10, -601
                  or           a3, t4, s1
                  bne          t6, ra, 117f
                  sltiu        t4, s2, 998
                  srai         a3, s4, 6
                  bltu         s7, zero, 115f
103:              blt          t3, s7, 121f
                  addi         a1, s8, -600
105:              andi         s2, t2, -1837
                  sub          tp, a2, zero
                  xori         s8, a2, 1608
                  bne          a1, s1, 112f
                  and          s10, t4, a0
                  lui          tp, 869349
                  srli         a6, a6, 7
112:              slli         a1, s6, 13
113:              sll          s6, a3, ra
                  andi         t2, t4, 275
115:              slli         s0, a3, 30
                  slt          s3, gp, a0
117:              xori         s2, gp, 345
                  ori          s9, s0, -149
                  bge          s7, s3, 124f
                  slti         s0, t3, 553
121:              bltu         a0, s2, 134f
                  sltu         s4, a2, gp
                  bne          sp, a0, 140f
124:              blt          a3, ra, 135f
                  sltu         s2, ra, t0
                  lui          a6, 295906
                  addi         a3, s11, 224
                  slli         t0, a6, 14
                  bge          t0, a1, 130f
130:              sra          a7, s2, t6
                  beq          tp, a1, 133f
                  beq          s8, a0, 150f
133:              lui          s10, 519014
134:              bne          s11, t4, 151f
135:              blt          s3, ra, 141f
                  bltu         s7, t4, 137f
137:              bltu         s5, gp, 140f
                  bge          t3, t1, 152f
                  slt          tp, t6, t3
140:              beq          s8, s8, 144f
141:              bne          gp, t4, 160f
                  srl          s7, a5, a1
                  addi         gp, s8, -1065
144:              sltu         s10, a7, s1
                  xori         ra, s7, -1528
                  blt          gp, s9, 161f
                  nop
                  beq          a0, s10, 164f
                  sltiu        t5, tp, -1540
150:              sltu         s0, a0, t5
151:              addi         a1, a2, 761
152:              lui          s10, 278650
                  sra          zero, t4, a5
                  slti         a2, s5, -1682
                  sltiu        s2, s10, -1790
                  ori          s1, s8, -117
                  lui          a6, 732689
                  beq          gp, tp, 168f
                  blt          t4, a0, 172f
160:              srli         s3, s6, 19
161:              bgeu         s1, t3, 173f
                  bltu         s11, gp, 166f
                  beq          a6, a0, 176f
164:              srli         a6, a6, 5
                  slt          a5, t3, t4
166:              add          s2, a6, t4
                  sra          s11, a0, s2
168:              sub          s3, t0, a2
                  sub          a1, s5, a7
                  and          s11, s8, s7
                  addi         s1, a5, 1122
172:              sll          s4, t6, t3
173:              or           s3, a5, s2
                  auipc        t5, 428760
                  or           a2, tp, s0
176:              bltu         t2, a5, 178f
                  srli         s4, sp, 18
178:              and          a1, zero, sp
                  sub          t1, t3, t2
                  blt          s4, t3, 188f
                  or           t2, t2, s7
                  bge          t2, ra, 187f
                  sub          a7, s1, a7
                  ori          t0, s3, -1553
                  bne          a0, t0, 201f
                  bne          a0, s8, 206f
187:              srl          gp, s9, t4
188:              auipc        a5, 23230
                  beq          s1, a5, 207f
                  bgeu         a2, s0, 208f
                  sll          a0, t4, ra
                  sltiu        s10, a4, -494
                  bltu         a7, t1, 204f
                  beq          s9, a7, 204f
                  addi         a1, a7, -561
                  add          s10, a3, t0
                  sltu         a2, tp, ra
                  slt          t5, tp, s11
                  srai         s10, s0, 11
                  bltu         zero, ra, 205f
201:              bne          t6, t2, 202f
202:              add          s7, t2, t1
                  beq          sp, s2, 223f
204:              sll          a0, t3, t6
205:              xor          s2, a1, s2
206:              or           a7, a7, ra
207:              slti         s0, s1, -148
208:              bltu         a1, t1, 218f
                  nop
                  lui          s3, 41009
                  sub          s4, t2, t6
                  bgeu         s7, sp, 225f
                  blt          a6, s0, 219f
                  sltu         t1, zero, t4
                  sra          s10, t3, a0
                  sub          zero, gp, s6
                  blt          a4, ra, 233f
218:              nop
219:              slti         zero, a0, 69
                  slti         a5, zero, 1506
                  sll          s1, a5, s4
                  lui          t3, 807645
223:              andi         a2, a7, -356
                  addi         a3, s6, 7
225:              xori         t4, s9, 397
                  slli         t4, tp, 7
                  or           s9, s0, a7
                  srl          t3, sp, t6
                  sll          t4, s1, a5
                  xori         ra, s3, 2031
                  srli         ra, s11, 2
                  beq          s8, tp, 249f
233:              xori         s7, t1, -1660
                  blt          s3, s7, 247f
                  addi         a7, s10, 625
                  sra          s4, zero, s3
                  sub          a7, gp, s3
                  bne          s10, t0, 256f
                  auipc        zero, 355378
                  sub          s1, s7, a7
                  beq          a2, tp, 257f
                  blt          zero, a1, 260f
                  slt          a2, s11, a5
                  srl          t5, gp, s4
                  or           a1, t6, t0
                  xori         a6, s0, 1039
247:              srai         a1, s11, 29
                  blt          a5, t5, 263f
249:              sltu         zero, a1, s2
                  bgeu         ra, s11, 254f
                  add          t3, s10, s9
                  sll          zero, s1, a3
                  blt          s10, s6, 256f
254:              nop
                  or           a4, zero, a5
256:              bne          sp, t0, 258f
257:              xor          t3, s0, t4
258:              srli         s9, t6, 6
                  bltu         s1, sp, 271f
260:              addi         a3, a4, -936
                  bne          t3, s0, 274f
                  bgeu         s5, s4, 276f
263:              and          a2, gp, a7
                  lui          s9, 87550
                  sra          zero, t3, s9
                  sub          s2, a2, t0
                  and          s6, a6, t1
                  slli         t5, t5, 26
                  bgeu         tp, a4, 288f
                  sll          s10, a4, s3
271:              bne          s6, a4, 282f
                  bgeu         s3, t1, 289f
                  lui          s0, 470795
274:              sub          s3, sp, t6
                  sll          t3, s3, s8
276:              add          s9, t1, s3
                  srai         a6, t4, 28
                  sltu         t4, zero, gp
                  addi         ra, s9, 2004
                  bltu         ra, gp, 282f
                  bne          a5, a0, 291f
282:              srli         ra, t0, 20
                  auipc        a2, 618718
                  srai         a6, a4, 28
                  bne          a6, a5, 290f
                  nop
                  bltu         s3, s3, 298f
288:              sltiu        t1, a3, 73
289:              nop
290:              srai         s8, a7, 23
291:              and          a3, t5, s5
                  add          a1, s0, ra
                  sltu         zero, sp, s2
                  sub          s3, s10, a4
                  bgeu         a5, a5, 303f
                  srai         t1, gp, 11
                  andi         ra, t1, -1899
298:              andi         a2, t4, 1533
                  blt          s9, s8, 300f
300:              sll          s11, tp, a0
                  xori         t4, s2, 36
                  srl          t4, a5, ra
303:              slli         a2, a7, 26
                  bne          a0, t4, 322f
                  ori          t0, s6, 715
                  bltu         gp, s9, 310f
                  bgeu         s11, a6, 324f
                  nop
                  and          s9, tp, zero
310:              lui          t3, 352466
                  slt          a6, a5, a3
                  sub          s8, a5, s11
                  andi         gp, a5, 187
                  bgeu         t2, s5, 316f
                  slti         t4, s9, -1307
316:              ori          t0, t2, 1491
                  bgeu         s9, s5, 332f
                  bge          s5, a5, 334f
                  bge          a1, a2, 332f
                  xor          a7, a6, t5
                  bgeu         zero, t0, 332f
322:              sll          s9, s7, s7
                  xor          t1, s9, t0
324:              xor          a1, a5, gp
                  lui          ra, 57782
                  srli         s4, a0, 12
                  sra          t2, sp, s8
                  or           s1, s9, s6
                  bne          s11, s3, 345f
                  lui          a1, 580176
                  and          a0, t4, t4
332:              srli         gp, t2, 19
                  slli         t4, a5, 13
334:              bne          zero, a4, 354f
                  slli         t1, s4, 16
                  addi         gp, s2, -157
                  ori          s7, gp, -442
                  xor          a4, t3, t4
                  auipc        s1, 92468
                  sltiu        s9, t5, -2027
                  xori         s3, a0, -528
                  blt          s5, tp, 356f
                  beq          t2, t6, 347f
                  slli         s10, t3, 8
345:              sll          s9, s7, a5
                  blt          t0, s5, 359f
347:              blt          s4, a2, 359f
                  sltu         s6, a3, sp
                  lui          t5, 289088
                  auipc        s9, 839877
                  sltiu        zero, a6, 515
                  add          s4, s3, tp
                  auipc        a2, 531613
354:              sltiu        s4, s10, -411
                  xor          t2, a5, a3
356:              beq          t1, t6, 360f
                  srai         s9, t3, 7
                  auipc        s1, 698731
359:              slli         s2, s11, 20
360:              sll          s3, s3, sp
                  srai         a4, tp, 20
                  add          a3, sp, s8
                  srli         s10, a4, 0
                  sra          s9, a5, t1
                  sub          t0, s8, sp
                  sra          a7, tp, s7
                  beq          a6, t1, 375f
                  and          s0, t3, s6
                  srl          s1, ra, sp
                  and          t0, t2, t4
                  sltiu        ra, s0, -1126
                  lui          a7, 563467
                  xori         s0, s9, 496
                  addi         a7, a2, -1238
375:              sltiu        a3, s4, 152
                  andi         t1, t1, -1901
                  ori          t2, a7, -336
                  slli         t3, s7, 9
                  auipc        a5, 810504
                  andi         s7, t3, -1876
                  xor          t1, zero, a4
                  and          t0, s1, a6
                  sltiu        s1, s6, 796
                  beq          gp, t6, 386f
                  lui          t1, 974395
386:              sub          s7, s8, a7
                  andi         a1, a7, -670
                  auipc        s9, 547531
                  bne          t6, s6, 394f
                  srli         a7, a4, 24
                  xori         s4, t4, 1788
                  xor          s0, t2, t6
                  add          a0, s0, s1
394:              add          a6, a6, t5
                  or           tp, sp, s7
                  nop
                  add          t5, s4, s0
                  xori         a0, s7, 1833
                  lui          a6, 943185
                  slt          s8, s5, s6
                  ori          t0, gp, -1914
                  sra          a1, t5, s6
                  slli         t0, a5, 5
                  srai         gp, t1, 6
                  bge          zero, ra, 415f
                  srl          s11, s0, a5
                  srai         s2, t4, 22
                  sub          t2, a5, t1
                  srl          s1, a6, s9
                  beq          a5, a7, 429f
                  xor          a3, s3, a3
                  bge          s1, t4, 429f
                  bltu         s2, t4, 431f
                  slti         t1, t2, -1352
415:              andi         t4, s1, 66
                  andi         s0, t2, -312
                  andi         s8, a0, 1827
                  ori          t0, a5, 528
                  ori          a3, s1, -770
                  bgeu         a6, sp, 421f
421:              blt          s3, s7, 439f
                  srli         a6, s8, 17
                  slt          a7, s8, ra
                  blt          s10, s3, 437f
                  slt          t2, s9, s5
                  blt          a1, s11, 437f
                  sra          a6, s7, s6
                  sll          s7, a3, a1
429:              bne          tp, s10, 432f
                  srli         s0, s10, 30
431:              bne          t4, s0, 437f
432:              addi         t3, sp, -614
                  bge          a1, tp, 451f
                  srai         tp, s8, 6
                  bne          s7, s1, 445f
                  srli         s10, s5, 18
437:              sra          a0, s9, t5
                  beq          a7, a4, 443f
439:              sub          s9, s6, s3
                  bge          tp, a2, 441f
441:              sra          a6, t0, s8
                  sll          t5, s0, s6
443:              sub          t3, t1, t1
                  sll          s11, s9, ra
445:              lui          a0, 518530
                  lui          s8, 697822
                  and          a7, s10, s9
                  slt          s7, t4, ra
                  sltu         s0, a6, a4
                  sra          a6, s6, s11
451:              bgeu         a3, a0, 467f
                  blt          t6, gp, 469f
                  auipc        gp, 761172
                  srai         zero, a0, 18
                  srai         a7, t6, 26
                  sll          a2, a4, a7
                  bge          t4, a0, 475f
                  srli         a4, s8, 16
                  bne          t3, s7, 464f
                  srai         s0, ra, 8
                  bne          s8, s5, 477f
                  blt          t5, a6, 475f
                  xor          t3, t0, s5
464:              sra          t0, s5, s3
                  slli         t2, s4, 27
                  slt          a4, sp, s7
467:              auipc        t0, 592342
                  addi         zero, a0, 1822
469:              srai         s4, s7, 6
                  auipc        t4, 9942
                  slti         s7, sp, 807
                  xor          a3, t5, sp
                  lui          gp, 647878
                  bltu         s0, t0, 485f
475:              xori         a0, s8, 146
                  sltu         s1, a1, s8
477:              lui          t1, 24987
                  beq          s8, t2, 488f
                  xori         a0, a0, -468
                  addi         s10, s0, 728
                  bge          a2, s5, 500f
                  beq          s11, a6, 495f
                  slli         s8, gp, 1
                  and          t5, s9, zero
485:              xori         ra, s6, 1093
                  bne          s7, s9, 490f
                  bltu         t1, a3, 489f
488:              andi         s10, sp, -552
489:              ori          s3, ra, -384
490:              xori         s9, a1, -1301
                  nop
                  addi         s6, s9, 1810
                  and          s11, s10, s9
                  or           a3, s4, t2
495:              auipc        tp, 942276
                  bgeu         a4, s0, 513f
                  sra          zero, a1, a1
                  bne          s6, a7, 504f
                  lui          s10, 813091
500:              bgeu         s4, t1, 504f
                  slli         s8, t0, 26
                  srai         t3, s6, 5
                  nop
504:              bgeu         t5, a6, 522f
                  auipc        s4, 661872
                  and          s11, sp, a0
                  slli         s6, t0, 4
                  blt          a7, s5, 519f
                  srli         t0, a0, 24
                  srli         s2, s8, 1
                  nop
                  andi         a4, t5, 1540
513:              bgeu         s0, s2, 516f
                  bgeu         t1, gp, 516f
                  slli         a6, s4, 5
516:              slli         t1, s3, 31
                  bgeu         s11, zero, 535f
                  sltu         ra, a0, s9
519:              sra          s10, t0, t4
                  nop
                  sltu         t5, s10, a0
522:              sltiu        s4, t4, 545
                  sltiu        ra, t6, -1509
                  ori          s4, s0, 731
                  bgeu         t1, s5, 526f
526:              auipc        t0, 604906
                  slt          t4, s7, s9
                  sltiu        s3, s4, 392
                  lui          t2, 352755
                  nop
                  srai         t2, t3, 2
                  sltiu        s3, s0, 2004
                  andi         s8, a0, -827
                  addi         a4, t3, 1715
535:              xori         s2, ra, 893
                  and          s11, s10, a0
                  auipc        a5, 113053
                  xor          t5, s6, a2
                  bltu         s0, t6, 544f
                  srli         t5, a1, 9
                  and          s9, t0, t2
                  la           a4, region_0+1073 #start riscv_load_store_rand_instr_stream_3
                  xor          a2, ra, sp
                  slli         s1, s2, 29
                  lb           t1, -213(a4)
                  lb           gp, 745(a4)
                  lbu          t2, 164(a4)
                  sw           s2, 655(a4)
                  add          a1, gp, a3
                  srl          zero, s5, a2
                  sb           sp, -242(a4)
                  ori          t3, tp, -1153
                  sb           s8, 666(a4)
                  srl          s6, t1, s11
                  lbu          s9, 818(a4)
                  sll          a6, s4, a1
                  lbu          s7, 480(a4)
                  sb           s8, -78(a4)
                  xor          s11, s8, s2
                  slli         a6, a1, 20
                  slt          t2, a1, t0
                  and          s3, s2, t6
                  lbu          t0, 925(a4)
                  or           s7, s10, s10
                  xor          s6, t1, a7
                  or           s11, s6, a5
                  lb           s10, -919(a4)
                  lb           a6, 316(a4)
                  xori         tp, s2, 1680
                  sb           s8, -1009(a4)
                  slli         a7, a2, 20
                  lb           a7, -619(a4)
                  lbu          a3, 234(a4)
                  sltu         t3, gp, a4
                  lb           tp, -622(a4)
                  sb           gp, 333(a4)
                  sltiu        s0, zero, -329
                  nop
                  lb           s3, -256(a4)
                  lb           s3, 848(a4)
                  lh           gp, -707(a4)
                  srli         s11, tp, 25
                  addi         a5, sp, 642
                  lb           a0, -350(a4)
                  xori         ra, a4, -1660
                  lb           tp, -1005(a4)
                  lbu          t2, -600(a4)
                  and          a2, s7, s6
                  lh           a5, -109(a4)
                  slli         s3, a3, 0
                  sb           tp, 98(a4)
                  andi         t3, t0, -949
                  sh           a7, 735(a4)
                  sb           s9, 834(a4)
                  lbu          s9, 544(a4)
                  sb           a1, -330(a4)
                  lb           t4, 576(a4) #end riscv_load_store_rand_instr_stream_3
                  nop
                  sll          s9, t0, a7
544:              srli         a7, t5, 25
                  ori          t4, a5, 1747
                  nop
                  sltu         t5, t1, t2
                  slti         s10, t2, -1278
                  bltu         s8, s9, 563f
                  bgeu         s1, sp, 565f
                  srli         a3, a1, 11
                  sra          s6, s10, t1
                  bgeu         a3, s10, 566f
                  srai         t3, a3, 5
                  sltiu        t3, t0, -1810
                  xori         zero, s5, 1399
                  sra          t1, a4, s1
                  andi         a6, s10, -1223
                  addi         s9, a0, -699
                  bgeu         a2, a3, 572f
                  addi         a3, a1, -636
                  nop
563:              ori          gp, gp, -53
                  auipc        a4, 775142
565:              slti         a6, t1, 812
566:              bgeu         tp, a7, 574f
                  xor          a4, a2, t3
                  addi         a5, a3, 1475
                  bge          s6, tp, 589f
                  sra          s4, s1, a0
                  sra          a6, t4, t2
572:              slli         s11, t6, 4
                  sll          s3, zero, a6
574:              or           a7, s0, tp
                  slt          zero, s10, a2
                  slli         a6, gp, 24
                  slti         t2, t2, 1195
                  or           tp, t3, s5
                  srli         s8, s3, 27
                  addi         a7, a6, 511
                  slli         a7, ra, 12
                  bltu         a7, s4, 583f
583:              srli         s2, t0, 3
                  bltu         a3, gp, 594f
                  slt          gp, s2, t4
                  addi         s0, a1, 61
                  blt          s6, a4, 600f
                  addi         a3, t1, 1117
589:              slti         a5, sp, -158
                  bne          a1, t3, 603f
                  srli         zero, a1, 9
                  bgeu         s6, t2, 608f
                  srl          t4, a3, s6
594:              auipc        s0, 914034
                  sra          s1, a4, s6
                  sra          ra, t3, a7
                  xor          t1, s7, s2
                  xori         s11, s5, -154
                  andi         s3, a6, 190
600:              nop
                  lui          s2, 874745
                  sltiu        a4, zero, -2043
603:              bgeu         t5, sp, 613f
                  srli         gp, a6, 21
                  bge          t0, s4, 623f
                  bgeu         s7, a5, 614f
                  ori          s0, s2, -550
608:              xor          tp, a0, a0
                  andi         s7, s2, -80
                  srl          a4, t0, a2
                  beq          a2, t5, 631f
                  bne          s0, s1, 613f
613:              xori         s7, a2, -1899
614:              add          s6, s7, gp
                  bge          t3, t0, 633f
                  nop
                  bge          a7, s3, 629f
                  nop
                  sltu         a1, a7, t2
                  andi         t0, s10, 345
                  bgeu         zero, zero, 626f
                  lui          a4, 773130
623:              addi         zero, a6, -1754
                  sltiu        s1, s6, -1223
                  bne          s0, a7, 638f
626:              add          a2, s2, a3
                  nop
                  srli         zero, s1, 10
629:              sll          a7, s0, a7
                  blt          s0, s11, 631f
631:              lui          a2, 7289
                  bge          a1, a5, 645f
633:              addi         tp, s9, 308
                  add          tp, s6, s11
                  ori          s3, a1, 1654
                  lui          a6, 40882
                  sll          s3, tp, a3
638:              sll          a6, t2, zero
                  sltu         gp, a5, t5
                  xori         s7, gp, -12
                  bltu         gp, s10, 645f
                  slti         a7, t3, 1525
                  slt          a3, s3, sp
                  sra          zero, sp, s4
645:              slt          t0, s11, sp
                  slli         s8, ra, 4
                  sra          s10, s3, s8
                  lw           ra, 4(s5)
                  or           s0, a6, t0
                  and          gp, s0, t3
                  srli         t1, a7, 26
                  addi         s5, s5, 44
                  sub          a6, a5, t0
                  nop
                  srli         t3, s8, 7
                  slli         s8, a1, 30
                  lui          s3, 864040
886:              addi x25, x1, 1
886:              jalr x25, x25, 0
sub_2:            xor          tp, a7, a0
                  xori         s0, s1, -1264
                  bge          s1, t1, sub_2_stack_p
                  slt          a1, t3, t6
                  sltu         t5, a2, t5
                  srli         s1, s1, 23
                  ori          a1, s3, 1170
                  slt          a1, a3, a0
sub_2_stack_p:    addi         s5, s5, -24
                  sw           ra, 4(s5)
                  sra          a6, t2, sp
                  srl          tp, s0, s10
                  srl          a3, t3, t6
                  add          gp, t2, s7
                  slti         s11, t1, 816
                  xori         t5, t1, -1139
                  sub          s7, s10, t3
                  sub          zero, s2, t3
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  la           a4, region_1+897 #start riscv_load_store_rand_instr_stream_2
                  and          a1, a0, tp
                  srli         a0, s3, 30
                  lh           s9, 45(a4)
                  sb           a0, -28(a4)
                  sh           a7, 23(a4)
                  lb           s9, 18(a4)
                  and          gp, s6, t0
                  lh           a7, 45(a4)
                  lbu          a3, -10(a4)
                  lhu          gp, -51(a4)
                  sltu         a1, s4, t3
                  lbu          s11, -58(a4)
                  auipc        s3, 903266
                  lb           a3, -17(a4)
                  sb           s5, -16(a4)
                  lbu          a5, -2(a4)
                  lw           a0, 11(a4)
                  lbu          s7, 36(a4)
                  xor          ra, a1, s2
                  sb           t5, 51(a4)
                  nop
                  slti         s2, s3, 590
                  lb           s3, 48(a4)
                  nop
                  nop
                  sll          s9, s5, s9
                  lhu          t2, 17(a4)
                  sltiu        s11, s0, -1880
                  lb           a6, -8(a4)
                  sb           a4, -55(a4)
                  sll          t5, a0, s5
                  slti         s0, s0, -1431
                  lb           a3, 52(a4)
                  sltu         zero, t5, s4
                  lb           zero, -21(a4)
                  srai         s9, s2, 23
                  srl          a7, s2, a5
                  sb           a4, -30(a4)
                  sh           s3, 59(a4)
                  srli         s0, zero, 18
                  srai         t1, s3, 12
                  sh           ra, -43(a4)
                  lb           t3, 3(a4) #end riscv_load_store_rand_instr_stream_2
                  beq          a5, t6, 1f
1:                sra          s4, t1, s9
                  sub          a6, a5, a3
                  bgeu         t4, sp, 14f
                  ori          s6, t3, -1870
                  addi         a5, tp, 1468
                  and          s6, t1, s9
                  srai         s0, t1, 1
                  slti         s1, t5, 907
                  srl          a3, a3, s10
                  srl          s10, s7, gp
                  slti         s0, s0, -1833
                  srai         t4, s8, 31
                  addi         a4, a2, -1485
14:               srli         s9, a2, 19
                  srli         s6, t0, 7
                  sltu         t0, t2, s9
                  or           a0, s6, s5
                  bge          t1, a0, 38f
                  ori          a1, a7, -1986
                  slli         s8, t3, 14
                  auipc        ra, 694302
                  bge          sp, t0, 35f
                  xor          a7, ra, s5
                  slli         s4, s11, 6
                  sra          a1, a6, a0
                  add          s8, s8, sp
                  add          s4, t1, s6
                  srl          s7, a5, s4
                  srai         a7, s11, 19
                  slti         s8, a1, 1317
                  slti         t3, s8, -1804
                  sub          tp, a0, s7
                  nop
                  sltiu        gp, s3, -1888
35:               sltiu        s3, s1, 1607
                  andi         a5, t6, -305
                  bne          gp, s6, 51f
38:               bne          t4, s8, 44f
                  sltu         s10, t6, t2
                  slti         a0, gp, -47
                  sll          s1, t6, t6
                  lui          zero, 699715
                  sltu         s1, t1, s3
44:               sltiu        a0, t4, -186
                  slti         a5, s3, 1277
                  addi         s0, a4, -1489
                  blt          s2, s9, 66f
                  xor          s10, s11, t4
                  slt          t2, a2, s3
                  srli         t0, s6, 25
51:               sra          s2, gp, ra
                  srl          t2, zero, s9
                  or           s9, sp, t5
                  slti         t0, s2, 341
                  bne          s2, a6, 72f
                  bltu         s10, s9, 65f
                  ori          s10, a3, 1539
                  auipc        a7, 751009
                  bne          gp, t6, 61f
                  or           a7, s6, a1
61:               auipc        s6, 921048
                  bgeu         a7, a2, 69f
                  sra          s6, a1, s9
                  auipc        t0, 672298
65:               sub          a1, s5, s7
66:               beq          t4, zero, 80f
                  slli         a5, a5, 8
                  sll          s4, s6, a7
69:               add          t5, t6, a1
                  beq          t0, a2, 87f
                  addi         a6, a6, -1277
72:               addi         a2, t3, 1640
                  xori         s6, a4, -669
                  bne          t2, t3, 77f
                  srl          s8, sp, s0
                  la           s6, region_0+1015 #start riscv_load_store_rand_instr_stream_0
                  srai         s8, s11, 6
                  auipc        t0, 132947
                  ori          a3, s0, -1812
                  lb           s4, -6(s6)
                  lbu          a7, 13(s6)
                  slti         s0, a4, 1202
                  nop
                  lb           t0, 2(s6)
                  xori         zero, t2, -438
                  sh           ra, -1(s6)
                  addi         s2, t5, 412
                  lbu          t4, 0(s6)
                  lhu          a3, -5(s6)
                  lb           s9, 6(s6)
                  lbu          zero, -16(s6)
                  lbu          s3, -4(s6)
                  slli         tp, sp, 17
                  xori         t5, t0, -1948
                  lb           s3, 12(s6)
                  add          a3, t5, s9
                  lh           a4, 15(s6)
                  sb           s5, 14(s6)
                  srli         tp, s5, 29
                  sll          zero, s6, t1
                  lb           a7, -2(s6)
                  slli         s8, t3, 25
                  nop
                  lui          tp, 190231
                  slt          s7, s0, tp
                  lb           s2, 9(s6)
                  xor          a1, a5, a2
                  auipc        s7, 108952
                  xor          t2, t3, t1
                  srai         s1, s8, 0
                  slt          s3, zero, a7
                  slt          s2, s1, a1
                  lhu          a1, -1(s6)
                  andi         a7, s1, -531
                  sltu         a2, tp, zero
                  addi         s4, t3, 1938
                  and          s11, a7, zero
                  lbu          tp, -7(s6)
                  srl          a3, t0, t1
                  lhu          s4, -9(s6)
                  lh           s3, 11(s6)
                  sh           a7, -11(s6)
                  ori          tp, s10, -1526
                  lh           s7, -13(s6) #end riscv_load_store_rand_instr_stream_0
                  ori          t5, a1, -1121
77:               bgeu         a5, s11, 97f
                  srl          s8, a3, s2
                  and          s0, a7, s5
80:               sll          s9, tp, s6
                  srli         a7, s0, 20
                  sub          a3, s0, zero
                  add          t3, s8, s9
                  nop
                  auipc        tp, 151745
                  addi         t4, s11, 335
87:               add          s10, t0, a2
                  srai         s10, s4, 18
                  slti         s3, s1, 984
                  and          t0, s3, a3
                  blt          t4, s9, 110f
                  bne          t4, gp, 106f
                  slti         s2, a7, -212
                  ori          zero, t3, 335
                  or           a2, s8, t2
                  sra          s3, s1, tp
97:               sub          a2, tp, sp
                  nop
                  srli         t3, s4, 29
                  bgeu         t0, s8, 116f
                  slli         t4, a3, 5
                  xor          s11, s3, gp
                  and          gp, s6, s4
                  bge          a5, tp, 111f
                  sra          a6, s5, s3
106:              sll          tp, a0, s1
                  ori          s6, s8, -1761
                  sltiu        a5, s0, 446
                  sltiu        ra, gp, 1661
110:              slti         s10, s5, -73
111:              sra          s6, a4, sp
                  xori         s3, a4, -1689
                  xor          s0, s7, t6
                  sub          ra, a1, a6
                  addi         ra, s5, -1782
116:              blt          zero, s10, 118f
                  sra          ra, s5, t6
118:              xor          a5, a4, t5
                  auipc        t5, 941124
                  beq          s5, s4, 124f
                  slt          s1, s7, a7
                  slti         s11, s11, 484
                  beq          s1, s3, 131f
124:              beq          s7, s9, 139f
                  lui          s2, 584577
                  and          s3, gp, s11
                  sll          a6, a7, s0
                  sll          a0, tp, s4
                  bne          a2, tp, 145f
                  slt          s9, s8, a5
131:              srl          t1, t1, s10
                  slt          zero, t6, s1
                  sll          t1, s8, t5
                  lui          t3, 657971
                  bge          s9, a1, 150f
                  slti         a1, t1, -1071
                  sub          s8, t3, a5
                  sra          zero, s6, s11
139:              slt          s7, t0, t5
                  sra          gp, t1, s5
                  slt          t1, zero, a7
                  bne          s3, t1, 148f
                  sltu         gp, zero, zero
                  slli         a6, s0, 29
145:              bgeu         ra, zero, 150f
                  add          t3, a5, t0
                  ori          a1, s3, 1384
148:              srl          tp, s3, s3
                  sltiu        t5, s10, -12
150:              or           s0, s1, s9
                  add          a4, s3, s3
                  sra          s1, t5, s11
                  blt          sp, s5, 160f
                  blt          a2, zero, 163f
                  slti         a6, t4, 1669
                  bgeu         t3, tp, 160f
                  add          t4, tp, s3
                  beq          s4, a7, 178f
                  srl          a6, s8, t1
160:              beq          t6, t6, 173f
                  sll          a4, t1, a0
                  sub          t4, sp, t6
163:              sltiu        s0, a1, 1630
                  sll          t0, a1, a6
                  slti         s6, a0, -36
                  xor          t3, a1, t3
                  sra          s11, a7, a6
                  bne          sp, t2, 170f
                  or           a3, t4, s11
170:              beq          s5, t5, 174f
                  srl          zero, t6, s0
                  bne          s11, s0, 177f
173:              srli         a5, t4, 31
174:              ori          s0, s6, 1075
                  xor          a0, a1, sp
                  bne          s2, t5, 191f
177:              addi         s8, s6, 42
178:              and          s0, t4, t3
                  bgeu         s5, t5, 187f
                  bge          a4, s4, 200f
                  bne          a6, t0, 198f
                  andi         t1, s11, -779
                  beq          a6, t1, 192f
                  and          zero, a6, a3
                  sub          a2, s10, a0
                  bgeu         zero, tp, 202f
187:              sltu         t3, ra, t0
                  beq          a6, zero, 202f
                  la           s8, region_1+128 #start riscv_load_store_rand_instr_stream_1
                  slli         a5, zero, 19
                  srai         zero, a1, 7
                  lui          s3, 633603
                  lhu          s6, -38(s8)
                  sll          t2, tp, t2
                  andi         s4, s5, 782
                  sb           t1, -10(s8)
                  slli         a7, a1, 0
                  lhu          s1, 4(s8)
                  lw           a3, -44(s8)
                  sll          t0, s3, t3
                  sw           s2, 40(s8)
                  lbu          s6, -35(s8)
                  lh           zero, -26(s8)
                  lb           s3, -46(s8)
                  sra          a4, sp, gp
                  sb           tp, 23(s8)
                  lb           a5, 35(s8)
                  lb           t3, -30(s8)
                  andi         s6, a5, -1520
                  lb           t3, -28(s8)
                  slt          tp, a1, gp
                  sb           s9, 43(s8) #end riscv_load_store_rand_instr_stream_1
                  auipc        s7, 809999
                  sll          s1, a4, a4
191:              and          a3, t1, tp
192:              bne          s10, t4, 199f
                  sltu         gp, s10, s8
                  srli         a2, t6, 17
                  sub          t0, s0, ra
                  srl          a5, sp, s10
                  nop
198:              sll          gp, s7, s5
199:              auipc        a5, 586560
200:              and          s11, s2, s8
                  ori          s7, a7, -1415
202:              srli         s8, a7, 22
                  ori          s0, a2, 1081
                  sll          a3, s7, s1
                  sra          t3, ra, s11
                  add          a5, tp, a5
                  add          t1, a7, s7
                  addi         a7, zero, -371
                  slt          t4, t3, ra
                  slli         t2, gp, 25
                  bltu         t5, s3, 230f
                  srl          t2, s1, s7
                  slt          t4, s5, s5
                  ori          a1, s2, -1440
                  bltu         s5, a2, 224f
                  sltu         a0, s5, s6
                  srli         zero, s0, 7
                  bgeu         a4, a0, 229f
                  beq          s11, s11, 235f
                  sltu         a7, s10, s7
                  auipc        s6, 68296
                  bltu         s5, s7, 229f
                  slti         t0, a2, 355
224:              slli         a2, s5, 2
                  slli         s6, s5, 17
                  addi         t4, s3, 382
                  ori          a0, s6, -252
                  slti         a1, s8, -1111
229:              xori         t4, s9, 1821
230:              slti         s6, ra, -1135
                  and          s10, a4, s5
                  xor          s3, zero, gp
                  addi         a1, s3, -1218
                  srl          gp, a4, s6
235:              beq          t5, t5, 237f
                  addi         zero, t1, -1276
237:              sltiu        zero, s2, 1981
                  xor          s1, s2, s4
                  and          s11, s6, t4
                  xori         s0, ra, -1843
                  srl          ra, s2, sp
                  slti         t0, a2, -862
                  xor          s6, t0, gp
                  and          a7, s11, t2
                  sltiu        t0, a3, 912
                  bne          a1, ra, 247f
247:              or           s7, a5, s2
                  beq          t1, a4, 252f
                  lui          s6, 704336
                  bltu         s0, s3, 264f
                  srl          ra, s1, t4
252:              sll          a3, s2, s11
                  sltu         s11, a7, a0
                  sltiu        s10, s8, -826
                  slt          a7, zero, s7
                  slt          a6, t6, a1
                  sll          gp, a0, s9
                  beq          s0, a6, 264f
                  slt          gp, s10, t4
                  lui          zero, 872998
                  sltiu        s11, ra, -1222
                  slt          a0, s1, s8
                  srli         a2, s5, 20
264:              or           t4, t2, s7
                  slt          ra, s10, a5
                  xor          a7, s5, s10
                  srai         a2, a3, 2
                  andi         t2, t5, 1619
                  sra          s4, a4, s11
                  bne          s3, s2, 289f
                  bgeu         t0, s6, 288f
                  srli         s8, a3, 10
                  sltiu        s0, s0, 444
                  sltiu        t0, t5, -471
                  and          s2, zero, t0
                  sll          s8, zero, s9
                  sra          a0, ra, s9
                  srli         s4, s10, 3
                  sltu         t0, s3, s7
                  bgeu         t3, s4, 283f
                  slt          a6, a4, a7
                  sltu         t2, s1, sp
283:              bge          zero, s5, 289f
                  beq          t5, a5, 298f
                  add          a5, s11, s1
                  bgeu         t2, s7, 301f
                  srli         t1, s10, 14
288:              sltiu        s8, ra, -854
289:              slti         s0, s5, 46
                  lui          t4, 972537
                  blt          t0, t6, 298f
                  xor          t4, a5, tp
                  addi         a0, s5, 660
                  bne          s4, a4, 309f
                  xori         s8, a6, 1611
                  srai         a2, s11, 22
                  bgeu         gp, gp, 308f
298:              bgeu         a4, a3, 312f
                  ori          t0, s2, -1361
                  beq          ra, t4, 315f
301:              sra          t5, a2, a4
                  or           t3, a1, s6
                  bne          s1, s4, 308f
                  and          s10, s2, ra
                  sltiu        a0, zero, -1092
                  slti         a7, t1, -1072
                  xor          s11, s2, s9
308:              bgeu         s5, s0, 314f
309:              add          t2, s9, s8
                  bne          ra, t0, 313f
                  ori          a5, sp, -1940
312:              addi         zero, a5, -347
313:              blt          s8, a6, 319f
314:              xor          t2, a5, s3
315:              srai         t2, a7, 26
                  nop
                  sltiu        t0, a6, 1967
                  srai         ra, sp, 17
319:              srli         t4, t3, 17
                  bge          s0, s1, 340f
                  slti         a0, a1, 1416
                  lui          s2, 435550
                  sltiu        a7, a6, -1136
                  or           s7, t3, a0
                  and          s6, s5, a3
                  bltu         tp, ra, 328f
                  bgeu         s1, s8, 341f
328:              andi         a5, s11, 1556
                  nop
                  srai         a0, a0, 24
                  slli         s9, a4, 26
                  nop
                  sll          s4, t4, sp
                  sll          s1, t6, a4
                  sub          t4, s0, s5
                  srl          s1, s8, zero
                  slti         t2, ra, -1075
                  srli         tp, s3, 29
                  slti         s6, s11, -75
340:              sll          t2, t3, s3
341:              srai         t3, a2, 31
                  sltiu        t1, s9, 1528
                  sltiu        s6, a6, 1274
                  sltu         s2, t2, s0
                  bne          zero, s9, 365f
                  auipc        a0, 464128
                  sltiu        a2, a6, 1810
                  blt          t2, zero, 365f
                  bne          s7, a0, 365f
                  andi         s0, a6, 13
                  or           a3, t0, a6
                  nop
                  nop
                  bgeu         t4, zero, 362f
                  nop
                  srli         a3, sp, 3
                  sll          t3, s3, a2
                  bge          s11, t2, 367f
                  addi         t1, s0, -201
                  srl          s1, tp, a1
                  srai         s8, a6, 7
362:              beq          t2, t0, 375f
                  and          t4, t6, a1
                  slli         a6, tp, 0
365:              andi         t2, s3, 988
                  slt          a5, a1, s7
367:              add          gp, a4, t1
                  sll          s9, zero, a7
                  slti         zero, a2, 1250
                  slt          s8, a7, t2
                  blt          t0, s10, 385f
                  slti         s11, s5, -1181
                  andi         a5, sp, 1094
                  srli         t2, t3, 19
375:              xor          t0, t4, t1
                  nop
                  sltiu        s3, gp, -1647
                  andi         s3, a0, 982
                  slti         a5, sp, -1442
                  lui          s8, 170102
                  srl          t1, t4, s3
                  srli         a1, s2, 13
                  la           a0, sub_5
                  addi         a0, a0, 793
                  srai         t2, a0, 23
                  sll          s6, ra, a5
sub_2_j5:         jalr         ra, a0, -792 #jump sub_2 -> sub_5
                  lui          s4, 256235
                  sltu         t2, sp, a3
                  blt          s11, gp, 388f
                  nop
                  xor          s10, s0, a6
                  addi         s11, tp, 1034
385:              srl          a3, t5, a1
                  lui          s11, 603864
                  add          a2, s9, a7
388:              sltiu        a5, s2, -1954
                  and          a3, t1, s3
                  nop
                  addi         zero, s2, 1092
                  or           s6, t1, t4
                  slt          t1, s0, t0
                  lw           ra, 4(s5)
                  addi         s5, s5, 24
                  slli         t4, t0, 8
542:              addi x16, x1, 0
542:              jalr x16, x16, 0
sub_4:            sub          s6, s0, a7
                  addi         s5, s5, -8
                  sw           ra, 4(s5)
                  and          a7, s9, t6
                  sub          s0, t0, t5
                  la           s2, region_1+790 #start riscv_load_store_rand_instr_stream_0
                  sb           s1, -205(s2)
                  lb           a2, 115(s2)
                  sh           t1, 212(s2)
                  or           s6, t0, t1
                  sb           a2, 127(s2)
                  sw           t4, 42(s2)
                  lhu          s4, 242(s2)
                  sb           a6, -239(s2)
                  sb           s5, 231(s2)
                  lw           s4, 26(s2)
                  sub          t5, s7, s0
                  lb           t4, -69(s2)
                  lui          a1, 894474
                  lb           s6, -131(s2)
                  lhu          s11, 10(s2)
                  lbu          tp, 34(s2)
                  lb           a5, 239(s2)
                  slli         a6, s2, 29
                  lw           t2, -170(s2)
                  slt          s4, s6, a7
                  lb           s7, -72(s2)
                  sw           sp, 66(s2)
                  lbu          s3, 215(s2)
                  or           a1, t0, s11
                  nop
                  lb           t2, 165(s2)
                  ori          a6, t6, -1760
                  lhu          s6, 170(s2)
                  sh           s7, -126(s2)
                  lbu          a3, -209(s2)
                  slt          a4, a2, s2
                  lb           s0, 254(s2)
                  lhu          tp, -72(s2)
                  sb           a0, -23(s2)
                  nop
                  sw           s0, -114(s2)
                  lbu          t3, -13(s2)
                  lb           s9, -133(s2)
                  lhu          s6, -198(s2) #end riscv_load_store_rand_instr_stream_0
                  bltu         s1, s7, 8f
                  xori         a2, t1, 667
                  nop
                  lui          t0, 498928
                  bgeu         a5, gp, 13f
                  lui          tp, 319650
                  sltu         s3, ra, s4
                  auipc        s8, 892437
8:                or           a6, tp, s0
                  bne          tp, s4, 20f
                  lui          zero, 1042472
                  bne          s3, tp, 18f
                  sub          t4, s10, a7
13:               srli         s1, t6, 12
                  addi         s2, t0, 927
                  auipc        a0, 507284
                  nop
                  slli         a1, s10, 27
                  add          gp, s10, s7
                  nop
                  add          t2, zero, zero
                  slli         a0, s9, 11
                  sub          s0, t0, t4
sub_4_j8:         jal          ra, sub_7 #jump sub_4 -> sub_7
                  sub          tp, s7, s5
18:               lui          s1, 536397
                  xori         s4, a4, -275
20:               or           a7, t3, s0
                  bne          t2, s10, 33f
                  add          s0, a6, t1
                  slti         t1, t6, -115
                  beq          t4, a2, 36f
                  sltiu        s10, s9, -1906
                  bge          tp, s10, 46f
                  sltu         a5, a5, t6
                  ori          ra, s3, 1479
                  beq          s0, s3, 35f
                  beq          tp, a0, 37f
                  sra          t5, a7, gp
                  lui          s1, 515175
33:               bgeu         s11, s3, 42f
                  andi         t4, t6, -468
35:               add          t5, a1, a4
36:               bne          s7, ra, 49f
37:               and          s9, a2, t1
                  xori         t0, a3, 730
                  slt          s10, t6, s8
                  sub          a0, a1, a2
                  srl          tp, gp, s4
42:               bgeu         s6, t3, 58f
                  nop
                  sra          tp, s4, s4
                  slli         s6, s4, 27
46:               bne          sp, t0, 50f
                  nop
                  or           t5, s8, s4
49:               sub          s4, t0, s6
50:               bne          s1, t5, 70f
                  srli         a4, s6, 4
                  srai         s3, a1, 30
                  bne          a2, s1, 55f
                  sll          s8, t6, sp
55:               sll          a4, s7, a4
                  auipc        s6, 988232
                  andi         ra, s6, -1799
58:               xori         t1, sp, 1635
                  beq          tp, zero, 73f
                  beq          t6, a7, 74f
                  beq          s0, zero, 65f
                  sub          gp, a1, s11
                  bge          s9, t6, 72f
                  bge          t4, t2, 75f
65:               srli         t2, s8, 7
                  add          a3, a5, t4
                  nop
                  bge          t4, s4, 82f
                  sltiu        t4, s0, 379
70:               sltu         s0, s6, s3
                  lui          a4, 464588
72:               xori         a2, tp, -179
73:               srl          a7, a4, a2
74:               blt          s6, s5, 92f
75:               sub          t0, a1, t6
                  bgeu         ra, tp, 83f
                  slt          s11, s3, s6
                  or           s10, s1, t3
                  beq          t1, t1, 89f
                  bne          t5, s9, 86f
                  srl          s6, a2, s8
82:               beq          s7, t2, 84f
83:               sub          a4, t4, s11
84:               blt          a5, s1, 85f
85:               sltiu        s0, s8, 2030
86:               blt          s2, t3, 88f
                  slli         gp, a4, 31
88:               blt          t0, a2, 89f
89:               nop
                  ori          s3, t2, -1571
                  srai         s4, a6, 11
92:               srl          a4, a5, s7
                  beq          zero, s6, 110f
                  sub          a6, s1, s8
                  xor          s3, a4, s9
                  ori          t0, a5, -161
                  sltu         gp, s10, s10
                  addi         t0, s10, -2016
                  srl          gp, s10, s6
                  sll          t1, s5, a2
                  srai         a0, sp, 6
                  and          zero, s6, s8
                  slli         a5, s10, 16
                  sltu         a4, s0, a0
                  slli         t4, s10, 18
                  bge          s9, sp, 108f
                  bltu         s6, tp, 111f
108:              bne          gp, s4, 122f
                  la           s4, region_0+326 #start riscv_load_store_rand_instr_stream_4
                  slli         gp, t5, 6
                  slt          a4, a2, t2
                  srli         t5, s7, 11
                  sub          s10, t0, t2
                  sb           a7, -254(s4)
                  lbu          ra, -59(s4)
                  lbu          s3, 107(s4)
                  auipc        a3, 522787
                  add          s2, gp, zero
                  lw           s6, -158(s4)
                  sltiu        a7, zero, -23
                  auipc        a4, 183889
                  sll          t3, s3, s6
                  sb           s3, 197(s4)
                  lb           tp, -57(s4)
                  lhu          s1, -230(s4)
                  lbu          a2, 151(s4)
                  sh           s4, -60(s4)
                  srai         s2, t5, 30
                  lbu          s9, -125(s4)
                  sb           s7, 99(s4)
                  lb           t5, -137(s4)
                  lbu          s2, -39(s4)
                  lhu          a5, 56(s4)
                  lb           a7, -2(s4)
                  lh           t0, 192(s4)
                  sltu         s11, sp, a7
                  lw           s8, -182(s4)
                  lw           a1, 226(s4)
                  lb           a5, -215(s4)
                  sltiu        t5, s7, 176
                  lui          a7, 265767
                  xor          s11, s4, a5
                  addi         a1, t3, -1439
                  lhu          t4, 64(s4)
                  lh           s2, -4(s4)
                  sb           gp, 167(s4)
                  lui          a4, 719902
                  addi         t2, s11, 1369
                  xor          s10, t3, s5
                  sb           s8, 199(s4)
                  and          s11, s5, a6
                  sh           t5, -212(s4)
                  lhu          a3, 240(s4)
                  sb           a6, 119(s4) #end riscv_load_store_rand_instr_stream_4
                  auipc        s6, 291342
110:              xor          a1, a7, s10
111:              bgeu         a6, s1, 112f
112:              or           s9, a6, a7
                  and          t2, s3, s2
                  srl          a1, t1, a6
                  sltu         s11, sp, s9
                  slti         a3, tp, -1525
                  bgeu         gp, tp, 119f
                  add          a3, t4, t5
119:              slti         tp, s0, 525
                  srl          s2, a1, t0
                  bge          sp, tp, 123f
122:              xor          a5, a1, zero
123:              srl          s3, a3, s2
                  bne          t5, zero, 130f
                  xor          t0, a0, s10
                  addi         t1, ra, 1468
                  xor          gp, s7, s11
                  ori          s7, t4, 1165
                  bltu         s5, s10, 149f
130:              add          t5, t2, s7
                  bne          a6, sp, 132f
132:              bgeu         s7, a3, 148f
                  or           a5, s7, a1
                  srli         s2, s9, 5
                  sub          t0, s6, s4
                  blt          sp, a1, 148f
                  bge          s9, s11, 154f
                  bgeu         sp, a7, 152f
                  la           t3, region_1+637 #start riscv_load_store_rand_instr_stream_1
                  lbu          ra, 22(t3)
                  addi         t1, s4, 1657
                  sub          t5, s8, s6
                  sll          a3, a5, ra
                  sb           s10, -46(t3)
                  add          s7, zero, a5
                  lb           s6, -64(t3)
                  lbu          s11, 60(t3)
                  lbu          s9, 63(t3)
                  add          s8, s7, s11
                  srli         ra, t5, 27
                  lb           a6, 12(t3)
                  lb           s8, 54(t3)
                  lb           t2, -42(t3)
                  sltiu        a6, s4, -1443
                  sh           s9, 57(t3)
                  nop
                  nop
                  lbu          a5, -2(t3)
                  andi         gp, t4, 246
                  sw           a0, 7(t3)
                  slti         s11, tp, -990
                  lb           s1, -18(t3)
                  sltiu        s7, a5, -1796
                  andi         zero, t3, -985
                  auipc        s2, 333682
                  lb           s9, -7(t3)
                  ori          t1, sp, -851
                  lb           s11, -16(t3)
                  slli         s3, a7, 18
                  sltu         s11, a2, t6
                  srai         a2, a4, 3
                  slt          s11, s11, a4
                  sltu         t5, a7, t1
                  andi         a2, ra, -994
                  sh           a5, 51(t3)
                  lbu          s9, 34(t3)
                  lui          s10, 171293
                  slti         s2, s10, 1188
                  sh           s7, -1(t3)
                  srai         s1, s8, 22
                  auipc        t5, 987227
                  andi         s4, s4, 774
                  lb           a7, -18(t3)
                  sub          ra, s4, s8
                  lw           s4, -21(t3)
                  lh           t1, 49(t3) #end riscv_load_store_rand_instr_stream_1
                  addi         s8, sp, 600
                  srai         s9, a2, 13
                  beq          s6, tp, 153f
                  auipc        a5, 483332
                  slt          s6, s6, sp
                  bgeu         s8, s4, 153f
                  bne          s5, s10, 153f
                  slli         zero, gp, 4
                  xori         s11, a5, 277
148:              sra          s3, a5, s1
149:              or           t2, t5, t4
                  sltiu        a7, tp, -1302
                  lui          s8, 328160
152:              slti         a0, t4, 2045
153:              sll          s10, a1, s4
154:              sltu         s1, s2, a2
                  andi         t3, a3, 700
                  add          a5, s9, a4
                  andi         s0, s1, 35
                  and          t5, s0, t6
                  bge          a2, s0, 170f
                  nop
                  auipc        t0, 847396
                  ori          s2, t0, 1479
                  xori         t2, s1, 129
                  slti         s10, s7, 1758
                  auipc        zero, 654616
                  addi         t0, a0, -1507
                  slt          s10, t2, a1
                  sra          a6, s10, s7
                  slli         a2, s10, 14
170:              srli         s0, t6, 1
                  xori         ra, a0, 554
                  sra          a6, a6, zero
                  auipc        t2, 387097
                  sll          s8, s1, a4
                  nop
                  addi         a3, s4, 1031
                  bgeu         a3, a0, 187f
                  bltu         s8, s11, 185f
                  addi         a4, t3, -470
                  bltu         a4, a3, 187f
                  nop
                  srli         s0, gp, 1
                  slt          gp, a5, s11
                  auipc        s1, 342122
185:              bne          s3, a6, 194f
                  addi         s0, gp, 1025
187:              sltu         tp, s7, s6
                  sll          s6, t4, t3
                  or           s10, s11, sp
                  blt          a7, s8, 204f
                  sll          s8, a0, a6
                  andi         t4, s4, 569
                  blt          a1, t1, 204f
194:              sub          t1, t6, s5
                  lui          tp, 896352
                  srai         s10, gp, 24
                  add          t3, s5, ra
                  sltu         s6, a0, s6
                  xori         t2, tp, -1598
                  slli         t5, s5, 15
                  auipc        s6, 940556
                  srl          gp, a6, a0
                  slti         a3, a1, 1279
204:              addi         s11, s7, 1279
                  slt          s6, s6, tp
                  andi         t0, s2, -925
                  sra          s7, s3, t4
                  bne          tp, tp, 217f
                  nop
                  beq          a0, zero, 216f
                  and          s7, gp, a1
                  beq          s11, s6, 216f
                  or           s2, sp, a2
                  bltu         tp, tp, 232f
                  ori          s1, a2, 478
216:              nop
217:              sra          t2, zero, s2
                  srli         a3, a2, 10
                  sll          a0, tp, s6
                  bgeu         t2, zero, 227f
                  auipc        s6, 652327
                  xori         tp, sp, 629
                  xor          s7, s3, s10
                  and          s3, t0, a3
                  bne          ra, t2, 245f
                  bge          ra, s1, 239f
227:              srai         s9, t0, 23
                  and          a7, s5, s8
                  beq          s7, a3, 236f
                  srli         zero, a7, 14
                  nop
232:              sra          t0, zero, sp
                  lui          t5, 969061
                  sltu         tp, s10, s0
                  sra          s10, s10, a6
236:              ori          a2, zero, 465
                  sub          s2, s7, t5
                  sltiu        ra, s10, -361
239:              and          s8, a1, a1
                  slli         a5, s10, 11
                  and          s3, tp, s11
                  xori         t0, s10, 676
                  slli         s4, a0, 22
                  nop
245:              slt          tp, a2, s3
                  xor          t5, s10, s9
                  and          zero, a5, t2
                  bltu         t2, s9, 249f
249:              sra          ra, a2, s9
                  bne          ra, a7, 252f
                  slli         s3, s0, 23
252:              nop
                  slli         s1, a7, 11
                  nop
                  srai         t3, t2, 31
                  and          a6, s10, t5
                  sub          t0, a0, ra
                  sll          t0, t3, zero
                  bne          t2, s0, 261f
                  lui          t4, 989562
261:              sra          s7, a0, s8
                  sub          s7, s11, a7
                  xor          a3, t0, s7
                  srai         a2, a1, 12
                  nop
                  auipc        s7, 340244
                  beq          t0, gp, 271f
                  slli         t4, t4, 26
                  slti         a0, ra, 16
                  slli         a6, a1, 9
271:              bltu         t3, s0, 278f
                  sra          zero, gp, s6
                  xori         s3, t4, -448
                  and          s4, sp, s5
                  and          a2, zero, t3
                  srl          a4, s10, t0
                  ori          t5, s6, 1795
278:              bgeu         a3, a3, 288f
                  slt          ra, t2, s11
                  slli         s9, s0, 14
                  bge          t1, s10, 293f
                  xor          t4, gp, t6
                  srli         t4, s8, 24
                  lui          t4, 62327
                  srl          a6, s1, s0
                  slti         t2, t0, -1524
                  srai         a4, s2, 16
288:              bge          t5, a3, 297f
                  beq          t6, a4, 295f
                  la           t3, region_1+872 #start riscv_load_store_rand_instr_stream_3
                  lbu          s3, 839(t3)
                  sb           s1, 704(t3)
                  lbu          a7, -810(t3)
                  lb           a0, 677(t3)
                  lbu          ra, -115(t3)
                  sb           a6, 635(t3)
                  sub          a3, a2, sp
                  lh           s8, -84(t3)
                  srai         t1, zero, 19
                  lbu          s4, 317(t3)
                  lbu          t4, 456(t3)
                  lbu          gp, -29(t3)
                  lbu          a5, 108(t3)
                  slli         t4, gp, 30
                  lh           s9, -580(t3)
                  sb           s3, -549(t3)
                  sub          zero, sp, s0
                  andi         t0, t0, 911
                  andi         a0, t5, 718
                  andi         s8, s7, -901
                  srli         a7, a1, 28
                  lbu          s3, -732(t3)
                  lbu          s8, 27(t3)
                  lbu          s4, 997(t3)
                  lhu          tp, 1060(t3)
                  lbu          s8, -126(t3)
                  ori          t2, a7, -1401
                  lbu          t1, 1045(t3)
                  lhu          s4, 874(t3)
                  sw           a7, 916(t3)
                  lb           t5, -125(t3)
                  srl          s3, tp, a0
                  sll          zero, ra, t6
                  slli         t1, t3, 30
                  lbu          tp, -364(t3)
                  srli         tp, s4, 14
                  lhu          a7, 58(t3)
                  slti         a1, a7, -1919
                  slt          s2, s2, s11
                  lw           s4, 1020(t3)
                  and          t2, t4, ra
                  sh           t1, 54(t3)
                  lh           t0, 494(t3)
                  slt          s7, s8, t3
                  lb           gp, 221(t3) #end riscv_load_store_rand_instr_stream_3
                  slli         a4, t2, 27
                  auipc        s8, 985272
                  nop
293:              or           s11, s4, t6
                  or           t0, t4, s11
295:              sra          s0, gp, t3
                  ori          s9, s3, -1180
297:              srli         a2, gp, 24
                  slti         a1, s8, 889
                  and          a5, t2, tp
                  srai         s10, s3, 4
                  lui          s2, 874951
                  la           t4, region_0+529 #start riscv_load_store_rand_instr_stream_2
                  xori         a3, t1, 1889
                  lui          s2, 147532
                  ori          s11, a0, 1490
                  lbu          s9, -48(t4)
                  sltiu        a0, s8, 871
                  lhu          gp, -101(t4)
                  slli         s9, a6, 5
                  lb           s7, -40(t4)
                  sb           a4, -200(t4)
                  lhu          s0, 191(t4)
                  and          tp, t3, t3
                  srai         s0, zero, 7
                  sltiu        a2, t0, 197
                  lb           t2, -40(t4)
                  slti         t2, s5, 228
                  sb           zero, 233(t4)
                  lb           s2, 4(t4)
                  or           t3, t0, t3
                  lh           s7, 255(t4)
                  lb           s7, -154(t4)
                  srai         s7, a5, 17
                  xor          s0, ra, s2
                  lb           a7, 154(t4)
                  lhu          gp, -103(t4)
                  nop
                  sll          t5, t3, a3
                  auipc        zero, 208609
                  xor          tp, s2, s5
                  lb           a2, -110(t4)
                  add          s6, s3, t2
                  lbu          a6, 224(t4)
                  sltiu        t1, s3, -730
                  sb           t2, -68(t4)
                  ori          t5, s0, -1717
                  or           a3, a2, s11
                  srl          a0, a5, t4
                  slti         s0, t4, -1993
                  sb           s1, 6(t4)
                  lbu          s1, -29(t4)
                  lbu          s1, 194(t4)
                  sltiu        a7, a1, -12
                  xor          s2, s6, sp
                  slti         s4, s9, -1074
                  lb           s10, 90(t4)
                  lbu          s9, 106(t4)
                  sb           s0, 245(t4)
                  sb           tp, 90(t4)
                  lb           s10, -174(t4)
                  sb           t6, -98(t4)
                  lh           s3, -173(t4)
                  slt          a1, a5, tp
                  sltu         t2, ra, s6
                  lb           t3, -53(t4)
                  sb           s7, 106(t4) #end riscv_load_store_rand_instr_stream_2
                  xor          t2, t5, t3
                  sltiu        ra, a2, 906
                  or           t4, s8, zero
                  sll          s8, t4, s4
                  slti         s0, a3, 630
                  bge          a5, a6, 316f
                  sltiu        tp, a7, 795
                  bne          a2, s1, 323f
                  srai         a3, s3, 4
                  auipc        a7, 279608
                  sltiu        t3, sp, -1042
                  addi         s11, zero, -248
                  and          zero, t5, t5
                  add          a3, t4, a1
316:              bgeu         t5, s2, 327f
                  slti         t1, a2, 1928
                  bltu         t6, a5, 331f
                  srai         s8, ra, 12
                  beq          s7, s10, 334f
                  blt          gp, t6, 339f
                  slli         t1, a0, 6
323:              sra          gp, t0, a1
                  bne          s10, t2, 331f
                  xori         t5, s11, 1927
                  xori         s7, t2, 575
327:              beq          t2, gp, 338f
                  bgeu         s1, t6, 332f
                  andi         s9, gp, -1906
                  bltu         ra, s8, 350f
331:              auipc        t2, 584095
332:              bne          t5, s9, 344f
                  or           zero, a1, sp
334:              auipc        a4, 599093
                  slt          t4, a2, s2
                  slt          s6, a2, ra
                  slt          gp, t6, s4
338:              xori         t0, s0, -481
339:              beq          s9, gp, 340f
340:              srl          t2, t1, zero
                  ori          zero, t2, -621
                  srai         t5, t6, 8
                  add          a5, a7, s2
344:              sltu         zero, a1, a2
                  blt          s10, s6, 359f
                  bgeu         s7, s4, 348f
                  slli         a4, t0, 12
348:              andi         s7, t4, 1499
                  lui          t5, 289986
350:              sll          a3, a4, zero
                  srli         t2, s11, 24
                  addi         s11, s1, -1325
                  and          a1, s5, s0
                  slli         a2, a0, 23
                  beq          t5, a2, 361f
                  andi         s2, s5, 548
                  srli         s7, s6, 25
                  bne          s10, s4, 366f
359:              sll          s8, s10, s9
                  and          s3, t1, s8
361:              srli         tp, a2, 25
                  slt          s6, s5, s3
                  slli         a4, sp, 12
                  xor          t2, t4, t2
                  beq          s7, s9, 382f
366:              and          s4, t2, t2
                  blt          t0, t5, 387f
                  sra          a3, a4, s11
                  auipc        a1, 72522
                  auipc        a6, 828231
                  nop
                  slli         a5, t3, 11
                  ori          t1, s1, -1032
                  nop
                  srai         s7, s8, 0
                  sltiu        a0, s3, 1179
                  beq          t3, a7, 386f
                  blt          s3, s2, 394f
                  bltu         s1, s7, 396f
                  andi         a0, s1, -1788
                  srl          s7, a3, a6
382:              addi         t5, s2, -1812
                  sltu         s8, t0, a1
                  sltu         a0, t2, s4
                  bgeu         a2, tp, 392f
386:              slt          s9, s3, t2
387:              srai         t1, s3, 10
                  xori         t4, t2, 549
                  sll          s3, t5, s2
                  slli         s9, t5, 27
                  sra          s1, t0, t5
392:              add          a4, zero, s10
                  beq          s8, t6, 413f
394:              bne          a5, a2, 398f
                  xori         s8, a6, -1535
396:              sll          s1, a1, a2
                  sltu         s8, a7, ra
398:              slt          t3, a3, gp
                  lui          a5, 251206
                  and          s11, s2, t2
                  auipc        s2, 69793
                  blt          s1, s4, 418f
                  add          s4, a1, sp
                  bge          a2, s7, 413f
                  sra          s8, t5, t2
                  beq          t1, s2, 413f
                  sltiu        t1, zero, -702
                  sltu         s10, s7, s11
                  xor          gp, a1, t1
                  srai         a2, a6, 21
                  nop
                  bltu         ra, s10, 413f
413:              lui          t5, 574168
                  sub          t4, a5, ra
                  srai         t5, s7, 2
                  srli         a2, sp, 10
                  add          t3, a6, s8
418:              and          a5, a1, a3
                  auipc        t2, 921164
                  bge          s0, s9, 431f
                  bge          s5, s0, 430f
                  bne          t2, sp, 431f
                  add          a7, t6, t0
                  xor          a3, t6, sp
                  xor          zero, a7, a3
                  bgeu         s2, s0, 446f
                  blt          t1, a2, 440f
                  srai         s3, s9, 29
                  ori          t1, tp, 978
430:              sll          ra, s0, s2
431:              bne          a4, t4, 441f
                  sub          ra, s8, a4
                  lui          a7, 744878
                  lui          gp, 712775
                  addi         a4, s5, -847
                  bne          s7, s1, 448f
                  xor          a5, s11, a3
                  lui          t2, 756814
                  sub          a4, ra, t2
440:              add          s9, s4, a4
441:              lui          s3, 124772
                  addi         s6, t0, 1855
                  slli         a5, a4, 20
                  slt          a0, t3, a2
                  beq          a5, t0, 459f
446:              slti         t2, a0, -1958
                  slti         s4, t5, 1095
448:              sra          t1, t0, s5
                  nop
                  addi         s10, a2, 1529
                  ori          t4, tp, 401
                  slt          t2, s6, s0
                  and          tp, s7, t2
                  sra          a4, s2, s2
                  auipc        t2, 323336
                  lui          s0, 1029226
                  srl          s1, s10, a3
                  slti         s6, a4, -1969
459:              xori         ra, t0, -1125
                  slt          s1, sp, a7
                  slti         t5, t1, 1056
                  beq          s10, s7, 468f
                  or           s6, t6, t6
                  addi         t2, gp, -1038
                  and          t1, tp, s9
                  lui          t2, 886880
                  nop
468:              bgeu         a3, s3, 470f
                  srli         t4, t5, 19
470:              auipc        s1, 242854
                  sltiu        s6, tp, 1043
                  bne          s11, a2, 474f
                  sub          a3, s8, zero
474:              sub          s6, s7, ra
                  sll          a1, a6, ra
                  slli         a5, t0, 1
                  bgeu         gp, s10, 491f
                  or           a2, a6, ra
                  xor          a6, s8, ra
                  bgeu         s11, s9, 488f
                  add          s9, s4, zero
                  srai         t1, s11, 20
                  srai         a6, ra, 1
                  auipc        s2, 847030
                  slti         a6, s11, 1483
                  and          s10, a0, sp
                  add          s10, s10, s2
488:              or           t2, gp, s9
                  srli         a3, s0, 10
                  bgeu         s11, s8, 502f
491:              srai         s8, s9, 13
                  nop
                  andi         s1, s11, 1732
                  slti         a6, s2, -361
                  blt          a2, s10, 509f
                  nop
                  slli         gp, zero, 24
                  sltiu        s7, a4, 1647
                  srai         s2, s5, 31
                  and          s6, t5, zero
                  slli         a2, sp, 26
502:              and          t3, t2, sp
                  slti         a1, s7, -1366
                  blt          a6, s9, 522f
                  xori         a7, s3, -909
                  sll          t3, gp, s6
                  bge          gp, s2, 518f
                  sll          a4, zero, s2
509:              andi         s9, gp, 340
                  auipc        a0, 261353
                  sltu         t5, a0, a5
                  bltu         s7, s8, 519f
                  beq          s1, s10, 517f
                  blt          t3, zero, 515f
515:              srli         a6, s5, 19
                  xori         s8, a1, -225
517:              sra          s4, a4, zero
518:              bge          s5, s1, 524f
519:              lui          a2, 918230
                  xori         t4, t2, -1005
                  slti         a5, s8, 49
522:              sra          a4, sp, s5
                  slt          s3, a7, gp
524:              blt          s3, a0, 526f
                  ori          a0, s2, -128
526:              slt          s7, a1, a5
                  and          t4, a2, t6
                  srli         zero, s3, 18
                  bgeu         s5, t3, 537f
                  sll          a1, a4, a3
                  slt          tp, sp, s1
                  addi         ra, t0, 764
                  sra          t0, tp, s5
                  sra          s2, a0, s7
                  slli         s2, t3, 28
                  srai         s6, a7, 10
537:              slt          s7, a1, a4
                  xor          s10, t2, zero
                  addi         a7, a5, -1290
                  andi         t5, sp, -1891
                  sra          t4, t3, t1
                  srl          a7, t2, s8
                  nop
                  andi         t3, a3, -50
                  bge          s4, a7, 559f
                  slt          s11, s5, a6
                  bge          gp, t2, 554f
                  auipc        s8, 513431
                  sltiu        a4, s5, 4
                  beq          s4, s5, 567f
                  auipc        s0, 980265
                  auipc        t5, 157437
                  slli         gp, s3, 4
554:              xor          a6, zero, s1
                  ori          a3, t2, -1694
                  bltu         zero, gp, 567f
                  slti         t5, ra, 1291
                  bne          t2, a7, 565f
559:              sltiu        t3, s7, 430
                  sra          s3, s6, gp
                  addi         t4, s4, -723
                  slli         t2, t4, 14
                  bne          a0, a0, 565f
                  andi         s10, s1, -812
565:              srli         a1, t3, 6
                  slti         s4, s9, -1098
567:              blt          gp, s10, 574f
                  add          a0, t1, s11
                  ori          a7, s6, 1919
                  auipc        gp, 670499
                  sll          a5, tp, t1
                  slli         ra, a3, 12
                  addi         s7, ra, -430
574:              blt          gp, ra, 585f
                  xori         t4, a4, -1974
                  slli         a0, s0, 29
                  bgeu         s11, s7, 597f
                  and          s11, a2, s6
                  or           s2, a4, s8
                  sltiu        tp, zero, -833
                  slli         s10, s6, 19
                  beq          a1, t2, 594f
                  or           gp, t4, ra
                  beq          s8, s4, 588f
585:              xori         t2, t4, 624
                  ori          s7, s2, -195
                  add          t2, s4, t4
588:              beq          s6, a5, 589f
589:              auipc        a6, 518262
                  srai         s1, sp, 18
                  sltiu        a0, t1, -839
                  xori         s1, s8, -148
                  andi         t3, t2, 1922
594:              andi         a7, s10, 276
                  slli         a5, s4, 9
                  beq          s8, a6, 605f
597:              bge          a0, s8, 603f
                  nop
                  or           ra, a1, a5
                  blt          s11, s0, 618f
                  srai         s0, a1, 18
                  nop
603:              srl          s7, s5, t6
                  lui          s3, 205783
605:              slti         s0, s2, -703
                  addi         t2, t6, -1000
                  srai         s9, s3, 29
                  srl          t5, zero, s9
                  sll          s1, a3, s0
                  auipc        zero, 860696
                  srai         s7, t5, 31
                  sll          ra, a7, t0
                  sltiu        zero, s6, -1123
                  or           tp, s7, a2
                  add          s1, s1, t6
                  sll          a5, a3, t0
                  slti         s7, t0, 1179
618:              slli         s11, s2, 8
                  ori          a4, t3, 1619
                  srl          t1, a0, a2
                  and          s9, a7, t6
                  bltu         s1, s7, 642f
                  add          tp, s7, a5
                  bne          s9, sp, 636f
                  ori          a7, gp, -749
                  bne          t6, s1, 640f
                  sub          s2, a1, s2
                  bne          s10, s1, 637f
                  blt          s9, t0, 631f
                  lui          s10, 33441
631:              or           zero, s1, s3
                  slt          t3, a1, t2
                  sra          s4, gp, s5
                  add          a6, t1, s8
                  addi         a0, t6, 1715
636:              xori         a0, s2, 1699
637:              xori         s10, sp, -2037
                  bgeu         a6, s4, 652f
                  bltu         t6, s10, 655f
640:              bge          s6, s5, 650f
                  sub          tp, s4, sp
642:              slti         tp, s9, -840
                  ori          zero, a6, -1287
                  srl          tp, zero, a0
                  slti         tp, s9, 483
                  slti         zero, s10, -399
                  add          gp, s9, t2
                  and          zero, s7, a0
                  bge          t2, t5, 653f
650:              xori         s0, t6, -852
                  sll          a4, s5, a3
652:              bge          ra, t0, 665f
653:              auipc        zero, 870339
                  nop
655:              slli         t1, s2, 2
                  sll          s9, s1, s9
                  blt          s0, t0, 666f
                  srl          t1, sp, s7
                  slli         s6, a0, 7
                  or           tp, s2, a4
                  nop
                  bgeu         zero, a3, 668f
                  addi         s3, t5, 1993
                  bne          a6, s7, 666f
665:              blt          zero, gp, 666f
666:              and          t3, gp, s4
                  and          s6, s8, t5
668:              addi         s0, s0, 108
                  sub          a5, tp, s7
                  slti         t3, s0, 810
                  bltu         s10, a2, 685f
                  lui          a3, 577425
                  sra          s10, sp, s4
                  slti         a4, t3, 1582
                  ori          zero, t3, 1864
                  sra          s4, a2, sp
                  sra          a1, s9, gp
                  bge          t6, sp, 695f
                  sra          s1, gp, ra
                  sra          a4, a0, t0
                  xori         t0, s1, -8
                  bgeu         gp, a0, 694f
                  addi         a4, s11, 269
                  and          t1, s6, zero
685:              or           a5, a7, t2
                  nop
                  nop
                  and          s2, a4, sp
                  bge          a0, s4, 696f
                  slt          s8, tp, s0
                  auipc        s8, 677646
                  bne          a3, ra, 698f
                  sub          t3, s2, t6
694:              srli         s11, s8, 26
695:              auipc        a6, 928853
696:              xori         s4, s2, -245
                  bne          s5, t3, 698f
698:              sll          s0, s1, tp
                  lw           ra, 4(s5)
                  addi         s5, s5, 8
                  addi         s8, t1, -572
                  or           s4, s8, t1
                  andi         s1, t5, -1351
951:              addi x4, x1, 1
951:              jalr x4, x4, 0
sub_8:            bne          t5, s8, sub_8_stack_p
                  and          t1, a1, ra
                  and          s2, s11, a4
                  srli         s0, s5, 30
                  addi         s3, a5, -1242
sub_8_stack_p:    addi         s5, s5, -64
                  addi         s9, s11, -1362
                  sll          a6, sp, tp
                  slli         gp, t2, 10
                  sw           ra, 4(s5)
                  srai         s10, t3, 21
                  sltiu        s0, s0, -838
                  sra          a4, s2, a2
                  slti         s7, t6, 1435
                  lui          a6, 311048
                  add          s3, t0, a3
                  bne          a2, a1, 15f
                  sll          s9, s0, a6
                  andi         a7, s7, -529
                  srli         a5, tp, 9
                  add          s4, s8, sp
                  srli         t5, a6, 10
                  nop
                  sub          a0, s3, s3
                  bne          a2, s8, 20f
                  beq          s9, t1, 14f
                  sll          a1, s8, s6
14:               sub          s6, s9, t2
15:               or           a4, t6, zero
                  and          s3, s3, s7
                  addi         t0, a7, 1221
                  sub          a6, s9, s3
                  srl          t5, t2, s7
20:               lui          t4, 998209
                  srli         s6, gp, 26
                  slli         t1, t2, 19
                  sub          s2, sp, s5
                  slt          ra, s10, a2
                  srl          t3, s5, t3
                  beq          t4, t4, 30f
                  sub          t3, s11, sp
                  sltu         zero, t0, a1
                  add          t2, t6, s7
30:               xori         a1, gp, 496
                  sll          a3, s9, a5
                  lw           ra, 4(s5)
                  and          a3, a5, a4
                  xor          s8, s2, t4
                  and          s3, t2, s4
                  slli         s8, gp, 8
                  slti         s3, s1, -1114
                  addi         s5, s5, 64
                  sra          s1, s4, s11
                  sra          s3, a3, s5
54:               addi x20, x1, 1
54:               jalr x20, x20, 0
sub_6:            beq          t0, s2, sub_6_stack_p
                  and          tp, s7, ra
                  slti         a2, t3, 704
                  srli         t0, t0, 0
                  srl          a0, s0, s0
sub_6_stack_p:    addi         s5, s5, -32
                  sw           ra, 4(s5)
                  andi         a2, s9, -1296
                  srl          tp, a0, a1
                  srai         a2, s9, 9
                  and          t5, a1, s5
                  bgeu         t6, zero, sub_6_j9 #branch to jump instr
                  auipc        s4, 576320
                  xori         t2, zero, -1929
                  add          zero, s2, s0
sub_6_j9:         jal          ra, sub_7 #jump sub_6 -> sub_7
                  and          a4, ra, a4
                  slt          tp, s10, a5
                  srli         t1, s10, 26
                  bge          t6, a2, 18f
                  auipc        t2, 518266
                  slti         s6, a0, -108
                  bge          t6, sp, 13f
                  auipc        a1, 474922
                  beq          sp, s5, 26f
                  addi         a2, t1, -1077
                  or           s8, ra, sp
                  add          t0, t1, t0
                  bltu         s10, t1, 17f
13:               add          a2, a6, s1
                  sltu         tp, gp, a5
                  blt          s3, a1, 29f
                  or           a6, sp, s3
17:               nop
18:               ori          s3, t4, -1116
                  sltiu        t5, s7, 1775
                  sltu         a5, s3, s11
                  ori          s2, t5, -668
                  beq          s5, ra, 27f
                  sltiu        zero, a5, 768
                  sltu         s2, tp, t0
                  beq          s2, a1, 39f
26:               nop
27:               sra          s3, a0, a3
                  xor          s8, ra, s10
29:               sra          a7, ra, a1
                  ori          s10, t6, -1935
                  andi         a5, a2, -1807
                  sltiu        a3, a3, -19
                  auipc        tp, 72262
                  bgeu         s7, s0, 38f
                  xor          a4, s3, s2
                  sra          s1, zero, ra
                  bge          ra, a6, 39f
38:               andi         zero, gp, 529
39:               slli         a2, t4, 26
                  add          t5, s10, s11
                  or           a3, a2, s0
                  srl          a3, a5, s3
                  lw           ra, 4(s5)
                  lui          t5, 819010
                  addi         s5, s5, 32
                  addi         t1, t5, 961
63:               addi x20, x1, 1
63:               jalr x20, x20, 0
sub_7:            or           a7, gp, s7
                  blt          s5, t0, sub_7_stack_p
sub_7_stack_p:    addi         s5, s5, -24
                  xori         a7, a5, -1280
                  sw           ra, 4(s5)
                  sll          t1, s3, s0
                  slti         zero, t0, -1878
                  sub          s0, a4, s2
                  la           a5, region_1+174 #start riscv_load_store_rand_instr_stream_5
                  sll          s11, t0, t6
                  lw           a0, 238(a5)
                  sh           t1, 86(a5)
                  sb           s10, 35(a5)
                  lbu          a3, 177(a5)
                  slt          s1, s7, t3
                  sh           s3, -110(a5)
                  sltiu        a3, zero, 1353
                  srl          a1, s0, a7
                  sb           t1, 243(a5)
                  sltu         ra, tp, t1
                  lb           a4, 141(a5)
                  lbu          a3, 191(a5)
                  andi         s11, t4, 298
                  lb           s8, 254(a5)
                  srli         s7, zero, 27
                  lbu          tp, -139(a5)
                  slti         gp, s10, 628
                  srli         s4, t2, 9
                  lb           s8, -51(a5)
                  lb           t4, 215(a5)
                  sb           s0, 220(a5)
                  and          s2, a3, t0
                  sub          t1, sp, t0
                  sb           s3, 149(a5)
                  srai         zero, zero, 12
                  sll          s2, t0, a0
                  sh           t3, 224(a5)
                  sb           s2, 104(a5)
                  add          tp, a0, a0
                  lb           s0, 77(a5)
                  lh           tp, -140(a5)
                  srl          zero, s8, s5
                  lb           s8, 207(a5)
                  sb           a7, 168(a5)
                  sra          a1, sp, s4
                  lb           s1, 171(a5)
                  srli         t0, s6, 28
                  or           s2, tp, s1
                  lb           s4, 33(a5) #end riscv_load_store_rand_instr_stream_5
                  la           s1, region_0+1524 #start riscv_load_store_rand_instr_stream_3
                  lb           t1, -46(s1)
                  srai         s2, s9, 17
                  lhu          a6, -22(s1)
                  addi         t2, a2, -1884
                  sll          a3, t2, s0
                  srl          s8, s0, s10
                  sh           t4, 38(s1)
                  lbu          a4, -35(s1)
                  lbu          a6, -63(s1)
                  add          t2, t6, t2
                  auipc        a0, 433759
                  lw           gp, -32(s1)
                  sltu         s2, s1, a1
                  sb           a6, -11(s1)
                  lb           zero, -6(s1)
                  lh           s4, -18(s1)
                  sra          s3, gp, a1
                  lbu          s6, 48(s1)
                  sra          a6, t1, zero
                  ori          s6, s6, -341
                  lb           s11, -37(s1)
                  sw           a7, 12(s1)
                  lbu          ra, -17(s1)
                  sb           gp, -38(s1)
                  ori          s2, a5, 1864
                  lhu          s11, 34(s1)
                  andi         t2, a1, -79
                  lbu          t2, -48(s1)
                  ori          a6, s9, 1563
                  and          s9, a4, s6
                  lbu          t3, -44(s1) #end riscv_load_store_rand_instr_stream_3
                  la           t1, region_0+1647 #start riscv_load_store_rand_instr_stream_6
                  lb           t2, 169(t1)
                  nop
                  lb           tp, 160(t1)
                  lb           s11, 118(t1)
                  sb           t6, -205(t1)
                  lb           zero, -251(t1)
                  lbu          s6, -175(t1)
                  lb           t5, 240(t1)
                  and          gp, a6, s6
                  lbu          s1, 114(t1)
                  ori          s9, t3, 1088
                  sb           a6, -106(t1)
                  xor          a5, s4, a3
                  ori          s10, zero, 592
                  sll          s0, s6, a5
                  sltiu        a4, a1, 1752
                  slti         t2, sp, 1933
                  srl          t2, s8, s0
                  lbu          a3, -41(t1)
                  sb           s7, -74(t1)
                  lb           t0, 94(t1)
                  xori         s0, t6, 346
                  and          s0, s11, a4
                  lbu          ra, 52(t1)
                  lbu          s0, 48(t1)
                  lbu          s0, 72(t1)
                  sw           gp, 197(t1)
                  slt          s11, s7, a3
                  sb           a1, 182(t1)
                  lb           t3, -189(t1)
                  sltiu        a0, s11, -1916
                  auipc        a1, 675954
                  slti         t4, s7, -551
                  sb           s4, 220(t1)
                  sh           t0, 143(t1)
                  sb           gp, 92(t1)
                  lbu          s6, 35(t1)
                  sb           a0, -149(t1)
                  andi         ra, t5, 1604
                  sb           a1, 198(t1)
                  sb           a0, -8(t1)
                  lb           s3, -1(t1)
                  lb           a1, 214(t1) #end riscv_load_store_rand_instr_stream_6
                  la           s11, region_1+1177 #start riscv_load_store_rand_instr_stream_0
                  lbu          a7, -1090(s11)
                  nop
                  sltu         gp, t0, s4
                  sra          a7, t3, s5
                  sll          t3, s0, a6
                  lh           t3, -199(s11)
                  lui          a6, 882092
                  lh           gp, -247(s11)
                  slt          s8, s11, tp
                  nop
                  lbu          t1, 820(s11)
                  slli         t4, a3, 18
                  sub          s9, a5, s2
                  slti         s4, a7, -387
                  lhu          s0, -781(s11)
                  lbu          s10, 720(s11)
                  ori          zero, ra, 615
                  xor          t0, t0, a1
                  sb           t2, 178(s11)
                  sw           s11, -601(s11)
                  or           t2, s0, t5
                  srai         a1, s4, 6
                  andi         s3, s1, -765
                  srl          a7, s7, t5
                  lbu          a3, -896(s11)
                  lbu          a4, -187(s11)
                  slli         t2, a6, 11
                  srl          s6, sp, s10
                  xori         a3, tp, -1787
                  srl          a7, s3, a0
                  sh           a5, -773(s11)
                  lb           a3, -626(s11) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+431 #start riscv_load_store_rand_instr_stream_2
                  lb           t4, -23(t5)
                  srli         s11, t4, 12
                  lbu          s8, -140(t5)
                  sb           t4, -36(t5)
                  addi         t0, s3, 1254
                  lbu          t0, -131(t5)
                  lbu          gp, -23(t5)
                  lbu          a2, -157(t5)
                  lbu          s9, 213(t5)
                  add          s2, gp, s0
                  lb           t1, -66(t5)
                  slti         s11, a5, -430
                  lb           s2, -162(t5)
                  lbu          a0, 68(t5)
                  sltiu        s0, a4, 1726
                  srai         t3, a1, 27
                  lb           a2, 8(t5)
                  or           a2, a0, s0
                  sb           a1, -144(t5)
                  sub          t1, s5, s10
                  sh           a3, 91(t5)
                  lb           a3, 32(t5)
                  addi         t2, t2, -1784
                  sltiu        s6, s3, 579
                  srai         t0, t0, 30
                  or           s7, s3, s3
                  or           a1, s7, s0
                  lbu          tp, -66(t5)
                  lbu          a1, 50(t5)
                  lui          a0, 231501
                  sra          a7, s8, a4
                  lui          s4, 722323
                  srl          s6, s2, t2
                  lbu          a4, -24(t5)
                  lui          s11, 486579
                  lbu          a2, 190(t5)
                  lb           a5, -96(t5)
                  srli         s3, t1, 7
                  sb           s2, 67(t5)
                  sb           tp, -17(t5)
                  lhu          t0, -33(t5)
                  lbu          ra, -39(t5)
                  auipc        ra, 279419
                  lb           gp, 176(t5) #end riscv_load_store_rand_instr_stream_2
                  xori         a4, a6, 1176
                  sra          a2, t4, t5
                  sub          a5, t5, a3
                  bgeu         s0, t1, 18f
                  bgeu         a4, s5, 12f
                  or           s4, zero, a1
                  sll          s3, t0, s8
                  sra          t0, a7, a4
                  ori          s8, a6, 1001
                  andi         s0, tp, 1925
                  sltu         s8, sp, t4
                  sra          t5, a7, tp
12:               ori          t4, a6, -889
                  and          s3, a7, s7
                  sra          t2, t0, a5
                  slli         t5, s2, 12
                  andi         a6, tp, -212
                  sll          a6, t6, s11
18:               slt          s7, t2, s2
                  bgeu         s6, s5, 37f
                  sll          t5, s11, gp
                  xor          a5, t6, a6
                  bltu         a5, s8, 41f
                  ori          a4, s8, -978
                  bltu         a5, a3, 29f
                  slti         s6, a2, -1125
                  xor          s7, ra, s3
                  bne          s5, tp, 41f
                  beq          s10, t0, 47f
29:               srl          a4, t5, s10
                  sltiu        gp, s8, -543
                  slti         s9, gp, 643
                  ori          s7, a4, 1984
                  slt          t5, s0, s4
                  slli         t4, ra, 23
                  srli         t3, a1, 22
                  xor          a1, t1, t5
37:               add          t0, t1, t1
                  add          t3, ra, s6
                  lui          t3, 1015641
                  la           s10, region_0+38 #start riscv_load_store_rand_instr_stream_4
                  lui          s8, 228089
                  lhu          a3, -16(s10)
                  slli         s6, a2, 3
                  sub          s6, ra, a1
                  sb           s4, -16(s10)
                  xori         a6, a3, -501
                  sb           t2, 10(s10)
                  lb           s4, 5(s10)
                  sltiu        t4, zero, -1821
                  lbu          t5, 14(s10)
                  sb           a1, 5(s10)
                  srai         a7, s5, 23
                  lhu          s1, 10(s10)
                  lbu          s3, 10(s10)
                  sw           zero, -6(s10)
                  sb           a5, -15(s10)
                  lbu          s1, -7(s10)
                  sb           a0, 3(s10)
                  lbu          t4, 9(s10)
                  lb           s0, 13(s10)
                  lw           a1, -6(s10)
                  srl          a0, a2, t0
                  lbu          s0, -15(s10)
                  lb           t2, -14(s10)
                  lbu          s3, -11(s10)
                  lb           s6, 2(s10)
                  lb           a6, 14(s10)
                  slti         s0, a4, -110
                  and          s9, s7, t3
                  lh           gp, 12(s10)
                  and          s1, s9, t0
                  lb           s1, -1(s10)
                  lbu          zero, 16(s10)
                  lb           a3, 4(s10)
                  lbu          t3, 5(s10)
                  lb           s4, 9(s10)
                  sb           ra, -8(s10) #end riscv_load_store_rand_instr_stream_4
                  slti         s2, s0, -1620
41:               sra          t4, t1, s11
                  srl          gp, a3, t6
                  slti         s11, zero, -1876
                  sltu         t4, s2, a4
                  blt          s2, t2, 54f
                  bge          t6, t1, 63f
47:               and          a6, t4, s11
                  sltu         a6, s6, a7
                  addi         s9, s5, 38
                  addi         t5, s11, -230
                  bge          a3, t0, 62f
                  or           t3, a6, a4
                  sltiu        t5, s8, 1519
54:               nop
                  xori         t4, sp, 1378
                  srl          a3, a2, sp
                  andi         a6, a7, -1060
                  bltu         s1, s7, 74f
                  slli         s8, s1, 0
                  xor          t4, s0, s11
                  andi         t1, s2, -1042
62:               nop
63:               slti         t3, t5, -250
                  sltiu        a2, s11, -1498
                  nop
                  sltiu        s11, s0, -891
                  ori          a4, s9, -410
                  slli         tp, a7, 29
                  slti         s9, s0, 258
                  bne          a1, ra, 76f
                  auipc        s9, 634755
                  sltu         a6, a3, s0
                  sltu         s11, gp, s2
74:               bge          a1, a6, 86f
                  slti         t0, a7, 406
76:               xor          gp, s4, s4
                  add          t4, ra, a0
                  sltu         t3, s4, t4
                  add          t0, s3, s11
                  bne          t2, s2, 90f
                  beq          a3, tp, 101f
                  bltu         s11, a7, 89f
                  slti         t3, a7, 927
                  srl          zero, a1, s3
                  beq          t5, a6, 101f
86:               addi         a1, a0, 161
                  srai         a4, t0, 16
                  srli         s2, s9, 15
89:               xori         s10, a0, 1415
90:               blt          a6, sp, 109f
                  or           s3, s1, s1
                  auipc        s1, 794496
                  sra          a4, s4, t1
                  auipc        s4, 220036
                  sub          s9, a6, s3
                  srl          t1, a5, t4
                  sltiu        s9, t1, 13
                  bne          s0, s11, 107f
                  srai         s11, gp, 27
                  auipc        a4, 468634
101:              and          t3, tp, a1
                  sub          gp, a2, t6
                  or           s6, a6, s6
                  ori          a5, s9, -1193
                  xor          t3, t3, s9
                  sra          t2, t6, s3
107:              auipc        a1, 562435
                  sll          s0, tp, t5
109:              nop
                  sra          a7, s6, a7
                  auipc        s9, 760420
                  nop
                  and          a3, s7, a7
                  lui          a6, 783585
                  sra          s8, t0, a2
                  bge          t0, gp, 129f
                  beq          t6, t2, 121f
                  addi         t2, s3, 1048
                  sub          t0, a5, s6
                  srli         t1, gp, 16
121:              addi         s9, s11, -1690
                  slli         a0, s3, 25
                  sll          a5, s5, zero
                  srli         s4, s7, 17
                  auipc        s0, 894159
                  blt          a7, ra, 137f
                  lui          s4, 446375
                  lui          t4, 469697
129:              blt          s5, a4, 148f
                  slti         s7, s5, 1155
                  srl          t4, t5, a7
                  andi         a4, zero, 688
                  srl          a4, tp, a0
                  sub          zero, s0, a5
                  beq          t2, s3, 147f
                  andi         s7, a1, 1953
137:              slti         s9, a4, 725
                  sub          t3, t1, s8
                  bltu         a4, sp, sub_7_j12 #branch to jump instr
                  ori          a2, ra, 2004
                  auipc        s8, 965634
                  xori         t0, t3, -982
                  srai         zero, a1, 15
                  slti         s9, t1, -1544
                  nop
                  xori         zero, a6, -1256
sub_7_j12:        jal          ra, sub_9 #jump sub_7 -> sub_9
                  bgeu         s4, ra, 159f
                  blt          zero, s5, 149f
                  xor          s6, a5, t3
                  srli         a0, a4, 4
                  bne          a2, tp, 158f
                  andi         s7, a0, -1352
                  srl          tp, s3, a1
                  sll          a0, s2, a6
147:              slt          t5, s1, t1
148:              andi         tp, s1, 1777
149:              srli         s6, tp, 10
                  bltu         s0, a4, 156f
                  bge          s7, s8, 163f
                  bge          t5, s3, 155f
                  sub          s3, s8, s9
                  bltu         zero, s10, 166f
155:              slti         s2, tp, 1809
156:              sltu         a5, gp, gp
                  blt          a3, s6, 160f
158:              slli         t4, t4, 27
159:              bltu         t5, t5, 170f
160:              sltiu        t0, t2, -199
                  srai         a5, zero, 1
                  bgeu         t1, s8, 181f
163:              xor          a0, sp, a0
                  slti         a3, t3, -934
                  add          a4, s6, a1
166:              bge          ra, s5, 185f
                  beq          tp, a4, 176f
                  sll          s3, a0, s5
                  or           t5, s3, t3
170:              slti         s10, a4, -1385
                  ori          s9, s5, 1505
                  addi         ra, t5, 1726
                  slti         s2, ra, -1780
                  lui          ra, 482897
                  bltu         s10, a0, 194f
176:              beq          a5, s4, 196f
                  add          a6, s7, sp
                  sltu         s7, tp, s9
                  lui          s7, 748294
                  ori          s2, a4, 222
181:              slti         s7, t4, 876
                  lui          ra, 156439
                  sltu         t5, t3, t3
                  auipc        a4, 361764
185:              sltu         t0, t0, t4
                  nop
                  auipc        s4, 504760
                  bge          a3, s7, 192f
                  and          a5, t0, zero
                  add          s0, a6, t3
                  andi         a6, s0, 912
192:              ori          a3, gp, 565
                  blt          zero, tp, 208f
194:              xor          t0, s5, zero
                  bne          s11, t0, 208f
196:              blt          s6, t1, 203f
                  sra          s11, a6, t6
                  srl          a0, s9, sp
                  or           t0, a4, t3
                  sub          s2, s4, s3
                  bgeu         t0, s6, 211f
                  blt          s1, s2, 211f
203:              xor          s9, s4, a1
                  slt          a0, a0, gp
                  auipc        t1, 152758
                  sltu         a5, a0, t1
                  sub          t2, t2, a6
208:              beq          gp, t0, 226f
                  slti         s3, s2, 848
                  srai         a2, s9, 14
211:              and          a2, a0, s7
                  beq          t0, a1, 220f
                  sltu         tp, zero, a7
                  xori         t1, a5, 1333
                  bne          s1, s0, 224f
                  or           zero, a5, t5
                  sra          a3, s0, ra
                  slti         s9, sp, -1123
                  sra          a2, t4, ra
220:              nop
                  bge          ra, s9, 233f
                  slti         s3, s8, -1157
                  bge          s10, a3, 229f
224:              sll          a1, s8, s3
                  sll          ra, a1, a4
226:              slt          a5, s7, a3
                  andi         a0, a3, 975
                  srli         s10, t0, 11
229:              bgeu         t3, s10, 244f
                  xori         t1, ra, 1529
                  andi         s8, s10, 1314
                  or           s4, s9, sp
233:              bltu         zero, s7, 239f
                  sltiu        s1, a5, 1340
                  add          a2, a1, s11
                  sll          s0, s0, t2
                  beq          a2, a2, 249f
                  ori          t5, a1, -228
239:              slt          s8, a3, t2
                  blt          s11, t5, 257f
                  sub          zero, s5, s2
                  andi         s4, s4, 1998
                  slti         a3, t4, -1075
244:              add          tp, a0, s3
                  sltiu        t2, s2, 74
                  lui          ra, 108633
                  slti         s10, s1, -1885
                  bge          a5, t6, 264f
249:              srli         s8, s9, 22
                  sub          t5, s1, t5
                  xori         s7, s9, -1636
                  bne          s9, s1, 268f
                  bgeu         a4, a2, 258f
                  lui          s3, 212912
                  srl          t4, t1, t5
                  blt          s1, a3, 276f
257:              lui          a7, 754551
258:              sltu         a5, t5, t0
                  sltiu        s7, s9, 1359
                  xor          a4, s7, t4
                  slli         s8, t4, 5
                  or           a2, tp, a6
                  xori         a3, s5, 1246
264:              bne          t3, a0, 278f
                  srai         tp, a3, 30
                  srli         t2, s4, 25
                  slli         a0, t0, 13
268:              andi         ra, a1, 283
                  sub          s7, a5, s2
                  or           s1, t6, t5
                  slti         s8, s2, 1908
                  srai         t4, t0, 14
                  nop
                  and          s9, a2, tp
                  blt          s0, s10, 286f
276:              and          t1, a7, ra
                  sra          t1, s10, s2
278:              xor          t4, a0, gp
                  sra          s1, t3, a5
                  xor          t2, sp, gp
                  addi         s11, s9, -1726
                  sra          a2, t6, s0
                  ori          t5, s5, -940
                  nop
                  bgeu         s6, a5, 304f
286:              xori         s1, ra, -482
                  sltu         s2, a6, zero
                  srl          s4, t2, t2
                  nop
                  beq          t4, a4, 309f
                  nop
                  blt          a5, s9, 298f
                  ori          tp, zero, -261
                  sra          a5, zero, s6
                  bge          a0, a3, 298f
                  nop
                  blt          t1, s0, 311f
298:              bge          s4, t4, 317f
                  srai         ra, t1, 8
                  sll          t2, t4, a3
                  addi         s2, t1, 927
                  sll          a5, a7, a3
                  bgeu         a7, a1, 322f
304:              nop
                  bne          s0, a0, 317f
                  lui          s6, 722532
                  slli         t0, t1, 30
                  srl          t0, gp, a1
309:              blt          s7, ra, 329f
                  beq          t6, sp, 321f
311:              sub          s10, s8, t1
                  bltu         s5, tp, 320f
                  nop
                  ori          zero, t0, -785
                  bltu         s2, s2, 331f
                  slli         s1, sp, 14
317:              andi         s3, zero, -713
                  lui          s8, 295587
                  xori         a1, ra, 855
320:              sltiu        a2, s10, 843
321:              auipc        t5, 648602
322:              xor          s1, a3, s6
                  addi         s9, s0, 154
                  bltu         t0, sp, 333f
                  sll          a5, t6, s10
                  sltiu        s8, t2, -844
                  bne          s8, t1, 347f
                  bgeu         s7, t1, 339f
329:              bne          tp, a1, 348f
                  ori          t4, t4, 1249
331:              bge          s7, s2, 340f
                  srli         tp, a7, 18
333:              srl          s1, gp, tp
                  lui          tp, 379922
                  sltiu        a4, t5, 1108
                  addi         t5, tp, -538
                  sll          s0, tp, s3
                  xor          s3, gp, t5
339:              and          a4, sp, t6
340:              slt          s4, a0, a6
                  slt          s7, t3, t0
                  andi         a5, tp, -1239
                  bltu         t5, t5, 352f
                  sub          s10, a0, zero
                  slli         s4, t1, 10
                  xor          s0, s9, s11
347:              and          s4, t1, a6
348:              bltu         s4, t3, 366f
                  bltu         t1, s9, 355f
                  ori          s9, t3, -124
                  lui          a4, 930750
352:              bne          s10, t2, 362f
                  ori          a6, s7, 617
                  xor          s7, a5, a2
355:              srli         ra, a5, 20
                  add          t2, a1, a1
                  slli         a2, s6, 21
                  beq          s7, a3, 362f
                  sub          a2, s11, sp
                  addi         ra, sp, -270
                  andi         t1, s10, -1323
362:              sra          t5, a3, s3
                  ori          a3, s4, -700
                  slt          a7, s3, s5
                  or           s4, t6, s2
366:              bge          s1, s1, 371f
                  slt          zero, t6, a5
                  add          s10, zero, s7
                  xor          s10, a1, gp
                  add          s3, s3, gp
371:              sltu         s9, a5, sp
                  auipc        s1, 568386
                  sub          t3, s8, tp
                  bltu         t3, s7, 386f
                  lui          s10, 497300
                  blt          a0, a7, 391f
                  sra          zero, ra, zero
                  sltiu        s11, t6, -2027
                  lui          s7, 407266
                  auipc        s1, 788046
                  sltu         s2, s5, s0
                  blt          t0, s11, 395f
                  nop
                  srai         t1, s0, 16
                  sll          s10, t0, a3
386:              slli         a2, t4, 10
                  andi         t0, ra, -1045
                  nop
                  ori          t0, a0, -114
                  beq          s8, s11, 397f
391:              nop
                  sra          s1, s1, a4
                  srl          t0, s1, t2
                  add          ra, a0, t4
395:              sub          t2, t4, t0
                  xor          s7, s6, t2
397:              srai         t5, s10, 22
                  ori          s7, t3, -554
                  nop
                  lui          a5, 836764
                  srai         a0, t6, 2
                  lui          s2, 162138
                  blt          t2, s7, 415f
                  auipc        t0, 842141
                  add          gp, a6, s0
                  ori          s4, s1, 1918
                  sltu         t1, s4, a0
                  addi         s2, a1, 1947
                  sltiu        t4, zero, -1336
                  nop
                  blt          t2, t0, 426f
                  add          zero, s0, a3
                  add          s8, t4, s7
                  sltiu        t0, t5, 1410
415:              bgeu         s5, tp, 431f
                  sra          a2, a5, s1
                  or           a6, zero, zero
                  bgeu         s0, s2, 435f
                  bltu         a1, sp, 428f
                  ori          a3, a2, -357
                  or           s10, s7, ra
                  bge          zero, a2, 441f
                  sltiu        s9, t0, 661
                  bne          s6, a6, 442f
                  slli         s3, ra, 0
426:              xori         a3, a4, 2043
                  la           t5, region_0+717 #start riscv_load_store_rand_instr_stream_1
                  slti         t2, a7, -223
                  xor          s10, s4, a3
                  slti         zero, s8, 1791
                  nop
                  lb           s8, 68(t5)
                  sb           t0, 110(t5)
                  sub          s11, a3, tp
                  or           t4, s5, s6
                  and          s10, a6, a4
                  slli         t2, s7, 27
                  sll          s3, a5, s9
                  sltu         s6, t5, a1
                  lb           t1, 158(t5)
                  and          a4, zero, s7
                  slt          t2, t0, s4
                  srl          gp, s10, s10
                  lbu          t4, -95(t5)
                  lbu          s7, -135(t5)
                  auipc        t1, 964075
                  lbu          s10, -168(t5)
                  lw           s4, -169(t5)
                  xori         s0, a6, -471
                  sltiu        a6, a7, -1595
                  sltu         t1, s10, s7
                  ori          a2, gp, 1109
                  sh           gp, 59(t5)
                  sb           s8, -164(t5)
                  sb           s11, 210(t5)
                  andi         ra, s9, -1907
                  sw           a1, 91(t5)
                  lb           a6, 213(t5)
                  sb           a5, -97(t5)
                  lbu          ra, -114(t5)
                  lbu          ra, -218(t5)
                  lh           s7, -109(t5) #end riscv_load_store_rand_instr_stream_1
                  addi         s6, s0, 201
428:              and          t0, s7, t1
                  bltu         a1, gp, 442f
                  bltu         s10, t3, 449f
431:              bgeu         s5, sp, 440f
                  srli         a7, t0, 20
                  andi         s10, a5, -497
                  srl          s9, a2, t3
435:              or           t3, a0, s10
                  sub          t5, t2, t3
                  sub          s4, a0, a3
                  sll          a2, zero, s11
                  andi         a3, t4, 1410
440:              srli         t2, t1, 27
441:              bge          s1, s2, 451f
442:              ori          t1, a6, 720
                  bge          ra, s7, 449f
                  bgeu         a7, s11, 452f
                  bltu         t3, a6, 452f
                  auipc        s8, 647892
                  xor          s9, t5, t1
                  ori          s7, zero, -1258
449:              bgeu         s3, tp, 466f
                  ori          a5, s1, -760
451:              bge          a4, s11, 460f
452:              addi         s10, s6, -1382
                  bltu         t1, a6, 473f
                  bge          s10, s10, 459f
                  bne          a4, gp, 470f
                  beq          s1, s1, 459f
                  sltu         a7, t5, s10
                  blt          s8, s0, 474f
459:              and          s7, a3, tp
460:              add          tp, s2, s0
                  bgeu         s0, a0, 472f
                  sll          t4, t4, zero
                  beq          s5, s6, 478f
                  sra          a5, s4, a1
                  srl          a3, t0, t2
466:              sltu         ra, s11, t1
                  slli         s0, a3, 30
                  bge          s6, s2, 474f
                  and          s11, a2, ra
470:              auipc        a6, 275936
                  slt          s2, a7, a7
472:              andi         zero, t2, -1253
473:              xori         a5, s7, -1087
474:              and          t1, s8, a6
                  sll          gp, s1, s3
                  auipc        t2, 384461
                  bne          sp, tp, 489f
478:              or           zero, a4, a7
                  lui          t3, 508838
                  slti         s1, s8, -289
                  add          t5, s3, t0
                  and          s8, t2, s8
                  sll          tp, a6, a1
                  add          t5, ra, tp
                  sll          a4, t5, s1
                  srl          s8, s5, s2
                  bge          s5, sp, 503f
                  bne          sp, a5, 500f
489:              xori         s2, s0, -1912
                  sltu         zero, s11, s4
                  bltu         s0, s0, 510f
                  srli         a1, ra, 11
                  bne          t5, a7, 507f
                  lui          s7, 97739
                  ori          t0, t2, 617
                  slti         s7, t1, -1829
                  beq          t3, t6, 509f
                  addi         t0, s5, -215
                  bne          a7, t0, 519f
500:              sltu         a1, a4, t4
                  xor          a7, s8, s1
                  bge          a5, ra, 521f
503:              srai         a6, s2, 30
                  addi         s10, t4, 1114
                  blt          a3, s10, 509f
                  sub          a7, tp, a7
507:              ori          t2, t0, -718
                  ori          t0, t1, 612
509:              nop
510:              addi         a2, s2, -359
                  bgeu         s7, s11, 522f
                  xori         a6, s5, 1046
                  bltu         a7, s8, 532f
                  and          a1, t1, s2
                  sltiu        a6, t0, -1240
                  srl          s3, s10, a2
                  bne          a2, s4, 533f
                  ori          s10, a5, 255
519:              bne          gp, t1, 525f
                  slti         t5, t3, 556
521:              bne          t1, s3, 531f
522:              slti         s2, t5, 1758
                  nop
                  ori          t3, a4, 1944
525:              add          a1, s10, gp
                  slli         t1, a2, 12
                  slt          a7, a6, t6
                  srl          t2, zero, s5
                  ori          t2, t5, 366
                  slti         a5, s4, 1383
531:              ori          a4, a3, 584
532:              srli         s7, t6, 27
533:              bgeu         a1, s1, 553f
                  sub          a0, a5, sp
                  blt          s2, t3, 552f
                  sra          s9, s4, a5
                  slt          s1, t5, a1
                  slti         a5, t6, -1476
                  addi         tp, s8, -1295
                  lui          t4, 458511
                  andi         s8, t4, 1950
                  or           gp, s5, tp
                  sltiu        t2, a3, 1578
                  add          s7, s2, zero
                  bne          a3, t1, 548f
                  slli         a3, s0, 21
                  sltiu        t2, s3, 852
548:              sltiu        a5, s2, 1970
                  sra          s2, t3, a2
                  sltiu        s11, s1, -1242
                  blt          t1, t2, 562f
552:              sll          zero, s5, a1
553:              blt          t4, sp, 560f
                  blt          s6, a6, 566f
                  srl          t3, t6, s3
                  auipc        a2, 438691
                  srl          t1, s6, a3
                  add          s7, tp, s5
                  srli         s11, s1, 16
560:              addi         a3, sp, 141
                  bne          s9, zero, 575f
562:              srl          t2, s4, t0
                  sltiu        t2, a0, 330
                  sll          t0, sp, t2
                  sra          t4, s3, s9
566:              and          a3, s7, a5
                  auipc        a1, 769877
                  xor          tp, t1, a1
                  and          t2, a4, t3
                  lui          ra, 572456
                  srli         a0, a7, 6
                  sltiu        a5, a4, -1300
                  blt          a6, a2, 579f
                  andi         s10, a2, -1694
575:              bgeu         s6, t1, 595f
                  andi         t0, a1, 849
                  srli         s8, t1, 5
                  sltu         a2, a5, t2
579:              sll          s10, gp, a7
                  or           gp, s0, s7
                  nop
                  slti         zero, s4, -1272
                  bgeu         a7, s10, 588f
                  bgeu         t2, t6, 596f
                  ori          tp, t3, -172
                  bge          t1, s7, 599f
                  srl          a1, a3, tp
588:              slli         zero, s3, 13
                  slt          s0, a4, s7
                  sltu         a3, s8, s7
                  auipc        s0, 951507
                  bge          a5, t0, 611f
                  xor          s10, ra, s1
                  beq          sp, a3, 613f
595:              bgeu         s4, s3, 614f
596:              sra          s11, s5, s6
                  slt          tp, a2, s7
                  and          t3, a1, t1
599:              bltu         a3, t4, 614f
                  sll          s8, s7, ra
                  auipc        s10, 675938
                  bne          gp, t2, 611f
                  beq          a5, a2, 612f
                  sra          s7, a3, s8
                  bltu         zero, a5, 613f
                  sltiu        a4, s9, 729
                  slli         s11, t4, 16
                  srl          s9, s8, a4
                  xori         a0, s4, 1795
                  srli         a2, s11, 3
611:              bltu         s0, s6, 626f
612:              sltu         a4, t4, s6
613:              beq          zero, a2, 617f
614:              bge          a7, s8, 632f
                  bne          t2, a4, 627f
                  auipc        t0, 1038822
617:              srli         a4, s7, 12
                  sub          a0, s8, s3
                  bgeu         s5, a7, 630f
                  add          s8, t2, t4
                  ori          t4, t0, 2013
                  beq          t1, a4, 631f
                  srli         s1, s10, 26
                  andi         t1, a0, 870
                  add          s2, zero, a0
626:              and          s2, a3, s6
627:              bltu         t3, a0, 643f
                  bge          a4, a2, 642f
                  slti         s2, a3, 1567
630:              srai         a5, t5, 12
631:              bne          t3, a1, 642f
632:              ori          s0, a1, 715
                  slti         a0, a7, -2013
                  sltu         t3, s10, t1
                  and          tp, a1, a4
                  bgeu         t4, s0, 645f
                  srli         s1, a6, 16
                  add          t1, sp, s8
                  slti         s6, s1, 1173
                  xori         s2, s0, -237
                  srai         s10, tp, 15
642:              add          t5, a3, t5
643:              and          a5, s3, t6
                  auipc        s8, 380702
645:              bne          t4, a5, 664f
                  add          a3, a5, a3
                  sltu         a7, s0, a5
                  beq          t0, s7, 667f
                  bgeu         t0, t1, 669f
                  and          zero, a3, s3
                  sltu         a4, a7, t2
                  andi         s6, a2, -1262
                  andi         a7, s5, -1018
                  xor          s3, ra, s6
                  lui          a4, 235449
                  add          t3, s0, t1
                  lui          a5, 117162
                  auipc        s8, 258899
                  sra          s3, a7, s8
                  beq          t0, s5, 675f
                  bne          s0, t0, 667f
                  slt          zero, s8, sp
                  srai         tp, s6, 20
664:              bltu         a6, gp, 680f
                  add          s3, a4, a6
                  bltu         t4, a3, 678f
667:              addi         s2, t2, -2010
                  sltu         s6, ra, a6
669:              slti         t5, a5, 729
                  or           a7, zero, sp
                  srai         a0, a1, 17
                  xor          s8, a3, s1
                  slli         a6, s1, 27
                  srl          gp, s9, s10
675:              and          t1, sp, s3
                  andi         s7, s2, 957
                  beq          s8, a6, 682f
678:              bne          t5, ra, 690f
                  addi         a3, a1, -1383
680:              xori         s6, s3, -232
                  andi         s2, t4, -1372
682:              sub          t0, t2, a0
                  bne          a0, a2, 695f
                  xori         t5, s5, -200
                  slli         a4, s3, 19
                  bge          s1, a5, 705f
                  bge          a0, s8, 707f
                  sltiu        s1, s9, 2011
                  bne          s1, t4, 705f
690:              addi         s9, t2, -615
                  xor          s10, s3, s6
                  bgeu         s10, gp, 701f
                  xori         s7, s3, 128
                  bltu         t6, a2, 709f
695:              sltiu        t0, t2, 150
                  blt          tp, s3, 699f
                  blt          zero, t3, 703f
                  slli         s3, ra, 5
699:              sra          a6, zero, gp
                  or           a4, a2, t3
701:              bgeu         ra, t4, 710f
                  or           ra, t6, gp
703:              xor          tp, s8, s9
                  srai         a3, t1, 28
705:              auipc        s7, 275297
                  or           t2, a6, s8
707:              slti         a1, t5, -1887
                  auipc        t1, 77793
709:              add          s10, t6, t1
710:              sll          t0, a1, s0
                  blt          t1, a3, 729f
                  slt          a0, a6, t0
                  or           tp, s9, s9
                  blt          s6, a2, 731f
                  auipc        gp, 519267
                  bgeu         sp, a2, 735f
                  sltu         t5, ra, s8
                  sra          s10, s11, s2
                  and          t5, t4, ra
                  add          t3, a3, s5
                  bne          t4, s11, 729f
                  ori          t1, s0, 1006
                  slti         s0, s2, -483
                  slt          t1, s4, tp
                  add          a1, a2, s7
                  or           s9, t4, a1
                  xori         t2, s7, 583
                  sltu         s4, t0, t4
729:              add          ra, t1, s3
                  slti         a3, a3, 2025
731:              slti         ra, gp, -1222
                  slt          s4, s9, s7
                  slli         s11, a2, 1
                  bgeu         a3, t1, 745f
735:              srli         t4, s0, 4
                  srai         gp, a6, 26
                  ori          a7, s8, -1668
                  bltu         t2, s3, 751f
                  slti         s11, t4, 75
                  bge          gp, t3, 747f
                  beq          sp, a4, 745f
                  addi         t0, s4, -102
                  sub          a5, a6, a0
                  nop
745:              bgeu         s6, a3, 755f
                  srai         zero, t5, 24
747:              sltiu        s7, s4, -100
                  sub          a4, s3, sp
                  andi         gp, t6, 1665
                  lui          a2, 686418
751:              srai         t2, t1, 24
                  blt          s8, t3, 766f
                  bgeu         s0, s5, 765f
                  slti         s2, a7, -322
755:              or           t2, s0, t6
                  xor          a4, ra, s1
                  bge          a7, t1, 769f
                  addi         a1, t4, -1330
                  bge          t0, s7, 777f
                  sltiu        s1, s5, -1388
                  slti         tp, s6, -1766
                  nop
                  auipc        s9, 828929
                  blt          sp, a1, 773f
765:              sub          s3, s6, s8
766:              or           s3, t5, s9
                  bgeu         s7, tp, 770f
                  slt          zero, s9, a0
769:              slti         tp, a5, -1632
770:              lui          zero, 906090
                  or           s6, gp, s1
                  slt          t1, t4, s7
773:              addi         t2, tp, 608
                  slli         t3, zero, 2
                  auipc        t5, 504511
                  ori          a6, a5, 49
777:              srli         t4, s5, 6
                  srli         t3, a3, 5
                  srai         t2, t3, 7
                  srl          tp, s7, t0
                  srl          s3, s2, s6
                  lui          ra, 26100
                  xor          t3, ra, zero
                  sub          gp, s7, s10
                  bgeu         s3, s8, 796f
                  sub          tp, a2, s1
                  blt          s7, s7, 807f
                  xori         gp, zero, 276
                  slt          t5, s3, s3
                  beq          t4, gp, 801f
                  slt          t3, s5, a1
                  srl          a6, s6, s6
                  ori          tp, t0, -599
                  or           t1, zero, t2
                  srl          a0, a3, a2
                  and          t0, t6, s5
                  sub          t4, gp, s6
                  slti         zero, a7, -1000
                  srai         s7, s4, 5
                  bgeu         t1, s6, sub_7_j11 #branch to jump instr
                  andi         a1, s4, -672
                  srai         gp, ra, 6
sub_7_j11:        jal          ra, sub_8 #jump sub_7 -> sub_8
                  ori          s11, s2, 1849
                  lui          s1, 1026511
796:              srli         s2, t1, 19
                  bgeu         s3, tp, 817f
                  xori         s1, s0, -1301
                  sltu         a1, a1, s10
                  bltu         s2, gp, 819f
801:              addi         a5, a0, 1148
                  andi         t0, s8, 1755
                  nop
                  srl          a0, s8, t1
                  sll          gp, a2, s11
                  andi         a6, a0, 485
807:              bge          a2, t1, 822f
                  slli         s11, sp, 10
                  xori         s4, a1, -100
                  auipc        s9, 470658
                  blt          a3, a7, 820f
                  srl          s1, s11, s3
                  nop
                  slti         s2, s2, -1301
                  nop
                  add          s3, s2, s2
817:              bltu         t4, tp, 833f
                  bltu         a3, s6, 822f
819:              slli         a7, tp, 19
820:              bne          t4, a5, 827f
                  slti         s11, s10, -105
822:              addi         s10, s4, -125
                  lui          s11, 564414
                  andi         s11, s9, -1833
                  beq          s5, t2, 837f
                  sltu         s9, s6, s5
827:              slti         s2, s6, 1895
                  or           s8, a3, t3
                  bge          s6, s9, 844f
                  slti         a6, tp, 699
                  slli         s3, s11, 12
                  sll          a6, zero, s11
833:              xor          a5, s1, gp
                  blt          t6, s0, 853f
                  addi         s3, s1, -1432
                  lui          t5, 431510
837:              bne          a4, a0, 843f
                  or           s9, s5, t5
                  blt          s4, sp, 844f
                  slli         gp, t6, 17
                  addi         s8, s1, -1273
                  xor          t1, s9, s6
843:              bne          s4, s5, 856f
844:              slti         a0, a3, 1953
                  addi         t0, s6, 735
                  srl          a5, t4, s6
                  bltu         ra, t2, 866f
                  add          s4, s11, ra
                  slti         s2, gp, 1141
                  add          s4, s11, a3
                  bgeu         a5, s11, 861f
                  ori          t3, gp, 654
853:              slli         tp, a5, 11
                  sll          gp, s7, t6
                  nop
856:              sltu         s7, a4, a2
                  add          t1, s7, s2
                  bgeu         a4, s2, 874f
                  bge          s10, t3, 878f
                  bltu         s5, t5, 877f
861:              slli         a7, a3, 19
                  sltu         t4, s1, tp
                  xor          t3, s7, a0
                  blt          tp, t3, 870f
                  xori         a2, t0, 1704
866:              and          t1, a3, s3
                  srl          gp, t5, t3
                  srl          a2, s10, a1
                  sltu         a4, s2, a1
870:              add          tp, s8, s10
                  bgeu         s3, a2, 880f
                  sra          zero, a2, a4
                  sra          t0, s9, s8
874:              srl          tp, a3, a5
                  blt          s3, gp, 883f
                  bge          s3, a7, 894f
877:              beq          sp, s1, 884f
878:              addi         s10, s3, 971
                  bltu         tp, s1, 892f
880:              beq          a2, gp, 900f
                  bltu         s10, a6, 900f
                  srli         s2, s9, 2
883:              blt          t6, a2, 886f
884:              sltiu        ra, t3, -1930
                  addi         tp, s11, 1425
886:              sltu         s1, zero, s5
                  add          a7, a6, a0
                  bgeu         s4, t1, 897f
                  sra          a7, tp, s6
                  or           t0, s4, s3
                  nop
892:              sltu         s9, a4, a4
                  sltu         t1, s4, a7
894:              blt          zero, s2, 905f
                  or           gp, s6, s1
                  lui          s1, 403196
897:              or           s8, s10, t3
                  auipc        a1, 160862
                  bltu         s3, a6, 908f
900:              bgeu         s9, a4, 912f
                  bne          t0, a5, 913f
                  andi         s9, s10, 1471
                  addi         t1, t5, 1791
                  slti         a7, t3, 1595
                  la           s11, region_0+1138 #start riscv_load_store_rand_instr_stream_7
                  lbu          ra, -13(s11)
                  lh           s7, 16(s11)
                  sll          t5, s11, s1
                  xor          a0, t1, a0
                  lbu          t4, -15(s11)
                  ori          ra, gp, -1254
                  sb           t2, -1(s11)
                  or           s6, a7, zero
                  lbu          a5, -5(s11)
                  lb           t3, -13(s11)
                  slt          a5, t0, s11
                  sh           s11, -14(s11)
                  ori          s8, t1, 1760
                  lbu          a5, -5(s11)
                  sra          t0, s2, ra
                  srl          a7, a0, s3
                  sltiu        s1, s6, 1712
                  xor          s10, s8, a4
                  sltiu        t4, ra, -317
                  sltu         a1, s4, s0
                  srl          t5, a3, a5
                  lh           s0, 4(s11)
                  lbu          zero, 12(s11)
                  slli         a0, gp, 12
                  slli         s4, t5, 16
                  addi         t1, zero, 375
                  and          gp, a7, t3
                  sb           tp, 4(s11)
                  lb           a2, 15(s11)
                  sub          t1, s3, s10
                  lhu          a2, 12(s11)
                  lbu          a4, -6(s11)
                  nop
                  lb           t2, -9(s11)
                  auipc        zero, 835694
                  lhu          a6, -6(s11)
                  lb           s9, 10(s11)
                  slli         s8, a1, 23
                  lbu          a1, -9(s11)
                  and          a6, s6, t6
                  andi         gp, ra, 738
                  auipc        s10, 912988
                  and          t2, ra, t4
                  auipc        s3, 788390
                  sub          s1, s1, tp
                  lh           s9, -16(s11)
                  sb           a3, 10(s11)
                  lui          t1, 123454
                  auipc        s1, 524343
                  sb           t3, 15(s11) #end riscv_load_store_rand_instr_stream_7
905:              lui          s6, 806656
                  slt          a6, s3, a3
                  nop
908:              srl          t4, s3, s3
                  sll          ra, a5, a2
                  add          t4, gp, ra
                  bge          s0, t4, 931f
912:              nop
913:              sra          t5, a2, a1
                  xori         s8, a5, 880
                  sltu         a4, s1, t3
                  xori         a4, s8, -55
                  xor          s10, zero, gp
                  slt          t0, a0, s9
                  or           t3, s5, s5
                  sub          s11, s8, t6
                  srli         ra, a7, 16
                  sra          a4, s4, t4
                  or           t0, sp, sp
                  add          t0, a7, t3
                  beq          a5, s4, 940f
                  and          s9, t1, gp
                  or           s11, s3, t2
                  or           s6, t0, t5
                  sub          t5, s6, s7
                  srl          s7, t3, s0
                  sll          t0, a5, sp
sub_7_j10:        jal          ra, sub_9 #jump sub_7 -> sub_9
                  sub          s6, a3, s3
                  srli         a3, t5, 16
                  sra          s10, s6, a6
                  andi         s0, gp, 729
931:              xori         s1, a5, -1914
                  srli         a4, s4, 7
                  bgeu         s7, t3, 949f
                  auipc        t0, 95370
                  sra          t2, sp, a2
                  bltu         s2, a4, 940f
                  srli         s0, t0, 13
                  bne          tp, s1, 946f
                  lui          a2, 457301
940:              andi         t4, t2, 1735
                  and          s11, s11, a1
                  sra          t2, t3, s2
                  slt          a3, s11, s10
                  xor          s4, s3, s3
                  and          s7, s9, sp
946:              srai         zero, a2, 18
                  sub          t2, a5, t6
                  slt          ra, zero, a4
949:              or           zero, s5, ra
                  add          ra, sp, s7
                  bne          a6, a3, 965f
                  ori          s6, ra, -924
                  andi         a2, s11, -548
                  ori          zero, t3, -1206
                  bltu         s2, s2, 961f
                  blt          tp, s1, 971f
                  slti         t1, s9, 195
                  sltiu        s10, s8, -762
                  xor          a2, t4, s7
                  sltiu        s8, s8, 809
961:              bge          s1, t2, 973f
                  beq          t5, s8, 973f
                  sltiu        t1, a2, 247
                  nop
965:              bne          s7, s11, 975f
                  add          a6, a1, s5
                  auipc        s2, 751268
                  lui          s6, 720717
                  sll          gp, tp, t2
                  auipc        s6, 642660
971:              xor          s8, s0, t3
                  addi         s9, a3, -998
973:              slt          s10, a5, t3
                  srai         s10, a4, 21
975:              srl          a2, s8, a2
                  bne          zero, t2, 981f
                  sra          t0, a0, s0
                  srli         s9, s7, 31
                  slt          a7, tp, a7
                  ori          a2, s2, -1150
981:              and          t2, a1, a0
                  xor          s1, a5, s11
                  slli         a1, a5, 8
                  srli         s9, a0, 31
                  auipc        s10, 918721
                  sltu         a3, s10, a3
                  xor          t5, a0, a3
                  bge          s2, sp, 997f
                  srl          s11, a7, t3
                  lui          s8, 239109
                  slli         t2, s6, 7
                  sll          s9, s7, s9
                  srai         t4, a0, 3
                  sltu         ra, tp, t3
                  andi         a3, t2, -1240
                  auipc        t0, 17048
997:              slt          a2, sp, gp
                  sltu         a2, s3, t0
                  nop
                  nop
                  sub          t3, s6, a4
                  srli         a4, t2, 25
                  xor          tp, a5, s5
                  andi         a3, a7, 466
                  and          a0, t4, s5
                  nop
                  blt          a4, t2, 1026f
                  sltu         s10, a6, a5
                  nop
                  addi         a3, s8, -1378
                  sltiu        t3, a7, 1684
                  xori         s7, a6, 666
                  sra          t3, a5, s8
                  bgeu         s11, ra, 1033f
                  lui          a2, 153508
                  bge          t1, a1, 1033f
                  nop
                  bgeu         a4, s4, 1024f
                  bgeu         s9, t0, 1038f
                  srai         a5, a1, 24
                  and          a0, s1, s5
                  andi         t4, s3, 176
                  or           tp, s4, s0
1024:             bne          s10, a5, 1040f
                  auipc        s0, 919930
1026:             srl          s6, a4, s7
                  sub          t5, a7, t0
                  srl          t3, t0, t6
                  addi         s2, sp, 740
                  sll          t2, s11, s1
                  srai         t2, s0, 10
                  blt          s6, s2, 1039f
1033:             blt          t3, a2, 1046f
                  sll          s0, a4, a5
                  add          t3, a5, t2
                  andi         a0, s8, -937
                  xor          a1, t4, s7
1038:             sra          tp, zero, t6
1039:             bne          s6, a3, 1046f
1040:             sub          s10, t1, t5
                  lui          a2, 574832
                  andi         a1, zero, 1246
                  bne          s6, s5, 1046f
                  bge          s9, gp, 1046f
                  ori          s7, s3, -400
1046:             srl          a7, a7, s1
                  nop
                  and          a3, s1, tp
                  lw           ra, 4(s5)
                  or           t0, s7, s6
                  srl          s3, gp, s0
                  or           t2, t3, sp
                  lui          s10, 940332
                  addi         s5, s5, 24
                  sub          s8, s3, t0
                  sra          s4, s11, ra
                  auipc        tp, 45629
                  or           t2, s3, a5
1412:             addi x11, x1, 1
1412:             jalr x11, x11, 0
sub_1:            bne          gp, a2, sub_1_stack_p
sub_1_stack_p:    addi         s5, s5, -36
                  sltu         s0, s6, t5
                  sw           ra, 4(s5)
                  andi         s4, s10, 1715
                  sub          t3, s11, s6
                  sltiu        s3, a0, 871
                  sll          t1, s4, a1
                  lui          a7, 81209
                  auipc        a2, 678155
                  bgeu         a2, t6, sub_1_j3 #branch to jump instr
                  slt          a0, a5, a7
                  slt          t2, s11, s10
                  lui          gp, 163362
                  xori         s10, sp, 971
                  sra          s7, s10, s4
                  sltu         t2, s7, t5
sub_1_j3:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  la           a2, sub_2
                  or           t0, t2, t3
                  add          s4, zero, s8
                  addi         a2, a2, 407
                  srai         ra, s6, 15
                  sltiu        ra, a6, -861
                  slti         ra, s2, 1759
sub_1_j4:         jalr         ra, a2, -406 #jump sub_1 -> sub_2
                  sltiu        t3, t6, -476
                  add          zero, gp, t1
                  lui          a5, 272824
                  blt          s5, s11, 21f
                  sltu         t3, t2, s11
                  srai         a6, s10, 22
                  bgeu         a1, a1, 20f
                  bne          a7, t6, 17f
                  bne          a4, s11, 21f
                  lui          a7, 152280
                  bge          t2, s11, 21f
                  auipc        t4, 50179
                  srli         s8, zero, 10
                  slli         a7, s7, 5
                  slt          a6, s9, s4
                  nop
                  ori          a5, gp, -580
17:               sub          t4, tp, t0
                  sub          tp, s7, s4
                  addi         t0, t0, 1170
20:               or           t3, a5, t5
21:               auipc        a6, 303886
                  slti         zero, s2, 1798
                  sltu         a6, s1, s2
                  and          s3, t4, a0
                  slti         a0, tp, -353
                  srl          gp, s11, s0
                  sltu         s2, s1, a6
                  lw           ra, 4(s5)
                  addi         s5, s5, 36
                  andi         s7, a1, -148
                  or           t5, s8, t2
                  slli         a6, t6, 23
                  sll          a7, s11, a0
60:               addi x25, x1, 0
60:               jalr x25, x25, 0
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
.align           2
mtvec_handler:    
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x31, x21, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x20, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x20, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x20, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x20, x11, ecall_handler
                  li x11, 0x1
                  beq x20, x11, instr_fault_handler
                  li x11, 0x5
                  beq x20, x11, load_fault_handler
                  li x11, 0x7
                  beq x20, x11, store_fault_handler
                  li x11, 0xc
                  beq x20, x11, pt_fault_handler
                  li x11, 0xd
                  beq x20, x11, pt_fault_handler
                  li x11, 0xf
                  beq x20, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x21, x31, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
