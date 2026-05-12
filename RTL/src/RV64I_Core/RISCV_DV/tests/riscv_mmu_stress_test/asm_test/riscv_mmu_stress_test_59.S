.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x90a47055
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x7
                  li x5, 0xd826aa15
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xfea213a3
                  li x10, 0x80000000
                  li x11, 0xb205309c
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0x55690901
                  li x16, 0x0
                  li x17, 0xce45b4f0
                  li x18, 0xa
                  li x19, 0x80000000
                  li x20, 0xfa3a1dc1
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xb
                  li x26, 0xfe2c2c44
                  li x27, 0x80000000
                  li x29, 0x7
                  li x30, 0x0
                  li x31, 0x84cd04d1
                  la x28, user_stack_end
main:             la           s10, sub_1
                  nop
                  slt          s11, s5, a4
                  slti         s5, a4, 179
                  srai         a0, a3, 12
                  sltiu        t1, t6, 476
                  srai         a7, s8, 11
                  addi         s10, s10, -779
                  ori          a1, sp, 784
                  srl          s9, t0, s6
                  slli         a2, a2, 4
                  srl          t5, t1, t5
main_j2:          jalr         a2, s10, 780 #jump main -> sub_1
                  la           t5, region_1+1539 #start riscv_load_store_hazard_instr_stream_1
                  ori          t6, s8, -1795
                  sb           a4, 30(t5)
                  lb           zero, -674(t5)
                  lb           s0, -674(t5)
                  sb           ra, -674(t5)
                  lb           t6, -674(t5)
                  lbu          a5, -674(t5)
                  lh           a5, -157(t5)
                  lhu          s9, -157(t5)
                  sb           s9, -1050(t5)
                  lbu          sp, -1050(t5)
                  sb           s4, -324(t5)
                  lbu          a0, -696(t5)
                  lbu          s10, -696(t5)
                  lbu          s0, -696(t5)
                  sh           a6, -515(t5)
                  slli         s10, t6, 1
                  sw           a3, -515(t5)
                  sb           s0, -1276(t5)
                  sh           a4, 377(t5) #end riscv_load_store_hazard_instr_stream_1
                  la           a3, region_1+1116 #start riscv_load_store_rand_instr_stream_0
                  srl          s5, t2, s2
                  sh           s3, 710(a3)
                  sb           tp, 620(a3)
                  lbu          s4, -858(a3)
                  lbu          a7, -386(a3)
                  slt          t4, s0, t1
                  xori         s2, a0, -128
                  andi         s8, s8, 1908
                  lhu          t5, 522(a3)
                  xor          t1, a7, tp
                  lbu          a4, -64(a3)
                  sb           s0, 98(a3)
                  slli         s3, t0, 13
                  lbu          s6, 410(a3)
                  lbu          s8, -48(a3)
                  lb           zero, 78(a3)
                  lui          s9, 741529
                  sb           s1, 116(a3)
                  add          t6, t1, s2
                  sub          a0, s7, ra
                  lh           s3, 30(a3)
                  sltu         t6, s4, t3
                  sb           a2, -20(a3)
                  lhu          t4, 492(a3)
                  sub          gp, s2, a1
                  sltiu        a7, t5, -640
                  sh           s3, -600(a3)
                  addi         t4, s10, -930
                  srai         s7, s4, 28
                  sb           tp, 229(a3)
                  sh           s2, -646(a3)
                  sb           a6, -869(a3)
                  lhu          t1, -534(a3)
                  lbu          t4, -579(a3)
                  slli         s2, s5, 18
                  sra          gp, a7, s5
                  lbu          gp, 685(a3)
                  srai         sp, gp, 1
                  slli         t5, t6, 26
                  lw           s3, -696(a3)
                  sw           t3, 364(a3)
                  lb           tp, -16(a3)
                  or           s11, s0, zero
                  sub          ra, zero, s11
                  lbu          t5, -582(a3)
                  lhu          s4, -582(a3)
                  lh           a2, -126(a3)
                  lb           tp, 847(a3)
                  sra          s10, t4, gp
                  sltu         s10, s0, t4
                  sltiu        t6, t2, -1778
                  sh           a1, 592(a3)
                  lhu          t2, -682(a3) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+1654 #start load_store_instr_stream_0
                  la           tp, region_0+1062 #start load_store_instr_stream_1
                  lbu          a1, -1186(t4)
                  la           sp, region_0+1061 #start load_store_instr_stream_4
                  la           t1, region_0+1933 #start load_store_instr_stream_3
                  lb           s4, -688(t1)
                  sb           s4, 9(tp)
                  sb           a3, -11(tp)
                  lbu          a5, -93(sp)
                  lb           s7, -656(t1)
                  sb           t0, 220(sp)
                  la           s2, region_0+220 #start load_store_instr_stream_2
                  lb           zero, -896(t4)
                  lb           t2, -9(tp)
                  sb           s5, -259(t1)
                  sb           s1, 3(tp)
                  sh           a4, -1470(t4)
                  lb           a1, -1422(t1)
                  lbu          t6, -78(s2)
                  lbu          s6, -15(tp)
                  lb           a0, -186(s2)
                  lb           a7, -740(t4)
                  lw           ra, 136(s2)
                  lhu          s9, 216(t4)
                  lb           a5, 109(s2)
                  sb           t1, 8(tp)
                  sb           a4, -496(t1)
                  lbu          t6, 35(s2)
                  lhu          s8, -140(t4)
                  lbu          s4, 86(sp)
                  sh           a2, 8(tp)
                  sb           sp, -95(sp)
                  lbu          t5, 91(sp)
                  lh           s4, 18(s2)
                  sb           a3, -11(sp)
                  lb           ra, -3(tp)
                  lh           s10, -6(tp) #end load_store_instr_stream_1
                  sb           a6, -1(sp)
                  lbu          a0, -212(t1)
                  sb           a3, -163(sp)
                  lb           s7, -1652(t1) #end load_store_instr_stream_3
                  sb           t3, 223(s2)
                  lb           a0, -587(t4)
                  sw           s6, 40(s2) #end load_store_instr_stream_2
                  lbu          s11, 128(sp) #end load_store_instr_stream_4
                  lb           s6, -217(t4) #end load_store_instr_stream_0
                  la           s4, region_1+1397 #start load_store_instr_stream_1
                  la           t5, region_1+10 #start load_store_instr_stream_0
                  sb           s1, 1289(t5)
                  la           s6, region_1+5 #start load_store_instr_stream_2
                  lb           a3, -4(s4)
                  lb           s10, -15(s4)
                  sb           s3, 8(s4)
                  sb           s0, 12(s6)
                  lhu          t4, 35(s6)
                  sb           s7, 8(s4)
                  sb           t2, 1011(t5)
                  lh           t2, -1(s4)
                  sb           s5, 30(s6)
                  lhu          s9, 1738(t5)
                  sb           s10, 67(t5)
                  lhu          tp, 17(s6)
                  lb           tp, 21(s6)
                  lb           s7, 10(s4)
                  lb           s2, 14(s6) #end load_store_instr_stream_2
                  lb           t6, -16(s4) #end load_store_instr_stream_1
                  lb           a2, 377(t5) #end load_store_instr_stream_0
                  la           s4, region_0+1815 #start riscv_load_store_hazard_instr_stream_0
                  slt          s2, a1, s3
                  lbu          s8, -11(s4)
                  sb           a4, 4(s4)
                  sb           ra, 16(s4)
                  sb           a1, 1(s4)
                  lbu          s6, -5(s4)
                  srli         s6, s5, 14
                  lb           s5, -5(s4)
                  lbu          ra, 7(s4)
                  sb           a3, 7(s4)
                  andi         s11, s0, 1802
                  sb           zero, 3(s4)
                  sh           t5, -13(s4)
                  sh           t6, -13(s4)
                  sh           s10, -13(s4)
                  lhu          t1, -13(s4)
                  lhu          s5, -13(s4)
                  lb           s6, -13(s4)
                  srai         sp, s2, 29
                  slt          s0, a2, t4
                  lbu          t2, -13(s4)
                  lw           t0, 1(s4)
                  lb           s3, 1(s4)
                  lhu          t1, 1(s4)
                  nop
                  and          s3, a0, t1
                  sh           a3, 1(s4) #end riscv_load_store_hazard_instr_stream_0
                  la           t1, region_0+195 #start riscv_load_store_rand_instr_stream_1
                  lbu          gp, -9(t1)
                  add          t0, a2, a6
                  addi         a1, a2, -812
                  srai         ra, t3, 18
                  lbu          a5, -4(t1)
                  sub          s0, a7, t5
                  and          zero, tp, s5
                  lw           a0, -11(t1)
                  lb           sp, 12(t1)
                  srl          t5, gp, t5
                  lb           s0, -4(t1)
                  nop
                  srli         t4, t2, 22
                  sltu         s6, sp, a7
                  lbu          t5, -16(t1)
                  slli         s8, s10, 6
                  sltiu        s5, a5, -618
                  nop
                  sltu         sp, tp, s1
                  sb           t2, -10(t1)
                  slt          s2, s3, s11
                  addi         t6, a6, 824
                  auipc        t4, 304648
                  auipc        s0, 184398
                  ori          s0, a0, -1231
                  nop
                  sll          a7, a7, t3
                  sub          gp, a6, a4
                  add          t2, s2, t4
                  sh           a2, 5(t1)
                  sltu         a3, t0, a1
                  lb           a7, 16(t1)
                  lbu          a5, 10(t1)
                  auipc        t2, 427116
                  and          s6, a7, s2
                  lb           a7, -12(t1) #end riscv_load_store_rand_instr_stream_1
                  and          a5, a7, a3
                  bltu         t4, s5, 18f
                  slli         sp, a2, 15
                  andi         a7, tp, -1050
                  sub          s9, s1, s2
                  xor          t5, s10, t0
                  sra          gp, t0, s4
                  sltiu        tp, gp, 898
                  beq          s7, s2, 14f
                  add          a3, s4, a5
                  srli         a2, t6, 21
                  slli         s0, gp, 15
                  sub          s6, sp, t3
                  and          s7, s10, t5
