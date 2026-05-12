.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x8, kernel_stack_end

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
                  li x0, 0x5345470f
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x0
                  li x6, 0x6
                  li x7, 0xfd32b4e3
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x1
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0xffa9af93
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0xc
                  li x18, 0x80000000
                  li x19, 0x3dcb6b6a
                  li x20, 0xf9ed35b5
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xb
                  li x24, 0x2
                  li x25, 0xc34fdaf7
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x7cefdaff
                  li x29, 0x80000000
                  li x30, 0x528ef1e3
                  li x31, 0xfe6eac9e
                  la x5, user_stack_end
main:             la           sp, region_0+553 #start riscv_load_store_rand_instr_stream_0
                  sub          t5, s7, t5
                  sb           s4, -79(sp)
                  sh           a7, -247(sp)
                  slli         a3, s9, 11
                  sub          ra, t0, a2
                  lb           s11, 274(sp)
                  addi         a6, s2, -66
                  auipc        a1, 208909
                  lbu          s9, 592(sp)
                  sra          t1, s9, s7
                  lh           s5, 409(sp)
                  lbu          a5, 206(sp)
                  lb           s1, 862(sp)
                  srl          a1, s10, a4
                  xor          a3, t6, t2
                  sltiu        a1, t6, 1186
                  auipc        a6, 641475
                  nop
                  addi         zero, s5, 268
                  lbu          s8, 152(sp)
                  sb           t0, 58(sp)
                  xor          zero, t6, t2
                  lhu          s8, 663(sp)
                  nop
                  srli         t3, s6, 15
                  srai         s6, a0, 18
                  lbu          a5, 98(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+886 #start riscv_load_store_hazard_instr_stream_0
                  srai         a2, t6, 8
                  lw           t6, 1050(t4)
                  lbu          sp, 1050(t4)
                  sw           s9, 1050(t4)
                  sb           s0, 1050(t4)
                  lbu          a1, 1050(t4)
                  sb           s1, 1050(t4)
                  sh           t5, 1050(t4)
                  lh           s3, 1050(t4)
                  lh           ra, 1050(t4)
                  lb           s4, 1050(t4)
                  lbu          sp, 1050(t4)
                  sw           t0, 1050(t4)
                  lh           s5, 1050(t4)
                  lbu          zero, 1050(t4)
                  lb           s1, -245(t4)
                  sb           a6, -245(t4)
                  lb           gp, -245(t4)
                  lb           t6, -245(t4)
                  lb           sp, -245(t4) #end riscv_load_store_hazard_instr_stream_0
                  la           s6, region_0+1875 #start load_store_instr_stream_1
                  la           a2, region_0+1332 #start load_store_instr_stream_3
                  la           s8, region_0+1532 #start load_store_instr_stream_4
                  la           a1, region_0+512 #start load_store_instr_stream_0
                  la           a3, region_0+1060 #start load_store_instr_stream_2
                  lbu          s11, 123(a1)
                  lb           t1, -1(a2)
                  lbu          s9, -189(a1)
                  sb           t2, -30(s6)
                  lbu          tp, -105(a3)
                  lb           s3, 76(s8)
                  lbu          t4, -243(a1)
                  sb           s0, -77(s8)
                  lb           a0, -173(s8)
                  lbu          zero, 52(s6)
                  lb           a7, -60(a2)
                  sb           a6, 199(a3)
                  lbu          a5, 204(a2)
                  lbu          s4, 190(a1)
                  lh           ra, -30(a3)
                  lb           s1, -73(a3)
                  sb           s6, 51(s6)
                  lh           sp, 222(s8)
                  lb           t3, -209(a3)
                  lh           t2, -220(s8)
                  lb           t4, 46(s6)
                  lb           t5, 10(a3) #end load_store_instr_stream_2
                  lb           s1, 177(a2)
                  lh           t2, 168(a2)
                  lbu          a6, -189(a2)
                  lb           t1, 114(a1)
                  sb           s8, -237(s8) #end load_store_instr_stream_4
                  lh           t5, 54(a2) #end load_store_instr_stream_3
                  sb           t4, 204(a1)
                  lbu          a7, -24(s6) #end load_store_instr_stream_1
                  lb           s2, -228(a1) #end load_store_instr_stream_0
                  lui          gp, 694337
                  blt          a3, s7, 18f
                  slti         s10, t5, 1897
                  andi         gp, s5, 21
                  srli         s2, sp, 26
                  srli         t1, t5, 23
                  slt          s11, a3, s4
                  sub          ra, t2, s10
                  slt          a6, s7, s9
                  la           s5, sub_1
                  xori         s10, ra, 1840
                  sub          t5, s0, zero
                  sub          t1, s3, a3
                  lui          t3, 108178
                  addi         s5, s5, 406
                  ori          t2, s6, -1807
main_j2:          jalr         t6, s5, -405 #jump main -> sub_1
                  or           s1, a3, t4
                  blt          s10, t3, 15f
                  sltu         s5, s9, s9
                  slli         s9, s9, 16
                  bne          zero, zero, 17f
                  add          a7, t5, s1
15:               sra          t1, tp, s0
                  and          zero, sp, zero
17:               bne          t0, s4, 21f
18:               or           a1, a2, s4
                  blt          s0, a4, 33f
                  beq          s4, tp, 38f
21:               sltiu        a1, s7, -1432
                  sub          s10, s5, zero
                  or           s2, t5, s11
                  xor          t6, s9, a7
                  la           s1, sub_2
                  nop
                  nop
                  srai         t3, s0, 30
                  andi         t6, a0, 1358
                  addi         s1, s1, 786
                  xor          t3, s0, gp
main_j1:          jalr         t6, s1, -786 #jump main -> sub_2
                  srl          s6, a1, gp
                  sltu         a3, t3, s0
                  or           t6, t6, s6
                  srai         s7, s3, 20
                  srl          a7, s2, s10
                  sltiu        s5, a3, 1170
                  lui          t1, 115122
                  sltu         s10, s11, a1
33:               lui          s10, 959215
                  bne          t0, tp, 51f
                  addi         tp, s0, 1118
                  bne          a5, s2, 42f
                  lui          a1, 176602
38:               srl          sp, s11, s11
                  addi         tp, a4, 954
                  slti         a1, s11, -393
                  sll          s5, a7, a5
42:               and          s4, a3, s5
                  beq          gp, a0, 52f
                  srl          s5, t2, sp
                  xor          s9, s1, s1
                  srai         a1, s3, 30
                  sub          t4, t5, s6
                  nop
                  srl          s11, s2, a7
                  beq          a6, s11, 51f
51:               nop
52:               sub          s7, s6, t2
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         t0, t0, -20
                  xori         a6, t5, -1805
                  srai         a3, t1, 2
                  sub          a1, s10, a2
                  sub          s11, t0, s11
                  sltiu        a1, a3, 661
                  andi         s11, s0, 90
                  sltu         s4, t6, a6
                  sw           t6, 4(t0)
                  sub          s3, t3, s4
                  xor          a3, s9, t5
                  la           s9, region_1+1901 #start riscv_load_store_rand_instr_stream_0
                  slti         s10, t3, 1495
                  lbu          s8, -24(s9)
                  lbu          a3, 58(s9)
                  sb           a5, 49(s9)
                  srl          a1, s9, t3
                  lbu          s5, 64(s9)
                  lui          t5, 880961
                  slt          sp, s0, a2
                  lh           a3, -41(s9)
                  sltiu        s4, s7, -1331
                  slti         s2, t0, -1823
                  lbu          tp, -58(s9)
                  sb           s3, -21(s9)
                  lhu          s11, -19(s9)
                  lbu          s2, 29(s9)
                  sb           s6, -62(s9)
                  sb           s3, 17(s9)
                  sra          s6, a3, s7
                  srl          a6, t5, t1
                  xor          ra, a2, t6
                  srl          sp, t2, a5
                  sll          a2, ra, t4
                  slli         tp, t0, 17
                  lbu          s3, -54(s9)
                  slti         a3, t5, 165
                  sb           t3, -58(s9)
                  lh           a7, 27(s9)
                  sub          s8, t2, t4
                  lb           s7, 27(s9)
                  andi         a5, s9, -526
                  sub          s7, s11, a6
                  slti         a0, gp, -1796
                  lb           tp, -6(s9) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_0+184 #start load_store_instr_stream_0
                  la           a7, region_0+1849 #start load_store_instr_stream_1
                  la           s5, region_0+1021 #start load_store_instr_stream_3
                  lh           s11, -46(s9)
                  la           a5, region_0+1634 #start load_store_instr_stream_2
                  sb           s11, 267(a5)
                  sb           gp, 64(a7)
                  lbu          s11, 237(s5)
                  lb           t6, -315(a5)
                  lw           t5, -558(a5)
                  lh           s4, 29(s5)
                  lbu          s11, 58(a7)
                  sb           gp, 221(a5)
                  lb           a1, 44(a7)
                  lbu          s10, -1602(a5)
                  lb           gp, 64(a7)
                  lh           a2, 161(s5)
                  lh           sp, 52(s9)
                  lbu          a2, -25(s5)
                  lb           a1, 206(s5)
                  sb           t5, 15(s9)
                  sh           t0, -7(a7)
                  lbu          s8, 56(a7)
                  lhu          a1, 241(s5)
                  sw           t0, 40(s9)
                  lbu          t3, 26(a7)
                  lh           a2, -1122(a5) #end load_store_instr_stream_2
                  lbu          t4, 24(a7)
                  lbu          gp, 43(s9)
                  lhu          s6, -71(s5)
                  lhu          a3, -41(a7)
                  lb           t6, 35(s9)
                  sb           t6, -30(a7) #end load_store_instr_stream_1
                  lh           a2, -123(s5) #end load_store_instr_stream_3
                  sh           t6, -56(s9) #end load_store_instr_stream_0
                  la           sp, region_0+586 #start riscv_load_store_rand_instr_stream_1
                  sw           sp, 854(sp)
                  lb           s7, 599(sp)
                  xor          t2, s6, ra
                  sh           a6, 726(sp)
                  and          gp, a5, s11
                  lbu          s10, 665(sp)
                  lw           t2, 978(sp)
                  addi         t4, s7, 342
                  nop
                  lb           a2, 1017(sp)
                  andi         a3, t1, 745
                  sh           s7, 260(sp)
                  slt          a7, s4, s5
                  lb           t1, 1029(sp)
                  slti         a0, t3, 195
                  lb           s5, 147(sp)
                  lb           s5, 519(sp)
                  sb           a0, 379(sp)
                  lb           ra, -293(sp)
                  sb           s3, -476(sp)
                  sh           sp, 346(sp)
                  sb           t2, -41(sp)
                  slt          s10, a7, s4
                  lbu          t4, 889(sp)
                  sh           s6, -464(sp)
                  nop
                  sltiu        a5, s7, -1566
                  sh           a6, 1380(sp)
                  sb           sp, -499(sp)
                  sb           s0, 763(sp)
                  lb           a5, -401(sp)
                  sh           s8, -122(sp)
                  sb           t4, 1218(sp)
                  sb           tp, 1194(sp)
                  sb           s0, 343(sp)
                  lb           s6, 429(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_0+1251 #start load_store_instr_stream_2
                  la           s11, region_0+238 #start load_store_instr_stream_0
                  lh           t3, -2(s11)
                  lbu          gp, -936(a1)
                  la           a6, region_0+268 #start load_store_instr_stream_1
                  lb           t3, -414(a1)
                  lb           s6, 15(s11)
                  sh           t5, -6(a6)
                  sh           s1, -1071(a1)
                  lw           t3, -4(a6)
                  sb           a1, 13(s11)
                  lb           a3, -1231(a1)
                  sb           gp, -176(a1)
                  lbu          a0, -13(a6)
                  lb           a3, -487(a1)
                  sh           s7, -4(s11)
                  lb           t6, 7(a6)
                  lbu          a2, 13(a6) #end load_store_instr_stream_1
                  lbu          t2, 384(a1) #end load_store_instr_stream_2
                  lbu          a2, 15(s11)
                  sb           s7, -8(s11)
                  lh           s4, -12(s11) #end load_store_instr_stream_0
                  la           t2, region_0+1776 #start riscv_load_store_hazard_instr_stream_0
                  sb           s5, -157(t2)
                  lbu          s1, -173(t2)
                  lb           zero, 150(t2)
                  lh           a2, 150(t2)
                  lb           a3, 15(t2)
                  lbu          s7, 177(t2)
                  sh           t4, -174(t2)
                  srl          s8, s6, s6
                  sh           s7, -240(t2)
                  sw           a7, -240(t2)
                  lh           gp, -240(t2)
                  lw           s4, -148(t2) #end riscv_load_store_hazard_instr_stream_0
                  andi         a0, s10, 903
                  blt          s3, t2, 17f
                  xori         t1, gp, 1395
                  slt          zero, s0, s0
                  or           t4, a7, s4
                  lui          t4, 6539
                  sub          s7, s0, a0
                  srai         t2, s8, 8
                  auipc        t5, 509796
                  xori         sp, a5, 1861
                  bltu         ra, s6, 23f
                  slli         s10, ra, 29
                  sltiu        a3, t2, -1522
                  blt          a1, t1, 15f
                  add          s3, t3, s7
15:               sltiu        a1, t4, 1943
                  xor          s11, sp, s5
17:               sltiu        ra, a6, -253
                  slt          a3, s1, s11
                  sltu         s3, s11, a2
                  srai         ra, s11, 20
                  slti         a0, ra, 697
                  slti         a6, gp, -1033
23:               beq          ra, a3, 26f
                  xori         t5, t3, 302
                  sll          gp, s1, t3
26:               and          a7, s9, a0
                  bne          t3, t2, 28f
28:               bge          a1, s1, 36f
                  nop
                  nop
                  blt          zero, s1, 43f
                  or           a2, t6, a7
                  sra          a0, t0, s11
                  sub          zero, s8, t4
                  srai         gp, a1, 14
36:               addi         t2, t5, 1630
                  srli         gp, s9, 1
                  beq          t6, s4, 46f
                  srl          s1, gp, a4
                  slli         s2, a0, 27
                  and          s11, t4, a6
                  srai         zero, a3, 15
43:               sltiu        s10, t1, -1388
                  sll          s3, sp, t5
                  or           a0, t4, t3
46:               addi         t1, s8, 1060
                  sra          s4, s4, t6
                  slt          zero, s10, tp
                  bltu         sp, a4, 56f
                  srli         s1, a2, 23
                  blt          s7, t4, 59f
                  sltu         a6, tp, s0
                  addi         gp, t4, -927
                  sltu         zero, a1, a4
                  beq          s11, tp, 59f
56:               slt          gp, a6, a0
                  bgeu         s1, s11, 58f
58:               beq          a5, s11, 60f
59:               and          a6, s2, s11
60:               or           a3, t2, t3
                  blt          s0, s9, 76f
                  addi         s6, ra, -1951
                  xori         tp, s7, 1505
                  or           s3, a0, t1
                  bltu         s5, t4, 74f
                  slt          ra, s5, a2
                  slti         s7, gp, 1757
                  beq          s8, a5, 81f
                  nop
                  ori          t1, s1, 1519
                  sub          s8, a6, gp
                  srl          a7, s10, t4
                  add          a0, s6, a2
74:               or           a1, s9, a1
                  auipc        s7, 129105
76:               sltu         t4, a4, s4
                  slti         t5, t3, -61
                  srl          t1, a1, t5
                  sub          s11, t5, t0
                  slti         a6, zero, -1822
81:               slli         sp, a1, 0
                  ori          a2, s2, -396
                  sltiu        a0, s5, -831
                  bltu         t2, t5, 102f
                  addi         a6, gp, -1791
                  sll          s2, s2, a1
                  auipc        t2, 128777
                  slti         t6, a4, 835
                  bgeu         gp, a6, 90f
90:               slli         zero, t6, 15
                  sra          a3, a7, sp
                  beq          s2, t0, 106f
                  srl          a0, s7, s3
                  bne          a2, ra, 102f
                  xori         s11, s5, -979
                  sra          a3, a7, s8
                  slti         a6, tp, -1986
                  sra          t2, s11, a4
                  srai         s3, s2, 3
                  andi         a0, tp, 1421
                  srai         t2, zero, 2
102:              bltu         s8, a2, 112f
                  sra          s8, a5, s8
                  srli         a2, s2, 8
                  bge          t5, a5, 125f
106:              add          s9, s4, a2
                  bltu         s3, s3, 112f
                  srli         s7, t3, 1
                  xori         a0, t2, 1946
                  sra          t5, a0, t0
                  bge          a2, s1, 129f
112:              sltiu        s9, s2, -1679
                  nop
                  srl          s7, t5, s5
                  auipc        t5, 880372
                  bge          s10, s5, 129f
                  sub          s11, tp, s6
                  auipc        s8, 915567
                  la           sp, region_1+384 #start riscv_load_store_hazard_instr_stream_1
                  lb           s8, -16(sp)
                  lh           a6, -16(sp)
                  sb           s3, -6(sp)
                  sh           s4, -6(sp)
                  lhu          s10, -6(sp)
                  sb           zero, 6(sp)
                  addi         s4, t3, -1082
                  sw           a3, -16(sp)
                  slli         a7, gp, 24
                  lb           t2, -16(sp)
                  lb           s3, -16(sp)
                  sb           s9, -6(sp)
                  srl          a2, s10, tp
                  lbu          a3, -15(sp) #end riscv_load_store_hazard_instr_stream_1
                  sltu         s11, s9, s0
                  sub          s4, a0, a0
                  addi         t5, t6, 1201
                  sub          t4, s6, a7
                  ori          s6, a7, 1588
                  bgeu         tp, gp, 139f
125:              and          t6, t5, a2
                  sub          a1, s0, zero
                  sra          t6, a4, t2
                  beq          t6, a3, 148f
129:              lui          a5, 446084
                  auipc        t1, 158341
                  bgeu         tp, s11, 137f
                  sub          s11, t0, ra
                  beq          s5, a3, 148f
                  xori         gp, a6, -1611
                  bltu         t4, a7, 155f
                  auipc        zero, 264203
137:              and          a6, s6, s10
                  bgeu         a4, s9, 147f
139:              srai         a6, a2, 9
                  srl          t2, s8, s0
                  xor          sp, sp, t4
                  bge          s4, s6, 160f
                  sub          gp, s3, s8
                  sub          s11, a5, s8
                  sltiu        s9, t2, -477
                  bne          gp, s7, 166f
147:              beq          s7, t1, 152f
148:              bne          s3, t1, 155f
                  bltu         s2, t2, 169f
                  srai         t1, t4, 4
                  slt          s2, sp, gp
152:              ori          t5, s9, -1301
                  srli         t5, a6, 7
                  xori         ra, a1, -1747
155:              bgeu         s11, a0, 168f
                  slli         s9, t4, 2
                  bltu         gp, s3, 170f
                  addi         a7, s8, -1272
                  bne          tp, s11, 171f
160:              sltiu        s1, a4, 44
                  blt          t6, s7, 169f
                  srl          s4, a0, s9
                  slti         sp, a7, 979
                  sltu         s9, a7, sp
                  add          a7, a1, zero
166:              bltu         t3, zero, 168f
                  bne          s5, a1, 175f
168:              slli         t5, s1, 17
169:              ori          s5, s10, 1100
170:              srl          a0, a4, s7
171:              xori         t4, sp, 748
                  auipc        s7, 875595
                  xori         s4, t2, 287
                  slli         s1, t3, 30
175:              bgeu         gp, sp, 190f
                  bne          s2, t1, 191f
                  andi         t3, s0, -874
                  slti         ra, zero, -1941
                  addi         zero, t3, 1410
                  sltiu        a5, a7, 627
                  blt          s3, t2, 201f
                  sub          a2, s9, s0
                  bltu         s4, s6, 184f
184:              srl          t6, a0, s9
                  xori         a7, s9, 1273
                  bne          t6, a4, 199f
                  beq          s9, s7, 188f
188:              and          a1, s0, s5
                  slti         gp, ra, -591
190:              bgeu         a7, t1, 193f
191:              slti         t1, ra, 141
                  lui          s1, 28342
193:              slti         a2, s0, -1032
                  and          sp, s3, a6
                  srai         t3, gp, 25
                  xori         s4, a5, -1090
                  and          s3, s6, a0
                  bne          sp, gp, 214f
199:              nop
                  srl          s3, s9, zero
201:              nop
                  blt          a6, s9, 210f
                  bne          ra, t3, 218f
                  srl          t2, a1, s6
                  add          t4, s3, a7
                  sll          s10, t2, s3
                  xor          a0, s1, t2
                  and          s7, s2, s11
                  srli         s7, a0, 30
210:              sltu         s11, a1, a2
                  andi         a0, s9, 661
                  add          s8, s9, a5
                  bgeu         s2, s11, 227f
214:              addi         s3, t4, 216
                  slti         sp, a6, 1706
                  srli         t3, tp, 29
                  and          t2, s8, a2
218:              beq          a5, s1, 222f
                  sub          t5, s6, t1
                  beq          a5, s0, 222f
                  srli         s7, t3, 5
222:              xor          s2, s7, a0
                  nop
                  lui          a5, 273269
                  srli         s4, t0, 9
                  xor          s10, s11, zero
227:              or           zero, s8, s5
                  blt          s9, a6, 229f
229:              addi         s8, gp, -1859
                  add          a2, tp, sp
                  andi         t4, s7, 1252
                  sltiu        ra, s10, 2018
                  sltu         tp, a2, t0
                  add          tp, s10, t2
                  beq          ra, t5, 243f
                  srli         t4, t3, 0
                  or           a3, t5, s10
                  ori          s5, s4, -1
                  xori         s3, s2, 428
                  slli         t1, gp, 3
                  and          a1, s0, sp
                  ori          t1, t4, 766
243:              and          s6, ra, tp
                  bltu         s5, a2, 262f
                  slti         a0, s1, -201
                  beq          a2, s10, 256f
                  xor          a6, a5, gp
                  nop
                  or           s6, t4, s5
                  sra          a1, t4, a5
                  sll          t4, s9, s8
                  srl          s3, t5, a0
                  or           zero, s3, t5
                  lui          s2, 409509
                  sltiu        t3, t3, -238
256:              slt          t2, a4, s0
                  addi         ra, s2, -1977
                  nop
                  ori          a7, s8, -1446
                  xori         a5, s10, -825
                  srai         a2, a3, 0
262:              srl          ra, s1, t3
                  sltiu        t3, t5, -561
                  sra          s5, s3, s1
                  bge          t1, s4, 271f
                  andi         a6, t4, 44
                  blt          t0, t6, 268f
268:              sll          s6, t5, a2
                  srli         t4, s3, 15
                  slti         s11, a1, -734
271:              or           s4, a7, t1
                  beq          a5, t6, 281f
                  xor          a0, a7, ra
                  sltu         gp, gp, ra
                  auipc        s1, 772552
                  srl          s5, s10, t6
                  and          sp, tp, s8
                  or           s5, s2, a6
                  bltu         sp, s8, 283f
                  ori          a5, s0, 1944
281:              bge          t6, a3, 283f
                  slti         s5, t4, 1083
283:              ori          ra, a5, 417
                  slti         a3, a4, 1216
                  lw           t6, 4(t0)
                  slt          s10, s2, t1
                  xori         s7, gp, 1571
                  sltu         a6, s8, s7
                  sra          t2, s6, s6
                  srli         a0, a5, 22
                  addi         t0, t0, 20
                  lui          s9, 457397
460:              addi x27, x31, 0
460:              jalr x27, x27, 0
sub_2:            slti         a2, s0, 811
                  sll          tp, t6, s2
                  bne          t2, tp, sub_2_stack_p
sub_2_stack_p:    addi         t0, t0, -64
                  sltu         t5, a3, ra
                  sltiu        t4, t6, -1330
                  sltiu        t5, s2, 1393
                  sw           t6, 4(t0)
                  sltu         t5, a5, t4
                  srai         s7, s8, 15
                  lui          a0, 462511
                  srai         a5, t3, 28
                  xor          s4, a2, s2
                  la           s10, region_1+793 #start load_store_instr_stream_1
                  sh           t3, -97(s10)
                  la           t6, region_1+1404 #start load_store_instr_stream_0
                  lb           s4, 83(t6)
                  sh           zero, 175(s10)
                  sw           s3, 208(t6)
                  lbu          s6, 46(s10)
                  lbu          t3, 102(t6)
                  lbu          a0, 23(t6)
                  lhu          s1, 129(s10)
                  lbu          s11, 244(s10)
                  lw           t5, -117(s10)
                  sb           tp, 205(t6)
                  lb           s5, -238(s10)
                  lhu          gp, 152(t6)
                  sb           s7, -111(s10)
                  sb           s11, -29(t6)
                  lb           s7, 243(s10)
                  lb           a2, 215(t6)
                  sb           t6, -98(s10) #end load_store_instr_stream_1
                  lb           s4, -229(t6)
                  lb           a6, 141(t6) #end load_store_instr_stream_0
                  la           s5, region_1+224 #start riscv_load_store_rand_instr_stream_0
                  andi         s4, a5, 877
                  addi         s7, a5, -1227
                  sub          tp, s2, s7
                  sh           s8, -12(s5)
                  lbu          zero, -1(s5)
                  sh           t2, -14(s5)
                  lui          s4, 481007
                  sb           t0, -4(s5)
                  or           a0, s8, s8
                  lhu          ra, -10(s5)
                  addi         s2, s7, 276
                  sb           s10, -5(s5)
                  lbu          a6, 7(s5)
                  srl          t2, a0, s4
                  and          s8, s4, s5
                  lbu          a6, 2(s5)
                  lbu          s1, -7(s5)
                  sh           s1, 8(s5)
                  or           sp, a6, s4
                  slt          s8, t3, s0
                  lhu          s11, 6(s5)
                  sb           t5, 3(s5)
                  lb           t1, 7(s5)
                  srai         tp, a4, 10
                  lhu          t3, 12(s5)
                  add          t2, a2, a5
                  lh           s8, 12(s5)
                  slti         a3, s10, -224
                  sb           a3, -5(s5)
                  sh           s0, 2(s5)
                  sltu         s10, a0, t3
                  sb           t6, 9(s5)
                  lbu          s11, 13(s5)
                  lbu          s9, 12(s5)
                  lb           a7, -6(s5) #end riscv_load_store_rand_instr_stream_0
                  la           s6, region_0+1416 #start riscv_load_store_hazard_instr_stream_3
                  sb           s5, -46(s6)
                  sll          a6, t1, s3
                  lh           a3, -46(s6)
                  sh           t2, 158(s6)
                  or           a1, zero, tp
                  sw           a2, -48(s6)
                  lh           gp, -48(s6)
                  lbu          a0, -166(s6)
                  slti         s7, t0, -401
                  lhu          t4, -166(s6)
                  lb           t4, 27(s6)
                  lbu          t5, 102(s6)
                  sh           a3, 102(s6)
                  lbu          t1, 102(s6)
                  lbu          tp, -227(s6)
                  lb           a3, -187(s6)
                  sll          t2, a2, a1
                  auipc        zero, 801278
                  lb           t4, -187(s6)
                  sb           s4, 87(s6)
                  srai         a1, sp, 3
                  lb           a0, -111(s6) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+1861 #start riscv_load_store_rand_instr_stream_3
                  slt          gp, a7, sp
                  sb           s10, 8(sp)
                  lw           s10, -5(sp)
                  srl          tp, a2, s6
                  slti         a6, t2, 1621
                  ori          a7, a6, -1852
                  lbu          t2, -15(sp)
                  slti         a0, t2, -38
                  lb           s5, 5(sp)
                  ori          s9, t1, 479
                  lw           a1, -5(sp)
                  lbu          s8, -2(sp)
                  xori         s8, t5, -196
                  add          zero, t4, s2
                  or           s6, sp, a5
                  addi         s1, t0, 380
                  lh           s1, -11(sp)
                  lb           zero, -9(sp)
                  lb           s3, 6(sp)
                  sb           s5, 12(sp)
                  sb           a3, 14(sp)
                  and          s6, a5, a7
                  slli         s3, s4, 14
                  ori          s1, tp, 749
                  sltiu        ra, s0, 1139
                  sb           a3, -6(sp)
                  lbu          t2, -13(sp)
                  sra          t5, a2, a6
                  lbu          a0, 5(sp)
                  add          s11, t6, s7
                  lh           s4, -3(sp)
                  srli         a2, a6, 12
                  lb           a7, -10(sp)
                  lb           s1, 4(sp)
                  lb           a1, 6(sp)
                  lb           a1, 0(sp)
                  srli         s4, tp, 5
                  sb           s7, 4(sp)
                  lh           ra, 3(sp)
                  ori          a5, a5, 464
                  lb           s3, 9(sp)
                  lh           a0, -3(sp)
                  sra          t3, sp, zero
                  and          t6, a0, t4
                  sb           a7, 7(sp)
                  lhu          s3, 3(sp)
                  xor          tp, gp, a3
                  slt          s7, tp, a1
                  lb           t3, 8(sp)
                  slt          s2, t1, t2
                  sll          a2, s1, a4
                  lbu          a1, 4(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a2, region_1+1595 #start riscv_load_store_rand_instr_stream_5
                  sltiu        s8, s1, -1089
                  sb           ra, 67(a2)
                  slti         a6, t6, 338
                  srai         a1, s4, 29
                  sh           s0, 3(a2)
                  and          s11, s11, s11
                  lw           a0, 145(a2)
                  sh           s5, -187(a2)
                  lhu          a1, 123(a2)
                  sb           a1, -118(a2)
                  lw           t3, -83(a2)
                  xori         s2, s5, 1138
                  sll          s7, t2, a7
                  sh           t4, -205(a2)
                  sb           sp, -228(a2)
                  sh           t5, -241(a2)
                  sb           t1, 19(a2)
                  and          s3, a7, t2
                  lui          sp, 671292
                  sltiu        ra, s6, 1215
                  auipc        a3, 324194
                  xor          s10, a6, a0
                  srl          s3, t6, a4
                  sh           t6, -17(a2)
                  lbu          t4, 176(a2)
                  lbu          s8, -25(a2)
                  auipc        a3, 119135
                  sh           gp, 251(a2)
                  sb           a5, -17(a2)
                  lhu          s2, -93(a2)
                  srai         t1, s10, 11
                  addi         s9, a1, 1645
                  lb           s9, 196(a2)
                  sub          a7, s2, s9
                  lb           s2, -252(a2)
                  slti         a1, a6, 1534
                  sll          t1, a0, s11
                  andi         tp, s10, -1256
                  lbu          s1, 256(a2)
                  lb           s10, -124(a2)
                  lui          t2, 896340
                  slt          s11, a5, a3
                  xor          s7, a4, s9
                  sb           t4, -245(a2)
                  srai         tp, s10, 6
                  lbu          s10, -76(a2)
                  slli         tp, s9, 31
                  sh           t2, 233(a2) #end riscv_load_store_rand_instr_stream_5
                  la           gp, region_1+1407 #start load_store_instr_stream_3
                  la           a6, region_1+409 #start load_store_instr_stream_0
                  la           s2, region_1+1118 #start load_store_instr_stream_1
                  lb           sp, 11(gp)
                  la           a5, region_1+63 #start load_store_instr_stream_2
                  sb           tp, -397(s2)
                  lbu          ra, -32(gp)
                  sb           t5, -48(a5)
                  sb           s11, 172(a5)
                  lbu          zero, -316(s2)
                  lb           s7, 127(a5)
                  lh           s3, -1(gp)
                  lhu          s11, 1493(a6)
                  sb           s4, 1269(a6)
                  lh           t6, 312(s2)
                  lb           s9, -351(a6)
                  lbu          tp, 781(s2)
                  lbu          a1, -289(s2)
                  lb           zero, -14(a5)
                  lbu          t6, 73(s2)
                  lb           s7, 1472(a6)
                  lb           t4, 228(a5)
                  lb           s10, 524(a6)
                  sh           a6, 860(s2)
                  lb           s8, 528(a6)
                  lhu          t6, 609(a6)
                  lh           s5, 3(gp)
                  sb           a4, 190(a5)
                  sh           s3, 168(s2)
                  lb           a3, 62(a6)
                  sb           s0, 80(a5) #end load_store_instr_stream_2
                  sb           s8, 267(a6)
                  lhu          t4, 37(gp) #end load_store_instr_stream_3
                  lbu          sp, -64(s2) #end load_store_instr_stream_1
                  lb           s5, 174(a6) #end load_store_instr_stream_0
                  la           a6, region_1+492 #start riscv_load_store_rand_instr_stream_1
                  sll          s7, s9, a6
                  addi         s6, a7, 1457
                  srai         gp, t6, 22
                  sb           s4, 46(a6)
                  sb           t2, -209(a6)
                  lb           t1, 194(a6)
                  sh           gp, -34(a6)
                  and          a0, s4, tp
                  sub          t3, a4, s4
                  lbu          t1, 22(a6)
                  sb           s11, 21(a6)
                  or           s8, s8, t3
                  nop
                  lb           tp, 171(a6)
                  sb           a6, 49(a6)
                  slt          a7, a0, a4
                  ori          zero, a5, 337
                  lhu          a2, 88(a6)
                  xori         a3, t4, -814
                  lbu          t4, -55(a6)
                  sll          s3, t2, t2
                  andi         s4, t1, 1859
                  srli         t5, a5, 11
                  sra          a5, s5, t5
                  sb           a4, 93(a6)
                  lb           s3, 198(a6)
                  sh           s0, -184(a6)
                  sh           t6, -94(a6)
                  add          a3, s5, a3
                  nop
                  slti         s1, a1, 1474
                  sh           s1, 152(a6) #end riscv_load_store_rand_instr_stream_1
                  la           s8, region_1+533 #start riscv_load_store_rand_instr_stream_4
                  lb           a5, 4(s8)
                  lui          a1, 1026238
                  auipc        t3, 164849
                  slti         sp, t1, -1022
                  srli         s3, s10, 8
                  sltu         t3, a7, t6
                  slli         t4, s10, 24
                  sltiu        s10, gp, 1032
                  sb           t5, 12(s8)
                  lb           a2, 12(s8)
                  sb           ra, -5(s8)
                  add          s7, ra, a5
                  sh           a4, -1(s8)
                  nop
                  lhu          a6, -7(s8)
                  xori         s5, a2, 2014
                  lb           a5, 3(s8)
                  and          t2, s1, s8
                  nop
                  srl          a5, s10, a3
                  xor          t4, a1, s11
                  srl          zero, s11, s10
                  lw           s3, -5(s8)
                  lbu          s6, 1(s8)
                  sw           t4, 11(s8)
                  sltiu        t2, s1, -705
                  sh           s0, 9(s8)
                  sb           gp, -2(s8)
                  lhu          a7, -15(s8)
                  ori          a2, a2, -1454
                  lb           zero, -7(s8)
                  srai         t5, s9, 9
                  add          t4, gp, a5
                  lh           a0, -3(s8)
                  slt          a7, s11, a6
                  lb           a1, -1(s8)
                  sb           t5, -3(s8)
                  sb           s8, 16(s8)
                  sra          s1, s8, sp
                  sb           s8, 1(s8)
                  sub          s7, s11, t1
                  sb           a7, -4(s8)
                  andi         s5, a1, 1297
                  sw           s11, -5(s8)
                  lbu          t4, -8(s8)
                  sltiu        s7, ra, 349
                  slti         a2, a1, -266
                  sltiu        t2, s2, 1918
                  or           t1, t4, t2
                  srai         a5, a5, 12
                  sh           t0, -7(s8)
                  lbu          t1, -1(s8)
                  sb           s8, 4(s8)
                  lh           tp, 13(s8) #end riscv_load_store_rand_instr_stream_4
                  la           ra, region_1+1664 #start riscv_load_store_hazard_instr_stream_4
                  lbu          a6, 23(ra)
                  lui          t3, 488835
                  lb           s11, 21(ra)
                  lb           s5, 21(ra)
                  lb           a1, 11(ra)
                  lhu          a3, -32(ra)
                  lh           s5, -32(ra)
                  lbu          a2, -31(ra)
                  lbu          a5, 33(ra)
                  lb           s5, -57(ra)
                  lbu          s8, -57(ra)
                  sw           t2, 8(ra)
                  sb           a6, -23(ra)
                  lb           s6, -23(ra)
                  lbu          gp, -29(ra)
                  sb           s5, -25(ra)
                  lb           a6, -25(ra)
                  lb           t4, -25(ra)
                  lbu          s5, -3(ra)
                  lh           t1, 20(ra)
                  lbu          a7, 20(ra) #end riscv_load_store_hazard_instr_stream_4
                  la           a5, region_1+1072 #start riscv_load_store_hazard_instr_stream_0
                  auipc        s8, 836000
                  lbu          t4, 228(a5)
                  sw           t2, 228(a5)
                  xor          s8, gp, s10
                  lw           s10, 228(a5)
                  sb           a7, 101(a5)
                  lbu          s3, 101(a5)
                  sb           t4, 101(a5)
                  sb           s11, 101(a5)
                  srai         s4, s4, 19
                  lui          a2, 214697
                  sb           a1, 101(a5)
                  srli         s6, a4, 0
                  ori          t6, s1, 216
                  lb           s9, 101(a5)
                  lb           s1, 101(a5)
                  lbu          t1, 101(a5)
                  lb           s9, 101(a5)
                  lbu          s6, 101(a5) #end riscv_load_store_hazard_instr_stream_0
                  la           a5, region_0+825 #start load_store_instr_stream_2
                  la           t6, region_0+859 #start load_store_instr_stream_4
                  la           s1, region_0+1189 #start load_store_instr_stream_3
                  la           s7, region_0+161 #start load_store_instr_stream_1
                  sh           ra, -43(s1)
                  sh           ra, -61(s1)
                  la           t1, region_0+726 #start load_store_instr_stream_0
                  lh           t4, 9(t6)
                  lb           s5, 116(a5)
                  sh           s7, 7(s7)
                  lhu          t2, -3(s7)
                  sb           gp, 150(a5)
                  sb           t5, -251(t1)
                  lb           a2, -38(a5)
                  lbu          t3, -43(s1)
                  sb           s5, 27(t6)
                  lb           a1, -12(s7)
                  lb           s4, 158(a5)
                  lbu          s3, -42(t6)
                  sb           a2, -8(s1)
                  lh           s3, -212(t1)
                  lb           t2, -57(s1)
                  lbu          s11, 48(t6)
                  sb           a3, 34(a5)
                  sb           zero, 52(t6)
                  sb           a5, -35(s1)
                  sw           t4, 21(t6)
                  lbu          t5, 47(t1)
                  sw           s7, 41(t6)
                  lbu          t5, 53(s1)
                  sb           s10, -103(t1)
                  lb           s8, -3(s7)
                  lb           a3, -132(t1)
                  lbu          a6, -194(a5)
                  lbu          s5, 38(t6)
                  lb           s3, 4(s7)
                  sb           s8, 12(s7)
                  lbu          a6, -15(t1)
                  lbu          a6, -84(a5)
                  lb           s11, -4(s7)
                  sb           s8, -4(s1)
                  lw           a7, 11(s7) #end load_store_instr_stream_1
                  lh           a3, -41(t6)
                  lbu          a0, 21(t1)
                  sb           s8, -64(s1) #end load_store_instr_stream_3
                  sb           t2, -50(a5)
                  sb           a2, 31(a5) #end load_store_instr_stream_2
                  lb           a3, 165(t1)
                  lhu          s4, 15(t6) #end load_store_instr_stream_4
                  sb           s5, 226(t1) #end load_store_instr_stream_0
                  la           a3, region_1+1974 #start riscv_load_store_hazard_instr_stream_1
                  lhu          a5, -904(a3)
                  slli         t3, s10, 16
                  lb           tp, -904(a3)
                  sb           s10, -904(a3)
                  lbu          ra, -904(a3)
                  sh           a6, -904(a3)
                  lhu          a1, -904(a3)
                  sb           s2, -904(a3)
                  lb           s4, -1031(a3)
                  sb           a3, -1031(a3)
                  sltu         s5, tp, a1
                  lbu          a2, -1031(a3)
                  sb           t6, -1031(a3)
                  lb           zero, -1031(a3)
                  sb           a7, -1031(a3)
                  lh           t1, -1006(a3)
                  sw           s1, -1006(a3)
                  sw           t2, -1006(a3)
                  sb           s7, -1006(a3)
                  sh           tp, -1006(a3)
                  lbu          s10, -322(a3) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+654 #start riscv_load_store_rand_instr_stream_2
                  auipc        a1, 432649
                  sltu         s4, t1, a3
                  sra          s7, a2, t3
                  sb           a1, -28(sp)
                  lb           tp, 17(sp)
                  sh           zero, -24(sp)
                  auipc        tp, 949010
                  sb           s11, 30(sp)
                  sb           s11, -20(sp)
                  lhu          s1, -40(sp)
                  lh           s4, 52(sp)
                  sb           s1, 27(sp)
                  sra          t1, a7, s6
                  sra          tp, a6, a2
                  sra          s11, a2, a3
                  sb           ra, 39(sp)
                  slti         t6, s11, 18
                  xor          a1, t2, s6
                  sltiu        t1, a3, -1188
                  sh           a7, 44(sp)
                  sra          t1, a2, s5
                  ori          a3, a3, 43
                  lbu          gp, -49(sp)
                  xori         a2, s8, -1733
                  auipc        a5, 49227
                  sb           a3, -3(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1441 #start riscv_load_store_hazard_instr_stream_2
                  xori         s1, ra, 1013
                  lb           gp, 4(sp)
                  sb           t0, -8(sp)
                  lbu          tp, -8(sp)
                  xori         a0, ra, 1739
                  lh           s8, 3(sp)
                  lb           t2, 3(sp)
                  sb           gp, -10(sp)
                  lb           a6, -10(sp)
                  lb           s6, -10(sp)
                  lb           t1, -9(sp)
                  sb           t1, -9(sp)
                  sb           t3, 12(sp)
                  lb           s7, 12(sp)
                  lb           a5, -11(sp)
                  lb           t3, -11(sp)
                  lb           s3, -11(sp)
                  lb           a3, 8(sp)
                  lb           t6, 8(sp)
                  lh           a5, -5(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           t1, region_0+1915 #start load_store_instr_stream_1
                  la           s7, region_0+360 #start load_store_instr_stream_2
                  sb           a7, -222(t1)
                  sh           s4, -106(s7)
                  la           t4, region_0+1593 #start load_store_instr_stream_0
                  lb           t6, -62(t1)
                  lbu          t3, -30(t4)
                  la           s11, region_0+981 #start load_store_instr_stream_3
                  lhu          s5, 54(s7)
                  lb           a6, 56(s11)
                  lbu          s5, -75(t1)
                  lbu          s8, 22(s7)
                  sb           s3, 31(t4)
                  sb           s6, -17(t4)
                  lbu          t2, 44(t4)
                  sb           tp, 153(s11)
                  sb           a7, -131(t1)
                  lhu          t3, -201(s11)
                  lb           s10, -210(s11)
                  sb           zero, -4(t1)
                  sb           s8, -3(t4)
                  sh           a1, -69(t1)
                  sb           s9, -139(s7)
                  lb           t2, -231(s11)
                  sb           s10, 69(s7)
                  lbu          a0, 17(t4)
                  lbu          a5, -53(s11)
                  sw           t1, 17(t1)
                  lb           ra, 235(s11)
                  sh           a2, -37(t1)
                  lbu          t5, 240(s7) #end load_store_instr_stream_2
                  lh           t3, 55(t1) #end load_store_instr_stream_1
                  lbu          s9, -32(s11) #end load_store_instr_stream_3
                  lb           s9, 31(t4) #end load_store_instr_stream_0
                  la           s9, region_1+296 #start load_store_instr_stream_3
                  la           s10, region_1+951 #start load_store_instr_stream_2
                  la           s1, region_1+1676 #start load_store_instr_stream_1
                  lbu          zero, 704(s10)
                  lb           zero, -31(s1)
                  la           sp, region_1+884 #start load_store_instr_stream_0
                  sh           a0, -64(sp)
                  lb           t3, 39(s1)
                  sb           s1, 757(s10)
                  lh           s8, -22(sp)
                  lb           a0, -16(s9)
                  sb           t1, 3(s9)
                  sw           s1, 44(s1)
                  lbu          ra, -15(s9)
                  lbu          s6, 2(sp)
                  lbu          s3, 726(s10)
                  lb           s7, -43(s1)
                  lb           s2, -366(s10)
                  lbu          a0, 734(s10)
                  sh           s2, 24(sp)
                  sb           s4, -3(s9)
                  sh           t1, -863(s10)
                  sb           s0, 561(s10)
                  lb           t3, -14(s9) #end load_store_instr_stream_3
                  sb           s2, -50(sp)
                  sh           t5, -399(s10)
                  sh           zero, -32(sp)
                  sh           t5, 26(s1)
                  lb           a6, -232(s10) #end load_store_instr_stream_2
                  lbu          a0, 5(sp)
                  lhu          a2, 8(sp)
                  sb           t2, 23(sp)
                  lhu          tp, -62(s1) #end load_store_instr_stream_1
                  lhu          a5, -44(sp) #end load_store_instr_stream_0
                  slti         a0, zero, -970
                  andi         s3, a4, 1625
                  and          tp, sp, s8
                  ori          s7, t2, 1873
                  sll          t5, a0, t1
                  bgeu         a5, s4, 19f
                  add          t5, s7, t0
                  slt          gp, ra, a4
                  lui          s4, 255184
                  bltu         s8, ra, 15f
                  or           s7, sp, t6
                  slti         t1, s9, -124
                  srl          a0, sp, a6
                  bne          s10, s7, 18f
                  sra          s7, a5, t2
15:               nop
                  add          s7, t2, a3
                  srl          t5, t0, a5
18:               nop
19:               beq          s4, s4, 39f
                  slt          s8, s11, s3
                  slli         a5, t3, 24
                  sltu         t1, s10, a1
                  slli         sp, gp, 6
                  xor          s8, t2, gp
                  sll          s6, a4, zero
                  blt          s10, t4, 36f
                  sltu         s4, sp, s5
                  bltu         a4, t0, 35f
                  bgeu         t2, t1, 44f
                  xor          a3, a3, s5
                  blt          t3, a0, 39f
                  srai         a5, t4, 5
                  slt          t1, t0, t0
                  and          a0, s5, s0
35:               slli         a0, t3, 22
36:               or           s10, t1, t3
                  xori         a2, s11, 903
                  beq          s6, s7, 45f
39:               srli         s7, t6, 25
                  bltu         a4, t2, 45f
                  srai         s9, a0, 3
                  sltiu        s4, t1, -1461
                  add          s10, t2, ra
44:               slt          a3, s5, s9
45:               slli         zero, s3, 18
                  sltu         s8, s3, t5
                  bge          s6, ra, 65f
                  bltu         s1, a7, 64f
                  sll          sp, a5, a0
                  and          s3, s11, s11
                  nop
                  sll          a3, s2, a6
                  slli         tp, a2, 18
                  sltiu        a3, a6, -433
                  nop
                  blt          a1, a0, 66f
                  sub          s2, s0, t1
                  bltu         s1, tp, 69f
                  add          s10, s11, a7
                  beq          t4, s2, 75f
                  slt          s8, s0, ra
                  xori         s2, a5, 84
                  xori         t4, a2, 477
64:               slt          t2, sp, a0
65:               add          t3, gp, t3
66:               slt          ra, s2, t0
                  blt          a2, a7, 83f
                  nop
69:               sub          s8, gp, t1
                  nop
                  sltu         a7, a5, ra
                  slt          t3, a4, t5
                  sll          a6, t5, t6
                  nop
75:               srli         a0, s2, 13
                  bge          a1, s5, 86f
                  ori          ra, s2, 1316
                  sub          s3, s4, sp
                  andi         a1, t0, 1613
                  srai         zero, s2, 25
                  sltu         s10, a5, s2
                  sub          gp, a2, s11
83:               sll          ra, t6, s1
                  bne          ra, t1, 94f
                  bne          s4, t3, 98f
86:               xori         sp, zero, -753
                  add          t5, s9, a4
                  bgeu         t4, sp, 95f
                  xor          a3, s0, a5
                  auipc        s9, 627713
                  addi         zero, t0, 1122
                  lui          s3, 502602
                  sra          s6, s0, s4
94:               sll          a7, a7, a7
95:               srai         t4, a0, 27
                  bne          s8, zero, 109f
                  nop
98:               add          a1, t1, a2
                  add          s11, tp, a4
                  slti         s8, s2, 1155
                  auipc        t6, 279249
                  and          tp, s6, s1
                  slli         a3, s3, 26
                  and          gp, t1, t6
                  srli         t4, gp, 21
                  blt          s0, sp, 115f
                  sub          a7, s11, t5
                  slt          s11, s4, s4
109:              srli         a1, s8, 1
                  sll          s3, sp, ra
                  lui          s8, 91225
                  andi         gp, zero, -289
                  lui          t3, 824507
                  auipc        a1, 309989
115:              srli         t6, s4, 16
                  sll          s8, t5, tp
                  blt          a0, sp, 118f
118:              slt          a7, t3, a3
                  slti         t4, zero, -1494
                  lui          a6, 186979
                  beq          a0, s2, 133f
                  lui          a5, 980069
                  bge          t5, t0, 132f
                  bne          t3, s5, 130f
                  beq          a2, a1, 129f
                  sra          a1, s6, s3
                  add          s8, zero, ra
                  or           s6, s9, a1
129:              sltiu        t2, t3, -1328
130:              add          a3, t6, tp
                  and          t3, s0, t3
132:              xori         a7, a5, -1100
133:              bne          a3, tp, 145f
                  xori         s10, a3, 1029
                  xor          s9, s7, s5
                  bge          a5, t5, 141f
                  ori          t5, s5, -1098
                  srl          t2, a2, s3
                  slli         sp, s5, 3
                  addi         t2, a7, 1596
141:              sltu         t1, zero, s0
                  bne          a1, a4, 146f
                  sltu         a5, sp, a0
                  nop
145:              andi         s11, s9, 1734
146:              sltiu        s1, a1, 716
                  ori          t4, tp, 37
                  sra          a5, gp, s0
                  srl          a3, s10, a5
                  beq          s2, s8, 163f
                  slt          t2, a0, a4
                  srli         t6, a2, 9
                  slt          s3, s11, s3
                  bgeu         a4, t5, 165f
                  blt          zero, a0, 162f
                  ori          a1, t2, 1650
                  sll          t3, a4, a6
                  and          s6, a5, a5
                  srli         a3, a0, 5
                  lui          s10, 462785
                  bge          sp, s4, 168f
162:              nop
163:              xor          sp, s9, s10
                  lui          gp, 71061
165:              xor          sp, a5, a1
                  ori          a3, sp, -1640
                  sub          s4, a7, t6
168:              ori          a5, s10, 802
                  srli         gp, s2, 9
                  or           t5, a6, a2
                  blt          a5, s7, 181f
                  auipc        a6, 201144
                  srai         t2, s1, 28
                  lui          t5, 812911
                  sra          tp, t0, t1
                  sra          s4, gp, zero
                  lui          t4, 724577
                  sll          t1, sp, s10
                  xori         a1, t1, -1445
                  bne          a5, sp, 185f
181:              and          s9, t6, s7
                  bne          s9, a7, 197f
                  sub          s7, s8, a4
                  bgeu         gp, s2, 189f
185:              srai         t4, t0, 2
                  sra          s7, s1, s8
                  sub          t5, a4, sp
                  sltiu        t3, s10, 667
189:              xori         a6, zero, -978
                  srai         s6, t4, 26
                  slti         tp, s2, 696
                  sltiu        s8, a3, -388
                  sltiu        s1, t1, 8
                  add          s10, t6, t2
                  add          t3, a5, s4
                  sltu         s7, a5, a0
197:              or           a2, zero, a5
                  and          s7, t0, s7
                  sll          tp, s7, a4
                  bltu         a6, a5, 206f
                  srl          a5, t3, s6
                  slli         zero, t6, 15
                  srl          a0, s6, a7
                  ori          s6, ra, -1564
                  and          t6, a7, a5
206:              add          s10, a2, a6
                  bgeu         s10, s7, 221f
                  slt          a0, s6, a1
                  sll          s8, t0, a3
                  andi         sp, t2, -1953
                  sltiu        tp, s10, 2011
                  blt          a4, ra, 220f
                  bgeu         t5, s11, 226f
                  xori         a2, a4, 571
                  blt          s1, t2, 224f
                  sltiu        s2, a3, -115
                  nop
                  bne          s9, s0, 234f
                  srai         s10, a0, 6
220:              bltu         t2, t5, 224f
221:              sltiu        s9, t5, 745
                  addi         gp, s0, 1479
                  nop
224:              blt          a3, t3, 242f
                  sltiu        tp, t3, 1242
226:              xori         tp, s11, -656
                  slti         s10, s10, 1506
                  srli         t5, t3, 5
                  addi         t4, t5, 9
                  la           sp, region_1+1619 #start load_store_instr_stream_0
                  la           t3, region_1+1219 #start load_store_instr_stream_1
                  la           s3, region_1+1461 #start load_store_instr_stream_2
                  lhu          s5, -57(s3)
                  sw           ra, -771(sp)
                  lbu          s8, -198(sp)
                  la           a6, region_1+1016 #start load_store_instr_stream_4
                  sb           s3, 126(t3)
                  la           s10, region_1+1128 #start load_store_instr_stream_3
                  lb           s6, 15(sp)
                  lb           a2, -9(s10)
                  lhu          t1, 48(s10)
                  lb           s7, -33(s10)
                  sh           zero, 37(s3)
                  lhu          zero, -61(s3)
                  sb           a3, 16(t3)
                  lb           t1, 252(sp)
                  sh           t0, 9(s3)
                  sb           s0, -55(s10)
                  lb           s7, 222(t3)
                  lh           t1, -39(s3)
                  lb           s6, 26(s10)
                  lh           s7, -64(s10)
                  lb           tp, -573(sp)
                  lbu          a5, -82(t3)
                  lhu          s6, -732(a6)
                  sb           s11, -10(s10)
                  lb           s9, -26(a6)
                  sb           a4, -526(sp)
                  lb           a0, -83(a6)
                  sb           s1, -142(sp)
                  lbu          t6, -37(s10)
                  sh           s0, -21(t3)
                  lhu          t6, -1295(sp)
                  lbu          a5, -85(t3)
                  sb           s7, 229(a6)
                  lhu          a7, -15(s3)
                  lbu          t2, -966(sp)
                  lbu          s2, 152(t3) #end load_store_instr_stream_1
                  sb           t4, 62(s10)
                  lhu          a2, 336(a6)
                  sw           a1, 948(a6) #end load_store_instr_stream_4
                  lb           a5, 46(s3) #end load_store_instr_stream_2
                  lbu          a5, -24(s10) #end load_store_instr_stream_3
                  lbu          s8, -496(sp) #end load_store_instr_stream_0
                  slti         t3, a4, 455
                  bne          a5, s1, 243f
                  srl          zero, t3, t4
                  ori          a2, a6, 1442
234:              xori         s3, s6, 1894
                  slt          t6, s1, sp
                  slt          s3, gp, t6
                  bgeu         t3, gp, 238f
238:              bge          t6, t1, 248f
                  srli         s4, s9, 0
                  bltu         s8, a0, 249f
                  sltu         zero, t0, s7
242:              sub          a1, s11, a1
243:              srli         s6, t2, 11
                  srli         s10, s2, 8
                  sltu         s7, t4, gp
                  xor          ra, a0, a5
                  add          s2, a5, a4
248:              xori         s2, gp, 1801
249:              bge          t5, s5, 264f
                  sra          s2, s3, t4
                  sltu         tp, s3, t4
                  srl          gp, s8, s6
                  xor          s7, gp, a7
                  beq          ra, a5, 266f
                  sub          a6, a2, t0
                  sltiu        t3, s0, 819
                  sltu         gp, s7, tp
                  addi         s9, a0, -661
                  auipc        s8, 559945
                  blt          s0, tp, 264f
                  auipc        t1, 283614
                  addi         s7, t6, -47
                  sra          s1, t0, a4
264:              bne          ra, t3, 270f
                  sll          a7, s6, s7
266:              beq          t1, t2, 282f
                  ori          t1, t3, 1559
                  auipc        gp, 809483
                  andi         s3, t5, -56
270:              addi         a1, sp, 336
                  bge          t0, a3, 291f
                  ori          sp, s9, 1692
                  bge          s2, s10, 280f
                  slli         a2, s4, 22
                  sltiu        ra, tp, -1551
                  blt          s8, t4, 286f
                  sub          s10, tp, gp
                  slli         a5, s9, 25
                  bge          s11, a3, 284f
280:              sra          a5, a2, s0
                  srai         t2, a2, 25
282:              slt          ra, s8, t5
                  ori          t4, s0, 1816
284:              srli         t4, ra, 3
                  or           s3, s10, gp
286:              auipc        a0, 597623
                  bne          a1, s0, 297f
                  beq          a3, a7, 303f
                  add          s4, s10, ra
                  srl          s1, s10, a2
291:              slli         a7, tp, 29
                  slt          a5, a7, zero
                  sub          s6, a4, a3
                  slt          a6, s6, a6
                  sltu         s2, a4, sp
                  lui          a2, 389235
297:              slt          a7, t2, s0
                  beq          a0, s7, 303f
                  slti         zero, a6, 1694
                  sra          s10, s3, a4
                  bgeu         tp, tp, 310f
                  xor          s3, a3, t3
303:              andi         s6, t6, -1508
                  andi         a5, s5, -709
                  srli         s2, a7, 22
                  blt          t6, s7, 322f
                  sra          s9, t6, a7
                  xori         t5, s6, -1647
                  sltu         tp, s6, s6
310:              xori         s3, s0, -364
                  slti         a7, s7, -2021
                  srl          s6, s7, t0
                  slt          t6, s8, t2
                  sltu         sp, a1, t1
                  sra          t1, t1, s1
                  slti         s5, t2, 606
                  bgeu         a6, s8, 330f
                  add          tp, s7, s0
                  srli         a3, s11, 6
                  sltiu        a3, t4, -992
                  slt          t6, a6, a2
322:              srai         t4, s7, 5
                  sll          t4, a1, t0
                  sll          s5, s5, a2
                  add          t2, s4, s4
                  sltiu        s4, a3, -1624
                  slt          t2, s6, a1
                  or           t5, s0, a2
                  sltu         a7, gp, s8
330:              lui          t5, 174467
                  nop
                  ori          s11, a7, 1171
                  slt          t4, a1, a6
                  sltiu        a7, a3, 615
                  srai         s6, t2, 23
                  bne          t0, s9, 342f
                  sltu         s3, a0, s7
                  xor          a6, gp, s9
                  xori         ra, a7, 2033
                  srai         s5, s7, 23
                  slt          tp, s1, s7
342:              add          zero, s8, zero
                  sub          a2, t0, a4
                  srai         a1, s1, 17
                  slli         t3, t3, 14
                  srli         s7, s1, 29
                  slti         s1, t1, 1372
                  addi         a1, a3, -667
                  add          s1, s0, s11
                  nop
                  sltu         s11, t4, s10
                  beq          sp, s5, 362f
                  xori         a0, s7, 1943
                  auipc        s1, 537629
                  addi         t6, t6, -1791
                  bne          s11, a4, 363f
                  lui          a1, 149120
                  bge          a6, t0, 359f
359:              bgeu         zero, s2, 369f
                  xor          t6, s7, t0
                  srli         s9, a6, 6
362:              bltu         s1, s10, 369f
363:              ori          s6, s2, -1417
                  sra          s5, t6, s7
                  sub          t3, a3, a7
                  sll          a0, a4, s5
                  xori         a7, s6, 1330
                  bltu         a1, t0, 380f
369:              sll          t4, s0, gp
                  bgeu         s5, s7, 380f
                  bge          a7, t5, 391f
                  bgeu         a5, s6, 381f
                  bgeu         t5, ra, 378f
                  blt          t2, t2, 381f
                  andi         s9, s9, -1537
                  beq          t1, t5, 380f
                  bge          ra, a3, 382f
378:              bgeu         t6, t1, 394f
                  nop
380:              sltu         zero, s0, a5
381:              slti         a1, s1, -557
382:              srai         s8, tp, 9
                  sub          ra, s0, s0
                  sub          a3, sp, sp
                  lui          tp, 764102
                  srl          a7, t6, gp
                  auipc        a2, 685024
                  and          t3, t4, tp
                  sub          t6, a6, t2
                  sltiu        s2, s0, -1285
391:              nop
                  sltu         sp, t1, sp
                  xor          s6, s10, s0
394:              beq          a3, a7, 408f
                  add          t4, a0, s2
                  sltu         t5, a6, tp
                  or           a0, s1, s3
                  bne          gp, a7, 406f
                  bge          s10, t4, 411f
                  add          a3, t0, s10
                  sltu         a3, a4, s9
                  beq          s9, s0, 412f
                  sltiu        a7, s11, -955
                  sll          a5, a4, gp
                  andi         s8, s1, 1011
406:              ori          a3, a7, -1005
                  bne          s5, s9, 420f
408:              sub          t2, t0, tp
                  ori          t4, s5, 192
                  or           s2, a0, t2
411:              bgeu         a6, gp, 429f
412:              bge          s11, s5, 423f
                  bgeu         s0, t6, 419f
                  add          gp, t3, a7
                  addi         s1, s9, 346
                  xori         a5, t0, -859
                  blt          t6, a4, 432f
                  blt          s10, t4, 422f
419:              sltu         gp, zero, t4
420:              slti         s1, s2, 1859
                  lui          t4, 343485
422:              srai         s10, s11, 26
423:              and          sp, a6, s3
                  sll          s5, a2, s8
                  or           t4, s9, t1
                  xor          t3, s9, a3
                  blt          s2, t2, 438f
                  bge          gp, s3, 433f
429:              sltu         t6, s2, ra
                  lui          a1, 245753
                  sltiu        s6, a4, 147
432:              sra          a7, t0, t3
433:              slti         s3, s2, -203
                  nop
                  or           s11, t2, tp
                  srl          s6, t0, a6
                  bltu         s1, s1, 447f
438:              slti         a1, s8, -166
                  andi         s3, t4, 186
                  bne          s9, s9, 449f
                  addi         s1, gp, -459
                  nop
                  bne          s8, a2, 447f
                  sll          s10, s11, t1
                  sll          tp, s7, a2
                  sra          t3, s2, a5
447:              addi         t4, a3, -328
                  sll          a1, s9, a4
449:              bge          t2, a0, 462f
                  addi         s9, a4, 1913
                  slti         a0, a7, 1401
                  xor          a7, s5, s2
                  slti         ra, s10, -824
                  or           a3, sp, t6
                  and          s4, zero, a7
                  add          sp, t3, ra
                  srai         s9, a7, 23
                  sltu         s10, a3, s11
                  srl          a7, t6, tp
                  bltu         gp, t6, 472f
                  add          s1, s9, s2
462:              ori          sp, t2, -1698
                  andi         s1, a0, -1146
                  ori          zero, t2, 862
                  bgeu         a4, a2, 480f
                  srli         t1, t3, 2
                  sra          t1, s7, zero
                  lui          s10, 610190
                  sll          s10, a0, s10
                  srl          zero, a4, s8
                  xori         gp, s10, -445
472:              sll          t3, a6, tp
                  xor          a6, t0, s8
                  srl          a6, tp, a6
                  bltu         t3, t2, 479f
                  slt          a6, a5, sp
                  bge          t3, s2, 489f
                  slti         ra, gp, -1507
479:              sltiu        s4, s2, 154
480:              blt          s3, s4, 486f
                  slt          tp, a6, s3
                  bltu         s4, a3, 492f
                  srl          zero, sp, tp
                  blt          t4, a0, 489f
                  sltiu        a6, a5, -1861
486:              nop
                  slti         s4, a7, 1107
                  slti         s9, s7, -1341
489:              or           tp, a2, zero
                  auipc        sp, 296709
                  bge          sp, t1, 496f
492:              blt          a0, s0, 498f
                  add          s1, s8, s8
                  sra          s11, a5, s2
                  blt          a5, sp, 505f
496:              sll          a3, tp, s1
                  bne          s0, s1, 512f
498:              sltu         t3, a4, s6
                  addi         a5, s4, 573
                  add          t4, a1, a7
                  slli         t1, s6, 21
                  or           t4, a7, s5
                  sra          t6, tp, a1
                  nop
505:              xor          ra, s1, t4
                  slt          t5, t5, t5
                  sltiu        s6, s5, 712
                  slti         s9, s9, 739
                  sltiu        a5, a4, -1909
                  slti         a3, t2, 814
                  or           a5, s7, s6
512:              lui          a0, 461998
                  and          zero, s5, t6
                  srli         t4, s6, 19
                  srli         zero, s9, 10
                  beq          s0, s5, 536f
                  bgeu         a7, t4, 533f
                  lui          a6, 516699
                  addi         s9, zero, 1183
                  blt          a2, s1, 534f
                  bge          s11, s2, 539f
                  sub          s9, s6, s5
                  sub          s5, s10, sp
                  or           s8, a3, t6
                  nop
                  add          a3, a6, t2
                  beq          s6, s1, 528f
528:              sub          t5, s1, s6
                  srli         sp, a2, 12
                  sll          zero, t0, s9
                  lui          tp, 314671
                  beq          zero, t4, 540f
533:              xor          s1, s7, a5
534:              bltu         a5, s3, 541f
                  xori         t1, t0, -1209
536:              sll          s4, s6, s7
                  srai         s11, s3, 24
                  xori         sp, a7, 1134
539:              bge          a0, a0, 555f
540:              slt          zero, zero, s4
541:              sll          s5, t2, t5
                  auipc        s11, 477043
                  sll          s6, a1, s6
                  sltu         s11, sp, t5
                  lui          t3, 569212
                  lui          gp, 1779
                  sub          s1, s9, s7
                  sltiu        t3, s2, 787
                  andi         s5, s2, -326
                  beq          t5, s3, 557f
                  beq          t0, a0, 560f
                  or           s1, a1, s10
                  la           s10, region_1+1138 #start riscv_load_store_hazard_instr_stream_5
                  slli         t4, t6, 4
                  andi         sp, t5, 370
                  lb           s2, -57(s10)
                  auipc        s9, 175876
                  lb           gp, 753(s10)
                  lb           s5, 753(s10)
                  lbu          s4, 753(s10)
                  lb           t6, 753(s10)
                  sb           ra, -126(s10)
                  add          s2, zero, tp
                  sltiu        s5, s5, 1307
                  lbu          s7, 198(s10)
                  lw           a2, 198(s10)
                  lb           s4, 198(s10)
                  lw           s3, -746(s10)
                  lw           a1, -718(s10)
                  lb           s1, -718(s10)
                  srli         t6, s2, 21
                  lbu          s6, -718(s10)
                  lw           s4, -718(s10)
                  lb           t3, -718(s10)
                  lw           t5, -718(s10)
                  or           s2, t0, a6
                  lh           a2, 66(s10)
                  lb           zero, -815(s10) #end riscv_load_store_hazard_instr_stream_5
                  sra          s6, zero, a5
                  addi         a6, a0, -1772
555:              bge          s11, t5, 565f
                  slt          t5, tp, zero
557:              blt          a4, ra, 570f
                  slti         zero, s10, -554
                  srai         s5, sp, 10
560:              slli         a6, zero, 20
                  add          s1, s5, s9
                  xor          a7, s6, ra
                  sub          t3, s11, a1
                  nop
565:              beq          s2, gp, 572f
                  xori         tp, s3, -1202
                  lui          s3, 936505
                  add          gp, zero, tp
                  slt          a7, a1, a0
570:              sltiu        tp, t2, -832
                  add          t6, s2, t5
572:              ori          zero, a5, -1828
                  sra          s10, a7, t1
                  auipc        s7, 1029754
                  sra          a3, a1, a1
                  and          s1, a7, a1
                  auipc        s4, 593284
                  or           a5, t6, t3
                  lui          s3, 185208
                  andi         s11, t5, -897
                  slti         gp, s2, -708
                  srl          s1, s3, a7
                  bltu         gp, a0, 592f
                  sll          t3, a4, a1
                  add          s5, tp, a1
                  slli         s11, t4, 27
                  sll          gp, s8, s7
                  lui          a0, 124163
                  bge          a3, s11, 596f
                  slli         s3, a2, 24
                  srli         s1, t1, 21
592:              nop
                  srl          s3, sp, t1
                  srl          t5, t0, s8
                  slli         s8, s10, 16
596:              bge          sp, s4, 600f
                  and          t6, s5, a1
                  bgeu         s4, s4, 608f
                  andi         a2, ra, 882
600:              bgeu         s6, t5, 615f
                  slt          s9, t4, s9
                  add          gp, a1, a2
                  xor          s5, s5, sp
                  nop
                  beq          t6, s8, 621f
                  xori         zero, s6, 1914
                  bne          a0, t4, 616f
608:              beq          t5, zero, 628f
                  slt          a6, a1, s4
                  add          s9, s4, ra
                  xor          t5, s8, t2
                  sub          s2, s4, t2
                  addi         s4, a1, 1887
                  addi         a2, a0, -1718
615:              slt          t2, zero, s2
616:              beq          a3, t4, 626f
                  sll          a7, gp, ra
                  bltu         a0, s5, 628f
                  bge          a4, a4, 632f
                  slli         s5, a0, 28
621:              srai         s11, t5, 22
                  auipc        s8, 778621
                  andi         a7, s3, -1176
                  sltiu        t6, s5, -792
                  xor          t3, s5, s2
626:              sub          a2, a2, a0
                  nop
628:              bgeu         s8, ra, 642f
                  and          t3, s5, a7
                  srl          s11, s5, s3
                  srl          s4, a3, a4
632:              or           s7, s6, t1
                  beq          s7, a7, 634f
634:              ori          zero, t1, -1357
                  andi         s11, t3, -1227
                  xori         s2, a6, -2017
                  sll          a1, s11, a6
                  slti         s10, s7, -924
                  sub          t5, s8, a1
                  bne          a3, sp, 652f
                  and          t2, t5, s5
642:              slt          sp, a2, s6
                  sub          tp, a0, a1
                  ori          a3, t6, 776
                  sub          gp, t1, sp
                  auipc        tp, 1587
                  nop
                  nop
                  sltiu        a0, a6, 402
                  auipc        t1, 549598
                  and          a6, a3, gp
652:              auipc        a1, 981486
                  nop
                  sll          a7, a4, s3
                  xor          s8, a5, t2
                  srai         s4, t6, 30
                  slli         s1, a5, 12
                  auipc        s7, 33495
                  srli         s3, s8, 19
                  addi         t5, a3, 1722
                  and          s5, t3, t2
                  andi         a1, s9, 1581
                  srai         s2, s2, 30
                  lw           t6, 4(t0)
                  slt          t3, s9, t2
                  addi         t0, t0, 64
                  slt          a7, tp, s4
1288:             addi x26, x31, 0
1288:             jalr x26, x26, 0
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
.word 0xeeb8730c, 0xd6f7f019, 0x48815455, 0xc3c95f97, 0xf498e989, 0x13b6b60b, 0x8866bef5, 0xa782b683
.word 0x5cbb864a, 0xacddf6fa, 0x2ccf6a00, 0x148f0149, 0xf63ac773, 0xfb888c95, 0x960fe092, 0xf624c07f
.word 0x240d0d43, 0x50be6c4b, 0x171b65df, 0x18158c89, 0x07992ca5, 0x92fd5c28, 0xdb256c06, 0xbae9450c
.word 0xff3150c4, 0xd0282bfd, 0xe3fa1019, 0xea11c070, 0x8480393d, 0x43197c54, 0x567a4108, 0x9423586c
.word 0x91e4b881, 0x5f922726, 0x8cafb911, 0xcc50478b, 0xb05e6c25, 0x90b24300, 0x833a4af6, 0x1b9e811b
.word 0x44a3e0c8, 0x7f51206b, 0xda333f79, 0x9eef9a81, 0x9bac02e3, 0xe3da0b0e, 0x85c4e217, 0xa0bece8a
.word 0xddcc16b5, 0x5e49ccca, 0x2448cd0d, 0x4f1ec990, 0x627f1cf3, 0x033964ee, 0x013db2a4, 0x0d62db2c
.word 0xbed2891d, 0x6bb3ae0e, 0xa68d5c1f, 0x07a43fb3, 0x6ed8aecc, 0x4e0974b3, 0x4789e0ba, 0x6b9d5598
.word 0x8b215853, 0xc3c4771d, 0x5d77272d, 0x51b5b848, 0x572850e2, 0xfb55addb, 0x51c42065, 0x40807dc4
.word 0x6219840a, 0xb4163604, 0xc69ca899, 0x59eba1a3, 0xe7fd8819, 0x5fbdcb8b, 0x5609eb62, 0x0b186492
.word 0x338ac02a, 0x79be4b15, 0x567e19fb, 0x9f586d9b, 0xeed487ab, 0xf50e1982, 0x37ba4d2e, 0x6bafc69e
.word 0xf46acf21, 0x7197bdfa, 0xdb7dc9c2, 0x85a18f39, 0x029695a1, 0xe2ef5bd9, 0x73f2e6ed, 0x2c551138
.word 0xaec730b7, 0x88602df3, 0x34f6db1f, 0xbfb542f2, 0xd04c1940, 0x04a47d5c, 0xe4d3f78d, 0xc55e68ec
.word 0x91afea8b, 0x72c78145, 0x57ff935f, 0x6c7f08d4, 0xa3691499, 0x605df71e, 0x4817453e, 0x8c69ac86
.word 0x969c3679, 0x1a3f372b, 0x5749ae1f, 0xef21ca2d, 0x0396faf0, 0xb11af6cd, 0xd7bcfbfd, 0x65d3a22f
.word 0x39aa8b6c, 0xcbc3ede0, 0x94447e0b, 0xcddc5219, 0x596ef494, 0xf66b6ff0, 0x53f255c4, 0xaea81268
.word 0x5c6d01d0, 0x975b23e3, 0x3721902c, 0xe65c1a6c, 0x338ca347, 0xb468a377, 0xaddade2d, 0x2a1867d2
.word 0x26ccea45, 0xfbba91ef, 0x587d8405, 0x1940bf33, 0x87356a13, 0x54bea662, 0xb5fa0231, 0x2496aac3
.word 0xec25f28a, 0xe27cfa54, 0x2d4e1010, 0xe397566c, 0xc7fb4076, 0xc8682ad9, 0xd23d31d5, 0x755de70c
.word 0xa77e07bc, 0x05875c55, 0xeb567295, 0x9ca5522f, 0xa09c246b, 0xf6953f7a, 0x329b9600, 0x73f52d0d
.word 0xfe7e5719, 0xb7a3b6d3, 0x548a310e, 0xaf19767f, 0x7118701b, 0xabdd8565, 0xc79efb76, 0xc40a5688
.word 0x8905ea09, 0x7b726820, 0x527d87d8, 0x79290a5b, 0x5f948e4a, 0x8c6fd574, 0x082ff562, 0x52437c47
.word 0xad9ea0b9, 0x957aec0c, 0xa38c6a9d, 0xaea28aa7, 0x18b55b2d, 0x22c80084, 0x1a34e00f, 0xe0ac249d
.word 0xae1dba1b, 0xfff0d4b7, 0x9df1fe16, 0xf9bd121a, 0x15bbf496, 0xc04a2c27, 0xd60072b3, 0x3f8f4843
.word 0x04f2954c, 0x19770c26, 0x59d9b2ed, 0xcc56da11, 0xd44410fe, 0x4d948b69, 0x05114131, 0x3c92ef2d
.word 0x41da5496, 0xdce30d03, 0x33a612a2, 0xbe98a848, 0xfa7b8175, 0x474f3bd5, 0x00f18058, 0xfd77de50
.word 0x3c8c781d, 0x342c2648, 0xa1dc17d1, 0x4304fd59, 0x5200111f, 0xbfa6391e, 0x47e08ddc, 0x1c9383ed
.word 0x3ecf6bcf, 0xc8cd14de, 0x6e6912fa, 0xc6c30a88, 0x50009e7e, 0xf47b4513, 0x12d0a3e0, 0x7a39441e
.word 0xcd7edffe, 0x47e9b6da, 0x3bfbe01e, 0x28d864bc, 0x753164e4, 0xab635543, 0xa5225385, 0xcc4c7a0b
.word 0x62d4df80, 0x4280a85e, 0x7761570c, 0xc5b1f3f8, 0xe9aa73fe, 0x68d1e75c, 0x8e792106, 0x0d761ad3
.word 0x9f9dd924, 0xa3f0ad3d, 0xbc8331d8, 0x41a2a8df, 0x4c2eb4de, 0xb2e8da59, 0x2250cdff, 0xdcb81c5e
.word 0xeb56665c, 0x15ad936b, 0x9f8a8a60, 0xf9861f96, 0xf41eb194, 0x368b7d21, 0x9cc10ee9, 0xdae60f16
.word 0x049b9697, 0xa7c634be, 0x979bc838, 0x42ee4b3c, 0x32282b9e, 0x24ead529, 0x89231d96, 0x30bfc4d6
.word 0x0ac6ce9e, 0x3bca98d2, 0x40244d5b, 0xe3675920, 0x1b2acec3, 0xf4950ec4, 0xe616aed7, 0x009ac1e0
.word 0x64228de5, 0xeba20f7b, 0xdbb5b888, 0x206e4a65, 0x164278d0, 0xbae90aba, 0xc1629f2b, 0x372f83f7
.word 0xd20fa02d, 0xb99c5995, 0x2a7247b5, 0xd5589065, 0xf308ad6d, 0x634151b4, 0x43e9c607, 0x7843eedc
.word 0x3b071a2b, 0x930a0b81, 0x94506497, 0x16e98dbb, 0x3e079839, 0x8a6e3441, 0xeba2ab85, 0xbbcffaad
.word 0xa2702d9d, 0xcdb31156, 0xd6fe737c, 0xfdd9824e, 0x0002558c, 0x77adc4eb, 0x80c0c36f, 0xa906d016
.word 0xcfeedb93, 0x8a261c8f, 0xd9e7676e, 0x4b198135, 0xb0fb22e6, 0x47d35e77, 0x2550d581, 0x99fde5e0
.word 0xddfcbb79, 0x97250e72, 0x159bcba9, 0x7da998dc, 0x7459df74, 0xaed9011d, 0xe0090399, 0x849e43b8
.word 0x8228e3c4, 0xc8951290, 0x0d2d0db4, 0x6da96758, 0x6c773cc7, 0x66307391, 0xbb59e340, 0x34a8d686
.word 0xd9c3e904, 0x19d6e659, 0x24187ee2, 0x3924dab8, 0xcf0e18f8, 0xb85357d1, 0x450143f6, 0xb28cf010
.word 0x38a44d53, 0xe884c2bb, 0x627bea7a, 0x9c419c33, 0xc48a67eb, 0x3370958a, 0x11b83dbe, 0xe74ad674
.word 0x1d3e53a9, 0x833cba03, 0x418e3cd2, 0x124a2f84, 0x66a29268, 0xdce5f7fa, 0x818a06cf, 0x9accb012
.word 0xa680b277, 0xe6397781, 0xa81ce825, 0x7d09a142, 0x0279e58d, 0xfe15e752, 0xba798305, 0x23de6718
.word 0x5ac565fa, 0xc3f0f358, 0x54c45556, 0xf932dd9d, 0x9394cc49, 0xbb4aa459, 0x05a3cb17, 0x5da5d863
.word 0x78a6e70f, 0x50c7ef6f, 0xd426eda0, 0x13a1cf50, 0xedd1a9d8, 0xd599feeb, 0xe92a1e43, 0x72ab5b68
.word 0x5604b9cb, 0xbb83b31a, 0x9bbee9e2, 0xdf47e359, 0x482cdc90, 0x66f34749, 0x8517c37c, 0xd0c83a8d
.word 0x6c82297e, 0xcc05c3f3, 0x742a1c95, 0x2f38a79f, 0xf5dead3d, 0x1174eb28, 0x7ebdd78a, 0x14acc8e3
.word 0x461d7c1b, 0xa2b97681, 0x9bad20fb, 0x42786e4f, 0x66844b93, 0x519faf94, 0x9831f554, 0x4833bb2c
.word 0x28687e24, 0xcc199855, 0x40c0e3ff, 0xae2163da, 0x5baecf6e, 0x144be2fa, 0x870fb94d, 0x5fd8d01d
.word 0x1ba26f3b, 0x03a2ba3c, 0xf3104d66, 0x439dbaa8, 0x167b1849, 0x71ea6ccf, 0x83c18930, 0x3e93783d
.word 0x45df6a46, 0xae2184bd, 0x1661bc4c, 0x2cddbba8, 0xb743565f, 0x0b62d48d, 0x3d7baa60, 0x208cae61
.word 0x3c3d8226, 0x2f13a341, 0xecfb116f, 0x416d95c6, 0xbafa3514, 0x0618a3a2, 0x953d725f, 0xabfd991f
.word 0xb2081403, 0xe373241d, 0x45f97980, 0x3608b3db, 0x25b94319, 0x4cca2995, 0x676a911c, 0x5fdc8f7d
.word 0x25a612e7, 0x9b82658a, 0x3daec889, 0x4ad43f6c, 0x55134a47, 0x192d247e, 0xd7077026, 0x382aa650
.word 0xb762b8f2, 0x43757f71, 0x2ae2e31c, 0xaa73d540, 0x94212312, 0xb2593393, 0xc50b6d17, 0x848273db
.word 0x38d22056, 0xe8396081, 0x0d82f3c5, 0x207f8af6, 0x4da68c5d, 0x38610340, 0x051b2f5d, 0x40e47bd6
.word 0x44b52fb6, 0xed53dd88, 0x599982ea, 0x2e896874, 0x14ef3c96, 0xfd607f20, 0x5db8fe41, 0x0263a80c
.word 0x69c0d0e0, 0xebd0bd6f, 0x5e4b5a14, 0xde6ed2df, 0xb767a6f1, 0xe0407668, 0x56f2bb1d, 0x7757974e
.word 0x859549a2, 0x342059ea, 0x0d1a962f, 0xbcee35a7, 0x78a34cf0, 0x52a7ae04, 0x026ba463, 0x844386ee
.word 0xfb3adb0f, 0x22653e60, 0x769acb2a, 0xc6f9f10c, 0xd6ff8d03, 0x692eef14, 0xad0e6be2, 0x9b5b625c
.word 0xcf2f7b8f, 0x60c112bf, 0xbb70605d, 0xdeefaadb
.section .region_1,"aw",@progbits;
region_1:
.word 0x0ec7faf6, 0x95516a5b, 0xdaba1c19, 0x17e2b2d7, 0x7b6ce7a1, 0x2b63bc00, 0xa2d934e2, 0x45fcb346
.word 0xc5441142, 0x67e2f134, 0x51269e47, 0x36c72c5a, 0xf5a6ab54, 0x0accac4b, 0x8aedd089, 0x6ac053fa
.word 0xe25eea78, 0xb802824d, 0x2d21bcb0, 0x96083185, 0x0eaeae21, 0x56036b14, 0xb59cfe83, 0xde6e496c
.word 0x46899ff2, 0xc8fbf65a, 0x59eed475, 0x52c58f4a, 0x14526acf, 0xdd85f8d7, 0xcac11472, 0xce2ff5fc
.word 0xe562569b, 0xd50511a6, 0x06d47783, 0x28acf91e, 0x80ff8bfe, 0x1a43effe, 0x59546f4c, 0x5086450f
.word 0x9c50d8f6, 0xb654f558, 0xeddb3256, 0xd1a32d11, 0x521d82cc, 0xc4a4c879, 0xeb282acc, 0xc5b43095
.word 0x278c897b, 0x7793d36d, 0x301bf684, 0x877daeb1, 0x90c063e9, 0x3286265a, 0xe1feeb0f, 0xf305e7b7
.word 0x0240b159, 0xa4110c42, 0x00db48c2, 0xc53bd35a, 0xdb549aad, 0xc4639d6f, 0xff917ce1, 0xb7bdb643
.word 0x3f329287, 0x81717331, 0x74fb2d63, 0x58ddddc1, 0xf68b1bb9, 0x730ac261, 0xdd62e0fc, 0x83d74c24
.word 0xa240f7d0, 0x8b560a53, 0x22592da5, 0xae7e785c, 0xf1546f7d, 0xdc24d6ce, 0x6c7ba88b, 0x7adfaf53
.word 0x86acbe5a, 0x2ad94288, 0x162d9a7e, 0x385a5d55, 0xb0136c22, 0x43f749de, 0x07ddead4, 0x022fedd4
.word 0x9d83cb60, 0x19d35e4d, 0x7b303892, 0xdc1570d6, 0x8d8f336d, 0x4301831b, 0x3ce73df0, 0x830fa50c
.word 0xe3d6f879, 0xc4031bca, 0xfe75242e, 0x9cbe4551, 0x3a874670, 0x389a850e, 0x16c8105f, 0xf0453e2e
.word 0xba9241ad, 0x75d05dea, 0xcec5672a, 0x9fbf33da, 0x354f1066, 0xbe065802, 0x650ef95f, 0x1a76fbe1
.word 0x8d3b8ad6, 0xa7cc900e, 0x010c238d, 0xe5ee84cb, 0x97b840c7, 0x73f45632, 0x34e35a39, 0x0b205944
.word 0x8e6c8891, 0x542199e8, 0x75d9181f, 0x5a64a4b2, 0x3a0ce68e, 0x2e0e53de, 0xb7810863, 0x1d2d9e9d
.word 0x63f3e824, 0x54a2e37f, 0xcc6a4292, 0xa979c1dd, 0x9d85b6e1, 0xc9094730, 0x843efcfa, 0xbfb3b524
.word 0xb7f73db5, 0xbd2b1574, 0x0f8330aa, 0x02b65534, 0x616de79b, 0x9d3f96a6, 0x88b10827, 0xe7160460
.word 0x98bbfb95, 0x840faa1f, 0x0b052924, 0x6a5dd2bd, 0xf4c0d340, 0x551afc08, 0xae1fcf44, 0x342e12fb
.word 0x8a11f7f2, 0x97404ed5, 0x271b0999, 0x207d042b, 0x9cea435d, 0x4b2c599d, 0xf2daa4d5, 0x289684ef
.word 0xcb6b971f, 0xe63125db, 0x5715bae0, 0x9ecaeb6f, 0xb0a3e19d, 0xf4d9c597, 0xbc302d58, 0x6c2b07a5
.word 0x228e9310, 0xadcee6e2, 0xc96f9c5a, 0x64e5a145, 0x7643f8ac, 0x447cf078, 0xace6108a, 0x89e29e8e
.word 0x5a4f06f5, 0xf87cb853, 0x2c574521, 0xf1e6aa06, 0xa25ddb2a, 0xd8bc2e56, 0xc8d6a3d4, 0x7327c70a
.word 0x296d8067, 0xa5bf5a5f, 0x1ae7268b, 0x881787fc, 0xf9342304, 0xd39c63c8, 0xb926f8b1, 0x3311fbcf
.word 0xd5b221a0, 0x2f1ce784, 0xdb7ede06, 0x6c2110c9, 0x4a936df7, 0x09cd1077, 0x12f1a15d, 0x9e7a4e0b
.word 0xfc036113, 0x1ce3ce70, 0xa468333d, 0x8c9e12ca, 0xa3a64709, 0xd35391c8, 0xf502c788, 0xb0cc7943
.word 0xead95c61, 0x39fd6016, 0xffa82c73, 0xde9f37d5, 0xd9c44b76, 0x17a17e41, 0x10fcb7cb, 0x4ea01383
.word 0xacc80f92, 0x9627715a, 0x4497f4b5, 0x7fea35f5, 0x48954c49, 0x5e473526, 0x81580cf9, 0x079d2d4e
.word 0x2141a7d8, 0xd2d6c1f2, 0x96af1eb1, 0x5f6be73e, 0xfbf1ede4, 0xc061524e, 0x94a4b664, 0xcab534ce
.word 0x3295d2b1, 0x804bf254, 0x4cac82ed, 0x4137efe5, 0x64b8748f, 0x97040834, 0x7cfcf210, 0xf8c7ee75
.word 0x76c3060e, 0xae3ff1c7, 0x91735749, 0xa85a789f, 0x2fdc75ab, 0xc7185b3b, 0x2e049a4e, 0xe600fc11
.word 0x98b7e19a, 0xbc8e22f8, 0xc075f928, 0x94782fab, 0xea160702, 0x42b47123, 0x47f6dd51, 0xace1605a
.word 0x87664fd9, 0xc013be50, 0x9e13bd04, 0x32730b23, 0x7820c843, 0xbc322380, 0xcd75fe22, 0x1c829cd6
.word 0xdf2ebc6c, 0x2a6afa22, 0xf23a291b, 0xa6e53782, 0x07a27d2f, 0x80b02ba7, 0x71108460, 0xb5e6c79c
.word 0x2e07c72c, 0x26eb8a40, 0x114ee908, 0x645c0a5b, 0x61858d08, 0xcded6288, 0xcb7c787a, 0xc50e1ce9
.word 0x24e3a651, 0xd9837e33, 0x87a755ca, 0xf3ee7d08, 0x24533b22, 0x9a1f1f97, 0x10c99b45, 0x90bc44b1
.word 0x2b327b98, 0xd92ea008, 0x9ba62017, 0xb6f1bb7e, 0xb77b6b3d, 0x0e3e11f2, 0x82877261, 0x473020a2
.word 0x46911242, 0x58f6a045, 0x2ba3e162, 0x528f4815, 0x0ba861b5, 0x9624d6f9, 0x40fb6a71, 0x0e20a5ad
.word 0x559cee5e, 0x42d959d3, 0x892b978f, 0xaccc3697, 0x88976e17, 0xf6fb2c5e, 0x9ad91856, 0xe44594ea
.word 0x51a0dd62, 0x60a434bd, 0xb64d5ccf, 0xe3700bbb, 0x9e7f0337, 0x19552582, 0x51f1030f, 0x217d8ade
.word 0xe8713a40, 0x5edc6c42, 0x9e65c76c, 0xd3e6afa0, 0x7d7094b1, 0x585e196e, 0x7879fa3b, 0x460b33fc
.word 0x01f01811, 0xd9d08878, 0x8c2a7e69, 0x38345ca3, 0x97530c8f, 0x7961a817, 0x93ed098e, 0x73c622b8
.word 0xdb40af7e, 0x2da6a5f1, 0x841e57d1, 0x60d6b5b5, 0x410bf7fa, 0x6c0df639, 0x83a84eaf, 0xdbe16cae
.word 0x4e405128, 0x6d3a8758, 0xddc482af, 0x7ed779f5, 0x39dd4f18, 0x2ff5b93e, 0x902e2cf7, 0x9e7269ab
.word 0x76bac610, 0xe739d15f, 0x80a552d2, 0xcc5db19a, 0xee66506d, 0x0788b55d, 0x43a73630, 0xa53f054b
.word 0x1bffd337, 0x3a6a3a20, 0x9c37bfcf, 0xbc2061dc, 0x618116e4, 0xa4fbe170, 0x3de126d6, 0x8f40c83b
.word 0x230bacec, 0xb57410a1, 0xf38407db, 0xd819f1d9, 0x67232815, 0x321a3fd6, 0xb546e1a8, 0x51993d53
.word 0x463f92ac, 0xb2d645c5, 0xd7296588, 0xcac7ebd1, 0xe1618941, 0x297a202c, 0xaee120c5, 0xe1592ffc
.word 0xd058d00b, 0xb6f36c91, 0x78a4a58b, 0xf06d2b5a, 0x2d5dde1c, 0x3587e519, 0x814ec33a, 0x4d0c8fd5
.word 0x6d97e42f, 0x34fa6b95, 0x28f3d8f0, 0x0051b41e, 0x49978e85, 0x22e5f584, 0xbab0b09a, 0x56b53284
.word 0x429e86f5, 0x4c279ef2, 0x420bddd9, 0xecc59247, 0x391abe01, 0x8e145afa, 0xc6a9e270, 0x762d7db1
.word 0xdc0d747b, 0x5b5d6a37, 0x4a09fd69, 0x379b8b82, 0xe421f374, 0xe7a8b9cf, 0xc254bde3, 0x745a128d
.word 0x252cf16e, 0xad69fa62, 0x55995b2c, 0x648fb919, 0xc6c890cc, 0xd1f50ceb, 0x31cb7ed4, 0xd4d9b8f0
.word 0x29a2b937, 0x76c29e2b, 0xadbb63d2, 0x1f3255fc, 0x44a80168, 0xf3db4f35, 0x4c554aec, 0x72c350ad
.word 0x4b112789, 0x5d461163, 0x1227c6c6, 0x52f4552e, 0x6a9a3eb0, 0x3cac27de, 0xc9e07908, 0x4b7c92bd
.word 0x756ab369, 0xeb6c8366, 0x7026e981, 0xc7059c80, 0xfb041d8f, 0xcece44e1, 0x1a68c5e3, 0xdf12d42f
.word 0xc4be7261, 0xb5e49c0d, 0x9a29da74, 0x431b4eea, 0x5083c6a8, 0x79125091, 0xe10e58ce, 0x57f7f1e5
.word 0xaa88e170, 0x6bb41c46, 0xc47911f5, 0x554cd9bf, 0xf7775260, 0xfb620906, 0x4011923a, 0x254460ef
.word 0x151d0ba5, 0x8395a70b, 0x2bdfebb9, 0xe8d82ca1, 0x9c11de85, 0xd91fd48e, 0x2f5e8d5a, 0x5a59c098
.word 0xa77312f0, 0xa06dd6d7, 0xfb10e298, 0x8ebc7bd1, 0x2645a84d, 0x72d5f36b, 0x253b1ab4, 0x5a0eefec
.word 0xa6f3d410, 0xdda5fd96, 0xe42f3c7f, 0xb0344884, 0x59825af2, 0x661207f2, 0x82788ce4, 0x6800f78a
.word 0x56880f88, 0x01b6c644, 0x38824c6a, 0x4dfb2b65, 0xbdf8de25, 0x7f8509c2, 0x4cebfc88, 0x52f8d71a
.word 0x9bf9b9f9, 0xdeca934b, 0x33e790e4, 0x8d42722f
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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x8, x5, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x30, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x30, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x30, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x30, x15, ecall_handler
                  li x15, 0x1
                  beq x30, x15, instr_fault_handler
                  li x15, 0x5
                  beq x30, x15, load_fault_handler
                  li x15, 0x7
                  beq x30, x15, store_fault_handler
                  li x15, 0xc
                  beq x30, x15, pt_fault_handler
                  li x15, 0xd
                  beq x30, x15, pt_fault_handler
                  li x15, 0xf
                  beq x30, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

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
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x5, x8, zero
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
                  add x5, x8, zero
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
                  add x5, x8, zero
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
                  add x5, x8, zero
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
                  add x5, x8, zero
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
                  add x5, x8, zero
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
