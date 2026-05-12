.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xc
                  li x2, 0xc0e2de7b
                  li x3, 0x80000000
                  li x4, 0xeb7d7e7a
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0xf2908a68
                  li x8, 0xfb314793
                  li x9, 0x9
                  li x10, 0xf9c97776
                  li x11, 0x0
                  li x12, 0x708741ee
                  li x13, 0xff30c2c5
                  li x14, 0xb702a9d9
                  li x15, 0xfe71fbea
                  li x16, 0x80000000
                  li x17, 0xd
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x21, 0x1b317804
                  li x22, 0xa29057e2
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0xfd35be5c
                  li x27, 0xab6ccb8d
                  li x28, 0xa964d0aa
                  li x30, 0xae92fea
                  li x31, 0x3
                  la x29, user_stack_end
main:             la           s3, sub_2
                  xor          s5, s5, s5
                  addi         s3, s3, -289
                  bge          s6, s2, main_j3 #branch to jump instr
                  lui          t2, 218030
                  andi         s1, a6, 604
                  ori          s10, t0, 980
                  srl          s1, s6, s3
main_j3:          jalr         s3, s3, 289 #jump main -> sub_2
                  la           a2, region_1+496 #start riscv_load_store_hazard_instr_stream_0
                  sb           s7, -7(a2)
                  lb           s2, -7(a2)
                  nop
                  lbu          t0, -7(a2)
                  lh           t3, -6(a2)
                  sltu         t3, s10, t4
                  xori         a4, s4, -1156
                  srai         a4, sp, 13
                  sh           a0, -6(a2)
                  sh           s8, -6(a2)
                  lw           tp, 8(a2)
                  sh           s6, 8(a2)
                  lb           s11, -8(a2)
                  sw           s10, -8(a2)
                  sw           s4, -16(a2)
                  sltiu        ra, t0, -1233
                  sltu         s7, s6, s0
                  srli         tp, s9, 24
                  sb           t6, -9(a2)
                  sb           a1, -16(a2) #end riscv_load_store_hazard_instr_stream_0
                  la           s10, region_1+824 #start riscv_load_store_hazard_instr_stream_1
                  lw           a0, 4(s10)
                  srli         tp, a5, 26
                  sb           t6, 14(s10)
                  sb           s9, -11(s10)
                  lbu          s5, -11(s10)
                  lhu          s11, 4(s10)
                  sb           a6, 4(s10)
                  sw           ra, -12(s10)
                  andi         a6, a0, -17
                  lh           a3, -12(s10)
                  sb           t4, 14(s10)
                  sh           s11, -6(s10)
                  sra          a3, a3, t4
                  sltu         a2, t0, a4
                  sltu         s0, s0, sp
                  lbu          t6, -12(s10)
                  lbu          a5, -13(s10) #end riscv_load_store_hazard_instr_stream_1
                  la           a2, region_1+1771 #start riscv_load_store_rand_instr_stream_0
                  addi         s1, s11, -536
                  xori         s2, s11, 1828
                  auipc        t1, 221028
                  sll          s6, a2, gp
                  lhu          a5, 41(a2)
                  sw           s3, 193(a2)
                  sb           a1, -38(a2)
                  slti         s2, a1, -747
                  lb           s8, -1(a2)
                  sb           s7, -104(a2)
                  andi         s11, s8, 1688
                  slt          t1, s9, t5
                  and          tp, s10, a2
                  sw           a3, -123(a2)
                  nop
                  and          s7, a5, t4
                  and          s3, a4, s0
                  lb           a7, 104(a2)
                  srl          a7, t2, s8
                  lbu          a5, 130(a2)
                  sb           s8, 60(a2)
                  sh           sp, 31(a2)
                  sb           s2, 220(a2)
                  lb           s3, -57(a2)
                  lb           a3, 224(a2)
                  lb           a0, 180(a2)
                  sb           s4, 218(a2)
                  sub          t3, t3, a1
                  slt          tp, a1, t5
                  sh           t5, -25(a2)
                  lb           tp, 141(a2)
                  sltu         a1, s9, tp
                  sb           sp, -137(a2)
                  addi         a1, s2, 2039
                  sb           sp, 203(a2)
                  andi         s8, s0, -6
                  nop
                  and          s1, s7, s0
                  lui          s1, 809261
                  sh           t5, 41(a2)
                  xori         s2, a4, 890
                  sb           ra, -196(a2)
                  andi         sp, t3, -971
                  lh           a5, -27(a2)
                  ori          a7, a2, -472
                  lb           sp, -97(a2)
                  sltu         t1, s6, t5
                  srl          ra, t6, t4
                  auipc        s3, 504501
                  srli         s8, a2, 5
                  sb           s2, -182(a2) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_0+854 #start load_store_instr_stream_0
                  la           a2, region_0+627 #start load_store_instr_stream_1
                  la           s6, region_0+981 #start load_store_instr_stream_2
                  sb           a1, -53(s5)
                  sh           t1, 237(s6)
                  lbu          s7, 234(s6)
                  lb           s0, 31(a2)
                  lbu          a3, -34(s5)
                  sb           a1, -42(a2)
                  la           s2, region_0+560 #start load_store_instr_stream_3
                  lbu          t6, 21(s5)
                  lb           a7, 33(s5)
                  lh           t2, -11(a2)
                  lbu          a0, 114(s6)
                  sb           a2, -13(s2)
                  sb           a0, 247(s6)
                  lbu          a4, 21(a2)
                  lh           a0, -95(s6)
                  lb           a5, 16(s2)
                  lbu          a1, 214(s6)
                  lhu          gp, -16(s2)
                  sb           a4, -7(s5)
                  sh           s0, -10(s2)
                  lb           s8, -158(s6)
                  sb           s2, -17(a2)
                  lb           ra, 112(s6)
                  lbu          ra, 32(s5)
                  sh           tp, -233(s6)
                  lb           a3, 19(s5)
                  lh           a0, -52(s5)
                  sb           gp, -16(s2) #end load_store_instr_stream_3
                  lhu          t2, 54(s5)
                  lb           sp, 2(a2)
                  lbu          a7, 247(s6) #end load_store_instr_stream_2
                  sh           t1, -41(a2) #end load_store_instr_stream_1
                  lbu          s8, -61(s5) #end load_store_instr_stream_0
                  la           s0, region_0+1248 #start riscv_load_store_rand_instr_stream_2
                  lui          a6, 500913
                  sb           s7, -399(s0)
                  slli         t0, s9, 9
                  sra          tp, t2, t6
                  sll          a2, gp, a6
                  slli         t3, t3, 14
                  sb           t5, 321(s0)
                  lb           s1, -482(s0)
                  lh           tp, 310(s0)
                  sh           a7, 54(s0)
                  ori          sp, a0, 146
                  slt          s10, a5, s7
                  sltu         s8, s11, a2
                  or           gp, ra, s7
                  or           a0, s4, ra
                  sltiu        t2, t0, -2011
                  sb           t6, -649(s0)
                  sltiu        s1, s1, -234
                  slti         t2, s3, -632
                  add          s10, s10, a4
                  xor          gp, t2, t5
                  nop
                  lbu          a7, -740(s0)
                  or           a7, s4, gp
                  slli         tp, t4, 10
                  lbu          s2, -1159(s0)
                  lhu          a6, -1066(s0)
                  lbu          a4, 370(s0)
                  lhu          s3, -830(s0)
                  auipc        a5, 446927
                  sra          s1, s10, a0
                  lb           zero, -795(s0)
                  lh           s6, -674(s0)
                  nop
                  lbu          sp, 383(s0)
                  sh           s8, -920(s0)
                  srli         s8, gp, 3
                  auipc        s1, 577078
                  sh           a7, 102(s0)
                  lui          t0, 410535
                  nop
                  andi         a3, ra, -413
                  sb           a7, -299(s0)
                  srl          s7, a4, a3
                  srl          t2, t6, s8
                  lb           a0, -631(s0)
                  lb           a6, -675(s0)
                  srai         zero, a5, 10
                  sb           t3, -133(s0) #end riscv_load_store_rand_instr_stream_2
                  la           a6, region_0+1748 #start riscv_load_store_hazard_instr_stream_2
                  lb           s6, 5(a6)
                  slt          t3, zero, t1
                  lb           s6, -17(a6)
                  sb           s3, -17(a6)
                  slti         s11, t4, -1386
                  xori         a1, a0, 1903
                  lb           tp, -31(a6)
                  sra          ra, s10, a6
                  sh           zero, -50(a6)
                  sltu         s7, s3, tp
                  lb           s7, -23(a6)
                  lbu          s1, -23(a6)
                  lbu          a4, -23(a6)
                  lbu          a5, -23(a6)
                  xori         tp, a4, -840
                  lb           t0, -23(a6)
                  lh           a7, 4(a6) #end riscv_load_store_hazard_instr_stream_2
                  la           s2, region_0+324 #start riscv_load_store_rand_instr_stream_1
                  lbu          s11, 1559(s2)
                  lb           t3, 1449(s2)
                  sw           a0, 1028(s2)
                  lh           s11, 632(s2)
                  lui          tp, 332813
                  srl          a6, a5, a5
                  sb           s11, -311(s2)
                  lb           zero, 1243(s2)
                  add          t5, t4, s4
                  srai         ra, s4, 24
                  sub          a2, s10, zero
                  srl          t3, gp, s7
                  lh           s0, 574(s2)
                  lbu          zero, 975(s2)
                  lb           s0, -252(s2)
                  lbu          a5, 1005(s2)
                  sb           sp, 1299(s2)
                  lb           ra, 1106(s2)
                  lhu          s5, 44(s2)
                  slt          s10, t1, t3
                  sw           s4, 1000(s2)
                  andi         gp, gp, 619
                  sb           a6, 866(s2)
                  lhu          a5, 642(s2)
                  nop
                  or           ra, s5, t2
                  lh           t2, -116(s2)
                  lb           s5, 248(s2)
                  sb           s8, 1158(s2)
                  lui          a0, 340812
                  lbu          t3, 111(s2) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_0+420 #start load_store_instr_stream_1
                  la           s6, region_0+297 #start load_store_instr_stream_0
                  sb           s1, -64(s3)
                  lbu          zero, 976(s6)
                  lh           t3, -60(s3)
                  lhu          a2, 1349(s6)
                  sb           a2, 387(s6)
                  sb           sp, 253(s3)
                  sh           ra, 102(s3)
                  sb           a3, 168(s6)
                  lb           t1, 138(s3)
                  lw           a5, 743(s6)
                  lh           t2, -254(s3) #end load_store_instr_stream_1
                  lb           t1, -229(s6) #end load_store_instr_stream_0
                  la           t5, region_0+625 #start load_store_instr_stream_2
                  la           a6, region_0+422 #start load_store_instr_stream_1
                  lb           s10, -79(t5)
                  sb           s0, 181(t5)
                  lw           s8, 106(a6)
                  la           s3, region_0+1087 #start load_store_instr_stream_0
                  sh           s5, -168(a6)
                  lb           ra, 44(s3)
                  sb           t6, -98(a6)
                  sb           s3, 163(t5)
                  sb           s10, -30(s3)
                  lhu          t3, 76(a6)
                  lb           t1, -43(t5)
                  sw           s6, 53(s3)
                  lh           s1, -58(a6)
                  sh           s11, -9(t5)
                  lbu          s0, -38(s3)
                  lbu          a2, 102(t5)
                  lb           s7, -33(a6)
                  lbu          s10, -234(t5)
                  sb           zero, -134(a6)
                  lhu          s10, -127(t5) #end load_store_instr_stream_2
                  lb           s7, 30(s3)
                  lb           s11, 27(s3)
                  lbu          ra, -20(a6)
                  lb           a3, 56(s3)
                  sh           sp, 21(s3)
                  sb           t4, -107(a6) #end load_store_instr_stream_1
                  lbu          a3, -57(s3) #end load_store_instr_stream_0
                  sra          s8, a5, s8
                  andi         t0, t4, 963
                  lui          zero, 974750
                  blt          a4, a3, 9f
                  srli         a3, s10, 5
                  srli         s6, a4, 21
                  beq          gp, a7, 20f
                  sltu         s1, ra, sp
                  ori          s10, s3, -878
