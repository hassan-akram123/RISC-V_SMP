.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0x4
                  li x1, 0xf3190806
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x6
                  li x5, 0xd
                  li x6, 0xf2c97a51
                  li x7, 0x0
                  li x8, 0x7be54052
                  li x9, 0xf05c1d7d
                  li x10, 0x0
                  li x11, 0xff822820
                  li x12, 0x75a29205
                  li x13, 0xc
                  li x14, 0x3b58f0d0
                  li x15, 0x80000000
                  li x16, 0xf7b87b18
                  li x17, 0x80000000
                  li x18, 0xf5a215af
                  li x19, 0x1a2cdab6
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x23, 0xfd09366e
                  li x24, 0x1afee5ad
                  li x25, 0xb
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0xfd623ba5
                  li x29, 0xf044404b
                  li x30, 0x0
                  la x31, user_stack_end
main:             xori         a1, s4, 1158
                  la           s5, sub_1
                  sub          a3, s3, t3
                  addi         sp, t2, 1487
                  addi         s5, s5, -897
                  ori          s1, a5, -1928
                  sub          t5, t0, a0
                  srl          t1, a2, a3
                  blt          a6, a0, main_j1 #branch to jump instr
                  srl          a7, gp, s8
main_j1:          jalr         s1, s5, 897 #jump main -> sub_1
                  la           s2, sub_2
                  ori          zero, zero, -1444
                  srli         s3, sp, 27
                  addi         s2, s2, -149
                  andi         a2, ra, 1200
                  srl          s0, a1, gp
                  bltu         s3, s7, main_j2 #branch to jump instr
                  or           a3, t3, t4
main_j2:          jalr         s1, s2, 150 #jump main -> sub_2
                  srl          s7, t6, s4
                  la           s4, sub_2
                  srai         s9, a3, 13
                  nop
                  addi         s4, s4, 833
                  sltiu        gp, tp, 964
                  sub          gp, s3, a2
                  andi         a7, t1, -59
                  sltu         ra, s5, s8
                  slli         t2, s1, 19
main_j3:          jalr         s1, s4, -832 #jump main -> sub_2
                  la           t4, region_1+1164 #start riscv_load_store_rand_instr_stream_0
                  lb           a4, 47(t4)
                  lhu          gp, -54(t4)
                  and          s7, a2, t3
                  sb           a0, -25(t4)
                  sb           t3, 46(t4)
                  slli         ra, s4, 16
                  or           s9, t1, zero
                  xori         a5, a3, 1081
                  xori         s7, ra, -764
                  slt          tp, s7, zero
                  sb           a4, -32(t4)
                  lbu          ra, -51(t4)
                  sb           a4, 45(t4)
                  lh           sp, 30(t4)
                  xor          a2, a2, gp
                  lh           gp, -30(t4)
                  and          t0, tp, a4
                  slti         s4, gp, -920
                  sra          s4, t4, t5
                  nop
                  lb           a0, -63(t4)
                  or           s5, s7, t0
                  srai         a0, s5, 17
                  sra          s2, s11, s9
                  lbu          s1, -53(t4)
                  or           gp, s5, s7
                  add          t1, t5, t6
                  lh           a0, 22(t4)
                  srai         a7, s1, 24
                  sb           tp, 27(t4)
                  lb           t5, 45(t4) #end riscv_load_store_rand_instr_stream_0
                  addi         s2, s1, 77
                  sll          t1, s6, a0
                  or           a2, a1, s3
                  slt          s2, t1, s3
                  sltiu        a2, t6, -1377
                  andi         a7, t2, 1962
                  srli         s10, s7, 26
                  blt          s11, t5, 21f
                  sra          t0, s0, s2
                  ori          tp, t3, -411
                  sltiu        sp, s6, 1046
                  slli         tp, a1, 4
                  bgeu         a1, s2, 32f
                  lui          a3, 783192
                  sub          s5, a6, s9
                  slli         tp, s11, 21
                  sltiu        s8, s11, -1667
                  xori         t0, gp, 1405
                  sltu         t5, a0, t2
                  add          s2, tp, a7
                  sltiu        s10, s11, -579
21:               auipc        s5, 1013061
                  bltu         tp, a3, 42f
                  bne          ra, tp, 25f
                  nop
25:               ori          t4, tp, 1785
                  lui          s11, 861158
                  and          t1, sp, a7
                  xor          s0, tp, ra
                  lui          a2, 761274
                  xori         s0, gp, 133
                  sra          sp, s9, zero
32:               sltu         a1, ra, s1
                  ori          s2, gp, 1254
                  xori         a4, s10, -1309
                  addi         s7, tp, -775
                  slli         s10, t1, 24
                  auipc        gp, 255992
                  bgeu         a2, s9, 45f
                  sltiu        t0, a1, -2025
                  nop
                  auipc        a1, 699064
42:               addi         tp, s5, 770
                  sra          a2, s1, s0
                  srl          ra, s6, a0
45:               lui          t0, 324417
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            bge          t5, a3, sub_9_stack_p
                  sltu         zero, zero, s4
                  auipc        a1, 777430
                  sltiu        gp, a7, 302
                  xor          zero, s0, zero
                  sltiu        a5, a3, 678
