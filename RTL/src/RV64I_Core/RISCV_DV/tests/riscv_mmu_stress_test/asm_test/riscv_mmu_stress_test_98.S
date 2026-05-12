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
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x13, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0x6a37f95a
                  li x2, 0x64abaa84
                  li x3, 0xf25fab6b
                  li x4, 0xb614dca2
                  li x5, 0x80000000
                  li x6, 0xc
                  li x7, 0xfdbc9c8e
                  li x8, 0xfc633e69
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xe
                  li x14, 0x80000000
                  li x15, 0x9
                  li x16, 0x0
                  li x17, 0xfe5855d9
                  li x18, 0x14909ec6
                  li x19, 0x8
                  li x20, 0xd4775dae
                  li x21, 0xf6fe9089
                  li x22, 0xf3089ba3
                  li x23, 0x80000000
                  li x24, 0xc
                  li x25, 0x0
                  li x26, 0xbb3b9b31
                  li x27, 0x0
                  li x28, 0x3
                  li x29, 0x6
                  li x30, 0xf662c233
                  li x31, 0x80000000
                  la x12, user_stack_end
main:             la           s11, sub_1
                  andi         s8, s0, -985
                  addi         s11, s11, 862
                  srli         t0, zero, 7
                  bltu         a1, t5, main_j3 #branch to jump instr
                  sll          a5, a6, zero
                  lui          t4, 425251
                  xori         a6, s7, -1987
main_j3:          jalr         t1, s11, -862 #jump main -> sub_1
                  la           t4, region_1+1711 #start load_store_instr_stream_1
                  lbu          a6, -1346(t4)
                  la           t2, region_1+1102 #start load_store_instr_stream_0
                  lhu          a1, -1035(t4)
                  lbu          a0, -876(t4)
                  lb           t1, 616(t2)
                  sb           gp, -240(t4)
                  lbu          a5, -747(t4)
                  sh           t2, -679(t4)
                  lb           s1, -161(t2)
                  lb           s1, 84(t4)
                  lbu          a7, -34(t4)
                  lbu          s10, -647(t2)
                  lb           t5, -1001(t2)
                  sw           t2, -43(t4)
                  lhu          s4, 824(t2)
                  lhu          t3, -540(t2)
                  lb           gp, -760(t4) #end load_store_instr_stream_1
                  sh           a6, 248(t2) #end load_store_instr_stream_0
                  la           t5, region_1+967 #start load_store_instr_stream_1
                  la           s3, region_1+772 #start load_store_instr_stream_2
                  lb           t0, -15(s3)
                  lbu          gp, 12(t5)
                  lb           s0, 15(s3)
                  la           s9, region_1+1195 #start load_store_instr_stream_3
                  lb           a4, -10(s3)
                  sb           a6, 16(s3)
                  lbu          a7, 12(s3)
                  la           a1, region_1+1374 #start load_store_instr_stream_0
                  lbu          t6, 7(s3)
                  lbu          t3, 35(a1)
                  sh           a1, -13(s9)
                  lb           a5, -13(t5)
                  lb           tp, 10(t5)
                  lh           gp, 9(t5)
                  sb           gp, -21(a1)
                  lb           t2, 0(s9)
                  lb           s6, -7(s3)
                  sb           s3, 14(s9)
                  sb           gp, -171(a1)
                  lbu          s2, -16(s9)
                  lbu          s2, 2(t5)
                  lbu          t3, -2(t5) #end load_store_instr_stream_1
                  lbu          s10, -14(s9)
                  lbu          s7, 2(s9)
                  sb           s10, 11(s3)
                  sh           s7, 12(s3) #end load_store_instr_stream_2
                  lbu          t3, -16(s9)
                  lbu          a4, 245(a1)
                  lbu          sp, 7(s9) #end load_store_instr_stream_3
                  lb           a5, 167(a1) #end load_store_instr_stream_0
                  la           s1, region_1+1022 #start riscv_load_store_hazard_instr_stream_1
                  sb           t5, -7(s1)
                  sra          t0, t0, tp
                  sb           s10, -7(s1)
                  sb           gp, -7(s1)
                  lbu          a1, -7(s1)
                  lbu          t3, 42(s1)
                  lbu          gp, 42(s1)
                  sll          a1, t3, t2
                  lb           a7, 42(s1)
                  sra          t5, a2, t5
                  srli         s3, s11, 13
                  auipc        a0, 796491
                  lbu          t3, 42(s1)
                  lhu          s6, -46(s1)
                  lbu          sp, -46(s1)
                  sh           s9, -46(s1)
                  sw           t6, -46(s1)
                  lbu          s5, -46(s1)
                  sh           t2, -46(s1)
                  sra          gp, t3, s5
                  lw           zero, -46(s1)
                  sb           s10, -64(s1) #end riscv_load_store_hazard_instr_stream_1
                  la           t4, region_0+623 #start riscv_load_store_rand_instr_stream_1
                  addi         s10, a6, 823
                  lh           a4, 1(t4)
                  ori          t0, s3, 588
                  lui          s4, 999978
                  nop
                  ori          zero, tp, -1107
                  lb           t5, 12(t4)
                  slti         t5, s1, -1396
                  auipc        s1, 473220
                  sll          s1, a4, gp
                  lbu          t5, 4(t4)
                  addi         t0, zero, -1146
                  lh           s10, 5(t4)
                  sh           a2, -3(t4)
                  srl          tp, sp, s11
                  srai         zero, s8, 1
                  lh           s7, 13(t4)
                  sb           a7, -6(t4)
                  lbu          a4, 16(t4)
                  lw           t5, 5(t4)
                  lbu          gp, -6(t4)
                  sra          t2, sp, t5
                  srai         t5, a0, 9
                  lh           sp, -1(t4) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1666 #start riscv_load_store_hazard_instr_stream_0
                  srl          t0, t3, zero
                  lw           a6, -14(sp)
                  sb           s1, 5(sp)
                  lb           t6, 5(sp)
                  sb           a5, 5(sp)
                  lb           s11, -3(sp)
                  sb           s6, -3(sp)
                  lbu          a5, -9(sp)
                  sb           s8, -9(sp)
                  sb           a2, -13(sp)
                  sb           t0, 13(sp)
                  sb           zero, 13(sp)
                  lb           s5, 8(sp)
                  lhu          t5, 8(sp)
                  lh           t0, 8(sp)
                  sh           zero, 8(sp)
                  lhu          s2, 8(sp) #end riscv_load_store_hazard_instr_stream_0
                  slti         t5, tp, 1411
                  blt          s2, s4, 9f
                  sra          t2, tp, s4
                  auipc        t2, 886442
                  sub          s3, s0, gp
                  slti         a6, s11, 290
                  la           t2, region_1+1714 #start riscv_load_store_rand_instr_stream_0
                  andi         s2, s5, -1470
                  sb           zero, -944(t2)
                  lb           s6, -197(t2)
                  lb           s6, -631(t2)
                  lb           s8, -1486(t2)
                  sb           a1, -1413(t2)
                  or           a0, a2, a1
                  lbu          t3, -451(t2)
                  sltu         t6, t0, s8
                  lb           s6, -504(t2)
                  sb           zero, -1434(t2)
                  slt          t1, t0, s4
                  lh           s1, 88(t2)
                  lb           s5, 139(t2)
                  slt          t1, s8, sp
                  lhu          t3, -1570(t2)
                  add          s2, a5, zero
                  lbu          t3, -703(t2)
                  sub          s0, t4, s9
                  sb           zero, -215(t2)
                  sb           s4, 233(t2)
                  slt          s3, s11, gp
                  lb           s7, -581(t2)
                  lb           s1, -92(t2)
                  sb           sp, -175(t2)
                  xor          s10, tp, s2
                  slt          s7, a6, a2
                  lbu          tp, -367(t2)
                  addi         t5, s1, -1070
                  lb           t5, -8(t2)
                  sh           t4, 224(t2)
                  lb           s5, -723(t2)
                  lbu          s4, -53(t2)
                  sb           a3, -455(t2)
                  lbu          gp, -396(t2)
                  lb           s7, -633(t2) #end riscv_load_store_rand_instr_stream_0
                  xor          tp, ra, a3
                  bge          s3, s4, 22f
                  blt          s6, s6, 26f
9:                xori         s9, t6, 1396
                  bltu         s11, s9, 23f
                  srai         a4, s7, 3
                  or           a0, s0, s8
                  sra          s7, s10, s3
                  slt          t1, s8, s11
                  sltu         s2, s2, s6
                  slti         s5, a4, -390
                  sll          a6, t3, s0
                  blt          s2, a3, 26f
                  bne          zero, s8, 31f
                  srli         a5, a4, 1
                  sra          t6, t4, a5