9:                sra          s5, s2, t5
                  auipc        s11, 446254
                  and          a3, a2, zero
                  sub          gp, a3, a0
                  bgeu         sp, s7, 16f
                  and          a4, ra, s9
                  andi         a3, s6, -209
16:               bltu         s9, t1, 17f
17:               xori         a7, t1, -1143
                  auipc        gp, 346338
                  beq          zero, t0, 31f
20:               slli         s7, a1, 15
                  slt          s6, a4, s7
                  bgeu         s6, a0, 39f
                  srl          s0, s4, t4
                  nop
                  slt          gp, t4, s4
                  slt          t0, s10, tp
                  add          t2, s11, s7
                  srl          zero, t1, a2
                  bgeu         a0, a2, 49f
                  sub          sp, s9, s3
31:               bgeu         a3, a6, 43f
                  addi         tp, t6, 44
                  and          t6, t1, a3
                  beq          s1, a0, 46f
                  sltiu        s8, a6, -41
                  addi         s0, a4, 1035
                  sltu         s7, s11, tp
                  and          a7, s11, sp
39:               sltu         s11, s10, a7
                  bgeu         sp, t3, 49f
                  xor          a1, s4, s4
                  sltiu        s3, t0, -1528
43:               xori         s5, a6, 1014
                  addi         s1, sp, -96
                  nop
46:               slti         a3, s7, -1070
                  bgeu         s2, a0, 60f
                  and          sp, s11, s10
49:               bltu         s2, s8, 60f
                  ori          a5, a1, 1238
                  beq          s4, a2, 58f
                  sll          s8, s8, s10
                  sll          s1, t4, t6
                  slt          a2, t3, ra
                  bltu         s2, s1, 74f
                  xor          s6, sp, t0
                  sltu         t0, t2, sp
58:               ori          t3, s5, -662
                  sll          sp, t0, a0
60:               ori          s6, t4, 1458
                  bne          tp, ra, 64f
                  beq          a1, tp, 68f
                  ori          sp, s0, -1123
64:               srl          s3, s8, tp
                  slli         t0, a0, 20
                  lui          s5, 52001
                  sltiu        s0, s10, 427
68:               or           gp, t5, a2
                  ori          gp, t0, 333
                  bgeu         t0, sp, 86f
                  auipc        s6, 8153
                  add          s3, s10, t0
                  auipc        s11, 633716
74:               andi         t3, s4, -791
                  slt          gp, t3, a7
                  xor          sp, s3, s5
                  bne          a0, zero, 82f
                  bge          tp, a5, 89f
                  ori          a0, s7, 8
                  or           s1, sp, tp
                  slt          s10, s3, a2
82:               slti         s10, t3, -33
                  xori         a4, ra, 1985
                  bne          s1, tp, 94f
                  bne          s10, a3, 93f
86:               addi         s6, s6, 1130
                  srl          s6, gp, a4
                  bgeu         a1, sp, 93f
89:               bgeu         a1, a3, 91f
                  blt          t4, t5, 108f
91:               slti         s7, t3, -376
                  bge          s6, s8, 102f
93:               sltiu        a2, s4, 1529
94:               bge          a7, s10, 104f
                  bltu         s6, ra, 111f
                  bge          t6, sp, 104f
                  bltu         t3, t2, 99f
                  andi         tp, a3, -250
99:               or           s6, gp, a0
                  sltu         s5, s6, t1
                  blt          t0, t2, 120f
102:              srli         s3, a4, 8
                  bge          s1, s7, 114f
104:              auipc        s8, 1044086
                  bge          a1, s5, 111f
                  bltu         s3, s1, 124f
                  add          s3, s6, s9
108:              sub          a4, a4, a0
                  sltiu        a4, ra, 582
                  andi         a0, a3, -1817
111:              sll          s0, t0, s1
                  srl          a6, a1, zero
                  sltu         tp, t6, a6
114:              lui          s11, 614567
                  srli         a6, s2, 23
                  nop
                  la           t5, sub_1
                  lui          s8, 902641
                  xor          t6, s5, zero
                  slli         s10, s6, 8
                  addi         t5, t5, 879
                  addi         s2, s3, 1533
                  srl          s6, s9, zero
                  sub          a6, s2, a3
                  bltu         t1, t5, main_j2 #branch to jump instr
                  xori         a3, zero, -1916
main_j2:          jalr         s3, t5, -879 #jump main -> sub_1
                  bge          t0, tp, 127f
                  add          gp, s5, s1
                  slli         sp, s3, 8
                  auipc        s2, 681740
                  add          t2, sp, a4
120:              slti         s11, gp, -1457
                  lui          a4, 267141
                  sltiu        t2, a6, -121
                  sll          ra, s11, s6
124:              slti         a4, s5, -514
                  bgeu         gp, s1, 135f
                  ori          gp, s2, 539
127:              bltu         sp, a7, 140f
                  srl          s2, t6, t0
                  sll          a1, a6, s11
                  srli         a2, s11, 22
                  srl          a1, a0, s10
                  beq          sp, a0, 137f
                  slt          tp, s4, gp
                  sra          s11, sp, t5
135:              slt          s5, s11, t1
                  sub          a2, s8, ra
137:              addi         gp, t4, -2035
                  slti         a7, s8, 1968
                  sll          s1, ra, t4