14:               slli         gp, a2, 11
                  xori         a4, ra, 1518
                  xor          a4, a7, a1
                  andi         s11, a1, -1361
18:               beq          s11, a4, 24f
                  bne          s6, a5, 37f
                  xori         s5, t3, -600
                  ori          s7, s6, -198
                  srl          s2, a6, t6
                  andi         s4, t1, 1055
24:               srli         gp, s8, 21
                  auipc        a5, 133377
                  add          s7, s4, gp
                  sll          s10, s1, s5
                  srli         tp, ra, 26
                  slt          a4, t2, t1
                  nop
                  sra          zero, t4, t5
                  sltu         zero, s9, t2
                  lui          a7, 750269
                  sra          s6, s4, a1
                  slti         s4, s5, 1432
                  auipc        s5, 552666
37:               srl          s8, a2, s9
                  auipc        s10, 927464
                  srl          s11, t5, s4
                  slli         a1, tp, 18
                  srai         t5, a0, 8
                  bltu         t4, a5, 50f
                  sltiu        t1, zero, 1071
                  andi         s8, s9, 566
                  srai         a0, t2, 13
                  nop
                  slt          gp, a2, s6
                  sra          t2, s7, s5
                  bgeu         s3, s8, 61f
50:               sub          s3, t3, zero
                  xori         a3, s4, 535
                  sub          a0, s11, a0
                  ori          t6, t3, -165
                  xor          a5, ra, a2
                  lui          zero, 621851
                  addi         s6, a0, 791
                  sll          a3, s4, gp
                  xor          t2, s0, a6
                  add          a1, zero, s6
                  bge          zero, t6, 70f
61:               addi         zero, zero, -1101
                  slt          a0, ra, a4
                  sra          s5, s2, t1
                  slli         t1, s3, 7
                  add          s9, s0, s0
                  addi         s7, s10, 336
                  blt          s0, s4, 75f
                  andi         t0, a5, 233
                  sll          s5, gp, s1
70:               bgeu         t5, a5, 90f
                  bne          s9, t1, 76f
                  sll          s11, t2, t2
                  bge          t1, a7, 93f
                  slti         t6, s3, 1156
75:               slt          a3, s5, s6
76:               sub          t1, sp, s4
                  slt          a0, t2, s2
                  srl          tp, a5, s3
                  slti         s3, t1, 1043
                  srli         t5, t6, 1
                  sll          t1, s0, a0
                  blt          a6, gp, 88f
                  xor          a1, s1, s10
                  beq          s9, ra, 104f
                  bge          s3, s5, 86f
86:               sll          s9, a6, a7
                  srai         s11, t2, 10
88:               sll          s6, a6, s3
                  ori          a5, s4, -1888
90:               lui          a1, 701744
                  bltu         a5, s5, 97f
                  bgeu         s6, gp, 105f
93:               and          a4, a3, s5
                  xor          t5, t2, a7
                  auipc        s8, 161693
                  srai         s9, tp, 0
                  nop
                  la           s3, sub_2
                  addi         s3, s3, -126
                  srl          t0, s10, t1
                  sub          a2, gp, t4
                  sub          s6, t5, s5
main_j1:          jalr         a2, s3, 127 #jump main -> sub_2
                  srai         gp, zero, 25
                  bne          t0, s11, 105f
                  add          ra, t1, t3
97:               ori          a5, t2, -1110
                  add          gp, s9, t3
                  sub          s2, a6, sp
                  slti         a7, s11, 1142
                  beq          ra, s3, 109f
                  slt          gp, s7, a0
                  add          s9, s10, zero
104:              add          zero, ra, gp
105:              sub          zero, a0, s10
                  nop
                  andi         s3, a6, 1999
                  srai         t0, t1, 13
109:              andi         a0, t4, 1262
                  sll          gp, s7, a1
                  or           a5, a2, a7
                  blt          t4, s3, 121f
                  sltiu        t2, t5, -1517
                  sltiu        a3, s0, 1737
                  srl          t4, s4, t3
                  bne          t4, s11, 133f
                  ori          s9, a0, -578
                  lui          a7, 156538
                  lui          s7, 530208
                  sra          a3, s0, s7
121:              xor          s11, a4, s11
                  xor          s4, a1, t1
                  nop
                  srai         a3, a1, 18
                  bge          a4, s0, 138f
                  lui          a4, 694978
                  lui          s8, 168248
                  sra          s0, sp, s0
                  sub          t1, s11, a4
                  slli         s2, a5, 23
                  bne          s11, s8, 139f
                  addi         s7, s5, -455
133:              ori          s5, t5, -1523
                  add          s10, a5, s6
                  auipc        a3, 525635
                  slt          gp, s9, zero
                  sll          a1, t5, s0
138:              and          s3, s4, t2
139:              sll          a5, t2, t0
                  sub          t0, a4, t1
                  beq          a2, t2, 154f
                  and          a7, a7, t6
                  nop
                  lui          zero, 230837
                  xor          t1, a2, s2
                  srai         tp, a6, 10
                  blt          a7, s5, 148f
148:              slli         a2, t6, 27
                  slt          a0, a5, s4
                  andi         a3, s4, 1987
                  blt          s5, t2, 166f
                  slli         s3, a3, 27
                  bge          s11, a6, 162f
154:              blt          s4, sp, 163f
                  slti         sp, t0, -17
                  slli         a5, t6, 2
                  sra          tp, s6, s9
                  xor          s6, tp, s8
                  addi         a5, gp, 932
                  xor          s6, t2, t6
                  srai         ra, t1, 15
162:              and          a3, a5, a1
163:              srai         ra, t0, 20
                  or           s9, t6, s3
                  auipc        t5, 231297
166:              andi         t4, s9, 1021
                  srli         t2, a2, 20
                  lui          t6, 259629
                  sltiu        a5, s3, -810
                  nop
                  srli         a4, t0, 28
                  slti         t4, s5, 691
                  sltu         s3, a1, s8
                  blt          sp, a4, 184f
                  sll          sp, a1, s3
                  nop
                  sltu         a5, t5, t3
                  sra          s6, s6, s6
                  lui          t2, 953792
                  bge          t0, a6, 197f
                  sltu         t1, a1, gp
                  xor          t5, t2, t0
                  or           s7, a5, s1
184:              sub          sp, a2, s7
                  bge          a5, s6, 187f
                  lui          s3, 1007699
187:              addi         s5, ra, -1976
                  andi         zero, zero, -761
                  sltu         t0, a2, a2
                  slli         s11, a5, 27
                  slti         a0, t3, -1399
                  srai         s8, sp, 16
                  xor          t2, a6, s7
                  slli         tp, sp, 9
                  nop
                  sub          s6, s0, s9
197:              lui          t1, 419641
                  blt          s9, s3, 200f
                  nop
200:              lui          a3, 963012
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            lui          t2, 36134
                  or           s8, s3, sp
                  ori          s3, s3, 416
                  blt          sp, a2, sub_1_stack_p
