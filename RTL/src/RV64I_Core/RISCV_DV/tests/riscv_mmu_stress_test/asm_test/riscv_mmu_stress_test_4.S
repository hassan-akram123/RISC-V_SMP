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
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x5
                  li x1, 0xf544a8f9
                  li x2, 0x16d807d7
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0xf
                  li x7, 0x6
                  li x8, 0x0
                  li x9, 0x2
                  li x10, 0xfff0cb88
                  li x11, 0x80000000
                  li x12, 0x5
                  li x13, 0x27ea294
                  li x14, 0x80000000
                  li x15, 0x7328d9ac
                  li x16, 0xbde0c55d
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x4
                  li x21, 0x80000000
                  li x22, 0x1
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0xfacab529
                  li x26, 0xc
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x36aded74
                  la x31, user_stack_end
main:             la           a4, region_1+1016 #start riscv_load_store_rand_instr_stream_0
                  lb           s1, -125(a4)
                  sb           s2, -63(a4)
                  slli         gp, t0, 23
                  sb           a0, -393(a4)
                  lbu          t4, -953(a4)
                  xor          zero, t5, t5
                  andi         t4, s7, 1807
                  sll          a2, s3, a7
                  nop
                  slli         s0, a0, 4
                  auipc        s5, 166992
                  sra          s1, a1, s2
                  sb           ra, 693(a4)
                  lui          gp, 925818
                  addi         t2, s1, 689
                  add          s1, tp, s4
                  xori         tp, s6, -109
                  xor          s1, a6, s10
                  lui          s1, 290875
                  addi         a3, t0, -1596
                  sra          t3, t2, s2
                  lbu          ra, 499(a4)
                  sb           s9, 105(a4)
                  srl          s3, gp, s9
                  lb           s0, 867(a4)
                  lb           s10, -498(a4)
                  ori          a5, a0, -1864
                  sll          s1, t5, t2
                  sub          a2, tp, s7
                  add          s1, t0, s5
                  lbu          a5, -510(a4)
                  lbu          ra, -558(a4)
                  sh           s1, 438(a4)
                  sltiu        s8, a3, -1041
                  sll          gp, s4, zero
                  sll          s10, tp, s0
                  sb           a3, -889(a4)
                  sltiu        a7, s8, 1243
                  slt          s1, a6, a7
                  sb           a4, 685(a4)
                  andi         gp, a3, -1484
                  sltiu        a6, s7, 1372
                  sltu         s9, a1, a1
                  sltu         a5, t1, a0
                  lbu          s6, 294(a4)
                  lbu          a5, 82(a4)
                  sw           s11, -920(a4) #end riscv_load_store_rand_instr_stream_0
                  la           a1, region_0+983 #start load_store_instr_stream_0
                  lb           t2, -723(a1)
                  la           s0, region_0+1088 #start load_store_instr_stream_1
                  sb           s10, 7(s0)
                  lw           a2, -4(s0)
                  sb           a1, 582(a1)
                  lbu          t1, 314(a1)
                  sh           s8, -6(s0)
                  lb           t2, 542(a1)
                  lb           t4, 7(s0)
                  lbu          s3, 870(a1)
                  sb           a4, -11(s0)
                  lbu          a2, -406(a1)
                  lb           s8, -16(s0)
                  lb           s6, 974(a1)
                  lb           t5, -374(a1)
                  lbu          t4, -12(s0)
                  sb           a5, 694(a1)
                  sh           s2, 14(s0) #end load_store_instr_stream_1
                  lb           a4, -442(a1) #end load_store_instr_stream_0
                  bgeu         s7, a6, 18f
                  bne          s11, s6, 4f
                  lui          a7, 436513
                  add          s6, a2, a7
4:                sll          s6, ra, s9
                  srl          zero, s10, tp
                  auipc        s10, 910584
                  lui          s8, 358695
                  andi         t3, s8, 1563
                  srai         a0, a5, 31
                  slti         a5, a4, 840
                  bge          s2, s8, 22f
                  bne          t6, s6, 17f
                  bltu         a3, s5, 15f
                  auipc        t1, 529505
15:               ori          a7, s8, 253
                  sltiu        s5, s7, -393
17:               andi         t1, a5, -1448
18:               xori         s3, s0, 963
                  addi         s10, a3, 386
                  add          a6, s4, s9
                  srai         t1, gp, 9
22:               bge          t2, s8, 35f
                  sub          t5, t1, t2
                  bltu         s11, t0, 36f
                  bge          t0, ra, 36f
                  bne          tp, s7, 37f
                  slti         s9, s4, -1173
                  or           s7, t2, a2
                  slt          sp, a7, t2
                  bne          s10, s1, 43f
                  srai         t0, t4, 14
                  nop
                  sub          a4, t2, s8
                  slli         s8, a2, 4
35:               slt          a0, s1, s11
36:               slti         s5, s7, -937
                  slli         sp, a6, 21
                  la           s0, sub_1
                  sltiu        a0, ra, 1140
                  sub          gp, ra, s6
                  andi         t0, s10, -1350
                  slli         s10, s5, 26
                  nop
                  addi         s0, s0, -837
                  srli         s9, a5, 12
main_j1:          jalr         ra, s0, 838 #jump main -> sub_1
37:               slt          a0, a7, a3
                  bge          s2, gp, 39f
39:               ori          s0, s5, -1152
                  sra          a1, t2, a6
                  lui          s10, 321042
                  lui          t4, 1003220
43:               bne          a3, s11, 52f
                  nop
                  auipc        t4, 569277
                  sra          s7, t4, s3
                  bltu         sp, s1, 55f
                  auipc        t4, 494159
                  srli         s6, s10, 22
                  bne          s6, t5, 62f
                  nop
52:               sltu         a2, a3, s11
                  srli         t0, s4, 15
                  xori         a2, s1, 287
55:               sll          a7, a7, s9
                  sub          gp, s0, t5
                  bne          s2, s11, 69f
                  bltu         a1, t0, 75f
                  nop
                  lui          s0, 447121
                  blt          s2, s7, 66f
62:               srli         s7, a1, 0
                  ori          t0, t6, 101
                  auipc        s3, 717495
                  sll          sp, a2, s10
66:               beq          s7, s8, 71f
                  slti         a7, t2, -1351
                  sra          s7, a4, s2
69:               sub          a4, s2, s11
                  sltu         a6, s5, t3
71:               srl          t3, t6, a0
                  beq          s3, t6, 85f
                  sltu         s1, s9, ra
                  xor          t3, s11, s4
75:               slli         tp, s9, 2
                  slti         s7, tp, 1337
                  la           a3, region_0+239 #start riscv_load_store_hazard_instr_stream_0
                  lhu          t2, 479(a3)
                  xori         a6, t2, -1291
                  xori         s5, t4, -448
                  sh           a4, 479(a3)
                  sub          ra, s5, zero
                  lb           t3, 579(a3)
                  sh           gp, 579(a3)
                  sh           a0, -101(a3)
                  or           s0, ra, s7
                  lb           s2, 1752(a3)
                  lbu          a1, 1122(a3)
                  sb           s11, 1122(a3)
                  lh           t1, 1237(a3)
                  auipc        s3, 1008333
                  sh           t0, 1237(a3)
                  sw           s11, 1237(a3)
                  lh           s10, 869(a3)
                  sb           a3, 592(a3) #end riscv_load_store_hazard_instr_stream_0
                  bltu         s2, s10, 85f
                  or           t2, gp, s2
                  add          s10, s9, t6
                  bgeu         a5, a0, 85f
                  auipc        sp, 70206
                  or           a1, s2, s1
                  and          t2, s0, zero
                  slt          a2, a2, t4