140:              xori         a6, s9, -1770
                  or           a4, a7, s10
                  srl          s5, s5, t6
                  add          t3, t6, s8
                  bne          s10, a0, 146f
                  sra          s0, t4, s6
146:              beq          t1, t5, 154f
                  slti         s1, s4, -1143
                  sub          t3, tp, s1
                  bltu         s11, t6, 165f
                  andi         a5, s8, 27
                  sra          a4, tp, t1
                  bltu         a2, a3, 155f
                  srli         t6, gp, 17
154:              srl          t1, a7, tp
155:              addi         t6, s6, 5
                  xori         gp, a7, 314
                  xori         a4, tp, 144
                  bgeu         zero, t3, 166f
                  sltu         s3, s6, s9
                  or           s7, s2, t4
                  and          s3, t2, s5
                  ori          ra, a3, 1683
                  nop
                  andi         a5, s3, -454
165:              lui          s5, 29309
166:              and          t1, a1, s2
                  nop
                  auipc        s10, 942365
                  slli         t1, t5, 9
                  bge          sp, s3, 189f
                  xor          a6, zero, s0
                  srli         s0, t5, 28
                  slti         t1, t6, -1486
                  xori         a3, t2, 1
                  and          sp, t6, t3
                  lui          s0, 711930
                  bltu         tp, a3, 188f
                  addi         gp, s5, -1627
                  and          s3, s0, sp
                  auipc        a3, 438879
                  sub          s3, a1, a6
                  bgeu         a7, s4, 202f
                  slli         s5, s5, 12
                  sra          s3, zero, s0
                  blt          t1, tp, 197f
                  slt          s2, s10, sp
                  srli         a2, t0, 19
188:              srli         gp, t6, 22
189:              xori         t0, s5, -1862
                  beq          a0, s7, 199f
                  sltu         t6, a3, gp
                  bne          a4, a0, 204f
                  lui          gp, 138226
                  blt          t4, a5, 208f
                  sra          s1, a1, a5
                  slti         a0, s3, -1754
197:              srai         s1, a5, 23
                  bne          t5, a7, 199f
199:              sltu         a3, s2, t6
                  bne          s4, s8, 202f
                  ori          sp, t6, -806
202:              bltu         zero, s4, 212f
                  bge          a7, t0, 213f
204:              sltiu        t1, zero, 1798
                  xori         zero, ra, 1085
                  bne          ra, a6, 222f
                  bge          s2, t5, 226f
208:              slt          s0, t5, s6
                  srl          a4, s7, s7
                  srai         a5, s1, 12
                  slli         s6, a5, 24
212:              srl          a1, gp, a1
213:              sra          a2, a0, zero
                  sll          s7, a0, a2
                  srl          s3, s2, a2
                  bgeu         t4, s9, 221f
                  slt          s3, a4, sp
                  slt          a7, s4, t2
                  xor          a1, s5, a4
                  beq          a3, a5, 237f
221:              and          t5, t5, t4
222:              lui          ra, 500077
                  sub          s0, a2, a1
                  srl          a0, t6, a2
                  sub          t0, ra, s3
226:              sra          sp, s11, ra
                  sll          s7, t3, s9
                  slt          s8, t2, t1
                  addi         gp, gp, 1676
                  add          a6, s6, a6
                  slli         a1, a2, 3
                  bne          s10, s10, 238f
                  bne          s2, s5, 236f
                  addi         sp, t3, 329
                  and          t6, s1, t0
236:              bgeu         s1, gp, 243f
237:              sltiu        a7, s9, 1673
238:              sub          a4, s0, t2
                  add          s1, zero, t0
                  nop
                  auipc        a0, 751899
                  sltiu        zero, a6, -2017
243:              xori         a5, zero, 1044
                  nop
                  and          s11, s8, zero
                  ori          a4, sp, -918
                  ori          a2, s9, 1944
                  la           s5, sub_2
                  addi         s5, s5, 1000
                  srli         a2, t3, 19
                  ori          a6, t4, 1812
                  sub          ra, a4, t4
                  nop
                  slli         sp, t4, 22
main_j1:          jalr         s3, s5, -1000 #jump main -> sub_2
                  sltiu        s2, s5, 1360
                  lui          gp, 629498
                  slt          s8, a7, a6
                  blt          t2, a6, 256f
                  andi         s3, gp, -1593
                  srai         a4, a3, 1
                  auipc        zero, 411291
                  auipc        s11, 419978
                  sub          s7, a1, t1
                  addi         s1, s8, 1937
256:              bltu         a1, s11, 266f
                  lui          s11, 1012040
                  sll          s7, s5, t0
                  add          s3, s4, a5
                  srli         t2, tp, 24
                  sltu         zero, a1, s11
                  xor          gp, t6, a2
                  nop
                  lui          s7, 809056
                  bgeu         s6, a0, 275f
266:              srl          t6, a6, s6
                  srli         s5, t1, 30
                  auipc        t5, 631329
                  sra          a6, s7, sp
                  xor          zero, s8, t0
                  sra          a3, zero, t2
                  bge          a5, s11, 284f
                  nop
                  lui          a0, 407804
275:              or           a2, s2, a6
                  addi         t3, t5, 1045
                  and          t2, a0, t3
                  slli         s5, a6, 31
                  lui          s7, 588654
                  xor          t5, t3, a2
                  sra          t1, a6, a7
                  sltiu        tp, s0, -1562
                  bge          a2, s2, 299f
284:              lui          t1, 127591
                  srli         s1, s9, 8
                  bltu         a0, s9, 300f
                  sub          s7, t1, a0
                  or           t1, a1, t3
                  bne          s8, t2, 291f
                  bne          s5, s3, 309f
291:              addi         t0, a6, 792
                  sll          s10, a2, a1
                  bgeu         gp, s4, 305f
                  slt          s8, a5, zero
                  ori          zero, t1, -606
                  auipc        s11, 28191
                  xori         gp, a7, -1175
                  xor          s10, a3, sp
299:              bgeu         a3, a5, 305f
300:              srli         t1, gp, 15
                  bltu         tp, zero, 310f
                  slt          t2, a3, s0
                  bne          tp, ra, 309f
                  nop
305:              srli         t5, ra, 16
                  sub          s2, t0, s0
                  sra          sp, s11, tp
                  srl          a4, s9, gp
309:              blt          s6, gp, 311f
310:              bltu         a1, t6, 326f
311:              slt          s8, sp, s10
                  ori          s5, a0, 612
                  srai         sp, t3, 2
                  bge          s3, a4, 326f
                  bge          t6, gp, 332f
                  ori          a4, a6, -117
                  blt          gp, tp, 320f
                  slti         sp, tp, -1212
                  xor          a3, t4, s7
320:              sltiu        s0, s8, 176
                  slti         s5, s9, -428
                  beq          t4, s5, 342f
                  blt          a3, s7, 334f
                  and          t2, s6, s8
                  xori         s11, ra, 1674
326:              nop
                  andi         s7, s3, 1743
                  slt          a5, s7, ra
                  lui          a7, 472767
                  bgeu         t3, s6, 343f
                  xor          zero, s7, a3
332:              slli         zero, s0, 27
                  sltu         sp, s6, a6
334:              beq          t2, a1, 345f
                  andi         s3, t0, -608
                  andi         s8, a4, -1569
                  bge          t0, s9, 342f
                  slli         s7, s11, 29
                  bltu         a1, sp, 344f
                  bne          s1, a2, 358f
                  addi         s0, s1, 1902
342:              beq          s0, a6, 345f
343:              slti         a4, s10, 272
344:              andi         t2, ra, 1046
345:              beq          s2, a7, 346f
346:              auipc        s10, 979217
                  blt          t6, s7, 355f
                  srl          s7, s10, s3
                  slt          tp, s9, s0
                  slti         t1, ra, 1854
                  ori          tp, a0, 1785
                  xori         a1, t5, -416
                  bne          s7, s5, 363f
                  bne          s8, t6, 373f
355:              bne          t2, s9, 363f
                  bne          a2, t0, 362f
                  bge          gp, s3, 369f
358:              ori          t0, s4, 1281
                  srli         s10, s4, 31
                  sub          a1, t3, zero
                  auipc        s0, 454627
362:              sltiu        t6, a3, -91
363:              beq          a2, t2, 381f
                  sll          s5, a1, a2
                  sll          s1, s3, t4
                  andi         s7, t4, 1674
                  sltiu        sp, a2, 278
                  bge          zero, zero, 375f
369:              srli         s11, a6, 27
                  xori         ra, s3, 1566
                  lui          a1, 15971
                  srli         s5, t3, 30
373:              bgeu         t4, a4, 381f
                  xori         s5, t6, -1421