sub_9_stack_p:    addi         t6, t6, -36
                  sw           s1, 4(t6)
                  addi         ra, s9, -2031
                  la           t0, region_0+1692 #start riscv_load_store_rand_instr_stream_3
                  slli         a4, s10, 4
                  slt          a5, t0, t5
                  sb           s7, -8(t0)
                  lb           zero, 1(t0)
                  xor          tp, s1, sp
                  slli         a2, ra, 8
                  sltu         s4, t3, t5
                  srli         s11, s4, 23
                  sll          s10, t3, a4
                  sltu         t1, s8, sp
                  srli         sp, s10, 9
                  sll          t2, a1, a4
                  lui          tp, 927516
                  slli         s8, s2, 15
                  lb           sp, 2(t0)
                  lbu          a1, 10(t0)
                  sw           a3, -16(t0)
                  auipc        a4, 768917
                  srl          s8, t2, zero
                  sltu         gp, tp, a5
                  xori         zero, s7, 589
                  lhu          a3, 8(t0)
                  srai         s0, sp, 10
                  xori         tp, t4, 1789
                  lw           s0, 12(t0)
                  slti         a5, s11, -2044
                  and          gp, s11, zero
                  sltiu        s9, a5, -371
                  nop
                  slti         t1, t3, 1316
                  slti         tp, t6, -401
                  lbu          a3, 9(t0)
                  lui          s3, 1035031
                  ori          s5, t5, -1362
                  sb           a5, 14(t0)
                  lb           a5, 5(t0) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+183 #start riscv_load_store_rand_instr_stream_0
                  xori         s4, ra, 1822
                  sub          s10, t1, a0
                  lb           a7, 29(sp)
                  addi         a7, t3, -14
                  lbu          a7, 34(sp)
                  auipc        t2, 119004
                  sb           s5, -52(sp)
                  sll          s3, s11, s7
                  nop
                  or           t1, a7, a6
                  sb           s10, 60(sp)
                  lbu          a5, 41(sp)
                  nop
                  slli         t5, sp, 9
                  sh           gp, -7(sp)
                  xori         zero, a5, -1360
                  andi         t5, s11, -677
                  andi         s4, t1, 1802
                  lb           s7, -49(sp)
                  auipc        s7, 951255
                  lbu          s1, -7(sp)
                  slti         t5, t1, -1978
                  lhu          a0, -21(sp)
                  sb           a5, -29(sp)
                  sb           s0, -27(sp)
                  lh           a3, -3(sp)
                  lb           s7, 22(sp)
                  lhu          s8, 13(sp)
                  xori         ra, s1, -361
                  addi         t2, a2, 1106
                  lbu          a4, 20(sp)
                  sltu         s1, a4, a7
                  addi         s3, a1, 1135
                  sb           s3, 30(sp)
                  srli         s4, t0, 11
                  sub          ra, t3, s4
                  lb           t4, -21(sp)
                  srl          s1, a6, s3
                  auipc        s1, 720816
                  sb           tp, -56(sp)
                  lh           t5, 3(sp)
                  sll          t1, a6, s0
                  lb           a0, -40(sp)
                  addi         s3, a6, 422
                  srli         ra, s2, 30
                  slt          s11, s5, a4
                  lb           a2, 54(sp)
                  sb           a1, -16(sp)
                  sb           a6, 1(sp)
                  lui          a3, 338193
                  lhu          a6, -23(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_1+999 #start riscv_load_store_rand_instr_stream_4
                  lh           s2, 15(s5)
                  nop
                  lb           s4, -8(s5)
                  sb           t3, 13(s5)
                  sh           a3, 11(s5)
                  lw           zero, -7(s5)
                  srli         t0, sp, 7
                  slli         s2, s10, 27
                  lb           t5, -6(s5)
                  lhu          a0, -13(s5)
                  sw           t4, 9(s5)
                  auipc        t0, 120005
                  sh           s4, -7(s5)
                  sw           s3, -3(s5)
                  lb           a7, 16(s5)
                  sb           t4, -14(s5)
                  srai         t4, sp, 16
                  lhu          t4, 15(s5)
                  nop
                  sb           s8, 14(s5)
                  sb           s3, -11(s5)
                  lhu          s3, 15(s5)
                  lbu          t1, -8(s5)
                  add          s11, a4, tp
                  sw           a2, 5(s5)
                  lb           s10, -2(s5)
                  sb           sp, -6(s5)
                  lbu          ra, 2(s5)
                  sll          s11, t1, a5
                  add          s0, t4, s1
                  lbu          a6, -14(s5)
                  lbu          a1, 6(s5)
                  sb           s11, 1(s5)
                  srli         a7, s1, 4
                  nop
                  sh           t5, -9(s5)
                  lh           sp, 13(s5) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+96 #start riscv_load_store_rand_instr_stream_1
                  addi         a6, s1, 407
                  lbu          tp, 67(sp)
                  slt          t4, s8, s7
                  lb           a0, 116(sp)
                  slli         t0, a4, 21
                  sb           t2, -81(sp)
                  sub          s0, a6, s9
                  sh           a4, -74(sp)
                  xor          s1, s11, s10
                  lb           s7, 223(sp)
                  slt          s9, s7, sp
                  srli         t5, a1, 12
                  lb           s10, -29(sp)
                  slti         t1, s7, -388
                  sltu         s5, s7, a7
                  lbu          a5, 141(sp)
                  lh           t2, 136(sp)
                  sb           t6, 192(sp)
                  sb           t1, 70(sp)
                  sltu         ra, s5, t1
                  lhu          t2, 164(sp)
                  sll          t2, s3, t0
                  lui          s4, 350534
                  srli         t4, t6, 0
                  lh           a2, 226(sp)
                  sb           t0, 115(sp)
                  sb           t4, 55(sp) #end riscv_load_store_rand_instr_stream_1
                  la           tp, region_0+198 #start riscv_load_store_rand_instr_stream_5
                  sb           a0, 46(tp)
                  sb           t6, -47(tp)
                  srl          ra, sp, gp
                  lh           t1, 212(tp)
                  sb           t1, 61(tp)
                  lw           gp, 58(tp)
                  sb           s5, 211(tp)
                  sltu         s1, a6, s4
                  sb           tp, -8(tp)
                  lbu          ra, 201(tp)
                  srli         t5, a5, 28
                  lbu          sp, 67(tp)
                  sltiu        ra, s5, 937
                  slt          sp, t1, a5
                  sb           a4, -173(tp)
                  lbu          s9, -83(tp)
                  sb           s5, -131(tp)
                  ori          t5, s3, 1896
                  lbu          a6, 37(tp)
                  srai         a3, a7, 24
                  lhu          t1, -198(tp)
                  sb           t6, 165(tp)
                  xori         s4, a5, 609
                  sb           ra, -67(tp)
                  sb           t6, 0(tp)
                  lh           s10, -150(tp)
                  sh           sp, 244(tp)
                  lbu          s8, 228(tp)
                  lui          s9, 474856
                  sb           t3, -92(tp)
                  sh           a2, 238(tp)
                  and          s8, s6, a1
                  addi         a7, s2, -648
                  lb           t5, -129(tp)
                  lbu          a5, -130(tp) #end riscv_load_store_rand_instr_stream_5
                  sub          t4, a4, t6
                  nop
                  srl          t4, s5, s2
                  slt          a3, a4, s4
                  bne          a2, t5, 10f
                  sll          a2, s8, s11
                  or           s8, a6, a5
                  or           a6, a3, tp
                  srl          s3, s0, a7
                  sll          t5, t4, s7
10:               bne          tp, s3, 18f
                  addi         t2, a2, -1478
                  bgeu         t2, s4, 14f
                  sub          s2, t1, s1
14:               bge          gp, s0, 30f
                  srai         s4, a4, 17
                  bgeu         t4, s0, 21f
                  sra          s5, s6, a0
18:               sll          a6, s6, s1
                  bge          s10, zero, 31f
                  bltu         gp, t3, 40f
21:               sltiu        s10, s3, 1150
                  or           t5, ra, t4
                  sltu         sp, a7, s7
                  bge          s4, s2, 27f
                  addi         ra, zero, -753
                  nop
27:               blt          a4, a2, 34f
                  lui          a5, 160628
                  xori         s0, a0, 483
30:               slt          s10, a3, gp
31:               and          s0, s9, a0
                  or           s7, t2, s2
                  srl          s3, s0, t4
34:               andi         a2, s6, -1370
                  bgeu         t6, a5, 40f
                  slli         a0, a1, 31
                  bne          s4, t3, 42f
                  lui          t5, 740552
                  srai         t5, ra, 5
40:               xori         s5, t3, 653
                  sll          ra, a6, t6
42:               bne          s3, s1, 58f
                  srai         s1, s8, 0
                  xori         sp, s3, 1945
                  slt          t0, t5, s11
                  sltiu        t1, t1, 1117
                  xori         s8, t4, 515
                  lui          gp, 284929
                  bltu         s0, s6, 50f
50:               sub          gp, t4, a7
                  bne          s1, a0, 67f
                  sra          a1, a2, a6
                  lui          t5, 868887
                  slti         t4, t3, 841
                  lui          a1, 307988
                  xori         sp, s8, 373
                  xori         a6, t2, 1717
58:               add          a5, a4, s1
                  and          tp, tp, t2
                  andi         a6, t4, -988
                  ori          s10, t6, -252
                  sub          t5, s0, tp
                  bge          t3, a1, 78f
                  xor          a2, t5, a4
                  xor          s3, a7, s6
                  xor          ra, t2, a2
67:               slt          s4, s6, zero
                  srai         sp, s2, 2
                  slli         a4, s6, 8
                  srl          s0, a6, gp
                  bgeu         zero, tp, 91f
                  bgeu         s8, s9, 86f
                  sltu         gp, t2, t2
                  bltu         s2, s6, 81f
                  and          s3, s8, s11
                  sub          s5, s3, a6
                  srl          a6, s10, a6
78:               nop
                  bne          a1, t5, 93f
                  add          zero, s1, s4
81:               bgeu         s8, t4, 94f
                  xor          s10, zero, s0
                  beq          s10, s9, 92f
                  sra          s10, tp, t3
                  blt          a3, s5, 90f
86:               ori          s9, s8, -801
                  xori         s9, ra, 226
                  sra          s2, s2, t3
                  srai         s7, t0, 19
90:               sltiu        a3, tp, 722
91:               nop
92:               bne          zero, s0, 104f
93:               auipc        tp, 733281
94:               andi         a4, ra, 1906
                  xor          a2, tp, a7
                  bltu         s10, t5, 97f
97:               blt          t2, s5, 114f
                  bgeu         t2, s6, 101f
                  sltiu        t5, t2, -1108
                  xori         a1, t4, -312
101:              bge          t2, s9, 112f
                  blt          t5, s2, 104f
                  or           t0, t0, t5
104:              srli         t1, a7, 13
                  xor          sp, s10, a5
                  addi         a3, t2, 1839
                  srli         s2, s1, 9
                  blt          t1, t5, 120f
                  sltu         s8, s3, tp
                  srai         sp, a5, 9
                  xor          a6, ra, a2
112:              srai         a2, s11, 4
                  slti         tp, s6, -507
114:              xor          a2, s7, t2
                  blt          tp, s1, 122f
                  bge          t4, t2, 121f
                  bltu         ra, t5, 137f
                  sra          t4, t0, a6
                  xor          s8, s10, s4
120:              and          t1, a2, t0
121:              sub          s0, a4, a6
122:              xori         s5, s10, -458
                  sll          a7, a5, a2
                  sll          s2, s10, s0
                  auipc        a1, 443031
                  addi         s3, s6, -575
                  sub          sp, tp, s9
                  sltu         a7, t2, t4
                  srl          sp, t1, t2
                  slti         s11, s3, 936
                  addi         t0, zero, 243
                  sltu         a7, s2, a3
                  ori          a2, t1, -1022
                  ori          s0, s0, 953
                  bge          t4, ra, 147f
                  bltu         t5, s3, 156f
137:              bne          a2, s6, 143f
                  beq          s6, s4, 146f
                  beq          gp, zero, 146f
                  or           a4, a2, a1
                  xori         tp, s3, -1559
                  sltu         a0, s0, ra
143:              lui          s7, 217868
                  addi         zero, a6, -59
                  and          a2, s11, s6
146:              sub          a5, a5, s2
147:              bge          s9, t5, 159f
                  blt          s10, a3, 149f
149:              bltu         a0, t1, 154f
                  bge          s10, s11, 166f
                  or           t4, sp, s1
                  or           a2, sp, t3
                  xor          a3, tp, s7
154:              add          t4, s8, ra
                  bge          s11, s5, 166f
156:              ori          t1, t4, -1428
                  sll          a0, a3, a3
                  blt          s2, t2, 163f
159:              bge          s2, t6, 173f
                  ori          t5, tp, 1543
                  xor          t1, s11, s0
                  beq          a3, a6, 171f
163:              sltiu        t2, a6, -1820
                  sub          a4, s1, a1
                  sub          t1, a0, gp
166:              lui          zero, 373679
                  bltu         t4, a1, 174f
                  slli         s11, a2, 1
                  blt          s5, a4, 174f
                  xor          s0, ra, ra
171:              blt          a5, sp, 172f
172:              sub          t0, a4, s5
173:              bltu         a3, a2, 188f
174:              add          zero, t2, ra
                  xor          t4, s5, a7
                  srai         a1, t1, 21
                  srai         s1, gp, 4
                  beq          t5, s7, 191f
                  srai         s8, t0, 23
                  auipc        s5, 635998
                  sub          a1, t6, tp
                  bge          t5, t1, 199f
                  srli         s10, t6, 9
                  slti         s7, t3, 917
                  xori         s2, t4, -244
                  srli         s4, s8, 10
                  bge          tp, t3, 199f
188:              auipc        a1, 607027
                  srai         a1, s6, 26
                  srai         s7, a0, 15
191:              slt          tp, a4, t4
                  srl          a7, t5, s5
                  slt          t2, a4, t0
                  srai         t2, gp, 8
                  and          s1, a5, gp
                  add          s1, a1, s9
                  or           a6, tp, s7
                  add          a3, s4, a0
199:              auipc        s4, 38548
                  xor          zero, a3, s3
                  bge          a1, t3, 204f
                  sltiu        ra, a5, 1955
                  ori          t1, s4, 1231
204:              bgeu         zero, t1, 220f
                  andi         ra, s11, 519
                  sltiu        tp, s1, -1950
                  bne          t0, s9, 210f
                  sltiu        s1, s4, 1220
                  ori          a0, s2, -724
210:              add          a5, a1, s8
                  xor          ra, t0, t0
                  srai         s4, a1, 2
                  beq          ra, sp, 229f
                  srli         s2, s8, 10
                  andi         a6, tp, -1890
                  sltiu        s0, s9, 2015
                  bgeu         a0, a5, 224f
                  sra          a5, s2, s1
                  sll          a5, s3, a6
220:              sra          a4, s9, s8
                  or           t2, a4, s0
                  sltiu        sp, a0, 1349
                  sub          tp, t0, a5
224:              srl          s5, a0, t1
                  xori         a3, a2, -592
                  and          a4, a6, s4
                  auipc        ra, 913154
                  xor          s0, s11, t3
229:              sub          s11, s8, t3
                  bne          a6, s6, 232f
                  bne          a2, s2, 245f
232:              or           zero, a2, a0
                  bgeu         s1, gp, 235f
                  xori         a5, s3, 517
235:              slti         s11, s3, -1427
                  bne          s2, a0, 243f
                  add          zero, s6, s4
                  blt          t2, s0, 254f
                  nop
                  blt          t6, t6, 256f
                  slti         s5, s0, 734
                  beq          t5, s2, 245f
243:              auipc        ra, 19436
                  srl          t5, a7, s3
245:              andi         s9, a3, 1871
                  beq          s2, a7, 251f
                  bge          s5, s10, 256f
                  sltu         a6, s3, t0
                  blt          t1, a0, 255f
                  srl          ra, gp, ra
251:              bge          s0, a0, 256f
                  auipc        a1, 16417
                  srli         a4, a2, 4
254:              slli         a7, s3, 6
255:              add          s11, t5, s0
256:              srl          s9, s11, s4
                  beq          a6, t6, 269f
                  andi         tp, s4, -1518
                  slti         s10, a2, 1040
                  auipc        ra, 514252
                  bge          sp, s1, 262f
262:              xor          sp, a7, t6
                  srai         s3, a1, 19
                  ori          t1, a5, -1421
                  bgeu         a6, s7, 285f
                  auipc        s2, 988698
                  xori         t4, s9, -1994
                  slli         s7, s11, 20
269:              blt          t0, s8, 281f
                  xori         gp, t6, 757
                  xori         s8, s10, 227
                  ori          a1, s0, 1467
                  sub          tp, s11, s8
                  sll          a4, t6, a0
                  and          a0, s5, a5
                  nop
                  slli         s3, a7, 19
                  auipc        s10, 980861
                  xori         t2, t2, -442
                  or           s4, sp, s4
281:              bltu         s7, t4, 294f
                  bltu         s1, tp, 296f
                  nop
                  lui          s1, 908497
285:              addi         zero, a4, -356
                  beq          s9, a1, 297f
                  slt          s8, s5, s10
                  srli         gp, a7, 15
                  nop
                  sll          s0, s3, t4
                  lui          s2, 522412
                  slti         a0, s8, 1336
                  bne          a3, t1, 308f
294:              addi         s1, t6, -220
                  bltu         a2, t5, 297f
296:              auipc        a4, 98383
297:              beq          t4, s5, 317f
                  slli         t1, t5, 5
                  sltu         gp, s11, s7
                  and          a4, s3, s5
                  srl          s10, gp, t4
                  bltu         t2, sp, 307f
                  sltu         t2, t6, t0
                  xor          s0, t1, t6
                  add          s9, ra, t1
                  xori         a3, t1, -1391
307:              sra          s5, t3, zero
308:              beq          a5, tp, 315f
                  slti         s1, t5, -360
                  nop
                  or           sp, t5, s6
                  slli         s4, s10, 15
                  bge          a7, a7, 327f
                  beq          t0, zero, 319f
315:              bne          a6, a4, 332f
                  ori          tp, t0, 1238
317:              srli         tp, s3, 13
                  srli         s4, t1, 22
319:              andi         zero, t4, -1037
                  slti         t0, a7, -636
                  blt          s2, sp, 322f
322:              auipc        a1, 601907
                  sra          sp, a0, s3
                  lui          a3, 662982
                  blt          s9, t2, 337f
                  beq          a0, s1, 333f
327:              sra          s10, a6, s2
                  add          s10, t2, tp
                  slli         s4, a4, 31
                  sltu         s4, zero, t4
                  andi         t1, s9, 15
332:              beq          s9, t5, 340f
333:              sltiu        sp, t4, 1001
                  sltu         t1, a2, sp
                  xori         a7, a4, 1537
                  nop
337:              lui          s5, 781265
                  slt          a2, t1, s3
                  bne          s9, a2, 341f
340:              slti         a4, s0, -223
341:              sra          a5, s7, zero
                  xori         s1, s10, -1492
                  sub          a5, s1, s4
                  srai         s2, s2, 9
                  slli         s5, a0, 29
                  srli         tp, gp, 13
                  sltu         a0, s7, gp
                  bne          t1, s10, 351f
                  nop
                  srai         sp, s6, 11
351:              sltu         a1, t1, s5
                  sltiu        sp, a7, 180
                  bne          sp, gp, 369f
                  srli         ra, t1, 5
                  or           gp, a3, s6
                  sub          a3, a3, a1
                  beq          s7, a6, 368f
                  sll          s0, t0, t2
                  sra          s10, a1, a6
                  sltu         a6, s4, t6
                  slti         a5, a3, 1671
                  srli         a0, t1, 31
                  ori          s4, a0, -822
                  sub          a3, t4, s9
                  slli         a1, s0, 24
                  addi         t4, s1, -535
                  srli         s11, s6, 6
368:              or           sp, s11, a6
369:              srl          a5, a7, t1
                  srl          a2, s6, s11
                  srai         a0, a1, 31
                  and          tp, a4, t6
                  slti         a5, t6, 887
                  sub          a3, a7, t3
                  xor          s2, s3, sp
                  and          sp, s0, tp
                  bne          t2, s5, 389f
                  sub          a5, s6, s1
                  or           s10, s11, a1
                  sll          a5, t5, t4
                  beq          s7, s0, 384f
                  nop
                  addi         s7, s10, 970
384:              lui          a3, 516484
                  srl          t4, tp, t3
                  srl          a2, sp, zero
                  srai         s11, gp, 24
                  bge          a4, t3, 408f
389:              blt          ra, s1, 397f
                  blt          t3, t0, 395f
                  add          s1, t1, tp
                  slli         a5, t0, 19
                  andi         gp, s1, -149
                  lui          a6, 188712
395:              add          a5, s7, s10
                  or           s4, a2, t5
397:              lui          s2, 427454
                  sub          a2, t3, s6
                  ori          s4, s0, 722
                  andi         s2, s11, -55
                  sll          s5, a0, s5
                  nop
                  sltu         t5, a6, s8
                  add          tp, s2, s3
                  bgeu         s2, a1, 412f
                  sltu         zero, a0, t6
                  add          t4, a4, t5
408:              add          zero, s0, a5
                  auipc        a1, 872105
                  bne          s3, gp, 426f
                  or           tp, a0, s10
412:              lui          t5, 526523
                  add          ra, ra, sp
                  bne          a0, s7, 419f
                  addi         s1, a1, -549
                  andi         s5, s5, 43
                  or           s8, a1, s2
                  bgeu         t5, s7, 434f
419:              sra          s5, zero, t4
                  srl          s11, ra, t5
                  ori          s4, t5, 1739
                  slt          s1, gp, s11
                  auipc        s1, 685095
                  sub          a5, zero, a3
                  add          a6, s10, s2
426:              bgeu         s0, a7, 427f
427:              slti         s3, tp, 943
                  sub          t5, gp, a7
                  bne          t1, a7, 431f
                  ori          a6, s8, 209
431:              sltiu        a6, gp, -689
                  sub          sp, s3, t4
                  srli         a1, s10, 0
434:              and          t5, a4, s1
                  xor          s2, s9, s1
                  and          a7, s6, s1
                  bltu         s10, gp, 444f
                  srai         a3, s10, 0
                  sll          s7, s11, s9
                  srli         tp, a3, 2
                  srli         a1, a0, 27
                  auipc        a3, 755894
                  xori         s1, tp, 1433
444:              sltiu        a6, s2, 384
                  srl          a4, s5, a6
                  sltu         t2, a0, t6
                  add          t1, t6, a4
                  auipc        s2, 736231
                  bgeu         a6, tp, 461f
                  beq          ra, zero, 459f
                  bltu         a5, s11, 471f
                  bltu         zero, a0, 459f
                  sltu         a6, a4, s5
                  auipc        t4, 648642
                  bltu         a4, s6, 468f
                  auipc        a1, 478832
                  srli         zero, t1, 4
                  sub          s9, s10, s4
459:              bgeu         s8, s10, 464f
                  lui          s8, 36571
461:              srai         sp, a0, 4
                  srai         a5, t4, 3
                  srl          t1, a0, a4
464:              bge          a4, t1, 478f
                  xor          s4, s5, s5
                  bne          t2, t2, 482f
                  nop
468:              andi         s5, ra, 2037
                  sub          a4, t3, s5
                  xor          a1, sp, zero
471:              slti         t5, a2, -1014
                  blt          t5, s9, 489f
                  and          a5, s0, s1
                  bne          zero, s11, 476f
                  srl          s4, s6, t3
476:              sub          s7, tp, a0
                  bltu         sp, s10, 491f
478:              slt          s8, t2, a2
                  bge          a6, a6, 491f
                  sub          t2, s7, s4
                  sra          a4, ra, s2
482:              andi         s0, a6, -1502
                  auipc        s9, 961326
                  sra          t2, a6, s11
                  addi         s0, s6, 1765
                  lui          zero, 43902
                  slti         t4, t4, 362
                  lui          t5, 577078
489:              bgeu         s0, ra, 494f
                  xori         s10, a2, 1417
491:              bltu         t4, ra, 497f
                  srli         s9, s10, 20
                  srl          s5, s8, t6
494:              sra          s8, s0, s8
                  sltu         a2, t2, t4
                  sltu         a1, a0, t2
497:              srli         gp, s10, 11
                  bne          s2, s8, 501f
                  xor          a1, s3, a1
                  sra          a1, t6, t0
501:              sltu         zero, t3, t6
                  slli         t0, t5, 31
                  add          s11, s10, gp
                  xori         t0, s7, -301
                  sltiu        t0, t4, 1476
                  sll          s0, t4, t1
                  blt          a2, a2, 508f
508:              slli         sp, s1, 8
                  ori          s3, a6, -257
                  blt          s8, s2, 525f
                  sll          s9, a6, s8
                  sltu         zero, a1, s9
                  andi         s8, s10, 2033
                  nop
                  nop
                  ori          s7, s1, -158
                  bgeu         zero, t0, 537f
                  add          s5, t6, t0
                  sra          s9, a1, a5
                  slti         s9, t3, 582
                  sltu         s4, a6, a0
                  nop
                  sll          s1, t1, t4
                  lui          s0, 196099
525:              sltu         s8, s4, a2
                  andi         s8, t1, 779
                  bgeu         t0, a1, 543f
                  addi         s11, t5, -537
                  srai         a4, s0, 5
                  lui          a7, 777927
                  bltu         tp, t4, 538f
                  srli         s7, s5, 16
                  ori          s8, s5, 439
                  slti         t2, s10, 1093
                  sub          a4, t1, s8
                  and          t2, t2, s2
537:              slt          t0, zero, gp
538:              sub          a4, s9, s2
                  srai         s10, t0, 3
                  slli         a4, gp, 8
                  addi         s7, a4, -1954
                  srli         ra, zero, 12
543:              xori         t4, s7, 7
                  sub          s5, sp, s8
                  sll          s9, zero, a5
                  srl          s10, gp, tp
                  bge          a6, s3, 549f
                  sltiu        a3, a3, 303
549:              sub          s9, gp, a6
                  slli         s9, s1, 17
                  srl          s11, s11, t0
                  bltu         a3, s7, 554f
                  sll          s4, a5, t1
554:              slli         ra, s9, 17
                  add          s9, s4, a3
                  add          a7, s3, s7
                  nop
                  sll          tp, sp, t2
                  bge          a6, a5, 564f
                  bge          t0, a4, 566f
                  srl          sp, a4, t1
                  and          ra, a1, a4
                  blt          zero, a5, 568f
564:              blt          a3, t3, 571f
                  srli         a2, a4, 14
566:              sra          a7, s1, s1
                  srl          s8, t4, sp
568:              ori          s11, s9, -163
                  sltu         s2, s3, s11
                  bgeu         s10, t1, 573f
571:              auipc        t0, 51671
                  ori          s10, a1, 1167
573:              slti         t2, s7, 791
                  bge          a5, a2, 581f
                  srli         s4, tp, 12
                  auipc        a5, 129610
                  beq          s6, ra, 591f
                  srai         t2, t4, 29
                  sra          s3, a5, s0
                  lui          s1, 651949
581:              sll          s5, t5, s4
                  sra          t0, t1, s7
                  lui          s5, 224009
                  sub          a1, s3, s8
                  beq          a5, s2, 597f
                  sltiu        s5, s2, 1157
                  andi         t0, s6, 758
                  xor          a3, a2, t0
                  sll          s2, sp, zero
                  sra          s2, zero, zero
591:              bge          s3, s1, 592f
592:              andi         tp, t6, 2031
                  auipc        a0, 859030
                  ori          s9, a3, 1952
                  xor          a0, s9, s11
                  sll          gp, a5, s10
597:              sra          s0, t2, s8
                  or           tp, zero, s6
                  andi         sp, a5, 955
                  nop
                  srli         a1, a7, 9
                  slli         ra, tp, 8
                  bltu         t4, ra, 606f
                  srl          s5, a5, tp
                  sltu         t0, t4, t2
606:              auipc        t1, 709280
                  srl          tp, t3, a6
                  ori          a5, t3, 1493
                  sltiu        gp, a3, -1600
                  xori         s9, t1, 1794
                  sltu         t2, a3, t6
                  lui          s1, 805054
                  srai         s4, a2, 20
                  blt          s10, s7, 634f
                  bltu         sp, a4, 620f
                  sub          tp, s11, s3
                  slti         sp, s4, 575
                  beq          gp, zero, 635f
                  and          a6, tp, a1
620:              or           t2, a3, s5
                  slt          a5, s1, t2
                  and          zero, a3, a2
                  bgeu         t4, a0, 631f
                  addi         ra, s8, 753
                  srli         t4, a4, 11
                  srli         a5, s6, 11
                  sra          s11, s7, s7
                  bne          a1, a4, 639f
                  xor          s7, a4, a3
                  nop
631:              sll          a1, sp, sp
                  sltu         sp, t4, t4
                  lui          t0, 267448
634:              sltu         a6, a5, s1
635:              srli         t1, t2, 19
                  srli         a0, s11, 23
                  xori         s8, s4, -718
                  slti         a4, gp, -1026
639:              blt          t0, t5, 651f
                  bge          ra, t4, 645f
                  srl          t0, a5, s6
                  srai         s8, t0, 6
                  blt          s5, gp, 655f
                  slli         a1, zero, 9
645:              ori          a5, a5, 664
                  andi         a2, a1, -1386
                  slli         s4, s2, 16
                  slti         zero, a4, -1455
                  sra          tp, t3, s0
                  xor          a0, t6, sp
651:              auipc        a0, 680500
                  xor          t2, zero, s1
                  bltu         t3, tp, 667f
                  add          a4, a5, t4
655:              lui          tp, 340414
                  slti         s3, tp, -45
                  lui          s1, 884170
                  srli         s8, ra, 29
                  and          s11, s4, t1
                  ori          a0, s1, -1981
                  bge          a5, t3, 676f
                  auipc        s11, 107063
                  bge          t2, zero, 679f
                  la           a2, region_1+1278 #start riscv_load_store_rand_instr_stream_2
                  and          t4, s8, s3
                  sb           s5, 385(a2)
                  lbu          s2, -699(a2)
                  ori          ra, a3, 1853
                  sra          zero, s3, ra
                  lbu          a7, -1099(a2)
                  xori         t4, a5, -1108
                  sw           a4, -290(a2)
                  sb           s8, -1064(a2)
                  sll          s2, s3, sp
                  and          s3, a7, gp
                  slt          s1, s11, a1
                  or           s3, s4, t0
                  lbu          a5, 603(a2)
                  srli         a4, t1, 29
                  sh           a7, -162(a2)
                  sh           a0, 54(a2)
                  sll          t4, a7, s7
                  sb           s10, -431(a2)
                  nop
                  sb           s0, -1038(a2)
                  sb           s0, -1262(a2)
                  lhu          t2, -1100(a2)
                  and          tp, s3, t3
                  lb           s11, -694(a2)
                  lhu          s3, -1192(a2)
                  lb           s10, 270(a2)
                  lbu          s5, -771(a2)
                  lb           a3, -1177(a2)
                  sb           t1, -82(a2)
                  ori          s10, t4, -2046
                  ori          a7, t5, 835
                  srl          a0, a2, t4
                  xori         s2, a4, 1050
                  lh           a1, -86(a2)
                  slli         t5, a0, 22
                  lw           a3, -790(a2)
                  lb           a1, -952(a2)
                  or           tp, s4, a1
                  sub          t4, ra, s10
                  lbu          ra, 232(a2)
                  slti         a5, t5, 838
                  sltu         s2, t4, s11
                  srai         ra, a3, 16
                  slt          s4, t6, t1
                  auipc        a7, 199574
                  lb           a5, -1201(a2)
                  sltiu        s3, t0, 1790
                  lbu          tp, -877(a2)
                  lhu          a3, 154(a2)
                  xori         s5, tp, 883
                  xori         s8, a3, -1383
                  lbu          gp, 299(a2)
                  sltu         a5, s2, a7
                  lb           t4, 702(a2)
                  lh           a7, -406(a2) #end riscv_load_store_rand_instr_stream_2
                  ori          a3, s9, -50
                  bge          s6, t2, 674f
                  or           a1, s3, t4
667:              addi         s5, s5, -2026
                  bgeu         a6, sp, 669f
669:              bge          t3, s2, 682f
                  sra          s5, a3, a2
                  slt          s9, a0, t5
                  slti         zero, s7, 1258
                  ori          s11, gp, -1096
674:              slt          a4, s3, sp
                  bne          a3, s7, 691f
676:              sltu         t5, s1, sp
                  bltu         zero, t3, 690f
                  srai         gp, zero, 26
679:              srl          a0, a5, s11
                  xor          s3, a5, t1
                  sltiu        tp, sp, 721
682:              ori          s7, t1, 834
                  slt          a4, s2, t0
                  andi         a7, t4, 470
                  slt          a6, a5, a4
                  bne          t2, s4, 698f
                  auipc        t0, 254705
                  xori         a5, t5, -115
                  lui          a1, 37429
690:              ori          a4, s6, -117
691:              slti         a4, a1, 1824
                  andi         s2, s9, 70
                  lui          gp, 2520
                  sub          s4, s7, s11
                  add          t2, s4, t1
                  srai         a6, s0, 23
                  blt          zero, s7, 708f
698:              sra          a5, s6, s7
                  sra          a4, a2, s11
                  srl          tp, a0, tp
                  xori         t1, s10, 1258
                  auipc        s0, 442873
                  beq          a2, t1, 720f
                  slt          sp, a3, s2
                  slt          a1, s0, s4
                  beq          zero, s7, 722f
                  sltiu        a3, a5, -2
708:              slli         s9, a5, 31
                  lui          a3, 843874
                  bgeu         s11, zero, 712f
                  or           s0, a5, s9
712:              ori          s4, a7, -618
                  and          a5, s0, a3
                  sltu         t5, t2, s9
                  beq          a5, a7, 717f
                  bge          s2, a7, 721f
717:              slli         a4, a2, 12
                  lui          s11, 841526
                  or           s7, s9, s2
720:              sltu         s5, tp, s7
721:              andi         t4, a6, -1060
722:              srai         t1, s3, 31
                  or           s2, s8, t3
                  addi         s0, s2, 534
                  bltu         ra, a6, 741f
                  beq          s4, s10, 746f
                  bltu         sp, a2, 732f
                  add          s7, sp, a2
                  sltu         t5, s11, a1
                  sltu         a4, t5, s9
                  sub          s3, a1, t6
732:              srli         t4, a2, 19
                  nop
                  xor          a2, a2, sp
                  srl          s8, t3, zero
                  bne          t0, a3, 751f
                  srai         gp, a1, 0
                  slli         a4, a1, 27
                  andi         sp, a3, -350
                  or           s4, s3, t1
741:              sub          a6, s8, s1
                  sll          a6, zero, t1
                  andi         a5, s9, 805
                  nop
                  blt          t4, t4, 757f
746:              add          t2, s3, t4
                  beq          s2, t5, 754f
                  xor          a0, a7, s0
                  srli         gp, s4, 12
                  sub          a2, gp, t6
751:              lui          s4, 1000220
                  and          a5, a6, s0
                  sll          s2, s7, t5
754:              bltu         s9, t0, 761f
                  addi         t5, t2, 1201
                  beq          t0, a4, 757f
757:              bne          ra, ra, 762f
                  lui          a2, 1034665
                  and          s5, t5, s6
                  xor          s11, t2, s8
761:              srli         ra, t1, 0
762:              srl          s10, s0, a2
                  beq          t1, t6, 777f
                  srl          gp, a3, t2
                  sltu         a6, a7, s11
                  xor          t2, s1, s6
                  xori         a0, s5, -1739
                  auipc        t5, 967833
                  sub          s2, s11, s0
                  blt          zero, t0, 773f
                  or           zero, t1, s0
                  bge          s8, s7, 773f
773:              beq          s4, a3, 782f
                  slli         s1, a6, 14
                  sra          tp, s5, s3
                  addi         s3, a1, -1056
777:              sll          s8, sp, s0
                  slti         s9, t4, -1353
                  andi         s0, s4, 350
                  slli         a0, s10, 24
                  bltu         t2, s9, 789f
782:              add          s11, s5, s11
                  sltu         a7, s1, gp
                  bge          a1, s11, 791f
                  sltu         t4, s1, s6
                  srai         a6, t2, 0
                  addi         zero, a0, -1839
                  bgeu         s4, s1, 793f
789:              addi         a1, a0, 16
                  sll          s8, a2, s8
791:              slti         a0, t4, -1206
                  sub          gp, t5, t0
793:              srli         tp, zero, 26
                  xor          t2, tp, s4
                  sub          a7, a0, s11
                  or           t5, s11, s3
                  srl          s5, t5, a3
                  bltu         a6, a1, 814f
                  xori         a4, s11, -986
                  srai         a4, s3, 9
                  srl          s4, s2, s0
                  ori          t4, t3, -1104
                  slti         ra, gp, 174
                  xor          tp, s10, a3
                  sltu         ra, a6, s11
                  bltu         sp, s8, 820f
                  beq          sp, t2, 813f
                  srai         s11, a5, 13
                  srl          t2, t1, a7
                  bltu         a2, s5, 830f
                  sra          s2, s4, t5
                  add          ra, s0, ra
813:              bltu         zero, s9, 825f
814:              srl          t2, a3, sp
                  sltiu        t5, t4, -1950
                  srai         a7, a7, 14
                  slti         t5, s7, -1176
                  ori          a0, gp, 59
                  or           tp, a5, a0
820:              blt          a2, t1, 823f
                  add          zero, s4, sp
                  sra          a0, gp, s0
823:              ori          tp, t5, -1475
                  ori          a6, a1, -84
825:              beq          gp, s9, 836f
                  or           a3, s9, t5
                  bgeu         sp, t6, 832f
                  bge          s5, a4, 836f
                  sll          s0, s9, t5
830:              blt          a5, a2, 836f
                  bge          a3, s8, 836f
832:              addi         a7, s8, 1040
                  add          a2, tp, s5
                  blt          t1, gp, 836f
                  srl          a5, a1, sp
836:              slti         a1, t1, 668
                  lw           s1, 4(t6)
                  add          s3, t6, sp
                  nop
                  addi         t6, t6, 36
                  slt          t2, a0, s9
1099:             addi x2, x9, 0
1099:             jalr x2, x2, 0
sub_1:            sll          t1, s10, sp
                  sll          t5, s9, a4
                  blt          a0, s5, sub_1_stack_p
                  slti         s5, a4, -1655
sub_1_stack_p:    addi         t6, t6, -52
                  addi         s7, s11, -277
                  sltu         t0, t2, s11
                  and          zero, t4, tp
                  sw           s1, 4(t6)
                  xor          a2, t3, a2
                  ori          s5, a0, -806
                  slt          a7, t6, a6
                  srl          a4, t6, s3
                  xori         s10, s8, 135
                  and          t1, s5, s6
                  bge          a6, s8, sub_1_j4 #branch to jump instr
                  andi         a1, a7, -1861
                  slti         s10, t6, 1295
                  xor          a7, a7, t3
                  slli         s8, t2, 4
                  xor          s5, a7, s7
                  srai         a3, t3, 30
sub_1_j4:         jal          s1, sub_3 #jump sub_1 -> sub_3
                  sltu         t2, s7, s8
                  sltiu        a0, s7, -829
                  sltiu        tp, sp, -1672
                  blt          a0, t0, 18f
                  and          tp, s0, a7
                  nop
                  bne          s6, a4, 16f
                  addi         s0, s8, 1648
                  srli         a6, a5, 14
                  lui          s3, 747790
                  sra          s8, zero, s7
                  slli         s2, s7, 6
                  sll          s8, s2, t5
                  sll          s4, t2, s6
                  sltiu        s4, a6, 471
                  bne          sp, zero, 16f
16:               slt          s5, a3, tp
                  andi         gp, s6, 954
18:               bge          t5, t5, 22f
                  bne          s0, t6, 23f
                  and          s2, sp, s0
                  bne          a5, t5, 23f
22:               srai         a3, a2, 25
23:               ori          s1, ra, -382
                  slti         tp, s5, 1495
                  srl          s2, t0, t5
                  sub          t1, s10, s8
                  sltiu        t2, a6, -525
                  bgeu         s7, tp, 47f
                  bgeu         a5, t4, 33f
                  and          s11, s9, a4
                  srl          t5, t0, s5
                  addi         a0, s7, -396
33:               and          a5, s7, s11
                  ori          s2, s5, 333
                  and          t0, a7, sp
                  sra          s10, s3, ra
                  sll          t4, ra, s2
                  addi         s1, s11, 846
                  srl          tp, s3, tp
                  bge          t4, ra, 51f
                  beq          s4, a3, 58f
                  sltu         zero, t2, t4
                  sra          sp, s2, s1
                  lui          a0, 128710
                  nop
                  sra          s11, s0, a5
47:               slli         a0, sp, 7
                  blt          s8, a0, 62f
                  ori          s0, t2, -1621
                  sra          a3, t5, a7
51:               sltiu        a2, t1, -1389
                  bne          tp, a0, 54f
                  nop
54:               sll          s9, t5, t6
                  or           s2, s4, s8
                  add          s0, s8, s10
                  beq          a1, s7, 70f
58:               slti         s5, sp, 1182
                  add          t0, t5, s4
                  beq          t2, s2, 78f
                  blt          s11, t0, 81f
62:               sll          t0, a2, s11
                  bne          s8, a4, 74f
                  sll          s0, s6, a2
                  slli         tp, s3, 0
                  andi         t1, t1, 807
                  bltu         a2, t0, 71f
                  and          a7, zero, sp
                  xori         s4, tp, 1735
70:               ori          s8, tp, -581
71:               xor          s3, s8, a2
                  bgeu         a7, zero, 88f
                  sll          a2, s1, s8
74:               bne          a0, s8, 94f
                  blt          s9, a1, 77f
                  xori         t0, a0, 1157
77:               slt          s5, t1, gp
78:               srai         s7, t2, 17
                  or           a6, s3, t0
                  and          a6, a4, s5
81:               bne          t6, s8, 84f
                  sub          s0, tp, sp
                  slt          t0, a6, s3
84:               bltu         s6, t3, 88f
                  addi         s9, a6, 562
                  srai         sp, sp, 3
                  beq          s6, a3, 97f
88:               sll          sp, s8, sp
                  slti         s4, s1, 343
                  bge          a6, t3, 96f
                  andi         gp, a1, -794
                  xor          gp, tp, s8
                  blt          a2, sp, 107f
94:               sra          s9, t6, t6
                  auipc        a3, 565455
96:               sra          s7, ra, a0
97:               and          s4, a2, s7
                  srli         s0, a0, 3
                  nop
                  or           tp, s5, gp
                  sltiu        zero, s0, 1182
                  nop
                  blt          s6, a2, 104f
104:              xori         s0, sp, 288
                  sra          s0, a6, s8
                  ori          a2, a7, -1000
107:              or           gp, s10, s5
                  sltu         a1, a5, a4
                  srai         a5, zero, 13
                  beq          a2, t5, 114f
                  add          s11, ra, s9
                  or           a3, a0, a7
                  add          s5, s4, t2
114:              addi         t5, t2, -1363
                  sll          sp, sp, s7
                  sltu         s1, t2, t1
                  bgeu         s9, s11, 119f
                  bge          s10, s6, 119f
119:              addi         a4, a0, 1232
                  lui          s3, 771495
                  lw           s1, 4(t6)
                  auipc        s7, 932536
                  sltiu        s2, s11, -726
                  andi         s4, a0, 42
                  srai         s9, t1, 9
                  lui          s0, 203939
                  sltiu        s0, a5, 7
                  addi         t6, t6, 52
                  srai         gp, s7, 12
                  sra          s2, gp, t5
154:              addi x4, x9, 0
154:              jalr x4, x4, 0
sub_6:            slt          ra, ra, a5
                  auipc        a7, 243223
                  lui          s9, 303046
                  xori         s5, s4, 854
                  addi         t6, t6, -36
                  xor          tp, a4, s6
                  xori         gp, a1, 504
                  sw           s1, 4(t6)
                  xori         s9, t2, -1497
                  srli         a5, t2, 8
                  sra          gp, a2, a6
                  slt          s0, a2, a7
                  la           sp, region_0+1871 #start riscv_load_store_rand_instr_stream_6
                  add          t1, t0, t1
                  lbu          t2, 11(sp)
                  slt          a2, t3, a5
                  or           a4, t0, t4
                  addi         t0, gp, -1476
                  slti         a2, a6, 1212
                  sb           ra, -4(sp)
                  nop
                  sub          s1, a7, s1
                  sb           tp, 6(sp)
                  auipc        a6, 383365
                  xor          s1, a4, s3
                  lbu          t5, 3(sp)
                  srl          s3, t6, a2
                  sra          s1, t2, zero
                  lb           a5, 12(sp)
                  srai         gp, s7, 29
                  ori          s1, t3, -1333
                  sub          tp, s9, t6
                  sltu         s7, a1, a5
                  sb           s9, -2(sp)
                  sh           t6, -13(sp)
                  andi         t2, a0, 459
                  xor          ra, s2, s3
                  sra          s9, s1, tp
                  and          s11, t4, a3
                  srli         s10, s2, 23
                  xori         s2, t6, -824
                  sh           gp, 9(sp)
                  lbu          tp, 6(sp)
                  srai         s1, t6, 25
                  srai         s1, t2, 24
                  sub          s4, a4, s9
                  lhu          gp, -1(sp)
                  ori          zero, t6, 1515
                  addi         a3, a5, 749
                  sb           t2, 15(sp)
                  add          s11, ra, tp
                  srai         a5, a6, 17
                  ori          t4, s9, -170
                  sh           s1, -9(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1586 #start riscv_load_store_rand_instr_stream_5
                  lhu          s1, 102(sp)
                  add          s10, t5, s1
                  ori          s11, s1, -1355
                  sb           s6, 363(sp)
                  slti         a5, gp, 1727
                  lbu          s9, 129(sp)
                  lui          s4, 250140
                  lbu          a1, -577(sp)
                  xori         gp, a7, 1992
                  lb           s8, -1273(sp)
                  sh           s4, -564(sp)
                  lbu          t1, 319(sp)
                  sll          tp, s3, tp
                  srli         s1, a1, 12
                  lbu          s5, -1169(sp)
                  lbu          s7, -525(sp)
                  nop
                  xor          s5, sp, a4
                  nop
                  sra          s10, s10, a2
                  andi         s8, tp, -1997
                  sb           t2, -1147(sp)
                  auipc        t1, 591333
                  srl          a3, t3, s7
                  sh           t5, -1038(sp) #end riscv_load_store_rand_instr_stream_5
                  la           t1, region_1+1180 #start riscv_load_store_rand_instr_stream_4
                  lbu          sp, -989(t1)
                  nop
                  lb           a7, -997(t1)
                  sra          tp, s10, t3
                  sb           t4, 498(t1)
                  lh           ra, -718(t1)
                  srai         gp, s8, 14
                  xor          a2, s0, a5
                  lh           a0, -1168(t1)
                  sb           a3, 485(t1)
                  sb           s9, -815(t1)
                  sb           s7, 54(t1)
                  lbu          s5, -677(t1)
                  sb           s9, 137(t1)
                  lb           t5, 675(t1)
                  addi         t2, a7, -1593
                  sh           a2, -134(t1)
                  lbu          a2, -139(t1)
                  sb           t4, -94(t1)
                  lb           gp, 58(t1)
                  sb           sp, 395(t1)
                  sh           s3, -306(t1)
                  lhu          s8, 494(t1)
                  lhu          a1, 418(t1)
                  lbu          s7, 76(t1)
                  sltiu        a7, t4, -1493
                  lb           s9, -578(t1)
                  sh           s1, -320(t1)
                  andi         a0, s7, 469
                  sb           a0, -711(t1)
                  sub          s1, zero, s5
                  and          a2, s2, tp
                  lhu          a0, -972(t1)
                  sra          s8, a7, t1
                  nop
                  nop
                  sb           s11, -1009(t1) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_1+531 #start riscv_load_store_rand_instr_stream_1
                  xor          s5, a0, s7
                  lb           a2, 252(a0)
                  xor          a7, a2, a2
                  sb           a7, 402(a0)
                  lbu          s10, 166(a0)
                  srl          gp, a4, s5
                  sh           a0, 219(a0)
                  lw           a5, -83(a0)
                  nop
                  ori          t1, s7, 440
                  sb           a3, 1462(a0)
                  lbu          sp, 1132(a0)
                  lb           s3, 296(a0)
                  lb           t1, 33(a0)
                  lb           s8, -324(a0)
                  slli         t1, a4, 14
                  nop
                  auipc        a3, 753595
                  lui          s11, 163359
                  sll          zero, s2, s6
                  xor          a6, s3, a6
                  sw           t1, -303(a0)
                  auipc        tp, 141482
                  sh           zero, 859(a0)
                  nop
                  xor          s2, ra, t5
                  lbu          a4, -189(a0)
                  sb           gp, -272(a0)
                  xor          t4, t3, s4
                  xori         a5, a1, 1638
                  srli         s11, gp, 4
                  lb           s0, -119(a0)
                  lh           s4, 1025(a0)
                  lb           s9, 1132(a0)
                  sw           s8, 581(a0) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+459 #start riscv_load_store_rand_instr_stream_2
                  lbu          s2, -192(sp)
                  lb           t1, -223(sp)
                  auipc        s5, 525719
                  sll          a3, s11, s11
                  ori          t4, sp, 683
                  sub          t1, t1, s2
                  lui          a4, 725040
                  lb           a5, 198(sp)
                  nop
                  sb           s3, 168(sp)
                  lb           t2, -254(sp)
                  lw           ra, 157(sp)
                  sb           a0, 86(sp)
                  sb           s4, 72(sp)
                  lhu          s9, 15(sp)
                  sw           s1, -123(sp)
                  sb           a1, 196(sp)
                  lb           s10, -226(sp)
                  srl          t1, t1, sp
                  addi         tp, tp, -1146
                  or           s1, s6, a3
                  xori         a2, a3, -1569
                  addi         s9, t4, 520
                  lb           t4, -121(sp)
                  lb           tp, -64(sp)
                  or           a4, s7, s2
                  sh           s8, -101(sp)
                  ori          s4, t6, -2046
                  lb           a3, 137(sp)
                  andi         zero, s3, -1563
                  lb           a3, 183(sp)
                  add          a0, a5, a0
                  nop
                  sh           t5, 89(sp)
                  lbu          s10, -170(sp)
                  add          s3, s3, a5
                  xor          t5, s3, t6
                  sub          s9, t2, s10
                  ori          s11, t0, 235
                  lbu          a2, -251(sp)
                  lb           s2, -71(sp)
                  lb           s7, 134(sp)
                  sh           a0, 95(sp) #end riscv_load_store_rand_instr_stream_2
                  bltu         s7, t4, 19f
                  sltu         a7, s5, tp
                  srl          s11, s4, a7
                  ori          s5, t2, -897
                  lui          t1, 1006269
                  bne          a3, a1, 16f
                  srai         ra, t5, 0
                  xori         s3, a1, -991
                  ori          t2, t4, 1052
                  lui          a3, 266018
                  bne          a5, s0, 18f
                  srl          a6, t2, t5
                  and          ra, a5, t6
                  add          a1, a6, s5
                  xori         s10, s7, 1766
                  srl          gp, t3, s7
16:               bge          s8, sp, 24f
                  slli         s4, a7, 15
18:               srli         a7, t1, 15
19:               sll          s10, s7, zero
                  auipc        t0, 105084
                  beq          zero, t4, 22f
22:               auipc        t0, 333828
                  bltu         s2, s0, 34f
24:               slli         a1, s6, 27
                  sltiu        a5, s7, -300
                  bgeu         s8, t3, 36f
                  bgeu         s1, a0, 29f
                  add          s0, s9, s4
29:               sltiu        t2, sp, 1457
                  srl          t2, t1, s10
                  ori          s8, s8, 544
                  xori         a1, s11, 997
                  slt          s4, s0, t1
34:               andi         s3, s0, -1649
                  sltiu        a6, s6, -1107
36:               or           t0, a6, a6
                  sra          a6, t3, s7
                  sra          a4, zero, a6
                  bltu         a2, a7, 58f
                  bge          a5, ra, 55f
                  srai         s9, t3, 28
                  bgeu         t3, a6, 55f
                  ori          sp, t1, -654
                  slt          gp, t5, s0
                  xori         a6, a3, -357
                  lui          t4, 135823
                  bge          a0, a4, 59f
                  bge          s5, a5, 58f
                  slti         tp, s11, -833
                  slt          s4, s3, tp
                  slti         a2, a1, -841
                  beq          s8, a6, 62f
                  bltu         ra, a5, 62f
                  slti         a7, ra, -1650
55:               sltu         a7, s0, t0
                  sltu         a5, a1, tp
                  sll          s4, t3, sp
58:               ori          s4, s7, 1166
59:               addi         t1, sp, -750
                  or           s2, t1, s8
                  xor          s10, s6, t4
62:               andi         s3, zero, -40
                  bltu         ra, a5, 65f
                  sltu         gp, sp, a5
65:               sltu         s4, s11, s5
                  bge          t4, a5, 74f
                  xor          t4, s1, s0
                  xor          zero, a0, s7
                  sll          a2, s5, s10
                  andi         s2, s9, -1206
                  sltiu        s5, s2, 192
                  slti         tp, t4, -120
                  srli         a6, a4, 28
74:               sra          a2, a5, a1
                  xor          t5, a1, t3
                  bgeu         s8, s4, 91f
                  lui          tp, 558241
                  sra          s5, a0, a2
                  sll          t1, a6, gp
                  addi         sp, a6, -73
                  andi         a1, t3, 748
                  slti         ra, a1, 240
                  beq          s5, a1, 91f
                  sltiu        a3, sp, -104
                  auipc        a7, 926603
                  sll          s7, a0, a1
                  sltu         s7, sp, s2
                  sltu         a7, s0, a3
                  xor          a0, s10, a0
                  or           s4, s1, a1
91:               bge          ra, s6, 103f
                  nop
                  bge          s4, sp, 107f
                  bne          ra, gp, 108f
                  srl          ra, s5, s7
                  srl          s2, s1, a0
                  ori          s4, t4, 384
                  sltiu        t0, t6, 1604
                  srli         s0, s2, 3
                  srl          a1, t4, sp
                  addi         a5, s11, 1580
                  bltu         t6, t3, 113f
103:              srli         t1, t2, 10
                  lui          a4, 338869
                  bge          a4, tp, 113f
                  bne          s10, s5, 114f
107:              bgeu         t3, t2, 124f
108:              xor          t5, a7, s3
                  srl          s3, t4, s2
                  srli         s11, tp, 14
                  xori         a7, a7, -1030
                  srl          zero, ra, gp
113:              beq          a3, s7, 118f
114:              auipc        s8, 278572
                  beq          t5, a5, 127f
                  srai         gp, s7, 19
                  sub          a4, s11, t0
118:              bge          a1, t0, 135f
                  bge          a1, s2, 138f
                  sltu         sp, t5, a6
                  xor          t2, a2, s11
                  sub          s1, zero, zero
                  bge          gp, t5, 128f
124:              srli         tp, t6, 10
                  xor          a3, s4, s10
                  andi         a0, a7, -1275
127:              or           t2, a2, a1
128:              auipc        sp, 795448
                  slli         gp, s2, 22
                  srl          t5, tp, gp
                  xor          a6, t4, t1
                  andi         tp, s5, -374
                  auipc        a4, 304500
                  srai         a7, s0, 28
135:              or           a2, s5, ra
                  beq          s9, s0, 145f
                  nop
138:              slli         gp, a4, 17
                  lui          t1, 648313
                  sub          s8, sp, sp
                  add          s7, a1, tp
                  ori          s1, s6, 1293
                  bne          s4, t2, 153f
                  auipc        s10, 786563
145:              slli         a4, t5, 6
                  slti         t4, zero, 1364
                  addi         s11, a7, -882
                  bltu         a4, t2, 163f
                  srai         t1, s9, 10
                  sltu         s3, sp, s3
                  and          s4, s5, ra
                  slli         a3, t5, 29
153:              slt          s5, a0, t4
                  sll          s7, t1, gp
                  blt          s6, s4, 169f
                  sll          s11, gp, a0
                  bne          s6, t3, 171f
                  sltu         zero, s5, a2
                  slt          s10, a0, s10
                  slti         a0, sp, 651
                  bge          s9, t2, 180f
                  slt          tp, s11, a6
163:              bgeu         t1, s3, 173f
                  xor          a4, s11, tp
                  bge          a0, tp, 184f
                  beq          a1, s0, 178f
                  xor          a7, tp, s5
                  sub          s7, a3, s10
169:              addi         a2, tp, 1471
                  sltu         t1, s1, s2
171:              beq          tp, t2, 172f
172:              nop
173:              slli         a4, zero, 21
                  auipc        s9, 20806
                  bltu         a4, tp, 190f
                  xori         t2, a5, -123
                  bgeu         t0, tp, 194f
178:              auipc        s10, 715587
                  bge          s5, ra, 187f
180:              blt          s7, t3, 192f
                  sra          gp, a2, s8
                  sltu         sp, zero, s10
                  xor          t0, a3, t0
184:              nop
                  xori         s11, ra, 605
                  xori         s9, s6, -431
187:              beq          a5, t2, 189f
                  andi         a7, a2, -1775
189:              and          s5, t0, a6
190:              srl          s10, t6, a5
                  blt          ra, a3, 199f
192:              ori          s7, a6, -60
                  bne          ra, s5, 201f
194:              srli         t5, s1, 30
                  sra          zero, a5, s2
                  bgeu         a5, t1, 207f
                  slli         a2, s0, 23
                  blt          a0, a4, 208f
199:              xori         ra, s2, -90
                  slt          s0, a5, a4
201:              srli         a3, s6, 9
                  and          a4, t5, s5
                  nop
                  slti         a3, s0, 773
                  or           ra, ra, a2
                  beq          s11, s6, 214f
207:              add          s7, s2, s2
208:              bne          t3, t2, 216f
                  or           a0, gp, t6
                  xori         s2, t3, 1921
                  srl          s1, a5, t5
                  xor          s3, s1, t1
                  beq          s9, a1, 221f
214:              xor          sp, a2, t0
                  bgeu         s4, s0, 217f
216:              sltu         a1, gp, s5
217:              slli         a1, t2, 6
                  nop
                  srai         gp, s8, 18
                  srai         s0, ra, 7
221:              xor          s8, a2, zero
                  and          a3, tp, t4
                  sltiu        sp, s11, 1017
                  slt          s2, t3, a1
                  slt          a7, a5, zero
                  lui          a3, 196229
                  xor          tp, a5, tp
                  sltu         a1, gp, s4
                  srli         t4, a2, 17
                  auipc        t2, 894789
                  bge          a1, gp, 242f
                  xor          s10, s4, a7
                  slt          tp, s5, s0
                  sltiu        a1, t4, -604
                  ori          a2, ra, -1570
                  addi         s1, tp, 1858
                  nop
                  bne          a2, a0, 249f
                  nop
                  xori         s7, s11, -211
                  sra          s5, s11, a3
242:              sltiu        a5, a3, -1260
                  bltu         a4, t2, 260f
                  nop
                  sub          a4, tp, t0
                  sra          s11, s7, a5
                  xori         tp, s11, -710
                  ori          a5, t3, 514
249:              bne          ra, t1, 268f
                  bltu         a6, t2, 262f
                  and          a3, t3, gp
                  add          s1, tp, t5
                  auipc        s0, 508227
                  slli         zero, a5, 20
                  beq          sp, s9, 268f
                  and          a3, a5, s3
                  slli         a1, a4, 11
                  auipc        a1, 883460
                  ori          t0, sp, -345
260:              addi         s5, tp, -1356
                  slt          s2, s7, s1
262:              andi         s9, s5, 575
                  slli         s1, s10, 22
                  sltu         a1, sp, s7
                  sub          t0, t6, t0
                  lui          sp, 879001
                  andi         a6, t5, 1691
268:              sub          a1, s3, s1
                  sltiu        s3, s5, -1074
                  xori         zero, a6, 272
                  sltiu        a3, t4, -1442
                  bne          s7, s2, 291f
                  blt          s6, a3, 275f
                  srl          zero, s10, t2
275:              slti         s0, a1, 1293
                  bgeu         t0, s9, 290f
                  bgeu         s3, a4, 285f
                  ori          t1, s6, -144
                  and          t4, t6, t2
                  slt          sp, a2, t2
                  srli         a6, a3, 5
                  bltu         s9, s7, 296f
                  bge          a7, t4, 291f
                  slt          t4, a6, tp
285:              sltiu        s5, s5, 1720
                  sll          a3, a1, s9
                  and          a0, t4, gp
                  sra          t2, s4, t2
                  bge          a6, t5, 300f
290:              slti         s7, s9, -1044
291:              or           s10, s8, sp
                  sra          t5, s3, t4
                  xor          s4, a1, s6
                  add          sp, a6, gp
                  bne          a2, s5, 312f
296:              slt          s10, t2, a6
                  andi         s11, s10, 894
                  andi         t2, a0, 1046
                  addi         s10, s1, -525
300:              xori         a5, zero, 944
                  nop
                  blt          a7, s0, 313f
                  bltu         s1, s9, 318f
                  nop
                  sll          t4, t5, tp
                  and          a2, gp, t0
                  sub          s3, s0, gp
                  xor          s8, a2, s3
                  bne          t1, zero, 321f
                  bne          ra, t1, 318f
                  auipc        gp, 97994
312:              srl          ra, t3, a4
313:              srl          s10, t4, a3
                  nop
                  xori         a1, tp, 1093
                  bltu         s5, a1, 324f
                  bgeu         s9, s6, 322f
318:              sltu         s3, a2, a1
                  addi         s3, t4, 1324
                  srli         zero, s3, 25
321:              sra          t2, a4, t5
322:              sltiu        s5, t4, -1198
                  bltu         a4, t3, 333f
324:              or           t4, t4, t2
                  auipc        a0, 985223
                  xor          a6, a2, s6
                  blt          s6, a5, 344f
                  xor          s5, a6, a3
                  xor          s0, a4, s11
                  bltu         t2, a6, 343f
                  beq          a1, t3, 332f
332:              and          a6, a5, s2
333:              ori          s2, s7, 77
                  and          a2, a2, t1
                  sra          s5, a6, a0
                  slli         s3, a1, 20
                  ori          sp, a0, -1267
                  bge          t0, a7, 357f
                  nop
                  ori          s3, t6, 823
                  auipc        s11, 121978
                  bne          ra, s8, 357f
343:              or           t0, sp, s6
344:              blt          s7, t0, 354f
                  and          s11, zero, s11
                  and          a6, t5, s3
                  or           s9, tp, a5
                  xori         s2, zero, -163
                  nop
                  slt          s3, t2, a5
                  lui          t1, 130464
                  bge          zero, t5, 360f
                  xori         a6, t2, -934
354:              srl          gp, t0, t1
                  xor          t1, s1, t2
                  srai         t0, s7, 10
357:              sltu         a0, a6, ra
                  blt          s1, a2, 360f
                  slti         sp, a4, -1942
360:              srai         s4, a0, 13
                  bge          sp, a2, 380f
                  beq          s2, ra, 373f
                  add          a2, t0, s8
                  and          a5, t6, a6
                  bltu         t5, s5, 374f
                  srli         s10, gp, 7
                  sltiu        a4, a5, -1143
                  sltu         s3, t2, s0
                  sra          gp, t0, zero
                  or           a2, s6, t5
                  sltiu        a0, a1, -1312
                  and          a0, s7, t3
373:              slti         sp, s7, 390
374:              sltiu        zero, s11, -1677
                  xori         a5, t0, 1740
                  add          a3, sp, t5
                  addi         s0, a4, 517
                  lui          ra, 762971
                  xori         tp, s7, -1151
380:              sltiu        a6, s6, -1984
                  sub          sp, sp, s2
                  bge          s4, sp, 392f
                  slli         s10, a5, 18
                  auipc        s11, 370175
                  lui          t0, 872834
                  andi         a0, a1, 1933
                  sub          sp, a5, t4
                  srai         a1, s11, 21
                  and          t1, s0, s4
                  xor          sp, a0, a0
                  slli         ra, s9, 12
392:              bgeu         a1, ra, 400f
                  slti         a5, s4, 957
                  sll          s2, tp, s7
                  sll          s0, s0, a4
                  xor          a1, a2, t2
                  and          a2, s0, sp
                  slt          t5, ra, t1
                  andi         t4, s11, -352
400:              lui          a5, 451571
                  xor          a3, a0, a1
                  addi         s0, a4, -976
                  add          t2, zero, t6
                  auipc        t2, 191632
                  bltu         s0, s2, 417f
                  bge          zero, a3, 418f
                  add          a0, s8, a4
                  andi         a4, s6, -1453
                  bne          sp, a5, 421f
                  slli         a7, a5, 29
                  and          s1, s2, a5
                  add          s11, s6, gp
                  auipc        t2, 960418
                  and          tp, gp, s2
                  or           a0, a1, tp
                  bgeu         s4, a3, 431f
417:              srli         a4, a3, 5
418:              lui          a2, 22115
                  slti         a6, zero, -1765
                  addi         a6, ra, 1982
421:              slli         t1, s7, 26
                  bltu         s5, s3, 433f
                  bge          s5, t4, 442f
                  srai         a2, s10, 10
                  slt          s11, gp, s1
                  nop
                  sll          s1, s5, t1
                  sltu         a0, t5, a3
                  sltu         s2, s4, tp
                  blt          s5, t6, 438f
431:              lui          s8, 169188
                  auipc        s5, 231448
433:              sra          s11, s6, s10
                  sltu         t0, a5, t2
                  bgeu         a3, a6, 452f
                  sll          tp, t1, ra
                  lui          s3, 970089
438:              blt          t0, a4, 449f
                  bltu         zero, a7, 453f
                  ori          a7, tp, 1509
                  bne          gp, t5, 460f
442:              bge          s6, zero, 456f
                  sll          t4, gp, s4
                  add          s7, s4, s5
                  sub          sp, s10, s3
                  bgeu         t2, a2, 465f
                  sll          t2, sp, ra
                  and          a5, ra, a5
449:              srai         s5, a5, 23
                  srai         s10, a0, 31
                  bge          s9, gp, 462f
452:              sltiu        ra, tp, 1973
453:              blt          a5, t1, 455f
                  sll          s4, t3, a1
455:              bltu         s10, s3, 463f
456:              ori          a5, s6, -1246
                  sll          s4, sp, s7
                  xor          ra, s6, s7
                  and          a4, s7, a6
460:              slt          s8, s6, s10
                  beq          tp, s10, 469f
462:              ori          s1, s10, -925
463:              nop
                  beq          s0, gp, 474f
465:              beq          t6, t2, 478f
                  srl          a7, tp, ra
                  slli         zero, s8, 23
                  bltu         zero, s1, 485f
469:              bltu         t5, gp, 477f
                  sltiu        a6, s4, -1015
                  bne          a4, a3, 479f
                  blt          s8, a6, 482f
                  sra          a5, sp, s3
474:              bltu         a0, a0, 479f
                  la           s2, region_1+1714 #start riscv_load_store_rand_instr_stream_3
                  slli         t0, t2, 25
                  srli         a3, s0, 25
                  srli         s4, s5, 10
                  xori         s9, s9, -802
                  sh           ra, -246(s2)
                  sh           t2, -74(s2)
                  lbu          t2, -27(s2)
                  lb           a7, 216(s2)
                  sub          a6, zero, s0
                  sra          a3, a7, a7
                  nop
                  lbu          t1, 94(s2)
                  lbu          t5, -228(s2)
                  sb           ra, -101(s2)
                  xor          s9, a6, s6
                  addi         s4, s7, 1973
                  lb           s3, -168(s2)
                  sub          ra, s1, s10
                  sb           gp, -183(s2)
                  sb           t6, -109(s2)
                  lbu          s5, 62(s2)
                  sb           t2, -169(s2)
                  andi         a6, t4, 1361
                  nop
                  xor          s3, sp, a1
                  lbu          s7, -163(s2)
                  or           a5, ra, a4
                  xori         s0, t1, 273
                  srl          a6, s5, a4
                  sb           a1, -164(s2)
                  lbu          t4, -243(s2)
                  lbu          s4, -251(s2)
                  lbu          s0, 147(s2)
                  xori         gp, t6, 1138
                  sb           s0, -42(s2)
                  lb           a7, -179(s2)
                  lbu          tp, -205(s2)
                  lbu          s10, -57(s2) #end riscv_load_store_rand_instr_stream_3
                  srli         s4, s8, 19
                  sub          a1, s4, a7
477:              bge          t1, a7, 479f
478:              xor          t0, sp, t5
479:              blt          s7, s10, 491f
                  sll          t0, s1, a4
                  auipc        s0, 232573
482:              xori         a1, s5, -1426
                  add          zero, t4, t6
                  bne          t3, a2, 485f
485:              nop
                  srl          tp, a5, t4
                  bne          s3, t1, 495f
                  blt          s3, a5, 498f
                  bne          a3, a7, 501f
                  bltu         sp, s2, 499f
491:              xor          s4, t5, a7
                  add          s5, s8, t6
                  nop
                  sltu         s0, t3, s3
495:              and          s9, s2, s3
                  add          a1, sp, tp
                  bgeu         sp, a4, 512f
498:              andi         s10, t3, 669
499:              beq          t0, s7, 509f
                  srai         s5, ra, 4
501:              beq          t1, a6, 512f
                  bgeu         t3, s1, 519f
                  slti         sp, t5, 1955
                  srl          s2, s5, t2
                  ori          a4, t1, 1816
                  sub          a3, a4, t4
                  bge          a0, sp, 520f
                  add          t2, s5, s9
509:              or           a3, a2, a3
                  sltiu        a3, t3, -255
                  srl          s2, t0, s4
512:              sltu         zero, s4, tp
                  srl          s9, t1, a2
                  xori         a2, a2, -1839
                  andi         ra, s11, 248
                  blt          s4, s9, 518f
                  bgeu         t0, t1, 518f
518:              sltiu        s9, s11, 1494
519:              bgeu         s1, s2, 531f
520:              beq          t2, a1, 535f
                  srai         tp, t3, 5
                  sltu         ra, s4, a0
                  add          s2, t1, a0
                  andi         tp, s6, -1621
                  and          a1, t1, t6
                  add          s11, s0, s1
                  beq          t0, a0, 538f
                  lui          s7, 937100
                  sra          tp, t2, tp
                  bne          sp, tp, 545f
531:              sra          a1, t0, t4
                  andi         a0, sp, -2008
                  sltiu        s7, s9, -1699
                  andi         ra, s3, -12
535:              sra          a6, s11, a1
                  xori         a3, s2, -1767
                  bltu         tp, s6, 546f
538:              and          s3, t0, t1
                  srai         a4, sp, 3
                  bltu         s7, t3, 542f
                  add          a2, a5, t2
542:              blt          s5, a4, 552f
                  sll          t0, ra, s8
                  bgeu         s1, sp, 552f
545:              sll          a5, t0, t0
546:              ori          s8, sp, 1827
                  lui          a4, 683454
                  sll          s5, a4, s0
                  bne          s2, s2, 568f
                  ori          s4, a3, 1491
                  ori          a5, s5, -1626
552:              sub          s5, t5, s6
                  xor          s4, a4, s5
                  sltu         s1, s7, zero
                  blt          t6, a2, 566f
                  bgeu         s2, a7, 568f
                  ori          a6, a2, -235
                  and          a4, t1, s4
                  sra          s11, s10, t6
                  srai         gp, s8, 30
                  sra          s0, a7, s10
                  add          a1, t5, a1
                  ori          ra, t3, -480
                  xori         s11, zero, 2033
                  sll          gp, a6, s1
566:              nop
                  or           s10, t5, s1
568:              sra          t2, s8, t4
                  lui          a7, 552261
                  or           s8, a7, tp
                  srl          s4, zero, a1
                  bge          s4, t5, 580f
                  sub          zero, s10, t0
                  or           s3, s0, a3
                  slli         s1, a3, 6
                  blt          tp, s10, 584f
                  bgeu         s2, s5, 594f
                  lui          s1, 369585
                  slti         sp, s11, 431
580:              srli         t2, zero, 1
                  bge          s1, a7, 589f
                  xori         s2, s4, -1325
                  addi         s11, t2, 1342
584:              addi         s5, sp, 397
                  add          a3, a7, s10
                  sltiu        a3, s0, 1890
                  sltu         a4, t5, s11
                  nop
589:              or           s3, s5, t4
                  or           ra, s8, s0
                  bge          a1, t6, 605f
                  andi         a1, s1, 1000
                  sll          s2, s9, s4
594:              xori         s3, sp, 1862
                  nop
                  addi         s11, s4, -709
                  bge          t4, s10, 616f
                  ori          s2, t5, 11
                  auipc        zero, 468646
                  nop
                  slli         s11, s8, 9
                  slli         tp, t0, 5
                  sub          s9, t3, gp
                  slti         s10, s11, 295
605:              slti         t4, s7, 1417
                  xor          a5, s3, t2
                  sltu         gp, a3, t1
                  sll          a1, s0, sp
                  slti         s0, t6, -1490
                  srai         s3, s8, 26
                  srli         a2, a4, 8
                  srl          a0, tp, s7
                  and          t0, a2, s10
                  blt          t3, t5, 626f
                  slti         a4, s11, 1216
616:              bltu         s0, s10, 624f
                  or           a6, s11, a6
                  sll          tp, s3, a5
                  blt          t4, a4, 624f
                  bgeu         t6, gp, 628f
                  and          s9, t6, a7
                  bge          t2, a6, 632f
                  andi         t5, sp, 39
624:              slli         s9, s8, 27
                  sll          gp, ra, a6
626:              sra          s0, a6, gp
                  bltu         s11, a7, 646f
628:              beq          t5, gp, 642f
                  add          a6, a6, a3
                  slti         t4, t4, -862
                  ori          gp, s4, 187
632:              sltu         s2, t3, s5
                  sltiu        s7, a4, 671
                  andi         s9, s4, 559
                  auipc        a2, 422758
                  sra          s8, s7, zero
                  slt          a4, s3, s4
                  bge          s3, a7, 655f
                  and          s11, s8, s5
                  beq          a3, a2, 642f
                  ori          gp, a7, 1656
642:              add          tp, s5, s5
                  srai         tp, sp, 0
                  addi         a7, s10, 915
                  sll          s3, s6, t5
646:              bge          s11, a4, 658f
                  xori         s7, s11, 1320
                  sltu         gp, t2, t5
                  srl          t5, t3, a1
                  add          a4, a5, t1
                  sltiu        s0, zero, -604
                  and          s10, gp, s6
                  auipc        s8, 428561
                  bltu         t5, t3, 662f
655:              xor          s5, a0, s7
                  bltu         t3, a3, 671f
                  srai         sp, s3, 31
658:              bne          a7, a6, 663f
                  bltu         a2, s7, 678f
                  nop
                  sll          s7, a3, t6
662:              sltiu        a1, t4, 897
663:              ori          zero, t3, -1924
                  bltu         t4, t3, 673f
                  sltiu        s1, t1, -1888
                  xor          s11, s8, s9
                  lui          t1, 583604
                  xor          tp, t2, t4
                  bne          ra, s1, 688f
                  sll          s5, s6, a3
671:              or           t2, a2, s0
                  bltu         t5, t1, 685f
673:              beq          s10, a7, 683f
                  srl          sp, zero, s9
                  bltu         a5, a1, 676f
676:              lui          a6, 481812
                  nop
678:              sra          t2, s4, t3
                  lui          s3, 322388
                  nop
                  bne          a4, t1, 691f
                  sltiu        t4, a1, 1647
683:              blt          s1, a7, 691f
                  sll          a2, t3, a1
685:              sltiu        a6, s4, -1514
                  bge          gp, s5, 700f
                  slt          s10, t4, t0
688:              sltiu        s8, tp, 1900
                  sll          s1, t6, t3
                  lui          s10, 722401
691:              lui          s11, 45492
                  slli         t5, t4, 18
                  andi         t5, gp, -1020
                  sltiu        t5, a1, -2039
                  nop
                  add          zero, t1, t5
                  slli         tp, a0, 14
                  bge          t0, s6, 706f
                  andi         t0, zero, 778
700:              sltu         s0, s5, a7
                  sra          s10, s10, sp
                  sub          t2, t6, sp
                  srai         a7, zero, 22
                  slti         a3, tp, -1420
                  andi         a0, a4, 1941
706:              sltu         t0, a1, s1
                  bne          s2, a6, 715f
                  sltu         s0, s2, t0
                  bne          s11, s4, 721f
                  add          s4, t6, s8
                  sub          gp, s8, t2
                  sll          a7, s5, zero
                  slt          s8, s11, s10
                  auipc        t2, 643060
715:              sub          a7, s5, t1
                  slli         t4, s6, 27
                  slli         t2, a7, 28
                  slti         a5, s1, 1294
                  add          s0, tp, s7
                  nop
721:              sra          s4, a3, t2
                  beq          s4, s11, 734f
                  sll          t0, tp, a2
                  ori          t2, s5, 1415
                  nop
                  bgeu         a6, t0, 745f
                  addi         s5, a2, 37
                  slli         s11, s9, 26
                  xor          tp, a3, t6
                  bne          s4, s11, 747f
                  andi         zero, a4, 1199
                  add          gp, s3, t6
                  sll          t5, s5, a7
734:              beq          t0, a7, 736f
                  bgeu         t2, a7, 746f
736:              and          s5, gp, s3
                  xor          a4, s6, s8
                  bge          a2, s3, 749f
                  and          a4, s0, a0
                  slli         a4, a0, 14
                  xori         a0, a1, -654
                  blt          t6, a0, 750f
                  sub          s11, s0, t2
                  nop
745:              nop
746:              bltu         s10, s9, 754f
747:              and          a3, ra, t3
                  blt          t5, gp, 762f
749:              sltiu        t5, tp, 679
750:              sra          s3, s5, s4
                  addi         s3, s10, 918
                  bltu         t2, gp, 762f
                  beq          t0, t4, 768f
754:              sltu         a0, a0, a6
                  sub          a5, s5, s3
                  sltu         a0, s4, t4
                  add          a4, s4, a7
                  slt          s8, s7, t1
                  slli         s10, s7, 0
                  bne          s1, s1, 771f
                  sub          tp, a5, t3
762:              srl          s5, a6, sp
                  sra          t5, s8, gp
                  add          gp, s2, a5
                  bge          s5, a3, 770f
                  sltu         t1, s10, gp
                  lui          s4, 1033401
768:              or           zero, t3, ra
                  lui          s3, 1029710
770:              sltu         t5, a1, s10
771:              add          a4, s8, sp
                  sra          t0, sp, t4
                  blt          t0, a3, 781f
                  nop
                  sltu         a6, a2, a7
                  srli         t0, s10, 28
                  bltu         s7, t1, 787f
                  addi         s7, tp, 950
                  sub          s1, a4, s0
                  nop
781:              bne          s2, s8, 790f
                  beq          a4, t1, 793f
                  blt          s10, t1, 785f
                  andi         zero, s3, -1477
785:              auipc        s3, 979212
                  bge          a0, a7, 787f
787:              sltu         s4, s10, s2
                  or           a3, a6, t3
                  ori          t2, t0, -1090
790:              xor          s7, a1, s3
                  sub          a0, s0, s2
                  sra          t4, t3, t4
793:              bgeu         s6, a3, 801f
                  sltiu        s7, a4, 98
                  andi         s1, t6, -928
                  xori         s3, a2, -1335
                  srai         a0, a2, 14
                  bgeu         s5, s1, 810f
                  sll          a2, tp, a5
                  bge          gp, tp, 819f
801:              xor          gp, s5, s6
                  slt          t4, t4, s3
                  and          a1, s11, a0
                  blt          t0, s8, 816f
                  bne          a1, a4, 820f
                  beq          t6, a2, 817f
                  sub          s1, a1, s8
                  beq          zero, a7, 822f
                  andi         a7, a5, -814
810:              or           s3, a0, t6
                  and          a2, t6, a7
                  sra          s2, a2, a7
                  sra          s9, a4, t6
                  blt          ra, t1, 831f
                  addi         a5, s11, -1830
816:              xor          a0, a7, sp
817:              nop
                  sub          t0, s3, a7
819:              nop
820:              xor          gp, a4, s0
                  andi         s11, t5, -168
822:              or           t1, ra, s10
                  sll          tp, s3, t5
                  slti         zero, a2, -1967
                  slti         s7, t6, -1949
                  srli         t4, ra, 21
                  andi         a7, a6, 1677
                  bltu         s11, s9, 839f
                  sltiu        gp, s6, 1281
                  sltu         a2, t1, s11
831:              sltiu        a7, a2, 620
                  sll          a3, s8, t0
                  srl          t5, ra, a6
                  srai         s2, a3, 2
                  bltu         s7, s6, 843f
                  bge          t1, t4, 846f
                  la           gp, region_0+886 #start riscv_load_store_rand_instr_stream_0
                  sb           a3, -1(gp)
                  lh           s9, 18(gp)
                  lbu          t0, -27(gp)
                  nop
                  sb           t1, -25(gp)
                  lbu          t1, -26(gp)
                  srl          s1, a0, s10
                  sb           gp, 25(gp)
                  lbu          sp, -27(gp)
                  sh           s11, 34(gp)
                  lbu          t2, 3(gp)
                  sb           sp, -37(gp)
                  lb           a5, 1(gp)
                  sw           s11, -6(gp)
                  sh           s9, -62(gp)
                  lb           sp, 30(gp)
                  nop
                  sll          ra, tp, a0
                  lbu          t0, -2(gp)
                  lb           a0, -49(gp)
                  auipc        zero, 970631
                  sh           t3, -54(gp)
                  sb           s11, 33(gp)
                  add          s5, t5, sp
                  lw           s4, 18(gp)
                  or           a1, s8, a4
                  sb           a1, -37(gp)
                  sb           s6, -3(gp)
                  lb           s9, 3(gp)
                  lbu          s5, -45(gp)
                  sh           s3, 54(gp)
                  lb           a2, 35(gp)
                  or           s2, t3, s4
                  lbu          s2, 44(gp)
                  sb           s6, -61(gp)
                  lhu          a2, 26(gp)
                  sub          s8, s0, a3
                  and          s1, s10, sp
                  lh           a0, -60(gp)
                  slti         a7, a0, 898
                  sw           a5, 34(gp) #end riscv_load_store_rand_instr_stream_0
                  slli         a2, s6, 1
                  srli         s7, t0, 31
839:              sra          a0, s10, s9
                  srai         a3, t0, 14
                  bge          s9, a3, 856f
                  and          s4, t0, sp
843:              beq          s3, t5, 862f
                  xori         s5, a1, 1753
                  bgeu         t2, t1, 847f
846:              bltu         s1, a7, 860f
847:              xori         a4, a2, 815
                  srl          a0, s11, s10
                  blt          t3, a6, 868f
                  sltiu        t1, s9, -1080
                  srl          s1, t5, t4
                  xori         s9, s2, -1479
                  blt          t1, t1, 865f
                  lui          s4, 823831
                  sll          a7, s0, a0
856:              blt          s6, s11, 869f
                  beq          a0, a7, 865f
                  slti         a0, t1, 2010
                  sltu         s4, t0, ra
860:              blt          t5, s11, 868f
                  andi         a3, a4, 689
862:              bge          gp, s1, 872f
                  add          a3, t3, a4
                  srli         a2, zero, 9
865:              nop
                  andi         a7, t4, -187
                  bgeu         s2, s8, 884f
868:              bltu         ra, tp, 876f
869:              beq          s11, sp, 877f
                  auipc        s2, 297345
                  auipc        s1, 465304
872:              add          s8, s0, t2
                  sub          s0, tp, t2
                  bgeu         s9, t5, 882f
                  ori          s9, s7, 1699
876:              srl          sp, a2, s1
877:              bne          s1, s6, 879f
                  srai         a1, s0, 28
879:              blt          t5, s4, 891f
                  auipc        s8, 212008
                  bne          a6, s1, 895f
882:              bltu         a6, s8, 892f
                  andi         s1, s0, 340
884:              xor          s9, s1, ra
                  blt          t2, a6, 886f
886:              xori         s8, s9, 26
                  sll          s11, t1, s8
                  bge          a7, s5, 907f
                  slti         ra, t6, 1409
                  sltu         a0, s4, a4
891:              xor          a2, s1, s6
892:              beq          s2, t6, 909f
                  auipc        s11, 931147
                  bgeu         a6, s0, 910f
895:              andi         s8, a5, 1739
                  add          t4, gp, s5
                  xori         sp, t4, -309
                  ori          s9, ra, -498
                  bne          t1, a5, 910f
                  bgeu         a2, t5, 910f
                  slt          a4, s1, a1
                  srl          s8, s1, t6
                  bltu         s3, sp, 910f
                  add          t1, a4, s6
                  ori          a3, s3, -337
                  andi         a3, a0, 1576
907:              nop
                  ori          a1, t1, 1356
909:              bgeu         t4, a1, 910f
910:              sll          t0, s1, s11
                  sra          t2, a0, s6
                  slli         tp, s8, 23
                  lw           s1, 4(t6)
                  xori         a4, t2, -566
                  addi         t6, t6, 36
                  sll          a2, s6, a5
                  sra          s9, s1, ra
                  sll          s8, s1, a2
1198:             addi x14, x9, 1
1198:             jalr x14, x14, 0
sub_7:            srli         s0, s0, 8
                  slti         t0, zero, -917
                  sll          s11, t4, s4
                  bge          t6, a4, sub_7_stack_p
                  or           s4, s6, s7
sub_7_stack_p:    addi         t6, t6, -44
                  lui          t2, 416175
                  sw           s1, 4(t6)
                  auipc        s5, 690512
                  slli         sp, zero, 21
                  addi         t0, t1, 1255
                  lui          t2, 522571
                  xori         s3, a6, -574
                  srl          t4, t4, a3
                  addi         a2, t1, 2034
                  addi         s7, a1, -580
                  sltiu        t5, a7, -400
                  bltu         a5, gp, 23f
                  sub          s1, a2, a2
                  and          t2, s11, t0
                  nop
                  lui          s9, 475383
                  sll          s5, a0, s9
                  ori          zero, s5, 1348
                  andi         s0, zero, 1684
                  andi         t4, t0, 1278
                  auipc        s8, 229048
                  srl          a2, tp, a3
                  or           s0, ra, sp
                  srli         s5, zero, 30
                  auipc        t0, 838621
                  or           a1, a3, ra
                  srai         s2, a1, 14
                  slli         a6, a1, 3
23:               slti         t2, s2, 471
                  xori         s8, a3, -297
                  slt          s1, s11, t1
                  auipc        s5, 644488
                  beq          a6, s2, 30f
                  slti         a0, zero, -976
                  sltu         s2, a3, s0
30:               sltu         a1, ra, a2
                  addi         tp, s6, -875
                  slli         a4, s3, 18
                  ori          s10, a2, 1881
                  srai         s9, s3, 29
                  bltu         s5, a7, 52f
                  auipc        a0, 981528
                  add          s9, zero, s2
                  sltu         s8, gp, t2
                  beq          t5, a0, 45f
                  and          a4, t0, s3
                  sll          a1, s2, s8
                  and          s7, s8, s3
                  srl          t0, ra, t4
                  add          a5, s5, s8
45:               sra          s5, gp, a5
                  bne          a3, t1, 57f
                  addi         s8, s9, -2017
                  slt          s3, tp, gp
                  xori         s10, s9, -1120
                  xori         s8, a0, 1904
                  bgeu         a0, a0, 65f
52:               or           a7, t3, s7
                  andi         s0, a4, 1073
                  bne          a5, gp, 66f
                  or           s8, s4, s9
                  sltu         s4, s9, s10
57:               nop
                  add          s7, a7, tp
                  srai         ra, s4, 7
                  sll          s10, s3, a0
                  bltu         t1, s4, 70f
                  bge          zero, tp, 79f
                  addi         a7, a7, -684
                  beq          a5, s10, 74f
65:               bgeu         s10, tp, 69f
66:               ori          a1, s4, -182
                  bgeu         t6, s5, 73f
                  slt          s8, s3, s8
69:               sll          t5, s2, a3
70:               beq          t0, s2, 81f
                  sltiu        a7, t5, 843
                  xor          s8, a2, s5
73:               bne          t1, a7, 88f
74:               sltiu        t2, t0, -503
                  srli         s5, ra, 29
                  srai         a2, s7, 29
                  lui          s10, 262765
                  srai         a6, t2, 26
79:               add          a0, s3, s3
                  bltu         s9, t0, 89f
81:               sub          t2, sp, gp
                  auipc        s11, 665928
                  andi         tp, t5, 371
                  xor          a4, a5, ra
                  bge          gp, s10, 92f
                  sltiu        a0, t2, 330
                  srai         s2, zero, 18
88:               and          t0, a2, s0
89:               beq          gp, s8, 103f
                  srli         s8, t4, 27
                  beq          s9, s3, 104f
92:               andi         sp, s10, 548
                  addi         t2, tp, -1468
                  slt          s11, s1, s7
                  lui          a4, 843710
                  sll          a4, t2, s11
                  andi         t4, s7, -1589
                  slt          s7, t1, a2
                  and          tp, s7, a7
                  slli         zero, t4, 4
                  bne          s3, t2, 116f
                  srai         a3, t5, 23
103:              or           a1, s1, s7
104:              or           a7, a6, s11
                  nop
                  xor          s7, t4, t3
                  xor          a2, s11, t5
                  srli         t5, s9, 4
                  nop
                  addi         s11, a0, 1045
                  sra          tp, a4, t0
                  lui          s9, 82449
                  xor          a4, t2, t6
                  sra          s1, t6, s1
                  sra          t5, s8, a1
116:              addi         s8, a1, 734
                  auipc        s8, 769357
                  lw           s1, 4(t6)
                  lui          s3, 101285
                  sltu         s3, ra, a2
                  ori          t1, t3, 1851
                  sltu         s9, s8, s1
                  or           a1, s8, s11
                  addi         t6, t6, 44
                  xori         s5, s3, -1535
                  andi         t2, s6, -474
                  sltiu        s4, s2, -401
                  and          a6, a0, s4
140:              addi x5, x9, 1
140:              jalr x5, x5, 0
sub_2:            addi         t6, t6, -12
                  andi         s9, s4, 977
                  sw           s1, 4(t6)
                  lui          gp, 602909
                  slt          s2, t4, zero
                  nop
                  xori         gp, s11, -1172
                  srai         a4, zero, 13
                  auipc        s10, 184412
                  bltu         a1, a0, 5f
                  add          sp, s8, a4
                  addi         s11, t0, 146
                  or           s9, t5, sp
5:                bltu         s6, t4, 19f
                  slli         t1, s0, 1
                  sltiu        s3, s11, 159
                  sltiu        a4, s5, -143
                  sra          t5, a0, s8
                  bgeu         tp, a6, 17f
                  or           sp, t6, sp
                  sltiu        a1, a4, 1192
                  andi         t4, tp, -1854
                  or           s2, t3, a6
                  blt          ra, t1, 23f
                  and          t1, a7, s1
17:               blt          a3, t0, 24f
                  sub          gp, t3, s2
19:               sra          t5, s7, s2
                  bgeu         t2, tp, 26f
                  sltiu        s8, s9, -125
                  sra          t1, t1, a4
23:               and          a1, s0, gp
24:               and          t0, t5, s1
                  add          a6, s11, tp
26:               sll          a6, a7, s9
                  nop
                  srai         s4, t3, 15
                  blt          ra, a3, 41f
                  xor          a4, s11, a7
                  sltiu        s4, zero, -309
                  blt          s11, a6, 41f
                  bltu         a0, s1, 39f
                  sub          zero, s11, s4
                  bne          t6, gp, 41f
                  sltu         s3, s4, t0
                  sub          s3, s9, s8
                  beq          a5, zero, 41f
39:               and          ra, a7, zero
                  srai         a3, a2, 12
41:               add          ra, s8, s0
                  lw           s1, 4(t6)
                  lui          a0, 570548
                  andi         t0, s5, 393
                  addi         t6, t6, 12
                  auipc        s10, 755374
                  addi         s11, a3, -820
                  andi         s9, t3, -1716
                  addi         s8, a7, -1331
                  slli         t1, zero, 4
                  sra          a2, sp, s8
60:               addi x4, x9, 0
60:               jalr x4, x4, 0
sub_3:            sltiu        t1, a5, 739
                  addi         t6, t6, -40
                  andi         s7, gp, -135
                  sw           s1, 4(t6)
                  ori          a3, s3, -871
                  addi         s0, t6, -1660
                  addi         sp, t3, 891
                  or           t0, a0, ra
                  addi         s11, s11, 8
                  sra          s3, s0, a4
                  andi         a3, sp, -616
                  lui          t4, 702521
                  sltu         t0, s7, ra
                  or           a0, s0, s11
sub_3_j5:         jal          s1, sub_4 #jump sub_3 -> sub_4
                  auipc        s11, 907687
                  sltiu        gp, t1, -87
                  srl          a2, s1, s5
                  beq          s11, t5, sub_3_j6 #branch to jump instr
                  ori          s3, s11, 1543
                  sll          a2, tp, s6
                  slti         gp, s10, 1663
                  add          s11, a5, s11
sub_3_j6:         jal          s1, sub_4 #jump sub_3 -> sub_4
                  or           tp, t4, t2
                  sub          gp, s5, a1
                  blt          t3, s5, 9f
                  sll          zero, t1, t5
                  and          s10, a7, t1
                  beq          ra, ra, 9f
                  srli         a6, s6, 30
                  and          s11, t2, s3
                  sll          s8, t2, t6
9:                xor          tp, ra, a7
                  lw           s1, 4(t6)
                  sltu         s2, zero, gp
                  addi         s8, s8, 882
                  or           a7, s5, a4
                  addi         t6, t6, 40
                  slti         zero, a4, 1413
40:               addi x2, x9, 0
40:               jalr x2, x2, 0
sub_4:            srli         ra, a4, 2
                  bne          a6, s8, sub_4_stack_p
                  slt          t2, s6, a5
                  sub          a3, s0, s10
sub_4_stack_p:    addi         t6, t6, -12
                  sra          s10, s6, sp
                  srai         t1, tp, 22
                  sra          ra, s9, a2
                  slti         a0, t3, -954
                  xor          s10, sp, a5
                  sltiu        t1, a4, -1587
                  sw           s1, 4(t6)
                  ori          s3, a5, -1026
                  sltu         zero, a1, a2
                  xor          t2, t0, t6
                  la           s2, sub_9
                  srai         s9, tp, 17
                  ori          s10, a4, -546
                  srli         a6, s2, 10
                  srai         s3, a6, 18
                  addi         s2, s2, 640
                  sltu         a6, a4, s4
sub_4_j9:         jalr         s1, s2, -639 #jump sub_4 -> sub_9
                  sltu         a6, ra, t2
                  and          s7, t2, gp
                  lui          zero, 971950
                  lui          t2, 946171
                  srli         a1, zero, 18
                  slt          a1, sp, t4
                  sub          t1, s6, a3
                  bge          a3, a4, sub_4_j10 #branch to jump instr
                  auipc        s4, 808514
                  ori          t4, t0, 1866
sub_4_j10:        jal          s1, sub_6 #jump sub_4 -> sub_6
                  sltu         t5, s1, s8
                  slli         tp, s5, 7
                  blt          a6, s7, sub_4_j11 #branch to jump instr
                  xori         a5, zero, 269
                  sltu         sp, sp, t5
                  srai         tp, a2, 22
                  slt          t1, t0, s10
                  sll          s1, zero, s1
sub_4_j11:        jal          s1, sub_8 #jump sub_4 -> sub_8
                  la           sp, region_0+833 #start riscv_load_store_rand_instr_stream_0
                  lbu          s11, 81(sp)
                  ori          s7, a5, -1018
                  lbu          gp, -142(sp)
                  srai         a1, s11, 0
                  slli         a6, s1, 20
                  ori          s2, sp, 527
                  add          s4, a6, t0
                  lb           s8, 128(sp)
                  lbu          s1, 60(sp)
                  sb           s10, 220(sp)
                  sll          s0, s5, s2
                  sb           s6, 146(sp)
                  lbu          a6, 46(sp)
                  sb           a6, -34(sp)
                  sb           a1, 184(sp)
                  lbu          a4, 150(sp)
                  sb           a4, 215(sp)
                  lh           s9, 153(sp)
                  add          s0, s3, s1
                  sw           t6, -241(sp)
                  sb           s7, -27(sp)
                  srl          s9, s2, a2
                  or           a2, t5, a7
                  lbu          zero, -65(sp)
                  sltu         gp, s10, s4
                  sh           s7, 57(sp) #end riscv_load_store_rand_instr_stream_0
                  sltiu        a3, zero, -1593
                  auipc        s0, 169031
                  sltu         s5, t3, s3
                  bgeu         t2, a7, 8f
                  slti         s1, t0, -402
                  beq          a1, t2, 6f
6:                bne          s6, s10, 25f
                  slti         s1, s6, 231
8:                nop
                  xori         s7, a2, 922
                  bge          s11, zero, 27f
                  srl          s7, t3, t1
                  ori          s10, a0, -1780
                  lui          gp, 859340
                  bgeu         t6, a2, 15f
15:               and          a6, s10, ra
                  sra          t2, t6, a7
                  bge          a1, gp, 31f
                  lui          a7, 479614
                  slt          a1, tp, t5
                  srai         s1, t6, 24
                  srli         s3, s5, 18
                  srli         a4, t3, 2
                  blt          t4, t4, 42f
                  sltiu        t1, t5, -112
25:               srli         t2, s2, 17
                  nop
27:               andi         s0, tp, 1688
                  slli         zero, a0, 28
                  addi         s9, t2, -1806
                  sltu         a5, t3, s4
31:               srl          a0, s8, t3
                  andi         s11, t6, 1550
                  xor          tp, gp, t3
                  nop
                  bgeu         a1, a5, 43f
                  sra          s11, t2, ra
                  slli         a7, a0, 27
                  sub          sp, t2, s3
                  add          tp, a4, s2
                  sltiu        s11, zero, 1009
                  and          s7, t6, t6
42:               andi         t0, a4, -1308
43:               srai         s5, t4, 3
                  bgeu         t3, a7, 45f
45:               ori          s7, s10, 1762
                  sub          s3, s3, s10
                  addi         s4, t3, 1262
                  bge          t0, s5, 67f
                  beq          t4, s11, 66f
                  addi         s2, s0, -1033
                  lui          s3, 1044579
                  or           s3, a4, t5
                  xori         sp, s5, 1497
                  slti         zero, s2, 1854
                  sll          s5, t5, tp
                  blt          t6, a0, 76f
                  sltu         sp, a4, s3
                  sll          s9, sp, a4
                  slti         t1, s10, -872
                  nop
                  add          s10, t3, t3
                  sub          a7, s4, tp
                  bne          ra, t5, 80f
                  auipc        tp, 713221
                  ori          s5, a1, -1330
66:               sra          a1, s11, s0
67:               auipc        t0, 138368
                  blt          t2, s3, 88f
                  bne          s8, a7, 88f
                  beq          t5, sp, 81f
                  sltiu        a3, s1, -573
                  xori         s1, t5, -109
                  srl          s10, t2, s8
                  sub          t1, a6, a6
                  lui          tp, 437829
                  lui          a0, 773355
                  xor          a1, s11, t4
sub_4_j7:         jal          s1, sub_5 #jump sub_4 -> sub_5
                  sltiu        s10, s5, -1657
                  and          a5, s1, a2
                  add          a2, s9, s1
76:               srl          ra, zero, t2
                  addi         a0, t5, -1749
                  sltiu        s0, s3, 1225
                  sub          s7, gp, s11
80:               slti         s4, sp, -1608
81:               andi         a0, s10, -1517
                  sll          ra, s8, s7
                  auipc        s1, 403191
                  and          s9, s9, s11
                  srl          t5, s2, a7
                  xor          ra, ra, t5
                  addi         s0, t4, 8
88:               slt          s9, s2, a3
                  lui          t2, 142762
                  srli         s5, s11, 12
                  xori         zero, a4, 1018
                  beq          s1, s2, 102f
                  srl          s11, s11, gp
                  addi         s8, t6, 416
                  sltiu        s10, zero, -475
                  bgeu         sp, s11, 105f
                  and          a5, sp, s9
                  add          sp, ra, a3
                  sll          s5, s0, t3
                  ori          a2, t4, -172
                  sll          a7, s9, a5
102:              addi         s7, s5, 1230
                  sra          a6, s6, t6
                  xori         zero, s11, 1300
105:              sltu         s11, s2, a0
                  slli         t5, a6, 19
                  xori         s11, s11, -1943
                  bltu         t0, a7, 127f
                  and          ra, a6, s7
                  srl          s2, s8, t2
                  blt          s4, s10, 121f
                  lui          a3, 91933
                  ori          t1, s0, -1119
                  srai         t4, t3, 0
                  beq          s10, s0, 116f
116:              bge          gp, t0, 128f
                  bge          t3, t5, 129f
                  auipc        s7, 987871
                  addi         a0, t4, 868
                  blt          a2, t3, 126f
121:              lui          a2, 39471
                  lui          t4, 155228
                  bne          t4, t0, 139f
                  sltiu        s1, a5, 414
                  slt          s1, t6, a2
126:              bgeu         s6, gp, 129f
127:              xor          ra, a6, ra
128:              xori         a0, s2, 1560
129:              ori          zero, a1, 748
                  slt          s2, s7, t0
                  lui          s4, 24046
                  lui          a7, 760764
                  srli         s0, a5, 20
                  and          s5, a2, s4
                  sll          s7, t0, a2
                  bgeu         s7, t5, 147f
                  andi         a3, ra, -1936
                  sltu         a7, a5, a5
                  addi         s11, ra, 850
                  and          s5, sp, a1
                  addi         a7, s2, -1996
                  auipc        a1, 792647
                  srai         s0, s1, 21
                  and          a4, s4, s6
                  bge          t1, a4, sub_4_j8 #branch to jump instr
                  nop
                  sub          s10, a1, s0
                  srl          gp, sp, a5
                  sll          s10, s0, a3
sub_4_j8:         jal          s1, sub_7 #jump sub_4 -> sub_7
139:              and          a0, sp, s11
                  bltu         sp, a3, 146f
                  xor          tp, a5, t0
                  xor          zero, a7, a6
                  and          a7, s7, s6
                  bge          s3, s3, 160f
                  auipc        sp, 40318
146:              srai         s3, s11, 15
147:              bgeu         a2, gp, 163f
                  sltiu        t1, t3, -425
                  sub          s1, t3, s5
                  sltiu        s4, s3, 2016
                  sltu         s2, t6, a2
                  sll          t0, a6, gp
                  and          s8, s1, s10
                  xor          s11, s0, a4
                  addi         gp, s10, -495
                  xor          a0, t6, s8
                  xor          t5, t6, t0
                  bltu         t3, gp, 164f
                  and          s11, s8, a0
160:              sltu         a2, s11, t3
                  sltiu        s9, s3, -998
                  slt          t0, t0, s1
163:              lui          ra, 137077
164:              sub          s1, zero, a1
                  slti         s1, t1, -1656
                  bne          t2, t1, 176f
                  addi         a7, s1, 1291
                  xori         a3, s5, -1250
                  srl          t5, a6, a4
                  xor          t0, s6, s8
                  srl          s5, a6, s8
                  bge          s11, t4, 183f
                  or           zero, s9, s0
                  slli         tp, sp, 1
                  srli         a3, a3, 23
176:              add          s11, s3, t5
                  addi         s1, t4, 755
                  sltiu        t1, t4, -546
                  srli         gp, s10, 29
                  xor          zero, zero, a4
                  beq          a1, a7, 183f
                  lui          s8, 117674
183:              slli         t1, t3, 20
                  lw           s1, 4(t6)
                  srai         a1, tp, 7
                  srli         ra, ra, 2
                  addi         t6, t6, 12
                  xori         s5, s10, -112
277:              addi x19, x9, 1
277:              jalr x19, x19, 0
sub_5:            andi         t4, s4, -1173
                  blt          s10, s8, sub_5_stack_p
sub_5_stack_p:    addi         t6, t6, -40
                  and          zero, a1, t6
                  sw           s1, 4(t6)
                  sll          sp, s1, a0
                  la           a3, region_0+1930 #start riscv_load_store_rand_instr_stream_11
                  lui          s11, 17723
                  lbu          s5, 2(a3)
                  slli         s0, t4, 22
                  ori          a2, a1, 621
                  srli         s2, s0, 16
                  xor          s3, s11, a3
                  sh           t1, -14(a3)
                  slli         a5, s9, 9
                  xori         s8, gp, -1516
                  nop
                  sub          t1, s10, s0
                  srli         a7, a5, 14
                  and          tp, a4, a6
                  lhu          a5, -4(a3)
                  lb           s4, 5(a3)
                  lbu          s1, -12(a3)
                  lw           s9, -10(a3)
                  lb           a6, -3(a3)
                  lbu          tp, -14(a3)
                  lbu          tp, -9(a3)
                  lb           a0, 13(a3)
                  srai         s4, t1, 1
                  nop
                  sh           s5, -12(a3)
                  lw           s9, -10(a3)
                  lhu          s0, -6(a3)
                  sll          s4, s6, s2
                  slli         tp, s9, 19
                  sub          s9, t3, t3
                  srai         s10, a1, 18
                  srli         t1, t1, 19
                  sb           t2, -11(a3)
                  sltiu        a4, s10, 1329
                  sb           a6, -4(a3)
                  slt          a6, a2, a6
                  lhu          a1, -4(a3)
                  lhu          t0, -16(a3)
                  lbu          t0, 13(a3)
                  srai         t0, a4, 20
                  lh           zero, 8(a3)
                  auipc        s8, 385760
                  lb           gp, -16(a3)
                  sb           s8, 16(a3)
                  slli         s10, s3, 23
                  lb           s3, 9(a3) #end riscv_load_store_rand_instr_stream_11
                  la           a7, region_0+1258 #start riscv_load_store_rand_instr_stream_12
                  lb           s2, -15(a7)
                  lbu          t5, -32(a7)
                  lw           t0, -38(a7)
                  lbu          tp, -25(a7)
                  sb           s0, -51(a7)
                  sb           a4, 15(a7)
                  sb           s7, -5(a7)
                  lw           t5, -2(a7)
                  sw           gp, 30(a7)
                  sb           s5, -47(a7)
                  lbu          t5, -15(a7)
                  ori          s5, s10, 1279
                  lb           s5, 63(a7)
                  lbu          t0, -23(a7)
                  sb           a5, -28(a7)
                  lb           tp, 15(a7)
                  sw           s2, 62(a7)
                  lhu          s3, 42(a7)
                  auipc        a4, 463766
                  sub          a3, s7, a1
                  lh           s9, 14(a7)
                  sh           s2, 50(a7)
                  addi         s8, sp, 1166
                  sb           t1, -13(a7)
                  sb           a2, -58(a7)
                  sltiu        t5, a6, -1836
                  lb           s7, -54(a7)
                  lbu          a1, -60(a7)
                  xor          a2, s4, t6
                  or           s4, t3, s7
                  lbu          s10, 51(a7)
                  lbu          gp, -27(a7)
                  auipc        a2, 377209
                  sub          a6, s1, a6
                  lbu          ra, 30(a7)
                  lh           zero, -34(a7)
                  slli         t5, sp, 21
                  sb           a1, -57(a7)
                  nop
                  sb           s2, -15(a7)
                  lb           s5, 5(a7) #end riscv_load_store_rand_instr_stream_12
                  la           a1, region_0+1238 #start riscv_load_store_rand_instr_stream_14
                  lw           s0, 342(a1)
                  xori         a7, t1, 1627
                  srli         s11, s1, 20
                  sb           s0, -605(a1)
                  slti         tp, a5, -493
                  lhu          s0, -1216(a1)
                  slli         a3, s7, 24
                  lui          a2, 253974
                  sw           s10, 578(a1)
                  sub          t0, tp, gp
                  srai         a5, a2, 18
                  nop
                  and          t4, gp, s7
                  and          s8, t6, s8
                  lui          s3, 704319
                  andi         s1, s11, 1720
                  lbu          t5, -201(a1)
                  lh           a3, -852(a1)
                  xori         s3, t0, -1176
                  sb           a1, 265(a1)
                  add          s2, s2, s7
                  sw           s8, -142(a1)
                  add          s3, s5, t0
                  auipc        s2, 1000102
                  auipc        t5, 648526
                  srl          t1, s8, s7
                  addi         s1, a0, 2009
                  addi         s9, a6, 98
                  sll          a6, s3, t6
                  ori          sp, t5, -665
                  or           t5, s6, s3
                  sll          t2, zero, a3
                  sra          t1, s6, t2
                  add          t1, s10, ra
                  lhu          s4, 54(a1)
                  nop
                  srl          s7, s2, t3
                  ori          gp, t3, -528
                  andi         s11, t6, -2027
                  sb           t1, 645(a1) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_0+752 #start riscv_load_store_rand_instr_stream_9
                  and          a6, s4, a0
                  sltiu        a3, s0, -813
                  lb           zero, 736(sp)
                  sb           a0, -289(sp)
                  srli         s2, t3, 27
                  sltu         a7, s3, t6
                  xor          zero, t2, s3
                  sh           s0, -70(sp)
                  lw           s3, 384(sp)
                  xori         ra, a3, 1995
                  sb           s11, 978(sp)
                  lbu          zero, 219(sp)
                  ori          zero, s2, 1736
                  lbu          tp, -209(sp)
                  lb           s1, 909(sp)
                  lbu          s1, 1197(sp)
                  sw           s1, 1148(sp)
                  lb           s11, -16(sp)
                  sb           t1, -631(sp)
                  auipc        a6, 1012108
                  andi         s9, a2, -435
                  srli         a7, s5, 29
                  lhu          t1, 492(sp)
                  lb           a4, 43(sp)
                  sh           s3, 382(sp) #end riscv_load_store_rand_instr_stream_9
                  la           ra, region_1+1753 #start riscv_load_store_rand_instr_stream_10
                  auipc        s5, 960666
                  sb           s2, -226(ra)
                  sub          s1, ra, t0
                  andi         s1, a7, 12
                  lbu          t4, -202(ra)
                  lbu          t0, 138(ra)
                  lb           t4, 67(ra)
                  sub          s10, zero, t0
                  sb           t2, -178(ra)
                  lh           s9, 37(ra)
                  srl          t4, gp, s3
                  sb           t1, 214(ra)
                  lb           s8, 15(ra)
                  lw           a6, 211(ra)
                  lbu          a2, -112(ra)
                  sb           t1, 201(ra)
                  lbu          s5, 226(ra)
                  ori          a4, s4, 1836
                  sb           t0, 230(ra)
                  lbu          t4, 104(ra)
                  srai         a1, gp, 4
                  or           s2, a1, t3
                  lb           t4, 106(ra)
                  lhu          s8, 41(ra)
                  lbu          a0, -6(ra)
                  sltu         s9, s10, a7
                  lb           a6, 242(ra)
                  sb           a3, -198(ra)
                  andi         s2, a0, -528
                  srli         s11, sp, 29
                  sh           s0, -183(ra) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1698 #start riscv_load_store_rand_instr_stream_13
                  lbu          s7, -29(sp)
                  xori         t1, s8, -1759
                  auipc        gp, 70802
                  slli         s8, t2, 25
                  addi         a2, a0, 238
                  andi         ra, t6, -1581
                  add          s10, a6, s6
                  sub          t4, s2, sp
                  andi         t0, s5, -122
                  slti         a6, s1, 825
                  lbu          s0, -56(sp)
                  and          s7, s3, s1
                  and          s3, a0, tp
                  slt          s11, ra, t0
                  sltiu        s3, s3, -1455
                  sb           s4, -6(sp)
                  sub          s4, tp, gp
                  slli         a0, t1, 23
                  lui          s2, 211912
                  ori          s1, gp, -1831
                  sb           s8, -25(sp)
                  lb           s2, 36(sp)
                  lb           a2, 61(sp)
                  sltiu        s3, s6, 2001
                  slti         a4, t3, -1063
                  andi         s11, s0, 350
                  lb           a6, 0(sp)
                  sb           a7, 61(sp)
                  xor          a0, s5, s11
                  auipc        a2, 195403
                  sb           a5, -3(sp)
                  sb           t3, -59(sp)
                  lhu          zero, -42(sp)
                  add          ra, a1, a4
                  srl          t0, s7, s9
                  lb           a1, 7(sp)
                  lb           s7, 3(sp)
                  srai         s2, a0, 20
                  lb           s2, -39(sp) #end riscv_load_store_rand_instr_stream_13
                  la           s1, region_0+799 #start riscv_load_store_rand_instr_stream_0
                  lbu          s0, 260(s1)
                  xori         s10, t3, -1541
                  sub          s11, a6, a4
                  sltu         a1, t6, a4
                  lh           a5, -299(s1)
                  sub          s10, tp, s1
                  lbu          t1, 206(s1)
                  lhu          s10, 635(s1)
                  sh           s9, 491(s1)
                  sb           a4, -504(s1)
                  sltiu        a3, s11, 1852
                  slt          a1, s9, a5
                  lbu          s11, 932(s1)
                  sb           a7, -112(s1)
                  sh           ra, 393(s1)
                  auipc        s4, 657265
                  add          zero, s8, t1
                  lbu          t1, -247(s1)
                  auipc        a7, 819689
                  addi         a6, tp, -1062
                  lb           s10, 676(s1)
                  sb           a7, -121(s1)
                  auipc        a3, 183075
                  slt          s5, s0, s3
                  andi         a0, t1, 297
                  lhu          s0, -97(s1)
                  add          a4, t1, a7
                  sll          s5, s7, s1
                  lb           t4, 639(s1)
                  slti         s3, s5, -1739
                  slti         a0, t5, 1884
                  sltiu        a6, s3, 291
                  srai         a6, s2, 14
                  auipc        sp, 535168
                  sub          s11, s4, a4
                  lbu          a6, 124(s1)
                  lb           s3, 691(s1) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_1+355 #start riscv_load_store_rand_instr_stream_5
                  sll          gp, s4, a0
                  lhu          s7, 323(s9)
                  srli         s0, s0, 11
                  or           ra, a4, ra
                  srli         t5, s11, 25
                  sltiu        a1, s0, -1146
                  srli         tp, sp, 5
                  sub          gp, a0, tp
                  slti         a6, gp, 370
                  sh           s5, 783(s9)
                  srai         zero, tp, 23
                  or           a7, t6, s5
                  lb           t1, 1166(s9)
                  ori          s1, a7, 456
                  addi         s11, t4, -323
                  ori          gp, s1, 201
                  slt          s5, a4, s11
                  lb           s11, -323(s9)
                  sltiu        a7, t5, -1756
                  lbu          t2, 52(s9)
                  srli         gp, a4, 29
                  xor          tp, tp, s10
                  sltiu        s4, a3, 1319
                  xor          s11, t6, t3
                  slli         s4, t0, 6
                  sb           s2, 1565(s9)
                  srl          s3, s3, t1
                  lb           s11, 1577(s9)
                  srai         a4, s7, 15
                  lbu          s2, 244(s9)
                  xori         t5, s10, 745
                  srli         t1, t6, 0
                  sll          a4, a2, t4
                  sw           t3, 337(s9)
                  lh           t1, 1081(s9) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1491 #start riscv_load_store_rand_instr_stream_6
                  lb           t5, 16(sp)
                  sb           t2, 4(sp)
                  slli         s3, ra, 21
                  sltu         s0, t1, a1
                  lh           s1, 5(sp)
                  sb           a0, -8(sp)
                  lbu          t5, -4(sp)
                  lb           s0, 15(sp)
                  xor          a7, zero, a6
                  sb           s10, 14(sp)
                  andi         s8, t3, -1029
                  or           a6, t0, zero
                  xor          a3, a0, s0
                  lb           s7, 13(sp)
                  lb           s8, -14(sp)
                  lbu          s9, -10(sp)
                  sw           a2, 1(sp)
                  sltiu        s3, s3, -534
                  srli         s4, zero, 16
                  sra          s1, t0, s8
                  addi         a2, t4, 759
                  lhu          a7, -7(sp)
                  sra          gp, s4, s10
                  sh           s9, -15(sp)
                  lh           s0, -11(sp)
                  sb           s6, 8(sp)
                  sra          t4, a0, t0
                  lb           s10, -7(sp)
                  sb           a0, -16(sp)
                  xor          tp, s11, s6
                  sb           a0, 2(sp)
                  lh           s3, -11(sp)
                  lh           a4, 7(sp)
                  sb           s10, -2(sp)
                  sltu         a5, a6, s2
                  lh           t4, -9(sp)
                  lh           t0, 7(sp)
                  lb           s1, 14(sp)
                  andi         ra, t3, -419
                  sltiu        s1, a2, 1635
                  sltu         zero, s7, sp
                  sub          a3, tp, s3
                  sb           a1, 4(sp)
                  lbu          a5, -1(sp)
                  sll          a3, a1, t6
                  lw           a2, -15(sp)
                  sw           t6, -7(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s9, region_1+394 #start riscv_load_store_rand_instr_stream_2
                  lb           s5, 1258(s9)
                  sra          t1, t1, a2
                  add          s10, a0, zero
                  sltiu        a2, a0, -1376
                  lh           a2, 1018(s9)
                  sb           gp, 67(s9)
                  lbu          zero, 410(s9)
                  srl          a2, s5, a4
                  and          s11, t3, a3
                  lbu          s8, 1451(s9)
                  lh           t5, 942(s9)
                  sll          s2, t2, sp
                  lbu          s0, -369(s9)
                  xor          sp, a1, a1
                  sltiu        s4, t0, -1700
                  srli         sp, a2, 15
                  lb           a5, 163(s9)
                  sb           t1, 131(s9)
                  lbu          s3, 621(s9)
                  srai         s4, s4, 30
                  slt          t4, ra, s2
                  sh           s10, 1280(s9)
                  lb           s5, 113(s9)
                  lb           gp, 187(s9)
                  lbu          s8, 1305(s9)
                  srai         t2, s9, 20
                  srai         a2, t6, 10
                  lh           s8, 1398(s9)
                  sll          s1, s1, t2
                  lb           sp, 593(s9)
                  lhu          zero, 956(s9)
                  slli         s0, tp, 26
                  sb           ra, 696(s9)
                  or           gp, s5, t2
                  lb           a0, 683(s9)
                  lh           a0, 1444(s9)
                  sltu         tp, a1, a1
                  sb           sp, 541(s9)
                  sb           s0, 1487(s9)
                  lb           a5, -255(s9)
                  sub          a6, s10, gp
                  andi         s8, tp, 1048
                  sw           sp, 646(s9)
                  or           a2, s3, s1
                  or           t0, t6, s8
                  lhu          t4, 554(s9)
                  lui          s7, 22186
                  sb           a2, -217(s9)
                  slli         s8, t6, 11
                  sra          t0, ra, a7
                  ori          s2, a0, -567
                  sb           t0, 716(s9)
                  srli         t1, t0, 29
                  sh           a0, 1376(s9) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_0+472 #start riscv_load_store_rand_instr_stream_8
                  sltu         s0, sp, a5
                  sb           s4, 102(t2)
                  ori          a4, tp, 879
                  sltu         a5, t0, t3
                  lb           s5, 35(t2)
                  srl          s1, s1, s5
                  sltu         s1, s6, s4
                  ori          a6, s1, -1442
                  sll          t4, s5, t4
                  srl          a1, tp, s10
                  slt          s9, a0, ra
                  slti         s0, gp, -84
                  addi         t4, s5, -1529
                  srl          s11, a4, t3
                  ori          a7, t3, -685
                  lb           s0, 229(t2)
                  and          t4, a4, t4
                  srai         a6, s11, 19
                  srli         s9, t3, 23
                  lb           t4, 228(t2)
                  srl          s4, a0, t1
                  slli         a2, s0, 1
                  xori         t1, ra, 1575
                  sra          s4, zero, a6
                  sb           t1, 205(t2)
                  lh           a6, 114(t2)
                  sltu         a1, t0, zero
                  xori         a0, t3, -1943
                  andi         s0, s2, -28
                  slli         s4, sp, 24
                  slti         s9, gp, 1618
                  slli         s9, s0, 26
                  ori          sp, a5, -706
                  slli         a4, t0, 13
                  slli         t4, t2, 26
                  srl          s8, t2, s2
                  sb           a6, -223(t2)
                  sh           tp, 98(t2)
                  lhu          ra, 142(t2)
                  lbu          t0, 107(t2) #end riscv_load_store_rand_instr_stream_8
                  la           s4, region_1+1130 #start riscv_load_store_rand_instr_stream_7
                  srl          a4, s6, s1
                  sb           s6, 659(s4)
                  lhu          a4, 432(s4)
                  slt          tp, s11, zero
                  sb           t0, 404(s4)
                  lhu          s5, 800(s4)
                  addi         s11, t5, -1438
                  srai         gp, t6, 28
                  sb           t2, -784(s4)
                  lbu          gp, 731(s4)
                  sltu         sp, s0, s0
                  lbu          a3, -919(s4)
                  or           s1, a1, t3
                  sb           t3, -894(s4)
                  sb           s6, -46(s4)
                  lb           a5, 495(s4)
                  sh           ra, 670(s4)
                  sw           s2, -206(s4)
                  sh           s6, -346(s4)
                  xor          t0, s11, t1
                  lb           a3, -3(s4)
                  srl          a1, a3, zero
                  sra          a4, s0, a0
                  sra          sp, sp, sp
                  lb           a3, 87(s4)
                  lbu          tp, -867(s4)
                  sw           t4, -946(s4)
                  lb           zero, 6(s4)
                  lui          gp, 64983
                  sra          a0, a1, ra
                  slti         gp, tp, -482
                  lb           s9, -1109(s4)
                  sb           a6, 617(s4)
                  add          a3, ra, a6
                  sll          a1, s8, a4
                  sh           gp, -218(s4)
                  lhu          t1, 370(s4)
                  ori          a5, a2, -1715
                  lb           t1, 171(s4)
                  lb           s3, -412(s4) #end riscv_load_store_rand_instr_stream_7
                  bgeu         s9, t1, 5f
                  bge          s3, sp, 21f
                  lui          t1, 518891
                  and          a7, zero, s2
                  andi         a6, s2, -1734
5:                ori          a2, s8, 1040
                  xori         sp, a3, 466
                  bltu         a3, s9, 9f
                  add          a2, s8, tp
9:                lui          s8, 26493
                  sll          sp, ra, t6
                  bltu         s2, sp, 23f
                  add          tp, t1, t2
                  slli         s2, t6, 26
                  xori         t2, ra, -1189
                  xor          sp, a6, gp
                  xori         s4, s8, 636
                  xor          s7, t2, a3
                  sub          ra, s6, t3
                  slti         a3, t5, 539
                  or           s3, s8, t1
21:               beq          s3, gp, 29f
                  sra          a1, t0, gp
23:               nop
                  srli         a4, zero, 1
                  and          tp, a5, s10
                  lui          a4, 771089
                  slli         s3, a1, 5
                  slt          t1, a7, a7
29:               bge          t4, s4, 34f
                  blt          a5, a7, 47f
                  addi         a2, zero, 850
                  xori         tp, s1, -1070
                  nop
34:               srli         s2, s4, 12
                  addi         s4, s3, 1807
                  slt          zero, a3, s4
                  add          t5, s11, tp
                  bge          a6, t3, 57f
                  slti         sp, a5, -1410
                  srli         a4, s3, 11
                  auipc        t5, 176360
                  xor          s4, sp, a3
                  xori         tp, s0, -1538
                  blt          gp, a7, 45f
45:               nop
                  bltu         t0, a4, 63f
47:               slt          a1, t5, s2
                  ori          t5, s4, -1729
                  xor          a3, t4, gp
                  addi         zero, t5, 802
                  srli         a0, t0, 14
                  la           sp, region_0+215 #start riscv_load_store_rand_instr_stream_4
                  and          s8, s2, a1
                  lb           s3, 30(sp)
                  addi         s9, s10, -1408
                  srai         s0, ra, 30
                  lbu          s11, -208(sp)
                  sb           sp, -172(sp)
                  lbu          s8, 138(sp)
                  xor          a6, tp, s0
                  sb           sp, 46(sp)
                  lbu          s11, -82(sp)
                  lb           t4, 44(sp)
                  sb           t5, -48(sp)
                  lb           gp, 167(sp)
                  or           a7, zero, s6
                  lw           s7, 249(sp)
                  sb           s4, 110(sp)
                  lbu          t0, -168(sp)
                  lb           a3, 10(sp)
                  sb           a2, 56(sp)
                  lw           s9, -171(sp)
                  sltu         s8, s0, a3
                  slti         s2, t3, -1172
                  addi         s9, a5, -1722
                  sw           s3, -83(sp)
                  slt          t5, t3, a7
                  slti         s11, a2, -1171
                  sb           t4, 2(sp)
                  ori          s2, s10, 690
                  or           tp, zero, s2
                  sb           tp, 52(sp)
                  srl          a0, a4, t4
                  lb           s0, 154(sp)
                  sb           zero, -168(sp)
                  slli         a3, a6, 16
                  sll          s0, s4, ra
                  lbu          s5, -179(sp)
                  lb           t0, -87(sp)
                  sb           s11, -88(sp)
                  slli         t4, s8, 28
                  lhu          s8, -5(sp)
                  auipc        s1, 488688
                  sra          s9, t4, a6
                  sh           s9, 85(sp) #end riscv_load_store_rand_instr_stream_4
                  xor          tp, s2, t2
                  slt          a2, a1, s4
                  srl          gp, t1, zero
                  lui          s8, 335237
                  nop
57:               addi         t5, t3, -1908
                  sll          a6, a7, s10
                  sltiu        gp, t4, -426
                  bge          t1, s0, 72f
                  auipc        a5, 181827
                  lui          a6, 983114
63:               beq          a3, gp, 81f
                  xor          s1, s10, s5
                  and          t0, s9, a0
                  add          s9, s10, s5
                  lui          a3, 660772
                  add          s7, t0, t6
                  slli         t2, t6, 31
                  beq          s9, a4, 73f
                  addi         s9, s11, -554
72:               add          s4, a3, t4
73:               and          a6, s10, s3
                  bge          s10, ra, 86f
                  sltu         a1, s7, s8
                  andi         s8, gp, -1797
                  srl          a4, sp, s11
                  add          s0, sp, a6
                  auipc        tp, 987418
                  slt          sp, s9, a4
81:               sll          s5, s1, t5
                  slli         a3, zero, 8
                  andi         t1, a3, 144
                  srai         s3, gp, 26
                  nop
86:               andi         a5, s7, 1812
                  xori         ra, a4, 251
                  bgeu         s7, t0, 96f
                  lui          t4, 4763
                  blt          tp, s11, 110f
                  sra          zero, ra, a0
                  blt          ra, t0, 112f
                  andi         t2, sp, -749
                  bltu         a0, tp, 114f
                  bltu         t1, ra, 104f
96:               bltu         a0, s6, 112f
                  slt          gp, sp, a1
                  srli         zero, t0, 3
                  bgeu         t2, a6, 115f
                  slt          t1, tp, a4
                  sltiu        s7, t4, 330
                  auipc        t4, 609676
                  slli         gp, t2, 21
104:              slli         s8, s4, 18
                  bltu         s4, t1, 111f
                  addi         t5, s8, 1733
                  slti         a0, s7, -465
                  or           tp, t0, a4
                  blt          t4, s6, 129f
110:              lui          s9, 242334
111:              srai         s2, a2, 2
112:              srai         a1, a1, 26
                  sub          gp, s3, s9
114:              bne          a5, t4, 130f
115:              xor          a0, s6, s6
                  slti         t1, s5, 2034
                  srli         s2, ra, 16
                  slli         s9, s0, 3
                  bgeu         s9, sp, 136f
                  add          s8, a1, s2
                  slt          s11, t2, a3
                  nop
                  addi         a0, s7, -978
                  beq          s2, s7, 132f
                  srai         s8, s9, 19
                  blt          a3, t3, 136f
                  andi         ra, s1, -2003
                  slli         s2, gp, 11
129:              slti         t2, gp, 833
130:              bne          s5, a3, 148f
                  slt          ra, s8, t6
132:              sltiu        s1, s5, -114
                  xori         s7, t4, 478
                  slti         s2, a6, 1138
                  andi         t4, a7, 536
136:              slli         s4, t6, 1
                  blt          t3, sp, 150f
                  addi         t0, t4, -176
                  srli         s2, s7, 25
                  auipc        s0, 414389
                  auipc        s8, 34884
                  xori         s0, s0, -20
                  sll          a3, s11, a3
                  sub          a6, zero, a5
                  slti         s0, sp, 705
                  auipc        zero, 763648
                  sub          sp, a3, s3
148:              srl          t1, zero, a3
                  and          a7, t3, s1
150:              lui          s1, 889895
                  and          t4, a6, s4
                  srai         sp, tp, 21
                  ori          t2, a4, -1158
                  slt          a2, sp, a7
                  add          tp, s8, s6
                  sub          s1, a2, ra
                  blt          a4, a2, 162f
                  and          s9, a7, zero
                  sub          a5, t5, a3
                  andi         t1, s11, -572
                  andi         s5, t4, -1343
162:              srl          s2, s0, a2
                  sltu         s8, tp, s5
                  srai         t5, t6, 2
                  slli         zero, a7, 31
                  xor          a5, s1, ra
                  ori          t4, s3, -1836
                  ori          a1, gp, -1703
                  ori          a7, s3, -593
                  nop
                  bne          a3, t1, 187f
                  add          sp, a6, a3
                  sltu         a7, s9, s0
                  sra          s0, a1, t1
                  andi         s10, a6, 281
                  slti         s1, t4, 1060
                  blt          s4, s8, 185f
                  xor          t5, s7, s0
                  bgeu         tp, s9, 191f
                  andi         t0, sp, -1391
                  sltiu        t0, s8, -797
                  srli         t1, t3, 21
                  blt          a7, t3, 203f
                  nop
185:              sltu         a0, t1, t0
                  addi         t4, t4, -1017
187:              addi         s2, t0, -692
                  bgeu         a6, a1, 208f
                  andi         sp, zero, 2040
                  or           s7, a3, a0
191:              sub          a7, sp, a2
                  bgeu         s1, t1, 201f
                  or           s1, t2, gp
                  sra          s8, t6, t4
                  bgeu         t6, ra, 200f
                  andi         t0, gp, -534
                  beq          s9, s1, 214f
                  bltu         a1, zero, 201f
                  sltiu        s4, sp, -1855
200:              slti         s3, t5, -1172
201:              srl          t1, a6, ra
                  srl          a0, a3, s9
203:              srai         s10, a7, 18
                  or           a1, s5, s5
                  sra          s3, t4, a4
                  lui          s2, 298126
                  sltu         s5, a5, t1
208:              xor          a5, s10, s7
                  xor          a2, s5, s7
                  ori          tp, s11, -1038
                  bltu         t6, tp, 223f
                  auipc        s1, 136239
                  add          s1, zero, t3
214:              bltu         s0, t4, 226f
                  bltu         t2, t2, 221f
                  and          s1, a4, gp
                  sll          s5, s0, ra
                  or           tp, sp, t6
                  auipc        a3, 420346
                  and          s7, s3, a3
221:              beq          s4, s10, 237f
                  bne          a5, a3, 241f
223:              srli         s4, zero, 5
                  srai         s0, ra, 2
                  bne          a6, a6, 227f
226:              sra          t0, s8, t0
227:              srli         t0, s10, 17
                  bltu         s3, s4, 248f
                  bltu         a7, t1, 246f
                  bgeu         a7, s6, 250f
                  xori         a5, s9, 36
                  andi         s11, s3, -150
                  lui          a4, 635024
                  or           s4, a1, t6
                  sltiu        t1, a5, -400
                  slt          a4, s1, a3
237:              lui          tp, 908944
                  beq          s8, a2, 255f
                  xori         tp, a5, -643
                  sltiu        gp, a1, 1234
241:              bne          t0, a5, 257f
                  auipc        ra, 7185
                  beq          t1, a4, 256f
                  blt          a5, s0, 264f
                  xor          s11, s8, t4
246:              bge          t0, s9, 251f
                  slti         s11, t4, 571
248:              beq          zero, t3, 266f
                  andi         t1, s11, 808
250:              xori         gp, a7, -938
251:              xori         sp, s1, -1961
                  xori         s7, s10, 746
                  blt          a7, zero, 258f
                  slti         a1, t5, -137
255:              add          t1, t5, s0
256:              bge          a1, s9, 266f
257:              addi         s11, s5, 1602
258:              ori          s3, s8, 925
                  addi         s1, t3, -733
                  bgeu         s7, s10, 268f
                  bltu         s1, t6, 269f
                  bgeu         s8, a4, 263f
263:              blt          s2, a1, 281f
264:              sltiu        a0, sp, 90
                  xori         a7, s3, -1100
266:              sll          a6, a2, tp
                  slt          sp, a3, t6
268:              lui          t4, 384161
269:              nop
                  slt          s4, s8, a3
                  or           a4, s9, tp
                  auipc        sp, 6221
                  addi         a4, t5, 1690
                  slt          a4, a0, a3
                  slt          zero, t4, s3
                  xor          a2, t1, a0
                  xori         s5, tp, -1958
                  addi         a0, s2, 2045
                  sll          a2, t5, s11
                  bgeu         t6, a0, 300f
281:              sub          s9, a5, t2
                  slti         t0, t3, -1907
                  bne          a7, s11, 295f
                  bltu         a5, tp, 292f
                  sra          t5, t1, t6
                  and          t1, a7, t0
                  lui          s10, 812451
                  auipc        s3, 911196
                  slt          s7, t1, a0
                  add          t1, a6, s11
                  ori          t5, s8, 1661
292:              srai         a0, s5, 14
                  slli         t1, s0, 24
                  sll          ra, s5, s7
295:              sub          s0, t1, a0
                  sltu         s2, a3, s4
                  sltiu        a7, a6, 1761
                  sub          s8, s6, t0
                  bltu         s7, a3, 304f
300:              and          t1, t5, s7
                  sub          s4, a0, s9
                  sub          a4, s7, t3
                  nop
304:              srai         t4, t4, 27
                  nop
                  sll          t5, t3, t3
                  xor          gp, t2, s1
                  xor          s10, a7, t4
                  xori         a2, s3, 109
                  lui          t0, 927501
                  slti         s1, t6, 130
                  addi         a0, t3, -2
                  sub          a0, s3, tp
                  bge          t4, s5, 316f
                  or           a3, sp, zero
316:              or           s7, t1, gp
                  sra          a4, gp, s10
                  slli         s4, gp, 4
                  addi         a1, t3, -395
                  andi         a5, s0, -1264
                  srl          a6, s4, t3
                  srai         a1, t0, 1
                  auipc        zero, 740242
                  andi         s9, a1, -1057
                  nop
                  bne          t0, t0, 338f
                  and          zero, a3, s11
                  srl          sp, a4, a2
                  sub          s11, s5, s3
                  nop
                  beq          t5, t5, 349f
                  srai         a5, s6, 6
                  slti         s4, s4, -1568
                  bgeu         a0, s1, 353f
                  sll          t4, s4, tp
                  srai         s9, a0, 14
                  slti         s7, a7, 1957
338:              srli         a2, sp, 8
                  sltu         s1, s8, s6
                  srl          sp, t2, ra
                  srl          s8, s8, tp
                  andi         t0, sp, 1530
                  lui          s8, 36988
                  nop
                  slti         gp, t0, -513
                  slti         a6, s6, 402
                  bne          s3, ra, 364f
                  and          a5, a6, s6
349:              blt          t5, a4, 354f
                  srai         t1, a4, 23
                  slli         s3, t2, 2
                  bne          a4, a3, 372f
353:              slti         a0, a1, -34
354:              xor          s0, s0, s7
                  sll          s5, s2, sp
                  srai         t2, a2, 25
                  sra          s5, s4, s10
                  nop
                  xor          s11, s5, sp
                  sub          sp, a7, ra
                  xori         s5, s8, 2045
                  bne          s3, a4, 363f
363:              xor          gp, a6, s11
364:              bgeu         zero, s2, 384f
                  sub          s8, t3, s3
                  beq          a5, t2, 369f
                  beq          a1, s11, 385f
                  srl          s4, ra, s7
369:              andi         a4, t6, -1923
                  slli         s7, s0, 5
                  lui          a3, 901056
372:              sra          a7, s3, s3
                  sra          t2, t0, t6
                  sltu         a3, gp, t5
                  lui          s4, 692908
                  sltiu        a5, s11, -568
                  slli         a7, a1, 2
                  blt          s1, gp, 395f
                  sra          s9, s8, s8
                  blt          t5, t4, 396f
                  addi         a3, s10, 1348
                  beq          a2, a2, 394f
                  bltu         t5, t1, 396f
384:              blt          tp, t4, 390f
385:              bge          a2, t0, 401f
                  blt          t6, a6, 402f
                  or           t5, s2, s11
                  beq          a7, tp, 408f
                  xori         a3, s4, 1897
390:              bne          sp, t0, 398f
                  srl          s0, s5, a1
                  sltiu        s9, s6, -452
                  srli         s4, ra, 14
394:              ori          a0, gp, -1992
395:              auipc        tp, 539520
396:              sll          gp, t5, s1
                  add          s0, a3, s8
398:              addi         s0, ra, -73
                  sltu         a1, a0, a1
                  beq          gp, a7, 420f
401:              xor          gp, s11, s9
402:              xori         sp, s8, 1606
                  bge          t2, s1, 413f
                  nop
                  beq          a3, zero, 413f
                  sub          s2, a2, zero
                  lui          s9, 43950
408:              auipc        t1, 293211
                  srai         t1, a5, 8
                  la           s8, region_1+1862 #start riscv_load_store_rand_instr_stream_3
                  lbu          a3, 2(s8)
                  lb           s9, 13(s8)
                  lbu          s11, 1(s8)
                  sra          t4, t2, zero
                  sltiu        ra, t1, 162
                  sb           a7, -16(s8)
                  lbu          s2, -2(s8)
                  lbu          s9, 12(s8)
                  srai         a0, a6, 16
                  lbu          s3, 7(s8)
                  sb           t0, 15(s8)
                  lb           s7, 6(s8)
                  lh           ra, -2(s8)
                  sltu         s1, a3, t6
                  lhu          s11, 14(s8)
                  lh           a4, -2(s8)
                  xor          s1, s4, tp
                  lbu          ra, 1(s8)
                  xori         t1, t6, -1596
                  sb           a1, 7(s8)
                  sll          a3, t5, t0
                  lw           sp, -6(s8)
                  lbu          s5, 5(s8)
                  xori         s2, gp, -1573
                  sh           s9, -10(s8)
                  and          a7, a6, ra
                  sb           a6, 3(s8)
                  sb           a1, 11(s8)
                  add          s3, s9, t4
                  lbu          a2, -5(s8)
                  lbu          s1, 0(s8)
                  lbu          s2, 5(s8)
                  lb           a1, 5(s8)
                  lbu          s5, -9(s8)
                  sra          a7, sp, s3
                  sh           t3, 16(s8) #end riscv_load_store_rand_instr_stream_3
                  slti         gp, t6, -533
                  beq          a5, t5, 416f
                  or           s2, s10, s2
413:              srl          a2, ra, s7
                  or           s10, s0, t5
                  andi         a6, s11, -1768
416:              andi         tp, a2, 1658
                  bgeu         s11, s4, 426f
                  sra          t2, t3, s2
                  srai         t5, s7, 26
420:              slt          s2, s4, a6
                  or           s9, a3, sp
                  sltu         a1, a6, s6
                  ori          s10, s10, 726
                  blt          t1, a7, 441f
                  bge          s9, s2, 430f
426:              or           a0, s1, a7
                  slli         s9, s1, 21
                  sra          tp, t6, s3
                  nop
430:              sra          a4, a7, t4
                  andi         s8, tp, -1258
                  sltu         tp, zero, s11
                  lui          s11, 296912
                  lui          t2, 194237
                  bltu         s2, s11, 443f
                  bgeu         s4, s5, 455f
                  bne          s5, a6, 455f
                  bltu         t2, s1, 450f
                  addi         gp, s8, -293
                  beq          t1, a5, 460f
441:              blt          a5, t6, 453f
                  sltu         a4, s0, t4
443:              sltiu        sp, t3, -751
                  blt          a1, s8, 449f
                  nop
                  beq          s9, s2, 466f
                  nop
                  slt          t1, a2, t3
449:              srai         a3, s4, 5
450:              srai         t1, s6, 5
                  nop
                  srli         s7, sp, 18
453:              ori          a0, zero, -370
                  bgeu         s5, t2, 462f
455:              and          gp, a5, a1
                  srai         s10, s1, 4
                  xori         sp, a7, -1420
                  sltiu        t5, s7, 1110
                  sll          a3, a2, a0
460:              slt          s9, s1, t1
                  bne          t1, tp, 469f
462:              bge          a5, a2, 475f
                  andi         s0, s7, 1550
                  srl          t1, s8, sp
                  sra          s0, t1, sp
466:              sll          s0, t0, s6
                  sll          s10, a0, a6
                  srai         ra, s8, 14
469:              slli         s1, s9, 3
                  bltu         t1, s1, 487f
                  or           s0, s9, s6
                  ori          s1, zero, -831
                  beq          s11, t2, 490f
                  bne          a4, t0, 483f
475:              slli         s10, s0, 11
                  sltu         a2, a7, t2
                  addi         s9, s7, 1338
                  sltiu        sp, t5, 54
                  or           s10, a5, s10
                  bgeu         s3, ra, 496f
                  addi         s8, sp, 1658
                  ori          zero, s9, -1622
483:              sub          a0, a2, a7
                  and          s7, s8, s7
                  xor          s10, s0, t2
                  bgeu         t2, s1, 492f
487:              sltu         a7, s10, s4
                  andi         a6, a1, -1299
                  lui          a1, 208554
490:              slli         s3, s3, 2
                  lui          a0, 846758
492:              andi         tp, t3, 1027
                  add          tp, s7, t0
                  sltu         s9, s5, s1
                  lui          s10, 348323
496:              srli         s2, t5, 31
                  xor          tp, gp, a5
                  addi         s2, s10, -400
                  bgeu         t1, s6, 516f
                  or           ra, sp, zero
                  lui          s8, 491149
                  xor          s7, a7, a1
                  sub          s1, s2, s5
                  blt          a6, a3, 520f
                  beq          t0, t1, 523f
                  srli         a4, a7, 25
                  sub          a6, a0, t0
                  blt          t6, zero, 524f
                  sltu         tp, s1, a7
                  auipc        t5, 333802
                  nop
                  andi         a2, s8, 1588
                  ori          a4, s8, 1548
                  sra          a1, gp, t5
                  bne          sp, a0, 518f
516:              bgeu         t6, zero, 521f
                  slli         s5, t3, 30
518:              sltu         a6, a4, s0
                  sltu         t4, s7, s4
520:              bge          s5, t5, 532f
521:              bltu         ra, s1, 541f
                  slli         s11, s7, 3
523:              bltu         a0, sp, 525f
524:              addi         a3, s2, -600
525:              slt          t4, s3, a0
                  bne          s9, t3, 527f
527:              sub          a5, a5, s6
                  srli         a0, t1, 24
                  sltu         a3, a1, t0
                  bgeu         a7, a6, 550f
                  xor          t0, s5, s3
532:              srai         s3, a6, 3
                  xori         s3, a0, 1476
                  sltiu        tp, t2, -1079
                  bge          t3, a4, 545f
                  sra          ra, s2, a0
                  andi         t1, s9, 1072
                  auipc        a6, 807860
                  xor          t5, s6, t5
                  srli         a3, tp, 12
541:              xor          s4, t1, tp
                  slli         s10, s11, 19
                  xori         t1, a4, 361
                  srl          a4, a4, a0
545:              sra          s1, s10, t0
                  bltu         t0, gp, 566f
                  sub          a3, t1, a2
                  sll          a5, t1, a3
                  srai         a3, a5, 28
550:              addi         s10, s1, -452
                  slli         zero, a3, 17
                  sltu         a1, a5, s2
                  sltiu        a6, a3, 583
                  sra          sp, a7, s7
                  add          s11, s4, s1
                  lui          a1, 555410
                  slt          a5, t0, ra
                  sll          a2, a3, a7
                  ori          ra, a4, -230
                  addi         zero, s9, -446
                  slli         s11, tp, 11
                  sub          ra, zero, a1
                  sub          s11, t0, tp
                  sll          a6, s0, tp
                  beq          s1, s11, 570f
566:              srai         ra, s6, 13
                  andi         s5, tp, 306
                  sltu         s2, a5, s9
                  bltu         a0, ra, 578f
570:              and          t0, s11, a4
                  nop
                  addi         a1, s8, -1497
                  xor          a3, t6, s1
                  lui          zero, 123268
                  sub          a4, a6, t5
                  slt          a5, s6, ra
                  xori         t5, t3, 1146
578:              lui          t5, 935465
                  addi         a0, a1, -1284
                  sltiu        zero, t2, -711
                  sub          t0, s5, t1
                  srai         a4, s8, 28
                  nop
                  sltu         a0, s4, s6
                  sub          tp, a6, a7
                  bgeu         t6, a5, 603f
                  bge          t6, s10, 593f
                  bge          a0, a2, 605f
                  slt          s0, s8, t1
                  xor          s0, t6, t4
                  slli         s4, s8, 17
                  addi         s10, s10, 1004
593:              slli         s3, a0, 8
                  bltu         s11, t0, 614f
                  slt          tp, s9, s9
                  addi         sp, s3, -1961
                  add          s7, s7, sp
                  slt          tp, a7, t3
                  xori         sp, zero, -636
                  blt          a4, s5, 605f
                  bge          s9, tp, 609f
                  add          s11, s5, s9
603:              sltiu        a7, s7, -1440
                  nop
605:              blt          a6, sp, 607f
                  or           s9, s7, s2
607:              and          s7, s9, a5
                  sub          s9, a3, s3
609:              or           zero, s5, a2
                  sub          s1, t3, a0
                  sltu         s0, s10, s3
                  xor          zero, gp, s8
                  slli         zero, tp, 14
614:              srl          a3, t0, s0
                  bge          s4, s11, 631f
                  add          a4, s2, s8
                  beq          t5, a1, 630f
                  xori         s1, s4, -515
                  blt          zero, t1, 639f
                  or           s3, t5, s10
                  sub          s11, t2, a1
                  ori          s0, t2, -1060
                  or           t4, s4, tp
                  bltu         s6, a6, 641f
                  lui          s8, 750262
                  add          t0, s6, t3
                  bgeu         a1, a3, 647f
                  bltu         a4, t1, 648f
                  xor          s7, t5, s11
630:              add          gp, s10, s6
631:              sltiu        a3, a2, 1110
                  slt          s0, s9, s7
                  bgeu         s8, a6, 634f
634:              srai         t0, s3, 5
                  blt          s5, t5, 647f
                  srai         ra, s10, 7
                  bltu         a0, s7, 649f
                  bltu         gp, t2, 658f
639:              bge          s0, a1, 651f
                  slli         a2, s6, 19
641:              sub          t5, t0, s7
                  slli         s7, s10, 3
                  srl          a0, s5, s4
                  addi         zero, t1, 1793
                  slli         t1, s0, 6
                  lui          zero, 975996
647:              slli         a6, s11, 16
648:              sltiu        a5, s11, 1596
649:              or           t4, a6, tp
                  bgeu         s0, t5, 658f
651:              sll          t1, t3, a3
                  sll          a0, t6, a0
                  xori         t4, t3, -525
                  beq          zero, s11, 672f
                  srai         zero, s3, 30
                  blt          s4, s7, 666f
                  nop
658:              srl          s11, t2, s5
                  bne          s0, t0, 667f
                  beq          s8, t5, 679f
                  sra          t0, gp, a2
                  addi         s9, s6, -1886
                  sub          a4, s5, a3
                  bgeu         a4, s5, 669f
                  sltiu        t2, a1, -2019
666:              sra          sp, a5, s4
667:              sra          s10, s10, s2
                  and          s2, a6, s3
669:              ori          s9, s11, -440
                  srai         tp, s0, 2
                  or           a0, t3, s1
672:              ori          t2, s8, 333
                  slt          s0, s2, a6
                  sltu         a7, a1, t1
                  srai         t4, s7, 27
                  auipc        s0, 622547
                  add          sp, ra, s11
                  bne          s0, a4, 681f
679:              sll          a1, t4, a4
                  blt          s10, s0, 696f
681:              slt          ra, t3, s8
                  andi         t2, a3, 753
                  add          s2, t1, s2
                  srl          a4, a0, gp
                  beq          a1, ra, 703f
                  xor          a2, a5, s8
                  and          s0, s0, s8
                  bge          a2, a5, 704f
                  add          s7, s5, a1
                  ori          t1, s7, 482
                  blt          s5, a2, 699f
                  ori          tp, sp, -1728
                  srli         a4, tp, 29
                  ori          s2, ra, 1738
                  slli         t4, t1, 18
696:              andi         a6, s8, 1247
                  xor          a1, s11, tp
                  slli         t1, t5, 13
699:              sub          t2, ra, a6
                  srl          t0, s11, s2
                  xori         s7, s0, -205
                  addi         a2, s6, -1017
703:              blt          tp, s3, 708f
704:              sub          s3, t4, s4
                  sll          s7, s0, s0
                  andi         s1, a0, 181
                  lui          a7, 292486
708:              slt          s5, a3, t2
                  ori          ra, a4, -548
                  beq          s0, s6, 726f
                  bge          t5, t0, 719f
                  xor          s0, s0, s11
                  or           a3, t0, s1
                  and          ra, s10, a1
                  auipc        t1, 608165
                  addi         a2, t4, -1083
                  sltiu        s7, s1, -923
                  slti         a0, a5, -1121
719:              slli         s5, a3, 15
                  bge          s5, gp, 738f
                  xor          s10, s11, s3
                  andi         t2, s3, -824
                  ori          t1, s7, 1311
                  bne          zero, s1, 727f
                  srai         s7, zero, 16
726:              or           sp, s0, s11
727:              xori         t0, s7, 617
                  or           sp, ra, t0
                  ori          ra, s8, -291
                  slt          s7, a0, ra
                  bge          gp, a0, 736f
                  slt          ra, t2, a5
                  addi         s9, ra, -780
                  bge          t0, a2, 742f
                  and          a2, gp, t1
736:              auipc        s8, 830582
                  sub          s5, a3, t6
738:              andi         sp, s8, -975
                  slt          s3, t6, s3
                  add          ra, t6, a3
                  bne          s11, s10, 758f
742:              slli         a5, s5, 2
                  bne          t5, s4, 763f
                  sll          a5, t1, a0
                  slt          gp, t2, t3
                  sub          s2, zero, tp
                  sltiu        s2, t0, -1576
                  andi         a4, s1, 1028
                  srli         tp, s0, 17
                  sra          s3, s0, t4
                  sltiu        a0, s2, 692
                  ori          t0, t4, 1049
                  beq          t4, sp, 755f
                  srl          s2, s11, a0
755:              andi         a6, a0, 1703
                  beq          a3, gp, 776f
                  srai         zero, s1, 15
758:              add          a6, tp, t4
                  lui          a2, 527055
                  andi         a5, a3, -1258
                  sltu         s0, t5, t6
                  srai         s11, gp, 16
763:              auipc        s2, 272087
                  addi         s3, a5, -1569
                  auipc        a1, 749928
                  sra          s1, s4, s4
                  or           t5, zero, a1
                  xori         s11, zero, 818
                  bltu         t5, s2, 787f
                  add          a1, ra, s9
                  sltiu        s0, a2, 350
                  srl          tp, a3, a3
                  bne          s10, s10, 785f
                  auipc        s8, 388463
                  bge          s9, a7, 791f
776:              slli         s0, ra, 7
                  slt          a7, s3, t4
                  sltu         s1, s8, ra
                  bne          a4, s2, 798f
                  or           s10, s10, t1
                  bltu         s1, s9, 793f
                  bge          gp, s6, 792f
                  add          a4, a7, a1
                  ori          s4, t1, 345
785:              beq          a7, t0, 790f
                  bne          a4, t5, 806f
787:              bne          s3, gp, 807f
                  bge          gp, a4, 808f
                  xori         a1, a0, -1653
790:              blt          a5, t0, 796f
791:              addi         sp, a3, 1652
792:              ori          zero, s4, -213
793:              lui          s0, 292956
                  sub          t5, a1, t3
                  xori         a5, s6, -318
796:              sltiu        s1, s10, 214
                  xori         t4, a4, 2032
798:              xor          a4, t3, s8
                  sll          tp, a7, a5
                  sll          t2, ra, a2
                  lui          s11, 101322
                  slti         a5, s10, -821
                  bne          a2, a1, 815f
                  andi         a4, s8, 919
                  and          ra, a3, t6
806:              bge          a6, t3, 807f
807:              addi         a7, a2, -1601
808:              sub          t5, a6, s1
                  sltu         s11, t6, s0
                  ori          s9, ra, -1765
                  xor          s3, s1, tp
                  slli         a7, t0, 20
                  sltu         s0, s5, a7
                  srai         t5, sp, 22
815:              xori         a3, s9, -996
                  sll          a7, gp, s9
                  srai         s5, s0, 18
                  srli         s8, t1, 7
                  sltiu        a5, s9, 1327
                  lui          s3, 629958
                  srai         t0, zero, 0
                  lui          sp, 530328
                  bltu         s1, s10, 832f
                  slli         a0, s7, 1
                  srai         a7, a7, 23
                  bltu         ra, a4, 839f
                  bge          s3, s0, 844f
                  and          t2, s5, s1
                  nop
                  bne          s0, t5, 846f
                  slt          s2, a4, t3
832:              xor          sp, a5, s3
                  sra          s3, a6, s1
                  bne          t6, s11, 851f
                  slti         t5, a3, 1407
                  xori         s10, t5, -1693
                  nop
                  addi         s1, s1, 443
839:              sltiu        s8, t1, 0
                  xori         s4, t1, -2041
                  add          s2, a1, zero
                  slli         t2, t2, 28
                  blt          s5, s1, 863f
844:              srai         gp, gp, 22
                  sltu         s11, s4, t1
846:              xor          t0, a0, t5
                  sltu         zero, a7, gp
                  slti         a5, t5, 509
                  beq          a5, s3, 868f
                  nop
851:              and          s5, s10, t0
                  srli         t0, s11, 20
                  and          a4, a0, s8
                  auipc        a7, 325541
                  blt          s9, s9, 875f
                  slti         a1, s2, 1247
                  srl          t2, t0, s8
                  addi         t0, a2, 208
                  bgeu         t4, gp, 875f
                  xor          s8, s8, s9
                  srli         zero, ra, 1
                  bltu         sp, t2, 878f
863:              add          ra, t2, s8
                  nop
                  slti         sp, zero, -249
                  xor          s9, s10, a1
                  and          s4, t3, zero
868:              bne          t4, a1, 880f
                  sltu         sp, t3, s3
                  bge          s11, t4, 873f
                  bge          s0, t6, 887f
                  srli         s4, t3, 5
873:              lui          s1, 862871
                  slt          a2, s8, a6
875:              sra          sp, s5, s4
                  and          sp, s5, s6
                  addi         a0, a0, -2042
878:              xori         s3, zero, -1769
                  bge          s11, a3, 897f
880:              andi         s10, a4, 805
                  bge          a5, t3, 889f
                  addi         ra, a6, -702
                  andi         s5, t2, -1438
                  srl          a0, sp, t1
                  bne          a6, s7, 905f
                  sltiu        tp, a7, -1823
887:              bltu         a2, sp, 900f
                  addi         t1, t0, -749
889:              slti         a7, a1, 1475
                  srl          s2, a6, s8
                  and          t5, t3, s3
                  lui          s2, 132973
                  srli         s9, tp, 14
                  auipc        a2, 773326
                  slli         gp, s1, 14
                  xor          a5, t1, s1
897:              srl          s5, s1, t2
                  bge          s6, a6, 915f
                  srl          zero, t4, a7
900:              slli         t4, s4, 16
                  srli         t1, t0, 5
                  blt          s1, s11, 919f
                  srl          a3, a5, t3
                  ori          tp, s8, 1957
905:              add          a5, t5, s6
                  bge          s6, t3, 911f
                  andi         s5, s9, -1454
                  sltiu        s9, t4, -21
                  srl          s2, s2, tp
                  ori          tp, t5, 1678
911:              bne          gp, t2, 916f
                  srai         s10, a5, 24
                  sll          s5, zero, a6
                  add          s11, s8, s5
915:              or           s7, s6, s2
916:              and          s9, s2, t5
                  srai         a3, s8, 4
                  lui          zero, 674083
919:              nop
                  slti         s4, sp, 1742
                  sub          zero, a5, s1
                  ori          sp, t5, 1243
                  ori          s4, t5, 60
                  and          s4, gp, a0
                  slli         s1, t6, 8
                  srl          s10, t4, s2
                  xori         t2, a1, 716
                  slt          s5, s4, s5
                  bne          s0, s4, 931f
                  slti         s1, t0, -253
931:              bne          s5, t2, 951f
                  slt          sp, t0, a3
                  xor          s9, s3, a5
                  srai         a7, s9, 8
                  srl          s11, a1, zero
                  blt          a3, a1, 953f
                  addi         s9, t0, 619
                  or           t4, s7, t2
                  auipc        a0, 486212
                  addi         a0, s8, -864
                  addi         a7, s10, 555
                  slt          s11, s0, gp
                  add          s0, t3, t5
                  sltiu        gp, a4, -1513
                  and          a0, gp, tp
                  lui          a3, 95964
                  srl          a3, a2, s11
                  or           s2, gp, a7
                  andi         a0, s2, 1629
                  srl          s1, s1, s9
951:              ori          s3, tp, -1868
                  or           t1, tp, s11
953:              srai         gp, s1, 27
                  sra          s11, sp, a5
                  slli         sp, t3, 31
                  bge          s4, tp, 961f
                  addi         gp, t0, -1350
                  addi         t1, s3, 612
                  bltu         s3, a4, 977f
                  sra          a1, s3, s2
961:              sltu         a7, t6, s6
                  sltiu        s8, t1, -389
                  bne          a3, ra, 983f
                  ori          sp, t6, -1531
                  xor          s9, s3, t2
                  srli         a4, t0, 13
                  srl          t4, a2, a5
                  srl          s8, t5, s5
                  sra          s1, s3, sp
                  nop
                  slt          t1, tp, a0
                  srl          a2, s1, t6
                  add          a4, s7, s3
                  slt          ra, s4, s1
                  sub          s2, s8, s9
                  lui          sp, 693508
977:              bgeu         s6, s2, 987f
                  srai         s10, s0, 11
                  slli         gp, s2, 9
                  add          s9, ra, a2
                  sltu         t2, s2, gp
                  lui          ra, 801216
983:              slt          t1, s9, a2
                  xori         s1, a2, -603
                  and          s7, t1, ra
                  sltiu        a7, tp, 482
987:              andi         a0, gp, -626
                  bne          t5, sp, 996f
                  lui          a2, 432122
                  or           a0, tp, t0
                  bgeu         s2, s5, 999f
                  xori         tp, t1, 1664
                  and          s4, s5, s6
                  bgeu         sp, a2, 1006f
                  slti         a7, zero, 1623
996:              xori         a2, t4, 810
                  lui          s9, 857973
                  or           a5, s0, a3
999:              sra          a0, s10, s8
                  bne          gp, s1, 1012f
                  add          a0, s1, s3
                  slt          a7, a2, a0
                  srai         s7, t0, 24
                  blt          s2, t6, 1005f
1005:             ori          s8, s5, 662
1006:             slli         s11, gp, 17
                  add          tp, t2, s10
                  ori          s9, s11, 1654
                  sll          zero, t5, a4
                  bltu         ra, tp, 1016f
                  blt          s10, s2, 1020f
1012:             slli         t2, t2, 17
                  slti         a2, s7, 129
                  srl          a5, s8, a5
                  sra          t2, tp, a4
1016:             bne          t4, t2, 1024f
                  sltiu        sp, t6, -87
                  ori          s1, s3, -1560
                  beq          a1, gp, 1032f
1020:             srli         a7, t1, 29
                  srli         s7, a2, 30
                  add          a4, s11, a0
                  sltiu        a7, a6, -755
1024:             andi         s10, a5, -1419
                  andi         t5, s1, 1105
                  bltu         t0, s7, 1042f
                  sub          s5, s7, t6
                  ori          s11, s3, 1312
                  bgeu         zero, s5, 1034f
                  sub          a6, s10, a7
                  xori         t5, ra, -1567
1032:             sll          a4, s10, a4
                  slli         s2, zero, 2
1034:             andi         s7, s9, -1111
                  slti         t2, a7, -619
                  bgeu         s1, a2, 1054f
                  slti         gp, a4, -546
                  ori          s0, t2, 702
                  bltu         a7, sp, 1048f
                  xori         a6, a1, 1700
                  srl          s8, s1, s9
1042:             sltu         ra, ra, s7
                  srai         s5, zero, 31
                  nop
                  sub          a5, s5, zero
                  beq          a2, zero, 1048f
                  srl          a1, s8, t0
1048:             slti         a1, s2, 1674
                  srli         s4, sp, 24
                  srl          s5, s3, a1
                  xor          s8, ra, tp
                  sub          t0, s7, tp
                  srl          tp, s10, s2
1054:             bgeu         a4, a3, 1071f
                  bge          a4, s0, 1072f
                  slti         t0, a3, 489
                  slli         s3, t0, 7
                  beq          t0, t3, 1064f
                  add          a3, s7, s4
                  bltu         s10, s0, 1080f
                  srl          s3, t0, t4
                  andi         t0, t3, -1183
                  lui          s1, 941293
1064:             srli         s2, s9, 13
                  andi         s3, ra, -1790
                  slt          sp, s4, sp
                  sltiu        t5, t6, 1239
                  andi         t2, t0, 505
                  addi         t2, t0, 1766
                  andi         s5, gp, 257
1071:             andi         s11, a2, 1713
1072:             slli         a4, a0, 24
                  sll          a1, a5, t2
                  sll          t5, a6, t6
                  bltu         a0, a3, 1087f
                  beq          ra, s8, 1088f
                  andi         t1, t4, 398
                  andi         t2, a6, 110
                  sltu         a1, s4, t3
1080:             bgeu         a7, a5, 1096f
                  srl          t0, t2, t0
                  srai         s2, t0, 4
                  lui          s11, 505925
                  srl          ra, s7, a4
                  sra          s9, s4, s7
                  addi         s10, t4, 1546
1087:             srli         a3, s2, 2
1088:             andi         s7, s4, -664
                  andi         ra, t0, 1529
                  auipc        zero, 56069
                  add          t0, a4, s8
                  sll          s1, a5, a5
                  xori         s1, ra, 901
                  srli         a0, s11, 3
                  bne          a2, t2, 1111f
1096:             srai         s0, t2, 15
                  srai         s11, s4, 21
                  xor          t2, s2, a3
                  ori          zero, s4, 1932
                  xor          tp, s5, ra
                  beq          s11, a4, 1109f
                  bge          s7, t4, 1107f
                  auipc        ra, 577490
                  srai         sp, gp, 0
                  srli         s11, a6, 16
                  slli         a5, t1, 7
1107:             blt          a6, gp, 1119f
                  sltiu        t4, s5, 1751
1109:             sub          s8, a6, t4
                  sltiu        a4, s2, -1537
1111:             lui          s10, 790623
                  or           s3, s6, zero
                  nop
                  blt          s9, a1, 1134f
                  xor          ra, a4, s4
                  and          s10, t0, s4
                  beq          sp, a1, 1122f
                  ori          s9, s1, -103
1119:             slt          s11, a5, s6
                  slt          gp, s2, a5
                  srai         s0, s4, 3
1122:             slt          s10, a4, s8
                  sltiu        s2, s10, -1405
                  xori         s8, tp, 1353
                  bge          s9, s7, 1144f
                  sra          t1, t6, t0
                  auipc        t2, 30325
                  and          a3, s8, s0
                  auipc        a0, 944638
                  nop
                  slti         gp, s5, -1890
                  bge          t5, s8, 1140f
                  srai         s11, ra, 10
1134:             xor          s7, s7, a6
                  auipc        s5, 459247
                  auipc        t2, 423290
                  andi         a5, s3, -1677
                  addi         a5, t4, 327
                  blt          gp, s9, 1159f
1140:             bgeu         a0, s5, 1160f
                  andi         a6, s7, 681
                  sltu         zero, s7, a2
                  xor          a7, t3, tp
1144:             and          sp, a4, gp
                  xor          a6, s5, gp
                  blt          s0, a0, 1163f
                  sltiu        tp, s6, 617
                  addi         s2, s3, -736
                  sll          a1, s9, tp
                  sll          tp, a6, a5
                  sltiu        a4, a2, -1016
                  andi         a7, s0, 297
                  xor          s4, a7, a5
                  srl          t0, s8, s4
                  sub          a6, s2, zero
                  bne          tp, s0, 1174f
                  xor          s7, a5, gp
                  bgeu         t4, s4, 1168f
1159:             sub          s7, a0, a6
1160:             srli         gp, a1, 31
                  addi         a1, s2, -432
                  slt          a1, s5, s6
1163:             ori          s2, s6, -1649
                  bltu         s5, a0, 1167f
                  bgeu         a2, s11, 1166f
1166:             beq          a1, s6, 1186f
1167:             sltu         s4, s5, a7
1168:             sll          s0, s1, t6
                  bgeu         s10, t4, 1179f
                  sll          gp, s1, s2
                  xori         t5, s11, -1555
                  addi         s9, a7, 365
                  slt          s2, zero, s2
1174:             srai         t2, s5, 26
                  ori          t5, s4, 335
                  xori         t2, gp, 318
                  addi         a0, t3, 1410
                  ori          t4, s7, -1441
1179:             or           a0, s0, t0
                  and          a1, a1, tp
                  slt          s11, s10, s3
                  xori         t4, a3, 1247
                  lui          s0, 179257
                  addi         s2, s7, 676
                  addi         s9, ra, 1674
1186:             and          s4, t3, a1
                  blt          s1, t5, 1206f
                  bge          s9, gp, 1205f
                  srl          zero, zero, s1
                  and          sp, a2, a4
                  beq          sp, s11, 1199f
                  auipc        s2, 489989
                  blt          a7, a7, 1211f
                  bne          s1, s10, 1206f
                  sra          s3, t2, s2
                  sra          a4, s3, s8
                  xor          s8, s9, tp
                  srl          s2, a0, zero
1199:             lui          s5, 904098
                  andi         s11, s2, 1135
                  bne          t5, a6, 1221f
                  sltiu        tp, s9, -1741
                  ori          a6, t3, -949
                  addi         t5, s3, -1031
1205:             sll          s1, t6, t3
1206:             sltiu        s9, s6, -576
                  add          sp, s10, zero
                  and          s11, s6, s9
                  srli         s7, t0, 15
                  srli         a6, zero, 24
1211:             or           tp, s11, s1
                  slli         t2, s10, 31
                  sltu         sp, t0, s6
                  srai         ra, t2, 18
                  ori          s5, s5, 1236
                  blt          s5, a2, 1229f
                  slt          s10, s10, s5
                  auipc        a7, 1010622
                  bne          a2, s7, 1224f
                  xor          a3, s2, s4
1221:             bgeu         s5, s7, 1229f
                  slt          a6, t5, s0
                  or           a0, a4, gp
1224:             add          zero, s2, a4
                  ori          s3, a5, 1523
                  beq          t6, t4, 1234f
                  blt          zero, a4, 1247f
                  sub          t0, s9, s0
1229:             sub          zero, a1, gp
                  srli         zero, t6, 4
                  nop
                  bltu         a1, s8, 1249f
                  sll          sp, tp, t1
1234:             xor          a2, ra, s6
                  srl          s1, s7, t6
                  xor          a5, a2, a2
                  sltiu        s0, ra, -1783
                  andi         s9, sp, -1774
                  beq          s9, a3, 1255f
                  slli         t0, s0, 12
                  srl          a0, a2, tp
                  bne          gp, s4, 1251f
                  bne          a2, tp, 1255f
                  sll          s8, a2, s7
                  auipc        s10, 390607
                  add          a7, s3, s9
1247:             xori         s3, a2, 1186
                  sltiu        zero, s9, -110
1249:             add          a4, s7, s1
                  add          s1, a1, s0
1251:             xori         a0, a4, 817
                  lui          t0, 222996
                  bne          gp, ra, 1256f
                  sltu         a0, ra, s10
1255:             bge          s1, s3, 1275f
1256:             beq          s9, a5, 1272f
                  sltu         tp, a3, a7
                  sltu         gp, ra, a6
                  beq          t4, a6, 1265f
                  sltu         a5, s3, s10
                  sltiu        a3, t4, -758
                  srli         t0, s8, 17
                  xori         zero, t3, -39
                  add          s8, s11, t3
1265:             slti         s7, a7, -221
                  xor          s5, a1, s2
                  auipc        a1, 119510
                  slli         a2, t5, 2
                  xori         a3, s8, 1533
                  andi         t4, s7, -850
                  andi         s11, s1, 1390
1272:             nop
                  sra          s4, t1, tp
                  add          tp, s0, a7
1275:             slt          a4, s7, s10
                  auipc        a2, 987645
                  lui          ra, 853483
                  lui          s3, 474372
                  bne          s11, a5, 1295f
                  bne          s3, s6, 1285f
                  nop
                  srai         a1, s9, 4
                  slli         t2, sp, 3
                  and          sp, a7, sp
1285:             or           s10, tp, t4
                  lui          a2, 752901
                  add          ra, s11, tp
                  bltu         sp, gp, 1308f
                  bltu         s5, ra, 1290f
1290:             slt          a4, s6, t0
                  and          a6, s1, a2
                  or           t2, s1, s4
                  sra          a2, s11, s3
                  xori         s2, sp, -59
1295:             slt          a3, sp, s2
                  slti         t0, s6, 994
                  sra          a0, zero, t1
                  slt          s0, s1, ra
                  sltu         s10, t5, s3
                  srai         s11, a7, 19
                  auipc        s10, 887239
                  bltu         s6, s3, 1320f
                  andi         a4, s1, 224
                  xor          a4, zero, s11
                  ori          a1, s1, -1471
                  srl          t0, s5, s9
                  beq          s5, a6, 1327f
1308:             addi         t1, t6, 1656
                  beq          a4, s10, 1321f
                  or           s10, a4, t5
                  sll          s8, gp, sp
                  and          a5, s3, t4
                  or           zero, a5, s2
                  and          t5, a2, t5
                  bge          s1, a5, 1332f
                  andi         a5, a7, 563
                  srli         s0, s3, 2
                  add          t0, s4, s2
                  srai         s3, t5, 30
1320:             xori         a0, t6, 606
1321:             sra          t4, s1, gp
                  xor          tp, t6, tp
                  sltu         s7, t0, t6
                  blt          zero, t6, 1326f
                  andi         sp, a7, -668
1326:             sltiu        s7, t1, -1348
1327:             sll          a0, zero, t4
                  srli         ra, a1, 23
                  slti         t4, ra, 537
                  and          s11, s5, s7
                  addi         s4, a2, -32
1332:             srai         a3, gp, 2
                  sltiu        sp, a5, 1977
                  nop
                  sub          tp, a7, t4
                  bltu         s0, zero, 1341f
                  sll          s8, ra, a1
                  xor          s8, s2, s11
                  add          s9, t1, t2
                  xori         s8, s2, 2010
1341:             sltiu        a0, s8, -1516
                  sra          a2, s6, zero
                  andi         a1, a7, -1104
                  ori          a1, s11, -1136
                  bltu         zero, sp, 1355f
                  nop
                  lui          s1, 714371
                  sll          ra, tp, t3
                  sltu         t5, a2, s10
                  bltu         t5, t4, 1366f
                  xori         t5, s6, 1859
                  bge          ra, gp, 1361f
                  auipc        s11, 217560
                  nop
1355:             bge          a5, s7, 1356f
1356:             sll          s2, s9, a5
                  slli         a2, t6, 31
                  auipc        s0, 877790
                  sll          a5, s0, sp
                  srli         a1, t2, 30
1361:             srai         t1, t1, 26
                  nop
                  bgeu         t6, t6, 1368f
                  beq          s7, s11, 1369f
                  ori          a4, s2, -227
1366:             bge          s2, s2, 1385f
                  ori          s9, zero, -122
1368:             addi         s3, tp, -1521
1369:             lui          zero, 239329
                  addi         t5, a5, 1845
                  srai         s3, t0, 4
                  lui          s5, 180745
                  srl          gp, s3, t3
                  slti         a5, a5, -897
                  srai         t0, s9, 24
                  andi         a2, s10, 1326
                  and          s4, s0, s3
                  bne          t0, t0, 1386f
                  slt          s10, tp, zero
                  beq          a7, a5, 1397f
                  xori         s0, t2, 778
                  addi         zero, a4, 1670
                  blt          s10, a7, 1389f
                  sltiu        t4, s9, 1385
1385:             srai         t5, a2, 15
1386:             lui          s0, 242473
                  bltu         s5, a4, 1405f
                  srai         t5, s7, 11
1389:             blt          a6, s3, 1409f
                  andi         s4, t6, 2030
                  bltu         a0, a6, 1409f
                  nop
                  lui          s8, 728361
                  add          ra, s3, t2
                  ori          sp, s3, 2033
                  srai         t0, zero, 8
1397:             auipc        t1, 467290
                  and          s2, s1, a2
                  and          s10, a0, t1
                  sub          a7, s2, s6
                  beq          s6, a7, 1413f
                  addi         s5, gp, -1272
                  blt          s1, s10, 1423f
                  slli         t1, s11, 14
1405:             slti         a4, gp, -889
                  ori          a7, a1, -2005
                  addi         t0, s0, -956
                  slt          s2, a5, t5
1409:             slti         s4, s1, -1028
                  slli         s1, s10, 7
                  slt          a0, s6, s3
                  xor          a6, s2, s6
1413:             bne          s7, zero, 1421f
                  xori         s5, ra, 1610
                  add          s8, t0, s4
                  sub          s11, a1, s10
                  lui          s4, 337625
                  add          s3, s4, t4
                  slti         t5, gp, 1114
                  ori          s9, s8, 1293
1421:             xori         s4, s5, 360
                  srli         s5, zero, 15
1423:             andi         s1, sp, -1263
                  bgeu         a3, s6, 1440f
                  or           t5, t2, s2
                  or           t0, t5, a5
                  beq          s5, a7, 1432f
                  or           a4, s8, tp
                  lui          t2, 634955
                  sub          ra, sp, s10
                  srli         gp, s3, 7
1432:             auipc        a7, 667595
                  slt          s10, gp, a0
                  sll          s3, s3, s1
                  sll          a6, zero, s0
                  srai         s1, gp, 28
                  slli         s10, sp, 14
                  ori          ra, t3, -360
                  bne          a3, t6, 1459f
1440:             nop
                  sub          s4, a7, gp
                  nop
                  sra          s2, t1, tp
                  sll          a2, zero, s3
                  bgeu         a1, t0, 1453f
                  bltu         s0, s3, 1448f
                  beq          s3, s9, 1464f
1448:             bltu         t6, s7, 1468f
                  la           sp, region_1+1040 #start riscv_load_store_rand_instr_stream_1
                  sb           s0, -13(sp)
                  nop
                  sll          s11, zero, a5
                  sltiu        t2, t4, 1403
                  sub          s0, s10, s10
                  xor          s5, t3, t5
                  lbu          ra, 9(sp)
                  lw           t4, 0(sp)
                  slt          a2, s5, s3
                  slt          s3, s7, a5
                  andi         s10, s0, -1036
                  sll          a2, s11, s10
                  sb           a6, 13(sp)
                  add          tp, gp, t3
                  lb           s10, -7(sp)
                  sb           s3, 12(sp)
                  auipc        t0, 672052
                  and          s2, t3, t1
                  lh           s10, -10(sp)
                  auipc        a1, 923769
                  lhu          s7, -4(sp)
                  slti         s10, gp, -211
                  lh           s9, 8(sp)
                  and          a0, s3, s3
                  srli         t4, a6, 22
                  lbu          ra, -7(sp)
                  lbu          s3, 6(sp)
                  nop
                  srai         s3, tp, 17
                  sb           ra, 13(sp)
                  slt          a1, a3, t3
                  slli         s10, a1, 6
                  lbu          s5, -1(sp)
                  sb           s7, -1(sp)
                  and          t1, s6, s11
                  sb           a0, -11(sp)
                  lui          a2, 964454
                  ori          s8, s7, 1776
                  sh           a0, 4(sp) #end riscv_load_store_rand_instr_stream_1
                  xori         a6, ra, 1358
                  andi         s8, t6, 1382
                  beq          s6, s8, 1454f
                  bge          a2, s11, 1464f
1453:             sltiu        s0, t1, -378
1454:             sltu         s10, t1, a2
                  slt          gp, tp, a6
                  addi         sp, t6, 335
                  andi         sp, t5, -328
                  sll          a3, t6, t3
1459:             nop
                  slti         s7, s0, 1194
                  bgeu         a4, tp, 1478f
                  beq          t1, s1, 1482f
                  srli         tp, s0, 31
1464:             nop
                  sltu         a3, gp, t4
                  sra          t1, a2, a3
                  srl          a1, s2, s3
1468:             add          t1, a6, s2
                  xor          tp, a6, a5
                  slli         s0, s11, 7
                  srai         s2, a6, 25
                  andi         tp, t2, 793
                  xori         s2, s0, 234
                  srl          s7, s9, s6
                  sll          a5, a5, a4
                  bne          s11, s6, 1488f
                  srai         t1, t2, 5
1478:             andi         s9, a2, 1328
                  srl          a7, s10, a2
                  add          s4, sp, t0
                  srl          a5, a6, s0
1482:             srai         t5, t5, 21
                  sll          t5, a0, a5
                  sra          s0, a1, s6
                  sll          a1, s5, s2
                  auipc        s7, 234876
                  andi         a3, t1, -34
1488:             beq          s2, s1, 1501f
                  sltu         gp, sp, s7
                  sltiu        a4, s7, -1067
                  bgeu         a3, s4, 1507f
                  andi         s5, s0, -884
                  or           a1, ra, ra
                  auipc        s11, 108367
                  bltu         t5, t5, 1513f
                  nop
                  bgeu         s11, s3, 1514f
                  addi         t2, a0, -856
                  bne          a1, s4, 1519f
                  xor          t4, s11, t5
1501:             or           s9, s11, a6
                  bltu         s11, t0, 1507f
                  bgeu         a6, s4, 1515f
                  or           s9, a7, sp
                  bne          a5, a1, 1513f
                  sub          a4, gp, t2
1507:             xori         s4, tp, -1896
                  auipc        ra, 143139
                  srli         s1, s2, 0
                  srli         a7, a0, 16
                  slt          s0, s4, a0
                  sub          a5, s6, a7
1513:             lui          s2, 910839
1514:             sra          s3, s0, s8
1515:             slti         t2, a7, -493
                  blt          s7, t2, 1536f
                  or           s1, tp, t4
                  srai         t4, ra, 4
1519:             xor          s2, a2, t6
                  slt          t5, t3, t1
                  lui          tp, 102175
                  and          a7, t2, t0
                  lui          t1, 554544
                  sltu         a2, a1, zero
                  sltu         s7, sp, s0
                  nop
                  xori         t0, s2, 1625
                  lui          a3, 762207
                  add          a2, s5, t4
                  slti         s8, t0, -1918
                  auipc        s7, 93773
                  bgeu         t5, s11, 1537f
                  sub          t4, s6, t2
                  add          s5, t5, s3
                  slli         ra, s5, 17
1536:             srai         s10, a2, 12
1537:             sll          a1, a4, s0
                  add          zero, a4, a1
                  beq          s5, sp, 1558f
                  xori         s10, s4, -419
                  beq          a0, t4, 1558f
                  slli         s10, a3, 31
                  xori         s10, s8, -1518
                  auipc        a1, 570480
                  sltu         s1, a6, s2
                  andi         s3, a1, 1940
                  sltu         s10, a2, zero
                  sra          zero, s10, t3
                  beq          a4, s7, 1554f
                  srai         t1, a0, 17
                  bgeu         s4, s7, 1561f
                  xor          t5, a2, s11
                  srl          s10, a4, s6
1554:             xori         a5, s2, 1927
                  bge          s9, a2, 1563f
                  slli         a1, t0, 11
                  lui          a6, 2134
1558:             srl          t1, t6, s3
                  bne          t0, gp, 1579f
                  xori         a7, t3, 1957
1561:             slt          t4, sp, s11
                  add          ra, s10, tp
1563:             or           zero, s5, t2
                  sll          s5, t2, s0
                  bne          s11, a7, 1585f
                  auipc        s4, 8006
                  sra          sp, s6, tp
                  blt          t3, s10, 1584f
                  srai         tp, a1, 28
                  bne          a5, t1, 1586f
                  or           zero, a6, s3
                  bltu         t0, a5, 1590f
                  bne          a1, a0, 1593f
                  ori          t0, s9, 1244
                  nop
                  sll          s8, tp, s5
                  xori         s7, sp, 862
                  xor          t1, t6, t2
1579:             slli         a0, s8, 16
                  andi         a7, s3, 10
                  auipc        t2, 429914
                  sltu         gp, a5, s5
                  sltu         a2, a5, a3
1584:             auipc        t0, 720279
1585:             xor          s3, s9, t1
1586:             srli         t2, s3, 18
                  auipc        s1, 719028
                  sltiu        a2, s3, -1579
                  xori         t0, ra, -1238
1590:             sltu         a6, s10, s1
                  addi         a1, tp, -935
                  blt          s3, s3, 1604f
1593:             sub          ra, t2, a4
                  blt          ra, s8, 1595f
1595:             xori         t2, a4, 617
                  sra          gp, sp, a4
                  srli         a0, a0, 0
                  srli         zero, s11, 11
                  srai         s7, t3, 11
                  bge          s3, a2, 1608f
                  sltiu        s9, tp, -313
                  auipc        s11, 992807
                  sub          sp, t6, s0
1604:             andi         s4, s10, -1719
                  bge          a1, a7, 1607f
                  lui          a1, 833184
1607:             sltu         t2, sp, gp
1608:             nop
                  sltiu        tp, s8, 1728
                  sub          s0, s5, a5
                  nop
                  lui          s8, 682835
                  andi         s5, sp, -1138
                  add          s0, tp, s3
                  slli         s9, t1, 1
                  addi         a7, a0, -954
                  and          s8, s1, a7
                  sltiu        s11, a6, 1741
                  beq          s4, s1, 1622f
                  nop
                  sll          s4, s11, s0
1622:             andi         ra, gp, -1840
                  nop
                  sub          gp, t5, s11
                  andi         a4, gp, 221
                  sub          s5, t6, t2
                  sll          t5, s5, tp
                  or           tp, s0, s7
                  srai         sp, s8, 30
                  lui          t0, 989301
                  sra          a3, a1, a2
                  ori          zero, s2, 290
                  addi         a3, t0, 349
                  slli         ra, a4, 16
                  slli         sp, a6, 9
                  bgeu         t0, s10, 1653f
                  auipc        s9, 775419
                  xor          sp, a2, t4
                  slli         s5, a7, 1
                  nop
                  bne          s2, a7, 1654f
                  lui          s10, 866033
                  nop
                  and          s5, ra, ra
                  slt          s3, s1, s3
                  ori          a5, s5, -73
                  srli         a7, s6, 1
                  lui          tp, 339503
                  beq          s3, a2, 1655f
                  slli         a6, s6, 23
                  add          s5, a0, tp
                  xor          ra, t6, s10
1653:             slti         s8, a7, 457
1654:             slli         gp, ra, 0
1655:             lui          a2, 310813
                  addi         a4, t3, 1918
                  srai         zero, a3, 9
                  slti         s4, tp, -1996
                  or           s8, t2, s2
                  andi         a0, s2, 1587
                  nop
                  bgeu         s2, t6, 1671f
                  sub          a7, s11, s4
                  beq          s10, a6, 1680f
                  bne          t4, gp, 1677f
                  sra          a2, t3, ra
                  bgeu         a2, t6, 1670f
                  ori          t2, a4, 1636
                  slti         t0, zero, -721
1670:             srai         tp, a1, 21
1671:             beq          s9, t0, 1679f
                  xori         s0, s6, 456
                  ori          s5, s5, 1263
                  and          t5, ra, s2
                  srli         zero, a7, 6
                  bge          s8, s7, 1682f
1677:             beq          t1, a5, 1689f
                  or           s1, s0, a3
1679:             sltiu        gp, s11, -1404
1680:             sra          s7, a4, t5
                  or           a7, s3, t4
1682:             andi         s9, t2, 290
                  srli         a3, a1, 1
                  slt          s5, t6, t2
                  slti         a7, t6, -125
                  bltu         sp, s1, 1706f
                  lui          s7, 555302
                  bge          a1, t2, 1705f
1689:             xori         a4, t4, -1808
                  sra          t4, s7, s4
                  ori          a4, a5, -652
                  bgeu         s5, s1, 1700f
                  beq          a6, t2, 1709f
                  sub          s2, t2, tp
                  sll          s3, s6, s5
                  bne          s5, sp, 1697f
1697:             xori         s2, s8, 187
                  and          sp, s5, s3
                  srl          s5, ra, t5
1700:             beq          s7, s5, 1708f
                  slt          t5, t0, s10
                  andi         a5, t6, -1260
                  sltiu        s10, s7, -316
                  andi         a0, t4, -1935
1705:             and          a4, t4, s4
1706:             bne          a6, a4, 1722f
                  addi         t2, a0, -868
1708:             slli         a2, t6, 25
1709:             bge          s0, s5, 1722f
                  ori          s3, s5, -1311
                  nop
                  sltu         s11, tp, a6
                  bgeu         a5, a2, 1725f
                  slli         zero, s6, 23
                  slt          s0, t1, s6
                  bltu         s11, zero, 1735f
                  or           s8, t0, a1
                  xori         a0, gp, 1292
                  beq          tp, a2, 1736f
                  slli         zero, s2, 6
                  xori         a7, a5, 1720
1722:             addi         s8, gp, 540
                  slti         a7, s0, -1498
                  slti         s0, s2, -1671
1725:             blt          s10, sp, 1727f
                  auipc        tp, 499037
1727:             slli         a3, a7, 18
                  sub          s8, sp, s0
                  bltu         s8, a2, 1749f
                  xori         tp, s8, 1830
                  sltu         zero, tp, tp
                  sra          a3, s4, a1
                  sltiu        a4, a1, -1232
                  sra          s4, s2, t6
1735:             andi         s7, s8, -530
1736:             bltu         a5, zero, 1756f
                  beq          ra, s1, 1746f
                  sltu         a1, tp, sp
                  beq          t3, t6, 1744f
                  nop
                  slti         t2, t0, 1528
                  xor          s7, s3, s7
                  andi         s4, s0, -755
1744:             addi         t4, a0, 99
                  sltu         s2, gp, s6
1746:             sltu         t1, s11, a5
                  slli         a0, s11, 9
                  xori         a0, s4, -1035
1749:             addi         s0, s3, 359
                  sltu         s4, t3, s9
                  ori          a3, t5, 892
                  blt          a0, a0, 1770f
                  bge          s8, s11, 1769f
                  or           s7, s7, tp
                  blt          s1, t6, 1760f
1756:             sltiu        a7, zero, 1791
                  srai         a7, a0, 30
                  xor          tp, t0, t3
                  xor          t1, a1, s0
1760:             slt          sp, t3, a5
                  nop
                  bgeu         ra, t1, 1779f
                  bne          s10, a7, 1775f
                  srli         a3, s6, 18
                  slt          a1, t6, s5
                  blt          a1, s4, 1786f
                  beq          t4, s0, 1787f
                  or           sp, s9, s0
1769:             xori         t5, a6, 293
1770:             and          t4, s9, ra
                  addi         s9, t4, 1546
                  and          t0, tp, s7
                  slt          t0, s2, s5
                  sra          s4, t1, s0
1775:             ori          s0, s7, 176
                  add          a6, s3, sp
                  auipc        a2, 809834
                  nop
1779:             srli         t2, s10, 1
                  srl          s3, a5, t2
                  srl          s5, s1, a7
                  ori          s8, s5, -863
                  or           a3, s6, s6
                  add          tp, a4, s0
                  sltu         zero, ra, t6
1786:             bne          s1, a3, 1796f
1787:             bne          s4, a7, 1805f
                  bltu         a1, a4, 1793f
                  sll          sp, t3, s4
                  nop
                  sub          s4, a6, s3
                  nop
1793:             lui          t2, 356711
                  bltu         a0, s10, 1804f
                  sll          s7, tp, s0
1796:             bltu         t0, t5, 1808f
                  srl          a0, t5, a1
                  bge          s0, t0, 1814f
                  ori          s9, tp, 547
                  nop
                  sub          s7, s9, tp
                  or           a1, sp, s9
                  slli         tp, t0, 9
1804:             sltu         s11, tp, gp
1805:             xori         a2, s5, -1989
                  auipc        s5, 807186
                  sra          a7, s0, s5
1808:             lui          a1, 876460
                  ori          s2, a5, -1109
                  and          s2, ra, a1
                  xor          s3, t2, a1
                  slt          ra, sp, t5
                  sra          s4, s7, s11
1814:             sra          tp, t0, t0
                  addi         t1, a2, 870
                  or           t2, s3, s9
                  ori          ra, t5, -1004
                  bge          s1, t1, 1838f
                  sub          s5, s7, a5
                  nop
                  sll          a4, s7, t0
                  and          t0, a1, s8
                  blt          zero, gp, 1828f
                  bltu         s0, t3, 1842f
                  slt          t0, s0, s5
                  auipc        a1, 455392
                  srai         a3, sp, 0
1828:             bgeu         t3, a0, 1846f
                  xor          ra, a6, t2
                  srli         a6, s6, 4
                  beq          t1, s9, 1848f
                  addi         s0, s1, 805
                  nop
                  bge          t3, a4, 1840f
                  slt          zero, a1, a3
                  blt          sp, a3, 1852f
                  sltiu        ra, a4, -1162
1838:             slt          s4, s8, tp
                  andi         a3, t5, 559
1840:             andi         a6, s6, -414
                  or           a7, gp, s9
1842:             srli         sp, s9, 12
                  slt          a3, t5, t6
                  sll          s11, tp, t1
                  sltu         gp, a5, a0
1846:             sltiu        t0, a1, -1745
                  addi         tp, t1, -1741
1848:             sra          s9, t4, s11
                  bgeu         t5, a1, 1857f
                  blt          s10, ra, 1866f
                  or           s0, s8, sp
1852:             ori          a7, s0, -730
                  slt          s4, a4, t4
                  andi         s4, t3, 1679
                  xor          a1, s8, s11
                  bne          s6, s3, 1876f
1857:             andi         a4, s0, -140
                  srli         t4, a7, 1
                  nop
                  slli         s3, t1, 10
                  sub          s3, t2, a0
                  xor          s3, s8, a4
                  blt          t1, t1, 1883f
                  srai         s3, s2, 7
                  bltu         s3, s5, 1884f
1866:             xori         s0, t1, 860
                  sra          s4, zero, a1
                  srai         s8, tp, 2
                  sra          a0, t1, t5
                  auipc        ra, 376602
                  bgeu         t3, s1, 1883f
                  srai         zero, s11, 13
                  nop
                  xori         a6, t3, 959
                  sub          a1, a4, s9
1876:             bne          t0, s3, 1896f
                  sltu         a0, tp, a6
                  bgeu         tp, tp, 1886f
                  beq          t5, a0, 1887f
                  xori         s10, t2, 1967
                  sra          s4, a5, a3
                  blt          a1, sp, 1883f
1883:             andi         a0, t3, 904
1884:             add          t0, a3, t5
                  addi         s1, s10, 228
1886:             srl          a1, a6, s9
1887:             or           t1, tp, s11
                  auipc        s10, 37760
                  slt          s9, a2, t0
                  add          a7, s6, s10
                  xor          a6, t2, a1
                  srai         a6, s9, 10
                  ori          tp, t3, 1926
                  nop
                  xori         s1, t5, -1346
1896:             or           a5, s4, a0
                  xori         t1, a7, -242
                  auipc        s1, 687591
                  sltiu        ra, s3, 347
                  andi         s8, a2, -270
                  srai         t5, s7, 10
                  add          s10, s6, s3
                  beq          a3, s7, 1908f
                  srl          t5, s11, s5
                  slli         ra, a2, 15
                  add          gp, t3, t3
                  slt          s10, sp, s3
1908:             slli         t1, a5, 11
                  bne          s8, s5, 1922f
                  sll          s0, a0, s6
                  slti         s8, t5, -983
                  sltu         s10, s7, t5
                  andi         tp, zero, 1755
                  and          a7, gp, a3
                  xor          s5, s3, s10
                  srai         s8, s7, 7
                  lui          a1, 107410
                  sub          gp, a5, a0
                  ori          s5, a7, 1082
                  auipc        s3, 795199
                  xor          s11, s7, a0
1922:             sltiu        a3, a0, 1334
                  sub          sp, a1, a7
                  auipc        sp, 171389
                  beq          a3, s5, 1927f
                  xor          s8, a0, gp
1927:             add          t2, s5, sp
                  or           gp, gp, a4
                  sltiu        t5, tp, 1998
                  bltu         a1, s1, 1950f
                  srli         s2, a7, 10
                  bgeu         s6, s2, 1941f
                  addi         ra, s8, 343
                  sub          a5, s8, s2
                  addi         a6, t6, 1947
                  srai         s8, a2, 12
                  sub          a3, s11, s6
                  or           s8, s7, s7
                  sltiu        a7, t6, -694
                  bgeu         a7, a0, 1952f
1941:             beq          s2, s1, 1944f
                  bne          t0, t2, 1954f
                  beq          s8, s10, 1948f
1944:             sra          gp, t5, zero
                  slt          t4, t1, t4
                  sll          t0, s7, s3
                  auipc        t2, 299696
1948:             slti         t1, s6, -1679
                  add          a5, s9, s0
1950:             sll          s8, s7, a6
                  bgeu         t6, a0, 1954f
1952:             sra          s5, a5, zero
                  sll          t2, a1, sp
1954:             andi         s9, s8, -376
                  lw           s1, 4(t6)
                  slt          s3, s5, s3
                  xori         zero, a7, 7
                  srai         s8, s2, 20
                  addi         t6, t6, 40
                  srli         a3, sp, 11
                  xori         ra, s9, 1278
2575:             addi x6, x9, 1
2575:             jalr x6, x6, 0
sub_8:            bltu         t6, a1, sub_8_stack_p
sub_8_stack_p:    addi         t6, t6, -56
                  sltu         t4, t1, a7
                  xori         s2, s3, 1928
                  and          s8, s2, t3
                  sw           s1, 4(t6)
                  andi         s5, gp, 1616
                  srai         s2, t1, 7
                  and          t2, a2, t3
                  slli         a1, s1, 0
                  srli         gp, ra, 19
                  la           ra, sub_10
                  srl          s7, s0, t4
                  addi         ra, ra, -785
                  srli         s5, zero, 27
sub_8_j12:        jalr         s1, ra, 785 #jump sub_8 -> sub_10
                  bge          a7, tp, 20f
                  bne          a1, a3, 20f
                  bne          a6, t3, 14f
                  bne          s3, t6, 21f
                  xor          ra, t6, t6
                  bgeu         a4, a3, 21f
                  xori         s3, s10, 258
                  lui          s4, 353421
                  xor          a1, a4, a1
                  sltu         t0, s11, t2
                  slt          s11, t4, s5
                  lui          s7, 780271
                  or           a3, a1, t6
                  sltu         s2, s0, t4
14:               slti         a7, t0, 2035
                  sub          s4, tp, t0
                  sltiu        t1, s3, -1255
                  xor          s5, a4, t1
                  slti         s1, gp, 1885
                  sll          a7, s3, s4
20:               bne          a3, a2, 29f
21:               bne          a7, t5, 23f
                  blt          gp, s7, 30f
23:               srai         zero, a5, 4
                  beq          a0, a1, 28f
                  slt          a0, a0, zero
                  auipc        t1, 105871
                  slt          s11, s0, t4
28:               srai         t4, s9, 24
29:               srli         s1, a7, 6
30:               blt          a2, s10, 38f
                  lui          s5, 862425
                  slt          t5, s8, s9
                  nop
                  blt          t1, t0, 38f
                  srl          a0, a7, a1
                  srli         a6, t5, 12
                  xor          tp, t1, a5
38:               andi         a2, s8, -1826
                  lw           s1, 4(t6)
                  auipc        s4, 14708
                  sra          t0, zero, s10
                  slli         a5, s1, 13
                  addi         t6, t6, 56
                  srl          a2, a3, t4
61:               addi x10, x9, 1
61:               jalr x10, x10, 0
sub_10:           addi         a2, t5, 1360
                  xori         a3, s11, -287
                  srai         gp, s0, 1
                  lui          s0, 769946
                  slt          s10, s11, s8
                  srli         s5, a1, 25
                  addi         t6, t6, -60
                  andi         a1, ra, 1320
                  sw           s1, 4(t6)
                  nop
                  xor          s4, a1, a1
                  la           a3, region_1+284 #start riscv_load_store_rand_instr_stream_0
                  lbu          a4, 75(a3)
                  addi         tp, t4, 1585
                  lbu          a4, 74(a3)
                  lb           a5, 111(a3)
                  lbu          zero, -47(a3)
                  lui          s3, 700115
                  lbu          a7, -229(a3)
                  sb           s3, 165(a3)
                  sb           a4, -75(a3)
                  lui          s11, 774330
                  lb           s7, -82(a3)
                  lb           s4, -141(a3)
                  srai         a4, zero, 26
                  xor          s11, a1, t1
                  lh           t2, -30(a3)
                  slli         a6, t1, 2
                  slti         a6, t3, 188
                  lhu          t5, 242(a3)
                  slti         t4, a6, -1805
                  ori          s7, a7, 1169
                  lb           a7, -64(a3)
                  sb           s10, 225(a3)
                  sra          a1, s6, s4
                  xori         t1, s10, -1102
                  addi         a6, t6, -1724
                  slli         tp, t1, 27
                  sb           s7, -177(a3)
                  srl          s1, t0, s8
                  sub          t5, s6, t3
                  nop
                  lbu          gp, -65(a3)
                  xor          s7, a1, s1
                  sltu         t4, a6, t2
                  sltiu        zero, t5, 195
                  lbu          s2, 201(a3)
                  slti         s9, a3, 897
                  lbu          s10, -122(a3)
                  slt          a7, a3, ra
                  ori          sp, s0, -846
                  slt          t5, a4, t2
                  lbu          zero, 91(a3)
                  slti         a4, s9, 633
                  lb           s4, 103(a3)
                  srai         s11, s8, 27
                  add          a6, s5, t3
                  lb           a2, -123(a3)
                  sb           zero, 121(a3) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1614 #start riscv_load_store_rand_instr_stream_1
                  srli         a6, zero, 9
                  sb           t2, 59(sp)
                  lb           t5, -27(sp)
                  sub          a3, a6, a7
                  slt          s7, s6, ra
                  lb           s7, -21(sp)
                  lb           a7, 138(sp)
                  lb           a1, -55(sp)
                  lbu          a1, 140(sp)
                  addi         s8, a4, 418
                  addi         s4, a6, -1512
                  lb           a6, -106(sp)
                  addi         s4, t3, -1499
                  andi         a5, s7, 110
                  lhu          t1, -14(sp)
                  lhu          s5, -236(sp)
                  or           a5, a5, t4
                  sb           s7, 166(sp)
                  xor          s1, a7, a0
                  ori          a3, s0, -479
                  lbu          a1, -21(sp)
                  slli         a6, s7, 9
                  srai         s7, t4, 6
                  xori         t2, t2, 1008
                  sh           s2, -118(sp)
                  slti         t1, s3, 876
                  lbu          t5, -232(sp)
                  srai         s8, t6, 18
                  srai         a1, t3, 7
                  xor          a3, a1, t5
                  lb           s11, 137(sp)
                  sh           zero, 234(sp)
                  lbu          a2, 233(sp)
                  xor          gp, t4, s5
                  slt          zero, a6, zero
                  lhu          t4, 70(sp)
                  srl          s2, s4, gp
                  sltu         a6, s3, s8
                  lb           zero, -199(sp)
                  lb           tp, -117(sp)
                  ori          t1, ra, 360
                  sra          t1, t4, s5
                  addi         s5, a7, -509
                  lbu          s8, -167(sp)
                  sh           s0, -228(sp)
                  sw           ra, -166(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_1+1880 #start riscv_load_store_rand_instr_stream_4
                  xor          t2, t1, s4
                  sb           t0, -1683(a2)
                  sh           s1, -424(a2)
                  lui          s8, 912372
                  or           s10, t2, a5
                  lbu          s4, -1081(a2)
                  lw           t0, -804(a2)
                  sb           t4, -737(a2)
                  lbu          s10, -1141(a2)
                  auipc        s8, 445527
                  srai         t2, s10, 2
                  andi         s1, s4, -1113
                  lhu          s5, -310(a2)
                  lb           gp, -1731(a2)
                  sb           t2, -963(a2)
                  sra          gp, s4, s4
                  slli         s11, a7, 14
                  lb           a5, -517(a2)
                  sltu         sp, a7, s8
                  sb           t2, -906(a2)
                  lbu          s7, -1849(a2)
                  lbu          t1, -703(a2)
                  add          a3, zero, a1
                  ori          t4, zero, -1015
                  lbu          sp, -697(a2)
                  sra          gp, s3, gp
                  sll          a4, s4, t2
                  andi         a4, gp, -2023
                  addi         t4, t2, -754
                  sb           t1, -1589(a2)
                  lbu          t0, -1775(a2)
                  sb           s10, -498(a2)
                  sltu         s3, t3, a6
                  slt          t5, t3, zero
                  slli         s3, s4, 29
                  sb           a5, -1866(a2)
                  lh           s7, -1086(a2)
                  lbu          a1, -919(a2)
                  srl          t0, t1, s3
                  sra          s0, s3, s3
                  lb           a1, -407(a2)
                  ori          t1, s1, -1185
                  xor          s1, gp, a3
                  slt          tp, zero, s8
                  sltiu        ra, t1, -1352
                  add          sp, s5, a3
                  lb           s7, -1536(a2) #end riscv_load_store_rand_instr_stream_4
                  la           s4, region_1+809 #start riscv_load_store_rand_instr_stream_3
                  srl          s2, s11, a6
                  sb           t1, -58(s4)
                  sra          a1, t2, t4
                  sll          a1, s6, a2
                  auipc        a7, 324127
                  sb           s7, 32(s4)
                  lui          a1, 336
                  sh           a6, -51(s4)
                  lh           zero, 27(s4)
                  sb           s4, -48(s4)
                  lb           t4, 58(s4)
                  auipc        tp, 668947
                  lhu          a7, -25(s4)
                  srl          a2, t0, a5
                  lb           a5, 24(s4)
                  sll          s9, a0, t6
                  or           a5, t6, s5
                  srli         s0, t1, 8
                  slt          t4, s1, s2
                  addi         a5, s8, -380
                  sh           t1, -51(s4)
                  srli         a4, s1, 22
                  lb           tp, 22(s4) #end riscv_load_store_rand_instr_stream_3
                  sltu         zero, s7, tp
                  bne          t1, t2, 16f
                  bne          t3, t2, 4f
                  sltu         s11, t4, s10
4:                beq          tp, a0, 7f
                  beq          s5, a7, 12f
                  slti         t5, a1, -696
7:                bge          t1, s11, 13f
                  bltu         ra, s3, 23f
                  bge          sp, a4, 22f
                  bltu         s11, a4, 17f
                  and          gp, s10, a2
12:               auipc        s4, 1026128
13:               slli         t4, s9, 12
                  andi         t4, a6, 1002
                  xori         t1, a6, -1531
16:               sll          sp, t1, a4
17:               bgeu         s7, s5, 31f
                  nop
                  sll          s9, t2, tp
                  or           sp, a4, sp
                  srl          gp, gp, s1
22:               beq          a5, s2, 25f
23:               nop
                  bne          s1, t4, 36f
25:               xor          sp, t4, t0
                  slt          s1, t4, t1
                  slli         s10, s9, 26
                  bltu         tp, s1, 36f
                  bge          zero, gp, 30f
30:               sub          s7, t2, a3
31:               add          ra, s1, t0
                  blt          s5, s8, 48f
                  srli         s0, a3, 11
                  sub          gp, s11, t3
                  or           s8, a4, tp
36:               beq          t1, ra, 52f
                  srli         a3, s7, 4
                  slt          zero, a5, gp
                  srli         s4, t1, 17
                  nop
                  sltiu        sp, t1, 665
                  slti         t0, gp, 101
                  ori          a7, t5, -1965
                  and          gp, t1, t3
                  srli         a3, s7, 23
                  bgeu         s11, zero, 62f
                  slti         zero, t3, -1985
48:               and          t4, s5, t4
                  xori         a0, tp, 272
                  auipc        a6, 166462
                  nop
52:               ori          a1, s8, 430
                  bge          s11, a2, 65f
                  sub          a0, s0, a3
                  xori         tp, a1, 1502
                  bltu         s8, t2, 70f
                  sub          s5, a5, s6
                  sra          s4, a2, ra
                  sub          t1, s1, t5
                  sltiu        t1, s5, -1236
                  sra          t4, s9, t0
62:               sra          s10, a6, t4
                  bne          s11, zero, 73f
                  srai         a4, a5, 15
65:               xor          zero, t1, s6
                  beq          zero, a3, 68f
                  slt          s9, ra, a5
68:               ori          a1, s5, 1766
                  slli         gp, t6, 14
70:               sra          t1, tp, a6
                  beq          s4, t0, 85f
                  sltiu        s8, ra, 1326
73:               srl          a0, s0, s2
                  ori          a0, s9, 877
                  sltiu        s7, t4, -45
                  bltu         t6, s4, 79f
                  bltu         t2, s5, 91f
                  srai         t4, a7, 24
79:               andi         t5, t1, 673
                  xori         s10, s0, 772
                  sltu         zero, ra, s4
                  blt          s9, s5, 88f
                  blt          s5, s6, 91f
                  xori         a4, tp, 1326
85:               bne          t5, t5, 96f
                  srl          s9, t4, s8
                  xori         a3, a2, 1987
88:               blt          ra, a0, 108f
                  slt          t4, a5, a6
                  xor          a5, t0, s7
91:               sub          tp, a6, a6
                  blt          t1, a1, 110f
                  or           sp, t5, tp
                  bltu         a5, a7, 104f
                  bge          s7, s7, 102f
96:               addi         s5, s6, -1716
                  srli         zero, a7, 28
                  or           t0, sp, a0
                  slli         a0, a0, 30
                  slt          s3, s8, s6
                  blt          s11, s7, 114f
102:              beq          a3, t0, 110f
                  bge          a6, t2, 119f
104:              bne          t1, s0, 118f
                  bltu         tp, t5, 121f
                  slt          a4, a6, ra
                  or           s4, t4, a3
108:              srl          tp, s7, s2
                  xori         a0, t1, 1853
110:              slli         s2, s10, 27
                  ori          a2, s0, 2031
                  or           s2, s9, s0
                  bge          a6, a2, 123f
114:              add          s3, zero, a0
                  lui          s10, 286874
                  bge          a5, s9, 132f
                  sltu         s1, s7, a0
118:              lui          s7, 652900
119:              xori         t1, a2, -782
                  blt          s5, s5, 127f
121:              lui          s11, 256377
                  auipc        s11, 940873
123:              sll          a0, t2, s5
                  lui          s9, 42805
                  and          a0, s11, t5
                  sra          s4, s1, t1
127:              and          a7, s9, s8
                  addi         ra, t6, 1003
                  srl          s8, gp, s11
                  sra          t0, gp, s9
                  sltiu        s11, s7, -822
132:              bne          t5, s7, 135f
                  beq          s7, a1, 135f
                  srli         t5, s6, 19
135:              sra          t2, t4, s6
                  sltu         s2, zero, s11
                  sltiu        s9, s6, 567
                  bge          s5, t0, 144f
                  add          a5, t1, a7
                  slt          a0, zero, a4
                  addi         a1, s7, 1318
                  add          a3, a5, t1
                  srai         s9, a2, 31
144:              andi         t0, a4, 693
                  blt          s1, s9, 159f
                  andi         s10, s1, -1679
                  sra          a5, s5, t3
                  bgeu         a7, t1, 163f
                  srl          sp, t3, s0
                  sltu         s3, s0, s3
                  srli         s4, t2, 30
                  add          a2, t4, s8
                  beq          a5, s3, 155f
                  xor          s1, s5, t1
155:              sra          s5, a0, a0
                  add          s11, t3, s0
                  srai         s9, s4, 9
                  blt          s7, t2, 172f
159:              beq          t0, s10, 171f
                  blt          gp, s11, 171f
                  srli         s1, s1, 7
                  srl          t4, t2, a7
163:              andi         s4, t2, -938
                  xori         a1, s1, -889
                  sll          a4, s9, gp
                  srai         a7, t3, 7
                  beq          s6, s1, 185f
                  sltiu        ra, a0, -165
                  bne          t4, s8, 170f
170:              lui          s0, 600024
171:              auipc        a4, 82574
172:              srai         zero, t6, 9
                  addi         a2, a7, 1978
                  ori          tp, t4, -1088
                  slti         s0, ra, 1735
                  addi         t4, s5, -1312
                  sltiu        s4, s11, 1401
                  sub          sp, s4, a0
                  slli         s5, s3, 22
                  sltiu        a1, gp, -875
                  sub          s1, sp, sp
                  and          a1, t3, s7
                  sll          s8, a6, s5
                  sltiu        t4, s1, -532
185:              bne          s10, t5, 188f
                  sra          s0, zero, a6
                  addi         a7, t6, 1375
188:              andi         a4, s0, 247
                  nop
                  slt          sp, t1, t3
                  slti         s7, s1, 1808
                  sltu         a3, t1, s0
                  andi         a7, t1, 1418
                  bgeu         t0, a7, 197f
                  bge          t1, t5, 207f
                  xori         a7, t5, 489
197:              xor          s4, a3, s3
                  lui          s9, 898632
                  add          zero, t6, s1
                  srli         a3, t0, 15
                  sltiu        a1, s6, 538
                  slt          s1, t4, t1
                  bgeu         s8, a2, 209f
                  sltiu        a2, s0, -1356
                  sub          t5, a7, t2
                  ori          s8, a1, 1162
207:              sub          a7, a6, s6
                  auipc        zero, 64174
209:              sra          ra, s4, t2
                  blt          t2, s6, 224f
                  sltiu        a0, s2, -195
                  sra          a2, t2, a5
                  srli         a6, t1, 10
                  sltu         a0, sp, gp
                  sub          t0, tp, t0
                  andi         a1, s1, 1187
                  sll          s3, tp, s8
                  sltiu        a7, gp, -1136
                  sub          s7, t2, zero
                  addi         a4, ra, 1620
                  bgeu         s10, tp, 228f
                  bge          ra, a4, 232f
                  slli         a1, a5, 2
224:              sub          sp, a3, s8
                  beq          t0, s7, 240f
                  xor          a4, t4, s0
                  auipc        a4, 877881
228:              srai         s0, tp, 16
                  bge          gp, s11, 237f
                  sltu         gp, t2, a5
                  sll          ra, a4, s0
232:              and          a5, s11, gp
                  xor          t0, s2, t2
                  slti         ra, sp, 723
                  xor          t0, t0, t0
                  xor          s2, s8, s1
237:              addi         t5, a0, -535
                  slti         s7, s7, 238
                  xori         s2, a7, -293
240:              sra          a1, a2, t1
                  blt          a0, t1, 248f
                  sll          t0, a0, a0
                  slt          s3, s10, s0
                  slli         a6, zero, 19
                  sra          s1, s9, s10
                  bne          s4, tp, 266f
                  bne          s6, s2, 261f
248:              xori         a3, a1, -1704
                  bltu         s5, a7, 255f
                  srli         gp, a0, 25
                  nop
                  auipc        s4, 606099
                  sltu         gp, t3, s2
                  slli         s8, ra, 24
255:              bltu         t2, t5, 257f
                  lui          a0, 881681
257:              beq          ra, s0, 271f
                  sltu         s9, s3, s10
                  slt          s5, t1, t0
                  srai         sp, t4, 14
261:              sltiu        t1, s11, 1820
                  srl          t4, a3, s1
                  slt          a7, t5, s11
                  lui          a3, 234280
                  sll          a0, s2, t0
266:              slti         t1, a1, -340
                  xori         tp, s5, -953
                  sltiu        s5, s5, -453
                  add          a7, zero, a4
                  andi         a5, s10, -148
271:              bgeu         a2, a4, 284f
                  addi         s10, a5, 415
                  srli         t5, a4, 15
                  bltu         s8, s0, 288f
                  or           s0, sp, t4
                  bne          s8, s2, 292f
                  srl          tp, s3, sp
                  sra          s1, zero, s8
                  sub          gp, a7, zero
                  nop
                  srai         t1, s10, 7
                  add          a4, s5, s9
                  slli         s8, s9, 11
284:              sll          ra, sp, t1
                  ori          s4, s5, -2042
                  slli         a1, gp, 19
                  bgeu         t6, a0, 307f
288:              or           a1, t4, gp
                  slt          s7, t2, a2
                  bne          s2, t2, 301f
                  bne          a5, a5, 292f
292:              xori         s10, tp, -747
                  srli         s3, s10, 8
                  bgeu         s5, a5, 296f
                  bltu         a3, t0, 310f
296:              and          s4, a3, gp
                  xori         s4, ra, 995
                  srli         t2, s4, 1
                  xori         s0, s11, -1212
                  xor          t2, s0, t1
301:              addi         a3, a7, -1643
                  beq          sp, s8, 305f
                  nop
                  xori         a1, t0, -416
305:              nop
                  and          a5, a6, s9
307:              bge          s3, sp, 323f
                  xor          s2, s2, a3
                  lui          s5, 324428
310:              ori          s4, s3, 470
                  slti         a1, s0, -419
                  nop
                  auipc        ra, 1043751
                  addi         a2, t3, 359
                  addi         sp, a0, 1234
                  sll          s9, s3, a2
                  bltu         s0, a7, 320f
                  beq          a3, sp, 324f
                  addi         zero, t5, -1573
320:              slli         ra, s8, 22
                  bne          s2, t2, 329f
                  srl          zero, s0, a6
323:              srli         s4, s3, 14
324:              srai         a3, s3, 22
                  slti         gp, a6, 1347
                  srli         a6, a4, 5
                  xor          s5, a5, a0
                  sltiu        t5, t2, 1794
329:              lui          s7, 91232
                  auipc        s7, 619342
                  sll          sp, gp, gp
                  bgeu         s7, s9, 346f
                  xor          a5, a2, s4
                  andi         sp, s5, 1990
                  bge          s6, s10, 351f
                  addi         a5, t4, -1866
                  beq          a5, s6, 347f
                  slt          s2, s6, a0
                  and          s9, s5, a2
                  bltu         a1, tp, 343f
                  auipc        a2, 145920
                  srai         a7, t3, 5
343:              addi         zero, t1, 830
                  srli         t4, a4, 15
                  addi         tp, s9, -2034
346:              sltu         s8, s4, t0
347:              beq          t5, t6, 362f
                  add          s4, s11, a3
                  bne          t4, s1, 356f
                  ori          t4, s10, -122
351:              auipc        t5, 719073
                  xori         a0, a3, -1997
                  bge          a5, s10, 363f
                  srli         t0, a6, 1
                  bne          t3, a0, 367f
356:              srli         s0, t1, 15
                  nop
                  add          a2, a3, a7
                  sltiu        s11, t1, -1379
                  bltu         t3, a1, 372f
                  lui          a6, 374682
362:              beq          s11, a2, 369f
363:              sll          zero, s5, t0
                  bne          s2, t2, 372f
                  srai         ra, s4, 0
                  sub          sp, s0, t5
367:              srli         tp, s2, 23
                  bne          a1, s2, 386f
369:              add          a0, t4, s7
                  slli         t2, a4, 17
                  andi         a0, t5, 316
372:              bne          gp, t0, 379f
                  add          a6, gp, a4
                  auipc        zero, 510876
                  bltu         a6, a0, 393f
                  xor          a6, s8, zero
                  lui          s10, 965130
                  sra          s4, s11, a2
379:              or           tp, s6, tp
                  srli         t1, t0, 9
                  sltiu        t5, t0, -1426
                  slt          s8, a6, a7
                  add          a5, sp, s3
                  srai         s11, s6, 19
                  srli         a4, gp, 18
386:              srai         t2, s5, 20
                  slt          t4, a6, s0
                  sltiu        gp, s4, 1785
                  slti         t1, t4, -1299
                  blt          s10, t3, 402f
                  lui          a2, 583325
                  srli         a0, t6, 18
393:              or           t0, t6, t3
                  blt          t2, t5, 408f
                  and          s0, s0, s7
                  srli         a7, t5, 8
                  nop
                  auipc        tp, 269852
                  auipc        s2, 1040352
                  srli         sp, t6, 9
                  and          s7, a6, s9
402:              xor          t2, a6, s5
                  sll          t1, sp, t1
                  ori          a2, s0, -1633
                  and          a2, s8, tp
                  srli         zero, s3, 12
                  sltiu        s2, a3, 1804
408:              addi         t5, s2, 1434
                  srai         s9, a3, 6
                  slti         zero, a2, 1649
                  sra          s5, a3, t4
                  sra          zero, t1, s9
                  lui          a6, 271050
                  sra          t0, t2, s0
                  addi         t4, t0, 599
                  slli         a0, a0, 15
                  xor          a0, s2, t4
                  sra          s4, s8, gp
                  sltu         a7, a7, s11
                  srai         s10, t3, 21
                  slt          a5, t2, t2
                  andi         a2, s1, -1050
                  sll          a0, s4, a3
                  or           zero, a1, t1
                  bne          t2, s4, 433f
                  blt          t0, a0, 433f
                  beq          t1, a7, 438f
                  sltiu        s4, sp, 1839
                  auipc        a5, 782612
                  xori         s1, a7, -922
                  sll          s2, s11, s8
                  bgeu         gp, s9, 434f
433:              slli         s11, s9, 20
434:              bgeu         s9, sp, 436f
                  xor          s5, s7, t0
436:              bltu         s5, t1, 443f
                  srai         gp, zero, 28
438:              srl          a6, t0, s3
                  slti         t5, s10, -1563
                  sltu         ra, t6, t1
                  lui          s0, 587931
                  slli         s4, t3, 2
443:              auipc        s2, 175132
                  and          s7, t3, s9
                  sub          gp, a6, s1
                  slt          t1, a2, s11
                  srli         s10, t4, 2
                  bge          s2, s5, 460f
                  and          zero, s6, a4
                  slli         t1, a6, 29
                  sltiu        s1, s2, -1931
                  la           s2, region_1+1264 #start riscv_load_store_rand_instr_stream_2
                  sb           sp, -13(s2)
                  sltiu        a6, t4, -408
                  slli         sp, t1, 18
                  lb           ra, -1(s2)
                  lb           gp, 13(s2)
                  sltu         a5, ra, s5
                  sh           s2, 4(s2)
                  lh           s9, 8(s2)
                  nop
                  sw           s2, -4(s2)
                  lbu          zero, -13(s2)
                  lbu          s8, -1(s2)
                  addi         s10, s4, -1577
                  auipc        s10, 403620
                  sb           tp, -10(s2)
                  sll          t2, a1, a4
                  sb           a1, -3(s2)
                  sll          a5, a6, t2
                  addi         sp, a4, 730
                  lbu          s1, 11(s2)
                  sb           a0, 1(s2)
                  slli         t0, s7, 20
                  lb           t1, -3(s2)
                  ori          t5, zero, -1095
                  lbu          s7, 13(s2)
                  ori          t2, a2, 197
                  lb           a5, -9(s2)
                  and          a4, s11, a3
                  slt          s0, s1, s9
                  sw           s1, -16(s2)
                  lb           t0, 9(s2)
                  sb           a5, -11(s2)
                  lbu          t1, 3(s2)
                  slt          t4, sp, a1
                  lw           t0, -12(s2)
                  lb           s8, -8(s2)
                  andi         t4, t5, 1751
                  sb           t1, 14(s2)
                  add          s11, s2, t1
                  lb           t2, -5(s2)
                  lb           t0, 2(s2)
                  lb           s1, -5(s2)
                  slt          a7, sp, s10
                  sra          ra, s2, a1
                  lhu          s3, 4(s2)
                  lb           ra, -13(s2)
                  xor          a7, t1, s7
                  xori         s9, t4, -743
                  and          t5, t6, t4
                  sll          s0, a5, s0
                  and          t1, s8, s4
                  xor          s11, s8, t1
                  lb           gp, 1(s2)
                  sltiu        a1, s3, -1309
                  sra          a7, t4, a0
                  addi         s3, a7, 1472
                  lb           a0, -8(s2)
                  or           s3, a5, a6
                  srli         a6, zero, 12
                  sb           a4, -11(s2) #end riscv_load_store_rand_instr_stream_2
                  slli         a3, s3, 18
                  bltu         s1, s6, 467f
                  srai         t4, a6, 27
                  slti         s3, s4, 2012
                  srli         a7, a5, 30
                  sll          t5, s3, a3
                  auipc        a1, 814905
                  bgeu         t2, s4, 460f
460:              bgeu         zero, s8, 476f
                  and          a2, t0, t4
                  or           gp, a2, s10
                  lui          a2, 538715
                  slt          zero, s5, zero
                  slli         a2, s11, 5
                  addi         a2, s3, -1499
467:              xori         a3, a3, -2001
                  bge          t2, zero, 476f
                  or           tp, sp, t6
                  andi         s0, t5, -756
                  bgeu         s2, a1, 486f
                  bgeu         s10, s5, 478f
                  sub          s1, t0, s4
                  nop
                  sub          s2, a1, s3
476:              bltu         s5, a7, 486f
                  slli         a0, s11, 31
478:              add          s5, t4, sp
                  and          t4, a6, s1
                  and          s9, sp, a5
                  srli         s9, gp, 7
                  bge          s7, a1, 492f
                  nop
                  xori         a5, s5, -529
                  slti         t4, ra, -1951
486:              nop
                  srl          a3, s9, t1
                  andi         a0, a2, -1431
                  sltu         s11, s0, t5
                  ori          a5, t6, -1032
                  addi         s2, sp, 787
492:              srl          a3, tp, a7
                  blt          t5, s1, 507f
                  bgeu         t3, a6, 500f
                  slti         t1, t0, 766
                  or           gp, s1, s2
                  sltu         gp, a7, t6
                  slt          sp, zero, s0
                  slt          s5, t4, sp
500:              srl          a7, s7, gp
                  slt          tp, a4, t3
                  blt          s0, s7, 517f
                  lui          a0, 543133
                  bge          a5, s7, 524f
                  sltu         t1, s5, t3
                  lui          t0, 641227
507:              srl          s5, s11, a3
                  bge          t0, s9, 521f
                  addi         s11, zero, -1080
                  ori          a3, t6, 1423
                  add          a6, s9, gp
                  srl          a5, s4, t4
                  beq          t3, s9, 516f
                  lui          zero, 897273
                  srli         a3, s10, 24
516:              sra          s3, t5, t3
517:              sltiu        s10, a0, -781
                  add          s4, t2, a4
                  bne          t5, s11, 522f
                  and          a1, s9, gp
521:              bne          s1, gp, 537f
522:              beq          t2, a5, 536f
                  srli         s0, s9, 29
524:              xori         s9, s2, -824
                  sltiu        tp, s2, 1521
                  beq          t2, s7, 529f
                  blt          t1, a1, 534f
                  addi         a5, a7, 174
529:              or           s10, s9, a0
                  beq          t1, a6, 546f
                  sub          s1, s1, gp
                  auipc        s1, 92832
                  and          t4, a0, t5
534:              xori         zero, t6, 1886
                  srli         t2, sp, 16
536:              nop
537:              srl          s2, a3, zero
                  slt          a5, s10, ra
                  or           zero, a3, ra
                  slli         s0, t1, 23
                  slt          t0, s0, tp
                  bgeu         s8, s9, 554f
                  srl          zero, a7, s5
                  bge          s7, s5, 545f
545:              lui          s0, 914227
546:              bltu         t4, gp, 560f
                  sll          s5, t6, t5
                  blt          s9, a6, 554f
                  xori         s2, s6, 553
                  sra          tp, a3, t1
                  ori          t4, tp, -1896
                  xor          gp, s3, gp
                  srl          s4, ra, sp
554:              addi         zero, s0, -786
                  xori         s7, t5, 390
                  bne          s3, s5, 570f
                  lui          s5, 122825
                  addi         s8, a1, 645
                  or           s3, s7, s3
560:              bne          s5, ra, 567f
                  bgeu         a6, t6, 573f
                  slti         s11, a1, -429
                  auipc        a4, 449571
                  srai         s8, ra, 27
                  xori         zero, a4, -1480
                  ori          t0, t4, -1651
567:              sub          a0, a6, s2
                  add          a4, t5, a0
                  beq          s10, t2, 576f
570:              ori          t2, s1, 802
                  bgeu         t1, s5, 574f
                  ori          s10, s11, -1675
573:              bge          s9, a5, 581f
574:              nop
                  bgeu         a2, a0, 585f
576:              ori          a6, a5, -414
                  srli         a6, s6, 5
                  slt          a0, a6, s11
                  xori         t4, s1, 1062
                  blt          s10, sp, 591f
581:              slti         ra, s2, -784
                  sll          s1, s11, a6
                  sub          s0, s3, t6
                  auipc        s8, 730476
585:              bne          t1, s1, 593f
                  sub          s5, s1, t0
                  nop
                  sltiu        s5, t2, 1189
                  sra          a2, s0, a7
                  nop
591:              and          a0, s8, sp
                  sll          a6, t1, a5
593:              bltu         s10, a0, 611f
                  sltu         a2, a3, t1
                  srai         s10, s3, 2
                  sltu         s4, s2, t6
                  and          s9, s10, t5
                  srli         a2, gp, 30
                  lui          ra, 978952
                  xor          a3, gp, s7
                  bgeu         s2, a1, 607f
                  sll          a4, s7, t4
                  srl          s2, s10, a0
                  srl          a1, a4, t5
                  xori         a4, a5, -1974
                  xor          ra, sp, ra
607:              andi         t4, gp, 1262
                  srli         tp, gp, 10
                  add          a1, t2, tp
                  srli         ra, t1, 19
611:              sltu         t4, s1, s5
                  blt          s1, t2, 614f
                  sub          a6, a2, sp
614:              xori         gp, a7, 785
                  beq          ra, t1, 618f
                  bltu         a3, s10, 632f
                  or           a0, s2, t6
618:              srl          zero, a4, a5
                  or           s1, t2, s4
                  blt          s4, t6, 634f
                  bne          s4, t3, 641f
                  slli         a3, s5, 22
                  slli         s0, a2, 6
                  beq          t0, a7, 634f
                  bge          gp, a2, 641f
                  add          s8, s8, t1
                  beq          s7, s5, 642f
                  bltu         s2, t1, 641f
                  beq          s6, s7, 632f
                  add          t5, ra, a7
                  bge          t4, s2, 647f
632:              or           s11, zero, ra
                  sub          a0, a6, s10
634:              srai         s11, s3, 16
                  nop
                  xori         a0, s6, -439
                  sra          a6, s3, t0
                  srl          s8, s2, s4
                  sll          t4, sp, a7
                  or           tp, t6, s10
641:              slli         tp, a3, 6
642:              blt          zero, s11, 657f
                  bge          a4, a4, 650f
                  lui          s1, 614236
                  nop
                  slti         s7, t1, 1021
647:              bgeu         a0, t2, 649f
                  add          a6, t0, s5
649:              beq          zero, s9, 663f
650:              bge          s11, a2, 664f
                  sra          a5, s2, t3
                  srli         s5, sp, 10
                  srai         zero, t1, 28
                  auipc        t0, 759945
                  bne          t1, s5, 665f
                  ori          a1, s1, 1342
657:              or           a1, s3, t1
                  xor          a7, a5, s0
                  slli         t1, s8, 24
                  srli         a1, s9, 21
                  bne          a3, tp, 664f
                  srl          a0, a2, a5
663:              andi         s11, s8, -1526
664:              lui          a5, 239347
665:              bgeu         t6, s9, 681f
                  srli         s4, s2, 15
                  slt          tp, sp, t3
                  or           t1, t4, t4
                  blt          a3, a4, 680f
                  and          s5, s3, t3
                  nop
                  bne          s4, s3, 675f
                  beq          s11, s9, 675f
                  and          t4, a5, s1
675:              bgeu         t1, s1, 677f
                  beq          zero, s10, 694f
677:              sra          s9, s7, s1
                  sra          t4, s3, a4
                  slti         a2, s1, 684
680:              bltu         s9, s9, 694f
681:              bgeu         ra, t6, 688f
                  addi         s5, s3, 1214
                  add          sp, tp, a0
                  srai         s10, a3, 29
                  xor          a5, t6, t3
                  bge          s4, a7, 687f
687:              srai         t5, a7, 22
688:              ori          a5, s2, 813
                  srl          a5, t3, s5
                  add          s9, a0, s3
                  add          sp, t2, s0
                  xor          a6, sp, s7
                  slli         zero, t2, 1
694:              bge          a4, sp, 702f
                  or           zero, s1, t5
                  srai         a5, a0, 16
                  lui          sp, 277221
                  sltu         s1, s8, s6
                  sltu         s8, ra, s2
                  or           gp, t5, t3
                  slti         a4, a3, -1656
702:              ori          a5, a3, 1444
                  or           a0, a6, s1
                  xor          s1, zero, a1
                  sltiu        s11, zero, -687
                  slti         s3, s2, 758
                  bltu         s3, s3, 727f
                  sub          t0, a1, a7
                  lui          s9, 665882
                  add          zero, gp, t5
                  nop
                  addi         a2, s5, -980
                  beq          gp, s0, 720f
                  ori          s8, sp, 1994
                  auipc        a4, 1038606
                  srli         gp, s3, 3
                  and          a2, t3, a1
                  srli         s1, s7, 14
                  slti         t1, t3, -306
720:              slli         a1, s9, 5
                  sltu         t2, s3, ra
                  sltu         t4, s1, a1
                  sub          s8, s0, a5
                  sub          s8, s1, ra
                  xor          tp, t0, s8
                  ori          a5, s11, -520
727:              srai         tp, s3, 16
                  bltu         s8, s9, 736f
                  bge          s6, s5, 736f
                  or           a6, s9, s10
                  auipc        a6, 604289
                  blt          s4, a2, 736f
                  bne          s0, t0, 736f
                  add          s10, tp, tp
                  sub          a0, tp, tp
736:              slti         a7, s7, -1388
                  lw           s1, 4(t6)
                  addi         t6, t6, 60
                  auipc        a4, 463111
                  sub          s0, s4, s3
                  ori          s0, s10, -1118
                  xori         s10, a4, 1882
                  nop
                  sltiu        a7, s2, 781
                  sub          s0, a0, t5
985:              addi x8, x9, 1
985:              jalr x8, x8, 0
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
.word 0x4c4bc30f, 0x2691f875, 0xc1cf2e63, 0x772380a1, 0x51145916, 0x5f7012ec, 0xc5776a61, 0xc66e8b89
.word 0x4db4bdee, 0x8edaef20, 0x30bb7a97, 0xf17d37db, 0x6d3fabeb, 0xfec029d3, 0xdc72fa1d, 0x5fd536e0
.word 0x0dd64a91, 0x5b354fea, 0x5c67b7df, 0xf41aa4c9, 0x9ce61d0e, 0xe225d4d8, 0x52d0f4c0, 0xa9f9e7a0
.word 0xfa16c651, 0x580e1203, 0x3ebb322d, 0xbf3bcf5a, 0xfa0dd226, 0x84ef4314, 0xa3edf4cf, 0xd0287e44
.word 0x59032693, 0xbad4b07b, 0x5ec4c498, 0x04d62ce7, 0x9e151515, 0xa9374e99, 0x4c9b2183, 0x5675b148
.word 0x45ec86ef, 0x3e54dda1, 0xdf04edcb, 0xb9fda2fb, 0xed0a3a72, 0x21490ae8, 0xe3b950a0, 0x74e1cb90
.word 0x4b6c8499, 0x64d996d8, 0xb2dbc341, 0x7bc193d8, 0x87fe2d1b, 0x9e5dfee5, 0x7a7459ec, 0x33e0a997
.word 0xc0e8736c, 0x6d20e18c, 0x0a4c3688, 0xfdbace42, 0xed231c0b, 0x34b166f0, 0x02d2a497, 0x4068f1a3
.word 0x909390cd, 0x9a6f8aba, 0xa2004a47, 0xe7494dac, 0xff9607eb, 0x65893203, 0x48027747, 0x786f3d1f
.word 0xf59e7793, 0x2020c663, 0x161ce1e7, 0x3a1b0547, 0x2f76e89e, 0xe5ed3cb5, 0xd21a6161, 0x98d4818d
.word 0x474760c8, 0x7b5d49ae, 0xa834bedc, 0x4503dd02, 0xe4454640, 0xe9afc1a7, 0xc798e0cf, 0x5933ad7b
.word 0x64005812, 0xabe7e02c, 0x6aa52174, 0xbbea8e17, 0x3b8ede34, 0x7ff09951, 0x0b488de8, 0x87fb2783
.word 0xd08b983e, 0x5d002a60, 0x3a5362fa, 0x8dbc9004, 0x54ac3395, 0xca00d83e, 0x7ba4a772, 0xb91e0005
.word 0xf678b5f5, 0xf7f28462, 0xaf7f17a6, 0xbbf55139, 0x3f091409, 0x402b28eb, 0x7f84e1e4, 0x0527bf70
.word 0x9c845f3d, 0x8953cee4, 0x29dfb3b3, 0x7a4c5ca0, 0x89d26eea, 0x6e44f512, 0x5aeb95fd, 0x5718cad8
.word 0xbcd16d72, 0xf523e8fc, 0x9f53b51e, 0x4684b0c2, 0x79495073, 0x6cd2efdf, 0x638eacd3, 0x3328120d
.word 0x8ae91e04, 0x70c70b53, 0x72ac0733, 0xce210239, 0xa065527b, 0x85f4a3e7, 0x73ac17ab, 0x98b63424
.word 0xa8e3d3df, 0xc13f471f, 0xbbd1c219, 0x16990ece, 0x34d571e7, 0x188e4e02, 0x83e62900, 0x9aee374e
.word 0x1bc023c0, 0xd26df27e, 0x2def5da5, 0x0bc12e73, 0x88f5a32f, 0x3df8cf83, 0xcedd0d97, 0xba390d60
.word 0x03ab6799, 0x18a1f70a, 0xba67c68f, 0x68ba4097, 0x56530aa4, 0xc6813c20, 0x8a0559d1, 0x5419b667
.word 0x804ec71a, 0x90c9acd2, 0x6b5ba6e0, 0x5c26fd48, 0x281b4fde, 0x3817d509, 0x37ef1e22, 0xded7f526
.word 0x59f3a534, 0x08769dce, 0xccbd21db, 0xbf9ff4ee, 0x5a52a4c3, 0xaa950311, 0xa21822ea, 0x6ea63fbd
.word 0x53695ef4, 0xb8bcac76, 0x8756e5be, 0x3bd96ec9, 0xe1749989, 0xaa6a51f5, 0x559af6d4, 0xa9d8d33e
.word 0x07b5f0b1, 0xb1500ba1, 0xfef4df2f, 0x0f3731bb, 0x10ecef64, 0xf4d672ce, 0x752e772d, 0x08f275f5
.word 0xed70c95c, 0xa046b883, 0xdf04f1d5, 0xad91b274, 0x548cc1ec, 0x8019ce41, 0x4d76d65b, 0x0772dd5d
.word 0x9a2cba15, 0xb4be5ca2, 0x0a466d13, 0xf25b26e9, 0xfb9f2121, 0xc67376fe, 0x4a4b0730, 0x2aa79587
.word 0x362c3706, 0xfc70e4ef, 0x1b03e036, 0xaa0794bc, 0xebabe944, 0x4c848521, 0xee1d4dd1, 0x4afea2ef
.word 0x8cff9d99, 0x9b71cbba, 0xdc335d19, 0xce756ff4, 0x6d196a2f, 0x0f78d3ce, 0x653bceaa, 0xaf3e3d79
.word 0xc6d17b24, 0x44780284, 0xc6f1b635, 0x354d0b21, 0x5cc5a6b4, 0x6f676b56, 0x14b4c42f, 0x964e3771
.word 0xcbec8ed8, 0xd2760101, 0x64d1f38e, 0x764c50d0, 0x3d7af4b2, 0xb35b2d18, 0x6158de7c, 0x58374126
.word 0x306b88fd, 0xd17db7ea, 0x75c2a820, 0x4aa3e9c5, 0xc6cd38ce, 0x197d59b1, 0x463f16eb, 0x2025e71b
.word 0xe37a4788, 0xcd9fa5b0, 0xd47af703, 0xf8572952, 0xe4093cb8, 0xdea4db97, 0xb4d60e2a, 0x4e118ee7
.word 0x2c8612a8, 0x87867569, 0xeff228f7, 0x79e1f558, 0x75f2af0c, 0x9c3a7bc0, 0x22a49fe4, 0xd15bf583
.word 0x7b9bb3fd, 0x9b5bd40f, 0xddf28be0, 0x05737ed7, 0xfe5400b6, 0x32364fc9, 0x87b76e6f, 0x09ae323f
.word 0x81c453be, 0x892aa750, 0x355675ab, 0x55ab515d, 0x4bcc4ae3, 0x1cabe44c, 0x2d01af0f, 0x101ff12e
.word 0xd22e5522, 0xa770bc75, 0x9c011b37, 0xed34e5e0, 0xf37d03d8, 0x79165cc9, 0x9ac23d25, 0xf1798723
.word 0x5a2e658c, 0xd4e015b0, 0x27b0c7b5, 0xaf3a3b33, 0xcdf15bc9, 0xc06ed8e2, 0x04ef7ea4, 0x9a58805e
.word 0x7aa0b1d6, 0xc0b97878, 0x4b636bc1, 0xa0e0f982, 0xe4098ab8, 0x3a7571da, 0x9e8427f5, 0x3cbeb619
.word 0x9a74286c, 0xf44eb279, 0x94966acd, 0x8e72c023, 0x703dda28, 0x1838efbf, 0x0045b048, 0x43f0348b
.word 0x4ae42ff6, 0xe8bf359b, 0xa268fcef, 0xa11afbf5, 0x32f0702f, 0xba02edd1, 0x3a0831a1, 0x58b8a8a7
.word 0xc7cd5ae8, 0xae3afeb6, 0x0562282e, 0x17490b0b, 0x8886c21f, 0x38181ed3, 0x7cd46dd3, 0x351f61fd
.word 0xa0891d2c, 0x9233ac10, 0xad7324ca, 0xc3f37cf9, 0x4c89f54a, 0x124aeeac, 0x33e01f05, 0x8d232ba9
.word 0x4d04976b, 0xd714c86b, 0xe087afd8, 0x4e942f80, 0x967fd2b1, 0x8bc33ec7, 0x7f88a649, 0xb86ba68a
.word 0xa65ef832, 0xf6a3b44b, 0x845b8b27, 0xe8265e7b, 0xe3aeafb2, 0x56c43662, 0x29e73e4b, 0x40a6daa3
.word 0x54551a52, 0x0319dbfe, 0xf9912129, 0xddf3889a, 0xe24c7b40, 0x4ab3c4fd, 0xad146172, 0x40a57f38
.word 0xbff4af62, 0x464d23f8, 0x22919199, 0x3cb47ab6, 0x797532b6, 0x6a8dfd44, 0x0cd2c961, 0x179c7ca0
.word 0x921f679c, 0x08a1bf52, 0xb891d4d4, 0xb0099be9, 0x75f20a32, 0x9be9c29b, 0x0024eedb, 0x715a0d29
.word 0x1b90957b, 0x681387fd, 0x4b9f4ff3, 0x4486a50b, 0x9e056297, 0xbb1e94df, 0xd290c9f9, 0x8ad2da05
.word 0xbdcde78b, 0xa6a40cb8, 0x21128d79, 0x8b8c586e, 0x9bb00ae2, 0xc4c48fdd, 0x65c3c781, 0xb5ce127f
.word 0x30c8a457, 0x48312aa7, 0x3ff19e6e, 0xd182ad2d, 0x0671b65b, 0x32843ea2, 0x49772ccf, 0xe94f17c0
.word 0xdf8c562f, 0x4e1ffa5b, 0x95d4d202, 0x98d59a7b, 0xa4cab5df, 0x1dddde1e, 0x3c8050fd, 0x83837cf8
.word 0x5c748387, 0xa45a3dee, 0xb0e13118, 0x7a6a5b3f, 0xd67a0352, 0xacdf0c28, 0xb0a68245, 0xfcc77eb1
.word 0x1706d338, 0xf80d8ab7, 0xc8e8f4ac, 0xf1517cd1, 0xf3079f5e, 0x925d5f7e, 0x0aa8afb3, 0x7b4fb33f
.word 0xd0df9ba6, 0x8a561cec, 0xe1c4ced4, 0xb866ef57, 0x84bd561b, 0x752feeb3, 0x9b2b4475, 0xf3ed2712
.word 0xb1dfc705, 0x5380f810, 0x7363882b, 0xa672dda0, 0x8d1f0cdf, 0xc00d1af4, 0x4219a502, 0x26aabd89
.word 0x7fbee953, 0x7a7ef12f, 0xaf937a5c, 0x935aaa38, 0xd5aa7df1, 0x9fafe6c2, 0x4747b192, 0xda0257f2
.word 0x0844c3a7, 0x7414c953, 0x6d71c274, 0x9c40c81e, 0xf14cbbe5, 0xddb92dd9, 0x8b999519, 0x2257b8e3
.word 0x5104e859, 0xcd10ceef, 0xf608191c, 0xc6ce63cc, 0x19c00e39, 0x2aab1884, 0x6ea1b6fe, 0xfba82891
.word 0xa25760af, 0x9b266907, 0x2f3b5275, 0xd9a21b78, 0xaead7015, 0xa4729df4, 0x990313ee, 0x0293a8fc
.word 0xc09c7833, 0x5b7adee1, 0xed30630b, 0x1c5b4456, 0xe0a5e941, 0xdc5cf975, 0x6d9060af, 0xfde71ce7
.word 0x4dddca3f, 0x68a31399, 0x4cc31665, 0x08cc2ddf, 0x8346b26b, 0x99a47bf6, 0x38cd86c8, 0x40af0333
.word 0xb79a5fc8, 0xd059c51e, 0x2510734f, 0x2d4db66a, 0xf0ea0463, 0xe2fefe99, 0x1876a648, 0x1dd2051c
.word 0x22235d13, 0xcd671ddf, 0xfd2d29e6, 0xe1b98dcf
.section .region_1,"aw",@progbits;
region_1:
.word 0xa3b5491c, 0x85432e08, 0x7d70a1af, 0x5a849e33, 0x634b4162, 0x0addc9e2, 0xff877c25, 0xc4ca1441
.word 0x0d40721a, 0x26edc0da, 0xf2142b37, 0x267bd1c5, 0xff7e83d4, 0x733ece6c, 0xb22d4ae5, 0xae634a80
.word 0x429026ed, 0xae6a2a2c, 0x39db68a4, 0xdbee1b15, 0xacffd5b9, 0x3c5eae63, 0x7b2fafcd, 0x95b4d562
.word 0x5827e6f6, 0xd7130111, 0x16aa8b6b, 0xbdd016db, 0x718544d5, 0x397f479e, 0x5bd1b93a, 0x328bddf5
.word 0x01b0bb17, 0xea03e127, 0x90009ff0, 0xf44343b8, 0x18f27d7a, 0x522c61e9, 0x6b65179c, 0x6888b6d7
.word 0x75361599, 0x5e5cffa9, 0x4c3d3615, 0xbdb5eb7a, 0x64d3c60b, 0x9c7276fe, 0xc50321e2, 0x58144431
.word 0x25f25a9a, 0xae996239, 0xb0ddaaf9, 0x39ab8bd9, 0x11df9ecc, 0x11bf85f3, 0x6624ffc9, 0x606ff3a3
.word 0x12be0738, 0x90168302, 0xad5f88bc, 0x9597af5e, 0x5f9e8eb5, 0x9f984f0c, 0xcd7b9980, 0x1944b8bb
.word 0x190561f5, 0x6db61718, 0xfab892a4, 0x295a2d36, 0x1d086aa4, 0x2badfce2, 0xca747a25, 0x57f0b4e3
.word 0x8569fd72, 0x851f2282, 0xbdd50def, 0x9bab27d9, 0x78093b8c, 0x099daac1, 0x41d25793, 0xfc7b5c89
.word 0x86d2b134, 0x5c6d2b08, 0x4cec0a78, 0x2c912280, 0x20e05d85, 0xec977897, 0x9dff7e75, 0x3c2204d1
.word 0x374fe282, 0xe2f729bc, 0x6e0c6f64, 0x6b11f34c, 0xcc25ee4c, 0x13e66b7d, 0x30ab5746, 0xdb940eb8
.word 0x06d641a4, 0x4348f629, 0x7ca6c532, 0x51ae7198, 0xf369c19c, 0xfdd947b5, 0xc00bed87, 0x5f502586
.word 0xb2119a4c, 0xc32a4092, 0x4d2cddfb, 0x61d17cbd, 0xda257d9b, 0x24cd985e, 0x5d007a76, 0x246e9ce6
.word 0x71d951c8, 0x2f7abcc1, 0x315a1493, 0x983b646a, 0x6a35d484, 0x86ae9500, 0x42ed7304, 0x9de0bd40
.word 0xa9d925ce, 0xeec0e06c, 0x1cf258bc, 0x4f37a7c4, 0xfdfff821, 0xae034a42, 0x425d47ea, 0x2e023700
.word 0x7b681982, 0x5ac653f3, 0xb8965495, 0x6c75f1a0, 0xc2ff0f87, 0xdb44c1b2, 0xfcab5e24, 0x35e486c0
.word 0xe8c598d3, 0x7e0de32b, 0x4f65f9ea, 0xce4812b9, 0xbd0a0b15, 0x0c47853b, 0x5523e921, 0x2ef5bc4a
.word 0x71a167bc, 0x58979574, 0x797dae94, 0x15ba197b, 0x7f406003, 0xb5bda748, 0x4dba3958, 0xbeab3d4d
.word 0x728fd1b7, 0x901ea5fa, 0x155d0bda, 0x666f5330, 0x8fd3b177, 0xaa1aa2f1, 0xa9e711a4, 0xb37f014a
.word 0x0c31182a, 0x2d6ef737, 0xd55ce8c5, 0x279d5b70, 0x10e0d919, 0xc3682d30, 0xd1a86400, 0x165fc3af
.word 0x365f5a68, 0x8280479a, 0x36ee4ae5, 0x1666cb39, 0x9b4513d0, 0xecc823d2, 0x3841f1a4, 0x2067dfc4
.word 0x6ced2725, 0x15c700c3, 0xad697c37, 0x487cdb43, 0x7edaf53a, 0xf7763fcd, 0x78c86532, 0xafa5b583
.word 0x64f70a23, 0x784cfa1a, 0x8d1852b9, 0x14e29b0f, 0x9747f9a2, 0xa426015d, 0xca671d95, 0xaf2dcbce
.word 0x282289ef, 0x83ed097d, 0x6f4707ca, 0xc6e6378f, 0x8763c45d, 0xd821a3ba, 0x3d1b67d1, 0x49d432fd
.word 0x582b8055, 0x14ab1f95, 0x13ee2ec9, 0x63476702, 0x7f2b5895, 0x9c3d711e, 0x9beaf61a, 0xc91be621
.word 0x4aa09b01, 0xc5a2d33b, 0x93f04937, 0x3c0db430, 0xf3080960, 0xd00e48d5, 0x260c681f, 0xd09846c6
.word 0x6cfed957, 0xf7483813, 0x05f581d5, 0xbf7dc85d, 0x4755df5b, 0xd72ab70b, 0x6cb6b50b, 0x8c02217e
.word 0xae833d6b, 0x3171c961, 0xf3d73e8b, 0x135fa2a9, 0xa8518c1b, 0x75ba0879, 0x000c17d1, 0x10b27269
.word 0xddf4ef17, 0x9304c9b8, 0x8cb5e1a6, 0xd0606c21, 0x4e3e3cf6, 0xbdfdc690, 0xcf402c11, 0xb69fe2b0
.word 0xdb06d475, 0xb2b16db9, 0x85979b26, 0x14b03ee3, 0x4900cb41, 0xee79174b, 0x8f1daa22, 0x49851e1a
.word 0xd4d93c21, 0x8fec876b, 0x83c85f15, 0x503139c8, 0x2084b0ec, 0xe4063085, 0x91f2425d, 0x40491920
.word 0xf455df6a, 0xb52be273, 0xfde60777, 0x84f04711, 0x124e27b4, 0xdf54d2a8, 0x70bfbeab, 0x27959e0f
.word 0x99ba5c8c, 0xc21b02c7, 0x9d46608a, 0x20d5b7bd, 0xe3bdae1d, 0x8bed2472, 0xd71d4358, 0x787b5430
.word 0xdbc23903, 0xf74b3912, 0x91e6ed84, 0x7c794a42, 0x58dd4500, 0x2a562660, 0x215ebd48, 0xed884e1a
.word 0xe7a1fb01, 0x8a3b0e84, 0x1b2f76b1, 0xfe4f8127, 0x10e425d1, 0x37ccf13b, 0xc11f0526, 0xba13d955
.word 0x60112746, 0x3e8af83e, 0x6cc67e35, 0xc9403d7b, 0x1ac149ee, 0x053ce3fb, 0x70d4667d, 0xee9b0577
.word 0x3ab39d2b, 0x615e88fc, 0xe075740b, 0xe1ec5c40, 0xb21ea562, 0x9e641ee1, 0x99cd34b3, 0x2efe4623
.word 0x64f4472f, 0xf44018e7, 0x2a6fadb3, 0x60e65602, 0x557e8f95, 0x6e81e33d, 0x63e374d0, 0x0e3e0aba
.word 0x8d257a26, 0x4934d90b, 0x1da9beed, 0xc6488f60, 0x6f3427b4, 0x129c997e, 0x90ceb95b, 0xf919bd53
.word 0xce4c49af, 0x35c64ee0, 0x28e06ed2, 0x4f61f4a0, 0xc96cab86, 0x5aa07ee9, 0x93ffe5fa, 0xc040376c
.word 0xb7d4e0b4, 0x7ab3139e, 0x90eed9c0, 0xed9e0093, 0x94bee646, 0xfdb30fad, 0x93211f23, 0x4b77a089
.word 0x27d90c82, 0xb35b722b, 0x398d80b4, 0xd6174232, 0xe6e80029, 0x74aea44d, 0x1855d754, 0xe14113da
.word 0xa03c0c57, 0x27bfff19, 0x7d2de2eb, 0x65fb9859, 0x14279afe, 0x8a316620, 0x4ad7cc71, 0xdba29aa6
.word 0x1d0836fe, 0xf7f9e8dc, 0x4131a668, 0xf3cb6b43, 0x1a428eb7, 0xf309a436, 0x781376f3, 0x976e8363
.word 0x87466973, 0xfa7942c7, 0x525e2255, 0xd7c092a1, 0x4de5ca76, 0x624460eb, 0x539efc40, 0xd2539b7a
.word 0x58994aa9, 0xaa7f8354, 0x87382b9a, 0x77cf2e6e, 0x69cfbe73, 0x02470686, 0x185cbb2d, 0xb351099d
.word 0xbe501971, 0x7e6d561f, 0xae49f4a6, 0x5d5502af, 0xd96b9e05, 0x09d973d9, 0x0601c241, 0x71917b19
.word 0x383161d0, 0xe49f06b3, 0x3832d2ab, 0x64016748, 0xed3a2778, 0xfc310cee, 0x446bbea9, 0x2b83ce5a
.word 0x27fdda2f, 0xc99326f5, 0x9632b4fd, 0x39999be1, 0x336bff79, 0xb484c2f8, 0x1b200b75, 0x19b321b8
.word 0xab7cec46, 0xf6b9d7e1, 0x5182ead5, 0x1424d931, 0xb121bf5f, 0x32cc9355, 0x8d90f4b3, 0x606a2a16
.word 0xa74d8435, 0x33e58652, 0x20856f36, 0xf8d8a78b, 0xda772e85, 0x41f14080, 0xf4d36a00, 0x00b0e817
.word 0x7d5898eb, 0x516aa6d4, 0xc546bc07, 0x2a13ad16, 0x80d550c0, 0xb0d3e111, 0x4bbe91c3, 0xaa1fdcff
.word 0xe0ea2740, 0xc819cdd5, 0x35198f24, 0xf6bb0920, 0x36f7744d, 0x4ac15831, 0x6b1582b2, 0xd4160c4b
.word 0x4cb7607c, 0x62adfe30, 0xeed4c6de, 0xb7321c9b, 0xe0070e9f, 0x51c5f05a, 0x69ccc0a8, 0x58c3b096
.word 0xa6b9ad75, 0x0fa37482, 0xb857a017, 0x7ee1f261, 0x2f3ce78c, 0xd150df7b, 0x9c847136, 0x11b99762
.word 0x711451de, 0x7c66bcf0, 0x3dae68d3, 0x7978c744, 0xcbbcd96c, 0xbe1ef9c7, 0xccbb4347, 0xbb5b9fc2
.word 0xc33d94ed, 0x83dca655, 0x9839ad4d, 0x6c4bb905, 0x860f995a, 0xb09518f9, 0x8816140f, 0x234a6771
.word 0xb6f03e2e, 0x088e7fbe, 0x0f90deed, 0xd1a84e47, 0xc9a7f5cc, 0xf56e8815, 0xc249656c, 0x8abc9d3b
.word 0xb91be07c, 0xc23c4889, 0x7203c278, 0x335e197c, 0x02649e13, 0x83ed6436, 0xbaf4efb3, 0x69f998db
.word 0x2ec8cfdd, 0x9591eb8a, 0xa923c7e0, 0xec4ac080, 0x8081d82a, 0x446c5940, 0x8a998e60, 0x8f1ad1f3
.word 0x7509a0e2, 0x16802875, 0xfd00fa4a, 0x7a8a9835, 0x4691f032, 0x1388c8bf, 0x39fd4bf4, 0xc0ce323d
.word 0x47a252f2, 0x2f8d5e60, 0x1893fe8b, 0x9cb1935d
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
                  add x22, x31, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x24, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x24, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x24, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x24, x25, ecall_handler
                  li x25, 0x1
                  beq x24, x25, instr_fault_handler
                  li x25, 0x5
                  beq x24, x25, load_fault_handler
                  li x25, 0x7
                  beq x24, x25, store_fault_handler
                  li x25, 0xc
                  beq x24, x25, pt_fault_handler
                  li x25, 0xd
                  beq x24, x25, pt_fault_handler
                  li x25, 0xf
                  beq x24, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x31, x22, zero
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
                  add x31, x22, zero
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
                  add x31, x22, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x31, x22, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x31, x22, zero
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
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x31, x22, zero
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
