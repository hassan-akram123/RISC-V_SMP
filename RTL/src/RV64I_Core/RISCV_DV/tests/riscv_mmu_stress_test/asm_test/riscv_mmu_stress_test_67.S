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
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xf1f9f427
                  li x1, 0x80000000
                  li x2, 0xfe163561
                  li x3, 0xfcf8190f
                  li x4, 0x80000000
                  li x5, 0xb
                  li x6, 0x0
                  li x7, 0xf1a4de49
                  li x8, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xf58525e1
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x7
                  li x15, 0xf045a616
                  li x16, 0x4e9aedcc
                  li x17, 0x0
                  li x19, 0xd564db88
                  li x20, 0x0
                  li x21, 0xf9b40175
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0xc592c7d3
                  li x26, 0x6
                  li x27, 0x0
                  li x28, 0x3
                  li x29, 0x80000000
                  li x30, 0xd8d332a1
                  li x31, 0x0
                  la x9, user_stack_end
main:             la           s7, region_0+871 #start load_store_instr_stream_1
                  la           a4, region_0+1509 #start load_store_instr_stream_0
                  lbu          s10, 10(s7)
                  lb           t5, -46(s7)
                  lh           s11, 7(a4)
                  lbu          gp, 50(s7)
                  sb           s1, 45(s7)
                  sb           s5, -10(s7)
                  lbu          s11, -15(a4)
                  lw           s11, -1(a4)
                  lbu          t0, 10(a4)
                  sw           s10, 33(s7)
                  lbu          s0, 5(s7)
                  lbu          t4, 20(s7) #end load_store_instr_stream_1
                  lb           s11, -4(a4) #end load_store_instr_stream_0
                  la           a2, region_0+1919 #start load_store_instr_stream_4
                  la           s3, region_0+185 #start load_store_instr_stream_2
                  lb           t0, -18(a2)
                  sb           a0, -12(s3)
                  sb           t5, -832(a2)
                  la           sp, region_0+833 #start load_store_instr_stream_1
                  sb           s11, -1526(a2)
                  la           a6, region_0+1084 #start load_store_instr_stream_3
                  lb           s5, 0(s3)
                  lh           a5, -12(a6)
                  la           gp, region_0+1908 #start load_store_instr_stream_0
                  lhu          t2, 10(a6)
                  lbu          s9, 7(sp)
                  sb           s9, -471(a2)
                  lbu          a7, -2(s3)
                  lbu          t1, -12(s3)
                  lh           t0, 6(a6)
                  sb           t0, -131(gp)
                  sw           t0, -105(sp)
                  sb           a0, -897(a2)
                  lb           t1, -206(sp)
                  lbu          s4, -16(s3)
                  lh           a5, 12(gp)
                  sb           a0, -13(a6)
                  lhu          t1, -815(a2)
                  sb           tp, -235(gp)
                  lb           s9, -121(gp)
                  sb           gp, -6(s3) #end load_store_instr_stream_2
                  lb           t3, 0(a6)
                  lb           s10, -678(a2)
                  sb           s3, -15(a6)
                  sh           t5, -433(a2) #end load_store_instr_stream_4
                  sb           tp, -9(sp)
                  lw           s5, 4(a6)
                  lhu          t2, 41(sp) #end load_store_instr_stream_1
                  lh           s6, 6(a6)
                  lhu          tp, -6(a6) #end load_store_instr_stream_3
                  sb           t3, -41(gp) #end load_store_instr_stream_0
                  la           sp, region_0+1101 #start riscv_load_store_hazard_instr_stream_0
                  sub          zero, t4, a6
                  addi         s6, t2, -1123
                  sb           s6, -132(sp)
                  lbu          t3, -26(sp)
                  lbu          s0, -26(sp)
                  sub          gp, a6, s6
                  lbu          t2, -26(sp)
                  slli         t3, a7, 20
                  xori         a0, a5, -15
                  lb           s4, -144(sp)
                  lb           t0, 256(sp)
                  sb           s5, 256(sp)
                  lbu          t1, 256(sp)
                  sltiu        s8, s6, -682
                  lb           gp, 256(sp)
                  lb           t5, 41(sp)
                  lh           s8, -171(sp)
                  lbu          s0, -1(sp)
                  sh           s3, -99(sp)
                  xori         a7, s2, 1979
                  lbu          a3, 231(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a2, region_1+157 #start riscv_load_store_rand_instr_stream_3
                  andi         a1, t6, -1291
                  slt          t0, t4, a3
                  sb           s9, -8(a2)
                  lbu          a0, -11(a2)
                  andi         t5, t6, -755
                  sltiu        a5, zero, -1563
                  sub          s5, zero, s2
                  sll          s6, s1, s0
                  xor          s7, a2, tp
                  sub          a0, t0, a2
                  lhu          t0, 13(a2)
                  lbu          t4, 0(a2)
                  sw           s4, 3(a2)
                  nop
                  srl          t1, tp, t6
                  slli         t2, zero, 24
                  xor          t5, a4, s1
                  srai         a5, s8, 31
                  slt          tp, a4, sp
                  sll          a3, s1, s4
                  lbu          s10, -2(a2)
                  lb           a5, -3(a2)
                  sb           t4, -3(a2)
                  sb           s0, -6(a2)
                  lbu          s8, -12(a2) #end riscv_load_store_rand_instr_stream_3
                  la           s3, region_1+1364 #start load_store_instr_stream_1
                  la           a3, region_1+499 #start load_store_instr_stream_3
                  la           t2, region_1+488 #start load_store_instr_stream_0
                  lw           zero, -371(a3)
                  lh           a6, 165(a3)
                  la           t5, region_1+389 #start load_store_instr_stream_2
                  sb           s7, 356(a3)
                  lbu          s7, 1571(t5)
                  sb           ra, 1194(t5)
                  lb           gp, -6(s3)
                  lb           s11, -7(t2)
                  lbu          a1, -7(s3)
                  lhu          s10, 12(t2)
                  sh           t0, 16(s3)
                  lw           zero, -4(s3)
                  lbu          s0, -13(t2)
                  sb           s4, 2(s3)
                  lb           s7, -197(a3)
                  sb           s1, -15(s3)
                  lb           s7, -223(a3)
                  lbu          a7, -195(t5)
                  sh           s11, 16(t2)
                  lb           t1, 754(a3)
                  sw           t4, -16(s3)
                  sb           t6, 492(t5)
                  sh           a2, 83(a3)
                  lb           a4, -15(s3)
                  lb           a6, -13(t2)
                  lb           s10, -11(s3)
                  lb           a5, 974(a3) #end load_store_instr_stream_3
                  sb           tp, 466(t5)
                  lb           s11, -13(s3) #end load_store_instr_stream_1
                  lb           sp, 825(t5)
                  lb           s0, 1253(t5)
                  lb           gp, -211(t5) #end load_store_instr_stream_2
                  sh           s3, 12(t2) #end load_store_instr_stream_0
                  la           s5, region_0+1072 #start riscv_load_store_rand_instr_stream_4
                  sh           s11, -634(s5)
                  lbu          a0, -429(s5)
                  srli         s8, a2, 21
                  nop
                  add          tp, zero, a2
                  lb           a6, -788(s5)
                  lb           t5, -821(s5)
                  sb           s10, -470(s5)
                  lbu          s10, -333(s5)
                  lui          s6, 633086
                  lbu          a2, -7(s5)
                  lhu          s10, 178(s5)
                  slli         sp, s8, 0
                  lw           t1, 720(s5)
                  sb           s3, -269(s5)
                  lhu          s8, -328(s5)
                  xor          t5, t2, s2
                  lb           sp, 245(s5)
                  sh           sp, -286(s5)
                  srli         t6, t0, 28
                  or           a4, a6, a2
                  lbu          a1, 225(s5)
                  sw           s11, 560(s5)
                  sb           s11, -545(s5)
                  lhu          t2, -380(s5)
                  sh           s0, 350(s5)
                  lh           s10, -278(s5)
                  sltu         a7, s5, sp
                  sb           gp, -347(s5)
                  srl          a1, t5, tp
                  srli         s7, a6, 28
                  lb           s11, 845(s5)
                  lhu          a2, 456(s5)
                  sb           a6, -1055(s5)
                  add          a1, s8, t5
                  srai         t4, t6, 27
                  xor          s8, a7, a2
                  slli         s10, t0, 18
                  ori          t4, s5, 1999
                  lb           s11, -946(s5) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+660 #start riscv_load_store_rand_instr_stream_2
                  lhu          s0, 38(sp)
                  sb           t4, -17(sp)
                  sh           ra, 34(sp)
                  add          s3, t0, t3
                  addi         s10, s7, -767
                  andi         tp, gp, 381
                  nop
                  sh           s7, -64(sp)
                  srli         s8, a5, 25
                  lbu          s0, -58(sp)
                  sb           s2, -3(sp)
                  auipc        a7, 367728
                  lh           zero, -24(sp)
                  lhu          t1, 26(sp)
                  lb           tp, 30(sp)
                  slt          a6, t1, s1
                  or           t6, a7, ra
                  sb           s3, -64(sp)
                  xori         a4, s0, -1301
                  lb           a4, -28(sp)
                  lhu          a0, 50(sp)
                  lhu          a2, -60(sp)
                  andi         zero, s1, -1055
                  sb           s2, -31(sp)
                  sll          zero, s6, t1
                  sb           s7, -31(sp)
                  xori         s9, gp, 1896
                  sra          t3, a4, s3
                  srli         a0, gp, 9
                  sb           s5, -31(sp)
                  lhu          s8, -14(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_1+1514 #start load_store_instr_stream_1
                  la           t6, region_1+1571 #start load_store_instr_stream_0
                  lbu          s11, -2(s0)
                  sb           s0, 10(t6)
                  lb           a6, -14(t6)
                  sh           a5, 12(s0)
                  sb           zero, -6(t6)
                  sw           s2, 10(s0)
                  sb           t1, -9(t6)
                  sb           s0, 13(s0)
                  sb           a1, 13(s0)
                  lbu          a5, 16(t6)
                  lbu          sp, 0(s0)
                  lb           a7, 10(t6)
                  lbu          s9, -16(s0)
                  lb           s6, 7(s0) #end load_store_instr_stream_1
                  sw           s9, -3(t6) #end load_store_instr_stream_0
                  la           s11, region_0+486 #start riscv_load_store_rand_instr_stream_1
                  xor          t4, a3, sp
                  nop
                  auipc        s3, 804126
                  ori          t6, tp, -55
                  srli         a5, s3, 25
                  sll          sp, s0, a6
                  lbu          a7, -13(s11)
                  slti         t0, s9, -609
                  ori          s8, s5, -1296
                  lbu          zero, -16(s11)
                  lbu          s3, 9(s11)
                  lb           t1, 13(s11)
                  lhu          t1, -6(s11)
                  lhu          sp, 4(s11)
                  sll          a4, zero, a7
                  lhu          sp, 8(s11)
                  slt          t4, t2, s3
                  sb           s8, 15(s11)
                  auipc        s3, 876998
                  sw           a1, -6(s11)
                  lb           a7, -9(s11)
                  sub          gp, s3, t1
                  lb           a7, 7(s11)
                  sll          t0, s6, gp
                  lbu          t0, -6(s11)
                  xor          a4, a3, t2
                  lhu          t5, 10(s11)
                  addi         s4, s0, 1418
                  lhu          t5, -8(s11)
                  and          sp, a4, t4
                  lb           a0, 13(s11)
                  xori         sp, sp, 700
                  lbu          t6, 3(s11)
                  sh           a1, -6(s11)
                  sb           a0, 9(s11) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_0+1062 #start riscv_load_store_rand_instr_stream_0
                  lb           s11, -523(a2)
                  lb           t1, -191(a2)
                  lb           s5, -413(a2)
                  ori          s0, t6, 1387
                  sb           s4, -631(a2)
                  sltu         a3, s3, tp
                  sb           s5, -363(a2)
                  slti         a7, a5, 526
                  srai         a1, s2, 11
                  lbu          gp, -577(a2)
                  lui          s6, 1025546
                  sb           s9, 526(a2)
                  lb           s11, 371(a2)
                  lb           s5, 737(a2)
                  sll          s4, gp, a3
                  ori          s3, t3, -1287
                  or           a7, s10, a6
                  add          a6, a5, t5
                  lui          a5, 438416
                  lh           s9, -448(a2)
                  lui          a6, 524553
                  sltu         t1, t5, gp
                  sb           gp, 781(a2)
                  sltu         t6, s5, s2
                  slli         t2, s4, 4
                  sb           tp, -771(a2) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+349 #start riscv_load_store_hazard_instr_stream_3
                  slti         s6, s0, 1966
                  sb           s6, 675(a3)
                  sw           a7, 675(a3)
                  lb           t2, 850(a3)
                  auipc        a1, 896051
                  sb           a5, 850(a3)
                  slti         t4, ra, -147
                  sb           a3, 850(a3)
                  sb           a3, 850(a3)
                  sb           s11, 850(a3)
                  sb           t5, 850(a3)
                  xori         t5, s9, 1868
                  lbu          t4, 850(a3)
                  lbu          s3, 850(a3)
                  sb           a7, 850(a3)
                  sub          s7, s7, a7
                  sb           zero, 850(a3)
                  sb           t2, 850(a3) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_0+1213 #start riscv_load_store_hazard_instr_stream_2
                  lbu          a4, -44(sp)
                  sb           t1, -44(sp)
                  lbu          s7, 303(sp)
                  lb           a2, 303(sp)
                  lh           s0, 303(sp)
                  add          t2, gp, s2
                  lbu          s7, -922(sp)
                  lbu          a4, -595(sp)
                  sh           a7, -595(sp)
                  lb           t5, -595(sp)
                  lb           s5, -595(sp)
                  lbu          a3, -972(sp) #end riscv_load_store_hazard_instr_stream_2
                  bne          t5, t6, 14f
                  srai         s5, s6, 8
                  nop
                  sra          t1, a2, t2
                  andi         s9, s6, 1601
                  add          t1, zero, t1
                  addi         a4, s6, 1140
                  slt          a1, a7, a7
                  ori          t2, s0, 994
                  sra          a1, s2, gp
                  or           s7, s9, ra
                  srli         t1, a4, 21
                  bge          a6, tp, 26f
                  sltu         a6, a2, s0
14:               srai         zero, s5, 27
                  and          a3, a2, tp
                  or           a0, s2, tp
                  xori         s11, s3, -1763
                  bne          sp, a4, 25f
                  sltu         a3, s6, t5
                  sltiu        tp, t1, 5
                  bgeu         s5, s10, 24f
                  ori          s5, tp, -1079
                  slti         a1, a7, -619
24:               slti         s4, s4, 1721
25:               or           s6, a4, a4
26:               nop
                  addi         s4, t3, 1103
                  sltiu        a7, zero, 1684
                  bge          s0, sp, 44f
                  addi         t5, a4, 108
                  lui          sp, 913042
                  blt          a1, a3, 43f
                  sra          t4, t3, a3
                  beq          s2, s6, 44f
                  or           gp, a3, a5
                  srai         t3, s2, 28
                  ori          t3, s1, 86
                  addi         a3, t0, -779
                  sltiu        t4, s8, 1809
                  srl          s9, a5, s9
                  lui          sp, 1033798
                  xori         t5, s9, 1066
43:               addi         a7, s6, 918
44:               srl          tp, a4, a6
                  sra          s9, a5, t0
                  sltu         s9, s11, t4
                  sltiu        sp, s1, -1229
                  andi         gp, t4, -926
                  slli         sp, a4, 15
                  bge          s10, a7, 65f
                  ori          s7, t1, -1271
                  slti         a4, ra, 1765
                  lui          a3, 848996
                  xor          a5, a1, s2
                  la           a2, sub_1
                  add          s4, a1, s3
                  srli         s3, sp, 20
                  addi         t5, a2, 570
                  xori         s11, a3, 246
                  addi         a2, a2, 746
                  nop
                  bne          a5, a3, main_j1 #branch to jump instr
                  sltiu        sp, s11, -1592
                  slti         s5, sp, 782
                  add          s4, a5, a3
main_j1:          jalr         t1, a2, -745 #jump main -> sub_1
                  nop
                  slli         s5, t0, 25
                  lui          a7, 1048327
                  srli         t2, a4, 2
                  add          s6, a5, s3
                  srai         a5, sp, 4
                  sub          a1, t2, a7
                  slli         a6, s0, 31
                  slt          zero, a7, a0
                  add          t2, zero, s1
65:               lui          a1, 801595
                  beq          s4, s0, 76f
                  slti         t6, gp, -1031
                  xori         t0, tp, -285
                  sra          t3, t0, s5
                  sltiu        a7, ra, -1891
                  sra          s10, s6, tp
                  srai         a0, s2, 15
                  add          t0, t3, a5
                  bge          s3, s7, 91f
                  and          t0, a1, t5
76:               slli         s5, t0, 16
                  sub          t0, a7, s6
                  srli         a7, a2, 29
                  and          t2, t6, s4
                  slti         a4, s6, 1109
                  beq          s4, t4, 92f
                  nop
                  addi         a3, zero, 1887
                  sltu         s6, s4, t6
                  xor          a0, t2, a1
                  slli         a1, s4, 14
                  sltu         t5, s8, a0
                  lui          tp, 814221
                  xor          s6, s9, t2
                  ori          t5, ra, -1442
91:               or           t4, a2, t5
92:               nop
                  srl          a2, s7, a5
                  blt          t4, s9, 97f
                  bne          s10, a2, 104f
                  bne          s1, sp, 112f
97:               bgeu         s0, s3, 102f
                  sltu         t4, zero, a6
                  bgeu         sp, s5, 113f
                  sltu         zero, ra, a2
                  bne          gp, s2, 104f
102:              xori         s6, s8, 445
                  slti         a7, s0, -1782
104:              srli         gp, t0, 2
                  sll          sp, a4, a1
                  lui          t1, 854248
                  blt          s0, a6, 108f
108:              slli         a1, t5, 10
                  auipc        a6, 632979
                  nop
                  sra          zero, t1, a1
112:              bge          a0, s6, 113f
113:              sltu         t3, s10, ra
                  bge          s11, a1, 129f
                  ori          s11, t6, -1372
                  srai         t6, s6, 1
                  bgeu         zero, t0, 118f
118:              add          zero, a1, t0
                  sltu         s10, zero, t6
                  or           gp, t5, t3
                  bge          ra, t2, 132f
                  xori         a7, t2, 1247
                  sll          t2, s2, a4
                  bltu         t1, s6, 131f
                  slt          a1, s6, s3
                  slti         s0, a5, 337
                  srli         s5, zero, 29
                  sltu         s8, a7, t1
129:              bge          gp, s9, 140f
                  lui          a7, 665657
131:              bge          s3, s0, 140f
132:              sub          s9, s8, ra
                  bgeu         s8, a2, 149f
                  addi         t0, s6, 1793
                  auipc        a7, 894392
                  sub          t5, s9, a7
                  or           a2, a4, ra
                  bne          a5, a7, 155f
                  addi         a2, s7, 1864
140:              blt          t2, a7, 159f
                  srli         s8, ra, 29
                  sll          s4, a1, a5
                  beq          s2, s11, 151f
                  blt          s4, t5, 164f
                  bge          t4, t2, 150f
                  blt          gp, s0, 163f
                  xor          a5, s7, t3
                  nop
149:              bge          sp, sp, 164f
150:              sltiu        t0, a4, 879
151:              srli         a2, a4, 11
                  add          gp, t0, t3
                  slt          s11, s8, s11
                  sltu         zero, t1, t2
155:              sltiu        a3, s8, 1986
                  sltiu        s3, t5, 757
                  slli         s8, s7, 0
                  andi         t5, s0, 366
159:              bge          s0, s0, 173f
                  slti         s8, s8, -898
                  nop
                  auipc        t4, 26371
163:              sra          a5, a3, t3
164:              slli         a7, tp, 0
                  addi         s4, tp, 390
                  srli         a3, s3, 26
                  sll          a2, s1, sp
                  sltiu        t3, a2, 1589
                  srli         s11, gp, 3
                  srai         s0, a0, 6
                  xori         s6, s11, 430
                  xori         t3, a3, -1012
173:              slt          s5, t6, a5
                  slti         gp, t3, 720
                  srl          s8, a6, ra
                  sltiu        t5, t0, 734
                  lui          s5, 611852
                  bge          a5, s0, 187f
                  xori         s9, a5, -1626
                  slti         a1, s11, -34
                  sub          a7, a6, t4
                  sll          t0, a1, a1
                  xor          s3, zero, s1
                  ori          s5, a3, 408
                  srai         gp, ra, 21
                  beq          t4, s9, 187f
187:              andi         a2, tp, -1443
                  sltiu        a2, s11, 2039
                  bge          s8, s8, 190f
190:              sra          t3, t0, t2
                  lui          sp, 482652
                  lui          a1, 372137
                  sltiu        s7, s2, 922
                  or           t5, s7, gp
                  srli         a1, a1, 5
                  beq          a4, a1, 212f
                  beq          s8, t4, 206f
                  beq          a5, t1, 212f
                  slli         a5, t2, 14
                  bltu         a7, a2, 215f
                  srai         a4, a6, 2
                  nop
                  sub          sp, a5, t0
                  or           t6, s8, s6
                  srai         s9, a5, 20
206:              bltu         t5, a5, 213f
                  andi         sp, t2, -835
                  sltiu        tp, t5, -75
                  bne          s1, s5, 210f
210:              srai         s5, zero, 8
                  sub          s11, a1, ra
212:              and          t1, s4, s3
213:              sltu         t1, a3, s5
                  bltu         a1, t5, 229f
215:              xori         s9, s2, 1790
                  sub          t0, t6, a3
                  xor          s6, s7, t1
                  sra          t4, zero, t5
                  ori          s3, a4, -995
                  nop
                  sltu         tp, t1, t1
                  sub          tp, a6, s0
                  sra          s5, a4, s11
                  xori         sp, ra, -1557
                  slli         a0, a1, 10
                  bltu         t1, a1, 240f
                  bne          s1, a6, 237f
                  xori         a1, s7, -294
229:              auipc        s6, 338811
                  bge          t0, t3, 241f
                  la           a6, region_0+1058 #start riscv_load_store_hazard_instr_stream_1
                  srli         tp, t1, 20
                  sb           s11, 37(a6)
                  sb           gp, 37(a6)
                  nop
                  lbu          t1, 37(a6)
                  sb           s1, 37(a6)
                  lb           a3, 37(a6)
                  lbu          t2, 37(a6)
                  lb           t5, 37(a6)
                  sll          a5, t4, t4
                  lb           s9, 37(a6)
                  lbu          zero, 37(a6)
                  lbu          s9, 23(a6)
                  sb           t4, 23(a6) #end riscv_load_store_hazard_instr_stream_1
                  lui          a3, 426931
                  srai         zero, a7, 9
                  slt          s9, a1, s5
                  bltu         t0, a7, 237f
                  srli         s5, s6, 14
                  sltu         tp, s4, a4
237:              bne          sp, zero, 248f
                  xori         t1, s4, -1339
                  and          tp, ra, a7
240:              slti         t2, a4, -219
241:              bltu         s4, tp, 257f
                  bgeu         t6, s10, 252f
                  addi         gp, s11, -46
                  slti         a2, gp, -613
                  slti         t3, s2, -1346
                  bge          a3, t0, 265f
                  sub          t2, s3, s3
248:              lui          a5, 326613
                  bge          a0, s3, 256f
                  lui          sp, 884587
                  xori         a1, t1, 1374
252:              sltu         a2, a0, s6
                  sll          t6, s1, t2
                  slli         t2, s3, 28
                  sll          t4, s0, tp
256:              sltiu        a0, a0, 170
257:              beq          s11, a4, 277f
                  blt          sp, s3, 261f
                  sltiu        sp, t2, -254
                  auipc        s8, 895663
261:              bge          t1, s4, 272f
                  srl          s6, t5, t2
                  or           t4, a3, t0
                  srli         s10, t1, 10
265:              sub          sp, s11, a4
                  srl          gp, gp, a7
                  xori         t5, s1, 137
                  addi         s3, t1, -593
                  xori         t4, a5, 1854
                  addi         tp, s9, -70
                  sll          s7, gp, t2
272:              lui          tp, 766574
                  xor          s11, a0, s7
                  sra          s0, a4, s3
                  and          sp, a5, s7
                  bltu         t0, s4, 293f
277:              sltiu        a7, a4, -1128
                  bltu         a6, s5, 281f
                  sltu         t6, s0, s11
                  slti         a4, t5, -1603
281:              nop
                  sra          t2, s8, a6
                  add          s0, a7, t0
                  bne          a5, a4, 295f
                  slti         a5, t2, -566
                  xor          t2, a3, s7
                  slli         s11, s7, 11
                  lui          s4, 435245
                  nop
                  add          s8, a2, s7
                  nop
                  xor          a1, t1, t2
293:              srl          s5, a0, s4
                  xor          t4, s9, t2
295:              slt          t3, sp, t0
                  auipc        a6, 755640
                  sltiu        s6, s0, 1850
                  nop
                  and          a1, s7, s3
                  andi         a5, s1, 1686
                  blt          t1, t5, 309f
                  sltu         a0, s11, s3
                  auipc        s3, 184198
                  blt          s3, t1, 318f
                  srl          s4, t2, s9
                  sll          t0, t1, a5
                  and          a6, s10, s7
                  auipc        t1, 127916
309:              srl          t2, t3, a2
                  or           t0, t1, t3
                  ori          tp, s8, 437
                  blt          s11, a3, 327f
                  srli         sp, a1, 25
                  andi         t1, a4, 59
                  sll          s0, s5, t2
                  bgeu         a6, ra, 323f
                  or           s6, a5, tp
318:              xor          s5, s1, s3
                  andi         a0, s0, 50
                  and          tp, s6, t5
                  auipc        gp, 276491
                  slt          t1, s11, s5
323:              nop
                  xori         a7, s4, -1527
                  addi         gp, ra, -864
                  add          s0, s5, gp
327:              slli         a0, a3, 18
                  bltu         a6, t3, 331f
                  slt          s4, t0, s3
                  bgeu         t0, a2, 345f
331:              xor          t3, s3, s6
                  srl          s3, t6, a7
                  slli         s0, t6, 31
                  srai         t6, a3, 19
                  beq          a3, t3, 355f
                  addi         s10, t6, 399
                  or           a6, a4, a5
                  slt          tp, s10, s8
                  addi         a4, a3, 592
                  slt          s5, zero, s10
                  nop
                  andi         a1, s2, 49
                  xori         s10, t0, -505
                  sltu         a6, s4, zero
345:              andi         t6, s2, -246
                  blt          a0, s11, 347f
347:              sltiu        a3, s11, -1502
                  slt          s3, t4, s6
                  xori         a2, a7, 99
                  beq          s0, s3, 366f
                  slt          s10, a4, s7
                  slt          sp, s10, s0
                  sub          a2, s4, s3
                  auipc        s4, 95567
355:              or           a2, a4, gp
                  lui          a6, 495843
                  andi         t0, s7, -643
                  sll          a5, s2, t2
                  sub          t2, t5, s2
                  xor          gp, s6, s0
                  xori         s3, ra, 1590
                  srai         t6, t1, 5
                  auipc        t6, 828044
                  nop
                  sltiu        a0, sp, 1386
366:              srli         s10, a6, 17
                  slt          s6, a3, s1
                  bne          s0, s3, 387f
                  srli         t4, t1, 24
                  beq          a0, t5, 377f
                  nop
                  bgeu         s7, s6, 375f
                  xori         s8, a4, 1745
                  xori         a5, sp, -532
375:              xor          sp, s9, a2
                  bltu         s4, a6, 391f
377:              add          s0, s1, a6
                  bgeu         t6, s6, 389f
                  or           sp, s1, a2
                  blt          s11, t2, 390f
                  add          a6, s3, t3
                  bge          a5, a0, 393f
                  slti         s8, a3, -254
                  or           gp, t6, s3
                  andi         t0, t6, -1551
                  nop
387:              xori         a6, a0, 1367
                  srli         a4, s7, 3
389:              nop
390:              ori          tp, zero, 1517
391:              andi         a1, t4, -363
                  add          zero, sp, s8
393:              sltu         t5, s10, gp
                  andi         t0, t4, -839
                  auipc        a0, 799334
                  bne          a2, zero, 410f
                  bne          s6, s4, 398f
398:              sltiu        s8, t2, 1612
                  sub          a0, t0, s2
                  slt          a1, t5, s2
                  sub          a1, a6, s5
                  srl          s8, a4, tp
                  bne          tp, t4, 419f
                  sll          t6, s2, a5
                  ori          s0, a6, -463
                  bltu         s6, sp, 409f
                  or           a4, a0, t4
                  slt          t1, s1, t3
409:              slli         s7, a4, 28
410:              slli         a7, s0, 18
                  bltu         a5, tp, 416f
                  nop
                  xor          a3, s2, a5
                  srli         s4, s0, 25
                  sra          s8, s8, s9
                  sra          s10, s10, s10
                  la           a7, sub_1
                  auipc        t3, 647824
                  addi         a7, a7, 73
                  auipc        a1, 362630
                  sltiu        s6, t6, 1974
                  slt          a4, t5, s4
                  or           a0, s8, sp
main_j2:          jalr         t1, a7, -73 #jump main -> sub_1
                  blt          a5, s8, 421f
                  and          s9, a5, a6
                  sltu         a5, a4, sp
                  sll          gp, t5, a0
416:              auipc        t6, 872260
                  lui          t6, 684735
                  la           sp, region_0+1749 #start riscv_load_store_hazard_instr_stream_4
                  sll          t6, s1, t2
                  slti         a5, ra, -1188
                  lhu          t4, -21(sp)
                  lb           t5, 1(sp)
                  lbu          s0, -27(sp)
                  lbu          t2, -27(sp)
                  sh           s11, 25(sp)
                  xori         s7, s11, -1196
                  srl          a1, t4, s9
                  xori         s3, gp, 1598
                  sb           t0, 27(sp)
                  slt          a4, t4, a6
                  slli         a2, a3, 23
                  lw           a3, 27(sp)
                  sh           a2, -43(sp)
                  lbu          s9, -43(sp)
                  lb           s9, 36(sp) #end riscv_load_store_hazard_instr_stream_4
                  sltiu        t4, s8, 1219
419:              andi         t3, t5, 1547
                  xor          a5, gp, s7
421:              slli         s6, sp, 12
                  slti         t1, s10, 665
                  add          s11, gp, a2
                  srli         a7, tp, 3
                  bge          s2, s11, 426f
426:              beq          a5, t1, 436f
                  slli         s10, s8, 1
                  bgeu         s5, a4, 445f
                  ori          a5, a0, 1654
                  blt          s8, s11, 438f
                  bgeu         tp, t3, 440f
                  slt          t2, a0, s5
                  slti         t2, t5, -757
                  bge          a6, a3, 445f
                  bgeu         a3, tp, 449f
436:              sltu         a0, s9, zero
                  sra          s11, s3, a1
438:              andi         a2, s4, -1088
                  nop
440:              sltu         a2, t1, s2
                  or           t0, a1, t5
                  xor          zero, t5, tp
                  la           sp, region_1+155 #start load_store_instr_stream_0
                  sb           s5, 1478(sp)
                  sb           ra, 192(sp)
                  lb           a7, 534(sp)
                  lb           gp, 1452(sp)
                  la           t0, region_1+1202 #start load_store_instr_stream_1
                  lbu          s5, -1031(t0)
                  lbu          s11, 746(t0)
                  lh           t5, -910(t0)
                  sb           s2, 161(t0)
                  lw           s7, 1173(sp)
                  lbu          a4, 165(t0) #end load_store_instr_stream_1
                  sb           t4, 1752(sp) #end load_store_instr_stream_0
                  bne          a6, s10, 454f
                  slli         a3, zero, 0
445:              nop
                  nop
                  srl          s9, s1, s2
                  sra          t6, t1, t6
449:              add          t1, sp, t3
                  bltu         a4, s9, 467f
                  beq          t5, s9, 462f
                  srai         a3, t5, 27
                  slli         t5, s9, 29
454:              sltu         t5, s0, s0
                  xori         a7, a6, 687
                  slt          t2, s5, tp
                  srai         t4, s4, 24
                  sub          s0, t5, a4
                  lui          s9, 329521
                  srl          a5, gp, s4
                  sltiu        s3, s11, -619
462:              auipc        a5, 208054
                  sltu         a0, t5, s4
                  and          s6, s6, zero
                  xor          s9, s0, s4
                  xor          s4, a2, t1
467:              srli         t1, s2, 30
                  add          s10, t6, gp
                  ori          s7, a4, -15
                  slli         sp, t2, 27
                  sltiu        s0, a6, 1589
                  srl          t5, a3, a1
                  sra          a6, s6, a6
                  andi         zero, gp, -1740
                  bne          t2, tp, 486f
                  blt          a0, a5, 490f
                  srli         s4, a0, 26
                  and          t2, a3, s6
                  xor          a3, s7, s7
                  slt          a5, s7, a4
                  beq          s5, t1, 490f
                  beq          gp, a7, 492f
                  sra          t3, a3, tp
                  sub          s9, s10, a1
                  bge          gp, a1, 501f
486:              srli         gp, a2, 20
                  bne          s7, s7, 495f
                  beq          t4, a3, 505f
                  nop
490:              bge          tp, s8, 505f
                  sra          s5, s3, tp
492:              slti         s8, ra, -455
                  andi         tp, a0, -544
                  srai         gp, s6, 23
495:              bltu         t2, gp, 512f
                  xori         s7, gp, -57
                  srli         s8, a1, 7
                  and          a3, zero, s10
                  slt          s11, s5, s3
                  srai         a0, t5, 17
501:              srli         s8, s8, 15
                  sltiu        a4, s5, -1598
                  bgeu         a7, t6, 506f
                  sra          s11, s10, t0
505:              srl          t5, s2, ra
506:              sub          t5, t2, sp
                  beq          t5, s4, 514f
                  sltiu        t4, a3, 1065
                  sra          s0, a7, a4
                  blt          t2, s9, 517f
                  and          t2, t5, a4
512:              lui          s10, 319910
                  beq          s2, a1, 516f
514:              bge          gp, t5, 517f
                  srli         a6, s2, 16
516:              bgeu         s11, s5, 517f
517:              xori         s0, a1, 1217
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sltu         s0, a4, s8
                  auipc        s10, 466594
                  bne          s6, tp, sub_1_stack_p
                  srai         a3, s5, 1
                  auipc        a1, 965099
                  addi         s3, t0, 1813
                  slli         a0, s6, 12
sub_1_stack_p:    addi         s1, s1, -48
                  sub          a1, a6, ra
                  sra          t6, ra, s0
                  sw           t1, 4(s1)
                  sltiu        s9, s0, -380
                  sltu         a3, s8, t2
                  la           sp, region_0+1109 #start riscv_load_store_hazard_instr_stream_1
                  sb           gp, -2(sp)
                  lb           s8, -58(sp)
                  lhu          s7, 55(sp)
                  lbu          s11, 24(sp)
                  sb           s4, 24(sp)
                  srli         a0, s11, 28
                  sra          s10, ra, t3
                  sb           a1, -59(sp)
                  nop
                  lhu          s11, -59(sp)
                  lw           s11, -45(sp)
                  lb           zero, 44(sp)
                  lb           zero, 44(sp)
                  lbu          s5, 58(sp)
                  lbu          a4, 58(sp)
                  lb           zero, 58(sp)
                  lb           a6, 14(sp)
                  lb           s6, 14(sp)
                  lw           gp, -1(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a0, region_0+1132 #start load_store_instr_stream_4
                  la           t2, region_0+624 #start load_store_instr_stream_2
                  la           a1, region_0+1756 #start load_store_instr_stream_0
                  la           a4, region_0+894 #start load_store_instr_stream_3
                  lb           t0, 741(t2)
                  la           t5, region_0+74 #start load_store_instr_stream_1
                  sb           t3, -354(a1)
                  lb           s7, -9(a4)
                  lbu          sp, -47(a0)
                  lb           s9, -865(a1)
                  lb           t6, 1266(t2)
                  sb           a5, 1(a0)
                  lh           a6, 1626(t5)
                  lh           s3, 6(a4)
                  lbu          gp, 1750(t5)
                  lb           s9, -13(a4)
                  lhu          t0, 376(t5)
                  sw           a5, 24(a0)
                  lhu          s4, -1430(a1)
                  lbu          s9, -16(a0)
                  sb           t0, 800(t2)
                  lbu          tp, -797(a1)
                  lhu          t6, 1602(t5)
                  lbu          s5, 813(t5)
                  sb           a6, -11(a4)
                  lhu          s10, 12(a4)
                  sb           tp, -509(a1)
                  lb           s9, 50(a0)
                  sb           a5, 973(t5)
                  lb           s11, -44(a0)
                  sb           s0, 5(a4) #end load_store_instr_stream_3
                  lbu          t1, 0(a0)
                  lb           s3, 311(t5)
                  lb           a6, 870(t2)
                  sb           a6, -50(a0)
                  sb           a1, -45(t5)
                  lb           a7, 259(t5) #end load_store_instr_stream_1
                  lh           s0, -40(t2) #end load_store_instr_stream_2
                  sb           s8, 27(a0)
                  lb           zero, 58(a0) #end load_store_instr_stream_4
                  lh           zero, -450(a1)
                  sb           t1, -1663(a1) #end load_store_instr_stream_0
                  la           t1, region_0+399 #start load_store_instr_stream_1
                  la           t5, region_0+1872 #start load_store_instr_stream_2
                  sb           ra, -151(t5)
                  la           s11, region_0+980 #start load_store_instr_stream_3
                  lb           t0, 15(t1)
                  lh           s4, -234(t5)
                  la           s7, region_0+329 #start load_store_instr_stream_0
                  lh           t3, -241(s7)
                  lh           zero, -490(s11)
                  sb           s2, -57(t5)
                  lb           zero, -252(s7)
                  lb           t0, 87(t5)
                  lb           s10, -28(s7)
                  sh           s3, -114(t5)
                  sh           ra, 3(t1)
                  lbu          a0, -583(s11)
                  lb           s5, -2(t1)
                  lb           s10, -2(t1)
                  lb           s4, -14(t5)
                  lbu          s0, 265(s11)
                  sw           s10, 223(s7)
                  lbu          s4, -149(t5)
                  lb           s3, -105(s7)
                  sb           s3, 86(s7)
                  lbu          t3, -733(s11)
                  sh           s10, -804(s11) #end load_store_instr_stream_3
                  lbu          a6, -233(t5)
                  lb           a1, 6(t1)
                  lb           gp, -9(t1) #end load_store_instr_stream_1
                  sb           s2, 31(t5) #end load_store_instr_stream_2
                  lhu          t0, -69(s7) #end load_store_instr_stream_0
                  la           sp, region_1+1908 #start riscv_load_store_rand_instr_stream_0
                  auipc        zero, 991883
                  xor          t4, a3, s5
                  or           t5, ra, s1
                  lui          s8, 681704
                  srai         t4, s7, 5
                  auipc        s9, 639780
                  ori          t4, ra, -14
                  auipc        tp, 64300
                  lbu          s9, -901(sp)
                  ori          a7, t1, 1753
                  lh           gp, -142(sp)
                  lui          s10, 307070
                  sub          tp, t4, ra
                  lb           gp, -760(sp)
                  srai         t3, s10, 29
                  sub          s4, sp, s6
                  sb           a4, -1170(sp)
                  lb           s8, -399(sp)
                  sltu         t2, s5, s6
                  ori          a4, a6, -585
                  addi         a4, a7, 1744
                  sb           t0, -1237(sp)
                  sltiu        a4, s8, 1758
                  sb           a4, -547(sp)
                  lbu          t2, -1495(sp)
                  lbu          s10, -1030(sp)
                  lui          s9, 893983
                  auipc        a6, 801274
                  lbu          t5, -1055(sp)
                  sltu         t2, s10, s7
                  xori         s7, t0, 672
                  lbu          s10, -1044(sp)
                  lbu          t1, -1193(sp)
                  add          a3, a7, s6
                  nop
                  lh           t4, -686(sp)
                  addi         t3, s1, -290
                  lhu          gp, -1788(sp)
                  auipc        s7, 546441
                  sw           s6, -1552(sp)
                  slti         s4, t2, -538
                  andi         gp, tp, -1682
                  sub          s11, t1, zero
                  lbu          t0, -827(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+668 #start riscv_load_store_hazard_instr_stream_0
                  lb           t3, 35(sp)
                  lh           a0, -42(sp)
                  sb           gp, -43(sp)
                  sb           gp, -43(sp)
                  sb           s6, -8(sp)
                  sw           a3, -8(sp)
                  nop
                  sra          s9, a2, sp
                  lbu          gp, -38(sp)
                  sb           s1, -5(sp)
                  sb           t6, 54(sp)
                  lb           s11, 36(sp)
                  lbu          t4, 36(sp)
                  sb           t3, 36(sp)
                  lh           s6, 36(sp)
                  sh           s8, -58(sp)
                  lbu          t5, -49(sp)
                  lh           a0, -26(sp)
                  lbu          t3, -26(sp)
                  lbu          t0, -27(sp)
                  nop
                  sb           a4, -3(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a6, region_0+468 #start riscv_load_store_rand_instr_stream_1
                  lbu          s7, 203(a6)
                  lbu          t3, -69(a6)
                  lbu          t6, -17(a6)
                  sub          s7, s9, s1
                  sh           a7, -220(a6)
                  sb           s6, -233(a6)
                  slti         t2, a1, 266
                  slti         t1, ra, 1972
                  lh           zero, -186(a6)
                  sb           tp, -181(a6)
                  lb           zero, -105(a6)
                  sb           t0, 50(a6)
                  lbu          t4, 117(a6)
                  lw           s4, -4(a6)
                  nop
                  lbu          a5, 213(a6)
                  andi         a3, s5, 1328
                  slt          s9, s4, s5
                  sh           a4, 252(a6)
                  and          a4, t2, a2
                  nop
                  lui          t6, 231885
                  sh           a5, 248(a6)
                  srl          s4, a2, a4
                  srli         s0, t1, 18
                  lb           s8, -66(a6)
                  and          t1, a7, s2
                  srli         t3, s9, 29
                  slti         t4, a1, 1306
                  sb           a0, 21(a6)
                  or           a3, a7, ra
                  sw           s6, -84(a6)
                  lbu          a4, 66(a6)
                  lhu          t5, -80(a6)
                  lw           a4, -28(a6)
                  sb           a1, -176(a6)
                  sh           a7, -98(a6) #end riscv_load_store_rand_instr_stream_1
                  sra          s3, s6, t0
                  srli         s3, zero, 18
                  xori         a1, a6, 234
                  srl          t4, sp, t0
                  andi         s6, a4, 849
                  slt          t4, t5, a3
                  sub          a4, s11, s2
                  xori         gp, tp, 1434
                  sltu         t5, t5, s1
                  bgeu         a7, s6, 12f
                  xor          sp, s6, zero
                  or           s4, t2, a1
12:               or           t2, tp, s11
                  and          a1, s4, s9
                  sltu         t3, s11, a2
                  xori         s8, a4, 875
                  or           a3, a3, s11
                  add          a5, a6, a6
                  slt          a0, s1, t5
                  andi         s0, s6, -14
                  bge          ra, t4, 32f
                  sra          a5, s6, s3
                  auipc        a6, 865592
                  auipc        t4, 393356
                  addi         s5, t1, 1850
                  srli         t2, a1, 0
                  addi         t5, t4, 1013
                  add          s4, sp, a6
                  nop
                  srl          a4, ra, a7
                  xor          s4, t4, s0
                  srli         s8, s7, 15
32:               beq          s10, t3, 52f
                  srai         a7, a0, 26
                  or           a0, a2, gp
                  ori          s10, t6, 1455
                  blt          a2, s11, 38f
                  xori         s9, t2, -1415
38:               ori          s0, t3, -1294
                  ori          a2, s8, -210
                  beq          t4, a4, 42f
                  beq          s5, t2, 53f
42:               slt          a1, s2, a6
                  blt          s1, a4, 55f
                  bne          sp, a0, 48f
                  bltu         sp, t1, 50f
                  slti         tp, a5, 1660
                  or           t0, a3, t2
48:               lui          s7, 811884
                  srl          a4, a4, a5
50:               bge          s7, s11, 63f
                  sltu         sp, s3, a1
52:               slt          a6, zero, t0
53:               add          gp, a2, t2
                  bne          s6, s4, 63f
55:               bge          a7, s5, 75f
                  slt          t6, zero, s6
                  srai         zero, s6, 2
                  sltiu        t2, s2, -1227
                  blt          s5, ra, 61f
                  slti         s6, s5, 805
61:               nop
                  bltu         s9, s3, 68f
63:               xori         s5, t1, 1031
                  sltu         a2, s8, a5
                  andi         t4, a7, 1970
                  add          a1, s2, t1
                  bne          s3, a0, 75f
68:               srli         s4, t5, 20
                  or           a0, tp, t6
                  add          s9, a3, s9
                  sltiu        zero, t1, 843
                  andi         s7, a7, 1578
                  sltiu        s4, s7, 1623
                  add          s9, ra, a0
75:               srli         a3, a1, 25
                  slti         tp, tp, -1401
                  xori         a7, s10, 12
                  sra          s9, s11, a5
                  slt          t5, s3, a7
                  beq          a7, t5, 85f
                  sltiu        gp, t0, 742
                  auipc        t1, 250999
                  and          s9, t6, ra
                  sll          s4, s1, a7
85:               sub          s9, s7, t2
                  bgeu         a3, t0, 97f
                  srl          a6, s0, s11
                  slti         s6, a2, 1995
                  and          s4, s3, t2
                  srl          t3, gp, t2
                  bgeu         tp, s11, 105f
                  ori          s3, s10, 239
                  slli         s5, zero, 24
                  bltu         t2, s11, 111f
                  lui          s4, 625549
                  nop
97:               ori          tp, s5, -984
                  slti         t6, zero, -1341
                  bgeu         t1, ra, 102f
                  xor          s5, sp, a2
                  sra          a7, s7, a6
102:              bge          s3, a2, 109f
                  beq          tp, s3, 123f
                  bltu         s6, ra, 119f
105:              srl          s9, a7, t5
                  beq          zero, tp, 107f
107:              sub          s10, a6, a6
                  beq          s2, a2, 121f
109:              bge          sp, t3, 111f
                  nop
111:              sub          s4, ra, t0
                  or           s4, zero, s11
                  slti         a7, sp, -1264
                  xor          a3, a2, s10
                  sub          gp, t0, s3
                  bgeu         ra, t4, 134f
                  slti         t0, s4, 1008
                  xor          s11, tp, t1
119:              addi         t2, s11, 400
                  sub          a2, a4, s10
121:              bge          s11, s3, 126f
                  srli         s3, a0, 13
123:              ori          a7, a1, 757
                  bne          t4, a4, 131f
                  sltu         s9, t5, s11
126:              sll          s6, s6, a0
                  add          a0, s8, s10
                  nop
                  slti         zero, s5, 571
                  sltiu        s11, s2, -328
131:              auipc        s11, 717282
                  auipc        s6, 800038
                  nop
134:              slti         a6, a4, -132
                  add          s9, s3, s3
                  blt          a6, a6, 149f
                  blt          a3, t3, 154f
                  bne          s11, s1, 140f
                  andi         s9, a7, -271
140:              srai         s7, s5, 18
                  sltiu        a5, sp, -217
                  sltu         a5, s10, zero
                  slli         zero, s7, 26
                  sltiu        a7, a0, 131
                  xori         s3, a7, 1590
                  bge          s6, s10, 157f
                  and          sp, t0, tp
                  slt          t3, a0, a3
149:              sub          s7, s11, s3
                  slt          a5, t4, a4
                  sub          s9, a3, t5
                  xori         s11, s7, 1232
                  ori          s3, t4, 2041
154:              blt          gp, a0, 167f
                  sra          gp, s5, t0
                  sra          a3, s0, t5
157:              auipc        t1, 527884
                  sltu         s4, s0, s11
                  bge          s10, t2, 161f
                  slli         a2, s8, 23
161:              xor          a2, sp, tp
                  sra          s7, s10, t1
                  blt          sp, t2, 167f
                  nop
                  xori         t4, a4, -1505
                  sra          a3, s4, zero
167:              slli         zero, a7, 23
                  la           t6, sub_2
                  slti         s10, s7, -1410
                  slt          t4, a3, s0
                  andi         tp, a6, 200
                  srli         s9, a6, 8
                  add          t1, gp, s11
                  srl          s8, s7, t5
                  addi         t6, t6, 388
                  sub          gp, a2, s9
                  slti         gp, s9, -470
sub_1_j3:         jalr         t1, t6, -387 #jump sub_1 -> sub_2
                  slli         s4, t3, 15
                  bge          s9, s3, 171f
                  bltu         s8, s2, 185f
171:              slt          t4, a2, s10
                  and          s11, s11, t3
                  srl          s9, s11, s8
                  bgeu         a4, zero, 194f
                  bgeu         s6, t4, 180f
                  slti         t1, s2, 441
                  beq          s11, s6, 189f
                  slt          t4, s3, t4
                  bltu         ra, gp, 199f
180:              xori         s3, a2, 375
                  sra          s4, ra, s7
                  xori         t1, s4, -450
                  lui          a7, 661905
                  sltu         s5, s0, ra
185:              sra          a5, t3, a6
                  add          t0, s5, a1
                  bge          s6, a3, 188f
188:              sll          a4, s9, t0
189:              auipc        t5, 624206
                  slt          s0, t5, zero
                  nop
                  srl          t3, s5, t0
                  ori          t2, ra, 1673
194:              or           s4, t0, s8
                  and          t4, t6, tp
                  and          s5, s2, s2
                  sra          t1, t0, s1
                  bne          a0, t6, 211f
199:              sub          zero, t5, s9
                  nop
                  sll          s8, s6, s8
                  addi         s9, s9, 1392
                  xor          s8, a2, gp
                  beq          s7, s3, 206f
                  sltu         a0, s4, a0
206:              srli         s5, t1, 20
                  sub          t4, t1, a3
                  srai         t2, s8, 15
                  srl          s11, t5, t2
                  ori          s11, a6, 1754
211:              ori          s10, t2, -1634
                  slli         a6, a2, 9
                  beq          ra, t4, 218f
                  bge          s8, s10, 217f
                  xor          t3, t1, t2
                  slt          t4, ra, s10
217:              andi         s3, tp, 1613
218:              beq          t0, s11, 236f
                  and          a4, a2, a6
                  or           s8, t0, a6
                  sltu         t4, s9, s4
                  lui          t5, 821654
                  addi         s11, t0, 988
                  sltu         s4, t4, s10
                  bgeu         t3, t2, 237f
                  andi         s6, a3, 285
                  sub          s6, t0, tp
                  bne          s9, s11, 241f
                  lui          a4, 844414
                  xori         s7, t4, 1796
                  srl          s4, s8, s4
                  andi         s7, s8, -1081
                  srai         s8, t5, 14
                  xor          t0, s2, a2
                  blt          a2, s5, 249f
236:              srl          a0, t6, tp
237:              beq          s11, s6, 242f
                  beq          a1, a3, 258f
                  and          a3, a5, s7
                  bge          zero, s5, 249f
241:              srli         s5, s4, 22
242:              bgeu         a6, s3, 245f
                  bgeu         t3, s10, 255f
                  lui          s6, 993996
245:              beq          s1, s8, 251f
                  sltu         t2, sp, zero
                  bge          a5, s10, 254f
                  bne          s11, s3, 256f
249:              lui          t3, 882151
                  bltu         s4, a1, 257f
251:              beq          s1, s0, 262f
                  add          t2, a0, t6
                  slti         t2, s11, -1942
254:              bge          t0, s4, 256f
255:              srl          s9, t4, sp
256:              sltiu        a3, t2, 46
257:              xori         a7, s11, 1335
258:              andi         tp, a3, -1081
                  add          tp, s9, a6
                  ori          s3, ra, -493
                  beq          a0, zero, 271f
262:              slli         t1, a0, 11
                  slt          tp, s5, a7
                  blt          tp, sp, 271f
                  srl          t3, t6, t6
                  xor          a6, a2, tp
                  bltu         a2, t2, 271f
                  sltu         s10, s10, s10
                  bltu         tp, a5, 270f
270:              bgeu         zero, t2, 271f
271:              sra          t2, s8, s4
                  lw           t1, 4(s1)
                  xor          s4, s6, a3
                  srai         tp, a4, 21
                  and          tp, s4, t2
                  addi         s1, s1, 48
                  slti         a1, s10, 1594
501:              addi x20, x6, 1
501:              jalr x20, x20, 0
sub_2:            xor          s11, t0, a2
                  add          a3, t4, s3
                  addi         s1, s1, -16
                  auipc        a1, 326170
                  slt          s5, s6, s7
                  andi         t5, sp, -532
                  add          s10, a1, s10
                  sw           t1, 4(s1)
                  slt          a7, a6, a4
                  la           s5, region_0+1699 #start riscv_load_store_hazard_instr_stream_1
                  sb           s11, 16(s5)
                  lb           a1, 16(s5)
                  slti         t4, s11, 284
                  sb           t6, -2(s5)
                  lh           t0, 5(s5)
                  srli         t0, s7, 25
                  auipc        s8, 948454
                  sb           t5, -16(s5)
                  sb           s2, -16(s5)
                  lb           t4, -6(s5)
                  lb           tp, -6(s5)
                  nop
                  sb           t5, -15(s5)
                  lhu          s0, -9(s5)
                  lh           a6, -9(s5)
                  lb           s6, -2(s5)
                  sh           s6, -9(s5) #end riscv_load_store_hazard_instr_stream_1
                  la           t2, region_1+1420 #start riscv_load_store_rand_instr_stream_0
                  lbu          s5, -20(t2)
                  srl          s7, s3, s7
                  sb           s2, -41(t2)
                  xor          zero, a4, a5
                  sll          tp, t0, a3
                  lw           a2, 52(t2)
                  and          a3, s11, s6
                  sb           t6, -39(t2)
                  lbu          s6, 37(t2)
                  sltiu        s10, s11, -1587
                  lbu          a4, 56(t2)
                  ori          a3, s3, -1929
                  srai         t6, t5, 9
                  lhu          a4, -10(t2)
                  srl          a5, tp, s1
                  xor          s7, s3, a1
                  sll          a1, zero, a3
                  auipc        t0, 938425
                  xori         a5, a2, -48
                  xor          s3, s11, s5
                  lui          s5, 488259
                  sltu         tp, s9, a1
                  lbu          s3, 41(t2)
                  srli         t1, s1, 25
                  sb           a2, 5(t2)
                  srl          s10, t5, a3
                  sb           s5, 7(t2) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_0+197 #start riscv_load_store_rand_instr_stream_1
                  sltu         s10, s8, t2
                  lbu          t6, 80(s9)
                  lb           t4, 176(s9)
                  lb           a5, 169(s9)
                  lbu          s4, -90(s9)
                  lbu          s4, -95(s9)
                  auipc        t5, 112368
                  or           s0, s8, sp
                  srl          s6, a1, sp
                  srli         t4, s1, 4
                  slti         a3, s8, 123
                  add          t3, gp, a7
                  lb           t6, 152(s9)
                  and          t1, s11, s6
                  srai         t1, s4, 3
                  and          t1, tp, t1
                  sub          zero, a4, s7
                  sra          t0, t0, s9
                  sll          a4, t3, a7
                  sll          a2, s3, ra
                  sb           t6, 108(s9)
                  sb           a4, -82(s9)
                  slt          s4, a3, s3
                  or           t1, s6, t1
                  lhu          a7, 247(s9)
                  lhu          s7, -127(s9)
                  slli         t3, t3, 31
                  auipc        t6, 479366
                  slli         a7, s11, 15
                  sh           s9, 45(s9) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_0+1547 #start load_store_instr_stream_2
                  la           t2, region_0+1157 #start load_store_instr_stream_1
                  lbu          t6, -1545(a2)
                  la           s0, region_0+147 #start load_store_instr_stream_0
                  sb           a2, -1110(a2)
                  lbu          tp, -37(s0)
                  sb           s4, -7(t2)
                  sb           s1, -934(a2)
                  lbu          s9, -984(a2)
                  lh           sp, -1285(a2)
                  lb           a1, -1384(a2)
                  sh           s8, 29(s0)
                  sh           t4, -1177(a2)
                  lb           s6, -25(t2)
                  lb           a3, -64(s0)
                  lh           s9, -55(t2)
                  sb           gp, -51(s0)
                  lb           tp, 36(s0)
                  lh           t0, -41(t2)
                  sb           t3, 56(s0)
                  sb           a1, 4(s0)
                  sh           s3, 47(t2)
                  lb           zero, 118(a2)
                  lb           s7, 36(s0)
                  lb           t6, -1194(a2)
                  sb           ra, 142(a2) #end load_store_instr_stream_2
                  lb           a6, -10(t2) #end load_store_instr_stream_1
                  lbu          t5, 42(s0) #end load_store_instr_stream_0
                  la           a6, region_0+691 #start load_store_instr_stream_1
                  lb           s7, 60(a6)
                  la           s11, region_0+1974 #start load_store_instr_stream_0
                  la           s9, region_0+411 #start load_store_instr_stream_2
                  lh           a3, 8(s11)
                  lb           zero, 6(a6)
                  sb           s6, 44(a6)
                  lb           t4, 8(s11)
                  sb           s3, -13(s11)
                  lb           t2, -20(a6)
                  sb           t4, -2(s11)
                  sb           t4, -3(s9)
                  lb           gp, 4(s9)
                  lb           t6, 11(s11)
                  sb           a6, 12(s9)
                  sb           a2, -64(a6) #end load_store_instr_stream_1
                  lhu          a1, -8(s11)
                  lbu          s10, -8(s9)
                  sb           a0, 2(s9)
                  lbu          t0, -7(s11)
                  lw           s6, 5(s9) #end load_store_instr_stream_2
                  sw           s8, -10(s11)
                  lh           s0, 6(s11) #end load_store_instr_stream_0
                  beq          s6, s6, 9f
                  xor          zero, s8, s9
                  addi         a3, t6, 926
                  xor          t5, s9, a1
                  andi         sp, t1, -411
                  slti         tp, a2, 880
                  srl          a7, t2, a5
                  and          s5, t0, gp
                  andi         s7, ra, 1714
9:                beq          t4, t1, 19f
                  nop
                  blt          t6, a1, 20f
                  slt          a6, gp, a0
                  xori         s7, t3, -590
                  xor          t5, s10, a0
                  xor          s11, t5, t2
                  and          s8, gp, t5
                  auipc        zero, 636375
                  slti         t4, tp, 1046
19:               srli         a7, s2, 13
20:               bne          s6, s4, 27f
                  andi         s0, a6, 1898
                  sltu         s11, s7, ra
                  bltu         s9, a4, 35f
                  lui          s0, 851729
                  xor          s11, a1, t5
                  srli         s8, s1, 0
27:               srli         s11, s10, 20
                  bltu         s3, s10, 44f
                  blt          s8, s10, 40f
                  sub          t1, zero, s5
                  sra          a5, s2, gp
                  srli         s3, s10, 1
                  nop
                  sltiu        s8, t3, 1528
35:               sltu         s3, a1, a6
                  sra          s10, t3, t5
                  sll          s6, a5, s0
                  slli         gp, zero, 22
                  sltiu        gp, gp, -652
40:               bne          tp, tp, 48f
                  sll          s4, s2, s5
                  and          s5, s6, t4
                  bltu         s10, s0, 47f
44:               add          zero, s4, t5
                  ori          a7, s10, 643
                  nop
47:               xori         s10, t4, -708
48:               auipc        a4, 646489
                  bge          t2, a5, 53f
                  slti         t3, s2, 1172
                  nop
                  bne          t3, zero, 54f
53:               bgeu         s3, s6, 72f
54:               sub          gp, a1, a3
                  sltu         a5, s2, s2
                  slti         s10, a7, 15
                  nop
                  bge          s11, a4, 70f
                  xori         a3, zero, -295
                  nop
                  slti         s10, s11, -935
                  andi         t4, a7, 1780
                  slti         s9, a5, -733
                  bge          s5, s0, 66f
                  bgeu         zero, s7, 82f
66:               slt          t4, a7, s5
                  ori          s0, s5, -1625
                  beq          a7, s4, 86f
                  bne          s0, t2, 72f
70:               slti         zero, t4, -453
                  sll          s3, t4, t3
72:               srli         t3, s5, 9
                  slti         t2, a5, 1448
                  and          t4, s1, t6
                  slti         s11, t0, 281
                  auipc        a5, 33056
                  addi         a2, s7, 1376
                  srli         a7, s8, 15
                  srl          t2, t0, tp
                  bge          a6, a0, 82f
                  bltu         tp, t3, 84f
82:               bne          ra, s2, 91f
                  ori          a4, s4, -1667
84:               xori         a5, a7, -1877
                  slti         s7, sp, -1710
86:               slli         gp, a2, 1
                  bge          s10, a6, 97f
                  beq          s1, t6, 99f
                  blt          zero, t1, 107f
                  la           sp, region_0+1124 #start riscv_load_store_hazard_instr_stream_0
                  sb           a4, -1(sp)
                  lbu          t0, -1(sp)
                  lbu          a7, -1(sp)
                  sb           s0, -16(sp)
                  sh           t0, 10(sp)
                  lhu          s3, 10(sp)
                  lb           a2, 10(sp)
                  lbu          t0, 10(sp)
                  sh           s6, 10(sp)
                  lw           t2, 4(sp)
                  lb           a0, 5(sp)
                  sb           s6, -1(sp)
                  sb           s4, 16(sp)
                  sb           s7, 0(sp)
                  srai         a5, s8, 16
                  xori         s0, s11, -289
                  lb           a1, 7(sp) #end riscv_load_store_hazard_instr_stream_0
                  bgeu         t4, s7, 94f
91:               add          s5, t4, s11
                  slli         zero, a4, 29
                  sll          a3, a7, s3
94:               lui          t2, 351705
                  sra          t5, s1, s5
                  sltu         s10, a6, a2
97:               addi         a4, s4, -635
                  sub          s4, s11, s6
99:               nop
                  srli         t0, s2, 8
                  slt          s11, a0, sp
                  blt          s3, s5, 121f
                  andi         gp, s5, -395
                  sltiu        s5, zero, 200
                  srai         s4, a7, 26
                  lui          a3, 273172
107:              ori          a0, s8, -516
                  sra          t5, s10, t1
                  andi         sp, t6, 1952
                  slli         t2, a1, 1
                  xor          a6, s8, t4
                  beq          s5, s0, 130f
                  slli         t0, s3, 20
                  sra          a6, zero, s0
                  bgeu         a0, a6, 126f
                  andi         s4, s6, -1312
                  srai         s4, ra, 9
                  bne          a1, ra, 119f
119:              sub          t3, s2, t6
                  bltu         t4, a5, 127f
121:              sra          a7, s5, a5
                  xor          s7, t4, s7
                  bne          a6, gp, 143f
                  srl          t2, a6, s3
                  blt          a5, sp, 126f
126:              sltu         a1, s9, t1
127:              addi         t6, a0, -303
                  bge          sp, t6, 132f
                  andi         s10, t6, 2022
130:              srai         s10, s2, 15
                  sltiu        a1, t6, -1143
132:              addi         a1, s5, -1780
                  slti         s5, t4, -1703
                  lui          a1, 688141
                  bge          s0, s8, 147f
                  auipc        t2, 854207
                  and          t6, s0, s7
                  srl          s10, s4, a2
                  add          s4, s11, a4
                  sltiu        t5, s6, -1826
                  xori         s6, s9, 1774
                  sltiu        t0, a1, -1354
143:              srli         t4, s6, 15
                  sll          a0, t0, s4
                  srai         gp, sp, 27
                  sra          t0, s1, t4
147:              sub          s10, s4, a6
                  srai         s4, t2, 15
                  bne          a1, s3, 160f
                  beq          a2, s0, 170f
                  or           a1, t1, t3
                  ori          sp, s1, -974
                  sll          s8, t3, s11
                  xori         t0, t6, 1248
                  slti         s10, a7, 385
                  beq          s8, s9, 175f
                  lui          s8, 863805
                  bltu         s4, t3, 177f
                  ori          a2, a0, -1044
160:              lui          a4, 326634
                  srl          a6, s3, a4
                  xor          s5, a2, a4
                  srl          t3, zero, a4
                  sltu         t0, s10, t2
                  bne          tp, sp, 174f
                  addi         s7, s4, -1255
                  slt          a3, t6, s2
                  bne          t1, s4, 177f
                  andi         t1, t5, 919
170:              blt          a6, s1, 178f
                  sltiu        t0, a3, 91
                  xor          s4, a5, t5
                  bge          s7, s7, 184f
174:              srli         zero, s2, 19
175:              xori         t2, gp, -1465
                  bge          a5, t0, 186f
177:              srai         s10, s5, 12
178:              lui          s6, 325294
                  blt          s8, tp, 183f
                  bne          a6, s5, 198f
                  blt          t1, a5, 183f
                  srai         s4, s6, 14
183:              sltu         t2, t1, ra
184:              xori         t3, t0, 1857
                  sltu         a1, gp, a7
186:              slli         sp, ra, 28
                  lui          s6, 554423
                  sll          sp, s0, s0
                  srli         s9, s11, 20
                  and          s10, t2, ra
                  sll          a0, tp, ra
                  sub          s4, zero, s1
                  srai         s0, zero, 21
                  lui          s9, 272459
                  beq          a5, s0, 205f
                  slli         s9, zero, 7
                  sltu         t3, a0, t6
198:              sub          t2, t2, tp
                  slli         a5, sp, 17
                  bgeu         a6, a1, 209f
                  sltu         a3, t4, a4
                  blt          s7, s10, 209f
                  nop
                  srai         s4, a4, 31
205:              srai         a7, a1, 23
                  nop
                  slli         a2, a2, 7
                  and          zero, s4, zero
209:              xori         a0, t2, -1248
                  auipc        s5, 1025923
                  lui          t2, 531312
                  lui          tp, 1001088
                  lw           t1, 4(s1)
                  andi         tp, t4, -1309
                  addi         s1, s1, 16
                  slti         tp, a1, 1552
                  srli         a3, t3, 1
                  xor          a3, a6, t2
                  ori          t6, a6, -215
                  addi         a6, s4, 83
                  slti         a6, s8, 1184
377:              addi x23, x6, 0
377:              jalr x23, x23, 0
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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x18, x9, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x17, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x17, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x17, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x17, x22, ecall_handler
                  li x22, 0x1
                  beq x17, x22, instr_fault_handler
                  li x22, 0x5
                  beq x17, x22, load_fault_handler
                  li x22, 0x7
                  beq x17, x22, store_fault_handler
                  li x22, 0xc
                  beq x17, x22, pt_fault_handler
                  li x22, 0xd
                  beq x17, x22, pt_fault_handler
                  li x22, 0xf
                  beq x17, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x9, x18, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x18, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x18, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x9, x18, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x9, x18, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x9, x18, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