22:               bltu         a3, s7, 23f
23:               auipc        s9, 133297
                  addi         s6, zero, -940
                  addi         sp, s9, 1927
26:               slli         a1, s6, 17
                  srl          t3, a6, s5
                  blt          tp, gp, 37f
                  srli         s5, s11, 10
                  slt          t6, t1, t1
31:               andi         s8, a2, -1876
                  slti         s5, t6, -1177
                  xori         t6, s7, 1179
                  slti         gp, tp, -139
                  bge          a5, t4, 36f
36:               srai         s8, a0, 3
37:               bge          t5, s10, 43f
                  sll          s7, zero, t0
                  srli         s10, tp, 15
                  slti         a0, s6, -468
                  slli         a5, s11, 24
                  add          t6, s2, gp
43:               andi         zero, s10, -244
                  and          s5, sp, a5
                  srl          s1, t0, t4
                  sll          zero, s1, t0
                  sra          a1, s9, t1
                  nop
                  add          t2, sp, a3
                  sub          tp, s3, t1
                  blt          sp, t2, 67f
                  slli         s6, s5, 6
                  slti         t2, a3, 129
                  ori          a5, zero, 327
                  sltu         t3, ra, t6
                  andi         tp, t4, -1926
                  xori         s0, a3, 2046
                  add          a6, s7, s4
                  sltu         t2, s0, s10
                  and          a7, tp, a4
                  xor          a5, s0, t4
                  andi         t0, tp, 1883
                  blt          s10, s11, 67f
                  auipc        t1, 707165
                  add          s3, s1, t0
                  xor          t0, a5, gp
67:               beq          sp, a0, 70f
                  sub          s4, a7, s7
                  sra          a6, s7, s7
70:               lui          s9, 545963
                  slt          a4, a3, t2
                  slt          s8, t6, s9
                  add          t6, s10, a0
                  lui          s2, 871308
                  beq          s6, tp, 88f
                  ori          s1, t5, 403
                  auipc        s1, 303582
                  beq          a6, a1, 98f
                  and          t1, s10, t6
                  nop
                  auipc        a1, 810233
                  slt          s4, s1, t5
                  bltu         a1, zero, 100f
                  slt          s11, s3, s8
                  lui          zero, 264522
                  bne          t1, s1, 99f
                  slt          s3, s5, a7
88:               slti         gp, t4, 1049
                  and          t1, tp, s11
                  or           s5, s6, s2
                  bltu         a5, a1, 109f
                  slti         s10, a5, -307
                  srai         a6, zero, 25
                  bltu         t2, a2, 110f
                  srai         s8, a1, 27
                  xori         t6, s3, -561
                  bne          gp, s7, 117f
98:               or           sp, a2, a3
99:               srai         a5, zero, 10
100:              srl          sp, t0, s1
                  bne          a6, t1, 108f
                  srl          a6, s6, s11
                  slti         s6, s7, 1828
                  slt          a1, s2, a2
                  bge          sp, a6, 106f
106:              bge          t0, s11, 109f
                  nop
108:              srli         zero, a7, 25
109:              nop
110:              sra          t6, s2, t5
                  bne          a6, a2, 129f
                  xori         s9, t1, 720
                  bge          ra, a5, 131f
                  sltu         t0, s10, s4
                  srli         t6, t5, 11
                  blt          s4, t0, 132f
117:              srl          s7, s1, s0
                  add          s11, t1, t6
                  auipc        s2, 765363
                  slli         a4, s9, 8
                  andi         s11, s8, 2027
                  sltu         t2, a2, t3
                  srai         s8, t6, 19
                  andi         s6, s10, -1839
                  bltu         s8, a1, 127f
                  bgeu         s11, zero, 138f
                  srl          tp, s10, s4
                  srli         s1, t1, 9
                  sltiu        t4, tp, 1341
                  la           a4, sub_2
                  sltu         s2, s6, s10
                  sub          s1, a0, a3
                  xori         s2, t4, -1840
                  addi         a4, a4, 310
                  auipc        s0, 856754
                  bltu         a0, s1, main_j2 #branch to jump instr
                  sll          s2, s9, ra
main_j2:          jalr         t1, a4, -310 #jump main -> sub_2
127:              and          gp, tp, s4
                  srl          t1, a6, s5
129:              add          a4, s5, s10
                  sra          t2, a7, gp
131:              srl          tp, a4, s8
132:              slti         a5, t6, -1929
                  sltu         t1, s5, tp
                  or           t3, s11, s11
                  addi         s11, a0, -833
                  slli         a0, a7, 1
                  srli         s5, a5, 5
138:              xor          s8, s4, s1
                  slt          t5, s3, sp
                  srl          t3, a3, s3
                  xori         a5, s9, 1114
                  or           gp, t3, s0
                  blt          ra, s11, 152f
                  andi         t1, s4, 667
                  sub          a4, s1, s8
                  bltu         a0, s2, 162f
                  andi         a5, gp, -1541
                  beq          a4, s9, 157f
                  bltu         a6, t6, 152f
                  sltiu        t6, zero, -2039
                  and          tp, t0, s9
152:              beq          s8, t2, 164f
                  bge          s3, sp, 173f
                  lui          a6, 125638
                  sltiu        t4, a0, -1785
                  slti         t4, s3, -1548
157:              addi         s0, sp, -1478
                  sltu         a7, a2, a7
                  ori          a6, zero, -1260
                  sub          t5, a0, t2
                  and          t2, a1, zero
162:              xori         a0, tp, 1957
                  slli         a7, ra, 3
164:              srli         a0, s7, 21
                  xori         s7, s1, 17
                  beq          t1, gp, 167f
167:              sub          s1, a4, s2
                  srai         s10, a3, 8
                  lui          t3, 863401
                  add          t0, t1, a0
                  slti         tp, s4, -281
                  sltu         t2, s11, t6
173:              sra          s1, tp, s3
                  slti         s10, t1, 1724
                  srai         s8, t1, 15
                  lui          s8, 198987
                  sub          s6, a7, t2
                  bltu         tp, s11, 196f
                  and          s11, s2, t1
                  beq          t1, s9, 188f
                  bge          sp, ra, 194f
                  xori         s10, a0, -677
                  sll          a6, tp, a1
                  xor          s1, s3, t3
                  ori          s10, a2, -1172
                  slt          a0, t0, s11
                  bltu         t5, s1, 200f
188:              bne          s3, a4, 191f
                  slti         a0, a0, 1197
                  blt          t1, s7, 196f
191:              sltu         t6, s1, s4
                  srli         a4, ra, 9
                  and          tp, t6, s9
194:              ori          s11, t2, 745
                  blt          s5, s1, 199f
196:              slti         t2, t2, 1792
                  bne          gp, zero, 213f
                  addi         s10, a0, -1619
199:              slti         a4, t3, -745
200:              addi         s6, t3, 1750
                  or           s5, t2, t2
                  and          s7, s5, gp
                  slti         s10, t0, -1659
                  and          s11, s6, s5
                  bge          sp, tp, 213f
                  bgeu         s8, s11, 215f
                  srli         gp, a7, 21
                  srli         a7, a1, 5
                  or           sp, s6, ra
                  bge          s3, sp, 230f
                  add          t0, s11, a7
                  beq          s11, zero, 230f
213:              sltiu        a5, a6, 1774
                  sltiu        a6, s0, -1225
215:              slt          s9, a4, a2
                  xori         t6, s0, 25
                  blt          t3, a7, 232f
                  xor          zero, a1, a2
                  slt          t3, t4, t4
                  lui          s6, 444506
                  slti         t6, s10, -2003
                  srl          a7, a2, s2
                  sltiu        s2, ra, 1531
                  sll          s11, s1, t5
                  bge          s3, s0, 227f
                  srl          a0, t6, gp
227:              srl          s0, t3, tp
                  nop
                  addi         s11, t2, 379
230:              slti         s10, a4, 844
                  or           s11, s0, ra
232:              andi         t2, t2, 561
                  bltu         s11, a2, 249f
                  sltu         s6, a6, a0
                  sltiu        s0, a2, -971
                  sra          s10, s6, t3
                  bne          sp, s7, 238f