sub_1_stack_p:    addi         t3, t3, -44
                  slli         s0, s11, 11
                  srl          sp, s0, s4
                  sw           a2, 4(t3)
                  add          a7, s11, a1
                  sub          a3, gp, s4
                  la           a3, region_0+625 #start riscv_load_store_hazard_instr_stream_4
                  slt          s6, a6, s7
                  lhu          t2, 1229(a3)
                  lb           s11, 1229(a3)
                  sub          ra, s0, t1
                  sh           gp, 1229(a3)
                  lw           s2, 15(a3)
                  lw           sp, 15(a3)
                  sltiu        a0, t3, -821
                  andi         a2, t5, -1587
                  lbu          s11, 15(a3)
                  xor          sp, a1, t1
                  sb           s11, 15(a3)
                  add          tp, a0, t5
                  lb           t1, 909(a3)
                  lh           a0, 909(a3)
                  xor          s3, t0, t0
                  sh           s10, 909(a3)
                  lbu          s11, 909(a3)
                  sb           s1, 909(a3)
                  lh           s3, 909(a3) #end riscv_load_store_hazard_instr_stream_4
                  la           sp, region_1+1844 #start riscv_load_store_hazard_instr_stream_0
                  sh           t1, 16(sp)
                  lb           t6, 16(sp)
                  lhu          s9, 16(sp)
                  lbu          t6, -35(sp)
                  sb           t3, -53(sp)
                  andi         t2, a4, -672
                  lb           a2, -53(sp)
                  lb           a5, -53(sp)
                  sb           a7, -53(sp)
                  lb           s9, -53(sp)
                  sb           s4, -45(sp)
                  sb           s0, -45(sp)
                  sb           t2, -21(sp)
                  lhu          ra, 56(sp)
                  lbu          a0, 41(sp)
                  lb           a1, 41(sp)
                  lbu          t5, 29(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+168 #start riscv_load_store_rand_instr_stream_0
                  sb           a4, 2(sp)
                  sb           s10, -133(sp)
                  lw           a2, -12(sp)
                  sub          zero, a4, a4
                  and          t5, a6, t2
                  lw           a1, -108(sp)
                  slli         s3, s6, 29
                  lbu          s0, 29(sp)
                  slti         s0, s8, -380
                  ori          s11, t3, -1363
                  lh           s3, 80(sp)
                  lb           s10, 75(sp)
                  lh           t6, 6(sp)
                  ori          a4, s8, 349
                  lui          s2, 862455
                  lbu          s7, 114(sp)
                  srl          tp, a7, a1
                  and          t5, gp, s0
                  sltu         a1, t5, t5
                  lbu          t2, -79(sp)
                  lbu          a5, -49(sp)
                  sh           s11, 98(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_0+517 #start riscv_load_store_hazard_instr_stream_2
                  sb           s10, -290(s0)
                  sb           a1, -208(s0)
                  sb           s7, 84(s0)
                  slli         a0, s1, 20
                  lb           s8, 84(s0)
                  lbu          s8, 455(s0)
                  lh           s11, 1229(s0)
                  sb           t0, 522(s0)
                  lbu          s2, 522(s0)
                  lb           s3, -199(s0)
                  lhu          s10, -199(s0)
                  lhu          s3, -199(s0)
                  lbu          t6, -199(s0)
                  lbu          ra, -199(s0)
                  sb           zero, -268(s0)
                  lbu          gp, -509(s0) #end riscv_load_store_hazard_instr_stream_2
                  la           s10, region_1+1727 #start riscv_load_store_rand_instr_stream_3
                  xor          a5, s1, t2
                  and          t2, sp, gp
                  lhu          a5, -1181(s10)
                  sltiu        t5, a3, -490
                  sb           a0, -128(s10)
                  nop
                  or           s4, a4, s10
                  srli         ra, ra, 21
                  lb           s3, 123(s10)
                  andi         gp, a7, 696
                  ori          s6, s9, 466
                  xor          s11, ra, zero
                  andi         s0, s2, -104
                  add          a7, a6, t5
                  lh           a1, -1467(s10)
                  sll          zero, a3, s11
                  sb           a1, -1073(s10)
                  sb           s11, -522(s10)
                  sh           ra, -651(s10)
                  nop
                  lb           s0, -506(s10)
                  lb           a4, -258(s10)
                  sll          s0, s10, a1
                  lb           s6, -1598(s10)
                  lbu          s0, 131(s10)
                  lw           t1, -739(s10)
                  sll          a5, s10, t6
                  sh           t5, -747(s10)
                  sb           s2, -94(s10)
                  lbu          t0, 204(s10)
                  and          s7, s9, zero
                  lbu          s7, 29(s10)
                  lb           a0, -172(s10)
                  lbu          a0, -198(s10)
                  sb           a1, 130(s10)
                  srai         t6, a3, 23
                  lbu          zero, -776(s10)
                  sh           s6, -1643(s10)
                  lhu          s2, -635(s10)
                  lb           t4, -276(s10) #end riscv_load_store_rand_instr_stream_3
                  la           a4, region_1+655 #start load_store_instr_stream_2
                  la           s0, region_1+1602 #start load_store_instr_stream_3
                  la           a2, region_1+1301 #start load_store_instr_stream_0
                  lhu          s2, -4(s0)
                  lh           t6, -801(a2)
                  sh           a6, -1(a4)
                  lbu          s7, -1(s0)
                  sh           s4, 47(a4)
                  lh           s2, 43(a4)
                  lb           s5, -32(a4)
                  la           s4, region_1+138 #start load_store_instr_stream_1
                  lb           zero, -60(a4)
                  sb           t1, -15(s0)
                  lbu          s9, -1(s0)
                  sb           t3, -632(a2)
                  lb           t0, 14(s0)
                  sh           sp, 12(s4)
                  sb           a0, -710(a2)
                  lhu          s8, -12(s4)
                  lw           a0, 9(a4)
                  lh           s3, -39(a4)
                  sb           t6, -15(s0)
                  lh           t4, 187(a2)
                  lhu          s11, -333(a2)
                  lb           gp, 3(s0)
                  lbu          tp, 60(a4)
                  sb           t1, 13(s4)
                  sh           s7, 16(s0)
                  lb           gp, 145(a2)
                  lb           t0, -6(s4)
                  lb           s2, -1029(a2)
                  lbu          t0, 0(s4)
                  sb           a0, 3(a4) #end load_store_instr_stream_2
                  sb           s1, 418(a2)
                  lb           sp, -9(s4) #end load_store_instr_stream_1
                  lh           a0, 12(s0) #end load_store_instr_stream_3
                  lb           zero, -1129(a2) #end load_store_instr_stream_0
                  la           tp, region_1+1466 #start riscv_load_store_rand_instr_stream_5
                  nop
                  sb           t2, 69(tp)
                  sb           s11, -101(tp)
                  slti         t4, ra, 779
                  lbu          s11, -147(tp)
                  addi         a3, t4, 1841
                  lhu          s6, 92(tp)
                  lui          s4, 1015060
                  addi         a5, t0, -675
                  srli         s2, s6, 16
                  lui          t0, 632182
                  lui          gp, 969860
                  andi         s7, zero, 1427
                  auipc        a1, 384048
                  andi         t0, t3, 618
                  lbu          sp, 161(tp)
                  ori          t0, tp, -1810
                  sb           s2, -251(tp)
                  srl          t2, gp, s2
                  lw           gp, -122(tp)
                  sub          t1, s0, t0
                  sll          s9, gp, a1
                  sll          a7, t3, t4
                  lbu          a7, -72(tp)
                  nop
                  lh           t6, 256(tp)
                  srli         t6, s4, 16
                  sb           t3, 203(tp)
                  add          ra, s11, a0
                  lb           a2, 151(tp)
                  ori          t6, gp, -932
                  sra          t1, t1, t2
                  and          s8, s9, s5
                  sltiu        a1, a6, -1173
                  or           s7, t3, a3
                  lb           zero, -95(tp)
                  sb           t5, 42(tp)
                  lhu          t4, 62(tp)
                  lb           s7, -251(tp)
                  auipc        s10, 261823
                  lh           gp, -210(tp)
                  sltu         s9, t3, sp
                  lhu          s3, -148(tp)
                  slti         sp, a5, 1454
                  sb           gp, -201(tp)
                  lbu          a1, 155(tp)
                  srli         s2, a6, 21
                  slt          sp, a7, a2
                  sub          t5, t1, s1
                  sb           s9, 71(tp) #end riscv_load_store_rand_instr_stream_5
                  la           s2, region_1+1033 #start load_store_instr_stream_4
                  la           s5, region_1+1248 #start load_store_instr_stream_1
                  lb           a1, 61(s5)
                  lb           tp, 898(s2)
                  lbu          a4, 2(s5)
                  la           s10, region_1+685 #start load_store_instr_stream_3
                  sb           s11, -15(s10)
                  lb           a4, -53(s5)
                  lbu          t2, -8(s10)
                  la           t6, region_1+1675 #start load_store_instr_stream_2
                  lh           tp, 25(t6)
                  lhu          s4, 501(s2)
                  lb           s8, 8(s10)
                  la           a7, region_1+1867 #start load_store_instr_stream_0
                  sb           a0, -26(a7)
                  sh           t4, 15(s10)
                  sb           t3, -569(s2)
                  lb           a1, 96(a7)
                  lbu          s0, -132(a7)
                  lhu          s9, -9(s10)
                  sb           t2, -152(a7)
                  sb           t2, -830(s2)
                  lbu          gp, 202(t6)
                  sh           a2, 60(s5)
                  lbu          ra, -47(s5)
                  lhu          sp, -3(s10)
                  lhu          s9, -455(s2)
                  sb           s11, 124(s2)
                  lbu          s8, 114(a7)
                  lb           a4, -14(s10)
                  lb           s9, 7(s5)
                  lbu          s6, -5(s10)
                  lb           t1, 57(s5)
                  lbu          s0, 734(s2) #end load_store_instr_stream_4
                  lb           s9, -164(t6)
                  lbu          s6, -2(s5) #end load_store_instr_stream_1
                  sb           a7, 116(t6)
                  lbu          a0, -20(t6) #end load_store_instr_stream_2
                  sb           t4, 4(s10) #end load_store_instr_stream_3
                  lbu          s9, -239(a7) #end load_store_instr_stream_0
                  la           sp, region_0+317 #start load_store_instr_stream_0
                  lbu          t2, -56(sp)
                  la           s6, region_0+15 #start load_store_instr_stream_1
                  sb           t2, -24(sp)
                  lb           s0, -2(s6)
                  lbu          t4, -9(s6)
                  lb           s9, -54(sp)
                  sb           s7, 44(sp)
                  lw           s10, -21(sp)
                  lhu          t0, 17(s6)
                  lbu          t2, 40(s6)
                  sh           s0, -1(sp)
                  sb           a3, 2(s6)
                  sb           s0, -16(sp)
                  lbu          s4, -6(s6)
                  sb           zero, 2(sp)
                  lw           s5, -1(sp)
                  lb           a1, 28(s6) #end load_store_instr_stream_1
                  lbu          s8, 48(sp) #end load_store_instr_stream_0
                  la           t4, region_0+692 #start load_store_instr_stream_1
                  la           t1, region_0+893 #start load_store_instr_stream_2
                  lb           a4, 106(t4)
                  la           a1, region_0+1895 #start load_store_instr_stream_0
                  lb           a7, -160(a1)
                  sh           s5, -356(t4)
                  lbu          ra, -609(t4)
                  lh           s3, -11(t1)
                  lbu          a3, -144(t4)
                  lbu          ra, 8(t1)
                  lb           s0, 707(t4)
                  lh           sp, 7(t1)
                  sb           t5, 86(a1)
                  lbu          s10, -334(t4)
                  sh           s9, 11(t1)
                  lbu          gp, -223(a1)
                  lbu          s11, -197(a1)
                  sh           sp, 14(t4)
                  lb           a0, -543(t4)
                  lb           a2, 8(t1) #end load_store_instr_stream_2
                  lb           s3, 725(t4) #end load_store_instr_stream_1
                  lbu          s4, -126(a1) #end load_store_instr_stream_0
                  la           sp, region_0+498 #start riscv_load_store_rand_instr_stream_2
                  lbu          t1, -12(sp)
                  lh           a7, 14(sp)
                  sb           s6, -8(sp)
                  and          s11, s5, s5
                  lbu          a5, 13(sp)
                  sltiu        a2, gp, -85
                  lbu          t2, -2(sp)
                  lhu          s3, 6(sp)
                  andi         zero, a3, -1191
                  lb           a1, 3(sp)
                  lbu          a3, 7(sp)
                  and          s2, s5, a1
                  nop
                  slt          s8, a7, s7
                  lb           ra, -1(sp)
                  slli         s6, a0, 8
                  srl          ra, tp, a6
                  and          s4, a4, s8
                  sb           t1, 3(sp)
                  lbu          gp, -4(sp)
                  lbu          t2, -9(sp)
                  sb           gp, -1(sp)
                  lbu          zero, -6(sp)
                  lh           s6, -2(sp)
                  lbu          a4, 9(sp)
                  sltiu        t0, zero, 528
                  slti         s9, s9, 1680
                  sw           s10, -10(sp)
                  sb           s9, 1(sp)
                  lb           s8, -5(sp)
                  sh           a6, -8(sp)
                  lbu          a4, 12(sp)
                  sll          a7, gp, s8
                  slt          a3, a2, a3
                  sb           tp, 6(sp)
                  sb           a0, 12(sp)
                  sb           t0, -11(sp)
                  srli         t2, a7, 11
                  lb           t1, -5(sp)
                  lbu          s0, -2(sp)
                  lb           a1, 11(sp)
                  srai         gp, a1, 25
                  srl          s2, s6, s9
                  xor          t6, gp, zero
                  srl          tp, t6, t2
                  srl          s11, s9, s1
                  nop
                  lh           ra, 10(sp)
                  sub          t1, s1, a6
                  lbu          s3, -3(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a0, region_0+626 #start riscv_load_store_hazard_instr_stream_3
                  lbu          t4, 39(a0)
                  lbu          s0, 39(a0)
                  sw           a5, -14(a0)
                  sb           a7, 41(a0)
                  lbu          a7, 41(a0)
                  add          s6, s10, s0
                  lb           ra, 41(a0)
                  lb           a5, -23(a0)
                  sb           t3, -23(a0)
                  sh           t2, -50(a0)
                  lb           t5, 17(a0)
                  or           a2, a1, t4
                  sb           s5, 50(a0)
                  lhu          gp, -60(a0)
                  lhu          a3, -60(a0) #end riscv_load_store_hazard_instr_stream_3
                  la           gp, region_0+1173 #start riscv_load_store_rand_instr_stream_1
                  and          zero, a1, a7
                  lbu          t4, -48(gp)
                  lbu          t1, 64(gp)
                  sra          s7, zero, s3
                  xor          t1, a2, s4
                  lb           a4, -52(gp)
                  sw           t2, 11(gp)
                  sb           a4, -17(gp)
                  lw           t0, 23(gp)
                  sb           t5, -10(gp)
                  andi         t1, s5, -1547
                  lh           s9, -5(gp)
                  lb           s9, -15(gp)
                  xor          t2, s9, s0
                  srai         a3, s7, 7
                  lui          s5, 278214
                  slt          a7, s5, a3
                  xori         s5, a2, -1304
                  lbu          s8, -14(gp)
                  lb           a2, -40(gp)
                  nop
                  lb           s9, -34(gp)
                  ori          s2, s8, -563
                  sw           a1, 3(gp)
                  or           s6, t5, s10
                  lbu          t5, -32(gp)
                  lbu          s11, 62(gp)
                  sh           s3, 15(gp)
                  lbu          t0, -19(gp)
                  ori          s7, s2, 7
                  sra          s9, t4, s2
                  sw           zero, 19(gp)
                  lb           a7, 12(gp)
                  slli         sp, t6, 0
                  sb           gp, -21(gp)
                  lbu          s7, -48(gp)
                  srli         s6, tp, 1
                  lb           s3, -43(gp)
                  lbu          s9, -42(gp) #end riscv_load_store_rand_instr_stream_1
                  la           a4, region_1+207 #start load_store_instr_stream_2
                  la           t1, region_1+213 #start load_store_instr_stream_3
                  sb           s10, -16(t1)
                  la           a7, region_1+9 #start load_store_instr_stream_1
                  sb           a6, -6(t1)
                  sb           sp, 16(a7)
                  la           a5, region_1+1232 #start load_store_instr_stream_0
                  lh           s9, -3(a7)
                  lb           s10, -1147(a5)
                  lb           s8, 697(a5)
                  sb           a7, 4(a7)
                  lb           a0, -662(a5)
                  lb           t0, 10(a4)
                  lbu          s4, -2(a7)
                  lbu          s2, 14(a4)
                  sb           a0, -5(a7)
                  lb           sp, 11(t1)
                  sb           s9, -15(a4)
                  lbu          s3, -789(a5)
                  sb           s11, 9(t1)
                  lh           a0, -11(t1)
                  sh           a1, 7(a7)
                  lbu          t2, 4(a7)
                  lb           a0, 2(a4)
                  sb           s5, 725(a5)
                  lw           s7, -848(a5)
                  lb           tp, 5(t1)
                  sw           t1, -15(a4) #end load_store_instr_stream_2
                  sh           s4, 1(a7) #end load_store_instr_stream_1
                  lb           t5, 14(t1) #end load_store_instr_stream_3
                  lh           gp, 116(a5) #end load_store_instr_stream_0
                  la           t5, region_0+1820 #start riscv_load_store_rand_instr_stream_4
                  andi         tp, s6, -1718
                  sltu         a3, s4, s2
                  sw           s0, 0(t5)
                  lbu          a2, -7(t5)
                  lb           tp, 3(t5)
                  andi         ra, s10, 1043
                  lb           s3, 5(t5)
                  sub          zero, s5, t3
                  lb           s2, 9(t5)
                  lbu          s6, 7(t5)
                  lw           s4, -16(t5)
                  lbu          s0, 5(t5)
                  sw           s0, 12(t5)
                  slti         t1, a5, -1041
                  lui          a7, 127643
                  slt          gp, t6, t3
                  lb           a4, -7(t5)
                  lb           s6, 1(t5)
                  lh           sp, 12(t5)
                  sll          a5, t2, t0
                  lh           s3, -12(t5)
                  auipc        zero, 878449
                  andi         s10, s7, -913
                  sb           s4, 15(t5)
                  lb           a4, 13(t5)
                  srai         s7, s0, 5
                  lbu          a4, -7(t5)
                  lb           a5, -14(t5)
                  xori         s10, zero, -226
                  lb           t2, -14(t5) #end riscv_load_store_rand_instr_stream_4
                  la           a3, region_0+731 #start load_store_instr_stream_1
                  la           s8, region_0+197 #start load_store_instr_stream_2
                  lbu          t2, 112(a3)
                  lb           a7, -52(s8)
                  sb           s0, -142(a3)
                  la           s7, region_0+1821 #start load_store_instr_stream_0
                  lh           a5, 17(s8)
                  lh           t0, 7(s8)
                  lbu          zero, 143(a3)
                  lh           s4, -49(s8)
                  lb           s4, -1416(s7)
                  lbu          a7, -1242(s7)
                  sb           gp, -56(s8) #end load_store_instr_stream_2
                  sb           ra, -1286(s7)
                  lb           a7, 203(a3)
                  lb           t1, -196(a3) #end load_store_instr_stream_1
                  sh           a3, -159(s7)
                  lb           s2, -683(s7) #end load_store_instr_stream_0
                  bne          s6, t1, 14f
                  or           a2, a0, gp
                  srai         s8, s10, 19
                  add          s0, a1, s5
                  srl          s2, a5, s0
                  add          tp, a5, t3
                  bge          t4, s5, 7f
7:                xori         s3, s3, 1412
                  beq          s5, tp, 10f
                  andi         s3, tp, -972
10:               slli         a3, t2, 5
                  sub          gp, t5, s11
                  bge          t0, a6, 21f
                  slli         ra, tp, 3
14:               srli         a3, s8, 27
                  nop
                  lui          s10, 166393
                  slt          s6, t6, a2
                  andi         sp, a3, 1781
                  or           a0, a2, s4
                  sltiu        a5, a1, 1610
21:               and          s5, sp, t5
                  sltiu        a0, s1, 1958
                  blt          s5, s6, 29f
                  sub          t4, s0, tp
                  srl          s0, sp, a3
                  nop
                  lui          a5, 389660
                  bgeu         a3, s11, 33f
29:               slli         s9, t2, 24
                  bge          a4, s9, 46f
                  beq          s10, s1, 32f
32:               srai         s3, t5, 27
33:               auipc        t1, 859635
                  auipc        s8, 145837
                  or           s10, t3, a5
                  nop
                  and          s0, t3, s7
                  auipc        gp, 936798
                  bge          s10, a6, 48f
                  slt          sp, a6, zero
                  bge          s7, t4, 49f
                  bltu         t2, t3, 54f
                  bne          a6, a3, 50f
                  or           t1, t5, a0
                  bgeu         t5, t2, 65f
46:               beq          s1, a5, 57f
                  sra          t2, s2, gp
48:               xori         s11, t5, 1616
49:               blt          s5, s6, 59f
50:               srai         gp, a0, 22
                  lui          s4, 39220
                  bne          s2, t5, 58f
                  srl          t4, a7, t2
54:               srai         a7, a0, 6
                  sltiu        s10, a2, 708
                  blt          s11, s10, 65f
57:               srl          s11, s5, t2
58:               blt          ra, t4, 70f
59:               bge          t4, s1, 74f
                  slt          s3, s6, s11
                  sub          a2, a5, a6
                  addi         s9, zero, 462
                  xor          s6, s7, a1
                  nop
65:               addi         s4, s10, -1166
                  sub          t0, a4, s2
                  beq          s5, t2, 80f
                  ori          t0, s8, 414
                  xori         a3, a5, -527
70:               xor          s2, zero, s5
                  blt          a0, s7, 80f
                  andi         s6, t2, -672
                  and          s4, s8, t3
74:               beq          a2, s5, 94f
                  bne          s7, a3, 92f
                  sra          t5, ra, s5
                  or           a2, s11, ra
                  bltu         s2, s6, 85f
                  srli         t6, a4, 31
80:               add          a3, a0, t4
                  xor          a7, t2, s9
                  slti         zero, gp, 318
                  sltu         a4, t3, tp
                  andi         a7, s2, 369
85:               bne          s5, s11, 105f
                  ori          s2, a7, -1949
                  srai         s4, s4, 13
                  ori          a5, s1, -258
                  slli         s9, t3, 25
                  slti         t1, gp, 649
                  or           t6, a4, t4
92:               andi         ra, s6, 993
                  blt          s5, a2, 108f
94:               srai         s3, s7, 11
                  lui          t1, 494637
                  slt          t6, s11, t6
                  addi         t5, s5, -1848
                  or           a7, a3, s7
                  bne          t1, t3, 116f
                  nop
                  srl          t6, t5, s3
                  sll          s0, a7, s1
                  xori         t0, a4, 248
                  sltu         sp, ra, t6
105:              auipc        a5, 70604
                  slt          sp, s10, ra
                  add          gp, t0, a0
108:              bgeu         t5, a2, 128f
                  sltiu        s3, zero, 1664
                  srli         s2, s9, 30
                  srli         s11, a2, 3
                  sltiu        a7, a0, -1428
                  and          s6, t0, ra
                  addi         ra, tp, 1109
                  beq          t2, a3, 119f
116:              slti         a4, t4, -1408
                  sltu         t2, t0, s9
                  bne          a6, s8, 121f
119:              auipc        s8, 458588
                  srai         s9, t0, 20
121:              sra          zero, s5, a1
                  slt          s11, s3, s6
                  xor          s9, s10, zero
                  ori          a2, s5, -1790
                  blt          tp, t2, 137f
                  bgeu         sp, t4, 146f
                  bltu         a0, sp, 141f
128:              ori          sp, a5, 1892
                  sub          s3, ra, s5
                  add          t1, s4, t1
                  and          t5, s3, a5
                  bltu         t5, ra, 143f
                  srai         a7, zero, 19
                  ori          t4, ra, 1412
                  slti         s7, a6, 1234
                  andi         s9, ra, 260
137:              blt          a6, s7, 149f
                  srli         t0, s2, 16
                  xor          gp, sp, s3
                  sub          a3, a6, a7
141:              add          zero, s11, t6
                  sltu         s3, a2, a6
143:              andi         sp, gp, 1919
                  beq          s1, s1, 159f
                  xori         ra, a5, -773
146:              add          a4, s2, s3
                  sub          t1, gp, t5
                  slt          gp, t1, a4
149:              xor          s2, tp, a6
                  slt          s5, t6, sp
                  bge          a7, t4, 158f
                  addi         gp, a1, 2007
                  sltu         s3, ra, s8
                  srai         s4, t2, 21
                  ori          s3, a2, -1729
                  srl          s7, ra, s3
                  bne          a2, t6, 166f
158:              sub          s4, s1, s11
159:              addi         a5, a2, -992
                  bltu         a3, s10, 180f
                  sltu         s9, t4, a1
                  srli         s2, t5, 3
                  addi         a0, s6, 744
                  blt          s9, t1, 181f
                  add          s3, s4, s7
166:              lui          s8, 173603
                  bge          s2, a2, 176f
                  xori         a3, t2, -1170
                  addi         t2, a6, 1199
                  xor          sp, gp, a5
                  addi         s10, s2, 1969
                  srl          s4, t1, t6
                  xori         ra, t0, -459
                  srl          ra, sp, gp
                  slli         tp, t5, 21
176:              slli         s3, a3, 3
                  xor          gp, s3, s9
                  sll          a4, s7, tp
                  sll          a3, tp, s8
180:              blt          s8, t3, 197f
181:              beq          a6, s11, 182f
182:              nop
                  andi         ra, s8, -1279
                  andi         zero, t1, 1653
                  sltiu        a0, t3, -864
                  blt          t0, s2, 190f
                  and          t0, t3, t4
                  nop
                  sra          zero, a1, s9
190:              andi         a4, t0, 806
                  srai         a7, s3, 14
                  xor          t6, tp, a6
                  srli         t2, a2, 3
                  sra          tp, s4, a2
                  nop
                  slli         a3, s11, 11
197:              xor          t5, s3, zero
                  xori         s7, sp, -1743
                  andi         a2, s5, 1404
                  bltu         s11, s9, 209f
                  nop
                  sub          tp, t5, s2
                  bge          tp, a3, 223f
                  nop
                  sub          a5, tp, t2
                  and          ra, t2, s0
                  sll          s5, s4, tp
                  xor          s9, t0, s6
209:              addi         s3, s7, 1027
                  slli         a5, s4, 15
                  or           s7, a7, s8
                  addi         t4, s7, 1131
                  bge          sp, t4, 226f
                  bltu         s2, s11, 234f
                  addi         a1, t6, 542
                  sltiu        t5, t4, 813
                  nop
                  and          t6, a6, a4
                  add          s6, s2, a2
                  bne          s9, tp, 229f
                  andi         sp, t6, -1400
                  lui          a4, 138719
223:              sll          s4, s8, a4
                  add          gp, zero, t4
                  lui          a0, 72911
226:              addi         a4, a1, 433
                  xor          t0, a0, s1
                  lui          s5, 56570
229:              or           sp, s10, a7
                  lui          s9, 748140
                  sll          s11, s5, t4
                  and          t2, t4, s3
                  xor          s6, t0, t5
234:              sltu         a1, s10, t6
                  slti         s9, s1, -2035
                  ori          s7, sp, -1326
                  andi         s3, s1, 1651
                  slti         a0, t2, 1024
                  blt          a1, s9, 255f
                  auipc        s6, 470867
                  beq          zero, t3, 243f
                  sltiu        s10, s11, 613
243:              and          a5, tp, s11
                  bltu         ra, zero, 252f
                  add          s5, zero, s3
                  addi         s0, t0, -1039
                  srl          s7, s4, s4
                  lui          s9, 6821
                  lui          tp, 1002198
                  xori         a0, t6, -33
                  sub          s9, t2, s9
252:              ori          s9, s4, -978
                  xor          s11, t2, zero
                  blt          a2, a5, 255f
255:              sra          a0, a6, t2
                  xor          s6, s4, sp
                  add          a7, s4, gp
                  lui          a5, 892815
                  blt          s4, a5, 266f
                  slti         a0, a6, -58
                  srl          a2, t1, s7
                  sub          sp, t4, a4
                  bne          s2, a5, 269f
                  beq          s10, t5, 270f
                  bne          t4, t4, 268f
266:              nop
                  xori         s8, tp, 2023
268:              srli         s7, sp, 28
269:              beq          s9, t3, 284f
270:              sra          s4, s2, s1
                  bltu         t2, s9, 276f
                  blt          a5, a7, 282f
                  and          a5, gp, s2
                  sltu         s6, a4, s11
                  slt          s9, s6, a2
276:              xori         s9, s3, -449
                  slti         a5, s6, -1984
                  slti         t5, a1, 1068
                  bne          t0, s2, 296f
                  bge          s8, t1, 281f
281:              andi         a1, t2, -246
282:              add          s0, t5, sp
                  andi         sp, s9, 981
284:              sll          gp, s1, a0
                  and          s0, s4, s0
                  sltiu        s3, s4, -854
                  sra          t4, t1, a1
                  nop
                  andi         s3, a5, -645
                  sltiu        t4, a6, 941
                  srli         a7, a5, 0
                  bge          s11, ra, 306f
                  or           s0, a1, a6
                  la           sp, region_0+1958 #start riscv_load_store_hazard_instr_stream_5
                  lhu          tp, 36(sp)
                  lw           s5, -42(sp)
                  sb           a1, -42(sp)
                  lb           a2, 7(sp)
                  slli         tp, a1, 22
                  lbu          s9, 7(sp)
                  lh           zero, -50(sp)
                  lb           t2, -50(sp)
                  sw           s10, -50(sp)
                  sw           s1, -50(sp)
                  lh           a4, -8(sp)
                  sb           a5, 17(sp)
                  and          ra, s0, s9
                  lhu          a7, -22(sp)
                  sw           gp, -22(sp)
                  or           t5, t1, a1
                  lbu          a0, -24(sp)
                  lui          s10, 333527
                  lhu          a1, -24(sp)
                  lbu          tp, -52(sp)
                  sb           zero, 19(sp)
                  lb           a3, 25(sp)
                  lbu          s0, 25(sp) #end riscv_load_store_hazard_instr_stream_5
                  sub          s3, t3, a7
                  auipc        t2, 235343
296:              srl          a3, s5, s11
                  srl          t4, a3, s2
                  bne          t1, a4, 313f
                  xori         s6, t2, 612
                  bgeu         t1, s11, 309f
                  sub          a0, t5, sp
                  sltu         zero, s10, t2
                  sll          t0, t6, t5
                  bge          tp, s4, 313f
                  auipc        s6, 497866
306:              bne          t2, a4, 312f
                  bne          t4, s9, 320f
                  sra          a4, t0, t2
309:              and          s8, zero, s4
                  sub          a5, a1, s3
                  srli         s7, t0, 28
312:              slti         s3, t5, -758
313:              xori         a1, t1, -155
                  sra          sp, a6, s11
                  sra          a7, s11, s10
                  xori         tp, s10, -169
                  xori         s0, s4, 1980
                  or           ra, tp, s9
                  beq          a1, t3, 324f
320:              slti         zero, s11, 993
                  srl          a7, s6, gp
                  add          s5, t4, t2
                  nop
324:              auipc        ra, 518162
                  srli         t4, a6, 2
                  srli         gp, ra, 22
                  bgeu         tp, t5, 342f
                  addi         ra, s5, 1145
                  sltiu        gp, s5, -1876
                  xor          t5, s9, s10
                  srai         s0, sp, 1
                  slt          s9, s4, s1
                  srl          s11, gp, t2
                  and          a0, ra, s2
                  slt          ra, tp, s5
                  auipc        t5, 1042183
                  sra          tp, zero, zero
                  auipc        a7, 421983
                  sltu         a5, s7, s4
                  add          t1, a6, a4
                  slli         a7, t0, 17
342:              sltu         s0, t5, t0
                  xori         a2, s4, -1385
                  bltu         t2, s6, 348f
                  ori          gp, t3, -1935
                  bltu         t3, a1, 349f
                  slti         t6, a1, -226
348:              bgeu         a1, a2, 354f
349:              bge          sp, s3, 358f
                  bge          ra, t5, 370f
                  andi         s0, s1, -786
                  slti         a3, a6, -543
                  sltu         a4, s6, zero
354:              blt          a6, a1, 370f
                  bne          t4, t6, 364f
                  xori         s6, a6, -1270
                  add          s7, s0, tp
358:              lui          t5, 653879
                  sll          s8, zero, t1
                  srai         ra, t1, 24
                  beq          s3, a5, 381f
                  bltu         s10, s0, 370f
                  srli         s5, s9, 9
364:              auipc        a7, 38101
                  sltu         a3, s9, t1
                  slt          s8, tp, t6
                  bgeu         t4, t3, 369f
                  xor          a0, s8, t1
369:              bltu         s7, t4, 381f
370:              addi         s8, s11, 1391
                  beq          s6, gp, 383f
                  auipc        zero, 1026734
                  xor          a4, a7, s6
                  sltiu        a5, a2, 459
                  slli         s10, tp, 27
                  ori          s7, sp, 1255
                  sub          a7, s3, s11
                  auipc        a1, 123233
                  sll          s2, tp, s1
                  slti         t1, t3, -1412
381:              beq          t1, s11, 392f
                  bne          s1, ra, 392f
383:              and          a5, gp, s11
                  slt          t2, s5, t6
                  slti         s8, a6, 1606
                  xori         a2, a2, -1496
                  slti         sp, a6, 1923
                  xor          s2, a3, s8
                  bgeu         zero, a1, 406f
                  auipc        a1, 979275
                  sltiu        a7, a3, -1062
392:              xor          t4, s6, t5
                  ori          t5, s7, 1562
                  bne          ra, ra, 401f
                  slti         gp, sp, -991
                  slti         zero, a5, 1774
                  xor          a3, s10, t6
                  ori          a3, t0, 1265
                  bltu         a2, t4, 419f
                  srli         s4, a5, 4
401:              srai         s3, zero, 26
                  srai         t5, s9, 14
                  xor          s0, s10, a0
                  srl          t5, s5, t6
                  blt          s1, a4, 412f
406:              srl          t4, a0, s1
                  sltiu        t2, t3, -572
                  sll          t0, s4, s11
                  slti         t2, t0, 53
                  srli         a2, t2, 15
                  bne          sp, t5, 431f
412:              slti         sp, a0, -1659
                  sub          s2, sp, s4
                  sra          tp, s11, a5
                  or           t0, a2, a7
                  bne          s8, s4, 417f
417:              xor          s6, s5, a1
                  sltu         a1, a7, a1
419:              nop
                  bgeu         t0, t6, 422f
                  sub          a2, a7, a0
422:              srli         t0, t1, 16
                  sra          s8, t0, a7
                  andi         t2, a7, -1291
                  bne          s7, t5, 445f
                  add          a2, s9, a6
                  srli         s2, a4, 7
                  sra          ra, t5, t5
                  slli         s6, s9, 5
                  bne          s0, t6, 445f
431:              bge          s10, s2, 451f
                  sll          a5, s4, ra
                  xor          a1, t2, s3
                  add          t4, t5, s10
                  sub          t0, s10, s10
                  andi         s6, s2, 1122
                  beq          t2, a5, 446f
                  sll          tp, t3, sp
                  beq          s8, s2, 442f
                  auipc        t2, 170751
                  la           s11, region_0+1522 #start riscv_load_store_hazard_instr_stream_1
                  nop
                  lb           a5, -285(s11)
                  lbu          s6, -285(s11)
                  lbu          a3, -285(s11)
                  lbu          s3, -285(s11)
                  lbu          t5, -285(s11)
                  sltiu        a2, zero, 166
                  sb           s11, -285(s11)
                  sb           s10, -285(s11)
                  lb           a1, -285(s11)
                  lbu          a7, -285(s11)
                  sb           s9, -285(s11)
                  sb           a1, -285(s11)
                  lb           a1, -420(s11)
                  lb           t5, -157(s11)
                  lbu          s8, -157(s11)
                  lhu          s5, -708(s11)
                  sb           s4, -708(s11)
                  nop
                  lb           t2, -708(s11) #end riscv_load_store_hazard_instr_stream_1
                  srli         t2, s11, 26
442:              xori         t6, a4, -171
                  sll          zero, s5, a2
                  bltu         s3, t3, 450f
445:              bltu         s8, tp, 446f
446:              srli         t6, t3, 13
                  sll          s6, s4, a0
                  sll          a2, s11, sp
                  slti         t2, gp, 1567
450:              sub          s9, t3, a5
451:              sltu         s0, s0, s0
                  sub          a1, s6, ra
                  beq          t1, a0, 460f
                  xori         s7, zero, 1269
                  bltu         tp, t4, 461f
                  sltiu        t0, s11, 519
                  slt          sp, a6, a5
                  addi         t2, s4, -370
                  beq          tp, s9, 468f
460:              srl          a2, s1, a3
461:              auipc        t6, 353265
                  srl          s3, s4, t1
                  auipc        a3, 628574
                  sltiu        ra, s4, 53
                  ori          a3, a7, 653
                  bgeu         a1, s6, 475f
                  sub          s9, tp, s1
468:              or           a5, s1, a5
                  sltiu        s4, gp, -831
                  bne          s10, s5, 483f
                  xor          t0, s11, t4
                  srl          t2, a3, a3
                  sltu         a0, a1, a4
                  and          t6, t6, t3
475:              srl          ra, s3, a4
                  slt          t6, a5, s8
                  beq          s8, t1, 494f
                  sub          t6, gp, t5
                  or           t4, s2, s3
                  blt          a3, a6, 487f
                  andi         a3, t2, -71
                  sltu         a1, a3, t3
483:              or           s8, s6, s1
                  andi         a5, a3, -401
                  auipc        a0, 705760
                  or           t2, a1, zero
487:              slt          s7, a5, s8
                  xori         t0, zero, 464
                  sra          t2, s7, t5
                  slti         t0, t3, -1259
                  srli         s9, t2, 2
                  beq          s11, zero, 512f
                  beq          ra, s11, 510f
494:              nop
                  bge          sp, s0, 510f
                  sltiu        t1, s5, 1889
                  bltu         s11, a1, 502f
                  or           s0, s3, s1
                  beq          s9, s1, 500f
500:              add          t0, a5, a3
                  sub          a1, t1, t4
502:              sltiu        t1, s1, -1156
                  xor          a4, s4, gp
                  or           a3, t0, a1
                  bne          t6, s9, 513f
                  sltu         s3, sp, t2
                  bgeu         s3, a6, 523f
                  bgeu         sp, sp, 528f
                  lui          s7, 47754
510:              slli         s3, s5, 26
                  srai         a2, s5, 28
512:              slti         a4, s7, -910
513:              nop
                  sll          a0, a4, a7
                  lui          s5, 245817
                  and          s5, t2, s3
                  bgeu         s9, a7, 529f
                  sll          a4, a0, s1
                  ori          a5, s8, -1886
                  bne          s4, sp, 529f
                  srli         a7, t1, 15
                  auipc        s7, 740127
523:              ori          s11, a3, 437
                  srl          a4, a5, s7
                  andi         t1, s3, -1885
                  bne          zero, t5, 540f
                  slti         s11, s6, -1080
528:              sll          a1, tp, a1
529:              nop
                  bgeu         a1, gp, 540f
                  and          a5, a3, s10
                  add          s10, a5, t4
                  slti         s6, a2, -230
                  ori          s4, ra, -929
                  slti         a2, tp, 105
                  lui          sp, 525895
                  and          s9, a3, t5
                  addi         a7, gp, -1759
                  xori         a0, s9, -1490
540:              bge          sp, s1, 551f
                  sra          zero, t2, zero
                  or           t1, s2, a6
                  slti         s2, ra, 931
                  slti         s7, t4, 35
                  andi         a4, a5, 1796
                  nop
                  slti         a0, t2, 368
                  xori         s6, a3, -1273
                  or           s2, a1, a2
                  slti         t1, s9, 941
551:              andi         a3, t4, -1640
                  xori         s11, a2, -375
                  sra          t0, ra, t3
                  srai         a1, a2, 28
                  sll          gp, s2, s0
                  add          s5, sp, s4
                  srli         sp, t0, 27
                  bgeu         t0, t5, 570f
                  ori          a0, t6, -1316
                  srai         t1, s5, 25
                  beq          s1, s3, 565f
                  lui          s2, 771160
                  slti         t1, s11, 1894
                  lui          a2, 447733
565:              or           a2, s0, t4
                  xori         t4, t5, -430
                  xori         s5, a6, 1999
                  nop
                  andi         a5, a6, -193
570:              beq          s5, a3, 574f
                  nop
                  sll          a3, t6, t2
                  sltu         ra, a7, s4
574:              nop
                  sra          s11, a1, s5
                  sltu         t0, t0, gp
                  andi         a5, a4, -1475
                  bgeu         t6, t6, 586f
                  xori         a7, s1, -1027
                  bltu         sp, a0, 592f
                  sltiu        t5, a4, -1402
                  auipc        sp, 924062
                  and          s2, a2, a0
                  sra          s4, a7, a5
                  lui          s4, 85774
586:              slli         s0, gp, 17
                  xori         tp, s8, -1045
                  sll          tp, gp, s2
                  ori          s2, s7, 70
                  slli         s7, ra, 14
                  auipc        a2, 923671
592:              ori          tp, t5, -326
                  slti         a7, t6, 175
                  slli         a5, t5, 12
                  srai         gp, t6, 7
                  and          a4, s11, s10
                  slli         s2, a4, 2
                  sltu         gp, t6, tp
                  andi         s2, s9, 1344
                  sltu         s7, a3, s5
                  bltu         s7, tp, 610f
                  slti         t6, t5, -281
                  slli         s9, s0, 20
                  xori         s8, s7, -373
                  srli         a7, s7, 30
                  slli         a7, t6, 25
                  blt          a2, a2, 624f
                  sltiu        sp, a3, -476
                  bne          zero, s11, 625f
610:              slt          s4, t4, gp
                  bge          s7, ra, 624f
                  add          a1, s1, a2
                  and          t6, a1, s0
                  auipc        zero, 209023
                  slli         t5, s0, 5
                  bge          s5, a4, 636f
                  blt          s5, a1, 634f
                  beq          t5, s8, 630f
                  bne          a0, a1, 625f
                  srli         s9, s2, 26
                  bne          t6, a5, 636f
                  slli         s0, a7, 16
                  bne          t6, a7, 625f
624:              sltiu        t0, s5, -542
625:              or           ra, s5, s2
                  srai         s7, a2, 18
                  xor          s10, s9, s8
                  bge          s0, ra, 629f
629:              addi         a5, t0, -400
630:              slli         gp, s8, 31
                  bne          gp, a1, 645f
                  sra          gp, a1, t2
                  add          t4, a3, s10
634:              xori         s8, t3, -1183
                  sra          a3, s4, s3
636:              andi         a7, s6, -1559
                  andi         t0, t3, 531
                  slt          t0, a6, a2
                  bgeu         a7, s3, 646f
                  bge          t5, t3, 649f
                  blt          s9, s8, 649f
                  xori         a2, t4, -1354
                  slti         tp, s6, 305
                  blt          t0, a3, 649f
645:              srl          a5, a0, s3
646:              bge          s7, a7, 649f
                  xori         a5, s4, -112
                  srl          a5, s5, t6
649:              srli         s7, s11, 30
                  addi         t1, t4, 1507
                  srl          s11, s7, a0
                  lw           a2, 4(t3)
                  auipc        s8, 388024
                  and          s9, t6, t3
                  srli         a0, zero, 14
                  srl          t2, zero, a3
                  addi         t3, t3, 44
                  auipc        s11, 408076
                  srli         a4, t3, 25
                  and          a1, ra, t4
1192:             addi x23, x12, 1
1192:             jalr x23, x23, 0
sub_2:            sll          s4, s9, s9
                  bltu         t0, t6, sub_2_stack_p
                  ori          a4, s11, 770
                  slt          a4, s10, a7
                  slli         t0, s2, 26
                  xor          gp, s5, a4
                  addi         t2, t1, -573
                  slti         a0, a3, -1118
sub_2_stack_p:    addi         t3, t3, -40
                  srl          s3, s1, s3
                  sw           a2, 4(t3)
                  or           a3, tp, s4
                  la           s9, region_0+643 #start riscv_load_store_hazard_instr_stream_0
                  addi         s6, s8, 1985
                  sb           s3, -16(s9)
                  nop
                  srli         gp, t4, 10
                  lbu          a4, -16(s9)
                  lbu          zero, -16(s9)
                  lbu          s7, -16(s9)
                  lb           tp, -16(s9)
                  lbu          s10, -16(s9)
                  lb           a3, -16(s9)
                  srai         a5, zero, 30
                  lb           a7, -16(s9)
                  lb           a5, -16(s9)
                  sb           a1, -16(s9)
                  lb           a5, 4(s9)
                  sb           gp, 4(s9) #end riscv_load_store_hazard_instr_stream_0
                  la           a2, region_0+459 #start riscv_load_store_rand_instr_stream_0
                  lhu          a0, -231(a2)
                  lbu          s6, -84(a2)
                  lb           t6, 136(a2)
                  sb           s7, 124(a2)
                  sb           a6, 130(a2)
                  lh           zero, 25(a2)
                  slt          t1, t2, s5
                  sltu         s3, s1, ra
                  auipc        t6, 490406
                  lui          s7, 789526
                  lb           t0, 50(a2)
                  sw           s8, -91(a2)
                  lh           a3, -23(a2)
                  sb           t1, 36(a2)
                  lh           t1, -25(a2)
                  ori          a0, s7, -1364
                  sltu         a4, s6, a4
                  sb           t5, -192(a2)
                  lb           s10, -234(a2)
                  lbu          a5, 32(a2)
                  srai         s8, a5, 13
                  lbu          s11, 229(a2)
                  lbu          t5, -223(a2)
                  lbu          sp, 54(a2)
                  sw           s9, -63(a2)
                  nop
                  lbu          sp, 130(a2)
                  add          a7, a3, t1
                  xori         s7, s10, -113
                  slli         s5, t4, 1
                  addi         a1, s8, -447
                  sb           s0, -234(a2)
                  lbu          t0, -61(a2)
                  sb           s8, -217(a2)
                  lb           a3, 225(a2)
                  sltiu        s6, a1, 942
                  sh           s1, 115(a2)
                  lh           tp, -227(a2)
                  lb           t2, 67(a2)
                  sh           s4, 199(a2)
                  sh           t5, 85(a2)
                  lb           t1, -50(a2) #end riscv_load_store_rand_instr_stream_0
                  la           a4, region_1+1219 #start load_store_instr_stream_0
                  la           t4, region_1+421 #start load_store_instr_stream_1
                  lb           s0, 2(a4)
                  lb           s5, -48(a4)
                  lbu          gp, 38(t4)
                  sh           s11, 1(t4)
                  lbu          s11, 48(a4)
                  sb           s5, -8(t4)
                  lhu          tp, -11(a4)
                  lhu          t5, -29(t4)
                  lhu          s0, 7(a4)
                  sb           a1, -48(t4)
                  lb           s10, -61(t4)
                  lbu          s7, 44(a4)
                  sh           a0, 17(t4)
                  lbu          t6, -22(a4)
                  sb           s0, -23(a4)
                  lbu          s11, 39(t4) #end load_store_instr_stream_1
                  lbu          gp, 44(a4) #end load_store_instr_stream_0
                  addi         a5, gp, 1268
                  andi         a0, t1, -1978
                  slti         s2, s8, -1493
                  andi         s10, t2, 2038
                  srai         a5, a3, 7
                  slli         s4, a1, 22
                  slli         sp, t4, 8
                  add          t1, s1, s2
                  sra          a0, tp, t4
                  srai         t1, a0, 10
                  sltiu        ra, sp, -1948
                  or           t0, s9, s6
                  addi         a1, s9, -664
                  sll          a3, s10, s1
                  sltu         t5, a2, t5
                  bge          zero, t0, 18f
                  ori          s9, a4, 1715
                  sra          s4, a6, s4
18:               lui          t6, 965318
                  sra          t5, s4, s7
                  bgeu         a6, a7, 21f
21:               lui          a0, 189409
                  andi         s9, s0, 603
                  srli         t4, a7, 9
                  bltu         t3, a1, 37f
                  xori         s0, s8, -934
                  addi         t2, a7, -1842
                  srai         gp, ra, 18
                  add          sp, s11, s7
                  sub          a2, s4, s7
                  xori         t2, s7, 1641
                  xor          a5, t0, s5
                  nop
                  sltu         ra, s10, sp
                  add          a3, s6, t5
                  srl          s8, s8, s10
                  ori          t4, a7, 1736
37:               ori          tp, s6, 976
                  sltu         a2, ra, t0
                  nop
                  ori          s3, a2, -49
                  slli         sp, s11, 6
                  srai         s11, s1, 16
                  add          s10, ra, t4
                  beq          s1, t6, 59f
                  slt          s10, t6, s10
                  sll          t2, tp, zero
                  addi         a4, s0, -308
                  srli         t1, s11, 22
                  lui          ra, 200081
                  auipc        a7, 429087
                  beq          s6, s4, 68f
                  xor          a7, ra, s2
                  srai         ra, sp, 11
                  srai         s3, a6, 11
                  bge          s3, s0, 73f
                  or           a5, a1, s2
                  beq          a6, s9, 72f
                  nop
59:               addi         gp, s2, -1022
                  bne          a0, zero, 72f
                  nop
                  bltu         gp, s6, 72f
                  bne          sp, tp, 68f
                  andi         s0, a0, -1823
                  bltu         a4, s4, 66f
66:               andi         s0, s0, -1678
                  srli         s7, s3, 7
68:               sll          gp, s11, s11
                  andi         t2, s6, -1094
                  nop
                  and          gp, a0, a1
72:               slli         s5, s1, 28
73:               sll          zero, tp, s0
                  bltu         s0, s10, 83f
                  andi         s8, s4, -580
                  add          a5, sp, s1
                  sll          a3, a6, t1
                  slt          t0, s0, a1
                  bltu         tp, t0, 98f
                  xori         a7, zero, -1328
                  or           a5, t0, ra
                  blt          a1, s3, 95f
83:               ori          t1, s4, -1668
                  auipc        t4, 820356
                  srai         s10, a4, 31
                  srl          a5, t1, s2
                  bne          s7, s3, 89f
                  nop
89:               sltiu        a2, t3, 1426
                  add          a0, a4, sp
                  blt          a2, s6, 102f
                  bne          s3, s10, 106f
                  bge          t3, s3, 110f
                  or           s11, a3, gp
95:               srl          s10, s2, s4
                  bltu         zero, s1, 107f
                  add          tp, t1, t6
98:               sra          s3, t5, a7
                  xor          a0, a1, s5
                  bgeu         s6, t3, 112f
                  bltu         s5, a5, 109f
102:              add          t1, a3, s4
                  ori          a4, t3, 1248
                  xori         s9, t5, 1058
                  beq          s8, s7, 115f
106:              sll          t2, gp, s10
107:              or           t2, ra, s2
                  sltu         s4, t3, t1
109:              slt          ra, t3, s3
110:              and          a7, t0, s10
                  bne          a2, s9, 127f
112:              add          a4, s11, t6
                  and          a4, t6, s0
                  ori          s5, s2, -139
115:              srli         a7, a6, 28
                  sltiu        s4, a1, 2004
                  ori          t1, s11, 1905
                  sll          a7, s8, t3
                  ori          ra, a3, -1074
                  slti         a7, t3, 1224
                  or           s8, s4, s9
                  bne          gp, tp, 142f
                  sltiu        t5, a0, 1363
                  srl          s10, a1, t1
                  srl          s7, s4, a3
                  slti         a5, s10, -1528
127:              addi         s7, t0, -1333
                  sub          t1, s9, a0
                  add          s4, a1, a3
                  xor          s7, ra, a1
                  ori          a2, s6, -867
                  sltiu        s5, t5, 965
                  slli         a2, s2, 5
                  add          s11, a0, a2
                  add          s9, a4, t2
                  lui          a7, 591399
                  sub          s8, gp, t2
                  nop
                  bgeu         t0, a3, 147f
                  sltiu        s8, a6, 1749
                  srl          s3, s0, sp
142:              sltiu        t6, a0, -941
                  slli         a3, t5, 18
                  ori          ra, t4, -120
                  andi         s7, s10, 1246
                  and          a4, s11, s1
147:              sltiu        a5, a7, 1087
                  lw           a2, 4(t3)
                  sll          t0, ra, s0
                  addi         t3, t3, 40
                  sra          s9, s3, a7
                  slti         s7, a3, -1509
                  sra          s11, a5, a6
                  sltu         tp, s0, t0
246:              addi x19, x12, 1
246:              jalr x19, x19, 0
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x9, x28, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x19, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x19, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x19, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x19, x18, ecall_handler
                  li x18, 0x1
                  beq x19, x18, instr_fault_handler
                  li x18, 0x5
                  beq x19, x18, load_fault_handler
                  li x18, 0x7
                  beq x19, x18, store_fault_handler
                  li x18, 0xc
                  beq x19, x18, pt_fault_handler
                  li x18, 0xd
                  beq x19, x18, pt_fault_handler
                  li x18, 0xf
                  beq x19, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