375:              slli         s11, t5, 25
                  bltu         s5, s5, 382f
                  xor          t6, a5, sp
                  andi         a7, ra, 556
                  sub          gp, t6, a5
                  addi         t2, a6, 945
381:              bge          s2, a0, 383f
382:              slt          s0, s1, t1
383:              blt          s0, s6, 385f
                  or           tp, ra, s11
385:              srai         a3, a2, 25
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            nop
                  beq          a4, s5, sub_2_stack_p
sub_2_stack_p:    addi         t4, t4, -12
                  srai         gp, s11, 7
                  ori          s8, a0, 1801
                  sw           s3, 4(t4)
                  srli         s1, ra, 7
                  andi         zero, s0, -1753
                  la           t1, region_0+1545 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a1, 5(t1)
                  sb           s8, 5(t1)
                  lbu          s2, 5(t1)
                  lbu          ra, 5(t1)
                  lb           a1, 12(t1)
                  sb           s11, 8(t1)
                  lb           s0, 8(t1)
                  lb           s3, 8(t1)
                  lbu          s7, 8(t1)
                  sltu         s0, ra, s11
                  auipc        s6, 471437
                  sb           a2, 8(t1)
                  sll          ra, ra, t0
                  lb           a5, 8(t1)
                  lhu          a5, 1(t1)
                  sb           sp, 1(t1)
                  lbu          a0, 1(t1)
                  lh           a6, 1(t1)
                  lh           s3, 1(t1)
                  lh           s1, 1(t1)
                  add          s0, t6, t2
                  sb           s3, 1(t1)
                  lbu          s1, 1(t1)
                  lh           s6, 1(t1) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+809 #start riscv_load_store_rand_instr_stream_0
                  lb           a6, 44(sp)
                  auipc        a3, 115193
                  ori          zero, a2, 514
                  and          s1, s3, t5
                  sub          s2, s4, s10
                  sh           a2, 53(sp)
                  and          s7, t6, s5
                  lb           a1, -15(sp)
                  sh           a1, 59(sp)
                  slli         s5, a4, 31
                  lb           s0, -42(sp)
                  lb           t3, -24(sp)
                  sb           a3, 64(sp)
                  slti         s3, s2, -1149
                  slt          a4, t3, s9
                  sub          tp, t6, a7
                  sub          s7, ra, s6
                  sll          s8, s9, s7
                  sb           s7, -50(sp)
                  srai         s10, t0, 11
                  sra          a4, a4, zero
                  sb           a0, 52(sp)
                  lui          s8, 674824
                  sb           zero, 41(sp)
                  sltu         s6, t3, t5
                  addi         s5, a7, -1621
                  lb           a3, -36(sp)
                  lw           s2, -53(sp)
                  srl          s3, ra, s3
                  lb           t5, 13(sp)
                  addi         s5, a3, 309
                  sb           sp, -48(sp)
                  sltiu        s1, tp, 372
                  sb           a1, -14(sp) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_1+13 #start load_store_instr_stream_0
                  la           s2, region_1+1218 #start load_store_instr_stream_1
                  la           a5, region_1+533 #start load_store_instr_stream_2
                  sb           s7, -61(a5)
                  lbu          s1, 56(s2)
                  lw           s1, -37(a5)
                  sh           s8, 89(ra)
                  lb           s8, -10(a5)
                  lhu          t2, -23(a5)
                  lb           zero, -49(s2)
                  lbu          a3, 96(ra)
                  lhu          gp, 58(s2)
                  lb           s6, -3(s2)
                  lbu          a0, 250(ra)
                  lh           sp, -50(s2)
                  lbu          t6, 43(s2)
                  sb           sp, -38(a5) #end load_store_instr_stream_2
                  lbu          s8, 21(s2) #end load_store_instr_stream_1
                  lbu          t0, -10(ra)
                  lb           s11, 108(ra) #end load_store_instr_stream_0
                  blt          t0, s5, 18f
                  bgeu         t5, t0, 19f
                  ori          t6, t2, -1910
                  slt          t0, s11, t5
                  sll          ra, t5, t4
                  srai         s11, s1, 22
                  add          a0, t2, s5
                  bgeu         a5, s11, 27f
                  srli         a0, s5, 19
                  bgeu         s9, sp, 17f
                  addi         s8, s3, 553
                  auipc        gp, 263135
                  slli         t0, a6, 25
                  bne          a5, s0, 22f
                  sltu         s10, t2, s5
                  sll          s3, a0, ra
                  sltu         ra, a2, s5
17:               bge          a0, a2, 20f
18:               nop
19:               bge          a2, s8, 24f
20:               sra          a1, sp, sp
                  bgeu         s1, ra, 40f
22:               slt          a0, s3, s1
                  blt          a6, tp, 32f
24:               sub          s8, t2, a2
                  xor          s2, a3, s10
                  slt          s10, s3, a3
27:               ori          a0, tp, -1354
                  bgeu         s1, a3, 47f
                  and          a1, a3, t3
                  sub          t1, s3, a5
                  ori          s2, s4, -1862
32:               bgeu         t5, t5, 49f
                  ori          t2, s2, 2029
                  sltiu        t0, s7, 854
                  nop
                  xori         ra, s0, -1113
                  xori         t3, t5, -646
                  bne          s8, a4, 41f
                  auipc        a4, 904980
40:               bge          a1, s10, 48f
41:               add          zero, a1, a3
                  srli         a5, s7, 21
                  sltu         t3, s5, a4
                  auipc        gp, 659897
                  and          a2, s4, t5
                  or           gp, a5, t5
47:               add          s10, a0, s1
48:               addi         a1, a7, 65
49:               xor          t2, a6, t4
                  xori         a0, a7, -1894
                  bgeu         t0, t4, 64f
                  slli         s0, t1, 20
                  xor          a3, s11, a1
                  bltu         s6, s1, 57f
                  bltu         t1, t3, 58f
                  or           s8, zero, a0
57:               slt          t0, a4, s5
58:               slli         s11, s1, 3
                  slt          t0, t4, s2
                  sltu         a2, s2, a2
                  nop
                  and          s6, t2, a4
                  or           a4, s3, s8
64:               auipc        s5, 616260
                  bge          t0, t0, 79f
                  beq          t3, s11, 69f
                  bne          s0, a3, 80f
                  bge          s5, a0, 85f
69:               nop
                  srli         s2, t0, 23
                  beq          t6, a5, 77f
                  ori          s0, s10, 2011
                  beq          a5, a4, 90f
                  bgeu         s2, a2, 94f
                  slt          t6, s3, s11
                  srl          zero, zero, ra
77:               bge          s10, t1, 83f
                  lui          s2, 499387
79:               sltiu        sp, t5, -1671
80:               xori         s0, s8, -182
                  addi         t1, a2, 328
                  or           zero, t4, a3
83:               bltu         a3, s1, 98f
                  sub          a5, a6, a0
85:               sltiu        s8, s7, -1260
                  bne          s5, s3, 99f
                  srai         t6, s3, 18
                  srli         a4, a4, 2
                  nop
90:               andi         s7, s1, -2016
                  bgeu         tp, s0, 111f
                  beq          zero, s11, 106f
                  sltu         a2, s10, a2
94:               slt          s10, s9, a3
                  bge          t5, t1, 104f
                  bge          a2, s9, 105f
                  sltiu        s3, s6, -116
98:               lui          t3, 911037
99:               sltiu        a7, s5, 1456
                  xor          s7, zero, tp
                  sra          s7, s0, s4
                  add          s8, t5, s5
                  bne          a6, t4, 121f
104:              nop
105:              andi         s10, s8, 596
106:              bltu         s8, a6, 126f
                  sub          a5, s0, t5
                  slli         s11, s10, 28
                  srai         t2, a5, 16
                  xor          a0, a4, a6
111:              auipc        s2, 416459
                  blt          a0, s11, 131f
                  sltu         a4, t5, s6
                  add          s8, s8, s11
                  sltu         s8, tp, s6
                  blt          s1, a2, 130f
                  slti         s5, s10, -828
                  slli         s2, t4, 20
                  blt          s0, s2, 122f
                  or           ra, s0, s1
121:              bltu         ra, s6, 134f
122:              add          zero, a4, s8
                  blt          s9, s6, 126f
                  srl          s1, a7, t3
                  xor          t6, t1, a4
126:              slt          s8, t0, s7
                  xor          s1, s8, t1
                  bltu         a0, a2, 143f
                  sll          s11, t4, sp
130:              addi         zero, a4, -1528
131:              sltu         zero, gp, t1
                  sra          gp, t0, tp
                  add          a3, a0, s1
134:              or           s0, s0, t0
                  sra          t2, s5, a4
                  and          t2, s5, t2
                  xor          s7, a3, s5
                  add          a3, a2, tp
                  bltu         s8, s3, 144f
                  lui          s2, 765628
                  and          zero, t5, ra
                  srl          t3, sp, a0