85:               srai         s8, gp, 29
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slti         t2, a5, -1591
                  slt          a1, a1, a2
                  srai         a3, t2, 8
                  sltiu        tp, s6, -1137
                  addi         t6, t6, -64
                  xori         a5, t4, 1939
                  sw           ra, 4(t6)
                  srli         s8, gp, 25
                  ori          s1, sp, 210
                  srli         gp, tp, 18
                  slt          s8, s2, s4
                  la           gp, region_1+475 #start riscv_load_store_rand_instr_stream_1
                  lbu          t2, 0(gp)
                  sll          a4, gp, ra
                  lbu          t1, 8(gp)
                  lb           t3, 23(gp)
                  lbu          t1, 55(gp)
                  lw           t3, 1(gp)
                  auipc        s2, 725988
                  lbu          a3, 61(gp)
                  lh           t1, -39(gp)
                  lbu          t0, 8(gp)
                  slli         s5, s3, 0
                  nop
                  lb           zero, -58(gp)
                  lb           t5, 14(gp)
                  lbu          t1, -58(gp)
                  nop
                  sub          t3, s3, t0
                  ori          zero, a2, 535
                  sh           a6, -17(gp)
                  and          s0, a7, t3
                  or           ra, tp, s4
                  lh           tp, -25(gp)
                  lb           a6, 33(gp)
                  lb           s6, 48(gp)
                  or           zero, t1, s10
                  ori          a1, t3, 1281
                  addi         tp, a1, -1733
                  lh           zero, 21(gp)
                  lb           a1, -26(gp)
                  lbu          s10, -4(gp)
                  slt          a4, a5, a6
                  lui          sp, 832873
                  lbu          s6, -12(gp)
                  sb           a3, 12(gp)
                  slli         s2, s2, 14
                  lbu          sp, 46(gp)
                  sb           s5, 64(gp)
                  sra          a0, s1, a1
                  ori          zero, a2, -1868
                  sb           t3, 43(gp) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+1856 #start load_store_instr_stream_0
                  la           tp, region_1+1503 #start load_store_instr_stream_2
                  la           s10, region_1+714 #start load_store_instr_stream_1
                  lb           zero, 21(s10)
                  lb           t4, -83(s5)
                  sb           gp, -648(tp)
                  sb           a7, 125(s10)
                  lh           t0, -13(tp)
                  lbu          s8, -25(s10)
                  lw           t0, 118(s10)
                  sw           t1, -52(s5)
                  lh           t3, -118(s5)
                  lbu          a3, -20(s10)
                  sw           gp, -391(tp)
                  lhu          s7, -82(s5)
                  lb           zero, -692(tp)
                  lh           s6, -222(s10)
                  lh           zero, -863(tp)
                  sb           a1, -247(s5)
                  sb           a6, 63(s10)
                  sw           s4, -82(s10)
                  lb           zero, -788(tp)
                  lb           a5, 492(tp) #end load_store_instr_stream_2
                  sb           a7, 23(s5)
                  sh           t4, 52(s10) #end load_store_instr_stream_1
                  sb           t0, 33(s5) #end load_store_instr_stream_0
                  la           sp, region_1+1462 #start riscv_load_store_hazard_instr_stream_1
                  lhu          s2, -98(sp)
                  lh           a1, -98(sp)
                  addi         zero, s7, 975
                  lb           tp, -98(sp)
                  lb           tp, -98(sp)
                  lh           a2, -98(sp)
                  lb           s2, -98(sp)
                  srli         s3, s5, 17
                  lh           t5, -98(sp)
                  sh           t4, -98(sp)
                  lbu          a2, -98(sp)
                  sw           a1, -98(sp)
                  lb           s5, -98(sp)
                  lbu          a0, -98(sp)
                  sw           ra, -98(sp)
                  lh           s5, -98(sp)
                  sltiu        s10, s5, 1109
                  sw           a2, -98(sp)
                  sw           a3, -98(sp)
                  sb           s3, -49(sp)
                  sb           t5, -49(sp)
                  lb           gp, -49(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a1, region_0+39 #start riscv_load_store_hazard_instr_stream_0
                  sb           s0, 41(a1)
                  lh           a2, 41(a1)
                  add          a7, gp, t0
                  sw           sp, 1805(a1)
                  lbu          s5, 1498(a1)
                  lbu          s5, 1498(a1)
                  xor          a6, s6, t2
                  sltu         s1, s6, t4
                  sb           a4, 1498(a1)
                  lb           s6, 1087(a1)
                  sh           a5, 1087(a1)
                  xor          t5, t4, t2
                  lbu          s3, 1087(a1)
                  sltu         t3, t6, t4
                  lh           t4, 1451(a1) #end riscv_load_store_hazard_instr_stream_0
                  la           t5, region_0+589 #start riscv_load_store_rand_instr_stream_0
                  sra          s6, s9, s1
                  srai         a4, s2, 16
                  sb           a2, 526(t5)
                  slli         a2, s1, 10
                  slti         tp, a3, -824
                  xori         s6, s3, -1827
                  slti         s1, a0, 1096
                  lb           s9, 768(t5)
                  ori          s9, s2, -1079
                  lb           a4, 556(t5)
                  slli         s2, sp, 3
                  lw           zero, 1363(t5)
                  sb           a7, 693(t5)
                  lh           t0, 733(t5)
                  lbu          gp, 355(t5)
                  sb           s8, -80(t5)
                  lbu          t0, 403(t5)
                  slti         s0, a7, -878
                  sb           s6, 27(t5)
                  slli         a4, s6, 19
                  lb           a0, -80(t5)
                  xori         s8, a2, -749
                  sltu         t1, s6, s10
                  sll          s0, a5, gp
                  lhu          s0, 1321(t5)
                  sub          a4, s9, a6
                  sh           a4, 971(t5)
                  nop
                  sb           s5, 86(t5)
                  srli         s10, s1, 22
                  xori         s7, t6, 1548
                  lbu          a4, 444(t5)
                  addi         t1, gp, -696
                  sb           s10, -204(t5)
                  sh           s8, 683(t5)
                  lbu          sp, -535(t5)
                  srli         s5, a7, 27
                  addi         t4, a5, 774
                  xor          s9, zero, t3
                  sltu         t3, a5, s7
                  sw           a0, -249(t5)
                  lh           s6, 1375(t5)
                  sh           s3, -589(t5)
                  slt          a7, t2, sp
                  auipc        s2, 81102
                  srai         a1, a6, 21
                  and          a1, t4, tp
                  sh           tp, -307(t5) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+1547 #start load_store_instr_stream_0
                  la           s8, region_1+1699 #start load_store_instr_stream_1
                  lb           tp, -56(s8)
                  lbu          a4, -214(t5)
                  lbu          a6, 15(s8)
                  lbu          zero, -240(t5)
                  lbu          a6, -18(t5)
                  lbu          a7, -16(s8)
                  lb           a6, -228(t5)
                  lb           s7, -234(t5)
                  lb           s0, -30(t5)
                  lbu          s6, -62(s8)
                  lb           t0, 8(s8) #end load_store_instr_stream_1
                  lb           t4, 114(t5)
                  lw           a2, 229(t5)
                  sb           zero, 128(t5)
                  lbu          s6, 166(t5) #end load_store_instr_stream_0
                  bltu         t6, zero, 15f
                  add          s1, s8, t5
                  bgeu         s6, t5, 8f
                  add          s7, s8, t1
                  or           t0, s2, s7
                  srli         a6, a3, 0
                  beq          t5, s5, 16f
                  or           a6, a6, s9
8:                bgeu         s9, a0, 12f
                  bltu         s3, a6, 10f
10:               sltu         s2, t2, t3
                  nop
12:               sub          t4, t6, a3
                  srl          a0, a6, gp
                  slli         a1, tp, 12
15:               srai         a2, s7, 19
16:               auipc        a6, 688172
                  bltu         s3, s8, 22f
                  xori         a4, a3, -164
                  srl          a0, s9, a6
                  ori          a4, a1, 653
                  sra          t1, a0, gp
22:               auipc        zero, 624360
                  bge          a6, s7, 41f
                  add          zero, s9, t0
                  or           s5, gp, t6
                  sltiu        a6, s7, 1001
                  sra          a4, s5, a1
                  lui          s8, 388394
                  bltu         s6, s6, 43f
                  slt          zero, ra, a0
                  sll          a0, s1, a4
                  sub          a2, tp, t4
                  addi         s2, a5, 725
                  bne          a7, a3, 53f
                  lui          tp, 64130
                  addi         sp, gp, 1786
                  and          t3, s8, tp
                  sll          t0, a1, ra
                  or           tp, sp, sp
                  sltu         s0, a6, s5
41:               lui          sp, 248575
                  srai         t0, t1, 26
43:               bltu         a6, t0, 63f
                  nop
                  slti         a5, t1, 1478
                  addi         a3, s0, 1287
                  sltu         s9, s4, a5
                  and          t5, s1, t6
                  sll          a6, tp, tp
                  andi         s3, t5, 2047
                  slti         s10, t5, -2006
                  slti         t1, t0, 183
53:               bltu         a5, a1, 66f
                  slti         t1, s5, -933
                  srai         s9, s7, 8
                  xor          ra, ra, a0
                  addi         t4, s2, 82
                  slli         t0, s8, 2
                  xor          ra, s5, s8
                  bltu         s11, s2, 69f
                  srl          s1, ra, sp
                  nop
63:               srl          t1, ra, t6
                  sll          t1, a5, s0
                  sltu         t5, s1, s1
66:               ori          t1, t6, -427
                  srli         s0, zero, 14
                  nop
69:               beq          gp, sp, 71f
                  sll          s9, s10, s1
71:               auipc        zero, 755217
                  xori         gp, tp, -715
                  srl          t2, s2, s7
                  ori          a1, s1, -512
                  sltu         a7, s8, s7
                  slti         s10, s1, 483
                  slt          a7, s9, a2
                  xori         sp, a3, 1455
                  blt          a1, s6, 82f
                  nop
                  sltiu        s7, sp, -1635
82:               beq          s4, a4, 93f
                  nop
                  nop
                  slli         a1, s7, 2
                  srli         a5, a6, 21
                  xor          s8, a2, t3
                  slti         s6, a6, 948
                  sll          s9, s6, ra
                  bne          t3, s1, 106f
                  lui          t1, 952826
                  xor          t3, s3, s6
93:               andi         s7, s4, -922
                  srai         t1, s10, 25
                  sra          s5, t2, s6
                  slli         t1, t5, 29
                  bgeu         s6, s4, 117f
                  bne          a6, a7, 103f
                  slli         tp, t3, 20
                  srl          s6, tp, a0
                  addi         s7, t2, 712
                  slti         a1, s5, -416
103:              ori          t3, a3, -90
                  andi         t3, t3, -772
                  slti         tp, s9, -1428
106:              or           tp, a4, a1
                  beq          t0, t3, 121f
                  bge          s11, s2, 126f
                  and          t1, s7, s9
                  auipc        s0, 328936
                  slli         t5, s11, 24
                  andi         s1, s5, -769
                  or           s2, a6, a0
                  sltiu        s1, t5, -932
                  bge          zero, t5, 134f
                  nop
117:              lui          ra, 1001465
                  add          a4, a2, s4
                  slli         ra, s10, 13
                  sltu         t3, t2, a5
121:              sub          a2, gp, a2
                  add          s3, s9, t3
                  slli         sp, a0, 5
                  auipc        s9, 183124
                  bgeu         a5, t1, 129f
126:              sra          t0, a5, a2
                  xor          tp, ra, a6
                  blt          t1, s4, 140f
129:              addi         a6, a4, 1617
                  bge          tp, tp, 131f
131:              lui          sp, 996340
                  auipc        t1, 474706
                  bge          s1, gp, 139f
134:              sltu         a6, tp, a3
                  sltiu        a6, s3, 2005
                  auipc        a0, 503477
                  bltu         s3, t1, 144f
                  xori         s5, t2, -515
139:              beq          t1, t1, 143f
140:              nop
                  srai         s5, a7, 30
                  addi         a4, t6, 1018
143:              sltiu        s8, ra, 1620
144:              bge          a1, t4, 161f
                  ori          a1, ra, -858
                  sll          t3, s0, t0
                  add          s5, s11, s2
                  xor          a1, s1, zero
                  xori         s0, a6, -1063
                  srli         a0, a5, 24
                  sub          s0, a4, gp
                  sra          t1, a7, a1
                  bge          a5, s10, 170f
                  xor          ra, s4, t5
                  beq          tp, ra, 169f
                  sra          t5, a4, a7
                  or           t1, s5, t1
                  srl          gp, t1, a1
                  sra          a2, s1, s1
                  addi         s3, t6, 1998
161:              slt          s2, a0, s2
                  bne          t2, a4, 163f
163:              bge          t0, t4, 177f
                  beq          s4, t6, 178f
                  slli         s5, ra, 25
                  bge          a4, a3, 184f
                  auipc        t4, 810719
                  addi         s8, s10, -518
169:              slli         tp, t2, 21
170:              srai         s8, t0, 20
                  auipc        a2, 721998
                  nop
                  bne          a3, tp, 184f
                  sll          t4, s9, s2
                  slti         a3, s7, 629
                  sra          a5, t3, s0
177:              blt          s8, s2, 196f
178:              sltu         a2, t6, t2
                  slli         s9, sp, 11
                  andi         s5, s2, 1750
                  srai         gp, s3, 25
                  nop
                  bge          s6, s11, 192f
184:              or           t3, tp, s8
                  srli         a1, s3, 14
                  beq          t5, s8, 196f
                  auipc        t1, 831876
                  auipc        t2, 135838
                  blt          t5, a6, 193f
                  and          a7, a0, t2
                  or           a6, t2, t3
192:              bge          s9, t5, 199f
193:              xor          s2, sp, t0
                  sll          a0, t5, s6
                  lui          zero, 907838
196:              bltu         s0, s5, 212f
                  addi         s9, t6, 162
                  sub          a0, a1, s7
199:              auipc        a3, 178362
                  or           a3, t5, s11
                  sra          s2, a6, s4
                  bgeu         s9, s3, 204f
                  sll          t1, s6, s9
204:              blt          t5, a1, 223f
                  and          sp, a0, a4
                  sra          s8, zero, s6
                  addi         s0, a5, 2029
                  sub          t0, t2, s1
                  xor          s10, t3, a3
                  ori          s8, s0, 1616
                  or           a5, a7, gp
212:              addi         s2, t2, 1125
                  bne          s4, s10, 219f
                  auipc        a2, 360194
                  lui          ra, 1044265
                  srai         a2, a3, 3
                  sra          s8, t2, zero
                  sub          s6, ra, a1
219:              bge          s9, s9, 223f
                  sll          s5, s8, sp
                  slli         tp, s5, 14
                  sltiu        tp, s2, 1339
223:              addi         s7, t5, 745
                  lw           ra, 4(t6)
                  and          s3, t2, a5
                  or           s2, t5, a0
                  addi         t6, t6, 64
                  add          a1, sp, sp
                  srai         s2, t3, 25
413:              addi x12, x1, 1
413:              jalr x12, x12, 0
sub_1:            lui          a1, 162115
                  add          a0, s1, s1
                  addi         t6, t6, -52
                  slli         s7, zero, 31
                  sub          t0, s0, s0
                  sw           ra, 4(t6)
                  slti         a4, zero, -1210
                  slti         s0, t5, -1813
                  xori         s9, t6, 1728
                  bltu         s4, sp, sub_1_j2 #branch to jump instr
                  slti         t3, s9, -9
                  auipc        a1, 401761
                  add          a3, t0, s0
                  lui          t1, 914065
                  or           a1, a7, a3
                  addi         t2, s6, 1684
                  xor          t3, tp, s7
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  la           s2, region_1+902 #start load_store_instr_stream_2
                  la           a4, region_1+1710 #start load_store_instr_stream_0
                  la           a6, region_1+662 #start load_store_instr_stream_1
                  lbu          ra, 15(s2)
                  la           t1, region_1+848 #start load_store_instr_stream_3
                  lbu          a5, -27(a6)
                  lbu          a2, 158(a4)
                  lbu          a7, -50(a6)
                  lh           zero, -168(a4)
                  sb           s0, 2(s2)
                  sh           s1, 16(t1)
                  sb           s10, 4(a4)
                  lb           sp, -5(t1)
                  lw           sp, -38(a6)
                  lbu          t4, 49(a6)
                  lb           a3, 5(t1)
                  sb           s8, 13(s2)
                  lb           s10, -169(a4)
                  lbu          t4, -5(t1)
                  lbu          s6, -230(a4)
                  lbu          a3, -9(s2)
                  lh           t4, -144(a4)
                  lh           t3, -12(s2)
                  lhu          tp, 4(s2)
                  lw           s5, -10(a6)
                  sw           t1, -22(a4)
                  sh           s6, -62(a6)
                  sh           s3, -226(a4)
                  lbu          a0, -13(s2)
                  sb           a3, 11(t1)
                  sb           a6, 8(t1)
                  lw           s8, -54(a6) #end load_store_instr_stream_1
                  lbu          s8, -1(t1)
                  sb           s8, 10(t1)
                  lb           s1, -15(s2) #end load_store_instr_stream_2
                  lh           t5, -8(t1) #end load_store_instr_stream_3
                  lb           s5, -67(a4)
                  lhu          s3, -92(a4) #end load_store_instr_stream_0
                  la           s5, region_1+967 #start riscv_load_store_rand_instr_stream_1
                  slli         s0, t1, 21
                  sltiu        s10, s3, 997
                  xor          a6, s10, s5
                  sb           s4, 93(s5)
                  lbu          a7, -185(s5)
                  add          a6, t5, t0
                  andi         gp, s3, -1831
                  lhu          s9, -45(s5)
                  lb           a5, 222(s5)
                  and          s10, s1, s2
                  srli         s9, s9, 2
                  xor          a7, s7, t1
                  sltiu        s10, s3, -1332
                  sb           a6, -236(s5)
                  sra          a6, t4, t0
                  srl          s9, t3, zero
                  lb           s2, -10(s5)
                  lbu          gp, 8(s5)
                  add          s3, a6, t3
                  sltiu        t0, s8, 1103
                  srai         a2, s11, 30
                  sh           s1, 157(s5)
                  srl          zero, a1, s1
                  lbu          t5, -158(s5)
                  sltiu        a5, t3, -1857
                  lb           a2, -188(s5)
                  lh           sp, -149(s5)
                  slt          zero, a3, zero
                  or           zero, t1, t6
                  lb           t4, 99(s5)
                  sub          s8, a1, t4
                  lb           s8, -172(s5)
                  lhu          a4, 173(s5)
                  srl          a5, s6, a4
                  sltu         s3, s9, s11
                  lhu          gp, 91(s5)
                  sh           a4, -151(s5)
                  lb           s3, -49(s5)
                  lbu          t3, -200(s5)
                  lb           t0, 230(s5)
                  lhu          a4, -137(s5)
                  sb           s11, -144(s5)
                  sb           zero, 60(s5)
                  sltiu        a1, t3, -918
                  xori         s6, a0, -177
                  lbu          gp, -154(s5)
                  add          tp, sp, s0
                  lbu          s6, 180(s5) #end riscv_load_store_rand_instr_stream_1
                  la           a5, region_1+627 #start riscv_load_store_rand_instr_stream_0
                  sra          a6, s1, tp
                  slt          gp, t3, s8
                  lbu          sp, -508(a5)
                  lbu          s6, 698(a5)
                  srai         ra, sp, 28
                  nop
                  xor          a7, a2, s3
                  slli         s10, s4, 4
                  slt          gp, tp, a4
                  lbu          a4, 50(a5)
                  srai         t1, t2, 29
                  slli         t3, s9, 27
                  sltiu        gp, t0, -1755
                  lh           a1, 1127(a5)
                  and          t3, t6, ra
                  sll          a3, s0, a6
                  slt          a6, t3, t3
                  lw           s10, 1121(a5)
                  lbu          s9, 948(a5)
                  nop
                  sra          a3, a0, t6
                  lb           t0, 236(a5)
                  sb           s8, 806(a5)
                  lh           s6, 1135(a5)
                  sub          gp, a2, s8
                  srai         s10, t4, 28
                  xor          a4, a0, s9
                  addi         a0, t2, 1927
                  srli         t2, gp, 15
                  srli         s5, t4, 3
                  srli         s6, t4, 11
                  sh           s4, 969(a5)
                  ori          zero, ra, -249
                  sb           s1, 1200(a5)
                  lb           s3, 222(a5)
                  addi         t0, s3, -760
                  sb           t5, 732(a5)
                  lw           a7, 153(a5)
                  sltu         s0, a5, s10
                  srai         ra, s0, 10
                  srli         s6, ra, 0
                  sll          t4, gp, s0
                  srai         t1, t6, 14
                  xor          a0, s7, s10
                  lbu          s5, 1331(a5)
                  lb           t4, -109(a5)
                  lb           zero, 1157(a5)
                  lb           s8, -184(a5) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_0+1517 #start load_store_instr_stream_2
                  la           t3, region_0+1125 #start load_store_instr_stream_1
                  la           a5, region_0+808 #start load_store_instr_stream_0
                  la           sp, region_0+1859 #start load_store_instr_stream_3
                  sw           s4, 156(a5)
                  lbu          t2, 60(t3)
                  lb           t1, 42(a5)
                  la           a4, region_0+1333 #start load_store_instr_stream_4
                  sb           s0, -100(a5)
                  lh           s2, -725(a4)
                  lhu          t0, -1123(ra)
                  lb           t5, -1240(ra)
                  lb           a0, -40(t3)
                  sb           t3, -15(sp)
                  lbu          a2, -56(t3)
                  sb           t0, 0(sp)
                  lbu          s8, -1107(a4)
                  sb           s4, 4(sp)
                  sw           t2, 371(a4)
                  lh           gp, -138(a5)
                  sb           a3, 8(sp)
                  lb           s1, -56(ra)
                  lhu          gp, 1(sp)
                  lbu          s3, 18(t3)
                  lb           t2, -113(ra)
                  lb           t0, -54(ra)
                  lbu          t1, -12(t3)
                  sh           t3, -739(a4)
                  lhu          gp, -539(ra)
                  lbu          a0, -89(a5)
                  sb           t1, 52(t3)
                  sb           a5, -2(sp)
                  lh           s10, 45(t3)
                  lb           a0, 286(a4) #end load_store_instr_stream_4
                  lbu          s8, 354(ra)
                  sb           s11, -1073(ra)
                  lb           s0, 191(a5)
                  sb           a2, 16(sp)
                  lhu          s10, -1205(ra)
                  lbu          t2, -24(t3) #end load_store_instr_stream_1
                  lw           s7, 9(sp)
                  lb           s10, 10(sp) #end load_store_instr_stream_3
                  lbu          a7, 32(ra) #end load_store_instr_stream_2
                  lb           s6, -3(a5) #end load_store_instr_stream_0
                  la           t2, region_1+932 #start riscv_load_store_hazard_instr_stream_4
                  lb           zero, -388(t2)
                  lb           s7, -458(t2)
                  srli         t5, t5, 14
                  lhu          s8, 508(t2)
                  lh           s2, 508(t2)
                  lhu          s7, 508(t2)
                  srai         a0, t6, 27
                  lb           t3, 751(t2)
                  sb           zero, 751(t2)
                  lui          t3, 255341
                  sb           s9, 751(t2)
                  lb           s10, 751(t2)
                  lb           s5, 751(t2) #end riscv_load_store_hazard_instr_stream_4
                  la           a3, region_0+96 #start load_store_instr_stream_0
                  la           t5, region_0+861 #start load_store_instr_stream_1
                  lb           t1, 31(t5)
                  lhu          sp, -16(a3)
                  la           t4, region_0+1076 #start load_store_instr_stream_2
                  lh           sp, 103(t5)
                  lbu          s8, -75(t5)
                  lbu          gp, 11(a3)
                  lbu          s3, 130(t5)
                  lh           tp, 30(t4)
                  sh           a5, -8(a3)
                  lbu          s0, -10(a3)
                  lh           tp, -26(t4)
                  lbu          s3, 9(a3)
                  sh           t0, 221(t5)
                  sb           s11, -73(t5)
                  lb           s1, -8(t4)
                  lb           s2, -3(a3)
                  sb           a2, 11(t4)
                  sb           t2, -11(t4)
                  sb           s9, -6(a3)
                  lbu          s5, -63(t4)
                  lb           s0, -53(t4)
                  lb           a2, -6(t5) #end load_store_instr_stream_1
                  sb           s11, 20(t4)
                  lb           tp, -16(a3)
                  lbu          t3, -7(t4) #end load_store_instr_stream_2
                  sb           s10, 1(a3) #end load_store_instr_stream_0
                  la           s0, region_1+350 #start riscv_load_store_rand_instr_stream_4
                  xori         s6, t0, 542
                  lui          t0, 652071
                  addi         s7, t2, -1025
                  sll          s7, s0, s11
                  lbu          a1, 3(s0)
                  lhu          a6, -16(s0)
                  xor          a6, a4, a6
                  add          t4, t1, zero
                  ori          zero, tp, -122
                  sb           t5, -7(s0)
                  slli         ra, a5, 4
                  sltiu        s8, s8, 350
                  sb           s9, 1(s0)
                  slti         t2, zero, -653
                  srli         sp, s7, 23
                  srai         gp, t5, 27
                  sb           t0, -16(s0)
                  lui          t5, 399501
                  addi         s10, s10, -741
                  lb           s3, 4(s0)
                  lbu          a1, 13(s0)
                  xor          a6, t6, a0
                  lb           a4, 5(s0)
                  sub          s6, s7, t2
                  slti         s8, ra, 478
                  srl          s6, a7, a0
                  sb           a2, -3(s0)
                  lh           a4, -16(s0)
                  lbu          t3, 13(s0)
                  lbu          t0, -11(s0)
                  slt          ra, a4, s3
                  addi         s8, s8, 1420
                  sra          t4, s11, t4
                  lb           a3, -13(s0)
                  or           s9, s9, s9
                  lb           s5, 5(s0)
                  lh           s7, -14(s0)
                  sb           s9, -13(s0) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+395 #start riscv_load_store_hazard_instr_stream_0
                  lh           t4, 247(sp)
                  lbu          a7, -76(sp)
                  lb           t5, -180(sp)
                  sb           ra, -180(sp)
                  lb           s6, 18(sp)
                  lbu          a5, 27(sp)
                  lh           s0, 27(sp)
                  lh           a1, 103(sp)
                  sb           s10, 64(sp)
                  lb           a3, 116(sp)
                  lb           t0, 116(sp)
                  lb           s3, 110(sp)
                  lb           t5, -100(sp)
                  sw           a6, -27(sp)
                  lb           a2, -178(sp)
                  slti         t4, a2, -1045
                  sw           tp, -75(sp)
                  sb           zero, 102(sp)
                  srli         a4, t3, 0
                  lb           t0, -94(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a0, region_1+750 #start load_store_instr_stream_1
                  la           a6, region_1+1233 #start load_store_instr_stream_2
                  la           s7, region_1+968 #start load_store_instr_stream_3
                  lbu          s10, 0(s7)
                  sb           s7, -16(a6)
                  la           a7, region_1+366 #start load_store_instr_stream_0
                  lh           a5, -15(a6)
                  lbu          t2, 20(a7)
                  lb           s9, -15(a6)
                  lhu          a5, 16(s7)
                  sw           a6, -98(a7)
                  sb           t0, 10(s7)
                  lbu          s10, 5(a0)
                  lh           s2, 12(a0)
                  sb           a7, 231(a7)
                  sh           t1, -11(a6)
                  lbu          a3, 8(s7)
                  sb           ra, -4(a0)
                  sb           a6, -12(a6)
                  sb           t2, 29(a7)
                  sh           a7, 4(s7)
                  lw           s2, 14(a0)
                  sb           s5, 9(s7)
                  sb           s8, -8(a6)
                  sb           a0, 1(s7)
                  sb           t3, 5(a0) #end load_store_instr_stream_1
                  lbu          s1, -15(s7)
                  lb           s3, 14(a6)
                  sw           t6, 8(s7) #end load_store_instr_stream_3
                  lbu          sp, 0(a6)
                  lb           a5, -8(a6) #end load_store_instr_stream_2
                  lb           s10, 95(a7) #end load_store_instr_stream_0
                  la           s9, region_1+1755 #start riscv_load_store_hazard_instr_stream_2
                  lbu          t4, 33(s9)
                  srai         a3, a2, 26
                  lhu          s5, -29(s9)
                  lbu          a0, -29(s9)
                  lw           t3, 29(s9)
                  lb           s3, -36(s9)
                  lbu          ra, -36(s9)
                  lh           s1, -17(s9)
                  lbu          s3, 38(s9)
                  lbu          s6, 38(s9)
                  sb           s0, -14(s9)
                  lb           t3, -50(s9)
                  lb           tp, 50(s9)
                  lbu          t2, -1(s9)
                  auipc        t5, 280186
                  slli         gp, s8, 11
                  sh           s9, -1(s9)
                  lh           s3, -13(s9)
                  sb           s1, 27(s9)
                  lb           gp, -40(s9)
                  lb           t0, -40(s9) #end riscv_load_store_hazard_instr_stream_2
                  la           a3, region_1+612 #start riscv_load_store_rand_instr_stream_2
                  andi         s10, s11, 1373
                  lbu          t4, -13(a3)
                  sb           s3, -1(a3)
                  sltiu        a4, a3, 1716
                  lbu          a1, 11(a3)
                  lbu          t2, 1(a3)
                  srl          s7, a0, ra
                  slli         s0, a7, 26
                  sw           s2, -16(a3)
                  lbu          ra, 7(a3)
                  lb           s9, -13(a3)
                  auipc        t0, 394586
                  sb           t1, 7(a3)
                  lbu          zero, 15(a3)
                  lb           t2, -13(a3)
                  lb           t3, 14(a3)
                  lbu          t3, 3(a3)
                  andi         s9, s10, -914
                  xor          t4, t1, a6
                  sra          s3, gp, s7
                  sb           s10, 16(a3)
                  srai         a5, s2, 31
                  andi         a0, s1, -919
                  sh           s9, 4(a3)
                  lbu          s6, 5(a3)
                  andi         a5, a3, 1996
                  sub          t5, a6, sp
                  lui          s6, 662282
                  srl          a7, s6, s1
                  lb           t0, -16(a3)
                  auipc        sp, 4137
                  auipc        a0, 751886
                  lh           a5, -8(a3)
                  lhu          t0, -14(a3)
                  lb           t5, -11(a3)
                  lhu          s8, -4(a3)
                  srli         a4, t1, 31
                  sll          t0, t0, s6
                  srl          t2, t2, tp
                  sh           a0, -2(a3)
                  lb           s5, 11(a3)
                  lhu          s5, -8(a3)
                  srl          s3, s8, s8
                  lbu          s5, 9(a3)
                  sll          t4, a0, a3
                  nop
                  sb           s6, -11(a3)
                  lb           a1, 9(a3)
                  lhu          s7, -8(a3)
                  ori          a6, s5, 752
                  sll          zero, gp, a6
                  sra          s5, a5, t3
                  lbu          a0, -7(a3)
                  lhu          sp, 16(a3)
                  lbu          s8, -3(a3) #end riscv_load_store_rand_instr_stream_2
                  la           s6, region_1+603 #start load_store_instr_stream_1
                  la           t4, region_1+1084 #start load_store_instr_stream_2
                  la           a2, region_1+882 #start load_store_instr_stream_0
                  lbu          gp, -183(t4)
                  sh           s6, 61(s6)
                  lbu          t3, 40(s6)
                  lb           a0, 285(t4)
                  lw           sp, -144(t4)
                  lh           s1, -28(a2)
                  sb           s9, 173(t4)
                  sb           a2, -64(s6)
                  sw           t6, -344(t4)
                  lbu          t1, 115(a2)
                  lbu          a1, 129(a2)
                  lbu          a1, -46(s6)
                  sb           a1, -827(t4)
                  lb           s9, -523(t4)
                  sb           s9, 1092(a2)
                  sb           t3, -852(t4)
                  lb           s1, 30(s6)
                  lbu          t2, -14(s6) #end load_store_instr_stream_1
                  sb           s5, -454(t4) #end load_store_instr_stream_2
                  lbu          a7, 637(a2)
                  lbu          s10, -487(a2) #end load_store_instr_stream_0
                  la           sp, region_1+1428 #start riscv_load_store_hazard_instr_stream_5
                  slti         s0, s9, -808
                  lh           s6, 22(sp)
                  sll          tp, tp, t1
                  lb           s3, 22(sp)
                  sltu         s2, a4, s1
                  sh           a1, 22(sp)
                  lh           t0, 22(sp)
                  lb           a4, 22(sp)
                  sb           s11, -75(sp)
                  slti         a0, t0, -955
                  lb           s0, -75(sp)
                  lb           s5, -83(sp)
                  or           s3, s7, a3
                  lbu          a4, 17(sp)
                  sll          a7, t1, ra
                  sb           a1, 17(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           t0, region_1+834 #start riscv_load_store_hazard_instr_stream_3
                  sb           a6, -44(t0)
                  sb           s5, -44(t0)
                  lb           t2, -44(t0)
                  lbu          s2, -44(t0)
                  sb           s7, 23(t0)
                  lbu          a6, 23(t0)
                  lbu          t5, 23(t0)
                  and          t1, s4, s9
                  lbu          s0, 23(t0)
                  sb           t1, 23(t0)
                  lbu          s10, 23(t0)
                  lb           sp, 23(t0)
                  lb           gp, 23(t0)
                  sb           s3, 23(t0)
                  lb           sp, 23(t0)
                  and          a6, s11, s4
                  lbu          s0, 23(t0) #end riscv_load_store_hazard_instr_stream_3
                  la           a1, region_1+1954 #start riscv_load_store_rand_instr_stream_3
                  xori         t5, zero, -1382
                  srai         t3, s7, 26
                  slti         t5, ra, -183
                  ori          t5, s3, 1056
                  lbu          s3, -739(a1)
                  or           s1, a3, a4
                  add          t2, ra, gp
                  sltiu        a2, s6, 1646
                  sltu         t2, t4, s11
                  sub          s8, s9, ra
                  addi         a6, a7, 1848
                  lbu          zero, -191(a1)
                  sra          a5, a4, a7
                  sh           s5, -418(a1)
                  lui          s2, 831795
                  sb           a5, -778(a1)
                  srl          s7, t0, a3
                  ori          gp, t6, -1250
                  andi         s5, sp, 124
                  sb           s8, -598(a1)
                  add          s7, t2, t3
                  sltu         a5, s6, zero
                  xor          s0, a2, s8
                  srai         a7, t2, 3
                  lb           zero, -718(a1)
                  lb           s1, -1151(a1)
                  nop
                  lb           a7, -1167(a1)
                  add          t1, a0, a6
                  addi         s3, s6, 1662
                  lh           s3, -320(a1)
                  slti         t2, s1, 1447
                  ori          s6, s7, 48
                  lbu          ra, -1637(a1) #end riscv_load_store_rand_instr_stream_3
                  srli         a7, s9, 1
                  lui          a1, 643542
                  slli         s2, s4, 28
                  srai         s6, s4, 13
                  andi         sp, s9, -1880
                  andi         tp, sp, -598
                  andi         a2, sp, 1138
                  auipc        s3, 72228
                  sub          a7, s9, a2
                  bge          ra, s7, 27f
                  blt          t0, t2, 25f
                  auipc        a0, 792318
                  srl          s2, s0, s11
                  auipc        zero, 495873
                  blt          t3, t6, 18f
                  sra          s8, a1, gp
                  srli         s2, s11, 3
                  beq          s4, tp, 20f
18:               auipc        a5, 975301
                  slli         s2, t2, 19
20:               blt          t6, s6, 37f
                  ori          t2, gp, -1700
                  sll          s2, ra, t6
                  bltu         a6, a1, 30f
                  xor          t4, a4, a7
25:               blt          s10, sp, 28f
                  ori          ra, a4, -698
27:               addi         t5, gp, 506
28:               beq          a1, a6, 42f
                  auipc        t5, 423730
30:               srli         tp, a1, 6
                  srli         a6, zero, 22
                  slt          t2, s11, s6
                  ori          t4, t3, -1114
                  srl          s7, zero, s9
                  bltu         a7, a1, 37f
                  sra          t5, a5, a4
37:               sltiu        a6, a2, 681
                  or           zero, s0, a0
                  bgeu         s8, a0, 52f
                  and          tp, t3, s0
                  slti         a2, s6, -1767
42:               or           t4, a1, s9
                  sll          s9, a1, t0
                  sll          s10, t6, s10
                  bne          t4, s10, 65f
                  blt          a3, s3, 50f
                  sra          gp, s1, t4
                  lui          sp, 359557
                  srai         s2, a4, 29
50:               beq          tp, s1, 67f
                  auipc        a7, 995181
52:               xori         s1, s9, 1544
                  bne          s3, s8, 58f
                  sltu         a2, s1, a5
                  lui          t2, 798182
                  sub          t2, s7, gp
                  slli         a2, s8, 7
58:               sra          a7, t5, s4
                  bne          t2, a6, 63f
                  ori          zero, t4, 322
                  add          ra, s5, t2
                  nop
63:               sltiu        sp, s1, -1796
                  blt          s10, s2, 72f
65:               nop
                  andi         a7, a5, -635
67:               nop
                  nop
                  and          a6, s5, s5
                  ori          s1, t1, -220
                  auipc        s6, 526943
72:               nop
                  addi         s6, t5, 1726
                  srli         t3, t5, 20
                  sltu         a6, t6, t5
                  bltu         a4, t4, 84f
                  xor          a0, a5, a3
                  and          s2, a7, s3
                  blt          s9, s5, 96f
                  slti         t1, s0, -1632
                  auipc        a5, 621939
                  slli         s7, t5, 0
                  xor          s7, s1, a4
84:               auipc        a3, 421313
                  andi         a1, t0, -475
                  srl          t2, s6, s3
                  lui          t4, 520948
                  slli         a5, a7, 3
                  bltu         s2, s4, 107f
                  beq          a5, s2, 105f
                  bge          t1, t1, 103f
                  srai         a2, a4, 29
                  auipc        ra, 139885
                  xor          sp, a6, sp
                  addi         tp, s5, -479
96:               xor          a1, t5, s5
                  slli         s3, s10, 16
                  add          t5, ra, a1
                  bgeu         a2, s0, 112f
                  bge          t6, s2, 107f
                  lui          s5, 428009
                  bltu         a7, s11, 109f
103:              bne          s9, t0, 123f
                  bgeu         sp, a7, 118f
105:              ori          a6, s7, -755
                  srli         s10, t5, 10
107:              andi         a0, s7, 29
                  xori         t5, t5, -358
109:              srli         s3, s11, 15
                  srl          a6, a3, s11
                  sltiu        sp, sp, -254
112:              or           tp, a0, s8
                  auipc        s3, 922964
                  lui          t5, 806544
                  blt          sp, a4, 126f
                  srl          s1, a2, s8
                  bge          s10, a0, 124f
118:              srai         gp, s10, 8
                  sll          t0, zero, s7
                  bltu         t2, s8, 129f
                  sltu         t4, a2, s4
                  addi         a7, t0, 389
123:              srl          t4, s1, a3
124:              add          zero, t6, t1
                  and          zero, t1, a0
126:              sub          t2, s6, a7
                  xori         a5, s10, 712
                  or           t1, a5, ra
129:              slti         s10, s8, -1397
                  xor          t5, s1, s9
                  lui          s2, 664865
                  auipc        t3, 982939
                  add          s6, a4, a2
                  auipc        a5, 260907
                  bne          a7, s5, 136f
136:              ori          s6, t4, 1489
                  add          a4, a6, a0
                  slli         t5, s4, 7
                  sltu         a3, s8, a6
                  slti         a4, t2, -587
                  slt          t0, tp, a0
                  sra          s1, s9, a1
                  or           a1, t4, ra
                  bgeu         a1, a6, 148f
                  slli         a7, a7, 15
                  srli         t0, s5, 27
                  slti         a5, s10, -1482
148:              add          s3, s3, s1
                  xori         gp, zero, -616
                  ori          s3, gp, -1360
                  sltiu        s10, s6, 246
                  sll          a1, s3, a1
                  beq          s6, s1, 166f
                  bgeu         a3, ra, 163f
                  slli         t1, zero, 16
                  slt          gp, a2, s3
                  bne          a3, s9, 175f
                  xori         t0, a0, 566
                  sub          s8, s7, a5
                  bltu         s4, a2, 162f
                  nop
162:              bgeu         s8, gp, 169f
163:              lui          zero, 651276
                  xor          a1, t6, tp
                  blt          s7, zero, 185f
166:              auipc        a6, 306341
                  srai         a4, s3, 8
                  bne          s9, s11, 175f
169:              addi         t3, s2, 670
                  xor          s5, a5, t5
                  nop
                  andi         t4, sp, 1351
                  addi         s6, sp, 1499
                  or           s7, a1, s10
175:              bne          s9, a4, 193f
                  slti         s0, s4, -133
                  and          a1, s6, s6
                  blt          t4, s8, 195f
                  addi         s6, a7, 240
                  srl          t0, ra, sp
                  and          s3, s9, s7
                  sra          s6, t3, zero
                  lui          t1, 359056
                  sra          a3, s11, t1
185:              lui          zero, 343078
                  ori          s1, s11, -457
                  sltu         t1, s6, tp
                  sltiu        s2, t4, 1319
                  bltu         a3, a7, 193f
                  slli         s2, sp, 25
                  sra          t2, a3, s1
                  beq          t4, zero, 200f
193:              slti         t1, a0, 1515
                  bltu         t3, t5, 211f
195:              add          a4, t5, a6
                  sra          s3, s7, s8
                  lui          t3, 276323
                  beq          a3, t4, 213f
                  bltu         s8, s4, 204f
200:              or           s9, t5, a2
                  ori          s8, s10, 57
                  lui          s5, 133886
                  beq          a6, s8, 204f
204:              bgeu         s7, s4, 207f
                  sra          a7, a2, s6
                  sll          a6, ra, s10
207:              andi         t4, a3, 306
                  and          s7, a3, t0
                  bltu         zero, s5, 213f
                  bne          s4, s8, 217f
211:              bne          a0, gp, 226f
                  bltu         t6, a6, 225f
213:              sll          gp, s4, a6
                  bltu         s9, tp, 228f
                  sll          a1, gp, a0
                  sll          s7, a4, t6
217:              sub          ra, ra, s5
                  ori          a4, zero, 1059
                  la           sp, region_0+866 #start riscv_load_store_hazard_instr_stream_1
                  nop
                  srai         s10, t2, 20
                  lb           t2, 43(sp)
                  auipc        zero, 789182
                  sb           t1, 37(sp)
                  srai         t0, a1, 30
                  sltiu        s7, a3, 1710
                  lb           s6, 37(sp)
                  lbu          t3, 37(sp)
                  sltu         gp, s1, tp
                  lb           t5, -51(sp)
                  lbu          t2, 15(sp)
                  sb           a5, 15(sp)
                  lb           s0, 15(sp)
                  lbu          s2, 52(sp)
                  lbu          s3, 52(sp)
                  lb           zero, 55(sp)
                  sb           sp, -45(sp)
                  sll          t5, s2, s9
                  sb           a1, -45(sp)
                  sb           s8, -45(sp) #end riscv_load_store_hazard_instr_stream_1
                  slt          sp, gp, t5
                  srai         s1, t4, 9
                  blt          a6, t0, 233f
                  addi         a3, sp, -1397
                  xor          t0, t1, s1
                  sub          s7, sp, s10
225:              slti         a4, s8, -1236
226:              sll          a4, ra, s4
                  sltiu        gp, s10, 1965
228:              blt          sp, s6, 248f
                  sub          s6, a2, t6
                  xor          a3, a5, t3
                  sub          s0, t6, t6
                  srai         s8, s11, 15
233:              bge          t4, a7, 247f
                  bltu         a1, t1, 242f
                  slti         s5, s9, 360
                  sltiu        s9, s2, 1073
                  blt          a2, a6, 244f
                  sltu         s5, s9, t0
                  slt          a3, s2, t0
                  slti         zero, a1, 1721
                  sub          a7, t1, s3
242:              sltiu        a7, t3, 1382
                  srai         tp, s5, 23
244:              sltiu        a1, tp, -368
                  sub          sp, s11, a7
                  auipc        s2, 1016039
247:              bge          a0, gp, 258f
248:              slt          a3, tp, a6
                  bgeu         t3, t1, 252f
                  sub          s6, s10, tp
                  beq          s5, s3, 268f
252:              bge          zero, t5, 259f
                  xor          a0, s11, s5
                  auipc        t3, 846399
                  srai         a6, s5, 0
                  lui          a7, 1013553
                  srl          a0, t5, s8
258:              auipc        t2, 867806
259:              sub          a2, s7, a6
                  add          a7, s5, t6
                  xor          a7, tp, s5
                  or           t0, s0, t5
                  or           a2, t3, a1
                  slli         s7, s6, 7
                  srli         a3, t3, 6
                  bge          a2, tp, 273f
                  sltu         a3, sp, a3
268:              and          a2, t0, sp
                  sltu         a3, t6, a4
                  bge          a3, zero, 285f
                  bne          a1, s11, 272f
272:              nop
273:              sltu         s10, s2, a3
                  srai         t0, a5, 12
                  srai         s1, s7, 7
                  srli         t0, a4, 24
                  srl          s6, gp, t4
                  nop
                  slt          s0, a0, s9
                  bne          t2, s7, 288f
                  nop
                  lui          t4, 793201
                  lui          ra, 291704
                  xor          a4, a6, t4
285:              xori         t2, s5, -354
                  xor          t5, s8, a3
                  slti         a7, a5, 201
288:              ori          s6, a2, -1793
                  sub          t4, s1, gp
                  bgeu         s10, a7, 310f
                  nop
                  addi         s2, t0, 1675
                  ori          a1, a4, -2026
                  sltiu        gp, s5, 1173
                  bgeu         s0, tp, 310f
                  beq          t6, t3, 299f
                  sub          s2, s3, s0
                  beq          s4, s5, 303f
299:              sltu         a7, s5, s9
                  sub          ra, a7, s4
                  addi         s10, s9, -462
                  nop
303:              sltiu        s2, gp, -1692
                  slti         s5, a4, 785
                  nop
                  bgeu         s8, s4, 323f
                  bgeu         tp, s7, 311f
                  srl          sp, a2, t6
                  bne          a6, zero, 326f
310:              srai         a0, a2, 18
311:              lui          a1, 138021
                  auipc        zero, 128112
                  or           a1, s6, ra
                  and          a1, a6, s11
                  slt          a6, s4, a6
                  srai         a4, a3, 23
                  auipc        s6, 784584
                  srai         a7, s1, 2
                  slli         zero, a5, 28
                  xor          a5, t1, t0
                  la           tp, region_0+1384 #start riscv_load_store_rand_instr_stream_5
                  srl          s1, s11, sp
                  slti         a6, a6, 1342
                  sll          s5, s11, t4
                  lui          s8, 28982
                  sb           s7, -2(tp)
                  ori          s0, s6, 1661
                  sb           a2, 8(tp)
                  sltu         a6, s7, s1
                  srli         t3, t4, 21
                  lbu          a7, -3(tp)
                  lhu          s8, 6(tp)
                  lb           s9, 5(tp)
                  or           s9, t0, ra
                  sb           t1, -5(tp)
                  lh           a6, 8(tp)
                  lh           t3, -2(tp)
                  sb           t1, -3(tp)
                  lbu          a3, 7(tp)
                  sltu         a2, t6, t6
                  lb           s5, 2(tp)
                  lw           s8, -4(tp)
                  auipc        a2, 123413
                  lb           t0, -6(tp)
                  lb           zero, -1(tp)
                  sb           t4, -11(tp)
                  lb           ra, -13(tp)
                  lh           s7, -6(tp) #end riscv_load_store_rand_instr_stream_5
                  srli         t2, a1, 18
                  auipc        a2, 292789
323:              slti         a4, zero, -357
                  srl          zero, s3, a0
                  xor          a5, a7, s9
326:              blt          a1, s7, 330f
                  slt          gp, s6, s6
                  sltiu        a3, a6, -1078
                  addi         a2, t4, 1559
330:              slt          s8, s2, s9
                  sltiu        gp, tp, 1285
                  sll          a1, s3, zero
                  and          s9, s0, s9
                  ori          a2, t1, -1879
                  xori         s6, s10, -779
                  or           a6, s8, s5
                  andi         a4, a6, 298
                  bltu         t6, s4, 345f
                  and          a7, s0, s5
                  blt          s11, t4, 347f
                  sltu         gp, s7, s0
                  srli         s2, s11, 29
                  andi         s5, s7, -1642
                  slli         a7, ra, 3
345:              sll          s5, s1, tp
                  addi         s8, s7, 1613
347:              sltiu        s2, s2, -1339
                  blt          s9, s1, 362f
                  slti         tp, t2, -943
                  lui          s10, 496990
                  lui          s9, 827167
                  addi         s8, t1, 1514
                  nop
                  lui          s6, 896381
                  xor          s8, s2, sp
                  slti         a6, a6, 107
                  or           ra, a5, a1
                  bltu         a1, s8, 376f
                  andi         t4, t1, 1241
                  xori         s1, t0, 521
                  beq          s11, s11, 370f
362:              add          a7, t2, s5
                  bltu         s0, tp, 381f
                  blt          s0, s10, 381f
                  slt          s5, a4, t4
                  slti         ra, s1, 1576
                  sltu         tp, s5, a7
                  srl          tp, t2, a1
                  sub          a7, s7, t0
370:              sll          s3, a4, a0
                  add          s5, s6, s7
                  lui          a3, 273890
                  ori          ra, sp, -253
                  srai         s10, a1, 0
                  auipc        s10, 862553
376:              ori          a7, a2, 566
                  ori          t2, a1, -12
                  sltu         ra, s5, s5
                  bne          t5, t5, 392f
                  auipc        ra, 338724
381:              and          a2, a7, s7
                  slli         a5, s11, 1
                  xor          a6, t5, s7
                  sltiu        a0, t6, -639
                  srl          t1, a4, t0
                  blt          s3, gp, 406f
                  or           t1, ra, t4
                  slti         s6, s2, -114
                  andi         a6, s6, -1286
                  srai         s1, a7, 18
                  ori          a2, s8, -549
392:              auipc        s9, 598434
                  bge          a7, t0, 404f
                  addi         t4, s7, 733
                  srl          a0, s7, s10
                  sra          s10, t3, zero
                  addi         s1, zero, -216
                  xor          t1, t4, t2
                  sltiu        a0, t3, -1611
                  xor          zero, s3, t2
                  or           t4, s11, t1
                  auipc        s8, 9653
                  srli         a4, s10, 1
404:              xori         t1, a6, -933
                  srai         a3, a2, 4
406:              ori          t4, s5, -5
                  bltu         t2, s3, 420f
                  srli         s2, gp, 11
                  lui          ra, 7465
                  slti         s1, a4, -1943
                  slti         s10, zero, -1409
                  ori          a0, a1, 1623
                  srai         t2, s8, 8
                  sltu         s3, t4, t4
                  sra          s8, a3, s11
                  or           a5, s10, s9
                  sub          a2, s9, s11
                  bgeu         a6, a5, 421f
                  xor          s8, sp, s0
420:              bne          s10, a7, 424f
421:              srli         s5, t6, 5
                  slt          a0, t0, a0
                  sub          s7, s11, s1
424:              sub          a1, ra, s0
                  and          a1, s7, gp
                  auipc        a3, 466478
                  and          t2, s9, s5
                  srai         tp, a5, 21
                  lui          t2, 614574
                  or           s7, s6, s10
                  bge          s6, a6, 433f
                  bltu         sp, s2, 440f
433:              andi         a6, a7, 1482
                  slti         s6, tp, 1667
                  nop
                  srli         a7, a4, 27
                  beq          a0, a5, 449f
                  or           s0, s3, s9
                  srli         t5, a5, 18
440:              sltiu        a5, a2, -765
                  add          t2, t1, s1
                  and          t1, s8, a6
                  beq          tp, a6, 457f
                  ori          sp, t0, -300
                  slt          s1, s10, s10
                  add          a1, s4, tp
                  sltu         s6, zero, zero
                  bge          a3, s2, 460f
449:              slli         gp, t4, 26
                  sltiu        t2, t6, 939
                  ori          zero, s4, 522
                  beq          s5, s2, 460f
                  or           a3, a2, ra
                  blt          s2, ra, 467f
                  bgeu         t3, ra, 468f
                  sra          ra, s1, s0
457:              sra          t4, a7, t1
                  slli         s0, t1, 6
                  or           t1, s4, a5
460:              lui          t2, 805061
                  bne          gp, t5, 465f
                  slt          a3, s10, a4
                  add          ra, s10, a7
                  add          s6, t5, a2
465:              and          a0, t0, s9
                  sra          s6, s10, gp
467:              srai         s5, t4, 24
468:              sub          sp, a6, t1
                  slli         t2, a0, 30
                  addi         ra, s9, 1677
                  add          t2, tp, s2
                  sub          a5, s8, a4
                  sltiu        s2, s2, -66
                  sra          s9, s5, a4
                  xor          t3, s3, a4
                  auipc        a1, 204726
                  bne          a1, zero, 485f
                  xori         tp, s9, 1309
                  or           a6, a0, a6
                  and          a1, s5, a2
                  bgeu         a2, s5, 483f
                  nop
483:              xor          zero, t6, zero
                  sll          tp, gp, t6
485:              slt          a6, tp, a4
                  sll          t5, zero, s2
                  add          t3, s1, t1
                  auipc        a7, 264749
                  nop
                  sltiu        a5, a4, -553
                  slt          s2, s7, s7
                  bltu         t6, s0, 501f
                  or           t5, ra, s7
                  slli         a3, t2, 20
                  blt          t3, a0, 509f
                  or           tp, s2, s4
                  or           s5, a2, s5
                  slti         s0, s6, 859
                  sll          s6, s6, s10
                  slti         t2, a6, 803
501:              srl          ra, t2, s2
                  bltu         t1, s8, 509f
                  addi         t1, s7, -1586
                  xor          t1, a3, t4
                  sltu         s2, t1, a1
                  bne          s9, s11, 523f
                  sra          a4, a6, a2
                  beq          t3, t4, 513f
509:              beq          ra, a0, 513f
                  la           t1, region_0+524 #start load_store_instr_stream_1
                  sb           t1, 43(t1)
                  lb           t3, 45(t1)
                  la           t0, region_0+443 #start load_store_instr_stream_2
                  sb           a6, 561(t0)
                  la           gp, region_0+706 #start load_store_instr_stream_0
                  lh           s10, 65(t0)
                  lb           t2, 49(t1)
                  sh           t4, 214(gp)
                  lb           a4, 1554(t0)
                  sb           a2, -402(t0)
                  lw           s9, -64(t1)
                  sh           t4, 18(t1)
                  lhu          t5, 2(t1)
                  lb           a0, 29(gp)
                  sb           s0, 1027(t0)
                  lbu          t5, 18(t1) #end load_store_instr_stream_1
                  lb           t4, 225(gp)
                  sb           a4, 722(t0)
                  lbu          tp, 1084(t0) #end load_store_instr_stream_2
                  sb           s8, 253(gp)
                  lb           zero, -8(gp) #end load_store_instr_stream_0
                  sra          s3, a1, s2
                  lui          gp, 1007073
                  or           t1, a4, gp
513:              blt          s10, s9, 531f
                  lui          s8, 872341
                  slt          sp, s4, a4
                  slti         s7, t2, 664
                  srli         s0, a3, 27
                  slti         tp, s5, 729
                  slt          a7, sp, s1
                  bge          t2, t3, 523f
                  srl          t0, a7, t2
                  and          a5, t0, a5
523:              andi         s3, a0, -957
                  xor          t3, ra, ra
                  auipc        t3, 625809
                  add          s6, s1, s3
                  add          a2, a3, s0
                  srai         a1, t1, 22
                  beq          a2, a0, 546f
                  auipc        t1, 499045
531:              andi         s0, tp, 1440
                  sub          a7, zero, a3
                  srl          s3, t3, a4
                  ori          s1, a1, -1564
                  sra          s6, t4, s9
                  blt          zero, gp, 550f
                  bne          s2, s9, 544f
                  srli         ra, s2, 27
                  nop
                  slti         a4, tp, 2036
                  srli         s6, a7, 30
                  srl          a0, sp, t4
                  ori          s8, s8, -564
544:              slti         tp, a1, -112
                  bgeu         tp, a7, 565f
546:              sltiu        t0, s10, 1170
                  beq          s6, t2, 564f
                  andi         s2, s10, -623
                  xori         a0, zero, 915
550:              slli         s8, s11, 18
                  beq          zero, t3, 566f
                  blt          s0, sp, 572f
                  andi         zero, a0, -1174
                  and          s9, t6, s11
                  ori          a5, a1, 1846
                  xori         s10, s6, 1353
                  sra          s6, t0, s9
                  sra          zero, t3, t4
                  and          s9, s0, a6
                  auipc        zero, 820344
                  ori          sp, ra, -321
                  beq          t0, s6, 563f
563:              slti         a2, a7, -1099
564:              sra          s3, a5, ra
565:              sra          t3, t0, s7
566:              srai         t0, s9, 4
                  slti         a7, s0, -1961
                  or           s7, a3, a7
                  bltu         a7, a6, 584f
                  srli         t3, tp, 15
                  slli         a3, t2, 12
572:              slt          s3, t2, t0
                  srli         zero, t1, 25
                  sltiu        gp, a2, -698
                  and          a7, s2, t2
                  add          a6, s3, sp
                  bge          t6, a7, 581f
                  nop
                  sra          s0, s10, s4
                  xori         s2, a2, -1668
581:              slt          s7, t0, a1
                  ori          a5, s2, -1341
                  bne          a1, t1, 594f
584:              srl          s3, a6, t2
                  bltu         t4, s7, 592f
                  lui          s7, 693557
                  beq          a7, a0, 605f
                  srai         t4, t0, 2
                  slti         a1, s9, 1420
                  and          s5, s1, s11
                  xor          a7, a6, s8
592:              sll          a1, t2, t2
                  xori         t5, a4, 342
594:              sltiu        s3, a1, -1651
                  bgeu         t1, s6, 598f
                  srli         s7, sp, 26
                  nop
598:              slti         t2, s0, 923
                  auipc        s2, 539645
                  nop
                  sltiu        t5, gp, 1154
                  bge          a6, s11, 609f
                  slt          t0, a2, gp
                  and          s9, s1, s8
605:              sra          zero, t4, t0
                  andi         s1, ra, -572
                  ori          s7, s11, 222
                  bgeu         s6, t5, 625f
609:              sra          s1, s6, t3
                  srl          s2, s2, s9
                  xori         s2, s10, 1488
                  blt          a1, s9, 626f
                  sltu         gp, tp, a2
                  bgeu         a5, a4, 631f
                  slt          s1, s10, s7
                  or           s0, a5, s5
                  sltu         s3, s2, t2
                  blt          t3, a4, 626f
                  bltu         a6, t4, 626f
                  blt          a5, a7, 633f
                  xori         s0, t6, 23
                  addi         a6, a0, 1781
                  lui          s6, 870479
                  ori          a2, tp, -454
625:              addi         a1, s1, 434
626:              bge          a4, gp, 638f
                  or           s9, s3, s4
                  sltiu        gp, s7, 1593
                  nop
                  xor          s3, a5, s3
631:              sll          s7, s9, t5
                  sra          s5, gp, a3
633:              ori          s7, sp, -1704
                  sltu         a0, s1, zero
                  xor          a1, s1, a6
                  sltu         tp, s4, sp
                  bgeu         t4, s5, 639f
638:              add          a6, ra, a3
639:              bne          t0, a4, 644f
                  and          a5, a6, s10
                  blt          a0, s4, 645f
                  auipc        t5, 999240
                  ori          a3, s3, -846
644:              sltu         tp, s10, ra
645:              slli         a5, s8, 21
                  blt          s5, t1, 660f
                  bgeu         ra, s11, 658f
                  auipc        t2, 680572
                  bltu         s6, s10, 662f
                  srai         s5, t2, 12
                  add          t4, zero, sp
                  slt          t1, a5, a6
                  sll          s7, s11, gp
                  sll          s2, s11, a3
                  andi         a6, ra, 1550
                  xor          tp, a4, a5
                  and          a3, gp, t0
658:              sra          s5, a6, t0
                  srai         a2, s3, 24
660:              sra          s5, t5, a5
                  bge          s7, s3, 664f
662:              nop
                  beq          s3, s2, 678f
664:              srli         t4, a3, 1
                  andi         a4, s5, 1203
                  xor          tp, t6, sp
                  srai         a0, a6, 25
                  srl          s10, t5, t1
                  slti         s8, s9, 1891
                  slt          t1, s7, ra
                  xor          s9, a6, gp
                  sub          sp, s9, a2
                  srl          a6, a3, a3
                  lui          s10, 451377
                  ori          t2, t2, -1496
                  sub          s1, a5, a0
                  srli         sp, zero, 30
678:              srl          a5, s11, s7
                  blt          s2, a0, 686f
                  bgeu         s8, s4, 686f
                  and          ra, a2, gp
                  add          s5, a4, gp
                  beq          a5, a1, 686f
                  lui          s6, 736072
                  bltu         s3, s7, 686f
686:              lui          tp, 601389
                  srl          tp, t6, s1
                  sub          s5, t6, a0
                  lw           ra, 4(t6)
                  sltiu        s0, s7, -263
                  addi         t6, t6, 52
                  slti         t5, ra, -65
                  slt          s7, gp, s9
                  andi         s7, s4, -1698
                  auipc        t0, 507873
                  sra          s5, t2, a2
1273:             addi x21, x1, 0
1273:             jalr x21, x21, 0
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
.word 0x31dac713, 0x03586102, 0x443feeb7, 0x1980133c, 0x15048f5e, 0x48aa1c5d, 0x6523ca4a, 0x5b1f77a2
.word 0x0284f8d8, 0x1314c95a, 0x9611f2bb, 0x9aa4cad3, 0x63e84914, 0xaf37bcc8, 0x8d559153, 0xbdf2e13e
.word 0x0255ccf0, 0xfe96c8d0, 0xd1636d61, 0xd7afd648, 0x52493fba, 0x5deaeda4, 0xfeda75e8, 0xdcf2848f
.word 0x7c31b850, 0xf84e6cd3, 0x543ed15f, 0x008d0fad, 0xb7e74ef9, 0x305f1556, 0xf6863ecf, 0x9ea059f5
.word 0x7435a4a4, 0xd348560c, 0x8ae7d8a4, 0xf920b412, 0xa2567908, 0x1791686c, 0x3121e8cf, 0xc49dd82a
.word 0x830d0efb, 0x9c72ead4, 0x734b0789, 0x689c4ee3, 0x146e04b8, 0xc04cf1ea, 0x4d68be7c, 0xeea86b49
.word 0x2e8d15d8, 0x5214c2fd, 0x01f435a2, 0x41f304aa, 0xed910840, 0xf9db326c, 0x9fc9e4ab, 0x2f73a2f8
.word 0x8730e596, 0x3da85af5, 0xbb540fa8, 0x920f66e3, 0x9d42d1ea, 0x1f081004, 0x4a3b327b, 0xecdf90e0
.word 0xba1c9602, 0xdf5066b9, 0x9dc7a1e3, 0x95037d12, 0x3f39eea5, 0x3e3a3829, 0x7629e28a, 0x392de340
.word 0x67627d25, 0x3bdbf017, 0x55e5415d, 0x23b7d921, 0x5b057be1, 0x5a20fb4b, 0xf40a4d03, 0xc0d159bf
.word 0x602b35bd, 0x680c2ec5, 0xd917d2e5, 0xd2d5857d, 0xac321078, 0xab9789cc, 0xed33795c, 0x5f65286c
.word 0xf6289290, 0x409c8ede, 0x53250e09, 0x5f2aad9a, 0xb2c9cfd7, 0x20ba0723, 0xb1f8d0c8, 0x36f481c4
.word 0xa8a608d1, 0x3e7f42a4, 0x20aa5371, 0x18c6aca8, 0xd36863c4, 0x34057674, 0x026e0d6c, 0x9bba5247
.word 0x1ac61426, 0x23b68916, 0x237f6cc4, 0x822970bd, 0xb57429e0, 0xbb081c17, 0xb2f399b4, 0x635b74de
.word 0x2c6f9a5b, 0xe37e2e94, 0x81273cbe, 0x67877a52, 0xdc9c3cfd, 0x52563fbc, 0x3a90a55a, 0xc928fd42
.word 0x96b604bf, 0x4a0352ce, 0xe8447c2b, 0xd07214ed, 0xf253095c, 0x16a45e90, 0xf199b8f7, 0x20d4c957
.word 0x4dea80a9, 0x9b8ef4ef, 0x4c4f8c54, 0xad37aa31, 0x60782b6f, 0xaf469cee, 0x445020da, 0xdbc759ee
.word 0x4015eaff, 0x00314827, 0x72003e7c, 0xfba161a9, 0x5b3f55e3, 0x9b5fdf0b, 0x3380c238, 0xad89d52b
.word 0x657c4c6d, 0xd341ef54, 0xef83472b, 0x884e769d, 0x0182ee79, 0x99f960b8, 0x5191db2a, 0xff8db7c3
.word 0x87892149, 0xc74918ff, 0xf96b16a4, 0x95c4a14d, 0xf8f45fa1, 0x107f635e, 0xabc9b3d2, 0x9093665c
.word 0x871d5365, 0xc8e3a817, 0x7a24892a, 0x7dcacd64, 0x2d26e05e, 0x2db113ac, 0x83071f87, 0xdd918595
.word 0xa4ee7141, 0xf6fcc30c, 0x722e54cf, 0x48701ef6, 0x837870c3, 0xf3f1af9e, 0x5944fc41, 0xd65660b7
.word 0xfe1395a9, 0xadb11394, 0x561cfb1e, 0xce8ac19d, 0x46e4c5e8, 0xddc0acff, 0x83b9b440, 0x965435df
.word 0x01dfcdca, 0x705e75ce, 0xb6701258, 0x3acaccaa, 0x2f7a8b81, 0xdabbcffb, 0x1fca0bdf, 0x5ff88eea
.word 0xde64c9dc, 0x60375bfe, 0xbee0e6ba, 0x2b84358e, 0x4ec0d9fd, 0x38f02a0a, 0xe51954f3, 0xaca47b45
.word 0x7547a7d5, 0x3242617d, 0x09999099, 0x9c5d253a, 0x44393887, 0xc09aae43, 0x27886516, 0x13682e4f
.word 0xc98a0dbb, 0xc530cebf, 0x6dcbd268, 0x57761b03, 0x1cc1c6a0, 0x7543a0a3, 0xb8b2843e, 0x605fde4e
.word 0xf3814bce, 0x268ffe5f, 0x87da2085, 0x17269bd8, 0x74814650, 0x0dd218af, 0x074de891, 0x24ccf75c
.word 0x9c8974d8, 0x909be420, 0xb413baf2, 0xc21d25f2, 0x78f9999d, 0x5d77652a, 0x9a732c64, 0x69c6948c
.word 0x5578d60b, 0x2c53d1d7, 0xf1f0a625, 0x9921ef53, 0xf464bf87, 0xe16cd459, 0x3bbaa592, 0x4753800b
.word 0x34db9661, 0xfab5a6bb, 0x5653d135, 0x27e51955, 0x265dd6a6, 0x03dc5ded, 0xae4b03e5, 0x54546d12
.word 0xd2a307ec, 0xf9c58816, 0x73b1a154, 0xd7edd1ba, 0x0b0de70e, 0xe9d9a05f, 0xbf7c0a5b, 0x566611f1
.word 0x3786bac2, 0xe8b72751, 0x7b8e3f5f, 0x7d0cc66f, 0x3d5245e2, 0x34e03a31, 0x89edaf08, 0x764a2f58
.word 0x187777cf, 0x9e672c47, 0x1e43a068, 0xa8a269a1, 0x748541ba, 0x6d33eaec, 0x4fda0450, 0x88cec577
.word 0x3819bcf6, 0x7cbf7e9b, 0x22538f10, 0xe3b09e9b, 0x0feac7cc, 0xa7c52971, 0x9c53e108, 0xc5a1957e
.word 0x1c7b24c9, 0x8b52fa50, 0x533bac48, 0xacc4a890, 0x976c0b91, 0x611374ea, 0x83a7534f, 0xb7081d31
.word 0xaa899f96, 0x461e27b1, 0xdb42fff0, 0x34c1bd37, 0x6d4d2029, 0xbc964bec, 0x3c5288af, 0x37c2c9d2
.word 0x15dbce05, 0x6b8cb441, 0x07f8d56a, 0xb9050be2, 0xdebbd447, 0x9ed509e7, 0xd72838c9, 0x57ebaa13
.word 0x7176f1c7, 0xc2327cc7, 0xa951bc29, 0x18b90884, 0x3ca0b632, 0xf371fd76, 0xae403998, 0x3ac892e9
.word 0xcd444919, 0xc1f3307b, 0x7f97cb7a, 0x7cf4e1f1, 0x676ccbee, 0xa84083a9, 0x1e1ea281, 0x880fb4dc
.word 0xaeebde4a, 0x22faec31, 0x09f352b0, 0x02822ff3, 0x30814fc0, 0xfe40aee4, 0xf40871d1, 0xac5007d8
.word 0x98ff1d43, 0x2481d5ed, 0x2598662f, 0x472f001b, 0x737458ee, 0x0720f90f, 0xd0451b10, 0x0d1888fa
.word 0x75638755, 0x36f7c9a4, 0x34108647, 0xcbd54741, 0x43f62ef4, 0xb09523ee, 0xccbe4954, 0xe010d23d
.word 0xe7313238, 0xb6f2f264, 0x192d8937, 0x17d1c49a, 0xaf918de6, 0x8c3664ed, 0x5ed72cbf, 0x65d24217
.word 0x03c4447a, 0x8931e300, 0xd1ef8bfd, 0x747b0812, 0x61924bec, 0xd8c091d5, 0xe7df9136, 0xfef94307
.word 0x64706e25, 0xeda708a5, 0xca3ad305, 0x50590e0f, 0xe3236849, 0xe31e6c3f, 0x4c49295f, 0xf292053a
.word 0x87feea1e, 0x3beec1ac, 0x501ded86, 0x5498db72, 0xbeae9eab, 0x25fd17db, 0xf4438a09, 0x44acaa6c
.word 0xf579570d, 0xe45cd9de, 0x42f35163, 0xa4e1e96c, 0xaf413516, 0x6e9fdf6f, 0x906ffd22, 0xeb755967
.word 0xa8f82428, 0x281a0324, 0x1aebdc25, 0x6f5b8775, 0x6285c9af, 0x2d459f09, 0x47e0c0af, 0xd4938836
.word 0x62f7c381, 0x4fe4ea5e, 0x616ed9ea, 0x2de6440c, 0xba30513c, 0xce191246, 0xca7d402e, 0x29c4eae2
.word 0x836587f8, 0x15d4585f, 0xdc2423f0, 0xd5ba2cf5, 0x18e218ef, 0xa66ae548, 0xf8aae467, 0x8c913c69
.word 0xc6d4b582, 0xdb04eae8, 0x3be0b947, 0x1d123cde, 0xedfd3521, 0xcab4895c, 0x4f1cd535, 0x322c836c
.word 0x9e391049, 0x02fee820, 0x655c2f5f, 0xbdb22365, 0xeaa3939e, 0x7b8ae4d4, 0xcc4fe0a9, 0x7524c5de
.word 0x14a5c7d3, 0xf505ba42, 0x111bd4db, 0x4e7d311d, 0x776766e1, 0x10dc6cb3, 0xa16f0ae2, 0x61076701
.word 0x29c98cfb, 0x14b273c8, 0xcc2dbff9, 0xe0ef47c4, 0x93cb6381, 0x64d2aac5, 0x61160c88, 0xc108ecff
.word 0x0e237b21, 0xdca46654, 0x28f46ce9, 0x6c074b9d, 0xdcc30342, 0xb96f526b, 0x5746af6b, 0x69a402c6
.word 0x5f3d847a, 0x1acbe9af, 0x383f8321, 0xab6eb261, 0xc7e31430, 0x366b9f6b, 0xd4da6a70, 0x3ee1c8cc
.word 0x298a6b11, 0x25985938, 0x2369a14d, 0x509e16d1, 0x9840dad7, 0xc556ea39, 0x64ea7103, 0xc2ce6ade
.word 0x6b961f07, 0x571f69e3, 0x9797049b, 0xd089af3c, 0x1907beb7, 0xf7ea1988, 0xba11bd5d, 0x356b950a
.word 0x67c31ecf, 0x88126f50, 0xa05e0261, 0x8fc15d38, 0x8b69f03e, 0x468b578f, 0x2a4527ba, 0xfe4902c3
.word 0x82c323b1, 0xf1a797b6, 0x97f7a9b1, 0x9fd4e94a, 0x6edde16b, 0xefb264fb, 0xf8c74f6a, 0xb3652511
.word 0x13ddc1b4, 0xda50f523, 0x7199098a, 0x67c953df, 0xea13a785, 0x2c48ea7b, 0x451efb03, 0x93701894
.word 0x53430890, 0xa43fc7d9, 0x9ed1c8d8, 0x69751951
.section .region_1,"aw",@progbits;
region_1:
.word 0x7e7df6c7, 0xbb3769ad, 0x5cfe5bb2, 0x177daf05, 0x89d74fbf, 0xee999840, 0xff72a374, 0x1c6fd5f1
.word 0x3022e814, 0x94678ad2, 0x43d9be1d, 0x45d7cb10, 0xb6b79c4f, 0xcc930e8b, 0xd590b468, 0xdc5b4638
.word 0x4030aa9c, 0xcf366a5e, 0xfa4d51df, 0xf3a016e1, 0x39a54e05, 0x5002c6c7, 0x418552a6, 0x27a80c4e
.word 0x6ca146b7, 0x7034d420, 0x9efd9963, 0x085e6c23, 0x87cbce7d, 0x3e427e61, 0xa6141f8c, 0x260417fb
.word 0x0013a059, 0x7d9fe0ba, 0x05a149f2, 0xb9a4205f, 0x8af2489c, 0x08d65f6a, 0x3ef56b57, 0x9d006542
.word 0x5ee8541e, 0x9d2dff18, 0xbcaca33c, 0xbc75bd0b, 0x8e5ca411, 0xde373482, 0x07180e50, 0x3bcef9fc
.word 0x0f03eb1f, 0xf95304f7, 0xf022e184, 0x0d3fd88c, 0x02742bb9, 0x80b14473, 0x70e9a345, 0x90390c3e
.word 0x06a8c946, 0x38472d8a, 0x02599282, 0x107358f6, 0xca2963aa, 0x11b9749e, 0x06e73a3d, 0x5455f255
.word 0x43d8c745, 0x9f88b209, 0x694a270c, 0xc3cafa33, 0x5f0a9da6, 0x19c724d0, 0xc6b71a52, 0x5616dae5
.word 0x15c467b3, 0x5d74730b, 0x83e5cebc, 0x2f1c76b0, 0xc8cf4adf, 0xc70d1188, 0x4f7bbf29, 0x2acabc7c
.word 0x6447aad0, 0x4177fa80, 0x66d21660, 0x1396442b, 0x7943807c, 0x73e5d505, 0x0f9e62e4, 0xf4d13880
.word 0xdea6761d, 0x9a911524, 0xde5ff57b, 0xf18dec84, 0x5921b24d, 0xf204741f, 0x9ed3f1d0, 0x651f331b
.word 0x0eb2084c, 0xaac0c2ec, 0xf5d36638, 0x749282b4, 0x122abd86, 0x73bb0bd7, 0xd449daf1, 0x33ae27d7
.word 0xf9683daa, 0xaee72191, 0x07076cd2, 0x0f72219f, 0x0fb548d4, 0xb13190f8, 0x788813b6, 0x2ac12c3c
.word 0x462414d9, 0xf4350bd8, 0x06233848, 0x960838e7, 0x17c6bac5, 0x09918394, 0x560fc413, 0x543f4912
.word 0x2c221a2d, 0x1c2ecd5f, 0xe0380507, 0x01f6a9e4, 0x55bb1198, 0xfc0b97ea, 0xb82115cd, 0xfd91c8f4
.word 0xbd394304, 0xc8dee4d4, 0xadc54e33, 0xd7991add, 0xb4741821, 0x2bc30c69, 0x335d532c, 0xf481ea5d
.word 0x68ce37d9, 0xc79f4e7a, 0x3ff2cdcb, 0xc65bc6d4, 0xcab20678, 0xcf2c44db, 0xb82dec9f, 0xea5a89e9
.word 0x2a514660, 0xdba396b8, 0x944e496f, 0x94f3c221, 0x4bceb23d, 0x421d0ec0, 0x219a5887, 0xf7e989f5
.word 0xb6f9b352, 0x188be9aa, 0x10da9c41, 0x62a41505, 0x2c7982a3, 0x6825c0d5, 0xfd7ffc99, 0x7e117d78
.word 0xd9e6e9f7, 0x155fee62, 0xd622a28f, 0x9866f0a5, 0x8eb2b351, 0xc51d8ec6, 0x5a12e16e, 0x7498cadf
.word 0xa2bb807c, 0x3480a409, 0xd263dea7, 0x7266b9d8, 0x0f0c118b, 0x640ebf7d, 0xd070c6a5, 0x24853dad
.word 0x8a0401c9, 0x1dc52add, 0x9f419fcf, 0x11e07794, 0x9a76cf4b, 0x91b19c77, 0x033d7e76, 0x7ebdcda1
.word 0x16df46c2, 0xfc22c95f, 0x12f5c7ac, 0xc3c6e78a, 0x284833b5, 0x76fa69ef, 0x699b3141, 0xfab95791
.word 0xb62600ab, 0xf14d81b5, 0x57fa2f48, 0xcea0b3c9, 0xed2e19ea, 0x9f36a4db, 0x32b1c19c, 0x4d8a98b3
.word 0xa44a63e8, 0x74710ffa, 0x8c2b1bf6, 0x1099b824, 0xd44e3e3a, 0x9d97a177, 0x16baaeb2, 0x5fa6d75b
.word 0x3e583c50, 0x7611808b, 0x3e49b649, 0x704b039c, 0x8535426f, 0x3095ecdd, 0x065bfc43, 0xb8ef7d50
.word 0x5a38f38c, 0x64b9ebd7, 0xc0f2c735, 0x057a439a, 0x3b0683a1, 0x35308e96, 0x05788f8d, 0x0bfc0311
.word 0xb29f342f, 0x7edaa6d9, 0xdeaec38b, 0x4cdf8403, 0x737ed3bc, 0x8d0c805d, 0x5941593b, 0x8ea8251e
.word 0xcbabcb20, 0xa070a100, 0xc424765c, 0xa280b38e, 0x51f55efa, 0x03ea87d5, 0xa093d2f6, 0xe086d138
.word 0xece9e4bd, 0x4e05c177, 0xc0c2f88d, 0xf4e3fbdb, 0x02aa3449, 0x232b81af, 0xf9f991cf, 0x11dce6f9
.word 0x9b4f59ea, 0x83272e91, 0x4b0c0bbe, 0xbda4d8a0, 0xdf60c050, 0x41c61410, 0xe1e78308, 0xc3eedc02
.word 0x647e7b24, 0x2a4d9146, 0xda129dc3, 0x8b3f5498, 0xbe758a11, 0xfbab2129, 0x554b111f, 0xe6812bbc
.word 0x1dd87588, 0xb0f6e464, 0x12038b9a, 0x66dc60ae, 0x2660e18a, 0x8f5d73ff, 0x4be3a60b, 0x0a9a4dea
.word 0x6ab72c0b, 0x5ee961aa, 0x8ce8e178, 0x538bd7a2, 0xabe0f6ec, 0xbd417c5b, 0x275bddee, 0x7cbea152
.word 0x82f6f884, 0x5f90bd5d, 0x442df768, 0x5c1c4b53, 0x79ed3225, 0xb1cb347e, 0x4212d17d, 0x88c9501e
.word 0x6dfe283e, 0x90489b0e, 0x499c7e33, 0x4f804eef, 0x513691e4, 0xdc3aac8d, 0x9a7dc802, 0x0d8ccbbc
.word 0x78acefcd, 0xa2e25a5e, 0x53d19b67, 0xbc558515, 0x62dea142, 0xc56bb525, 0xa0f77378, 0xd8d35477
.word 0xfc8b97fc, 0x49804e03, 0xc7d9c392, 0xb4502713, 0xd3365410, 0xdc637dec, 0x545f0f40, 0x37f47384
.word 0xb3394cbc, 0x08cbdbcd, 0x37ca1731, 0x60658e89, 0x735b14ba, 0x5286d6f1, 0x40a90c47, 0x0a9f1ad3
.word 0xe24d4a1c, 0x0dced3dc, 0x62090dc8, 0xfba0595c, 0x4312a47e, 0x970a91ac, 0x703e89a7, 0x8e55b0eb
.word 0x7ace4615, 0xab940648, 0xef19dc73, 0xcee2ec6e, 0xb02dc4f5, 0xdeed8900, 0xa7be2c27, 0x74e0e5d0
.word 0xeca2f320, 0x64b05a55, 0xd21213b2, 0xb35e61ba, 0x1160002b, 0x52576fb5, 0x52b37ae3, 0xd0065cef
.word 0x4b6c4bce, 0x36a6b37b, 0x59ba0be1, 0x0004bc80, 0x08c66d9a, 0xaf3f2401, 0xa4f4c494, 0xbe41ea2a
.word 0xc288177d, 0x71939769, 0x351f634f, 0x6efa1f56, 0x453fdd42, 0x2127061e, 0x35a8c38f, 0x62fc0b2c
.word 0x8ca1a02e, 0x788cd612, 0x6d1668e7, 0xa84a43bb, 0x9ec9d683, 0x596d0ec1, 0x5ad37925, 0x3fd17c5c
.word 0x4234e9ce, 0x1e34a058, 0xc8e06bf8, 0x0c994242, 0xfcf4266d, 0xd6f798ba, 0xe1afc994, 0x9260cdfa
.word 0x7742332d, 0xe86a596f, 0x60b1207a, 0x790e4b85, 0xe58239bb, 0x2a4ece63, 0x3d6059c0, 0x0441aa15
.word 0x19d52dac, 0x5c615db2, 0x5c1bdecc, 0x707d9795, 0x0c4df8c5, 0x9eb9a5b7, 0xd1b6d545, 0x147b21f8
.word 0xd951a4cc, 0x031d1896, 0x128b6536, 0xdb5b77d5, 0x2f504817, 0x5c1fb06b, 0xeaefd608, 0xd724b154
.word 0x5cda7cca, 0x68079bec, 0xfdcdbcf5, 0xda7970f7, 0x6e3ff832, 0x33b53e45, 0x63cc6db6, 0xdc97d4c2
.word 0x8a9be5f1, 0x34f480dd, 0x78220ec5, 0x919a5096, 0x04fef7c9, 0x10abe367, 0xdeade65d, 0x47e84707
.word 0xf8ffdc2c, 0xe1cd775f, 0x5b8ded42, 0x7036091c, 0x56eb766e, 0x84356eef, 0xf3caef12, 0xe9ba84c4
.word 0x1400e819, 0xa6997378, 0xab438a26, 0x95bafb7d, 0x58df9138, 0xf4d9e25a, 0x8e790401, 0x7ab52a05
.word 0x6def346a, 0xbc70f46e, 0xf16f7289, 0xc0ff4e1c, 0xe679693a, 0x3a691caa, 0x589be2a4, 0xe9d38bee
.word 0x9a539a2e, 0xeeb4772a, 0xbc85acd2, 0x6d9e42f4, 0x01a2468c, 0x7a8e559c, 0xc251fbd8, 0x88bd5a21
.word 0x3b2538f0, 0xfc3ba87c, 0x2764aa1a, 0x52f48b00, 0xcd16d063, 0x34b5c16b, 0xbfe146ec, 0x8d8e84f5
.word 0xb7032ee5, 0x4e70aa5b, 0x7637322b, 0xaeeaadb3, 0xc49c8c0f, 0x0250cb9b, 0xb7cef83d, 0xb285f049
.word 0xf5c3e198, 0x197ff367, 0xa3a1d4d8, 0x499b3923, 0x0ca22268, 0x4e2dcd68, 0x259f169c, 0x04fb3e29
.word 0xa3cff4a1, 0x006bb72a, 0x813b4c5b, 0xc59c8f74, 0x1bc0e6b6, 0x4ad4e695, 0x4b10d075, 0x1f2506c6
.word 0xc6d193cd, 0x20d9bbfa, 0x5d1e8941, 0x36a318dd, 0x49a56a09, 0x46b14862, 0x53ebb2c9, 0x462d7e4e
.word 0xd1fadff5, 0xb1750a52, 0x3656afd1, 0xfa6c0a9d, 0x61cb1b0d, 0x07d12487, 0x6345966d, 0x48d75019
.word 0x389eb325, 0xa498ff8a, 0x054be184, 0x7edd45c7
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x27, x31, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x7, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x7, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x7, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x7, x9, ecall_handler
                  li x9, 0x1
                  beq x7, x9, instr_fault_handler
                  li x9, 0x5
                  beq x7, x9, load_fault_handler
                  li x9, 0x7
                  beq x7, x9, store_fault_handler
                  li x9, 0xc
                  beq x7, x9, pt_fault_handler
                  li x9, 0xd
                  beq x7, x9, pt_fault_handler
                  li x9, 0xf
                  beq x7, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x31, x27, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