238:              srl          t1, s8, a0
                  sll          t3, ra, tp
                  or           a7, t5, t1
                  slt          s0, t0, a0
                  andi         s0, t1, 787
                  la           a1, sub_2
                  srli         s6, a5, 15
                  addi         s2, a1, -770
                  auipc        a5, 260334
                  sltu         a0, t3, t3
                  addi         a1, a1, -337
                  nop
main_j1:          jalr         t1, a1, 337 #jump main -> sub_2
                  srli         s3, a2, 0
                  and          s10, s10, t6
                  slti         s4, t6, 1340
                  lui          tp, 228847
                  bne          s8, s6, 259f
                  auipc        t1, 533640
                  or           s10, a1, s11
249:              srai         s9, a1, 23
                  add          s2, s5, s6
                  auipc        a6, 858518
                  bgeu         s6, t3, 270f
                  auipc        a5, 647655
                  srli         s11, s1, 30
                  sub          s9, t4, sp
                  sltu         a7, zero, s6
                  sub          s5, a0, s4
                  auipc        a4, 907022
259:              slti         t0, s4, -74
                  or           s0, zero, s1
                  bltu         s11, s5, 271f
                  sub          s7, t6, t2
                  sra          a7, s11, a2
                  auipc        t0, 879424
                  slt          a6, t1, s1
                  addi         t0, a1, 119
                  sltiu        s2, s6, 804
                  nop
                  srl          a6, t5, a1
