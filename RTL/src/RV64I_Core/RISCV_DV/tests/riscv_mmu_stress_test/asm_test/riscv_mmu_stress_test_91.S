.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
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
                  li x0, 0xf5b184d6
                  li x1, 0x3b98916a
                  li x2, 0x80000000
                  li x3, 0xf8475330
                  li x4, 0xf64d2ed7
                  li x5, 0x80000000
                  li x6, 0x599072bd
                  li x7, 0xff8ef915
                  li x8, 0x0
                  li x9, 0x80000000
                  li x11, 0x7fe01ea9
                  li x12, 0x1
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xa45ca87a
                  li x18, 0xc8f4b696
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0xfc7c4887
                  li x24, 0x0
                  li x25, 0x399600cf
                  li x26, 0x52b92a6d
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xf3713be5
                  li x30, 0x0
                  li x31, 0xf
                  la x23, user_stack_end
main:             la           gp, region_1+581 #start riscv_load_store_hazard_instr_stream_0
                  lhu          t5, -189(gp)
                  sb           s8, -190(gp)
                  lbu          t5, -190(gp)
                  nop
                  sb           s8, -190(gp)
                  lb           s0, -190(gp)
                  auipc        s2, 479990
                  sb           a3, -190(gp)
                  lbu          ra, -190(gp)
                  lb           s1, -190(gp)
                  lb           s3, -190(gp)
                  sll          ra, a5, s6
                  sb           s8, -190(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           t3, region_0+166 #start load_store_instr_stream_0
                  la           s9, region_0+166 #start load_store_instr_stream_1
                  lbu          t2, -6(t3)
                  lbu          t4, 1454(s9)
                  lw           s10, 6(t3)
                  lb           a6, -57(s9)
                  lb           sp, 878(s9)
                  sb           s8, 1678(s9)
                  lb           ra, -69(s9)
                  lb           a4, -4(t3)
                  lbu          ra, -156(s9)
                  lb           a6, 7(t3)
                  lbu          tp, 657(s9)
                  sw           s6, 2(t3)
                  lb           t6, 7(t3)
                  lbu          zero, 882(s9) #end load_store_instr_stream_1
                  lbu          s0, -15(t3) #end load_store_instr_stream_0
                  auipc        s0, 26937
                  xor          s9, tp, s7
                  bltu         s1, a0, 13f
                  bgeu         s11, s8, 18f
                  bge          a3, a1, 6f
                  slt          s4, gp, s8
6:                srai         s5, s11, 19
                  srai         sp, a2, 17
                  lui          a5, 321463
                  slt          ra, a6, s2
                  ori          t4, s0, 251
                  or           tp, s6, ra
                  bne          s2, s3, 19f
13:               sra          zero, a5, t1
                  slt          sp, s9, t0
                  addi         s0, a5, -1990
                  slti         a2, a3, 275
                  and          s4, a6, ra
18:               addi         sp, s11, -1007
19:               blt          a0, a7, 23f
                  sltiu        t6, ra, 1316
                  blt          t0, ra, 35f
                  beq          a6, a6, 24f
23:               ori          a6, gp, -1731
24:               blt          s8, a5, 31f
                  bltu         t6, t4, 34f
                  sra          gp, a1, s3
                  bltu         a2, t2, 41f
                  beq          a4, s2, 33f
                  bgeu         s4, t6, 46f
                  beq          s9, t2, 45f
31:               blt          a7, zero, 34f
                  sltiu        a2, s10, -1166
33:               sra          t2, a0, a4
34:               andi         t3, sp, -1525
35:               slti         s4, t6, 1783
                  sltu         s6, a4, s4
                  bge          s11, s10, 53f
                  sra          s2, t1, t0
                  auipc        a1, 506272
                  sll          a2, s10, gp
41:               or           zero, s6, a4
                  srli         t4, a6, 30
                  sll          gp, s6, sp
                  beq          s7, s6, 58f
45:               blt          tp, a1, 62f
46:               lui          t5, 304724
                  sub          s4, gp, a6
                  slt          a1, s0, a1
                  sltu         a2, ra, s3
                  or           t5, a7, a2
                  ori          t2, a0, -1927
                  bltu         a4, ra, 65f
53:               sub          s9, a1, a0
                  slli         s1, a0, 12
                  ori          sp, zero, 865
                  auipc        s9, 377308
                  bne          t1, ra, 64f
58:               sll          a4, sp, s3
                  xori         gp, s0, 1768
                  sub          s10, t5, s9
                  slti         t1, a2, 1033
62:               ori          a4, s10, 1443
                  bge          zero, zero, 77f
64:               xori         t1, a6, 477
65:               beq          t6, s3, 70f
                  srai         t6, t2, 14
                  and          s0, t0, s0
                  bge          t1, s1, 71f
                  xori         s11, s4, 447
70:               srli         s1, ra, 31
71:               bltu         a0, s0, 83f
                  or           s4, a0, t1
                  bne          s4, t2, 76f
                  srai         s4, t3, 28
                  nop
76:               slt          s6, sp, a1
77:               or           t6, s2, s1
                  nop
                  srl          a3, a2, s4
                  andi         s5, s10, 71
                  bgeu         zero, t3, 92f
                  xor          s1, a7, a0
83:               slli         s9, s2, 12
                  beq          s7, s1, 101f
                  la           t1, region_0+899 #start riscv_load_store_rand_instr_stream_0
                  srl          t3, a6, s7
                  sb           a0, 634(t1)
                  sb           s2, 436(t1)
                  lbu          a3, 559(t1)
                  sb           s3, 574(t1)
                  lbu          a2, -384(t1)
                  srli         t6, sp, 19
                  sb           ra, -799(t1)
                  lbu          a4, 432(t1)
                  lbu          s9, -586(t1)
                  lb           sp, 716(t1)
                  lb           t2, 901(t1)
                  sb           s9, -89(t1)
                  lb           a2, 952(t1)
                  andi         tp, s0, 1934
                  and          s4, t1, t4
                  lbu          s0, -332(t1)
                  lbu          s9, -623(t1)
                  lbu          zero, -309(t1)
                  lh           a7, 921(t1)
                  lhu          t5, 223(t1)
                  lbu          sp, -782(t1)
                  sh           t4, 231(t1)
                  lw           s11, 445(t1)
                  lbu          s1, 1003(t1)
                  addi         t3, a3, 266
                  lb           t4, 304(t1)
                  sb           s1, 322(t1)
                  sh           ra, -479(t1)
                  ori          a2, ra, 930
                  and          s1, t6, a2
                  lh           a3, 615(t1)
                  sb           tp, 403(t1)
                  sb           s7, -699(t1)
                  slti         a6, ra, 1866
                  sra          s10, s9, t6
                  and          t6, t6, a4
                  lbu          a4, 254(t1)
                  lh           a5, 783(t1) #end riscv_load_store_rand_instr_stream_0
                  xor          a2, a6, s1
                  bge          tp, t0, 87f
87:               srli         t6, s7, 30
                  ori          gp, t4, -1419
                  bge          tp, s8, 102f
                  slti         sp, s10, 1054
                  srai         t4, a4, 19
92:               bne          t0, a1, 93f
93:               slt          sp, t3, t6
                  bltu         tp, s9, 95f
95:               sltu         ra, s0, a6
                  bne          s2, t6, 99f
                  beq          tp, a2, 108f
                  and          a6, tp, tp
99:               bne          a4, a5, 102f
                  sltu         t4, t4, a2
101:              lui          sp, 359127
102:              srl          t6, a5, s4
                  slti         sp, s1, 1833
                  slti         a1, s8, 1857
                  lui          zero, 595816
                  xor          zero, t4, s9
                  addi         s8, zero, -252
108:              srli         s2, t1, 22
                  sltiu        t5, s4, 1691
                  xor          tp, s3, s2
                  auipc        s9, 540880
                  xori         s5, t4, -1668
                  auipc        a5, 959028
                  or           s9, s8, s8
                  sltu         s9, s6, a1
                  slli         gp, s5, 18
                  xor          t1, t5, s2
                  lui          s8, 656841
                  andi         s4, a1, -482
                  srai         a5, a6, 13
                  slti         t2, gp, -1420
                  slt          a7, zero, sp
                  srl          a1, t0, t5
                  slt          t1, s6, a7
                  sltu         t2, t5, zero
                  andi         a4, t2, -1868
                  srai         t6, s9, 25
                  lui          zero, 379449
                  slt          a2, t1, t5
                  and          a3, a7, a2
                  srli         a1, s7, 7
                  bgeu         a5, sp, 139f
                  and          a7, a5, a2
                  bgeu         a2, sp, 135f
135:              sltiu        a6, t1, -674
                  srl          t5, a2, t2
                  ori          s11, s9, -62
                  or           s11, a1, s11
139:              bge          a6, a2, 156f
                  ori          s11, t6, 1816
                  add          s1, t1, a3
                  sub          s5, t6, s0
                  sra          a7, s0, t4
                  beq          a6, a4, 155f
                  beq          s3, tp, 162f
                  srai         a3, t0, 27
                  addi         t2, s5, 32
                  srl          s4, s5, a7
                  bltu         zero, t6, 150f
150:              bge          gp, s9, 162f
                  slti         t1, zero, 678
                  sltu         s5, s7, t0
                  sll          gp, s11, a6
                  bge          a3, s8, 167f
155:              auipc        t6, 507438
156:              sltiu        s2, t0, 1094
                  srai         t1, a3, 8
                  nop
                  beq          s10, s8, 176f
                  ori          s4, gp, 16
                  bgeu         s8, t0, 175f
162:              bltu         s2, s0, 175f
                  la           tp, sub_1
                  srl          a6, zero, t2
                  addi         tp, tp, 643
                  or           a6, a5, s9
                  sll          t4, s6, s1
                  slti         a7, sp, -1927
                  sltu         t2, s11, s10
                  bne          s0, s10, main_j1 #branch to jump instr
                  sub          t5, s4, a0
main_j1:          jalr         t1, tp, -643 #jump main -> sub_1
                  or           a5, s0, t4
                  srai         a1, s8, 31
                  sll          tp, s7, s3
                  sra          t6, gp, a3
167:              add          ra, a2, t0
                  sub          tp, s0, a5
                  beq          ra, a1, 171f
                  sub          a5, zero, s9
171:              slt          a2, t5, a6
                  sltiu        a2, s10, -1975
                  srli         a1, t3, 23
                  andi         s1, sp, -1151
175:              sub          t2, ra, a5
176:              sub          a4, s9, a3
                  sra          t3, s0, s0
                  and          a6, t5, s5
                  lui          s4, 975443
                  nop
                  xori         s5, s6, -1263
                  bne          t4, sp, 197f
                  bne          s3, zero, 186f
                  nop
                  auipc        s4, 892882
186:              nop
                  srli         s4, sp, 5
                  xor          s3, s7, t1
                  xor          t4, s5, s11
                  lui          s8, 904977
                  blt          s8, a7, 198f
                  sltiu        ra, s10, -683
                  nop
                  sltiu        s3, s10, 436
                  xor          ra, a0, s1
                  addi         zero, s9, -693
197:              sltiu        t6, s7, 1421
198:              add          t3, a5, t2
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slti         t6, s9, 1205
                  srl          s11, s3, sp
                  bgeu         sp, s6, sub_2_stack_p
                  sra          t5, a0, a6
sub_2_stack_p:    addi         s7, s7, -60
                  sra          s9, t4, s8
                  sltu         a6, gp, t3
                  sw           t1, 4(s7)
                  auipc        a6, 829792
                  sltiu        ra, s0, 1950
                  add          a4, t1, a3
                  srl          a4, gp, a5
                  la           sp, region_0+98 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s0, 623(sp)
                  srl          s4, sp, s0
                  lbu          a3, 623(sp)
                  lbu          t6, 987(sp)
                  sb           a3, 414(sp)
                  lb           t4, 1044(sp)
                  lb           a4, 506(sp)
                  sb           s0, 533(sp)
                  lb           s4, 1308(sp)
                  lbu          t4, 337(sp)
                  sw           t0, 1002(sp)
                  lb           s6, 131(sp)
                  lb           s6, 1763(sp)
                  lb           ra, 532(sp)
                  nop
                  add          a6, s0, s4
                  lh           s0, 1652(sp)
                  sb           a4, 545(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           s0, region_1+1924 #start riscv_load_store_hazard_instr_stream_0
                  lh           a4, -262(s0)
                  sh           s1, -262(s0)
                  lh           a6, -262(s0)
                  lhu          s3, -262(s0)
                  lhu          sp, -262(s0)
                  xori         t4, a2, -1958
                  lh           s9, -1562(s0)
                  nop
                  sh           zero, -1562(s0)
                  lhu          tp, -246(s0)
                  lbu          t5, -246(s0)
                  lbu          s9, -246(s0)
                  sh           a6, -246(s0)
                  sb           s7, -1433(s0)
                  sb           s6, -1433(s0)
                  lbu          a6, -1433(s0)
                  lbu          t3, -1433(s0)
                  lbu          t2, -1433(s0)
                  lb           s9, -1433(s0) #end riscv_load_store_hazard_instr_stream_0
                  la           t6, region_0+435 #start riscv_load_store_rand_instr_stream_0
                  sb           s6, -36(t6)
                  lbu          s0, 2(t6)
                  lbu          a7, -54(t6)
                  sltu         a2, s9, a7
                  lb           s11, 4(t6)
                  slt          s4, a5, a0
                  add          s6, a5, s1
                  auipc        t3, 203985
                  xori         s5, s5, 244
                  sb           t6, -38(t6)
                  sb           s2, 0(t6)
                  lbu          a4, 14(t6)
                  lbu          s2, -35(t6)
                  srai         a1, t4, 13
                  lb           gp, -21(t6)
                  lbu          t4, -13(t6)
                  lbu          s1, 48(t6)
                  xori         a3, ra, 624
                  lb           s6, 53(t6)
                  sb           s9, 0(t6)
                  sb           a6, 54(t6)
                  lhu          a2, -61(t6)
                  lb           s9, 31(t6)
                  sb           s0, -27(t6)
                  lbu          s0, -63(t6)
                  and          s8, a0, s10
                  or           s5, a0, s4
                  andi         t4, s4, -162
                  xori         s3, tp, -333
                  ori          a7, gp, -93
                  srai         s11, a6, 17
                  lb           s10, -3(t6)
                  lb           t5, 62(t6)
                  lh           s4, -59(t6)
                  or           t4, a6, s7
                  sub          t3, s5, a2
                  lh           s5, -33(t6)
                  slli         s0, a4, 6
                  sub          t3, a6, zero
                  lb           s11, -45(t6)
                  sb           a4, 21(t6)
                  lh           s1, -5(t6) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_1+1443 #start load_store_instr_stream_1
                  lb           s8, 2(s2)
                  la           s9, region_1+867 #start load_store_instr_stream_2
                  la           tp, region_1+1639 #start load_store_instr_stream_0
                  sb           s0, -8(tp)
                  sb           s9, 61(s9)
                  lb           s8, 54(s2)
                  sb           a5, 1(tp)
                  lbu          gp, -49(s2)
                  lb           s4, -60(s9)
                  lb           t5, -60(s9)
                  sb           a1, 4(s2)
                  lb           a2, 20(s9)
                  lh           s1, -33(s9)
                  sw           a6, 13(tp)
                  lbu          a4, -64(s2)
                  sh           ra, 45(s9)
                  lbu          s5, -16(s2)
                  lhu          zero, -9(tp)
                  lhu          s3, -51(s2)
                  lhu          ra, -57(s9)
                  sb           t5, 10(tp)
                  lbu          t2, -40(s2)
                  lb           s11, 1(s2)
                  lhu          t5, -3(tp)
                  sh           a7, 35(s9)
                  lhu          s3, -9(tp)
                  lb           a5, -21(s2) #end load_store_instr_stream_1
                  lbu          s10, 18(s9)
                  lbu          t4, 51(s9) #end load_store_instr_stream_2
                  sb           t0, -15(tp) #end load_store_instr_stream_0
                  la           s10, region_0+293 #start riscv_load_store_rand_instr_stream_1
                  sh           t1, -61(s10)
                  srli         sp, s2, 25
                  sltu         s9, s2, zero
                  lbu          s3, -23(s10)
                  sub          s2, t5, t6
                  ori          tp, a3, -445
                  sra          a2, s10, a2
                  srli         t4, s9, 6
                  lbu          a3, -63(s10)
                  xor          gp, a6, zero
                  lbu          s0, 38(s10)
                  nop
                  lbu          t5, -58(s10)
                  sb           t4, -49(s10)
                  sb           a6, -58(s10)
                  lb           ra, -48(s10)
                  addi         t2, a0, -1248
                  add          s1, a1, t2
                  nop
                  lw           a3, -49(s10)
                  sb           a6, 56(s10)
                  sb           s8, -32(s10)
                  nop
                  sra          t4, s1, s7
                  slti         t5, s10, -1378
                  lbu          s3, 0(s10)
                  sb           s4, 38(s10)
                  sub          zero, s2, s3
                  sb           a2, 18(s10) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_1+974 #start load_store_instr_stream_0
                  lb           tp, -2(t4)
                  la           s8, region_1+458 #start load_store_instr_stream_1
                  lbu          s6, 9(s8)
                  lb           gp, 5(t4)
                  sh           s9, -16(s8)
                  sb           t5, 11(t4)
                  lh           s2, -14(t4)
                  lb           gp, -11(s8)
                  sh           a5, -2(t4)
                  lbu          gp, 15(t4)
                  sb           s5, -15(s8)
                  lb           a1, -6(s8) #end load_store_instr_stream_1
                  lbu          a3, 3(t4)
                  sb           t4, 5(t4) #end load_store_instr_stream_0
                  sltiu        a1, sp, -769
                  bne          a1, a0, 5f
                  or           s3, a6, t1
                  bne          t4, s7, 5f
                  slt          s1, t4, s0
5:                slli         t6, s2, 18
                  andi         t4, t4, -755
                  or           s3, s10, a4
                  xor          s4, a3, a2
                  srl          a3, s5, a7
                  slt          s0, s3, s2
                  srai         zero, s8, 3
                  beq          tp, s0, 26f
                  ori          t1, s5, -1525
                  sltu         s1, s6, s3
                  bltu         t3, s8, 29f
                  xori         s0, t2, 135
                  slli         a4, s1, 3
                  bge          s4, tp, 34f
                  xori         a3, a4, -1815
                  sra          sp, a5, t4
                  srl          s0, t1, a2
                  bgeu         a2, a2, 42f
                  sll          s11, s2, t3
                  xor          s1, s6, s7
                  lui          a6, 523482
26:               slli         a6, s11, 7
                  ori          a4, t2, 422
                  bltu         t0, t0, 48f
29:               slt          s2, s8, a1
                  add          a1, a3, t4
                  add          gp, s2, a7
                  and          gp, s8, s11
                  and          a6, a5, a1
34:               sub          s3, t2, t0
                  bltu         s4, s7, 49f
                  and          s1, a7, s7
                  andi         a7, s5, -804
                  xori         a7, s10, 204
                  srai         ra, s10, 21
                  andi         s9, s1, -942
                  add          a6, t6, t4
42:               xori         s3, t6, 1212
                  sub          t5, ra, t6
                  slt          s9, a0, tp
                  auipc        gp, 557294
                  xori         s8, t3, -115
                  slti         s0, gp, 1791
48:               blt          ra, a0, 63f
49:               blt          tp, t0, 64f
                  slli         s9, a5, 17
                  or           ra, s3, a2
                  auipc        a6, 760443
                  and          s5, s4, s3
                  add          s11, a3, s8
                  sltu         s11, s6, t0
                  ori          s11, a7, -855
                  blt          a5, s10, 65f
                  bge          zero, a1, 60f
                  sltiu        s1, t3, -1611
60:               beq          a0, s7, 71f
                  xori         s1, t4, 673
                  andi         sp, s2, 592
63:               srli         s10, t0, 2
64:               or           tp, ra, s4
65:               bne          s4, s8, 70f
                  blt          ra, a6, 79f
                  bge          s1, a0, 68f
68:               ori          gp, t2, 1023
                  or           ra, a0, a4
70:               auipc        a1, 516600
71:               bne          a1, a7, 82f
                  xor          s4, s0, s7
                  srli         s10, ra, 14
                  bltu         s5, t4, 90f
                  bgeu         s0, t0, 90f
                  slli         t5, a7, 18
                  ori          s3, a6, -342
                  nop
79:               addi         s1, s1, -548
                  auipc        t1, 418350
                  sub          s2, t1, s4
82:               auipc        s0, 362632
                  slli         s4, t5, 13
                  slli         s10, a5, 6
                  blt          a7, s11, 92f
                  nop
                  sltu         a7, s8, s5
                  nop
                  lui          s0, 560115
90:               add          s4, sp, s8
                  bne          s2, s11, 110f
92:               nop
                  slti         a2, a2, 72
                  sll          ra, t4, s10
                  addi         s1, t6, 1828
                  sll          a7, a7, s10
                  blt          a1, a5, 106f
                  or           a2, s3, sp
                  auipc        s3, 1001132
                  sra          a6, a4, tp
                  xor          gp, a7, s0
                  sltiu        a2, gp, 2007
                  bltu         a4, a4, 107f
                  andi         zero, s5, -317
                  slt          gp, t5, s3
106:              bge          t3, tp, 126f
107:              slli         s4, a2, 23
                  bgeu         a5, s1, 128f
                  addi         s6, s0, 944
110:              sub          tp, s0, a5
                  and          t4, a6, s9
                  nop
                  bgeu         gp, a4, 128f
                  nop
                  bltu         t1, gp, 134f
                  slt          s9, t3, gp
                  srl          t4, s5, a2
                  slt          t2, a7, t3
                  sll          a6, s9, s2
                  sltu         a5, s9, a6
                  sltiu        t3, a7, -8
                  slti         t6, t1, -405
                  ori          t1, s8, -1012
                  sll          a3, t6, s9
                  slti         gp, a3, 601
126:              ori          a3, s1, -1271
                  bgeu         gp, sp, 145f
128:              srl          a3, ra, a0
                  bge          s7, tp, 145f
                  srai         s5, gp, 14
                  slli         s6, s7, 24
                  and          sp, s4, s10
                  slli         s3, gp, 19
134:              auipc        a7, 311865
                  ori          s4, s1, 1401
                  slti         a5, gp, 1877
                  sltiu        a1, a6, 761
                  sra          t6, s2, s1
                  add          s4, a2, tp
                  srai         zero, s8, 0
                  sra          gp, a3, zero
                  or           a3, a2, s8
                  addi         t2, s0, 271
                  bge          gp, s11, 158f
145:              bgeu         t4, s10, 161f
                  nop
                  beq          tp, a1, 160f
                  sltu         s5, zero, s4
                  andi         a1, s7, 1302
                  bgeu         t6, s6, 170f
                  addi         s0, a1, 240
                  add          a4, a2, s9
                  bgeu         gp, gp, 169f
                  add          a5, t2, s2
                  nop
                  ori          a1, t4, 769
                  srl          s8, a2, a4
158:              slti         a4, t1, 1684
                  bltu         a3, s5, 163f
160:              add          s1, a6, s5
161:              nop
                  slti         a6, s2, 589
163:              bltu         s5, t2, 177f
                  slti         t6, s2, 57
                  sub          a6, a3, a5
                  and          t5, s5, s2
                  add          s1, s0, s10
                  sltiu        t6, s4, -626
169:              xor          t6, a6, a6
170:              blt          zero, a4, 184f
                  sra          s6, s0, s3
                  bge          s1, a5, 187f
                  auipc        s10, 285446
                  bltu         s10, tp, 185f
                  bne          s2, s8, 183f
                  xori         s1, tp, 1432
177:              or           t2, tp, t0
                  bgeu         sp, s1, 197f
                  sll          s4, sp, s1
                  auipc        t4, 924242
                  srl          s10, zero, a0
                  or           a3, ra, a5
183:              srl          t1, t2, s2
184:              srai         t5, zero, 8
185:              andi         ra, s4, 1079
                  slli         s2, s0, 31
187:              sll          zero, t4, a4
                  bge          s5, gp, 192f
                  slt          s2, a4, a4
                  srli         a3, s11, 13
                  add          s0, a4, a6
192:              bltu         s6, ra, 206f
                  auipc        zero, 107492
                  and          t4, s7, s8
                  auipc        s2, 345865
                  sub          s11, t5, t2
197:              sll          s2, tp, a3
                  sltu         t3, s8, a4
                  sltu         sp, a4, a4
                  sltiu        s2, a2, 1588
                  nop
                  beq          s0, zero, 204f
                  xor          s5, a5, s1
204:              nop
                  srai         a3, gp, 14
206:              blt          s8, gp, 226f
                  srai         ra, a4, 29
                  srai         s8, s7, 15
                  srli         a3, a7, 6
                  xori         a1, s8, -1430
                  sra          a4, s3, s5
                  blt          tp, s2, 226f
                  slt          s2, a6, t0
                  beq          s6, a0, 232f
                  bge          ra, s9, 222f
                  and          ra, t6, t1
                  srl          gp, t5, gp
                  slli         s1, t3, 12
                  blt          s10, t5, 234f
                  add          s9, a6, s6
                  or           t3, a0, t1
222:              add          s1, s1, a7
                  auipc        t3, 340150
                  or           t2, s10, a4
                  srl          s4, a2, s9
226:              slti         a7, ra, -1709
                  or           a1, s5, t3
                  sll          a4, tp, s8
                  slt          a3, s11, a7
                  slt          s8, gp, sp
                  bgeu         s0, a6, 240f
232:              add          gp, s10, a6
                  bge          s1, s0, 248f
234:              slt          s11, s6, s8
                  bne          s8, s3, 237f
                  blt          a0, s9, 250f
237:              sll          gp, sp, sp
                  srai         a2, s3, 25
                  slli         t6, sp, 5
240:              bgeu         a1, a1, 250f
                  xor          a6, s11, t6
                  xori         s5, s3, 1558
                  srl          a7, t4, a4
                  ori          sp, zero, -349
                  beq          s1, a2, 250f
                  sltu         t4, s11, t1
                  xor          gp, t1, s3
248:              bge          a2, t2, 250f
                  auipc        t2, 60686
250:              nop
                  sltu         a7, t0, t3
                  or           s5, s6, a0
                  andi         a4, s6, -1818
                  srai         s3, a5, 0
                  srli         s11, a6, 23
                  srai         s10, s8, 24
                  ori          a2, sp, 751
                  lw           t1, 4(s7)
                  andi         s4, a7, 45
                  srli         s10, a1, 7
                  addi         s7, s7, 60
                  sra          s8, a7, ra
433:              addi x25, x6, 1
433:              jalr x25, x25, 0
sub_1:            addi         s7, s7, -64
                  nop
                  sltu         s8, a3, t4
                  sltiu        a1, a4, -795
                  sw           t1, 4(s7)
                  sra          zero, t5, a5
                  slti         a6, t0, -830
                  la           ra, sub_2
                  sltu         a7, s1, t1
                  addi         ra, ra, 78
                  srl          zero, s7, s0
                  slli         s5, t0, 19
                  nop
                  and          a2, a3, s5
                  ori          a5, s8, 1453
                  slti         t6, s0, -1327
sub_1_j2:         jalr         t1, ra, -78 #jump sub_1 -> sub_2
                  la           sp, region_0+743 #start riscv_load_store_hazard_instr_stream_1
                  lb           s4, 12(sp)
                  lb           s8, 12(sp)
                  lb           s6, 12(sp)
                  xori         a7, ra, 248
                  sb           s0, 12(sp)
                  sb           a2, 12(sp)
                  lbu          a6, 12(sp)
                  sh           s5, 11(sp)
                  sll          s3, zero, a5
                  slli         a1, a6, 22
                  lb           s10, 11(sp)
                  sltiu        t4, zero, -2000
                  lbu          s6, 11(sp)
                  andi         a7, a1, -1761
                  sltiu        ra, t4, 1389
                  sb           a5, -15(sp)
                  nop
                  lh           a5, -15(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a6, region_1+1349 #start riscv_load_store_hazard_instr_stream_3
                  lbu          t5, -28(a6)
                  slt          gp, s11, s0
                  slt          s10, sp, s9
                  sb           s9, -28(a6)
                  sb           zero, -28(a6)
                  lbu          s11, -56(a6)
                  or           gp, s7, ra
                  lbu          t3, -56(a6)
                  lbu          s8, -56(a6)
                  lbu          s11, -56(a6)
                  lbu          t1, -56(a6)
                  lhu          s3, 1(a6)
                  sb           sp, 1(a6)
                  sb           a5, -6(a6)
                  sb           sp, -6(a6) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+4 #start load_store_instr_stream_2
                  la           tp, region_1+1616 #start load_store_instr_stream_1
                  lb           s10, 517(sp)
                  la           t6, region_1+731 #start load_store_instr_stream_0
                  sb           a6, 1319(sp)
                  la           s3, region_1+1631 #start load_store_instr_stream_3
                  sw           a5, 872(sp)
                  lb           t2, -118(s3)
                  sb           ra, 1811(sp)
                  lbu          t2, 358(tp)
                  lbu          s6, -6(t6)
                  lb           s6, 1309(sp)
                  lb           a5, 136(s3)
                  lh           a4, -5(t6)
                  lh           s0, 5(t6)
                  lb           s10, 1241(sp)
                  lbu          a4, -52(s3)
                  sh           t5, 1566(sp)
                  lbu          s8, -4(s3)
                  lb           s0, 193(sp)
                  lw           a2, -99(s3)
                  lb           a7, -1197(tp)
                  sb           s9, -8(t6)
                  lb           s4, -49(tp)
                  lb           t2, -503(tp)
                  lbu          a4, -14(t6)
                  lbu          s1, 587(sp)
                  lhu          s8, 120(sp) #end load_store_instr_stream_2
                  sb           tp, 169(s3)
                  sh           sp, -103(s3) #end load_store_instr_stream_3
                  sh           a6, -1144(tp) #end load_store_instr_stream_1
                  sb           s2, 10(t6) #end load_store_instr_stream_0
                  la           tp, region_0+910 #start riscv_load_store_hazard_instr_stream_0
                  lhu          s0, -202(tp)
                  add          s3, s5, s3
                  lh           sp, -202(tp)
                  lhu          s2, -202(tp)
                  lw           s2, -202(tp)
                  lbu          s4, -202(tp)
                  sh           sp, -202(tp)
                  lhu          t4, -202(tp)
                  srli         s1, s6, 13
                  lhu          a6, -202(tp)
                  lbu          s11, -202(tp)
                  lhu          zero, -202(tp)
                  lw           s3, -202(tp)
                  lh           a3, -202(tp)
                  sw           s8, -202(tp)
                  sh           s8, -202(tp)
                  lbu          t2, -202(tp)
                  and          sp, s4, a4
                  xori         sp, gp, 102
                  sw           s9, -202(tp)
                  lbu          t1, -202(tp) #end riscv_load_store_hazard_instr_stream_0
                  la           a5, region_1+745 #start riscv_load_store_hazard_instr_stream_2
                  sb           a5, -7(a5)
                  sb           s10, -12(a5)
                  lbu          a6, -17(a5)
                  lb           t4, 32(a5)
                  lw           s3, -17(a5)
                  lhu          a3, -17(a5)
                  lbu          s10, -1(a5)
                  lb           a6, -32(a5)
                  lb           s8, -58(a5)
                  lbu          s8, -36(a5)
                  lb           a1, 58(a5)
                  lb           a7, -14(a5)
                  lb           s6, 12(a5)
                  sb           s10, 12(a5)
                  auipc        a1, 48276
                  lbu          s5, 12(a5)
                  slt          s3, ra, s1
                  lb           t6, -16(a5)
                  lbu          s11, -16(a5)
                  sh           t6, -33(a5) #end riscv_load_store_hazard_instr_stream_2
                  la           s1, region_1+1238 #start riscv_load_store_rand_instr_stream_0
                  addi         s3, s0, -1947
                  sb           ra, -8(s1)
                  sub          t4, s0, s7
                  sb           a6, 11(s1)
                  andi         t5, s7, 197
                  sb           s7, 0(s1)
                  srli         s9, t5, 22
                  sb           a0, -15(s1)
                  lb           a7, 5(s1)
                  sltu         gp, a3, t5
                  xor          sp, s8, t0
                  lbu          a6, 15(s1)
                  sb           a0, -5(s1)
                  and          a4, t4, t6
                  xori         s6, a6, -165
                  lbu          s8, 15(s1)
                  lw           s4, 2(s1)
                  srai         zero, a1, 22
                  lbu          tp, -15(s1)
                  and          t2, a1, s10
                  lbu          s3, -4(s1)
                  sb           t4, 7(s1)
                  sb           a4, 5(s1)
                  nop
                  lbu          s11, 10(s1)
                  sltu         t5, s11, s0
                  or           a1, t4, s7
                  slli         a7, s3, 21
                  lhu          s4, -12(s1)
                  sh           a1, 12(s1)
                  lb           s11, 13(s1)
                  lbu          s10, -15(s1)
                  sb           t3, 5(s1)
                  lbu          s3, -10(s1)
                  sra          s3, ra, s6
                  sll          t3, s4, a2
                  lb           sp, -5(s1)
                  lui          a4, 338000
                  xori         a1, s9, 1428
                  srai         t4, a6, 7
                  lbu          t2, -3(s1)
                  slli         a2, zero, 11
                  xor          s2, s4, s0
                  sb           a5, -2(s1)
                  sltu         sp, sp, s9
                  sw           s7, 2(s1)
                  lb           t2, -4(s1)
                  sb           t6, -2(s1)
                  lhu          sp, -14(s1)
                  sltiu        s9, t0, -907
                  sb           a3, 2(s1)
                  sra          a2, s10, sp
                  lbu          t2, -14(s1)
                  lhu          zero, 4(s1) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_1+1456 #start load_store_instr_stream_1
                  la           a1, region_1+824 #start load_store_instr_stream_0
                  lb           t1, -139(s4)
                  lb           t1, 233(a1)
                  lbu          s3, -197(a1)
                  lbu          a6, 210(a1)
                  lb           t2, 86(s4)
                  lb           s11, 193(a1)
                  sb           s11, 190(a1)
                  lhu          t6, 42(s4)
                  lh           a7, -238(a1)
                  lhu          s11, 242(s4)
                  sh           a0, 194(s4) #end load_store_instr_stream_1
                  lbu          a4, -42(a1)
                  sh           zero, 110(a1) #end load_store_instr_stream_0
                  la           s6, region_1+1804 #start load_store_instr_stream_4
                  la           a7, region_1+492 #start load_store_instr_stream_3
                  la           t2, region_1+87 #start load_store_instr_stream_1
                  sb           zero, 1680(t2)
                  la           t1, region_1+1629 #start load_store_instr_stream_2
                  sb           s1, 1306(t2)
                  lb           s8, 179(s6)
                  sb           s9, 15(a7)
                  sh           t3, 25(t1)
                  la           t5, region_1+488 #start load_store_instr_stream_0
                  lh           a2, 61(t1)
                  sw           zero, -112(s6)
                  lbu          s1, 320(t2)
                  sb           s8, 80(s6)
                  lbu          a2, -2(t1)
                  lb           a5, 26(t1)
                  lb           ra, 18(t1)
                  sb           a2, 11(t5)
                  lbu          s11, -10(t1)
                  sb           t0, 1382(t2)
                  sw           gp, 60(t5)
                  lhu          s4, 134(s6)
                  lbu          s0, 597(t2)
                  lw           a3, 133(t2)
                  lh           s5, -20(t5)
                  lbu          s4, 12(a7)
                  sh           t6, -190(t5)
                  sb           a1, -27(s6)
                  lh           a3, -19(t1)
                  lw           t6, 613(t2)
                  lb           a2, 11(a7)
                  lb           s4, -141(s6)
                  sh           ra, 27(t1) #end load_store_instr_stream_2
                  lh           a1, 569(t2)
                  lbu          a4, -175(t5)
                  lw           t4, 0(a7)
                  sh           t6, -172(s6) #end load_store_instr_stream_4
                  sb           s8, 11(a7) #end load_store_instr_stream_3
                  lb           a2, -94(t5)
                  sb           s9, 704(t2) #end load_store_instr_stream_1
                  lbu          t3, 159(t5) #end load_store_instr_stream_0
                  la           s4, region_1+1931 #start riscv_load_store_rand_instr_stream_1
                  sra          a4, a1, t3
                  sb           tp, -1495(s4)
                  add          s10, a2, t1
                  sra          t3, t0, t5
                  sb           s11, -1110(s4)
                  sltu         s9, a0, a6
                  lb           s0, -276(s4)
                  lb           a7, -950(s4)
                  ori          sp, a2, -62
                  sb           s11, -1359(s4)
                  lbu          s1, -1187(s4)
                  lb           s11, -1854(s4)
                  lbu          s10, -1807(s4)
                  sb           a2, -1642(s4)
                  lb           t5, -856(s4)
                  lbu          t3, -1756(s4)
                  srli         s8, s7, 1
                  sb           a2, -310(s4)
                  lui          t1, 1045214
                  sh           t6, 5(s4)
                  lb           s11, -1408(s4)
                  addi         s2, t1, -50
                  lb           s8, -209(s4)
                  sb           t0, -1708(s4)
                  lhu          s5, -521(s4)
                  srl          s11, s9, s3
                  lb           s6, -809(s4)
                  andi         zero, t4, 1330
                  lui          s11, 1036568
                  lh           a2, -769(s4) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+598 #start riscv_load_store_rand_instr_stream_4
                  lb           s10, 710(s5)
                  lb           gp, 171(s5)
                  slt          a5, a0, t0
                  lbu          ra, 964(s5)
                  lbu          a1, 1284(s5)
                  sb           s9, 643(s5)
                  slti         s6, s2, -826
                  lb           t6, 465(s5)
                  lbu          a4, -401(s5)
                  xori         t4, s10, 1602
                  auipc        t1, 166699
                  lh           s6, 820(s5)
                  lb           s6, 1275(s5)
                  lbu          a4, 1333(s5)
                  lbu          a1, -561(s5)
                  lbu          t2, 637(s5)
                  sb           s1, 252(s5)
                  sb           t4, 401(s5)
                  lb           s2, -451(s5)
                  xori         t2, s9, 178
                  lb           s1, 173(s5)
                  addi         a2, s4, -235
                  sh           t3, 532(s5)
                  sh           gp, 340(s5)
                  lbu          sp, 417(s5)
                  lb           s1, -315(s5)
                  slti         t3, a5, -979
                  andi         a7, a1, 1137
                  sltiu        s3, ra, -426
                  ori          a1, s4, 1838
                  add          t2, s1, a4
                  srl          s1, t4, a0
                  lbu          a2, 1225(s5)
                  srl          s0, gp, s6
                  sh           t3, 860(s5) #end riscv_load_store_rand_instr_stream_4
                  la           tp, region_0+731 #start riscv_load_store_rand_instr_stream_2
                  srli         t4, a7, 29
                  nop
                  and          s3, a6, a0
                  lbu          a4, 26(tp)
                  lbu          s11, -82(tp)
                  and          a3, t3, a0
                  lh           a3, 175(tp)
                  lw           s3, 245(tp)
                  lb           t1, 202(tp)
                  sltiu        s6, a0, -1250
                  lb           a2, 153(tp)
                  lbu          sp, 14(tp)
                  sb           ra, 204(tp)
                  lh           s4, -109(tp)
                  lbu          s9, 123(tp)
                  sw           a1, 73(tp)
                  addi         a2, s6, 478
                  lbu          s3, -144(tp)
                  lh           a7, -227(tp)
                  sltu         a4, a7, ra
                  addi         ra, t3, -59
                  lbu          s9, -142(tp)
                  sb           s6, -216(tp)
                  sb           s4, 72(tp)
                  ori          s3, s8, -2029
                  lbu          s1, 214(tp)
                  srai         t3, s3, 19
                  sh           s2, 87(tp)
                  lbu          t2, 200(tp)
                  sb           s11, 7(tp)
                  ori          a1, t1, -1581
                  lb           a3, 212(tp)
                  sb           s6, 131(tp)
                  sb           s0, 1(tp)
                  sb           a3, 136(tp)
                  sb           s9, 194(tp)
                  lbu          t1, 213(tp) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_0+1009 #start riscv_load_store_rand_instr_stream_3
                  lhu          t3, 55(s4)
                  lbu          t5, 2(s4)
                  lb           a3, -64(s4)
                  lb           a6, -12(s4)
                  sll          a6, s1, s10
                  nop
                  and          a4, a3, a6
                  lbu          s10, 36(s4)
                  sltiu        s11, a4, -1596
                  auipc        t1, 947977
                  sb           s6, -26(s4)
                  slt          s9, tp, a4
                  slli         s0, t3, 27
                  add          s10, t6, gp
                  xori         s9, s5, 1855
                  slt          a5, sp, s6
                  ori          a2, sp, 169
                  sw           s6, -17(s4)
                  sra          a6, s9, t2
                  and          t2, gp, a7
                  ori          t1, a6, -584
                  srai         s6, s4, 20
                  lh           a4, -53(s4)
                  lw           gp, 55(s4)
                  nop
                  lbu          t3, -14(s4)
                  add          s11, ra, s11
                  and          s6, s10, s9
                  srl          a6, gp, s5
                  lbu          a5, -21(s4)
                  slt          s5, a4, s3
                  lb           a6, 18(s4)
                  sb           s0, 26(s4)
                  lbu          s8, -35(s4)
                  lb           s6, -35(s4)
                  sltiu        a1, s10, -1511
                  lbu          s11, -62(s4)
                  srl          s3, a2, t6
                  lbu          a2, 44(s4)
                  srli         a1, s0, 14
                  xor          t3, a5, a0
                  nop
                  sb           s8, 12(s4)
                  sb           t6, -53(s4)
                  xori         a1, t4, 1886
                  lbu          t6, 58(s4)
                  sb           t4, 34(s4)
                  lbu          s6, 44(s4)
                  sb           sp, 23(s4)
                  sw           s2, 15(s4)
                  lhu          s2, 55(s4) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_0+281 #start riscv_load_store_hazard_instr_stream_4
                  sb           s6, -44(tp)
                  add          a2, t3, t1
                  lb           t4, 53(tp)
                  sra          zero, t0, s1
                  sub          t6, s2, s7
                  lb           t5, 53(tp)
                  lh           a6, 53(tp)
                  srai         a1, t4, 10
                  lb           a6, 29(tp)
                  lh           a1, 29(tp)
                  sb           a4, 29(tp)
                  lb           s11, 29(tp)
                  sb           s6, 29(tp)
                  sb           s1, 29(tp)
                  lb           s8, 29(tp)
                  lbu          a3, 29(tp)
                  lh           s8, 29(tp)
                  sh           a1, 29(tp)
                  and          s8, a5, a6
                  lh           s3, 29(tp)
                  sh           s9, 29(tp)
                  lb           a3, 29(tp)
                  srli         t2, a2, 8
                  lhu          s1, 29(tp)
                  lbu          s2, 29(tp) #end riscv_load_store_hazard_instr_stream_4
                  la           s3, region_0+1848 #start load_store_instr_stream_1
                  sb           t0, -1(s3)
                  la           a4, region_0+215 #start load_store_instr_stream_0
                  lbu          a6, 15(s3)
                  lb           a6, 1442(a4)
                  lh           t3, 6(s3)
                  sb           t1, 12(s3)
                  lb           a6, 1172(a4)
                  sb           ra, 10(s3)
                  sb           t6, 5(s3)
                  lb           tp, 0(s3)
                  lbu          s10, 363(a4)
                  sh           s6, 1603(a4)
                  lbu          s9, 285(a4)
                  lb           s8, 9(s3) #end load_store_instr_stream_1
                  lbu          t4, 1492(a4) #end load_store_instr_stream_0
                  lui          s6, 713370
                  blt          zero, s11, 8f
                  sltiu        a3, s6, 778
                  add          a1, t3, s11
                  bltu         a0, s7, 23f
                  lui          s6, 525490
                  bgeu         a2, a4, 13f
                  bgeu         a2, s0, 20f
8:                auipc        a1, 857112
                  and          s1, a6, s11
                  xor          zero, s3, s8
                  sll          s2, a5, t2
                  addi         s8, t2, 1245
13:               slt          t2, s4, s2
                  or           s1, s7, gp
                  and          a6, tp, a7
                  and          s6, s4, s2
                  ori          s4, s1, -1855
                  lui          s2, 964971
                  sltu         t4, a5, t2
20:               and          zero, s1, a6
                  srli         s1, a5, 15
                  beq          a5, s2, 37f
23:               xori         zero, t0, -964
                  blt          gp, a6, 42f
                  xor          s1, t5, a5
                  andi         ra, t4, -948
                  addi         s4, t4, 1077
                  slt          ra, a7, a5
                  slli         gp, ra, 11
                  slt          zero, a3, t1
                  sltu         s9, a4, ra
                  bne          s9, a1, 43f
                  srli         t4, t3, 0
                  or           t3, t0, a0
                  sra          s8, zero, s0
                  srli         s4, s8, 5
37:               srli         a6, s8, 9
                  slti         a3, s0, 1933
                  ori          s10, sp, -586
                  bge          s0, a1, 60f
                  sub          s2, a1, a5
42:               sltiu        a6, s7, -570
43:               ori          s10, zero, 1302
                  blt          t6, a2, 51f
                  bge          s4, tp, 58f
                  add          s6, a5, tp
                  bge          s6, a7, 48f
48:               lui          a2, 693635
                  lui          s1, 534590
                  slli         a5, t6, 16
51:               and          gp, s4, t3
                  sll          a6, t2, s9
                  ori          s6, tp, 1669
                  beq          tp, a6, 64f
                  srli         s1, t1, 21
                  sltu         s10, sp, t0
                  srl          s3, t2, s5
58:               sll          s6, a6, a4
                  xori         s10, s4, 997
60:               bltu         a1, a6, 72f
                  bne          a3, a5, 68f
                  ori          a3, zero, 1876
                  bge          s6, t1, 76f
64:               bge          s3, t4, 84f
                  bge          a0, sp, 77f
                  or           a4, s2, s11
                  and          s3, s2, s0
68:               bltu         ra, a3, 69f
69:               nop
                  srai         s9, s2, 27
                  slt          a5, a2, t4
72:               ori          s2, t6, 1786
                  bne          s3, s3, 85f
                  beq          tp, s7, 76f
                  auipc        s10, 199260
76:               auipc        a5, 731123
77:               lui          ra, 399344
                  bgeu         s5, a3, 92f
                  srl          a3, t5, s3
                  srli         t5, s3, 18
                  auipc        s1, 293684
                  bge          a6, s1, 97f
                  or           s6, zero, ra
84:               nop
85:               add          gp, s0, s1
                  bltu         a5, s2, 104f
                  auipc        t5, 822674
                  andi         a5, s5, 88
                  bltu         a5, a3, 104f
                  sltu         t6, a6, a1
                  bltu         s6, s8, 97f
92:               bltu         t5, t6, 107f
                  sltu         s10, s6, sp
                  lui          s5, 601319
                  sll          a2, s10, a7
                  slti         sp, s6, -837
97:               sra          s0, t6, a3
                  srli         a5, s6, 19
                  bne          s3, t1, 114f
                  xori         a2, t4, 1747
                  nop
                  or           s10, s1, s8
                  bltu         t3, sp, 116f
104:              sltu         t5, s0, s0
                  srl          t6, t6, tp
                  slti         a1, zero, -388
107:              add          s6, s11, t6
                  srai         s9, s9, 25
                  or           s5, a4, t4
                  bge          s4, s2, 119f
                  srai         a7, s10, 12
                  ori          a4, t5, -792
                  blt          s4, a7, 131f
114:              sltu         tp, s0, zero
                  or           tp, t0, s1
116:              slli         a7, s5, 19
                  bltu         t6, t3, 135f
                  addi         s1, s1, -1798
119:              sltiu        a3, t3, -1114
                  srai         a6, s7, 11
                  sltiu        a4, s11, 2019
                  andi         s3, ra, 749
                  lui          zero, 1016809
                  or           s8, t5, gp
                  srl          s8, gp, a7
                  blt          gp, a5, 144f
                  bge          a0, s5, 140f
                  xor          a3, zero, ra
                  beq          s7, s5, 138f
                  auipc        t5, 621605
131:              beq          s1, s5, 138f
                  slt          a4, a3, s10
                  bge          a4, s8, 139f
                  sub          s9, a2, s8
135:              add          s11, s7, t3
                  bltu         s9, s5, 137f
137:              add          s9, s7, s1
138:              bgeu         s7, a5, 148f
139:              sltiu        s9, a5, 352
140:              lui          gp, 1001663
                  andi         tp, sp, -1961
                  xor          s11, a1, a5
                  sltu         t4, a6, t5
144:              or           s4, s8, t6
                  and          t3, s4, a6
                  bge          a0, s6, 159f
                  ori          a3, gp, 1587
148:              srl          gp, sp, a7
                  blt          a4, tp, 169f
                  xor          t3, t4, a5
                  srl          t1, zero, a2
                  sra          a3, t0, a5
                  sra          s2, a6, s11
                  slt          s2, sp, s7
                  slti         s11, a6, 1438
                  bge          t4, a7, 171f
                  sll          a4, s7, s7
                  slti         t4, t6, -139
159:              beq          s6, zero, 171f
                  add          zero, gp, zero
                  srli         sp, s5, 16
                  bne          tp, s2, 174f
                  lui          s8, 937927
                  nop
                  bge          s7, s6, 180f
                  srai         s10, gp, 19
                  lui          s4, 842819
                  sll          ra, a4, s11
169:              and          a5, s8, t2
                  blt          s4, a7, 172f
171:              bne          s5, zero, 178f
172:              srai         a5, a7, 23
                  lui          a3, 202728
174:              lui          t1, 840733
                  sltiu        sp, s4, 2033
                  la           s6, region_0+1984 #start load_store_instr_stream_3
                  la           t1, region_0+347 #start load_store_instr_stream_2
                  la           s10, region_0+821 #start load_store_instr_stream_1
                  sb           s1, 9(s10)
                  sb           s5, 415(t1)
                  sh           s9, -48(s6)
                  la           t2, region_0+821 #start load_store_instr_stream_0
                  lbu          a5, 88(t1)
                  sb           a1, 18(t1)
                  sb           s4, 28(s10)
                  la           a4, region_0+1737 #start load_store_instr_stream_4
                  sb           s6, 45(t1)
                  lbu          s2, -33(s6)
                  lb           t5, -4(t2)
                  lbu          t5, 0(a4)
                  lh           t6, 729(t1)
                  lw           zero, 11(t2)
                  sb           t4, -52(a4)
                  sb           ra, -20(s10)
                  lb           ra, 46(s10)
                  sw           a5, -8(s6)
                  sb           s9, -9(t2)
                  lb           s2, -18(s10)
                  lb           s9, 86(t1) #end load_store_instr_stream_2
                  lbu          s1, 14(a4)
                  lh           t3, -18(s6)
                  lb           a3, -43(s6)
                  sb           t2, 10(t2)
                  lbu          s4, 7(s6)
                  sw           t3, -61(a4)
                  sw           gp, 15(s10)
                  sw           t5, 3(t2)
                  lbu          a5, -44(s6) #end load_store_instr_stream_3
                  lbu          t6, 28(a4)
                  lb           a7, 4(s10)
                  sb           s10, -60(a4)
                  lbu          a1, 40(s10) #end load_store_instr_stream_1
                  lb           gp, -40(a4) #end load_store_instr_stream_4
                  lbu          t6, -14(t2) #end load_store_instr_stream_0
                  srli         s6, a3, 29
                  bge          s9, zero, 197f
178:              slli         zero, s10, 15
                  srai         t3, t0, 15
180:              or           a6, t2, t6
                  xor          ra, t0, a0
                  lui          t2, 731362
                  bge          t3, sp, 197f
                  bge          s4, tp, 203f
                  or           s11, s7, a6
                  lui          s11, 403681
                  andi         t6, t1, 1298
                  xor          t1, a5, s4
                  bltu         ra, a1, 204f
                  slti         a7, ra, -1107
                  add          tp, tp, t4
                  ori          s6, t5, 1387
                  bge          t5, zero, 194f
194:              srl          t1, a0, sp
                  sll          s6, a5, a1
                  sltu         t1, zero, s5
197:              bne          s3, s8, 209f
                  add          tp, s3, s9
                  or           a1, t0, s5
                  xori         gp, t0, 1582
                  lui          a2, 626716
                  bgeu         a1, a3, 217f
203:              xor          s3, gp, a6
204:              sub          s8, tp, s9
                  beq          s0, a5, 212f
                  xor          a6, s5, a1
                  add          s1, tp, s5
                  sra          s8, s8, sp
209:              srli         tp, s6, 15
                  sltiu        t4, t1, 730
                  xor          s3, a7, s2
212:              xori         zero, t2, -308
                  blt          a0, a4, 220f
                  sltiu        t4, s7, 1979
                  sltiu        s9, t3, 1069
                  beq          tp, t0, 234f
217:              sll          s9, s8, a1
                  slti         t3, a7, 131
                  or           s0, s9, a7
220:              auipc        a3, 482434
                  andi         t4, s11, -1305
                  srai         a3, s1, 23
                  srai         gp, s11, 20
                  sltiu        a6, sp, -479
                  sub          t6, a2, a6
                  sll          t2, a0, a6
                  sub          s0, s3, s11
                  sltu         a6, s4, a0
                  sra          s11, a3, a0
                  or           s2, t6, s10
                  nop
                  srl          s6, s10, t6
                  srli         s10, a1, 1
234:              bltu         a0, s4, 247f
                  xori         s6, s5, -1620
                  sra          s2, t3, t5
                  xor          s6, s11, s11
                  sltiu        s9, s2, -771
                  lui          tp, 1035886
                  nop
                  lui          a2, 799661
                  xori         s11, s7, 1449
                  lui          s3, 987985
                  srli         ra, t2, 7
                  xor          s6, s5, t3
                  or           t6, s9, t3
247:              auipc        s4, 316884
                  sll          s1, gp, a3
                  slt          s8, a5, t5
                  sub          s11, t5, s6
                  nop
                  xori         a7, t1, -1058
                  add          a6, s6, s7
                  or           s1, s7, a4
                  slti         a6, t1, -1829
                  slti         gp, s6, -2044
                  or           ra, a4, t3
                  lui          a6, 32092
                  sub          a6, t1, s3
                  bltu         a1, s11, 271f
                  andi         s3, gp, 866
                  slti         a3, a0, 1010
                  ori          s4, s8, -1879
                  andi         s4, s0, -2015
                  slti         a5, s11, -1525
                  bge          a1, t5, 281f
                  bgeu         s7, t5, 280f
                  sub          s11, gp, t5
                  beq          s7, s9, 284f
                  sub          t5, s11, s3
271:              sltu         s3, a7, s7
                  bne          s11, t3, 292f
                  bltu         s2, sp, 283f
                  xori         s3, s0, -651
                  slti         s8, s7, 1605
                  xori         s2, s7, 1035
                  sltiu        s1, s11, 1673
                  add          s10, a1, a2
                  addi         a6, s6, -414
280:              add          sp, a1, t0
281:              sltiu        t4, t2, -558
                  srai         s11, s3, 16
283:              slt          a7, a2, s11
284:              auipc        s5, 352233
                  auipc        s0, 1039037
                  sltiu        tp, s7, -1216
                  andi         s1, t5, -199
                  lui          a6, 255192
                  or           t3, tp, s11
                  slti         s9, a3, -817
                  lui          s11, 191067
292:              slti         t5, t1, 834
                  ori          a3, s5, 1009
                  blt          gp, sp, 300f
                  ori          t3, t0, -1507
                  and          a5, sp, s10
                  srl          gp, a6, a2
                  or           a7, s9, s8
                  lui          tp, 541998
300:              bne          s7, s4, 301f
301:              lui          s11, 137700
                  ori          t6, s5, 426
                  addi         ra, ra, -902
                  slti         s10, s11, -744
                  auipc        s6, 623813
                  srli         s11, s9, 27
                  slt          s9, s0, s7
                  add          zero, a0, a2
                  andi         t2, a4, 1517
                  slli         s2, sp, 16
                  xori         gp, s1, -1265
                  addi         a2, s9, 2025
                  bltu         s5, s10, 325f
                  sll          t5, t3, zero
                  xor          gp, a2, t3
                  and          a1, t2, a7
                  slli         s9, t2, 20
                  blt          t0, tp, 331f
                  xor          t6, t5, s2
                  auipc        a7, 315692
                  lui          s0, 1028019
                  bne          s5, t3, 334f
                  slti         s0, s8, 981
                  bge          sp, a1, 342f
325:              bgeu         a5, t6, 343f
                  auipc        t4, 502338
                  and          a7, a4, ra
                  auipc        t4, 182868
                  srai         a4, s4, 11
                  bge          s9, s10, 344f
331:              and          s9, a0, t1
                  slt          sp, s9, a4
                  srai         zero, t0, 18
334:              slli         a6, a6, 29
                  slli         gp, s3, 15
                  addi         a1, a4, 400
                  bge          s9, t2, 357f
                  sll          t6, s11, zero
                  beq          a2, s6, 352f
                  or           t1, s6, t4
                  and          a3, a7, s2
342:              or           gp, a5, t2
343:              bne          gp, a4, 345f
344:              slti         t5, t1, 467
345:              or           t5, s9, t2
                  srli         s8, a4, 1
                  sltu         a3, a5, s11
                  auipc        a2, 485633
                  sra          a5, a4, s9
                  blt          t6, s11, 368f
                  sll          s2, s4, s10
352:              auipc        a6, 68981
                  beq          s1, a2, 365f
                  slt          s11, s1, t6
                  bgeu         gp, s3, 362f
                  sltu         t2, s4, a0
357:              bne          t4, s2, 372f
                  auipc        a1, 904112
                  addi         tp, zero, -1717
                  add          zero, a0, zero
                  bgeu         t1, s2, 362f
362:              bgeu         ra, t0, 369f
                  add          t1, s7, t2
                  add          s0, a5, a3
365:              sltu         zero, t4, s9
                  addi         s1, s9, 1077
                  lui          s4, 610708
368:              sub          sp, ra, s0
369:              auipc        s3, 235682
                  bge          s1, s7, 377f
                  sra          a1, s5, s2
372:              ori          a5, sp, 2019
                  srai         a7, a0, 1
                  sltu         sp, t1, a2
                  srai         s9, a0, 26
                  slli         tp, t4, 16
377:              xori         t2, s11, -1988
                  sltu         s0, s9, a1
                  auipc        t4, 17864
                  and          sp, s8, s9
                  slti         s0, a3, -567
                  bgeu         s0, sp, 393f
                  bltu         zero, s0, 402f
                  or           t3, t3, t2
                  blt          s8, zero, 394f
                  slt          t4, s6, a0
                  ori          s3, a6, 1931
                  nop
                  and          t1, t4, a3
                  xor          t2, t5, t5
                  lui          a6, 298826
                  bne          t1, t0, 399f
393:              nop
394:              sra          t6, sp, s8
                  slt          s8, s1, s3
                  xor          a3, sp, zero
                  or           s5, s9, t6
                  bltu         ra, s1, 413f
399:              bne          s7, t6, 412f
                  srai         a1, t6, 18
                  srl          s9, gp, a6
402:              nop
                  sll          t1, s7, t1
                  srai         a4, t2, 15
                  srai         tp, s0, 26
                  xori         a6, a0, 1152
                  and          a2, s2, t3
                  ori          a2, t1, -213
                  ori          t3, t0, 1740
                  nop
                  slti         t1, t0, 1250
412:              add          s4, sp, a4
413:              beq          t2, a3, 428f
                  lui          s2, 235793
                  bltu         a3, s9, 428f
                  and          s5, a2, s1
                  bge          t3, s9, 432f
                  bltu         s11, a0, 431f
                  slti         s10, s2, 2031
                  ori          a7, s10, -413
                  sll          a7, a3, t0
                  slti         s4, zero, 908
                  sll          a3, a2, t6
                  lui          a5, 275549
                  beq          gp, t4, 440f
                  bge          s7, zero, 441f
                  sltiu        a4, t4, -1169
428:              sub          s6, a0, s2
                  bltu         ra, s9, 436f
                  slt          s5, a1, t0
431:              slti         s8, s0, 1874
432:              slli         s10, a3, 3
                  ori          s4, a4, -1284
                  ori          t4, sp, -329
                  beq          zero, s3, 453f
436:              sub          a4, s4, s11
                  sub          a2, a2, t1
                  bgeu         s0, a5, 439f
439:              sll          s3, s5, s5
440:              addi         s11, s10, -1575
441:              srl          s8, t5, s3
                  andi         a5, t3, 1258
                  beq          s10, a1, 449f
                  beq          t5, zero, 451f
                  sll          s3, zero, a3
                  auipc        a3, 904610
                  sll          s3, t4, s1
                  addi         a2, s8, 917
449:              sra          a1, a3, t3
                  and          sp, t1, a5
451:              sub          t3, t4, s3
                  srl          a1, t3, s8
453:              ori          ra, t6, -1948
                  sra          s0, s11, a3
                  lui          t3, 435006
                  auipc        t2, 736112
                  add          s0, t6, t0
                  srl          a4, a2, t6
                  sltu         s11, s9, s0
                  nop
                  bltu         s10, s10, 475f
                  addi         t4, s1, -355
                  andi         s0, s9, 210
                  addi         t4, a2, -133
                  xor          a3, a5, ra
                  sll          s10, ra, a5
                  addi         a3, s11, 529
                  slti         s3, s0, -571
                  blt          t5, s2, 471f
                  slli         s1, t6, 16
471:              sra          s2, a2, s1
                  sltu         tp, a4, zero
                  srli         zero, s4, 15
                  srai         s9, a0, 29
475:              nop
                  add          s3, t1, s1
                  beq          gp, t6, 489f
                  slti         s6, a6, 1571
                  slt          zero, s11, s4
                  addi         tp, s4, -316
                  xor          s9, s5, s7
                  xori         s3, a6, 1855
                  lui          s1, 595228
                  blt          a5, a7, 495f
                  add          a2, t4, t6
                  ori          s1, s7, -18
                  or           tp, t5, a5
                  auipc        a3, 956413
489:              slti         t4, a7, -1557
                  ori          s4, s2, -374
                  sub          t5, s1, tp
                  ori          s3, a1, 1617
                  addi         t3, a5, 13
                  srl          a6, s3, s4
495:              beq          t3, t4, 515f
                  lui          t4, 764086
                  or           t4, s3, s10
                  beq          t3, a1, 513f
                  blt          s10, s10, 517f
                  sra          s4, t2, zero
                  bge          a2, s8, 508f
                  or           t4, sp, s1
                  and          ra, a1, t3
                  addi         t6, s0, 397
                  sub          s0, a5, s4
                  srl          s1, t1, s11
                  and          s1, a6, s7
508:              sra          a3, t4, a2
                  slti         t6, s6, 815
                  sll          s2, tp, t6
                  add          s6, a3, a5
                  slti         s4, s11, -935
513:              nop
                  srli         s9, t0, 30
515:              sll          sp, t3, t3
                  srl          s3, s3, s3
517:              bne          zero, s11, 532f
                  andi         t1, a2, -164
                  auipc        s3, 288642
                  bltu         ra, a0, 527f
                  beq          tp, zero, 534f
                  bltu         s3, s8, 534f
                  ori          sp, s4, 1182
                  andi         gp, s0, -1582
                  slt          s1, s1, s3
                  bgeu         a6, a3, 545f
527:              slt          s10, a4, s2
                  auipc        a6, 263626
                  bgeu         s2, t1, 542f
                  srli         sp, t2, 26
                  ori          s2, s8, -139
532:              bne          tp, s1, 544f
                  slt          s8, s1, s7
534:              bne          gp, a3, 543f
                  bge          s10, a5, 549f
                  slti         zero, a0, 1472
                  and          t1, s5, t4
                  sltu         s6, t0, t1
                  addi         a2, a6, -759
                  sltu         s9, t3, ra
                  xor          a4, t0, a4
542:              bge          a2, s9, 549f
543:              bltu         a5, sp, 549f
544:              slti         s0, s4, 318
545:              bne          s8, a6, 549f
                  slti         s6, s1, 1094
                  xori         s5, t1, 439
                  srli         t6, a3, 19
549:              andi         gp, a2, -475
                  lw           t1, 4(s7)
                  srli         a4, a1, 27
                  sltu         t3, s9, s3
                  and          s1, a2, t1
                  sltiu        t5, a2, -360
                  addi         s7, s7, 64
                  slli         s10, sp, 17
                  lui          tp, 580642
                  auipc        s11, 244685
                  auipc        zero, 293699
1036:             addi x13, x6, 0
1036:             jalr x13, x13, 0
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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  add x10, x23, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x20, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x20, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x20, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x20, x6, ecall_handler
                  li x6, 0x1
                  beq x20, x6, instr_fault_handler
                  li x6, 0x5
                  beq x20, x6, load_fault_handler
                  li x6, 0x7
                  beq x20, x6, store_fault_handler
                  li x6, 0xc
                  beq x20, x6, pt_fault_handler
                  li x6, 0xd
                  beq x20, x6, pt_fault_handler
                  li x6, 0xf
                  beq x20, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

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
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x23, x10, zero
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
                  add x23, x10, zero
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
                  add x23, x10, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x23, x10, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x23, x10, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x23, x10, zero
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