143:              add          t1, s6, zero
144:              bltu         s4, s4, 150f
                  bgeu         sp, a5, 154f
                  and          a1, t5, s11
                  bltu         a0, s7, 150f
                  sltiu        a5, sp, -197
                  ori          s7, s11, -1610
150:              sub          t1, t1, s0
                  bltu         a7, t0, 156f
                  blt          t6, a5, 156f
                  or           s7, a5, s1
154:              sltiu        ra, a0, -655
                  sltiu        s2, s3, 931
156:              srl          gp, s8, tp
                  or           s1, s10, s1
                  lw           s3, 4(t4)
                  or           a0, s6, gp
                  slti         s6, tp, 1437
                  sub          zero, a7, t2
                  addi         t4, t4, 12
                  or           a5, t0, t0
                  and          a1, t4, t3
                  slti         t3, a2, 893
254:              addi x26, x19, 1
254:              jalr x26, x26, 0
sub_1:            addi         t4, t4, -64
                  sra          gp, t3, s3
                  sra          zero, a3, zero
                  nop
                  sw           s3, 4(t4)
                  xor          t2, s5, s7
                  or           t3, t6, s6
                  la           s0, region_0+1605 #start riscv_load_store_hazard_instr_stream_0
                  sh           a4, 41(s0)
                  lhu          s6, 41(s0)
                  and          a6, s0, a7
                  sh           a5, 41(s0)
                  sh           a5, 41(s0)
                  lb           s8, 41(s0)
                  lhu          sp, 41(s0)
                  andi         t3, sp, 1269
                  lh           s6, 41(s0)
                  sh           a4, 41(s0)
                  sb           s0, 41(s0)
                  lb           gp, 2(s0)
                  lb           t5, 2(s0)
                  sb           s3, 2(s0)
                  lbu          s11, 2(s0)
                  xor          s6, a6, s9
                  lbu          s2, 2(s0)
                  lb           a6, 2(s0)
                  lbu          t1, 2(s0)
                  sb           zero, 2(s0)
                  sb           s5, 2(s0)
                  lb           a1, 2(s0)
                  lbu          s1, 39(s0) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_1+367 #start riscv_load_store_hazard_instr_stream_1
                  sb           zero, 8(s3)
                  lbu          s7, 8(s3)
                  lbu          t3, -10(s3)
                  lbu          a2, -10(s3)
                  andi         s10, sp, 1993
                  sb           a4, 1253(s3)
                  sb           a6, 1253(s3)
                  sb           t1, -168(s3)
                  auipc        zero, 617207
                  lbu          t1, 1208(s3)
                  sb           t5, -180(s3)
                  sh           s8, 847(s3)
                  addi         s6, s9, 1663
                  lbu          t5, 1618(s3)
                  lb           s0, 1618(s3)
                  sra          gp, a2, a7
                  lb           sp, 1618(s3)
                  addi         s0, gp, -2005
                  lbu          s5, 1618(s3)
                  lbu          t0, 1618(s3)
                  sh           t6, 1385(s3) #end riscv_load_store_hazard_instr_stream_1
                  la           t1, region_0+1734 #start riscv_load_store_rand_instr_stream_3
                  lb           t3, -103(t1)
                  sh           tp, 116(t1)
                  sltu         a3, s4, t3
                  lbu          s0, 135(t1)
                  sb           tp, 66(t1)
                  sll          a0, s11, s1
                  sltu         s8, ra, a6
                  slt          s1, s4, s4
                  sltu         t2, s9, t3
                  and          s0, t1, s7
                  sb           s3, 206(t1)
                  sh           s1, 84(t1)
                  lb           a7, -65(t1)
                  and          s10, s2, s4
                  auipc        a1, 169064
                  sh           tp, 118(t1)
                  andi         s10, a5, -1018
                  sb           a2, 64(t1)
                  sw           t3, 106(t1)
                  addi         a2, t3, -786
                  and          s5, s2, t4
                  srl          a3, a1, t4
                  lbu          s6, 182(t1)
                  sltiu        s11, gp, 1285
                  lbu          s3, -38(t1)
                  or           ra, t1, s7
                  andi         a6, a3, 1155
                  sb           a7, 146(t1)
                  lb           s7, -183(t1)
                  and          a5, s7, t3
                  sb           s10, -72(t1)
                  sb           s9, 55(t1)
                  lb           t0, -215(t1)
                  lbu          gp, 197(t1)
                  lhu          t0, -230(t1)
                  sb           s4, 253(t1)
                  lb           tp, 167(t1)
                  lbu          s5, -189(t1)
                  sb           s3, -27(t1)
                  lb           gp, -5(t1)
                  add          s0, t6, s6
                  and          a6, s5, s4
                  lb           ra, 164(t1)
                  srli         a4, s6, 27
                  lbu          a5, 125(t1)
                  sra          t0, t0, s5
                  sw           a5, 18(t1)
                  lb           a7, -116(t1)
                  andi         a3, a7, 1841
                  slli         tp, s0, 12
                  andi         tp, s1, -1614
                  add          s2, t6, tp
                  srli         a2, s8, 21
                  auipc        gp, 430645
                  and          t6, ra, s3
                  sb           t4, -177(t1)
                  sw           s11, -106(t1) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1607 #start riscv_load_store_hazard_instr_stream_2
                  xori         s6, t2, -1825
                  lb           s7, 4(sp)
                  lbu          a6, 4(sp)
                  lbu          s8, 13(sp)
                  sra          a3, a4, t0
                  add          s1, t1, a7
                  sw           a2, 13(sp)
                  sw           s6, 13(sp)
                  sh           a7, 15(sp)
                  sb           s2, 15(sp)
                  and          gp, a2, a3
                  lhu          s2, -1(sp)
                  sb           a1, 0(sp)
                  sb           sp, 0(sp)
                  sb           a1, 0(sp)
                  lui          a3, 106368
                  sb           tp, -12(sp)
                  lh           a1, -11(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           s3, region_0+1882 #start riscv_load_store_rand_instr_stream_2
                  addi         sp, zero, 978
                  or           s2, a5, t0
                  add          a0, s6, s2
                  lbu          s1, -507(s3)
                  lb           a6, -458(s3)
                  lb           ra, -716(s3)
                  sra          s5, a3, s1
                  lhu          s10, -660(s3)
                  ori          sp, a3, 188
                  lbu          t1, -1785(s3)
                  lb           s5, -326(s3)
                  lbu          s11, -254(s3)
                  sw           t4, -966(s3)
                  lhu          ra, -636(s3)
                  slti         s5, t5, 2
                  lui          s6, 189847
                  lbu          a0, 111(s3)
                  sb           s10, -1319(s3)
                  lbu          a7, -36(s3)
                  addi         a6, s9, -1385
                  lui          a5, 385605
                  xori         s6, s9, -866
                  sub          a4, s8, s3
                  sb           s9, -699(s3)
                  lb           t0, -485(s3)
                  slli         a7, a2, 21
                  auipc        s10, 819740
                  sh           t4, -906(s3)
                  sll          a1, t5, t4
                  addi         s11, a5, -1943
                  slt          s8, t4, a5
                  sh           s7, -400(s3)
                  lui          s6, 785792
                  srli         t6, s2, 22
                  sw           t6, -794(s3)
                  or           t3, s9, t0
                  sb           s0, -1821(s3)
                  lbu          a2, -1075(s3)
                  lhu          ra, -1816(s3)
                  auipc        s7, 453587
                  sb           s7, -93(s3)
                  lh           t1, -1484(s3)
                  addi         s2, s10, -305
                  sra          gp, t4, t2
                  srl          a0, s4, s5
                  lbu          s8, -728(s3)
                  sra          a3, s9, t0
                  srl          a2, t3, s6
                  lb           s1, -539(s3)
                  lbu          a3, -1267(s3) #end riscv_load_store_rand_instr_stream_2
                  la           tp, region_0+1643 #start riscv_load_store_rand_instr_stream_1
                  slli         s6, s2, 27
                  lhu          s1, -357(tp)
                  lbu          a3, -38(tp)
                  lh           a5, 275(tp)
                  srl          gp, a1, zero
                  lbu          a1, -1196(tp)
                  auipc        a6, 65324
                  slt          t0, s9, a5
                  sra          s7, a1, a0
                  sb           t3, 208(tp)
                  srai         a5, s5, 3
                  andi         a1, tp, 662
                  slt          s11, sp, s2
                  slti         t0, zero, 2039
                  lbu          a5, 128(tp)
                  ori          a7, a7, 1070
                  sb           zero, 172(tp)
                  lbu          a1, -70(tp)
                  sll          s8, s6, s5
                  lb           t6, -1319(tp)
                  lb           a5, -1542(tp)
                  lhu          t3, -375(tp)
                  auipc        zero, 938934
                  sh           zero, -1365(tp)
                  and          s8, a5, a1
                  sub          s3, t2, t3
                  xori         a0, t5, 222
                  lb           s0, 54(tp)
                  lh           a0, -1521(tp)
                  xori         t3, s7, -566
                  lbu          a6, -119(tp)
                  sltu         t6, s4, s2
                  xori         s11, a6, 489
                  and          t0, s5, s1
                  lh           a3, 69(tp)
                  sb           a4, -406(tp)
                  xori         t1, zero, 1879
                  sll          s6, a2, s5
                  xori         ra, a7, -646
                  sb           a3, -1585(tp)
                  sh           t3, -213(tp)
                  lui          a0, 308671
                  sltu         s3, s3, s5
                  xor          s8, s4, s2
                  lbu          s2, 187(tp)
                  sb           a3, -559(tp) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_1+1723 #start load_store_instr_stream_1
                  la           a7, region_1+369 #start load_store_instr_stream_4
                  lb           zero, -2(s1)
                  lb           t5, 48(a7)
                  la           a5, region_1+5 #start load_store_instr_stream_0
                  la           s5, region_1+889 #start load_store_instr_stream_3
                  la           t3, region_1+1666 #start load_store_instr_stream_2
                  lb           s6, -10(s1)
                  lh           t2, -29(a7)
                  lb           gp, 64(t3)
                  lbu          s3, -91(s5)
                  lbu          s11, 684(s5)
                  lb           s0, 18(a7)
                  sh           zero, -13(s1)
                  lbu          t5, -5(a5)
                  lh           t5, -41(a7)
                  lb           gp, 524(s5)
                  lbu          s11, 45(t3)
                  sb           a4, -12(s1)
                  lbu          a6, 61(t3)
                  sb           a4, 701(s5)
                  sb           s9, 3(a5)
                  lbu          s0, -99(s5)
                  lb           a2, 38(a7)
                  lhu          s7, 24(t3)
                  lw           sp, -7(s1)
                  lh           t5, -53(a7)
                  sb           s4, -18(a7)
                  lbu          sp, -578(s5)
                  lb           a3, 58(a7)
                  sb           a5, 45(t3)
                  sb           s0, 516(s5)
                  sb           s0, -770(s5)
                  lb           a6, 6(a5)
                  sw           s8, -1(a5)
                  sh           sp, 715(s5)
                  sb           t6, -35(t3) #end load_store_instr_stream_2
                  sb           s5, 854(s5) #end load_store_instr_stream_3
                  sb           ra, 11(s1) #end load_store_instr_stream_1
                  lhu          a0, 25(a7) #end load_store_instr_stream_4
                  lb           t2, 5(a5) #end load_store_instr_stream_0
                  la           s10, region_0+1946 #start riscv_load_store_hazard_instr_stream_3
                  lhu          tp, 6(s10)
                  sb           s6, 4(s10)
                  addi         s5, s6, -1285
                  lui          t6, 467962
                  lbu          sp, -12(s10)
                  sh           t6, -12(s10)
                  lh           t2, 10(s10)
                  lb           a2, 10(s10)
                  lhu          t5, 0(s10)
                  lh           tp, 4(s10)
                  lhu          t5, 4(s10)
                  addi         ra, zero, 607
                  lh           s2, 4(s10)
                  sh           t3, 14(s10)
                  lbu          s8, 8(s10)
                  lbu          tp, 8(s10)
                  lb           s2, 8(s10)
                  lb           t6, -9(s10)
                  sb           a3, -9(s10)
                  lh           t0, -10(s10)
                  lui          gp, 479310
                  lbu          s6, 2(s10)
                  lb           sp, -1(s10) #end riscv_load_store_hazard_instr_stream_3
                  la           s1, region_1+1262 #start load_store_instr_stream_2
                  lb           ra, -1113(s1)
                  la           s3, region_1+58 #start load_store_instr_stream_4
                  sb           t3, 664(s1)
                  la           t6, region_1+1020 #start load_store_instr_stream_3
                  lb           a5, -1109(s1)
                  lb           t0, 99(s3)
                  la           s11, region_1+1617 #start load_store_instr_stream_1
                  sb           ra, -49(t6)
                  lw           zero, 202(s3)
                  sb           tp, 399(s1)
                  lb           tp, 59(t6)
                  sb           a3, 60(t6)
                  sb           s6, -1167(s1)
                  la           a7, region_1+592 #start load_store_instr_stream_0
                  sb           s2, -12(s11)
                  lhu          t0, 254(a7)
                  sb           s8, 87(s3)
                  lhu          tp, -134(a7)
                  sb           s2, -26(t6)
                  lh           gp, -9(s11)
                  sb           t3, -149(a7)
                  lb           a5, 202(s1)
                  sb           s6, -21(t6)
                  sb           a6, -744(s1)
                  lbu          gp, -8(s11)
                  lhu          t1, 228(s3)
                  sb           t6, 25(s3)
                  lh           t2, 22(t6)
                  sb           sp, 487(s1)
                  lhu          t3, -40(t6) #end load_store_instr_stream_3
                  sb           zero, 53(s3)
                  sb           a6, 106(s1)
                  lb           a2, -16(s11)
                  sb           s2, 245(s3) #end load_store_instr_stream_4
                  lhu          t2, -902(s1) #end load_store_instr_stream_2
                  lb           a3, -179(a7)
                  lbu          s10, 12(s11)
                  lbu          tp, 7(s11) #end load_store_instr_stream_1
                  lb           ra, 204(a7) #end load_store_instr_stream_0
                  la           gp, region_1+1402 #start riscv_load_store_rand_instr_stream_0
                  nop
                  or           a5, a0, s7
                  lh           s1, -10(gp)
                  sll          ra, a5, s8
                  slti         a6, t1, 13
                  sll          a5, s8, tp
                  slti         sp, s7, 137
                  lhu          s5, -12(gp)
                  sll          s10, t5, t2
                  and          t5, s8, s9
                  sh           t4, -14(gp)
                  lbu          s7, 3(gp)
                  srai         s1, tp, 13
                  lb           t1, 0(gp)
                  lui          s6, 886845
                  slt          a0, s10, tp
                  lhu          a0, -12(gp)
                  lui          sp, 306580
                  lb           t6, -4(gp)
                  nop
                  sb           s3, 9(gp)
                  ori          a6, t4, 201
                  slli         t5, s9, 27
                  ori          s5, s3, 654
                  lh           a1, -14(gp)
                  or           s5, a3, t1
                  xor          t1, s2, s7
                  nop
                  andi         a1, s2, -1537
                  sb           s11, -12(gp)
                  lbu          s10, 11(gp)
                  and          ra, a1, zero
                  sb           t2, -12(gp)
                  lbu          tp, -5(gp) #end riscv_load_store_rand_instr_stream_0
                  xori         s7, t5, 1822
                  lui          t3, 310934
                  beq          a5, s11, 11f
                  sltu         a6, a0, s2
                  slli         s0, a6, 7
                  srl          s3, zero, s3
                  bltu         s9, t0, 7f
7:                andi         s1, a1, -1670
                  lui          a0, 840216
                  sra          s6, s10, s0
                  or           tp, zero, a2
11:               bgeu         s5, t1, 24f
                  lui          s8, 552210
                  blt          s5, a1, 26f
                  lui          s8, 91980
                  slli         a7, tp, 12
                  ori          a2, t3, 1271
                  lui          s3, 375866
                  sltiu        a0, a5, 1023
                  slt          a0, t5, a6
                  srli         a3, s0, 16
                  slt          t1, a5, gp
                  and          t1, a2, s2
                  srai         s5, t2, 22
24:               bgeu         s9, s4, 32f
                  ori          s8, a2, 774
26:               srai         a5, sp, 12
                  srl          s5, gp, s5
                  blt          s1, a6, 47f
                  addi         t3, s0, -1605
                  slli         a5, a1, 17
                  nop
32:               auipc        a0, 979757
                  auipc        s2, 60002
                  srl          a4, t4, gp
                  sltiu        a0, a5, -1040
                  and          s6, ra, t4
                  xori         a7, s4, 1565
                  srl          zero, t2, gp
                  sltu         a6, t4, t3
                  and          t5, t2, s9
                  addi         s7, t4, 392
                  bltu         s7, s4, 53f
                  sltiu        gp, sp, 1345
                  sltiu        s6, s4, -800
                  bge          a3, s3, 48f
                  srl          s11, sp, t2
47:               lui          s10, 502227
48:               beq          s7, t4, 63f
                  xor          a0, t3, ra
                  slli         t2, ra, 22
                  xor          t3, a3, s3
                  xor          a2, t5, s2
53:               or           t1, s4, s3
                  srl          t1, a2, t2
                  slli         a2, sp, 21
                  slt          a3, s8, t4
                  or           a1, a7, s5
                  bge          a3, zero, 74f
                  or           s5, s6, t1
                  bge          s9, t6, 78f
                  xori         t3, s6, 1568
                  xor          ra, s0, s0
63:               bge          s2, a5, 75f
                  add          a6, gp, ra
                  xori         s8, a7, 791
                  ori          t5, t6, 1040
                  nop
                  xor          tp, tp, a2
                  andi         s1, zero, -265
                  slti         s10, t1, -1991
                  bge          s10, s9, 88f
                  add          s5, s8, s10
                  sltu         t1, s0, t3
74:               sll          s10, a2, s9
75:               bltu         t3, t3, 86f
                  or           t6, t6, tp
                  xori         t1, a4, -874
78:               sll          a7, s9, ra
                  srai         t1, gp, 30
                  lui          t5, 875552
                  add          s11, a6, s8
                  lui          t3, 577903
                  blt          s0, s0, 93f
                  srl          s10, a3, tp
                  addi         t2, s3, 289
86:               andi         s7, t5, 1754
                  ori          t0, a6, 799
88:               slt          s10, s2, a0
                  bltu         a3, s5, 91f
                  blt          s9, s1, 93f
91:               bgeu         s3, s7, 101f
                  addi         t5, t2, 483
93:               xori         s5, s8, -735
                  add          s0, t6, s7
                  lui          s8, 882241
                  or           s11, s3, s10
                  slt          t5, s4, a1
                  srai         a5, s0, 25
                  sra          s2, t1, a0
                  sll          a2, s7, s6
101:              ori          s3, a2, -845
                  auipc        s1, 800097
                  slli         sp, a7, 15
                  slt          sp, t5, s1
                  lui          s3, 725327
                  nop
                  xori         t2, tp, 1299
                  sub          s11, zero, t1
                  sub          sp, s5, t6
                  and          a4, t2, s8
                  bltu         zero, zero, 129f
                  sltu         a5, tp, a2
                  sltu         s0, a1, ra
                  lui          s0, 153416
                  xori         ra, a7, -679
                  auipc        a7, 287538
                  xori         a2, s5, 1109
                  bne          a0, a4, 129f
                  slt          t2, s2, s9
                  bgeu         s1, t3, 126f
                  blt          t2, t1, 123f
                  bge          s4, gp, 142f
123:              bgeu         s7, s1, 133f
                  bgeu         t5, a0, 127f
                  bne          ra, zero, 129f
126:              sltiu        s8, zero, -1734
127:              sltu         tp, t1, a6
                  xori         a4, s3, 1358
129:              xor          s0, s3, t2
                  bltu         s8, a7, 145f
                  andi         a7, t1, -269
                  and          t1, t4, a0
133:              nop
                  lui          sp, 545667
                  ori          s10, a2, -925
                  sra          sp, a5, s0
                  bgeu         t0, a1, 150f
                  slti         t1, s2, 1935
                  and          s8, s11, s4
                  or           s5, t1, t2
                  slti         s1, s1, 98
142:              sub          a4, zero, s7
                  auipc        s2, 61681
                  xor          t0, a3, s6
145:              sra          s0, s1, t1
                  slt          s11, a6, a5
                  sra          tp, a4, s3
                  sltiu        t3, zero, 1238
                  auipc        a2, 299233
150:              srl          a0, tp, s2
                  or           s0, sp, s11
                  slt          a2, s3, t3
                  or           s7, s2, zero
                  beq          t2, t4, 165f
                  addi         t6, s0, -1127
                  bge          a0, t0, 164f
                  xor          gp, t6, s10
                  auipc        s8, 747517
                  sra          a5, s5, t2
                  bge          s9, s3, 163f
                  nop
                  auipc        t2, 752005
163:              sltiu        s8, zero, 1540
164:              lui          s0, 679475
165:              bge          t6, s6, 185f
                  ori          s7, a3, -1268
                  xor          t0, zero, gp
                  sltiu        t2, t1, 1460
                  slt          t2, t1, s4
                  beq          s9, t5, 183f
                  sltu         a5, s6, t5
                  srli         tp, a2, 28
                  xor          s6, a4, s10
                  or           t0, a6, s1
                  sub          t1, s0, s7
                  add          ra, zero, t2
                  bgeu         s9, s10, 192f
                  sll          s5, a4, sp
                  sra          a6, t1, s6
                  xori         s7, a2, -861
                  sll          t1, a6, a6
                  la           s11, region_1+1298 #start load_store_instr_stream_2
                  sb           s3, -120(s11)
                  la           t2, region_1+1418 #start load_store_instr_stream_1
                  sh           s4, -2(t2)
                  sb           sp, -11(t2)
                  lb           s7, -819(s11)
                  la           a6, region_1+357 #start load_store_instr_stream_0
                  sb           s6, -56(t2)
                  lhu          a2, 42(t2)
                  lb           s2, 219(a6)
                  sh           t5, 107(a6)
                  sb           a3, 41(t2)
                  lhu          a5, -926(s11)
                  lbu          a7, -50(t2)
                  sh           t2, 506(s11)
                  lh           zero, 1357(a6)
                  sb           t1, -23(t2)
                  lb           a4, 515(s11)
                  sb           a0, -139(s11) #end load_store_instr_stream_2
                  lh           t5, 9(a6)
                  lb           s8, 472(a6)
                  lbu          sp, 56(t2)
                  sh           t5, -6(t2) #end load_store_instr_stream_1
                  lb           tp, 1501(a6) #end load_store_instr_stream_0
                  slti         a0, s5, -28
183:              auipc        s7, 80368
                  or           t0, a6, a6
185:              bge          s9, a2, 198f
                  auipc        s11, 581564
                  ori          a3, t5, -1002
                  beq          s6, a5, 207f
                  sltu         t2, s7, sp
                  srl          t3, s9, s5
                  or           gp, s7, a5
192:              add          a4, gp, sp
                  xori         t3, a0, -1122
                  xor          gp, t4, t0
                  beq          s9, s9, 197f
                  srai         s3, a2, 8
197:              xori         sp, zero, 1701
198:              sltu         s11, s9, a6
                  slti         a6, s9, 980
                  srai         a1, s9, 26
                  slt          t0, t0, a0
                  la           t3, region_0+1307 #start load_store_instr_stream_2
                  la           s1, region_0+772 #start load_store_instr_stream_1
                  sb           a5, 50(t3)
                  lbu          sp, 243(s1)
                  la           s2, region_0+1539 #start load_store_instr_stream_3
                  lw           a4, -19(t3)
                  lbu          gp, 26(s2)
                  lbu          t6, -48(s2)
                  lb           a3, -18(t3)
                  la           a2, region_0+368 #start load_store_instr_stream_0
                  sb           s0, 18(t3)
                  lb           s3, 194(s1)
                  lb           a7, 5(a2)
                  lhu          s7, 21(s2)
                  lb           a0, 195(s1)
                  lbu          gp, -38(t3)
                  lw           sp, 4(a2)
                  sb           a3, -52(s1)
                  lbu          s8, -106(s1)
                  sb           s11, -6(s2)
                  lb           zero, 29(t3)
                  lb           gp, 20(s2)
                  lb           s5, -221(s1)
                  lbu          s8, 3(a2)
                  lb           s6, 7(a2)
                  sh           s9, -2(a2)
                  lbu          ra, -3(a2)
                  sb           s0, -32(s2) #end load_store_instr_stream_3
                  lbu          gp, -18(t3)
                  sh           s7, 10(a2)
                  lbu          t6, 51(t3) #end load_store_instr_stream_2
                  sh           s11, -182(s1)
                  lhu          t5, 2(a2)
                  lb           a6, 223(s1) #end load_store_instr_stream_1
                  lw           s8, 4(a2) #end load_store_instr_stream_0
                  addi         a5, a2, -905
                  xor          t6, t0, s0
                  and          a1, t2, a6
                  slti         s6, a3, 48
                  and          zero, a2, s6
207:              and          s5, a2, s3
                  bltu         sp, a4, 211f
                  xor          ra, s4, s5
                  bgeu         a5, sp, 212f
211:              slti         tp, t0, 1540
212:              nop
                  xori         a1, a0, -1510
                  or           s1, s11, tp
                  bne          zero, a1, 228f
                  add          s1, s4, s0
                  srl          t2, a3, t5
                  and          t5, t1, a3
                  add          ra, a5, t1
                  srli         gp, t0, 25
                  xori         a2, sp, -1076
                  xori         s5, s5, -1949
                  andi         a2, s11, 1222
                  bne          a7, s9, 234f
                  add          t3, s5, a2
                  sltu         sp, s3, s2
                  nop
228:              slli         zero, s11, 8
                  addi         s2, t4, 883
                  and          tp, t2, a6
                  andi         s1, s10, -939
                  slli         gp, s2, 18
                  addi         a7, s10, 3
234:              slli         s1, s7, 15
                  srai         a0, s7, 17
                  bne          s11, s2, 244f
                  sub          a5, s5, t4
                  sub          s2, gp, t0
                  sltu         a5, t0, s8
                  blt          s3, s0, 258f
                  slt          a5, t5, s5
                  sra          s1, t2, s2
                  srai         a2, t0, 18
244:              auipc        t5, 907090
                  slti         a7, sp, -524
                  slt          gp, s5, s1
                  beq          t0, a3, 264f
                  sltiu        s0, a3, -1588
                  bge          s7, gp, 259f
                  slli         ra, ra, 8
                  nop
                  auipc        s11, 314170
                  sltiu        a4, s5, -215
                  sltu         sp, s8, s10
                  lui          s1, 778086
                  xori         s0, s6, 610
                  xori         tp, ra, 225
258:              or           a7, a2, s0
259:              addi         s6, a6, -2034
                  xor          s7, t1, s6
                  sltiu        t2, s4, 68
                  bne          t1, tp, 273f
                  xori         zero, s10, -307
264:              xor          gp, t3, gp
                  lui          ra, 807810
                  sltiu        a4, s11, -696
                  slli         s6, a3, 1
                  srai         s10, s11, 31
                  sub          a2, a3, a3
                  nop
                  slti         ra, s7, -749
                  bltu         t2, s6, 281f
273:              sltu         t5, s5, s5
                  slt          s5, a5, s4
                  beq          t1, s8, 287f
                  beq          t3, s5, 279f
                  nop
                  bge          s10, a3, 289f
279:              slti         a3, a3, -1217
                  sra          a0, t4, a2
281:              srl          t3, tp, zero
                  nop
                  sltiu        a7, s4, 1128
                  add          a6, a7, t5
                  blt          a6, t2, 296f
                  blt          a0, a1, 292f
287:              lui          gp, 712556
                  sra          s11, a3, s0
289:              srl          a7, t4, t5
                  slli         t1, gp, 0
                  slt          t6, a7, zero
292:              srli         s1, s8, 15
                  lui          s0, 25259
                  sltu         t5, s2, s11
                  beq          a0, a1, 313f
296:              bgeu         t5, sp, 311f
                  nop
                  slt          s3, t4, a2
                  srl          s1, tp, a0
                  bge          t3, s7, 308f
                  beq          s0, sp, 305f
                  nop
                  blt          s10, s8, 313f
                  blt          s8, a6, 305f
305:              sll          s10, a2, s9
                  add          s10, gp, a2
                  addi         t0, a6, -1368
308:              addi         t0, s8, -212
                  sltu         a1, s10, t2
                  addi         gp, t0, 1427
311:              slt          a7, sp, t3
                  slli         t0, a6, 24
313:              lui          a7, 426576
                  bne          gp, s3, 325f
                  beq          ra, t3, 331f
                  srl          t2, a7, s11
                  andi         t2, a2, -1378
                  bgeu         a3, t2, 328f
                  sltiu        a4, a7, -304
                  addi         a0, t3, 1087
                  beq          s1, s9, 336f
                  sltiu        s8, gp, 1321
                  bgeu         t2, s3, 333f
                  bgeu         sp, t1, 332f
325:              xor          tp, s8, s1
                  lui          s6, 870770
                  bge          t5, a0, 345f
328:              sltu         sp, s5, a0
                  xori         t5, s6, 1589
                  srai         t3, t5, 17
331:              sra          s10, a1, ra
332:              slti         a6, t1, -386
333:              add          t2, s5, sp
                  nop
                  slli         a5, sp, 23
336:              sltu         a3, t3, t6
                  srl          s3, s2, t5
                  sltiu        s5, t1, 1437
                  sub          a1, s11, a2
                  bltu         s7, t6, 353f
                  slt          a7, s0, a0
                  nop
                  auipc        zero, 172377
                  add          s1, a4, s5
345:              addi         s10, a1, 1103
                  srai         a4, a3, 30
                  nop
                  lui          s8, 786534
                  andi         a7, s1, -1042
                  xori         gp, t6, -1562
                  bltu         s9, a4, 354f
                  sltiu        t0, a1, -41
353:              nop
354:              addi         zero, s9, -78
                  nop
                  bge          a1, s8, 367f
                  bgeu         a2, a7, 360f
                  or           gp, a7, s8
                  bge          s11, s0, 361f
360:              auipc        ra, 270159
361:              bne          t1, a4, 365f
                  sltiu        tp, s7, -338
                  srl          s0, t1, ra
                  bne          s8, tp, 370f
365:              blt          s11, s6, 368f
                  and          s7, s9, a2
367:              sra          t5, t1, s2
368:              blt          s2, a1, 379f
                  nop
370:              xori         a3, a0, -1604
                  srl          s2, s2, s6
                  sltiu        a4, t5, -1213
                  blt          tp, s0, 392f
                  bgeu         t3, sp, 394f
                  and          s10, gp, t6
                  bltu         a0, zero, 387f
                  xori         s3, sp, 244
                  nop
379:              blt          a7, t5, 381f
                  nop
381:              srl          a6, sp, s7
                  sub          t0, s7, s2
                  xor          s11, s1, s3
                  nop
                  or           s11, s2, a3
                  andi         s8, t0, -1881
387:              addi         zero, s5, -165
                  srl          s7, t4, ra
                  and          a3, s2, s2
                  bgeu         t5, t0, 400f
                  slt          sp, a4, s0
392:              slt          t5, s5, s0
                  xori         t0, s4, -1881
394:              srai         s6, t0, 25
                  or           s0, gp, a4
                  srai         s2, s4, 2
                  sltiu        a0, s10, -1656
                  beq          a2, a2, 411f
                  slli         t1, a4, 11
400:              bne          t0, a5, 417f
                  srli         a1, t6, 18
                  sub          a7, s10, s11
                  sll          ra, a6, a5
                  bne          s9, a7, 417f
                  sltu         t3, a3, s4
                  srli         s11, t5, 22
                  srli         s7, a1, 0
                  ori          a2, a5, 476
                  addi         a5, t2, 511
                  auipc        a2, 462615
411:              lui          s0, 604140
                  nop
                  sltiu        a1, s7, 286
                  srai         s6, s3, 19
                  srai         s10, t6, 18
                  slt          a2, a5, sp
417:              add          s1, s4, s10
                  bltu         s8, t2, 430f
                  beq          a7, a5, 430f
                  ori          tp, a6, 1416
                  blt          t3, s10, 430f
                  sltu         s3, s2, t5
                  add          a3, sp, s6
                  bne          s10, s1, 432f
                  lui          s10, 946646
                  ori          a5, a1, 628
                  ori          a7, s1, 1012
                  slli         t0, t2, 10
                  bltu         s9, s6, 444f
430:              beq          a2, s11, 448f
                  ori          gp, s5, 1439
432:              sltu         s10, a4, s6
                  sltiu        s1, s3, -660
                  bge          t4, s2, 450f
                  beq          s6, s5, 436f
436:              sub          s2, t1, tp
                  blt          s7, gp, 455f
                  and          a1, t0, a2
                  bge          t4, t0, 450f
                  add          a3, t5, a0
                  slli         a3, sp, 28
                  srai         s2, s2, 12
                  sub          s10, t3, s8
444:              beq          a3, ra, 456f
                  add          a6, s10, zero
                  slti         s3, sp, 1861
                  bge          s1, s8, 456f
448:              addi         a7, t4, -1235
                  sll          s6, tp, t3
450:              auipc        tp, 225658
                  bge          a3, a1, 456f
                  auipc        zero, 184812
                  slt          t6, zero, a5
                  srai         a7, t0, 25
455:              bltu         zero, s3, 456f
456:              sltiu        s10, s9, -1604
                  ori          t5, s1, -1027
                  srli         tp, s6, 28
                  sra          s8, s7, s7
                  lw           s3, 4(t4)
                  slt          ra, a0, a4
                  and          s6, a7, s10
                  addi         t4, t4, 64
                  sltu         s1, zero, s3
                  nop
                  srai         a0, a6, 23
894:              addi x19, x19, 0
894:              jalr x19, x19, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x20, x29, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x2, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x2, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x2, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x2, x22, ecall_handler
                  li x22, 0x1
                  beq x2, x22, instr_fault_handler
                  li x22, 0x5
                  beq x2, x22, load_fault_handler
                  li x22, 0x7
                  beq x2, x22, store_fault_handler
                  li x22, 0xc
                  beq x2, x22, pt_fault_handler
                  li x22, 0xd
                  beq x2, x22, pt_fault_handler
                  li x22, 0xf
                  beq x2, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x29, x20, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