270:              nop
271:              ori          a6, s0, -1908
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         s9, s1, 1262
                  addi         a2, a2, -28
                  srai         tp, s6, 28
                  sw           t1, 4(a2)
                  add          tp, a0, a0
                  slti         t5, zero, 859
                  sll          t5, t6, s5
                  sltu         t3, t5, t5
                  ori          s4, sp, 283
                  andi         sp, a7, 192
                  srli         s0, s1, 28
                  srl          a0, a3, zero
                  la           s9, region_0+546 #start riscv_load_store_hazard_instr_stream_0
                  lb           s8, -5(s9)
                  sb           gp, -5(s9)
                  srai         tp, gp, 27
                  sh           a5, 12(s9)
                  lh           t5, 12(s9)
                  sb           s7, 4(s9)
                  slt          t2, a4, s5
                  xori         t4, t6, -455
                  slli         s11, a4, 13
                  slt          tp, a5, s0
                  lh           a4, 4(s9)
                  sb           a7, 5(s9)
                  sb           a1, 5(s9)
                  sb           t0, -7(s9)
                  ori          s0, s2, 1132
                  lbu          s0, -7(s9)
                  sltu         s1, zero, s1
                  lbu          s0, -13(s9)
                  lb           tp, -13(s9)
                  lb           t5, -13(s9)
                  sb           a3, 15(s9)
                  lbu          tp, 15(s9)
                  lb           a5, -4(s9)
                  lbu          s2, -9(s9) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+409 #start riscv_load_store_rand_instr_stream_2
                  and          tp, t2, s3
                  lb           s1, 1(sp)
                  lb           s8, 1(sp)
                  sub          s0, s3, s3
                  sra          s1, t5, a0
                  andi         t3, ra, -58
                  lb           t6, 4(sp)
                  lh           t1, -5(sp)
                  lb           zero, 9(sp)
                  slti         s2, a7, -331
                  lb           s4, 8(sp)
                  slt          s10, s5, t3
                  srli         s8, s9, 10
                  xor          s1, a7, t5
                  lb           tp, 4(sp)
                  slt          s4, a3, gp
                  lb           t3, 2(sp)
                  lb           a5, -14(sp)
                  lb           s1, 8(sp)
                  lb           a0, -14(sp)
                  sll          a0, gp, gp
                  slti         s11, t1, -1738
                  andi         a6, t4, 1648
                  lui          s8, 65413
                  lb           a4, -8(sp)
                  ori          zero, a3, -981
                  sb           s1, -14(sp)
                  andi         t2, t3, -2015
                  andi         a0, t3, 615
                  sb           s2, -16(sp)
                  lbu          s11, 4(sp)
                  lbu          t3, 8(sp)
                  lbu          s11, -5(sp)
                  lbu          a1, -10(sp)
                  sll          s11, s6, s8
                  nop
                  lw           t6, 11(sp)
                  and          t4, gp, a7
                  lb           s5, 12(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s3, region_0+1123 #start riscv_load_store_rand_instr_stream_1
                  srai         a5, gp, 30
                  srai         t0, t1, 0
                  lhu          s9, 27(s3)
                  auipc        tp, 667791
                  addi         t2, s6, 7
                  sra          s0, a7, zero
                  lb           sp, -6(s3)
                  slli         t1, s5, 1
                  sltiu        s5, a1, 462
                  auipc        t6, 8561
                  lui          s10, 913016
                  sb           s0, -6(s3)
                  srl          t1, a0, t0
                  lhu          s11, 47(s3)
                  lbu          t2, -44(s3)
                  sb           s8, 6(s3)
                  nop
                  sltiu        t1, t3, -1096
                  sw           s2, -55(s3)
                  sb           gp, -48(s3)
                  sb           t1, -24(s3)
                  xori         a1, t2, 425
                  sb           t2, -53(s3)
                  sb           ra, -26(s3)
                  xori         t6, t6, -223
                  lw           s0, -31(s3)
                  lhu          t4, 49(s3)
                  or           a0, a3, s7
                  sb           t5, -44(s3)
                  nop
                  addi         s6, s6, 1781
                  lw           a1, -23(s3)
                  xor          t3, ra, a7
                  lbu          s11, 55(s3)
                  lb           s7, -60(s3) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1950 #start riscv_load_store_hazard_instr_stream_3
                  sb           s7, -165(sp)
                  xori         gp, s8, 1235
                  slt          t3, zero, a6
                  sb           t0, -167(sp)
                  lbu          s6, -71(sp)
                  lb           a0, -71(sp)
                  lb           s10, -71(sp)
                  lbu          t6, -71(sp)
                  lh           t0, -224(sp)
                  sb           t2, -224(sp)
                  sb           t1, -224(sp)
                  lbu          a1, -199(sp)
                  lb           t5, -199(sp)
                  lbu          s2, -199(sp)
                  sb           a5, -241(sp)
                  lw           t3, -118(sp)
                  lh           a7, -118(sp)
                  sra          zero, s3, a4
                  sw           sp, -118(sp)
                  lb           s4, -118(sp)
                  lw           t3, -118(sp)
                  sh           t0, -118(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           a6, region_0+1282 #start load_store_instr_stream_1
                  la           s10, region_0+577 #start load_store_instr_stream_2
                  sb           s2, 317(a6)
                  la           t0, region_0+510 #start load_store_instr_stream_0
                  sb           s5, 324(a6)
                  sh           t3, -8(t0)
                  lb           s6, 7(t0)
                  sb           s3, 0(s10)
                  lh           t6, 10(t0)
                  sh           s5, 11(s10)
                  sw           s8, 31(s10)
                  lb           s8, 5(s10)
                  sb           s11, 539(a6)
                  lbu          s9, -37(s10)
                  lh           s6, 0(t0)
                  sb           s1, -389(a6)
                  lbu          s3, -3(t0)
                  lb           t1, -1(t0)
                  lb           s9, -836(a6) #end load_store_instr_stream_1
                  lbu          a5, -15(s10)
                  sb           s10, 4(t0)
                  lh           s5, -51(s10)
                  lbu          a5, -16(s10) #end load_store_instr_stream_2
                  sb           s2, -9(t0) #end load_store_instr_stream_0
                  la           a5, region_0+419 #start riscv_load_store_hazard_instr_stream_1
                  lb           a6, 700(a5)
                  lb           a7, -98(a5)
                  lb           a6, -98(a5)
                  lb           t0, -98(a5)
                  lbu          s10, -98(a5)
                  lb           s3, -98(a5)
                  sb           t6, -98(a5)
                  lhu          t2, 3(a5)
                  lb           s3, -198(a5)
                  lbu          s5, -198(a5)
                  sb           t3, -302(a5)
                  lbu          a4, -302(a5)
                  srli         s4, a7, 20
                  lbu          t2, -302(a5)
                  lb           zero, 706(a5)
                  sb           t5, 479(a5)
                  lb           zero, 1271(a5)
                  lbu          t5, 1271(a5)
                  sb           a5, 488(a5)
                  lb           s8, 488(a5) #end riscv_load_store_hazard_instr_stream_1
                  la           s1, region_1+283 #start riscv_load_store_rand_instr_stream_0
                  lbu          s5, -29(s1)
                  and          t3, t1, ra
                  sb           t3, 36(s1)
                  lbu          t3, 30(s1)
                  sb           a0, -32(s1)
                  or           a4, t5, sp
                  sub          a6, s2, s9
                  nop
                  slli         gp, a3, 28
                  and          t5, s11, tp
                  lb           s4, 20(s1)
                  srli         s10, s3, 23
                  sltiu        t5, t4, 1607
                  sb           s3, -23(s1)
                  sb           t1, -27(s1)
                  lbu          s2, -30(s1)
                  lbu          s2, 18(s1)
                  slli         s5, s4, 29
                  srl          a0, s7, s7
                  andi         s7, s11, 261
                  andi         a1, t1, 853
                  lb           gp, 22(s1)
                  add          t1, gp, s4
                  or           tp, a1, s10
                  slt          s3, s5, s3
                  sb           s3, -12(s1)
                  sll          tp, ra, t2
                  lhu          a7, -55(s1)
                  lb           t6, -58(s1)
                  lh           s11, -45(s1)
                  nop
                  slt          s3, a1, t6
                  sb           s6, 40(s1)
                  sb           t0, 56(s1)
                  sw           s9, 13(s1)
                  addi         t2, s9, 1155
                  lb           a7, 60(s1)
                  sb           a6, 42(s1)
                  lh           a1, 57(s1)
                  and          s10, a3, a0
                  slti         s8, a6, -1029
                  sb           t3, -32(s1)
                  lbu          a4, 59(s1)
                  slti         a5, t2, -165
                  lw           t0, -31(s1)
                  lhu          a1, -33(s1)
                  lbu          s9, 2(s1)
                  srai         t2, s3, 8
                  sltu         t4, tp, a3
                  auipc        s5, 444491
                  lb           t3, -28(s1)
                  sb           ra, -3(s1)
                  and          a6, a2, s10
                  lbu          t6, -4(s1) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_1+524 #start load_store_instr_stream_4
                  la           t3, region_1+1804 #start load_store_instr_stream_3
                  la           s3, region_1+139 #start load_store_instr_stream_0
                  lhu          s7, -19(s3)
                  sb           tp, 51(s3)
                  la           t0, region_1+1425 #start load_store_instr_stream_2
                  lbu          sp, -409(t3)
                  la           a7, region_1+473 #start load_store_instr_stream_1
                  lb           zero, 40(s3)
                  lbu          s0, -1(s10)
                  lbu          s6, 701(a7)
                  sh           s7, -13(s3)
                  lb           sp, -890(t0)
                  lh           a5, -530(t3)
                  lb           s1, 65(t3)
                  lbu          t4, -8(s10)
                  sh           tp, -16(s10)
                  sb           a6, 15(s10)
                  sw           a0, -37(a7)
                  sb           s1, -704(t0)
                  lbu          s5, -907(t3)
                  sh           s8, 39(s3)
                  lbu          s0, 546(a7)
                  lbu          t2, -10(s10)
                  sb           a0, -45(s3)
                  sb           t5, -155(a7)
                  lhu          a5, 119(t0)
                  sb           a3, -1195(t0)
                  sh           zero, -1318(t3)
                  lb           zero, 257(t0)
                  lbu          a5, 47(s3)
                  sh           s3, -27(a7)
                  lhu          t4, -6(s10) #end load_store_instr_stream_4
                  sb           s10, 1071(a7)
                  lbu          s9, 20(s3)
                  lhu          s7, 105(a7) #end load_store_instr_stream_1
                  lbu          s1, -50(t0)
                  sh           a4, 7(s3)
                  sb           a2, -900(t0) #end load_store_instr_stream_2
                  sh           zero, -370(t3) #end load_store_instr_stream_3
                  lhu          s9, -31(s3) #end load_store_instr_stream_0
                  la           t3, region_0+97 #start riscv_load_store_hazard_instr_stream_2
                  lh           a1, -91(t3)
                  sh           s2, 5(t3)
                  lhu          a0, 5(t3)
                  lbu          s11, -14(t3)
                  lbu          t6, 109(t3)
                  lh           a0, 109(t3)
                  lhu          s5, 109(t3)
                  sb           s9, 78(t3)
                  sltiu        s10, a6, -1248
                  nop
                  sb           s6, -75(t3)
                  lh           a7, -75(t3)
                  lbu          s2, 19(t3)
                  sw           s0, 19(t3)
                  srai         s6, a3, 21
                  lbu          s8, 165(t3) #end riscv_load_store_hazard_instr_stream_2
                  la           s11, region_1+1214 #start load_store_instr_stream_2
                  la           t4, region_1+622 #start load_store_instr_stream_0
                  la           s4, region_1+1791 #start load_store_instr_stream_1
                  sh           a1, -206(s11)
                  lb           a7, 67(t4)
                  la           tp, region_1+1764 #start load_store_instr_stream_3
                  sb           s3, -10(s4)
                  sb           a0, -16(tp)
                  lh           s0, 230(s11)
                  lw           gp, 154(t4)
                  lb           s6, 62(s4)
                  lhu          zero, -50(tp)
                  sh           tp, -194(s11)
                  lhu          s10, 44(tp)
                  sh           s0, -57(s4)
                  sb           tp, -53(t4)
                  sb           s3, -9(t4)
                  lb           s1, -175(s11)
                  lbu          t2, -62(tp)
                  lbu          a7, 160(t4)
                  sb           s3, -15(s4)
                  lh           sp, -4(tp)
                  lh           s10, -210(s11)
                  sb           s10, -142(s11)
                  lb           t1, 46(tp)
                  lh           a7, 40(t4)
                  sb           s2, 15(s11)
                  lb           s0, 15(tp)
                  lb           t5, 4(s4)
                  lbu          t1, -40(s4) #end load_store_instr_stream_1
                  sb           s0, -97(s11) #end load_store_instr_stream_2
                  sw           t0, 64(tp) #end load_store_instr_stream_3
                  lb           a7, -183(t4)
                  lh           t1, -30(t4) #end load_store_instr_stream_0
                  la           s10, region_1+1581 #start load_store_instr_stream_3
                  la           gp, region_1+367 #start load_store_instr_stream_1
                  lbu          zero, 63(gp)
                  la           t0, region_1+235 #start load_store_instr_stream_0
                  sb           s9, -61(s10)
                  la           a6, region_1+1713 #start load_store_instr_stream_2
                  sb           s3, -78(t0)
                  lbu          zero, 121(t0)
                  lbu          t3, 187(t0)
                  sb           s10, 10(a6)
                  sh           t1, -19(gp)
                  lbu          zero, 4(a6)
                  lbu          t4, -18(s10)
                  lbu          s9, -32(s10)
                  sb           t5, 13(a6)
                  lbu          s11, -60(gp)
                  sh           t4, 117(t0)
                  lb           s5, 5(a6)
                  lbu          s5, -24(gp)
                  sb           s7, 156(t0)
                  sh           t2, 209(t0)
                  lbu          t5, 54(s10)
                  lh           s0, -5(a6)
                  lhu          s5, -13(a6)
                  sh           ra, 35(gp)
                  lbu          sp, 124(t0)
                  lb           a4, 10(s10)
                  lh           s5, -7(a6)
                  sb           a7, -20(gp)
                  sb           s1, 16(a6)
                  sb           s2, 49(gp)
                  lbu          s11, -59(s10)
                  lbu          s11, -29(t0)
                  lb           t5, 15(gp)
                  lb           tp, 251(t0)
                  sh           s11, 63(gp)
                  lbu          s11, -12(gp) #end load_store_instr_stream_1
                  lh           s5, -11(a6) #end load_store_instr_stream_2
                  lb           s3, -12(s10) #end load_store_instr_stream_3
                  sh           a1, -167(t0) #end load_store_instr_stream_0
                  slti         t2, t2, 110
                  sub          a5, a3, tp
                  lui          a7, 899865
                  addi         s4, sp, -717
                  add          s2, zero, s1
                  srai         s7, a3, 27
                  bgeu         gp, s6, 8f
                  blt          s7, s3, 22f
8:                bge          zero, a4, 14f
                  slti         t3, a4, 772
                  sltiu        t3, s9, 1753
                  sltu         t5, s2, s9
                  lui          zero, 1041323
                  addi         t3, s2, -1468
14:               slti         s9, s8, 1289
                  or           s3, s3, s7
                  bge          s10, a0, 28f
                  bne          t2, a4, 20f
                  ori          sp, t4, 1183
                  add          a0, s10, s5
20:               srl          t2, s11, t0
                  bne          t2, a3, 23f
22:               sltiu        t2, t1, 1913
23:               and          t1, s1, s8
                  srli         s2, a1, 11
                  srli         a5, tp, 8
                  xor          s1, s2, t3
                  sltiu        gp, a5, 176
28:               sltu         t0, t6, s5
                  or           tp, gp, s9
                  and          s7, ra, s2
                  xori         s6, s3, 872
                  sltu         gp, s6, s0
                  srli         t1, s2, 26
                  andi         s3, zero, -338
                  slti         t4, s3, 320
                  sll          a1, s6, a5
                  bgeu         s8, tp, 44f
                  beq          s2, zero, 50f
                  bgeu         s4, tp, 43f
                  sra          t0, ra, s7
                  slti         s3, a3, -907
                  add          t2, s11, gp
43:               bne          a2, s11, 61f
44:               slt          s5, ra, t4
                  srli         tp, s9, 29
                  nop
                  sll          t0, s5, t3
                  nop
                  andi         t4, gp, 553
50:               or           s5, t1, t2
                  slti         sp, s6, 467
                  sra          a7, t0, s9
                  bltu         a2, s0, 55f
                  srai         s5, a4, 3
55:               xori         t0, t1, -576
                  srl          a7, s2, s3
                  bgeu         t6, t2, 60f
                  nop
                  add          s9, s2, a4
60:               and          tp, s5, t1
61:               or           a7, t1, s1
                  lui          s1, 386857
                  or           t6, s3, t6
                  sltiu        s9, t3, 147
                  sltu         s8, s7, t0
                  xori         gp, t1, -113
                  auipc        s11, 67371
                  sll          t6, t3, s10
                  slt          t1, sp, a1
                  bge          t0, a3, 84f
                  addi         t2, s10, 154
                  lui          sp, 417506
                  blt          a2, s1, 80f
                  sub          t4, t2, s4
                  sltu         s0, s3, s2
                  bgeu         a0, tp, 77f
77:               lui          a5, 1043955
                  srli         t4, a6, 17
                  blt          zero, s9, 83f
80:               nop
                  sltu         s5, a2, gp
                  nop
83:               lui          t2, 235335
84:               add          a7, t4, s10
                  blt          a5, t4, 95f
                  lui          t6, 375545
                  bgeu         t6, t5, 103f
                  slti         a6, t6, 935
                  xori         s7, s11, 987
                  srai         a4, s0, 22
                  and          s7, s2, s4
                  slli         s7, s4, 26
                  andi         s7, a2, -1100
                  slti         a6, s8, -157
95:               srli         s4, gp, 6
                  bge          s6, a6, 110f
                  beq          s2, a2, 108f
                  lui          s5, 220391
                  blt          s3, sp, 116f
                  bltu         t3, a2, 108f
                  auipc        t2, 245213
                  and          s6, t6, t4
103:              slli         a5, ra, 2
                  srli         sp, a1, 13
                  xor          a4, s9, ra
                  srai         s2, s8, 20
                  slt          t1, a5, a0
108:              srli         s3, s2, 6
                  add          a7, s1, t1
110:              sra          sp, s11, s4
                  xori         a1, a7, -1032
                  sra          t0, a0, a4
                  xori         t3, t1, -856
                  sra          s0, s6, s10
                  lui          t4, 553114
116:              xor          a6, s6, s4
                  andi         a7, s8, 1884
                  xori         s10, t5, -1764
                  sub          a5, s9, s0
                  lui          s5, 316100
                  xori         t1, zero, -2022
                  nop
                  andi         t3, s0, -1410
                  srl          s6, s8, s4
                  srli         tp, t3, 14
                  and          gp, s9, gp
                  beq          t0, s10, 133f
                  srli         t5, s3, 27
                  srai         s4, t6, 14
                  and          t1, t5, s10
                  slti         a4, s2, 120
                  slt          s11, a4, t5
133:              sub          s1, t0, a0
                  slti         s7, a7, -1569
                  nop
                  nop
                  bgeu         t5, t5, 157f
                  sll          s1, t4, s9
                  or           s4, s5, s2
                  bltu         a6, s8, 155f
                  sub          t4, s10, tp
                  srl          t2, s11, ra
                  lui          s9, 363756
                  xori         s1, t5, 660
                  blt          zero, a1, 157f
                  blt          ra, s3, 150f
                  nop
                  bgeu         zero, t2, 163f
                  addi         s3, zero, 1606
150:              beq          ra, t3, 168f
                  bne          s9, a1, 161f
                  srai         s11, s10, 26
                  xor          s2, s2, t3
                  beq          t5, a7, 158f
155:              xor          sp, s10, s4
                  beq          a2, t0, 159f
157:              sra          a6, a2, s5
158:              srl          t2, a2, t2
159:              bltu         t3, a1, 169f
                  bne          a4, s5, 175f
161:              xor          t4, a6, t1
                  sltu         a4, s11, s4
163:              slt          s11, s3, s7
                  nop
                  srai         a1, t0, 6
                  bne          s3, a7, 184f
                  auipc        a0, 809709
168:              add          s8, a4, a3
169:              xor          a6, s5, a7
                  sltiu        t3, s3, -1089
                  and          s1, s8, tp
                  bgeu         s7, s9, 182f
                  bge          s4, a0, 189f
                  srli         s9, a4, 5
175:              xori         s6, t4, 1276
                  auipc        a6, 1030636
                  sll          s4, ra, a7
                  add          sp, t1, s0
                  blt          t1, ra, 185f
                  andi         s1, a0, 967
                  blt          t3, zero, 196f
182:              sltu         zero, t3, a1
                  bne          t4, s11, 190f
184:              srai         s10, s8, 6
185:              sltiu        s4, s8, 855
                  add          sp, a0, s11
                  sll          s8, ra, ra
                  bne          s6, t0, 199f
189:              sll          a7, s1, s2
190:              slti         s3, a4, -1344
                  sltiu        a0, a5, -861
                  auipc        a7, 257217
                  sltu         t5, zero, a3
                  slt          s8, t5, t4
                  sltiu        zero, s7, 1892
196:              addi         t0, t2, -653
                  sll          a6, s0, t4
                  add          t5, s6, s2
199:              srli         s4, s2, 27
                  or           s4, s10, s9
                  bltu         tp, t0, 205f
                  ori          t1, s11, -515
                  xor          s7, ra, zero
                  srai         t4, t5, 10
205:              srl          zero, t4, s8
                  lui          a7, 138260
                  sub          s11, s11, s3
                  slt          t5, t4, s5
                  srli         zero, t3, 5
                  srai         tp, a2, 2
                  add          t6, s8, t3
                  auipc        zero, 870508
                  bgeu         ra, s2, 225f
                  bne          a2, s7, 228f
                  lui          s3, 743188
                  sll          s3, s5, t3
                  slt          t2, s4, gp
                  add          zero, s8, a2
                  srl          s0, ra, sp
                  and          a6, s9, a2
                  blt          a5, s8, 233f
                  lui          s1, 815555
                  andi         s7, s0, 700
                  slli         t1, tp, 22
225:              auipc        t0, 568330
                  andi         zero, s3, 656
                  slli         a6, a6, 5
228:              bgeu         zero, s2, 231f
                  sub          s10, a4, s6
                  sltiu        s2, a4, -1701
231:              xori         s3, zero, -304
                  slt          a1, s5, a7
233:              srli         s1, s5, 19
                  add          s5, a7, gp
                  sll          a7, t2, a5
                  bgeu         a7, t1, 243f
                  auipc        s5, 477092
                  bgeu         ra, s1, 240f
                  ori          s4, a4, -898
240:              slti         t2, a4, 383
                  sub          t1, t6, s5
                  nop
243:              add          sp, t4, a5
                  sub          s11, a5, s10
                  bge          a6, t2, 246f
246:              bltu         s11, s3, 250f
                  sub          a1, a2, s1
                  nop
                  beq          s1, a2, 255f
250:              xori         s0, sp, -1887
                  xori         s7, t6, -1628
                  andi         a4, s4, 2013
                  slt          a5, s11, s7
                  xori         t1, t3, 931
255:              addi         t2, sp, 112
                  bgeu         a4, t4, 271f
                  nop
                  ori          t2, s4, -1632
                  xori         s2, sp, 977
                  sll          s1, zero, s11
                  ori          t3, s8, 1123
                  slli         s0, tp, 15
                  slli         s11, t0, 0
                  blt          ra, a5, 284f
                  slti         t5, a5, 878
                  andi         s6, s0, 497
                  sltu         t3, zero, a1
                  nop
                  slt          a0, t0, s0
                  bltu         s1, s1, 272f
271:              sll          zero, a3, gp
272:              sltu         t6, s0, s11
                  add          s0, zero, s3
                  srl          a6, s1, a0
                  auipc        a1, 245778
                  add          a5, a5, ra
                  beq          zero, ra, 279f
                  srl          s11, s4, a6
279:              sll          s9, s2, t3
                  xori         t5, a2, 557
                  srli         s2, sp, 29
                  srl          a7, t5, s9
                  nop
284:              andi         s7, t3, 883
                  add          sp, s11, sp
                  ori          t0, zero, -175
                  andi         s0, s2, -734
                  sll          s6, s5, t2
                  andi         s6, t5, -211
                  srai         a4, s2, 27
                  sra          t2, a3, s8
                  beq          t5, sp, 310f
                  bltu         a7, sp, 307f
                  xori         s1, s7, -205
                  sra          s11, s8, a2
                  slti         s2, t0, 1283
                  slt          s10, t0, t0
                  addi         s9, tp, -1686
                  add          t3, s3, t3
                  lui          t3, 817980
                  beq          s11, a0, 318f
                  andi         s6, a6, -411
                  sll          t6, t6, s5
                  srl          s5, t1, tp
                  beq          t5, sp, 313f
                  srli         s6, s10, 15
307:              ori          s9, a5, -533
                  lui          a5, 743799
                  sltiu        s5, a5, -714
310:              bgeu         s3, s8, 322f
                  sltu         s3, s7, s4
                  ori          sp, gp, 1848
313:              xor          s4, t5, a5
                  bge          zero, a6, 329f
                  ori          a5, t1, 1923
                  xori         a0, s10, 272
                  nop
318:              sub          s3, sp, a7
                  slt          s6, a4, s8
                  bltu         t6, t6, 322f
                  xori         t6, a3, 611
322:              srli         s1, s11, 8
                  srai         s11, s0, 8
                  srl          s8, sp, s2
                  auipc        a1, 341309
                  sub          t1, s4, a3
                  blt          t0, s11, 345f
                  auipc        sp, 528290
329:              slt          s5, s0, s3
                  sltiu        s4, a0, 1203
                  or           a4, s10, t5
                  addi         t5, zero, -1813
                  sltu         s0, a0, s7
                  nop
                  sltiu        s9, s3, -73
                  nop
                  bgeu         a1, s11, 343f
                  sll          a7, s3, s4
                  sltiu        s4, s2, 1362
                  or           t5, a5, s2
                  blt          tp, s8, 356f
                  sltiu        t5, s11, 1701
343:              or           s2, gp, a7
                  xor          a4, s6, t5
345:              srl          s9, s10, sp
                  ori          t5, tp, 1553
                  srai         s5, t3, 19
                  sltiu        s5, a0, -2022
                  srli         zero, a1, 8
                  bge          s10, s9, 357f
                  auipc        s7, 1032287
                  auipc        a4, 378773
                  srli         s1, a1, 17
                  xor          t4, s3, zero
                  slt          gp, s3, t4
356:              and          tp, t5, t2
357:              sra          s1, zero, t3
                  srai         sp, zero, 3
                  blt          s5, zero, 369f
                  bge          s6, a0, 364f
                  or           a1, a6, a4
                  lui          a5, 28644
                  slti         s3, s2, -827
364:              srli         s6, ra, 10
                  slt          s7, s8, t6
                  andi         tp, s1, -756
                  ori          t5, t3, -562
                  andi         t4, s10, 763
369:              bltu         s10, a4, 373f
                  slt          a0, a7, t5
                  and          t4, s4, s2
                  sll          s11, s9, ra
373:              slli         a1, s1, 17
                  ori          s3, a6, 1023
                  blt          s7, tp, 379f
                  add          s6, t4, s3
                  slt          s5, tp, sp
                  sltu         s0, t0, s9
379:              andi         s9, s2, -248
                  slti         a5, s8, 1901
                  bgeu         t1, s7, 389f
                  nop
                  sra          a6, s4, t6
                  sub          a7, a3, s3
                  srli         t1, a7, 23
                  sltiu        sp, s1, -169
                  xori         sp, s11, 340
                  lui          s11, 730060
389:              addi         s1, s1, 1584
                  sra          a4, s2, s1
                  la           t0, region_1+1773 #start riscv_load_store_rand_instr_stream_3
                  or           t5, s11, s1
                  srl          s5, a4, t2
                  lui          a4, 761763
                  lui          zero, 173090
                  or           s9, s6, s9
                  srai         a1, a3, 5
                  nop
                  xor          s1, s6, s3
                  srai         s0, a4, 0
                  add          s4, t3, s6
                  lbu          a7, -13(t0)
                  sw           t4, 15(t0)
                  auipc        s5, 794322
                  slti         zero, tp, -97
                  lb           t2, 9(t0)
                  sb           a2, -6(t0)
                  lbu          a5, -12(t0)
                  lb           s6, -2(t0)
                  xori         s5, a7, 206
                  lh           zero, 11(t0)
                  lh           a4, -7(t0)
                  xor          t3, a3, s1
                  sb           a0, 0(t0)
                  lb           s9, 14(t0)
                  auipc        a1, 505798
                  or           tp, s7, s0
                  sb           a3, -3(t0)
                  add          s7, s5, s11
                  lbu          t2, -11(t0)
                  lh           s9, -11(t0)
                  xori         gp, a1, -1453
                  xori         t5, zero, 2005
                  lui          s1, 210450
                  lbu          a1, -8(t0)
                  sb           t6, -14(t0)
                  srai         s1, t5, 23
                  sra          s5, s8, s11
                  srl          t5, s9, tp
                  nop
                  xor          zero, s2, t6
                  addi         s3, s1, 842
                  lbu          s7, -3(t0)
                  sb           a5, -2(t0)
                  add          tp, t1, t1
                  lbu          t5, -11(t0)
                  srl          s8, tp, s11
                  lbu          s9, 12(t0)
                  lbu          a5, -16(t0) #end riscv_load_store_rand_instr_stream_3
                  xor          s7, t0, s2
                  blt          s5, s9, 406f
                  lui          a6, 522336
                  sll          zero, t4, s1
                  srl          a0, a4, s10
                  slti         s3, sp, -387
                  xori         s6, s11, -1748
                  add          t1, s1, s8
                  xor          s8, t2, s3
                  addi         a0, a3, -1923
                  ori          a6, a7, 1385
                  bgeu         a3, t6, 413f
                  beq          s9, t6, 415f
                  sltu         sp, t2, a0
                  xor          s11, a4, s7
406:              nop
                  slli         s0, t3, 20
                  slli         gp, t1, 16
                  and          s2, s4, s11
                  sub          s5, s0, a0
                  srli         t3, t5, 20
                  bgeu         t0, a0, 424f
413:              sltiu        s10, t1, -1027
                  srl          s1, a7, t1
415:              auipc        a6, 430376
                  and          t5, s6, s3
                  sra          zero, s2, ra
                  bgeu         t0, gp, 424f
                  slt          s2, a1, s0
                  auipc        zero, 98357
                  sub          s5, s10, a4
                  slti         s11, s9, 303
                  slt          a6, t4, s1
424:              auipc        t0, 330591
                  lui          s4, 150982
                  sltu         a1, tp, t3
                  bgeu         a0, a6, 433f
                  and          a1, tp, a4
                  addi         s8, a0, -1762
                  bne          t4, a5, 433f
                  and          s5, s5, t3
                  blt          a2, s0, 433f
433:              or           s8, a5, t0
                  slli         t3, tp, 17
                  lw           t1, 4(a2)
                  slli         t3, t0, 24
                  sub          s4, tp, a0
                  srl          s10, s11, s7
                  slti         t3, a0, -1069
                  addi         a2, a2, 28
                  sltiu        gp, s3, -871
                  addi         s8, s3, 513
860:              addi x15, x6, 1
860:              jalr x15, x15, 0
sub_1:            and          s10, gp, zero
                  bgeu         t5, a0, sub_1_stack_p
sub_1_stack_p:    addi         a2, a2, -16
                  sw           t1, 4(a2)
                  srl          s11, t3, s0
                  sra          zero, s9, s6
                  la           a4, region_0+889 #start riscv_load_store_rand_instr_stream_1
                  sll          s1, s3, t0
                  slt          s4, a4, gp
                  slt          s9, a0, s9
                  srli         s7, a0, 12
                  nop
                  lbu          a6, 0(a4)
                  lh           s4, -3(a4)
                  ori          gp, s7, -404
                  lb           t0, 8(a4)
                  sltiu        s3, a6, 659
                  lb           a6, -13(a4)
                  srai         s5, zero, 13
                  lbu          s7, -14(a4)
                  sh           a3, 7(a4)
                  srli         s6, t5, 14
                  lb           a5, 10(a4)
                  sltu         a0, s3, a1
                  slti         gp, ra, 1723
                  sb           s7, -16(a4)
                  lb           t3, 6(a4)
                  lbu          s1, -6(a4)
                  or           a0, tp, s4
                  slt          s7, s4, t5
                  ori          s1, zero, -324
                  lbu          tp, 10(a4)
                  lb           s10, -8(a4)
                  sh           s6, -13(a4) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_0+1281 #start load_store_instr_stream_1
                  la           t2, region_0+25 #start load_store_instr_stream_3
                  lbu          s2, -188(s11)
                  la           t5, region_0+1106 #start load_store_instr_stream_2
                  lbu          a7, -22(t2)
                  lhu          a0, 12(t5)
                  lb           zero, -235(s11)
                  lb           s2, -3(t5)
                  lbu          s1, -23(t2)
                  lbu          s10, -4(t5)
                  lb           t0, 43(t2)
                  lb           t3, -114(s11)
                  la           t1, region_0+1071 #start load_store_instr_stream_0
                  lb           a0, -1051(t1)
                  lhu          gp, 25(t2)
                  lb           a7, 790(t1)
                  sb           a1, 8(t5)
                  sb           s3, 34(t2)
                  lb           a1, -208(t1)
                  sb           t3, -8(t2)
                  sh           s6, -139(s11)
                  lb           a5, -13(t5)
                  sb           a5, 512(t1)
                  sb           s10, -190(t1)
                  lb           a0, -112(s11) #end load_store_instr_stream_1
                  sb           a1, 8(t5) #end load_store_instr_stream_2
                  lb           gp, 8(t2) #end load_store_instr_stream_3
                  lbu          t0, -920(t1) #end load_store_instr_stream_0
                  la           sp, region_1+210 #start riscv_load_store_rand_instr_stream_0
                  srai         t6, s0, 13
                  lb           s1, 4(sp)
                  and          s7, zero, a7
                  lh           a6, -6(sp)
                  lhu          s7, -6(sp)
                  srai         t5, t1, 8
                  lb           s5, 13(sp)
                  lb           t3, 9(sp)
                  or           a7, sp, s4
                  sltiu        s11, s9, 1817
                  auipc        a5, 581355
                  srli         tp, s11, 2
                  srl          s7, s8, s7
                  sra          s2, ra, s0
                  srli         s6, s3, 17
                  auipc        tp, 280031
                  sra          a1, ra, a0
                  auipc        s2, 922555
                  sb           s2, -15(sp)
                  lbu          t5, -1(sp)
                  lui          t0, 916699
                  lb           s10, -11(sp)
                  sb           zero, -6(sp)
                  sb           sp, 15(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+1269 #start riscv_load_store_hazard_instr_stream_1
                  lh           s9, 179(s11)
                  nop
                  sb           t4, 179(s11)
                  lb           gp, 30(s11)
                  sb           s8, 30(s11)
                  lb           a7, 30(s11)
                  sb           s1, 30(s11)
                  lbu          s2, 612(s11)
                  lb           t3, 612(s11)
                  lb           s6, 612(s11)
                  lh           s1, -997(s11)
                  lbu          s1, -997(s11)
                  ori          t5, t5, 1957
                  lb           gp, -997(s11)
                  sra          s3, s8, ra
                  sb           a5, -1102(s11)
                  sb           gp, -1102(s11)
                  lbu          tp, -1102(s11)
                  lbu          t0, -1102(s11)
                  sb           t4, -1102(s11)
                  lb           s4, -1102(s11)
                  sb           a0, -1102(s11)
                  lb           t5, -1102(s11) #end riscv_load_store_hazard_instr_stream_1
                  sub          t2, s9, a7
                  sll          a0, s8, a1
                  srai         s6, a0, 6
                  sll          s2, t5, s6
                  bne          s4, s2, 10f
                  auipc        a7, 621499
                  sltiu        t1, s9, 467
                  srl          s11, a7, s9
                  lui          s3, 412973
                  bne          a4, t5, 28f
10:               slti         s2, s6, -633
                  xori         s6, t4, 1206
                  xor          t6, s1, s8
                  bltu         t4, t4, 24f
                  nop
                  sub          a0, s8, t1
                  bne          zero, s1, 30f
                  add          t4, a1, s3
                  nop
                  auipc        sp, 587087
                  xori         a1, t5, 444
                  sra          a0, a4, a0
                  sltu         gp, s3, a3
                  xori         s4, s8, 489
24:               xor          s2, s9, t2
                  sll          a6, t3, s2
                  addi         s6, sp, 1022
                  srl          tp, s6, ra
28:               sltu         t2, a3, gp
                  bgeu         s11, s7, 40f
30:               srl          s1, s10, a5
                  bne          t0, s10, 48f
                  bgeu         s8, sp, 33f
33:               add          s5, ra, t1
                  lui          sp, 138222
                  sra          a4, t0, t5
                  andi         a1, tp, -118
                  bge          s5, a1, 50f
                  sub          t6, s6, s9
                  auipc        sp, 598049
40:               sltu         a6, s6, s4
                  bgeu         s6, a7, 49f
                  sltu         s4, s9, s5
                  xori         s3, t6, -88
                  slti         t6, s7, -1316
                  xori         t0, s4, -720
                  ori          gp, t1, -14
                  beq          a4, s5, 51f
48:               add          t1, a0, t5
49:               srl          s9, gp, a1
50:               or           a5, s3, a3
51:               slt          a5, s7, zero
                  and          s10, s5, s11
                  slli         s0, a7, 19
                  srai         s6, s2, 26
                  slli         t0, s3, 25
                  addi         a6, s8, 1323
                  auipc        t5, 1021672
                  blt          t5, a5, 59f
59:               bgeu         t2, t5, 77f
                  srai         t4, tp, 25
                  sltu         a4, a0, t0
                  and          t1, s4, s11
                  sra          s2, s8, s8
                  xori         s5, s2, -1198
                  sltiu        t5, t0, 1808
                  slt          t4, a1, s0
                  slt          s2, s9, a2
                  blt          a7, s8, 81f
                  xori         sp, t3, 1686
                  sub          a6, s11, a1
                  sub          s5, t6, gp
                  slt          a4, t2, tp
                  slli         s0, a1, 24
                  auipc        s4, 414564
                  sll          t1, s11, t6
                  add          sp, a5, a6
77:               nop
                  xori         s5, a3, 487
                  ori          a0, s7, -1425
                  srli         s6, zero, 22
81:               sra          s5, a6, a7
                  andi         t5, s6, 1978
                  slt          zero, s7, s7
                  srl          a0, a3, t1
                  bge          s8, s3, 104f
                  andi         t1, s3, 989
                  sll          s5, a7, tp
                  slti         t4, t3, -1448
                  srli         s4, s9, 21
                  xori         t1, s0, 128
                  blt          s6, sp, 107f
                  la           s10, region_1+1699 #start riscv_load_store_hazard_instr_stream_0
                  sb           s10, -180(s10)
                  sltu         zero, a6, a0
                  lb           a5, -180(s10)
                  sb           s7, -180(s10)
                  sb           a7, -180(s10)
                  sb           t0, 162(s10)
                  lb           s0, 162(s10)
                  slt          s1, s11, t1
                  lui          s6, 937768
                  lh           a4, -1549(s10)
                  sb           a1, -1549(s10)
                  sb           a5, -582(s10)
                  lh           s1, -451(s10)
                  lui          s4, 372097
                  sh           s3, -1099(s10)
                  addi         s0, s0, -1485
                  lbu          t4, -934(s10)
                  lbu          s6, -934(s10)
                  sb           a6, -1544(s10)
                  sb           gp, -1544(s10)
                  lb           s2, -1544(s10)
                  sh           t6, 103(s10)
                  addi         t3, sp, -1859
                  sll          gp, t2, gp
                  lbu          t0, -892(s10) #end riscv_load_store_hazard_instr_stream_0
                  andi         a4, t5, 584
                  bltu         ra, s9, 101f
                  beq          s1, s11, 106f
                  and          t2, s0, t4
                  lui          s8, 488578
                  bne          s5, s1, 108f
                  sra          s5, s6, gp
                  slti         a7, a1, 163
                  sra          t6, gp, a6
101:              blt          s7, a3, 115f
                  slli         t3, s8, 28
                  bgeu         s9, t2, 117f
104:              bltu         t2, s1, 110f
                  and          s6, t1, sp
106:              srai         s2, t6, 21
107:              bge          s1, t0, 124f
108:              blt          t3, s3, 116f
                  slli         tp, s0, 26
110:              ori          t5, ra, 1000
                  sub          s9, s1, zero
                  sll          a6, s11, s10
                  blt          a5, ra, 119f
                  sub          sp, s6, s8
115:              sra          s2, t6, s5
116:              xor          s0, t6, a4
117:              lui          a7, 503892
                  bltu         s1, a7, 131f
119:              sltu         s10, s4, a1
                  sra          s2, a2, s7
                  slt          t5, s4, s5
                  slti         a4, s6, -1542
                  srai         t5, t3, 17
124:              auipc        tp, 257544
                  slti         t3, a6, 1996
                  sra          s0, s6, s0
                  slli         s1, a4, 27
                  bge          sp, s10, 143f
                  sll          t5, sp, a6
                  addi         t6, a6, -1718
131:              slt          s3, s7, ra
                  and          s2, s0, s10
                  bge          t2, s7, 140f
                  srli         gp, t3, 26
                  auipc        a5, 721228
                  bltu         s4, s7, 144f
                  sltiu        t1, a0, -849
                  lui          a5, 573837
                  xor          a6, a3, a0
140:              addi         s10, tp, -1647
                  xori         s10, s8, 553
                  and          s11, s10, s4
143:              bne          t1, s7, 144f
144:              beq          s5, s7, 159f
                  nop
                  lui          s7, 948072
                  sra          s9, a7, a2
                  bltu         s3, a6, 159f
                  slli         s1, s7, 11
                  xori         t0, zero, 1614
                  sub          s6, s10, a4
                  xor          t6, a4, gp
                  xor          s8, t3, s9
                  ori          a5, a0, -1412
                  bltu         t1, s8, 168f
                  or           t1, t3, a3
                  or           sp, s6, s3
                  sltu         s7, ra, tp
159:              sltiu        a1, a5, -1417
                  addi         tp, a3, 48
                  srai         a6, s5, 1
                  auipc        s3, 611496
                  xori         s11, s1, 1534
                  sub          gp, a3, a4
                  sra          a1, s6, a1
                  beq          s8, sp, 174f
                  and          t4, s2, a6
168:              lui          s3, 947874
                  lui          t2, 589324
                  xori         s6, t0, 989
                  lui          tp, 848978
                  bgeu         t5, t1, 178f
                  srai         s6, t6, 23
174:              ori          t1, a1, -1111
                  add          s10, t1, t6
                  sll          a1, a6, a1
                  sra          s11, s4, s4
178:              sub          s5, t5, a1
                  sltu         s1, t6, a1
                  blt          t6, s0, 194f
                  and          s9, t3, s10
                  andi         s3, a5, 1928
                  slt          t4, a2, s2
                  lui          s7, 634971
                  srl          tp, s0, a6
                  sra          t2, t1, a0
                  ori          s0, s6, -612
                  srai         s3, a2, 28
                  and          s0, s8, a0
                  bge          a3, zero, 204f
                  and          s3, s0, t6
                  sra          s10, s11, a1
                  xori         s6, t6, -778
194:              sll          s4, s6, t5
                  sll          t1, a2, zero
                  xori         a5, a5, -1822
                  srai         zero, zero, 20
                  srl          gp, t2, s2
                  srai         t5, a0, 17
                  sltu         sp, a1, a6
                  sltu         a4, s7, s2
                  bltu         s7, t1, 206f
                  addi         gp, s9, -591
204:              ori          t3, ra, -1127
                  srai         a7, a2, 30
206:              slt          sp, t1, s5
                  sub          a1, tp, s4
                  bne          s3, s0, 225f
                  auipc        s4, 19230
                  or           s5, s10, s2
                  and          s7, s6, a3
                  sll          a5, a2, s10
                  srai         a1, t2, 6
                  bgeu         s2, s3, 215f
215:              xori         s0, a6, -1397
                  slt          s1, s2, a5
                  sltu         s6, s1, s5
                  xor          t6, s5, t2
                  beq          a5, tp, 234f
                  sll          t2, s10, s9
                  blt          s9, s3, 222f
222:              bltu         zero, s11, 233f
                  xori         s4, ra, -775
                  sll          t2, s1, s5
225:              beq          a4, t1, 238f
                  srl          s0, s7, s10
                  ori          sp, s6, 1137
                  addi         sp, zero, -380
                  blt          a0, a0, 235f
                  slli         t3, t0, 9
                  sll          s5, a5, a4
                  and          tp, t4, s7
233:              blt          a6, a4, 249f
234:              and          a1, s8, t4
235:              sll          t4, gp, s6
                  srai         a0, s9, 12
                  lui          a1, 642058
238:              lui          a0, 1041669
                  lui          t3, 677389
                  add          s4, ra, t0
                  bgeu         s5, t0, 249f
                  auipc        s10, 923130
                  sltu         s0, s11, gp
                  auipc        a6, 546649
                  addi         gp, t3, -736
                  srai         t5, a4, 18
                  srai         t6, s10, 5
                  or           a1, s9, a4
249:              nop
                  sltiu        s8, t1, 1421
                  bltu         s0, s7, 259f
                  bge          a1, a0, 267f
                  slti         s11, ra, 126
                  la           s0, region_1+1928 #start load_store_instr_stream_1
                  lbu          gp, -60(s0)
                  la           s5, region_1+1660 #start load_store_instr_stream_0
                  sh           zero, -168(s0)
                  sb           gp, -660(s5)
                  lbu          t2, -881(s5)
                  sb           s11, -3(s0)
                  lb           s8, -431(s5)
                  sb           s0, -19(s0)
                  sh           s0, 8(s0) #end load_store_instr_stream_1
                  sb           s8, 285(s5)
                  lbu          t5, -89(s5) #end load_store_instr_stream_0
                  sra          t2, s1, s9
                  bne          t6, s1, 263f
                  andi         a0, s8, 1145
                  add          s10, t3, t5
                  bge          s10, s2, 269f
259:              slli         s11, a3, 5
                  slli         sp, a1, 6
                  nop
                  or           s6, s6, a3
263:              sll          gp, s3, s11
                  sra          a5, a5, t1
                  ori          t2, s0, 1865
                  slti         a6, s10, 1681
267:              bge          s6, a7, 280f
                  sra          s5, a0, s0
269:              sll          a7, s3, a0
                  addi         a6, a2, 1150
                  bgeu         s1, a0, 290f
                  bge          s1, zero, 289f
                  bge          t4, zero, 287f
                  sltu         s0, t6, a2
                  or           s5, s7, t4
                  sll          s3, a0, gp
                  sub          t3, s5, s3
                  sll          s3, s3, s3
                  xor          s3, s4, s8
280:              bne          sp, t0, 287f
                  sltu         s8, s5, a1
                  nop
                  ori          a6, s11, -1633
                  xori         a7, zero, -236
                  or           s6, ra, s4
                  auipc        t3, 1018980
287:              andi         t6, t6, 1752
                  slli         a6, s5, 17
289:              beq          a1, a3, 293f
290:              ori          t0, a1, 1919
                  xori         t6, a3, 1689
                  lui          t1, 492704
293:              slli         s11, s0, 16
                  lw           t1, 4(a2)
                  or           tp, t5, a0
                  srli         t4, a3, 4
                  ori          a6, a3, 1702
                  addi         a2, a2, 16
                  xor          gp, s8, s7
                  sltu         a7, a3, s11
450:              addi x30, x6, 0
450:              jalr x30, x30, 0
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x13, x12, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x31, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x31, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x31, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x31, x6, ecall_handler
                  li x6, 0x1
                  beq x31, x6, instr_fault_handler
                  li x6, 0x5
                  beq x31, x6, load_fault_handler
                  li x6, 0x7
                  beq x31, x6, store_fault_handler
                  li x6, 0xc
                  beq x31, x6, pt_fault_handler
                  li x6, 0xd
                  beq x31, x6, pt_fault_handler
                  li x6, 0xf
                  beq x31, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

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
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x12, x13, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x13, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x13, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x12, x13, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x12, x13, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x12, x13, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
