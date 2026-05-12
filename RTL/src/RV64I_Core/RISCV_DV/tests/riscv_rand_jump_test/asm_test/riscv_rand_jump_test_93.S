.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x80000000
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x82869c3a
                  li x12, 0xfeb3156d
                  li x13, 0xcb39e18a
                  li x14, 0x6c9cc088
                  li x15, 0x35afe320
                  li x16, 0xfee5b333
                  li x17, 0x1c7ebda2
                  li x18, 0x80000000
                  li x19, 0xfc69162e
                  li x20, 0xfd210460
                  li x21, 0x0
                  li x22, 0xf1d98f85
                  li x23, 0x8
                  li x24, 0x0
                  li x25, 0x1
                  li x26, 0xbf2b79cd
                  li x27, 0xf53d80f9
                  li x28, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xe
                  la x29, user_stack_end
main:             la           sp, region_1+1983 #start riscv_load_store_rand_instr_stream_1
                  ori          s7, t2, 944
                  slli         s7, tp, 6
                  lh           ra, 11(sp)
                  lbu          s10, 12(sp)
                  lb           s2, 9(sp)
                  lb           t0, 0(sp)
                  lbu          s6, -6(sp)
                  sltiu        s3, a4, -1490
                  xori         s7, a7, 418
                  lbu          t1, -15(sp)
                  sltiu        s10, s2, 1772
                  lbu          a1, 6(sp)
                  auipc        s8, 612734
                  lbu          t1, 12(sp)
                  auipc        s0, 793869
                  lbu          t3, -2(sp)
                  sb           s2, -16(sp)
                  sll          a4, sp, ra
                  xor          ra, s3, t6
                  sb           a2, -9(sp)
                  sll          zero, a7, a7
                  lb           t6, 16(sp) #end riscv_load_store_rand_instr_stream_1
                  slt          t3, tp, s4
                  blt          s3, s11, 11f
                  blt          s6, a1, 7f
                  bne          s4, ra, 4f
4:                lui          t1, 800746
                  lui          s9, 671203
                  ori          s1, s6, -475
7:                srai         t0, s4, 12
                  sub          s4, gp, t5
                  xori         gp, sp, 642
                  andi         t3, t0, -1937
11:               nop
                  sll          s5, t4, a4
                  auipc        s4, 440693
                  beq          s6, t4, 16f
                  sub          s6, a4, t4
16:               sra          s2, t2, t1
                  ori          sp, s3, -1596
                  slt          a6, s6, s7
                  lui          a1, 885215
                  bge          a3, s6, 38f
                  srl          a6, s0, a7
                  addi         t6, s5, 402
                  auipc        t5, 609731
                  srai         s0, ra, 27
                  sltiu        s4, gp, -61
                  xori         a4, zero, 492
                  srl          s11, s10, s3
                  srli         a0, s4, 16
                  andi         a1, gp, -626
                  sltiu        a6, s11, 111
                  srl          sp, sp, gp
                  addi         t5, a7, -2019
                  addi         a2, a5, 1081
                  sub          t0, s4, a1
                  slli         a2, a0, 31
                  bltu         s10, a0, 52f
                  sltu         t6, sp, a6
38:               ori          gp, a7, 465
                  ori          s0, s7, 1795
                  add          s4, a2, zero
                  blt          t6, s1, 58f
                  srai         a3, s10, 8
                  sltiu        s3, s8, 1107
                  andi         s11, t2, -300
                  xori         a2, a4, 22
                  sltu         ra, s9, a5
                  blt          a5, s0, 50f
                  beq          s1, s4, 51f
                  sltu         s0, s6, a2
50:               sltiu        a6, t5, 23
51:               slt          a6, s9, ra
52:               slti         s11, t4, -1490
                  srai         a1, t0, 7
                  xor          t1, sp, s11
                  ori          t1, a0, -1015
                  slli         a4, a4, 17
                  srli         a1, tp, 6
58:               blt          s10, s11, 61f
                  srai         s10, s9, 3
                  bgeu         a5, t5, 74f
61:               lui          a6, 655086
                  sra          a6, s6, t4
                  slt          a6, s4, a7
                  blt          s8, zero, 78f
                  lui          s7, 761603
                  la           s10, region_0+1268 #start riscv_load_store_rand_instr_stream_2
                  sh           s0, 28(s10)
                  xor          s5, t1, s3
                  andi         s3, t4, 765
                  lb           t3, 1(s10)
                  sltu         s2, s8, t2
                  sh           a5, 246(s10)
                  srai         s5, zero, 30
                  addi         ra, t2, 51
                  srai         s3, a4, 10
                  lh           s11, 130(s10)
                  srai         t1, s9, 21
                  add          a4, a3, s7
                  lbu          s4, -108(s10)
                  andi         s6, tp, -1400
                  srl          a1, t0, a6
                  lh           s1, 112(s10)
                  xori         t2, ra, 384
                  xor          s8, a7, s9
                  andi         s3, gp, 1545
                  auipc        s0, 1036310
                  slli         a0, a7, 31
                  xori         t2, s2, 333
                  sh           t6, -150(s10)
                  slti         s6, a0, 15
                  addi         a2, sp, 877
                  sub          a0, t1, s11
                  slli         sp, t0, 1
                  addi         a2, s2, -1564
                  sll          s7, s2, s3
                  srli         a6, s8, 14
                  and          s8, s9, s7
                  lw           t3, -76(s10)
                  sh           s3, -34(s10)
                  slt          t5, a6, t4
                  lbu          t6, 143(s10)
                  sltu         t1, a0, s9
                  or           s11, t1, s10
                  sltiu        s4, sp, 0
                  auipc        t6, 96767
                  sw           t1, 128(s10)
                  ori          zero, s2, 942
                  lb           t3, 113(s10) #end riscv_load_store_rand_instr_stream_2
                  add          ra, a5, ra
                  bltu         a4, a4, 81f
                  xor          t6, s0, s4
                  ori          ra, t0, 765
                  sltiu        a6, s10, -713
                  slti         t1, t4, -940
                  sltu         t2, ra, s2
                  blt          s0, t4, 80f
74:               sll          ra, t0, s2
                  sltu         t5, s6, t2
                  slli         s7, a4, 20
                  la           t2, sub_1
                  addi         t2, t2, 225
                  srai         s0, a4, 29
                  xor          s3, s8, s10
                  nop
                  ori          a0, a2, -603
                  sub          s5, a3, sp
main_j1:          jalr         s0, t2, -225 #jump main -> sub_1
                  nop
78:               auipc        s5, 853209
                  sltu         t1, a1, a1
80:               bgeu         a6, a3, 92f
81:               or           t1, sp, sp
                  bge          s5, s9, 101f
                  bltu         s6, s0, 86f
                  andi         t1, s9, 1477
                  beq          t2, s5, 91f
86:               add          a1, t4, s11
                  lui          a1, 891795
                  sub          s6, t5, tp
                  addi         s11, t5, 957
                  and          s8, t1, a0
91:               and          a6, gp, s6
92:               or           s6, s8, s4
                  slt          ra, t4, t0
                  xor          sp, s6, t6
                  srli         t6, tp, 24
                  sra          s2, t5, a6
                  blt          s7, s7, 102f
                  or           gp, s4, t3
                  add          s8, t2, t4
                  slli         a4, sp, 22
101:              srai         t0, s6, 25
102:              blt          s10, s0, 107f
                  srai         t1, a5, 3
                  slti         t0, s8, 1398
                  bge          gp, tp, 120f
                  bne          s10, a6, 125f
107:              slli         a3, gp, 9
                  bltu         s10, t5, 123f
                  andi         a0, gp, -207
                  or           t5, gp, a2
                  srli         s10, s10, 21
                  sra          s0, a4, a1
                  sll          a1, zero, s0
                  sra          s10, s2, a7
                  srai         t5, s3, 16
                  blt          a5, s3, 136f
                  bge          a2, t1, 129f
                  srl          a7, t1, a3
                  srl          s0, a7, t2
120:              xor          s8, tp, s6
                  beq          zero, gp, 124f
                  andi         a1, t6, -541
123:              bne          s3, t2, 136f
124:              sra          s5, a0, a7
125:              sll          a0, a6, sp
                  slt          s8, t0, a4
                  addi         a2, a4, 1947
                  auipc        ra, 14232
129:              or           t2, t6, s0
                  srai         s4, s3, 3
                  addi         s4, a3, 1039
                  beq          s10, a4, 147f
                  bltu         s3, s5, 136f
                  and          t1, a5, s11
                  and          s8, t2, tp
136:              nop
                  beq          zero, a7, 150f
                  and          t1, t2, s11
                  sll          t6, s7, a2
                  bge          tp, s5, 155f
                  andi         s8, t2, 261
                  lui          ra, 224787
                  bgeu         t2, t4, 149f
                  srai         s4, tp, 10
                  bgeu         s4, zero, 152f
                  bltu         a3, s1, 165f
147:              sll          s5, a2, a1
                  beq          a6, a7, 149f
149:              sub          s9, s3, a5
150:              xor          t3, a5, zero
                  sub          t2, t5, t3
152:              sltu         a1, a3, a6
                  or           s3, tp, zero
                  ori          t3, s1, -102
155:              srli         s7, t5, 31
                  andi         t5, t2, 438
                  lui          t6, 62719
                  xori         s8, s6, 254
                  add          a0, t6, s9
                  andi         sp, sp, -232
                  slt          s1, s9, zero
                  addi         t0, s3, -888
                  bne          a6, t3, 173f
                  blt          a1, s7, 167f
165:              beq          s0, t1, 182f
                  srai         a1, s4, 27
                  la           sp, region_1+1058 #start riscv_load_store_rand_instr_stream_0
                  lui          t2, 793979
                  slti         s2, a3, 911
                  lb           s0, -205(sp)
                  ori          s9, s11, 1821
                  sb           s9, 181(sp)
                  srl          t2, t3, gp
                  lhu          s7, 232(sp)
                  nop
                  srli         s7, gp, 23
                  sh           s1, 180(sp)
                  xori         a7, s8, -1772
                  lw           gp, -222(sp)
                  sb           s11, -161(sp)
                  lbu          s9, -41(sp)
                  srai         t5, a4, 10
                  sb           s5, 101(sp)
                  slli         s10, s5, 31
                  xori         s0, a1, 344
                  sub          s10, t0, s4
                  sb           s1, 8(sp)
                  lbu          s7, -52(sp)
                  auipc        s5, 240460
                  lhu          a1, -64(sp)
                  slt          s10, gp, s9
                  sw           zero, -62(sp)
                  sh           t1, 142(sp)
                  lh           s4, 24(sp)
                  lb           s6, -215(sp)
                  lw           s2, -90(sp)
                  lb           s11, 36(sp)
                  sw           zero, 194(sp)
                  lbu          zero, -45(sp)
                  lbu          t0, 65(sp)
                  lbu          a1, 83(sp)
                  sb           s10, -95(sp)
                  sll          zero, a7, a1
                  lb           a2, 93(sp)
                  lbu          s9, -125(sp)
                  sub          s9, t0, s8
                  add          a0, s6, t4
                  sb           a4, 113(sp) #end riscv_load_store_rand_instr_stream_0
167:              nop
                  addi         t1, s0, -997
                  bgeu         t0, s10, 188f
                  sll          zero, ra, t6
                  slli         s9, t1, 9
                  slli         s11, s8, 17
173:              sltu         s7, s7, a4
                  add          a2, s8, a2
                  and          ra, a0, t1
                  la           s10, sub_1
                  slli         s6, t3, 4
                  addi         s10, s10, 886
                  auipc        sp, 821787
                  or           t6, s6, a6
                  blt          a3, a2, main_j2 #branch to jump instr
                  sub          a1, s5, sp
                  auipc        s7, 591430
                  auipc        sp, 73825
main_j2:          jalr         s0, s10, -886 #jump main -> sub_1
                  xori         sp, s1, 1485
                  xori         t0, s11, 329
                  bgeu         a0, t2, 192f
                  bltu         ra, s3, 181f
                  auipc        s10, 697463
181:              addi         t3, t0, -2029
182:              nop
                  sll          s0, s10, zero
                  or           s0, t2, s10
                  sltu         s9, a0, s3
                  xor          a2, a7, gp
                  slt          a6, a7, t2
188:              or           sp, t2, a1
                  bgeu         s4, t0, 203f
                  add          s1, a0, a4
                  sltu         t5, t4, zero
192:              bne          a7, s9, 195f
                  ori          s7, t4, 673
                  sltu         a0, gp, t3
195:              bgeu         s8, s10, 207f
                  srl          s5, s6, sp
                  bltu         s7, t2, 202f
                  srai         s0, t5, 8
                  srli         s2, s2, 10
                  srli         t6, a3, 29
                  beq          s1, a7, 221f
202:              sra          a4, s11, a6
203:              nop
                  bgeu         t5, a0, 207f
                  xor          s3, s7, a2
                  srli         s0, s10, 30
207:              sltu         a1, s11, a0
                  beq          s3, t1, 222f
                  sll          s3, sp, s6
                  ori          s0, a4, 764
                  beq          s5, s11, 226f
                  xor          s8, t2, s3
                  bge          s6, tp, 226f
                  sra          t5, s0, s9
                  srai         t3, t0, 11
                  srl          t1, s10, s4
                  and          t0, s6, a0
                  bge          t6, s1, 223f
                  auipc        s0, 6255
                  la           a2, region_0+1738 #start riscv_load_store_rand_instr_stream_3
                  sb           s10, -911(a2)
                  slti         t3, s10, -1996
                  sb           t1, 109(a2)
                  xor          sp, a4, t1
                  and          a7, s9, s9
                  srai         a1, zero, 1
                  sra          s5, a6, s10
                  sb           s8, 105(a2)
                  and          t3, s9, t5
                  srli         s9, ra, 0
                  ori          s9, a4, -868
                  sltu         s5, s5, s11
                  slti         a7, a1, -1241
                  sll          gp, t6, a0
                  slti         s5, ra, 564
                  lbu          s0, -1219(a2)
                  xor          s9, a5, t4
                  sb           s11, -1615(a2)
                  and          s1, a4, a5
                  sltu         sp, t5, a2
                  sb           s11, -1617(a2)
                  sb           s9, -1105(a2)
                  srai         a1, a5, 9
                  or           a1, t2, s4
                  sltiu        a4, t2, 306
                  srli         t2, t0, 17
                  slli         s0, s8, 20
                  lbu          a1, -1632(a2)
                  lbu          s8, -946(a2)
                  lhu          gp, -1670(a2)
                  or           s0, ra, a7
                  srli         s2, t0, 28
                  lb           a3, -243(a2)
                  xor          s5, zero, a5
                  slti         s2, t2, 535
                  add          s0, s0, a3
                  lui          s6, 713561
                  sb           a6, -828(a2)
                  and          s11, s4, s0
                  slli         ra, t3, 1
                  auipc        s5, 139202
                  lbu          s3, -499(a2) #end riscv_load_store_rand_instr_stream_3
                  ori          s9, s11, 178
221:              nop
222:              bltu         tp, s4, 240f
223:              lui          s0, 97329
                  ori          a1, s6, -1687
                  sltu         a1, s7, s2
226:              blt          a7, gp, 229f
                  srl          s10, s4, zero
                  slli         s5, s7, 14
229:              slti         s5, t4, -585
                  nop
                  sltiu        s6, a4, -1359
                  blt          s2, sp, 237f
                  and          s6, gp, sp
                  beq          a6, zero, 246f
                  and          a4, tp, sp
                  srl          s10, t1, s11
237:              srai         t5, a1, 10
                  or           s5, s1, s5
                  bltu         s0, a1, 254f
240:              bgeu         s4, a4, 256f
                  sll          t2, s1, tp
                  bne          a7, a4, 255f
                  srai         s3, tp, 1
                  sra          s0, s11, s2
                  sll          gp, zero, s9
246:              ori          t6, a2, 805
                  slt          s1, a4, s7
                  sll          a1, gp, a5
                  sub          a4, a4, s9
                  or           s6, t0, s7
                  srai         s2, ra, 30
                  slt          s1, a2, t2
                  bgeu         s2, t2, 256f
254:              bne          s6, s0, 257f
255:              beq          a0, s3, 258f
256:              sub          t0, s2, s6
257:              sub          t2, a4, a1
258:              slti         s4, s1, -1302
                  ori          t5, gp, 476
                  srai         a4, t5, 19
                  lui          a4, 936436
                  bge          s2, t1, 267f
                  bltu         t2, t0, 276f
                  beq          s8, t1, 279f
                  bgeu         s2, s10, 284f
                  sra          s6, a0, s11
267:              addi         s3, t5, -138
                  slt          zero, t5, s11
                  bne          s3, a3, 276f
                  bltu         s9, ra, 287f
                  bgeu         t4, zero, 283f
                  xor          s11, s11, s1
                  sltiu        s10, a3, -1451
                  or           t6, a0, t1
                  sub          s10, sp, s7
276:              sll          s1, s10, s2
                  and          t5, a5, t4
                  and          a1, a5, t0
279:              xori         a3, a5, 895
                  slti         s9, zero, -1640
                  bltu         s9, s7, 296f
                  bne          s9, gp, 287f
283:              add          sp, a7, t6
284:              beq          s5, t0, 300f
                  addi         a4, a1, -1128
                  xor          t3, a3, sp
287:              blt          ra, t5, 305f
                  lui          a2, 867456
                  xor          a6, a1, a2
                  sll          s0, t4, ra
                  xori         t6, t4, 1095
                  and          t6, t5, t6
                  bne          tp, t6, 298f
                  add          t3, s2, s8
                  andi         a4, gp, 1065
296:              ori          s0, s7, -822
                  andi         t3, t2, 171
298:              bgeu         a0, ra, 301f
                  slli         ra, t2, 25
300:              srai         s2, gp, 15
301:              sll          s6, a1, a4
                  auipc        s0, 174131
                  slli         t1, s7, 26
                  auipc        t1, 704780
305:              xor          s11, a4, t4
                  xori         ra, a0, 1848
                  and          t3, t5, t6
                  srli         a0, gp, 24
                  bltu         a6, s7, 312f
                  xor          s3, a7, a1
                  bgeu         t0, a7, 314f
312:              sltu         a3, t5, a5
                  slti         s10, s3, -85
314:              addi         a0, a2, 1646
                  auipc        a7, 994895
                  sub          a4, s3, sp
                  slli         t6, a7, 26
                  xori         t1, s5, 386
                  sltu         gp, t3, t1
                  beq          s7, t4, 323f
                  srai         s2, a4, 10
                  bne          t2, a3, 325f
323:              xori         a0, s1, -235
                  slt          s5, a2, s11
325:              bltu         tp, s11, 339f
                  sltu         a3, s8, a5
                  bge          s5, a6, 342f
                  ori          a3, t2, -491
                  blt          s4, s8, 330f
330:              sltiu        a2, t1, -558
                  add          a6, t5, t2
                  sll          a7, s4, s7
                  bgeu         s6, a1, 339f
                  nop
                  auipc        s10, 588538
                  srli         t3, tp, 17
                  addi         s9, s8, -398
                  slli         a4, s0, 19
339:              slt          s4, a5, s4
                  nop
                  slli         t0, s4, 5
342:              srli         t6, t6, 10
                  slti         gp, s3, 767
                  andi         s9, gp, -722
                  sub          t3, a5, a2
                  sltiu        gp, s8, -386
                  sub          s8, s8, a2
                  sub          zero, ra, s2
                  ori          zero, t5, 2023
                  srl          a1, a5, a3
                  sub          a3, s6, a6
                  bne          gp, zero, 371f
                  add          s9, tp, t2
                  bne          s4, a7, 368f
                  lui          s2, 148955
                  bne          s11, s5, 366f
                  srl          s6, tp, a1
                  sll          s3, t6, s6
                  xori         s9, t3, 379
                  ori          a4, a2, 1795
                  auipc        t1, 727060
                  ori          t5, s9, -1016
                  sltiu        s0, a6, 1445
                  beq          t2, s9, 378f
                  sll          s6, s4, t4
366:              lui          s4, 583848
                  nop
368:              bge          a4, s8, 370f
                  bge          t0, t3, 382f
370:              xori         a1, t1, 276
371:              sll          t2, t2, t2
                  xori         t1, t3, -392
                  auipc        a4, 627724
                  bne          gp, s11, 394f
                  lui          a1, 1020111
                  srli         sp, a6, 8
                  bge          s7, t3, 389f
378:              bne          t5, sp, 383f
                  srai         ra, zero, 11
                  or           s4, s8, t4
                  auipc        s2, 288256
382:              srai         s10, s2, 7
383:              addi         a3, s6, 1306
                  sub          s7, s7, ra
                  slti         a3, a1, 914
                  beq          t4, t5, 389f
                  srl          a2, t1, t4
                  slt          s5, a1, s8
389:              sltiu        s10, s7, 1751
                  beq          a2, a0, 403f
                  sltu         s9, s5, sp
                  lui          s5, 991289
                  srl          a7, t1, s5
394:              bgeu         gp, s10, 397f
                  ori          a2, s5, -272
                  blt          sp, s0, 410f
397:              slti         s6, s10, -1765
                  sll          t2, a4, s9
                  srai         t2, ra, 7
                  blt          sp, tp, 401f
401:              srai         a3, t2, 7
                  xor          t1, s6, s9
403:              auipc        s3, 999922
                  bne          t5, s11, 406f
                  sll          t3, s11, tp
406:              nop
                  xori         ra, t5, -2001
                  auipc        t6, 247680
                  add          a1, a3, t2
410:              slt          s9, s1, s4
                  sll          a1, s2, t2
                  or           ra, s6, a1
                  auipc        sp, 310758
                  blt          s5, a0, 417f
                  sltu         gp, zero, s3
                  slli         a0, sp, 30
417:              bgeu         s0, s1, 420f
                  xori         a1, a1, -37
                  srl          s1, t4, t3
420:              xor          ra, s8, a6
                  addi         a6, gp, 1202
                  xori         s5, ra, -771
                  or           s8, s7, s7
                  auipc        s9, 266424
                  bltu         a5, a3, 437f
                  sltu         s11, t5, a6
                  sub          s7, s11, s7
                  sra          gp, a4, s3
                  slli         a7, t6, 13
                  sub          s2, a3, a4
                  slti         a0, t2, 688
                  andi         a4, a0, 1233
                  blt          t0, s5, 452f
                  sltu         s10, s1, zero
                  sra          s4, a3, zero
                  blt          s10, t3, 450f
437:              blt          sp, s10, 442f
                  srai         s10, s2, 23
                  sltu         s10, zero, s8
                  ori          t6, s11, -1267
                  srli         t0, t1, 13
442:              lui          a7, 51563
                  lui          a1, 713222
                  bltu         s0, s10, 456f
                  bgeu         t2, s2, 463f
                  auipc        gp, 824490
                  slti         s4, s1, 900
                  beq          t1, s9, 455f
                  bne          a3, s11, 468f
450:              beq          a7, a2, 467f
                  bne          t2, t2, 461f
452:              bltu         a3, t5, 457f
                  srl          a1, s7, tp
                  slt          a3, t6, s4
455:              or           s10, a2, s7
456:              and          s0, a2, t1
457:              lui          a7, 852512
                  xori         ra, gp, -450
                  bge          gp, a0, 479f
                  slti         sp, a0, -564
461:              sub          a1, s1, a1
                  addi         s8, s1, -1495
463:              sltiu        s9, s6, 1844
                  blt          ra, t0, 467f
                  sub          a3, s1, ra
                  bgeu         a3, t4, 481f
467:              srl          s4, t2, t2
468:              andi         zero, a4, 1660
                  and          a6, s6, t1
                  sub          s9, s2, t6
                  slt          a6, zero, a2
                  beq          a4, a1, 488f
                  bne          s7, s9, 488f
                  bltu         a2, s6, 480f
                  srl          t3, t5, a2
                  slti         s6, t3, -196
                  slti         s11, a3, -1977
                  bne          s1, a3, 493f
479:              ori          ra, s9, 1482
480:              slli         s11, sp, 6
481:              xori         gp, t6, -2018
                  slt          s3, a3, a6
                  xori         s7, t3, 134
                  sltiu        t6, t0, -1726
                  beq          t0, s0, 498f
                  bgeu         t1, a0, 500f
                  srli         t5, s9, 16
488:              bgeu         t6, a2, 491f
                  and          s7, a2, a6
                  srl          a7, tp, sp
491:              bge          s6, a2, 508f
                  slti         s2, s5, 1316
493:              sll          t5, s10, ra
                  sra          s6, sp, s11
                  sub          s7, a3, s1
                  add          s3, s10, gp
                  sra          a0, t5, t0
498:              xori         s5, s4, 434
                  beq          t1, gp, 513f
500:              sra          zero, zero, t4
                  beq          a4, s10, 507f
                  sltiu        a2, a7, 978
                  xor          s5, a5, tp
                  sltiu        a4, s2, 1892
                  and          a3, s0, s0
                  auipc        a4, 719541
507:              bge          s2, s8, 510f
508:              sltu         t5, t0, a7
                  add          s11, a2, sp
510:              bge          s2, t1, 512f
                  andi         sp, s1, 1461
512:              slli         s9, ra, 22
513:              bne          a2, s4, 516f
                  sll          s9, s11, t2
                  slli         s2, t6, 13
516:              sltiu        s7, t2, 923
                  blt          a6, t3, 518f
518:              add          t1, t1, a0
                  srli         gp, zero, 18
                  nop
                  auipc        s2, 746096
                  ori          s0, a7, -1873
                  bltu         a5, s7, 535f
                  slti         ra, s5, -532
                  sll          a3, a6, t5
                  andi         a0, t4, 709
                  slti         t2, t2, 575
                  beq          a1, s6, 533f
                  sltu         t6, t5, s6
                  nop
                  bltu         a1, t0, 544f
                  or           s9, s3, s5
533:              ori          a4, s6, -483
                  bne          s3, a5, 544f
535:              sll          s3, t6, a4
                  xor          s10, t5, s10
                  add          ra, s5, s0
                  bge          s6, a2, 544f
                  srli         ra, a1, 16
                  srli         a3, a6, 1
                  sltu         a4, a1, t4
                  blt          a4, zero, 544f
                  slli         s3, t2, 21
544:              slti         s9, a4, -51
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            bge          a1, a3, sub_8_stack_p
                  srl          t2, s2, a3
sub_8_stack_p:    addi         t4, t4, -28
                  sltiu        s7, t0, 1927
                  sub          s11, a3, s2
                  nop
                  sw           s0, 4(t4)
                  sltiu        s4, s7, 1562
                  addi         s6, a5, 1581
                  sltu         t6, s4, a4
                  slti         s2, zero, 477
                  srl          s11, s5, tp
                  sll          t5, s2, s0
                  la           s10, sub_9
                  sltiu        s2, a4, 1852
                  ori          s9, s2, 1576
                  sra          s8, t5, sp
                  slti         gp, a4, -1935
                  addi         s10, s10, -660
                  blt          s0, s2, sub_8_j13 #branch to jump instr
                  nop
sub_8_j13:        jalr         s0, s10, 660 #jump sub_8 -> sub_9
                  lui          s8, 156164
                  andi         a4, s6, 1895
                  bltu         gp, a0, 20f
                  sra          a6, a5, s6
                  srai         gp, a2, 26
                  slli         gp, s9, 14
                  bgeu         s2, t1, 26f
                  bge          s10, a3, 19f
                  or           s3, sp, a1
                  bgeu         s8, t2, 21f
                  and          gp, gp, a6
                  sltiu        s4, t1, -590
                  slti         a6, s3, 439
                  bge          zero, a7, 28f
                  or           s10, a0, ra
                  bge          zero, s6, 28f
                  add          s8, s7, t4
                  nop
                  auipc        s7, 202674
19:               and          s0, a7, t3
20:               srai         a2, t0, 25
21:               andi         s2, t6, 744
                  blt          t1, gp, 28f
                  andi         zero, zero, -2048
                  lui          s3, 937074
                  bne          sp, s11, 28f
26:               sra          t6, t5, s7
                  or           t6, a4, a5
28:               add          t6, s3, gp
                  andi         a7, s0, -1031
                  lw           s0, 4(t4)
                  andi         s5, tp, 419
                  srli         a6, gp, 24
                  slti         s4, t0, -1118
                  addi         t4, t4, 28
                  ori          a0, ra, -1367
                  sltiu        sp, t1, 1487
59:               addi x5, x8, 0
59:               jalr x5, x5, 0
sub_3:            sra          a1, zero, t1
                  sra          t2, sp, s1
                  auipc        s2, 277367
                  addi         t4, t4, -36
                  add          ra, s6, a7
                  lui          sp, 227659
                  sub          a0, t6, t0
                  sw           s0, 4(t4)
                  auipc        a0, 351470
                  srli         s3, t0, 15
                  sra          s11, s3, gp
                  srai         s0, a5, 22
                  addi         a2, a7, 19
                  beq          gp, ra, sub_3_j7 #branch to jump instr
                  srli         t0, s7, 30
                  sra          a6, sp, a4
                  sltu         s5, a6, a3
sub_3_j7:         jal          s0, sub_5 #jump sub_3 -> sub_5
                  la           t3, region_1+1880 #start riscv_load_store_rand_instr_stream_1
                  nop
                  lb           s5, -3(t3)
                  lbu          sp, 16(t3)
                  lb           gp, 6(t3)
                  andi         sp, t1, -3
                  srli         a2, a5, 16
                  slt          ra, s5, ra
                  addi         s0, s8, 1609
                  slli         a1, s2, 11
                  sb           t4, -11(t3)
                  lb           s8, -3(t3)
                  srli         s1, a7, 23
                  lhu          s2, 2(t3)
                  lui          s7, 402864
                  xor          s4, ra, sp
                  lhu          t5, -6(t3)
                  or           s9, t1, t6
                  srl          a4, sp, ra
                  slli         s7, ra, 31
                  sll          t6, s7, s2
                  lh           a1, -16(t3)
                  xor          a0, t6, s9
                  lui          a3, 12095
                  lh           s10, 6(t3)
                  sb           a7, 6(t3)
                  sltiu        t5, s0, -1931
                  xori         t1, s10, -1790
                  lb           a0, -13(t3)
                  auipc        s2, 622331
                  addi         a6, a6, 1124
                  lh           a6, 16(t3)
                  slti         s3, t4, 912
                  lb           s6, -3(t3)
                  nop
                  lhu          s5, 16(t3)
                  sw           s9, 8(t3)
                  or           ra, t2, s4
                  sb           gp, 15(t3)
                  srl          s2, s3, gp
                  sltiu        s10, t4, 565
                  lbu          s1, 0(t3)
                  srl          t2, s9, a1
                  add          t0, s0, a7
                  sb           t3, -5(t3)
                  lh           sp, -2(t3) #end riscv_load_store_rand_instr_stream_1
                  la           a4, region_0+454 #start riscv_load_store_rand_instr_stream_0
                  sb           gp, 49(a4)
                  sw           t4, 30(a4)
                  auipc        s5, 978041
                  srli         t2, a4, 7
                  lb           s1, 35(a4)
                  srli         zero, s4, 21
                  andi         sp, a0, 1997
                  sb           s10, -29(a4)
                  lb           t6, 33(a4)
                  lbu          s0, 17(a4)
                  sra          s0, sp, gp
                  add          a1, s6, t2
                  lb           s0, 12(a4)
                  lb           a0, 33(a4)
                  lh           sp, 62(a4)
                  sh           ra, -58(a4)
                  or           s3, a7, t6
                  sb           a4, 7(a4)
                  add          s6, t4, s3
                  lb           t2, -63(a4)
                  sb           a1, 57(a4)
                  sb           s4, 23(a4)
                  sb           a6, -41(a4)
                  sll          a0, t6, s10
                  lbu          t5, -57(a4)
                  lhu          s2, 44(a4)
                  lb           s10, -37(a4)
                  lbu          s7, 59(a4)
                  lw           zero, -26(a4)
                  sb           sp, 64(a4)
                  slt          s3, tp, s10
                  lbu          s7, -34(a4)
                  sh           t2, 24(a4)
                  and          zero, t3, s9
                  xor          s5, a7, s8
                  lb           a6, -37(a4)
                  lbu          s11, 45(a4)
                  lb           a1, 27(a4)
                  and          s2, s9, a2
                  addi         s0, t0, 1085
                  sltiu        gp, t4, 1287
                  lh           a1, -58(a4)
                  sb           t2, -1(a4)
                  lbu          s8, 4(a4) #end riscv_load_store_rand_instr_stream_0
                  srli         s2, a3, 14
                  addi         t3, s4, 1290
                  sra          t6, s1, tp
                  xori         s2, s3, -1035
                  sll          s3, gp, tp
                  xori         s5, a4, 1919
                  xori         a1, s11, -1232
                  bgeu         s7, gp, 20f
                  bgeu         tp, t1, 18f
                  sll          s8, gp, t1
                  sra          zero, zero, sp
                  addi         t0, zero, -1669
                  bne          zero, s7, 14f
                  slti         s8, s0, -682
14:               lui          s9, 35728
                  lui          t6, 371892
                  add          s3, s3, tp
                  xori         s5, t0, 233
18:               blt          t1, a2, 31f
                  and          s2, sp, t0
20:               xori         t1, a7, -588
                  bne          ra, a2, 32f
                  addi         ra, a5, -1055
                  sub          s3, s0, s9
                  bge          s10, s3, 40f
                  sltu         a3, s10, t0
                  and          t3, a3, a5
                  bge          t4, gp, 39f
                  ori          a3, s3, -187
                  and          t3, s1, s4
                  blt          t4, s5, 34f
31:               srai         a4, sp, 12
32:               srl          s0, s6, a1
                  auipc        s11, 513177
34:               xor          s3, a7, a5
                  slli         s10, s8, 19
                  lui          a0, 661247
                  slt          a0, s8, t6
                  slt          s6, a1, a2
39:               addi         t2, a3, 461
40:               ori          a4, a5, -1398
                  andi         ra, ra, 1658
                  addi         s10, s9, 961
                  bne          s0, s5, 44f
44:               slli         s0, s11, 28
                  bge          gp, s2, 62f
                  or           s6, s8, s1
                  or           a2, s7, s9
                  srli         s1, t3, 17
                  addi         s10, s10, 1745
                  bgeu         gp, s1, 53f
                  beq          s1, a3, 57f
                  blt          t5, zero, 57f
53:               sra          gp, a1, s10
                  bltu         s5, s10, 70f
                  srl          sp, a1, s5
                  andi         a1, a2, 725
57:               sltiu        t5, t1, -340
                  slti         s5, t2, -951
                  addi         sp, s3, -795
                  ori          t0, gp, 1799
                  bne          gp, a5, 67f
62:               and          s2, a4, a6
                  sub          s7, s11, a1
                  and          a4, t3, t4
                  sll          a0, s2, t4
                  sltiu        a3, a4, -297
67:               bne          a4, s8, 74f
                  bltu         a7, ra, 87f
                  sll          zero, s6, a3
70:               bge          s3, a6, 79f
                  beq          s8, s2, 74f
                  lui          a4, 563900
                  andi         a1, a3, -76
74:               nop
                  add          t3, gp, t0
                  bltu         s2, a5, 91f
                  blt          s10, a2, 93f
                  slti         s6, t0, 274
79:               bgeu         t1, sp, 90f
                  add          t6, a4, s1
                  sltu         s0, s1, a3
                  bge          s11, a1, 95f
                  srli         t5, sp, 22
                  bgeu         t1, s1, 99f
                  beq          a3, a7, 95f
                  xori         s2, s8, -272
87:               slli         a4, s0, 18
                  bne          s0, ra, 94f
                  srai         zero, ra, 25
90:               andi         s1, s1, -1908
91:               srli         t2, a1, 17
                  lui          a0, 588156
93:               slli         s8, s4, 3
94:               blt          s6, t3, 106f
95:               sub          a1, s11, s9
                  blt          s3, s10, 107f
                  or           s8, a6, t2
                  or           s1, gp, s5
99:               sub          s8, t5, s8
                  xor          a1, tp, sp
                  ori          zero, s10, 1
                  srli         s8, zero, 0
                  bge          a0, s9, 108f
                  bge          ra, a7, 116f
                  nop
106:              xor          s6, a4, s4
107:              sltiu        s5, t3, 1515
108:              nop
                  srl          s3, s7, s8
                  addi         s2, s5, 525
                  bge          s2, t2, 114f
                  bgeu         t0, s11, 129f
                  sltiu        t1, a1, -484
114:              slti         a4, zero, -324
                  add          a4, ra, s11
116:              sltu         s7, sp, s8
                  lui          a1, 581576
                  nop
                  addi         s4, a0, -1003
                  addi         s7, a7, 279
                  add          s6, a3, a2
                  bltu         s6, t5, 128f
                  blt          a4, t2, 129f
                  bgeu         s5, s1, 134f
                  xori         t0, t4, 1028
                  sll          s6, t0, s10
                  xor          s3, s4, t6
128:              slt          zero, a6, a4
129:              sub          a2, sp, t4
                  srl          ra, a6, a4
                  srai         s3, a0, 25
                  sltiu        t3, t1, -607
                  xori         t1, tp, -1942
134:              and          a4, a2, t1
                  and          t6, t1, a0
                  auipc        t1, 748599
                  bge          s2, ra, 148f
                  and          s10, s4, s9
                  sltu         s5, a3, a1
                  srl          s9, s7, s9
                  srl          s1, t3, tp
                  sltu         s2, a1, s5
                  sltu         s2, a5, s2
                  sltu         s4, t6, t5
                  slt          s0, t3, a2
                  and          s0, s7, a7
                  sltiu        s2, a6, -534
148:              ori          t3, ra, -1572
                  lui          s4, 233039
                  xor          zero, s5, ra
                  blt          s4, s4, 162f
                  lui          t5, 109529
                  lui          zero, 190072
                  bgeu         s4, a1, 155f
155:              sltu         s9, s5, s8
                  slt          s0, s0, s2
                  beq          tp, a7, 163f
                  andi         a3, t3, -931
                  slti         s6, t2, -1464
                  addi         a7, tp, -1466
                  xor          s1, a1, gp
162:              ori          ra, s0, -1857
163:              xori         s8, a3, -1027
                  nop
                  or           a7, a0, tp
                  bgeu         t0, a0, 182f
                  bltu         a7, a2, 183f
                  sltiu        s10, t2, -401
                  or           a0, s9, s5
                  sub          s3, gp, s9
                  sltu         ra, t1, s4
                  add          a2, gp, s8
                  xor          s2, a3, tp
                  slti         t3, a7, 864
                  beq          tp, a1, 177f
                  beq          a0, a0, 181f
177:              add          t6, s11, sp
                  add          s7, t0, a2
                  sra          s2, s5, t2
                  xori         a1, a5, 119
181:              or           a6, a2, t1
182:              blt          t0, t3, 191f
183:              srai         s7, sp, 28
                  blt          s11, s5, 188f
                  ori          t3, t3, 430
                  slli         s11, a0, 18
                  auipc        s0, 723992
188:              slli         t6, s11, 13
                  sll          zero, s8, s4
                  and          s2, a1, t4
191:              addi         s10, a4, 1447
                  slti         s2, tp, 508
                  bgeu         s6, a3, 205f
                  sltiu        gp, t1, 2036
                  blt          t4, s5, 202f
                  bge          a4, a7, 206f
                  auipc        a1, 988234
                  xori         t6, t3, -415
                  or           a4, s1, t3
                  bgeu         t2, s7, 203f
                  slli         s8, s2, 22
202:              and          gp, t6, s6
203:              lui          s9, 451100
                  bne          t1, a2, 219f
205:              srli         s8, s9, 17
206:              add          a6, t2, s2
                  srai         t2, s5, 4
                  sltu         t5, tp, s1
                  sltu         a0, s8, sp
                  bgeu         t1, s7, 223f
                  sll          a0, a1, s10
                  sub          zero, t6, s6
                  and          a1, a3, a4
                  auipc        a3, 411199
                  addi         s0, ra, -405
                  srai         s10, t6, 20
                  add          t2, s8, a5
                  slti         gp, t5, 430
219:              srli         s1, s8, 27
                  srai         t6, s5, 6
                  xor          a7, s9, t2
                  bge          zero, s4, 235f
223:              sra          a1, a4, zero
                  blt          a3, s7, 243f
                  beq          s1, s5, 238f
                  and          s2, t3, ra
                  addi         s2, a7, -1580
                  blt          a5, s2, 244f
                  srli         a6, s9, 8
                  sltiu        s9, s1, 1092
                  or           s3, s11, sp
                  sltu         s5, a5, s1
                  bne          tp, s7, 245f
                  addi         sp, s8, 1341
235:              sll          zero, s10, s3
                  andi         a2, s2, -182
                  lui          zero, 309194
238:              bge          a6, t5, 249f
                  beq          s2, sp, 251f
                  slti         a6, a0, 1486
                  add          a3, s0, a7
                  sltiu        a1, t6, 1285
243:              slti         sp, t3, -1272
244:              slli         s7, s10, 8
245:              xor          a3, s1, sp
                  xori         s5, s8, 270
                  srl          s4, t1, s0
                  slli         t0, sp, 18
                  sra          t5, t4, a0
                  lui          zero, 825277
                  sltiu        a1, t5, -450
                  sltiu        s0, a5, -810
                  sll          a2, s6, s9
                  sltu         s5, s3, a4
sub_3_j8:         jal          s0, sub_5 #jump sub_3 -> sub_5
249:              slt          a4, s5, a1
                  bne          a6, gp, 255f
251:              xori         s10, s0, -269
                  srl          s4, s11, a7
                  bne          a1, t2, 268f
                  slti         s8, ra, 1077
255:              sub          s4, t5, ra
                  srai         t3, ra, 23
                  srai         s11, s11, 21
                  ori          gp, s10, -1380
                  lui          t1, 64119
                  slti         t3, s5, -1845
                  sra          t2, s2, s5
                  srl          t3, s0, s7
                  bge          s9, ra, 266f
                  lui          t6, 978292
                  sra          a2, t0, tp
266:              ori          a7, t1, 1819
                  slt          t0, s1, s7
268:              xori         t2, s1, 418
                  sra          s2, s5, s9
                  beq          s4, t5, 275f
                  sll          t6, t3, a1
                  addi         s8, s5, 1520
                  srl          s4, t3, s0
                  beq          sp, s10, 288f
275:              add          s0, t1, t2
                  sub          a1, a3, a5
                  bltu         s8, t5, 288f
                  auipc        s2, 710687
                  slt          s5, ra, s3
                  sltu         s7, s9, t3
                  bne          a4, t3, 287f
                  sub          s5, s2, zero
                  beq          a3, s5, 287f
                  or           a4, zero, t5
                  bge          s6, a6, 288f
                  blt          zero, s1, 288f
287:              sltu         a1, s6, s0
288:              sll          s11, a4, a6
                  lw           s0, 4(t4)
                  addi         t4, t4, 36
                  sub          t5, s6, t4
                  addi         a3, t6, -340
                  slti         t0, s5, 1801
410:              addi x18, x8, 1
410:              jalr x18, x18, 0
sub_9:            addi         t4, t4, -24
                  andi         s1, a5, -129
                  srli         s2, s5, 13
                  slti         t0, t3, -1430
                  slli         s3, a3, 15
                  sw           s0, 4(t4)
                  andi         s1, t3, 1518
                  sltu         s11, tp, s5
                  xori         gp, a3, 1749
                  slti         sp, ra, 677
                  nop
                  sub          s4, gp, t5
                  and          a6, s4, t4
                  sub          a4, gp, s5
                  addi         a6, a0, 628
                  bgeu         s2, s2, sub_9_j14 #branch to jump instr
                  srli         s1, s0, 8
                  addi         sp, sp, -1023
                  sub          s0, a1, a2
                  slti         a1, a0, -1338
                  and          s0, s4, s3
                  xor          t6, gp, s1
sub_9_j14:        jal          s0, sub_10 #jump sub_9 -> sub_10
                  sltu         s6, s6, zero
                  or           s7, t1, s10
                  srl          s8, s0, a4
                  addi         gp, a5, 93
                  and          t5, ra, s0
                  beq          tp, gp, 16f
                  addi         s2, s8, -1943
                  slti         a3, zero, -804
                  xor          ra, t6, s10
                  and          s10, sp, t6
                  auipc        a4, 225468
                  andi         a2, sp, 727
                  sub          s10, a3, gp
                  ori          s4, t3, -1154
                  srl          ra, s4, a5
                  beq          t6, s0, 26f
16:               lui          s1, 998077
                  bgeu         t6, s6, 29f
                  bltu         t0, s1, 27f
                  or           s11, a2, t1
                  sub          s6, tp, t6
                  bne          ra, t5, 26f
                  bltu         a3, t2, 29f
                  lui          sp, 817335
                  and          zero, a0, s4
                  xori         s0, a4, 870
26:               blt          t0, a2, 29f
27:               sll          t0, s11, s4
                  addi         s7, t5, -1967
29:               sra          s11, t3, s9
                  add          zero, t1, s11
                  lw           s0, 4(t4)
                  srl          s11, t2, gp
                  slli         a6, ra, 5
                  addi         t4, t4, 24
                  srl          zero, zero, s9
                  slti         t1, t4, 240
                  auipc        s1, 192005
                  xor          sp, a6, a4
                  sub          s6, t2, s10
63:               addi x26, x8, 1
63:               jalr x26, x26, 0
sub_2:            beq          s7, s6, sub_2_stack_p
                  lui          a1, 144790
                  xor          gp, s8, s5
                  nop
                  srli         s9, a3, 29
                  sra          a7, s9, sp
                  addi         a0, t4, -202
                  slti         s8, s9, 2014
sub_2_stack_p:    addi         t4, t4, -60
                  ori          t5, s5, 408
                  sw           s0, 4(t4)
                  xori         s4, gp, -1271
                  andi         a2, t0, 253
                  slli         a1, a7, 17
                  slt          zero, t4, t6
                  srli         s8, t6, 27
                  bgeu         a0, a1, 8f
                  andi         a1, t3, 1142
                  sltiu        t2, a3, 1198
                  slti         zero, s5, -800
8:                bgeu         t0, t1, 19f
                  beq          a1, a5, 16f
                  auipc        s1, 219584
                  lui          a3, 493108
                  bge          s4, s10, 13f
13:               sltiu        a6, t5, -161
                  blt          a7, s0, 19f
                  sltiu        s7, gp, -1065
16:               or           s2, s1, t4
                  srai         sp, tp, 21
                  bltu         s4, s5, 33f
19:               sra          t0, a2, t4
                  nop
                  andi         t1, s9, -1109
                  bltu         a6, tp, 39f
                  sltiu        t6, sp, -432
                  andi         s2, a6, 2031
                  or           zero, s8, gp
                  bgeu         t1, tp, 46f
                  sll          a7, s2, s4
                  sub          t3, s9, a3
                  blt          s8, sp, 33f
                  lui          s3, 795130
                  add          t2, t2, t0
                  slli         s7, a4, 11
33:               sub          a7, s5, s8
                  bge          a0, s11, 45f
                  sub          s10, ra, s4
                  slti         t0, t1, -965
                  bgeu         a6, s7, 43f
                  beq          a2, s7, 42f
39:               bgeu         t0, gp, 46f
                  xor          a3, a1, s1
                  sub          ra, a4, s6
42:               andi         s10, a6, 427
43:               xor          s2, a4, s4
                  blt          s11, s4, 60f
45:               sltu         s7, s11, a7
46:               auipc        t3, 875984
                  sll          a3, zero, s7
                  sra          s5, a7, s9
                  sltiu        s3, s0, -1095
                  srl          t2, s7, a3
                  slt          s7, s6, a3
                  or           t5, s8, gp
                  sll          a7, s1, ra
                  sub          s9, t3, t1
                  auipc        s11, 231483
                  srl          t5, s8, a2
                  sub          t3, t6, t5
                  bltu         a2, a7, 74f
                  ori          a0, s5, -1892
60:               sll          s9, t0, s11
                  bgeu         s11, s7, 78f
                  beq          tp, s0, 73f
                  sra          s10, a3, s4
                  blt          t2, a5, 73f
                  bne          s1, ra, 66f
66:               ori          s11, gp, -1695
                  xor          a4, ra, zero
                  sub          t0, a4, s2
                  addi         s7, sp, 2045
                  addi         t0, s6, -1172
                  auipc        t0, 914122
                  blt          sp, sp, 73f
73:               sltiu        s0, a1, -1609
74:               blt          zero, s0, 76f
                  srli         s7, s7, 30
76:               slti         s6, s10, -1151
                  slli         t3, ra, 23
78:               slt          s3, sp, zero
                  slti         t2, s6, 1616
                  addi         s11, t5, -1918
                  bgeu         s0, t3, 90f
                  sub          s4, a0, s6
                  auipc        t0, 385155
                  addi         s10, a5, -386
                  auipc        s4, 27642
                  nop
                  slli         s11, s4, 24
                  auipc        s7, 336697
                  xor          s0, s10, t3
90:               sra          s3, t5, a4
                  xor          s3, a6, ra
                  sltiu        a3, t5, 1708
                  addi         t2, t3, 1087
                  lui          zero, 97172
                  sltiu        s5, sp, 674
                  slt          a0, t3, ra
                  slli         s5, a3, 9
                  sub          sp, s4, a0
                  srai         s6, s6, 19
                  blt          a7, s5, 110f
                  bltu         t5, ra, 102f
102:              xori         t1, t6, -505
                  addi         t0, a2, 1495
                  srl          s0, s7, s3
                  srai         t3, a6, 5
                  bge          a6, t0, 126f
                  bne          s8, gp, 111f
                  bne          a5, s4, 126f
                  bge          a3, s9, 125f
110:              ori          gp, t1, 75
111:              slt          s0, t2, a1
                  ori          a6, t0, -1993
                  sra          s3, s1, s11
                  srai         gp, a0, 12
                  sub          s5, s10, a0
                  slli         a2, a5, 13
                  lui          s8, 28815
                  slli         zero, ra, 11
                  srai         t6, s9, 15
                  ori          gp, a1, 995
                  nop
                  bne          gp, gp, 123f
123:              andi         s0, s10, -402
                  bltu         sp, t3, 137f
125:              lui          s4, 630697
126:              sltiu        s4, s9, 1150
                  beq          t6, s4, 136f
                  la           sp, region_0+1785 #start riscv_load_store_rand_instr_stream_0
                  lhu          a6, -1529(sp)
                  srl          a1, a2, s7
                  andi         s7, zero, -1160
                  lb           a1, -546(sp)
                  slti         t6, a5, -1030
                  ori          a4, s5, 366
                  sub          a3, s7, gp
                  sb           s0, -80(sp)
                  andi         ra, a7, -1580
                  xor          s9, t0, s6
                  sltu         t1, s7, a0
                  sh           ra, -817(sp)
                  or           a6, gp, s6
                  addi         a7, s9, 1263
                  sltu         a3, a3, a0
                  andi         a6, t3, -199
                  sra          a1, a2, gp
                  sra          a1, s11, t5
                  lb           s10, -277(sp)
                  sltiu        t5, s7, 292
                  sw           s8, -1773(sp)
                  lb           s0, -1254(sp)
                  sll          a2, s2, a5
                  lhu          a2, -1063(sp)
                  slli         t0, s7, 19
                  slti         t1, t6, 687
                  lbu          s5, -4(sp)
                  nop
                  auipc        a0, 666819
                  slli         t6, gp, 5
                  lb           s7, -468(sp)
                  lbu          s5, -1470(sp)
                  sltiu        s9, gp, 1468
                  or           s6, gp, s2
                  auipc        s3, 794544
                  andi         s0, t5, -141
                  sll          s10, t6, s5
                  slti         a2, s10, -1664
                  ori          s8, t2, -666
                  lw           s0, 203(sp)
                  andi         t6, gp, 1331
                  lb           a0, -1018(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          gp, a0, 137f
                  andi         zero, a0, -907
                  nop
                  bgeu         gp, a5, 136f
                  bgeu         s3, tp, 138f
                  blt          t3, s6, 151f
                  xori         t5, zero, -238
                  bltu         s7, s6, 146f
136:              xor          a3, t3, s3
137:              bne          a4, tp, 152f
138:              slti         a2, a7, 400
                  xor          s2, s3, s9
                  bne          t3, a0, 144f
                  slti         zero, s7, -1310
                  blt          s10, sp, 143f
143:              andi         a2, s11, -997
144:              slli         t0, s11, 6
                  blt          a0, s7, 146f
146:              lui          a7, 781711
                  sltu         t2, a6, tp
                  add          s8, gp, t4
                  bltu         s0, sp, 152f
                  sll          a3, t4, s6
151:              beq          s6, t4, 152f
152:              andi         t2, t5, -1873
                  add          t6, sp, a0
                  lui          t0, 641964
                  lw           s0, 4(t4)
                  srli         t6, s3, 21
                  sll          t6, gp, a0
                  sra          s7, a6, s6
                  addi         t4, t4, 60
                  sra          a7, s0, s11
                  or           a4, gp, s7
217:              addi x6, x8, 1
217:              jalr x6, x6, 0
sub_1:            xori         s4, a5, 907
                  srli         t3, a5, 25
                  auipc        a1, 605921
                  beq          s10, sp, sub_1_stack_p
                  auipc        a7, 904371
                  xori         t3, s5, 1243
sub_1_stack_p:    addi         t4, t4, -12
                  sw           s0, 4(t4)
                  auipc        s4, 783175
                  sltiu        s8, s9, 782
                  la           s6, sub_2
                  sltu         s1, a1, s6
                  ori          sp, a6, 805
                  sltiu        t2, a3, -1568
                  srl          t0, s9, a1
                  addi         s6, s6, -828
                  slti         a2, s7, 1108
                  slt          s9, t4, sp
                  nop
sub_1_j3:         jalr         s0, s6, 829 #jump sub_1 -> sub_2
                  auipc        s8, 459519
                  la           s0, sub_4
                  sltu         s4, s4, s5
                  ori          s5, gp, 466
                  addi         s0, s0, 645
                  sltu         a2, s6, t2
                  sra          s3, s8, a7
sub_1_j4:         jalr         s0, s0, -645 #jump sub_1 -> sub_4
                  xor          t3, s1, a5
                  sltu         s10, sp, s2
                  or           t0, s4, a6
                  ori          ra, a1, 1706
                  ori          a6, s3, 1798
sub_1_j5:         jal          s0, sub_3 #jump sub_1 -> sub_3
                  sltiu        s2, a3, -668
                  nop
                  la           s5, sub_2
                  or           s2, tp, a0
                  addi         s5, s5, 348
                  bltu         a4, zero, sub_1_j6 #branch to jump instr
                  slli         t0, t3, 16
                  addi         a2, s10, -705
                  srl          s10, a1, s11
sub_1_j6:         jalr         s0, s5, -347 #jump sub_1 -> sub_2
                  and          s4, a2, ra
                  add          ra, s8, s5
                  and          t6, s6, a3
                  sll          t6, t1, gp
                  or           s9, s6, a0
                  and          s7, t5, s2
                  sra          s6, s5, s4
                  xor          s5, s0, a0
                  sltu         a1, t2, s4
                  and          t6, gp, s1
                  lw           s0, 4(t4)
                  sra          t1, t1, tp
                  srai         s2, a5, 31
                  and          t6, zero, ra
                  addi         t4, t4, 12
                  sra          t0, a7, s0
                  slti         s11, s8, -545
61:               addi x27, x8, 0
61:               jalr x27, x27, 0
sub_10:           bgeu         ra, a3, sub_10_stack_p
                  srli         s3, s5, 13
sub_10_stack_p:   addi         t4, t4, -20
                  srl          s4, t1, a4
                  sw           s0, 4(t4)
                  addi         s8, s1, -1187
                  la           sp, region_0+467 #start riscv_load_store_rand_instr_stream_6
                  sltiu        a4, s9, -1684
                  srli         a3, zero, 25
                  lbu          a2, -2(sp)
                  srl          t5, sp, a4
                  lb           zero, 2(sp)
                  lbu          t1, 0(sp)
                  sb           t3, 4(sp)
                  slt          a1, a2, s6
                  lb           s4, 8(sp)
                  lbu          t1, 7(sp)
                  sb           s0, -16(sp)
                  slli         zero, zero, 7
                  lh           s10, -5(sp)
                  lb           a4, -16(sp)
                  sb           s4, -6(sp)
                  srl          t5, t0, a7
                  ori          s9, t4, -335
                  ori          s2, a4, 1292
                  lhu          s1, 11(sp)
                  lb           s4, -14(sp)
                  sb           a4, -14(sp)
                  lbu          a0, -11(sp)
                  auipc        t0, 753230
                  lbu          a2, 6(sp)
                  sub          t6, s7, s1
                  lw           s2, 5(sp)
                  andi         s7, a0, -1441
                  xor          t0, a3, s3
                  srai         a0, a4, 12
                  sb           a4, 10(sp)
                  slt          t5, t3, s4
                  lh           t2, 11(sp)
                  lh           s7, -1(sp)
                  sb           s5, 16(sp)
                  lbu          s3, -6(sp)
                  lw           a4, 1(sp)
                  lb           gp, 15(sp)
                  lui          a0, 897780
                  lb           gp, -2(sp)
                  slti         t0, t1, -2022
                  srli         t6, a2, 28
                  sub          ra, s9, sp
                  sll          s11, t0, a7
                  xor          a2, a5, t6
                  lh           s0, -5(sp)
                  lbu          a6, 15(sp)
                  add          s5, s0, s4
                  slti         a0, t0, -671
                  add          s2, sp, t4
                  lb           t6, 12(sp)
                  sub          a4, a3, s5
                  sw           a1, 5(sp) #end riscv_load_store_rand_instr_stream_6
                  la           a1, region_1+716 #start riscv_load_store_rand_instr_stream_5
                  sra          s2, tp, t1
                  lbu          s3, 44(a1)
                  lbu          s6, 213(a1)
                  lb           t5, -219(a1)
                  lb           ra, -229(a1)
                  srli         s7, a6, 1
                  sh           s2, 74(a1)
                  lbu          a6, -241(a1)
                  sub          s0, a5, s8
                  lb           a6, 189(a1)
                  sra          gp, s3, a0
                  lb           s5, 123(a1)
                  slli         s5, s4, 10
                  sub          t1, s5, a0
                  addi         t1, a0, -1588
                  lbu          zero, -202(a1)
                  sb           s7, -165(a1)
                  sb           s6, 70(a1)
                  xor          sp, t4, a1
                  slti         ra, s2, -184
                  xor          s3, ra, s11
                  sh           a4, -246(a1)
                  sb           s1, 113(a1)
                  lbu          t2, 17(a1)
                  lbu          s0, -219(a1) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+211 #start riscv_load_store_rand_instr_stream_0
                  sb           s4, -1(sp)
                  lui          t0, 587731
                  xor          s2, a2, s1
                  lb           s3, -6(sp)
                  addi         s11, ra, 2042
                  lhu          s3, -11(sp)
                  ori          a7, ra, -1935
                  srai         a2, s5, 24
                  sb           t6, -4(sp)
                  xori         a1, t5, -279
                  xori         t3, sp, 549
                  add          a6, s3, ra
                  sltu         zero, s10, gp
                  lh           a2, 3(sp)
                  lbu          s0, 2(sp)
                  lui          s6, 751392
                  lb           s9, -6(sp)
                  xori         t3, tp, -734
                  and          t5, s8, tp
                  sltu         t5, s9, s10
                  lb           s10, 16(sp)
                  auipc        s8, 829042
                  lb           s5, -6(sp)
                  sltu         a1, a1, tp
                  andi         s7, s9, 1411
                  lb           a6, -4(sp)
                  nop
                  srli         s0, a4, 9
                  xor          s5, t0, ra
                  lb           t1, 4(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s1, region_1+1782 #start riscv_load_store_rand_instr_stream_4
                  lb           a4, -1643(s1)
                  sra          s4, t2, s2
                  lbu          s11, -616(s1)
                  xor          t0, a6, a2
                  lb           s5, -986(s1)
                  sltu         t6, a0, ra
                  lbu          t6, -906(s1)
                  sltu         s11, s1, a7
                  lhu          s2, -1336(s1)
                  or           gp, t2, gp
                  auipc        zero, 899573
                  xori         a4, s10, 43
                  srli         s7, s3, 2
                  sub          a4, s2, a7
                  lb           s6, 132(s1)
                  sltu         a6, a1, a6
                  xor          s2, sp, s8
                  slti         s0, t0, 685
                  sll          a7, a2, s4
                  sb           t2, 105(s1)
                  andi         s8, t0, -845
                  lbu          gp, -401(s1)
                  xor          s8, sp, t5
                  lhu          t1, -1404(s1)
                  andi         a7, a4, -920
                  sb           t5, -500(s1)
                  sltiu        zero, s11, 260
                  lb           sp, 76(s1)
                  slt          t5, s4, s5
                  xor          s8, s2, zero
                  sub          s11, s8, t3
                  xor          t5, s2, a4
                  sltu         a6, tp, a6
                  sub          sp, s8, t4
                  lh           s10, -1532(s1)
                  sltu         a3, a5, s8
                  sh           a1, -1014(s1)
                  lbu          a6, -479(s1)
                  lb           s9, -1173(s1)
                  addi         sp, s1, -379
                  addi         a1, s4, 1669
                  lbu          a6, -1578(s1)
                  sub          a7, s7, s10
                  sb           s6, -1509(s1) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_1+595 #start riscv_load_store_rand_instr_stream_1
                  add          gp, s11, t0
                  sb           t5, 268(a1)
                  andi         s0, t1, 674
                  lb           a3, 262(a1)
                  srli         t1, s10, 5
                  or           s4, a3, s3
                  lhu          a0, 573(a1)
                  lui          zero, 552721
                  add          t6, t5, sp
                  lbu          a3, 450(a1)
                  xor          sp, ra, s3
                  lbu          ra, 211(a1)
                  sll          a4, t3, s6
                  lbu          s4, 202(a1)
                  sll          t5, s6, s3
                  sll          t3, t5, a5
                  srli         a6, s1, 17
                  sll          s6, s8, t0
                  lui          a4, 687896
                  add          ra, ra, s3
                  addi         t6, s11, -1597
                  xori         gp, s7, 440
                  srl          s2, a2, t5
                  lbu          t5, 1375(a1)
                  xor          a2, a7, zero
                  slti         s10, t5, -647
                  and          a2, gp, t0
                  sb           zero, 435(a1)
                  andi         a7, s4, -754
                  lh           t6, 861(a1)
                  slli         t3, s10, 12
                  xori         s1, a7, -1989
                  ori          a4, ra, 1746
                  lbu          t2, 978(a1)
                  sltu         s9, a1, zero
                  srl          gp, t6, s10
                  sltiu        s6, a3, -254
                  andi         s7, a4, -418
                  sb           t4, 65(a1) #end riscv_load_store_rand_instr_stream_1
                  srai         a7, s8, 4
                  sltu         a4, t4, t4
                  sub          a1, t3, sp
                  ori          a4, s1, 1231
                  sll          s6, s7, ra
                  xor          s6, s11, s10
                  addi         s1, s10, 1965
                  sltiu        s10, s4, 899
                  and          a0, s5, a6
                  xor          a6, t4, a6
                  bgeu         s10, gp, 13f
                  xor          a1, s0, zero
                  sub          a4, t6, s6
13:               addi         a6, s5, 558
                  srai         s7, s9, 18
                  and          t2, s10, zero
                  nop
                  srl          a1, s0, t0
                  nop
                  srli         t6, s7, 12
                  slli         s7, t3, 27
                  slt          s5, t0, s0
                  nop
                  ori          t2, sp, -1101
                  ori          t6, tp, 1513
                  slli         sp, t1, 12
                  auipc        a3, 50779
                  srai         zero, s7, 3
                  slti         zero, ra, 1234
                  beq          s0, sp, 46f
                  xori         s11, s2, -436
                  bne          t1, a6, 50f
                  sll          s7, ra, a0
                  sub          t6, tp, a1
                  slli         s11, sp, 16
                  lui          s8, 360740
                  srli         t2, a2, 11
                  beq          s6, s6, 57f
                  or           a4, a5, a5
                  sltiu        s5, t4, -1006
                  ori          s8, s1, -1353
                  bgeu         s9, gp, 43f
                  ori          t6, gp, 1619
43:               sll          s1, s9, s1
                  sub          t2, gp, t4
                  blt          s0, zero, 54f
46:               slt          ra, s3, t0
                  sll          a3, s10, ra
                  sltiu        s2, t2, 504
                  blt          t1, s10, 64f
50:               bge          a4, s1, 60f
                  srai         s11, s11, 16
                  or           a2, s8, sp
                  blt          a1, a1, 66f
54:               blt          a7, s6, 65f
                  srli         t5, t6, 15
                  srl          s11, t1, a4
57:               bne          a6, s2, 71f
                  ori          s10, t3, 362
                  bge          t2, s6, 73f
60:               add          a3, t4, tp
                  blt          t5, s6, 80f
                  sltiu        s0, s10, 675
                  bltu         s5, a7, 67f
64:               or           gp, s4, s7
65:               andi         ra, s6, -1991
66:               andi         s8, s4, 196
67:               slti         ra, t5, -1430
                  auipc        a6, 740159
                  lui          a0, 1019348
                  sub          sp, zero, a7
71:               bne          a1, s11, 80f
                  addi         t2, a6, 1498
73:               bgeu         zero, s1, 75f
                  slli         t6, s9, 14
75:               srli         a2, t4, 3
                  sltiu        a4, t6, 1125
                  andi         gp, zero, -1813
                  lui          sp, 698359
                  sll          s11, s10, s9
80:               srli         s7, tp, 6
                  xor          a4, sp, sp
                  bgeu         a5, s2, 93f
                  andi         a4, s4, -1846
                  sra          a0, s3, a6
                  srli         a0, s0, 19
                  beq          a7, s1, 87f
87:               or           s8, s1, t3
                  srai         s3, a2, 8
                  sub          s11, tp, t3
                  srl          s7, t1, s3
                  andi         t6, s2, -461
                  bge          s11, s5, 95f
93:               nop
                  xor          a4, gp, s0
95:               xor          s0, t4, t1
                  beq          a3, s5, 109f
                  ori          a3, t5, 1055
                  bgeu         t5, a6, 107f
                  nop
                  bltu         ra, zero, 107f
                  and          t1, tp, ra
                  sll          t5, s0, a5
                  srli         s7, a4, 26
                  or           sp, a2, ra
                  slli         s4, s3, 17
                  lui          t0, 545140
107:              sll          s2, tp, s7
                  and          ra, a4, s9
109:              srl          s7, sp, a2
                  nop
                  sltiu        a4, s0, 1176
                  sra          gp, a1, s1
                  sub          s10, t1, sp
                  sltu         a7, a3, tp
                  ori          s3, ra, -1216
                  slti         sp, zero, 1494
                  sltiu        s10, tp, -2034
                  srl          a7, s7, t0
                  slti         sp, s5, 1418
                  slti         s0, s6, -1840
                  sra          s8, s0, a1
                  slli         t1, a3, 10
                  addi         a7, s1, -365
                  add          zero, t1, s8
                  srli         a4, a2, 16
                  nop
                  srli         t5, s7, 5
                  and          t0, t2, t2
                  sll          s2, s9, s1
                  srai         t2, a6, 6
                  sltiu        a6, t1, 1790
                  bltu         a6, s8, 143f
                  bge          t0, a4, 139f
                  addi         s5, s11, 1389
                  srai         s11, t2, 29
                  add          s9, s5, a6
                  sub          s9, a0, a4
                  sltiu        s1, s3, 1977
139:              beq          s9, zero, 140f
140:              lui          s3, 105583
                  sltiu        s10, s9, -744
                  sltiu        s11, s5, 718
143:              sltu         s9, s0, s1
                  or           s6, a0, s4
                  ori          zero, s11, -1064
                  bge          a5, a3, 164f
                  xor          a7, a7, t6
                  andi         s3, a3, 352
                  slti         t3, s1, -706
                  andi         t5, sp, -1562
                  or           t2, t4, sp
                  blt          s7, gp, 164f
                  ori          zero, a1, 1401
                  bltu         sp, a5, 168f
                  nop
                  beq          s5, tp, 169f
                  xor          t2, tp, s1
                  slli         sp, s4, 10
                  slt          t3, t3, tp
                  xor          s8, a3, a3
                  sll          s11, t2, sp
                  lui          a2, 768375
                  sltu         zero, sp, gp
164:              andi         a2, a2, 108
                  srli         a3, s2, 18
                  sub          s2, t1, t2
                  beq          s0, t4, 178f
168:              sub          a1, s0, t4
169:              sub          t6, t3, t4
                  and          s6, a4, a1
                  slti         t2, gp, 1515
                  lui          s11, 584245
                  srli         s5, a1, 5
                  bltu         sp, t0, 188f
                  andi         a0, a1, -1362
                  or           a2, s6, s3
                  beq          s3, t5, 190f
178:              ori          a7, s6, -1301
                  xori         sp, s6, 1602
                  lui          a6, 1032992
                  xori         s10, a5, 464
                  sub          a7, gp, t4
                  sub          s9, s6, s6
                  sltu         s10, t3, a0
                  nop
                  andi         a2, ra, -854
                  add          a6, a3, s9
188:              addi         a2, a7, -1573
                  bgeu         sp, zero, 192f
190:              sll          a4, zero, s6
                  lui          s11, 459272
192:              bltu         s9, a6, 193f
193:              sra          s5, a7, a7
                  srai         s0, gp, 10
                  srl          t0, s6, ra
                  sltiu        s8, s4, -1521
                  sltu         s8, t5, a5
                  add          a6, a6, t4
                  bne          s10, a4, 218f
                  sra          s0, t5, a6
                  srl          t5, t1, a3
                  xori         s9, s6, 809
                  slli         ra, t4, 19
                  auipc        s1, 604204
                  bltu         sp, a4, 211f
                  andi         gp, s5, 134
                  slli         zero, t3, 7
                  bltu         a5, a2, 227f
                  xori         ra, a4, 1062
                  andi         a6, a0, 1317
211:              srli         zero, t4, 10
                  srli         s10, a2, 21
                  beq          t5, s0, 222f
                  la           sp, region_0+1757 #start riscv_load_store_rand_instr_stream_7
                  slt          t1, zero, s9
                  add          s4, s10, t3
                  or           a2, t2, zero
                  ori          s3, a7, 164
                  lh           t3, -557(sp)
                  nop
                  addi         a3, s1, 337
                  nop
                  sub          a7, s8, s9
                  sra          s3, a4, a2
                  lb           t3, -748(sp)
                  sub          s5, t3, s10
                  srli         t3, s3, 0
                  lb           s9, -119(sp)
                  sb           a4, 136(sp)
                  nop
                  lb           gp, -7(sp)
                  lb           t1, -1404(sp)
                  srli         a4, t3, 18
                  lui          s3, 829120
                  addi         a7, s8, -1407
                  sb           s6, -746(sp)
                  sb           t6, -640(sp)
                  srl          s4, tp, zero
                  sltu         s4, s3, s5
                  slt          s6, s11, t2
                  slti         s2, t4, -622
                  lb           s8, 18(sp)
                  ori          a3, t5, -542
                  slt          s4, sp, s10
                  sub          s6, a1, a2
                  lbu          a3, -962(sp) #end riscv_load_store_rand_instr_stream_7
                  or           s10, s5, t0
                  slti         a0, t6, -135
                  bge          t1, t0, 227f
                  sub          a7, t2, zero
218:              ori          s11, t4, -1783
                  bltu         ra, sp, 221f
                  sltu         a4, s9, s6
221:              srl          s10, t3, a7
222:              xori         s8, s5, 180
                  beq          s3, a4, 233f
                  auipc        s8, 947862
                  slli         a0, a1, 28
                  slt          s3, s8, t1
227:              slt          s10, t2, a5
                  add          t3, s2, s0
                  bgeu         t6, a1, 241f
                  srai         s8, a4, 1
                  andi         a7, t2, -339
                  blt          a6, zero, 250f
233:              andi         s5, a5, 780
                  addi         s3, a5, -2043
                  bne          t4, t1, 246f
                  and          zero, s0, t6
                  sltu         a3, ra, s0
                  or           t2, s5, a0
                  and          s8, s9, a7
                  slli         t0, a7, 25
241:              sra          t1, ra, a2
                  srl          t3, s10, s6
                  sub          s9, s0, s9
                  andi         gp, s0, -606
                  sll          s1, s1, t2
246:              bgeu         a4, tp, 257f
                  xor          s0, s4, a7
                  bne          a2, s4, 259f
                  sltiu        s8, t6, -1153
250:              xori         s6, s2, 1442
                  andi         sp, s7, 1804
                  slli         t6, a6, 3
                  ori          s1, s4, 1298
                  nop
                  nop
                  add          s7, gp, s11
257:              xor          a1, tp, s9
                  sll          t0, s11, s0
259:              bltu         zero, t3, 260f
260:              beq          a4, gp, 262f
                  lui          a2, 36651
262:              srai         s10, a1, 10
                  bltu         t5, t0, 266f
                  srai         a4, ra, 16
                  nop
266:              bne          a4, s3, 273f
                  srli         s5, a3, 26
                  bne          t4, t0, 277f
                  srli         s9, t6, 16
                  and          a1, sp, a6
                  slli         s4, t5, 9
                  bgeu         a4, s4, 289f
273:              sltu         a7, a7, s3
                  bne          s0, a0, 294f
                  ori          a2, s8, -816
                  sltu         s11, s4, zero
277:              bltu         t3, t6, 291f
                  srl          s1, s7, gp
                  slli         s3, t1, 13
                  nop
                  add          t3, s7, s1
                  bne          t0, s7, 291f
                  xor          t1, t3, t3
                  bge          s4, a3, 288f
                  beq          s2, t2, 299f
                  add          a0, s0, a6
                  la           s8, region_1+249 #start riscv_load_store_rand_instr_stream_3
                  sh           s11, 7(s8)
                  lh           sp, 9(s8)
                  lbu          s2, 12(s8)
                  sltiu        s7, a2, 217
                  lb           t2, 6(s8)
                  addi         a1, s1, -972
                  lb           t6, -6(s8)
                  sub          t0, a2, a4
                  lb           s9, -14(s8)
                  sltiu        t5, t5, -851
                  sw           s8, 3(s8)
                  sll          s7, s10, a5
                  sb           sp, 8(s8)
                  nop
                  slt          t0, a1, zero
                  auipc        a2, 526260
                  sb           s9, 2(s8)
                  slt          t1, a2, a3
                  sh           s4, -11(s8)
                  sb           a2, 16(s8)
                  lui          s3, 514969
                  sb           t2, -8(s8)
                  nop
                  lb           s5, 9(s8)
                  lui          s2, 198256
                  lb           t0, -7(s8)
                  sltu         s6, a0, a1
                  sll          a6, gp, s1
                  lb           s4, -7(s8)
                  lbu          sp, -16(s8) #end riscv_load_store_rand_instr_stream_3
                  bgeu         s9, ra, 300f
288:              srai         t3, a3, 3
289:              bge          a0, s7, 302f
                  sltu         a4, s2, t1
291:              addi         s4, s1, 1989
                  bne          s0, a6, 307f
                  xori         s0, t3, 904
294:              and          t2, a5, t2
                  xori         s9, s4, -1566
                  sub          ra, s1, a4
                  srl          s1, a4, t3
                  sra          s1, t1, ra
299:              andi         s1, s4, -79
300:              or           s8, s1, t0
                  slli         a0, s11, 24
302:              blt          t4, a0, 313f
                  bgeu         a3, t3, 313f
                  ori          a4, ra, 1134
                  slli         s10, sp, 24
                  blt          t1, t1, 326f
307:              beq          s1, s1, 320f
                  addi         s6, a1, 1147
                  bltu         t1, t1, 320f
                  srai         gp, a2, 17
                  add          t2, s2, t4
                  addi         a1, s11, 1862
313:              sltiu        t5, s5, -131
                  xori         s1, zero, -1098
                  bltu         a2, a6, 330f
                  ori          a4, s1, 154
                  sub          t2, a5, t0
                  bne          ra, a4, 321f
                  lui          t5, 138955
320:              slt          s10, t4, t3
321:              bge          t0, a4, 325f
                  sltiu        s8, a0, 1561
                  beq          a5, s5, 325f
                  lui          s6, 837624
325:              blt          a4, t2, 334f
326:              bge          s9, a4, 340f
                  beq          s2, s9, 340f
                  addi         s10, s4, -1884
                  slli         s11, a2, 24
330:              xori         a4, s10, 455
                  bge          s3, a4, 350f
                  addi         t5, ra, 83
                  xori         a1, a1, -621
334:              add          t5, s2, s1
                  xori         a6, s10, 283
                  blt          t2, a7, 348f
                  xor          a4, a3, t1
                  bltu         s5, s1, 344f
                  nop
340:              blt          s8, ra, 358f
                  ori          s11, t0, 1309
                  auipc        s11, 745560
                  xor          s5, s0, a1
344:              sll          gp, sp, a5
                  or           s8, a6, t0
                  add          a7, a4, a1
                  srl          sp, t0, s3
348:              bltu         a2, s7, 357f
                  slli         s3, t3, 22
350:              addi         s4, ra, 1358
                  sll          t2, s6, t2
                  xor          s5, s6, a1
                  and          s8, a0, a6
                  sub          t3, a6, a3
                  srli         s4, a6, 25
                  nop
357:              and          sp, ra, s10
358:              slli         s5, t6, 14
                  nop
                  bltu         a0, a7, 373f
                  srai         a7, a7, 2
                  sra          a7, t6, t1
                  nop
                  lui          s9, 929627
                  bgeu         t5, a2, 366f
366:              andi         s1, s8, 1360
                  blt          s2, s2, 381f
                  beq          t3, a5, 377f
                  and          s0, s4, gp
                  auipc        s6, 847420
                  sltu         sp, s3, t1
                  or           s2, t3, s1
373:              beq          a6, s8, 384f
                  slti         s0, t1, 1767
                  and          a3, a0, t5
                  slli         s3, sp, 0
377:              slli         s7, a4, 0
                  andi         s4, t0, -804
                  bne          a1, a3, 398f
                  bgeu         t3, t5, 383f
381:              bgeu         t2, s6, 395f
                  sll          t6, s11, a0
383:              slli         s8, t6, 2
384:              blt          a4, t3, 401f
                  sltu         a0, sp, a6
                  xori         s0, s2, 1058
                  blt          a3, s4, 389f
                  bgeu         s10, gp, 395f
389:              nop
                  auipc        a6, 975219
                  sll          s1, s7, t4
                  add          t6, t6, gp
                  bltu         t3, gp, 394f
394:              bge          tp, t3, 405f
395:              lui          a2, 892971
                  srl          s2, s10, s11
                  bge          a7, s9, 415f
398:              and          t5, gp, a2
                  srli         a1, s11, 7
                  sltiu        gp, a1, 1700
401:              nop
                  sub          s1, s6, s7
                  bge          s5, s2, 412f
                  xori         s2, sp, -1800
405:              ori          s11, s3, 1353
                  srli         s9, t1, 3
                  or           s8, ra, zero
                  xori         s4, s9, -368
                  bltu         t1, a2, 410f
410:              slt          t2, gp, s0
                  xor          gp, a5, zero
412:              andi         s11, s4, 1619
                  srli         s2, a4, 22
                  ori          s1, a6, -190
415:              lui          t6, 403826
                  lui          a1, 692855
                  sra          s5, a3, sp
                  sra          s4, s7, gp
                  sra          t0, s9, a5
                  srl          a7, s7, s10
                  ori          s5, a2, -368
                  sra          t6, s6, s5
                  sra          s3, a2, s3
                  sub          s4, t4, t6
                  and          a6, t0, t2
                  sra          s4, s8, tp
                  and          ra, s11, s2
                  srli         ra, a2, 1
                  ori          s10, t1, -610
                  or           s10, s3, a6
                  sltu         s6, s8, s5
                  xor          a0, t1, t6
                  bge          t2, t2, 436f
                  sltu         a1, s3, s6
                  or           a2, s2, s4
436:              lui          s6, 595368
                  srl          a6, s2, s11
                  and          a6, s5, s11
                  bne          s1, a2, 454f
                  bne          a7, s0, 453f
                  sll          s1, s4, t1
                  sltiu        s3, t2, -1038
                  or           s5, s8, s9
                  srl          s11, a1, t1
                  sll          ra, a1, s2
                  slli         t5, s11, 27
                  andi         a7, a5, -1830
                  xor          gp, s1, a3
                  addi         s3, s7, 612
                  beq          s7, s6, 459f
                  srli         s0, a6, 25
                  srl          s4, s2, sp
453:              xor          s8, s11, t1
454:              and          s9, t1, t1
                  or           t5, s11, s1
                  nop
                  sra          s6, a6, zero
                  addi         a3, ra, 708
459:              andi         sp, s6, 1294
                  and          a4, s5, ra
                  sra          s6, a2, s4
                  nop
                  slli         t6, s6, 26
                  sub          s1, a6, s4
                  srli         s10, s4, 5
                  srai         s1, ra, 14
                  beq          gp, s11, 486f
                  or           t3, s9, s2
                  beq          a5, t0, 476f
                  sra          a7, a7, s5
                  srai         sp, sp, 19
                  and          s9, a5, s0
                  ori          s7, a6, -936
                  bgeu         s0, tp, 491f
                  slli         a2, tp, 23
476:              sltu         s5, s0, s6
                  and          t3, t5, s10
                  beq          t3, t1, 489f
                  or           s3, a5, s11
                  sltu         s9, s11, t1
                  add          ra, ra, t2
                  xor          s5, a4, t6
                  bne          t5, a5, 493f
                  blt          t5, t4, 493f
                  add          t0, t4, a2
486:              srl          a3, t1, a0
                  xori         s11, t2, -1844
                  lui          s11, 280244
489:              nop
                  addi         a1, a6, -1974
491:              slt          zero, t4, s9
                  sltiu        sp, a2, -1184
493:              add          s7, s1, t5
                  xor          s3, a0, s9
                  slti         s9, s9, 561
                  xor          a2, t3, s5
                  bne          s3, ra, 510f
                  ori          a7, s5, 150
                  sltu         a2, s1, s9
                  bltu         a4, t6, 511f
                  lui          s7, 450412
                  or           a6, t3, a2
                  lui          s9, 308060
                  auipc        s1, 509082
                  bltu         s11, s9, 508f
                  srai         s3, s0, 15
                  slti         gp, a4, 580
508:              srl          s0, s6, t3
                  addi         t0, t6, -395
510:              xor          t0, s5, s7
511:              sltiu        a6, s3, 785
                  sra          sp, t0, t1
                  xor          ra, t2, t0
                  bltu         t2, a3, 515f
515:              andi         a6, s6, -223
                  andi         s3, s8, -1150
                  slt          s7, s0, gp
                  slti         t2, a3, -1625
                  bge          s11, tp, 530f
                  slli         sp, s7, 10
                  add          a4, s6, a6
                  slti         s2, t2, 1647
                  slli         t2, s7, 5
                  bgeu         a6, t1, 536f
                  srai         s9, t5, 6
                  bge          t4, s11, 540f
                  beq          a1, s2, 529f
                  sra          s9, tp, tp
529:              bge          a6, t5, 543f
530:              beq          a7, s5, 532f
                  beq          t6, t5, 550f
532:              slli         t6, t6, 11
                  xor          t1, a0, s1
                  sra          s1, t5, a3
                  add          s10, s0, t1
536:              blt          s8, tp, 550f
                  sra          s6, s4, gp
                  beq          a6, s2, 542f
                  sltu         a7, s8, sp
540:              srai         t2, tp, 21
                  bgeu         t6, s4, 547f
542:              bge          a4, s7, 553f
543:              bltu         ra, a5, 563f
                  bltu         tp, tp, 557f
                  slli         a1, t4, 18
                  lui          a4, 119376
547:              sra          gp, s11, t4
                  bgeu         t6, s8, 563f
                  ori          s1, s6, -96
550:              and          s9, s1, s11
                  and          s5, s0, t4
                  bne          a7, a4, 571f
553:              sll          a7, a6, a0
                  bgeu         s2, t3, 563f
                  bgeu         a7, s11, 564f
                  xor          s2, gp, s5
557:              bge          s11, s2, 558f
558:              sra          a4, t2, t3
                  blt          t2, a2, 570f
                  bge          gp, a4, 572f
                  xori         t5, zero, 98
                  blt          s9, t2, 568f
563:              blt          s11, s5, 577f
564:              srl          a2, ra, a2
                  slli         s9, s6, 11
                  andi         ra, t5, -1491
                  blt          a7, a1, 570f
568:              sll          s7, ra, a3
                  srl          a1, s1, a4
570:              and          a6, s8, a3
571:              bne          s4, a3, 591f
572:              bne          a4, tp, 573f
573:              slti         s9, t5, -1841
                  xori         zero, t5, 754
                  ori          s11, t4, -1244
                  andi         s11, a5, -449
577:              xori         s5, a2, -614
                  xori         gp, sp, -47
                  auipc        a1, 693317
                  slti         zero, s8, -1106
                  srli         s11, a2, 6
                  xori         s3, s2, -328
                  slli         s6, ra, 18
                  srli         s1, sp, 1
                  sra          t5, a4, ra
                  and          gp, s11, t0
                  or           t5, s6, ra
                  sub          t0, t5, s8
                  xori         s10, t4, -1139
                  or           s0, t3, t0
591:              sll          a4, s11, gp
                  bgeu         zero, a6, 605f
                  ori          a1, t5, 36
                  sltu         s3, s3, s11
                  sra          s0, t0, gp
                  auipc        t2, 1024875
                  bltu         a1, s0, 600f
                  add          s7, s10, zero
                  sra          t5, s2, t6
600:              sll          s2, s1, sp
                  nop
                  srl          s5, ra, zero
                  and          s7, s5, tp
                  slti         t3, t1, 397
605:              blt          ra, t3, 615f
                  sll          ra, s0, s6
                  or           a0, s4, a3
                  sra          s2, s1, a6
                  sltu         a7, a0, s5
                  sra          t5, s6, s2
                  nop
                  or           t6, tp, t5
                  addi         s4, a4, -1115
                  sll          s4, t1, a3
615:              slti         t2, sp, -987
                  lui          s7, 339096
                  nop
                  srai         s7, gp, 3
                  add          sp, s0, a3
                  bge          a0, a4, 638f
                  srli         zero, a2, 24
                  slt          s9, zero, sp
                  bltu         s2, t4, 634f
                  sra          s3, ra, ra
                  sll          a7, sp, tp
                  slli         t1, t3, 14
                  add          a1, a4, s1
                  bne          t2, t2, 637f
                  beq          s0, t5, 648f
                  sll          a1, t1, a5
                  slti         s10, t1, 1708
                  auipc        s6, 511921
                  ori          gp, sp, -1282
634:              srl          s5, zero, s8
                  andi         t6, sp, -1428
                  sltiu        s6, sp, -1700
637:              slli         t0, s8, 3
638:              ori          s6, t6, 1777
                  bgeu         a4, s9, 650f
                  add          zero, s7, s10
                  add          t5, s6, a0
                  addi         t0, a3, 1541
                  bge          zero, t0, 654f
                  slli         a1, t2, 28
                  srai         t1, s8, 17
                  or           ra, s4, s4
                  sra          s4, t2, t2
648:              xori         s10, t2, -1555
                  blt          s11, a4, 651f
650:              addi         sp, tp, -22
651:              add          s0, a4, t2
                  sra          s11, s2, ra
                  auipc        s6, 654002
654:              xori         a7, s0, -1327
                  bltu         s2, t3, 669f
                  or           s11, s1, s2
                  nop
                  ori          a6, ra, -1497
                  bge          a2, a0, 673f
                  bgeu         s2, s1, 662f
                  beq          s3, t4, 668f
662:              ori          ra, t0, 1481
                  sra          a2, s4, a2
                  sltiu        t6, t3, 610
                  blt          s2, a2, 678f
                  beq          zero, s10, 683f
                  la           sp, region_1+1167 #start riscv_load_store_rand_instr_stream_2
                  sub          s0, a5, a2
                  lhu          gp, -821(sp)
                  lw           t5, 341(sp)
                  slti         s6, s2, 242
                  lbu          s10, 637(sp)
                  sb           a0, 344(sp)
                  lb           t1, -263(sp)
                  addi         gp, s8, 1260
                  lbu          s9, -1049(sp)
                  andi         s6, tp, 1106
                  lb           s7, -562(sp)
                  srai         a0, tp, 31
                  sltu         t0, t6, a3
                  slli         s8, a5, 31
                  xor          s0, tp, s3
                  lb           t3, -578(sp)
                  sh           t3, -341(sp)
                  sb           s6, -916(sp)
                  xor          s8, a6, t6
                  lbu          zero, -1124(sp)
                  lb           s7, 112(sp)
                  lw           s4, -631(sp)
                  and          t0, s4, t1
                  lbu          s3, 315(sp)
                  sll          s3, t1, s2
                  sh           s10, -433(sp)
                  lbu          a0, 452(sp)
                  nop
                  srai         s8, gp, 29
                  lui          a1, 658580
                  sw           s11, -103(sp)
                  sub          s2, s0, t6
                  lhu          s5, -471(sp)
                  addi         s0, s1, -1460
                  sh           tp, -1019(sp)
                  sb           s8, -950(sp)
                  nop
                  lb           t6, -660(sp)
                  sra          gp, s4, t6
                  lbu          s1, -758(sp)
                  lhu          a1, -129(sp) #end riscv_load_store_rand_instr_stream_2
                  srai         t5, sp, 19
668:              or           a4, zero, s9
669:              bne          tp, t0, 682f
                  xori         ra, t0, -379
                  slt          t1, s5, a5
                  andi         t2, s8, 1810
673:              sll          s10, a0, s2
                  sub          s3, s4, s11
                  slli         s0, s10, 24
                  andi         a6, a0, 20
                  slli         s1, t0, 28
678:              sll          t6, a5, s5
                  nop
                  slti         a6, t4, -1991
                  srl          a1, s8, s11
682:              ori          t0, t5, 748
683:              add          s10, s2, t2
                  slt          s5, t3, gp
                  xori         s5, t3, 1452
                  add          sp, a5, s2
                  bgeu         s0, a2, 691f
                  or           s5, a7, a0
                  sub          a7, s8, s6
                  auipc        t1, 265659
691:              sub          a6, s10, zero
                  and          t3, t4, a4
                  auipc        a1, 737800
                  auipc        a1, 579755
                  and          a2, t6, a6
                  bge          a3, a5, 699f
                  srai         gp, t2, 20
                  sltiu        a4, s6, 16
699:              srai         s11, a5, 5
                  slt          a6, a4, a2
                  srl          s1, tp, t3
                  srli         s8, t1, 24
                  addi         s2, gp, -498
                  sll          t5, s1, t2
                  xor          s6, t6, s1
                  sltu         a4, gp, s4
                  or           s10, s8, t3
                  bge          a1, s3, 710f
                  add          zero, t5, sp
710:              sra          sp, s10, s5
                  slti         t3, t0, 1986
                  sra          s0, s8, t5
                  add          s11, t1, s7
                  beq          s5, a3, 727f
                  sltu         a1, s6, sp
                  slti         s4, s0, -1514
                  ori          a0, a0, 1024
                  and          a6, s4, s7
                  bne          t5, t4, 732f
                  ori          s10, s6, 1550
                  addi         t1, a1, 585
                  nop
                  add          t0, a7, t6
                  andi         a1, a1, -231
                  bgeu         a0, t4, 727f
                  slli         ra, a2, 4
727:              addi         t5, a6, -120
                  slt          s2, s8, s3
                  xor          ra, a2, s1
                  lui          s1, 161
                  add          a0, t0, s1
732:              srli         t5, sp, 20
                  slti         a0, a2, -248
                  sub          s6, zero, a5
                  sltu         gp, s7, s8
                  ori          a1, t2, 1126
                  ori          t6, s5, 1622
                  ori          s8, s10, -1595
                  sub          s3, a1, s4
                  addi         t2, zero, 304
                  srli         s11, s9, 16
                  auipc        t2, 229936
                  xor          a3, s10, s3
                  slt          t6, a4, s0
                  xori         t5, s3, -1085
                  lui          s11, 661553
                  addi         t1, t0, 630
                  bltu         s6, s9, 759f
                  sltiu        t6, sp, -1174
                  nop
                  bltu         s4, s6, 770f
                  add          t0, t6, a0
                  xori         a1, t4, -103
                  slti         a2, t0, -1822
                  sltiu        s10, s8, 1451
                  bne          t0, s1, 773f
                  sra          s6, t1, a4
                  srl          ra, s0, t5
759:              slt          s11, s3, s0
                  andi         s9, s2, 366
                  srli         s9, s0, 16
                  bgeu         t5, t6, 771f
                  nop
                  and          s5, s3, ra
                  srai         a2, s7, 1
                  sra          a4, a4, s9
                  sltiu        t3, s10, 1505
                  srai         s0, t5, 21
                  nop
770:              slt          s6, a1, t1
771:              srli         sp, t5, 25
                  sll          s11, s5, sp
773:              auipc        s5, 278883
                  srli         s0, a5, 23
                  add          s10, zero, t2
                  bltu         a1, s10, 787f
                  lui          a3, 164550
                  sra          s6, s10, s1
                  srl          s1, t3, t3
                  auipc        a6, 397923
                  sub          gp, t2, t4
                  bgeu         s9, a3, 786f
                  or           s2, t2, s6
                  ori          zero, a3, -413
                  or           a4, s9, t4
786:              beq          a2, t5, 795f
787:              slli         s11, s4, 26
                  sll          s5, t2, a7
                  bne          s0, s2, 799f
                  auipc        gp, 598760
                  bgeu         t3, a3, 800f
                  slti         s5, s4, 476
                  beq          t5, a2, 804f
                  sltiu        t0, tp, 926
795:              srl          s1, s1, a2
                  addi         a0, t1, -420
                  blt          a1, a3, 816f
                  slti         t2, a1, 1997
799:              auipc        a3, 192876
800:              bne          s3, a4, 803f
                  sub          a4, s1, a7
                  add          t2, gp, ra
803:              ori          a7, s7, -1565
804:              sub          s0, t3, a5
                  blt          t2, a1, 818f
                  blt          a5, s4, 824f
                  slti         s9, s1, -719
                  sltu         s10, ra, s2
                  ori          a2, s8, -1035
                  bge          s6, t2, 822f
                  xori         zero, sp, -1794
                  addi         s5, s7, -1282
                  auipc        t5, 966772
                  andi         s6, a7, -983
                  sra          ra, a5, zero
816:              nop
                  lui          s11, 656794
818:              sltu         a0, a7, s3
                  bne          s6, s4, 833f
                  slti         t1, gp, 600
                  sub          a2, s7, s6
822:              xori         sp, t3, 1292
                  sub          t2, a1, t4
824:              srl          ra, t2, s4
                  sltiu        zero, a0, -1223
                  and          a7, s5, t2
                  slti         s7, s6, -1216
                  add          t0, s11, s1
                  auipc        s4, 478303
                  srl          s10, s10, gp
                  lui          s8, 419519
                  addi         a0, a7, 1046
833:              lui          zero, 774917
                  beq          s10, s8, 848f
                  add          s0, s8, s1
                  xor          t5, s5, s6
                  bge          t5, a0, 851f
                  sltiu        s7, a0, 1329
                  sll          s8, s0, a5
                  lui          s8, 658020
                  xor          gp, s1, s0
                  sll          s2, s7, ra
                  sub          sp, sp, s2
                  slti         s4, s9, 53
                  sltu         gp, s6, a2
                  sltu         t0, t1, s10
                  ori          t6, t1, 1115
848:              addi         s7, a7, -1842
                  slti         a1, t6, -1329
                  andi         a1, s9, 2028
851:              beq          s7, sp, 858f
                  sltiu        s2, t2, -1516
                  srli         s6, gp, 1
                  bgeu         s9, a1, 855f
855:              andi         a0, s5, -40
                  sltu         t2, t5, t0
                  nop
858:              ori          a0, s6, 64
                  lui          a7, 280233
                  slli         s5, t5, 1
                  and          t1, a6, s6
                  blt          a5, t4, 882f
                  xori         t6, a4, -1577
                  blt          t4, a1, 870f
                  ori          ra, t6, 793
                  addi         s1, a4, 1760
                  srai         s8, t3, 12
                  srli         s3, ra, 19
                  bne          s8, t0, 884f
870:              sltiu        t1, t4, -1409
                  sltu         s0, t1, s8
                  auipc        sp, 265766
                  auipc        a7, 330598
                  xori         a7, t3, -1201
                  sll          zero, s4, s1
                  lui          zero, 56788
                  addi         a6, a1, -992
                  srai         s3, s1, 17
                  lui          s1, 949942
                  beq          t6, t2, 891f
                  srai         t0, s11, 13
882:              auipc        a6, 276777
                  beq          zero, a3, 884f
884:              auipc        a0, 149368
                  beq          ra, s5, 904f
                  lui          s3, 157699
                  sra          sp, ra, a7
                  add          a6, t3, a0
                  nop
                  nop
891:              or           t5, t5, a1
                  slli         s10, t4, 10
                  sra          gp, s11, a1
                  ori          t5, t6, 1935
                  bge          s4, ra, 899f
                  bne          a6, s0, 914f
                  nop
                  beq          t1, sp, 910f
899:              xori         s5, a3, 507
                  auipc        s0, 28716
                  bgeu         a4, a3, 908f
                  and          t6, t5, s9
                  ori          t6, tp, 8
904:              sltiu        s9, t5, -883
                  auipc        s1, 647594
                  add          s1, tp, s8
                  srl          a4, sp, s4
908:              xori         s4, s2, -1360
                  srai         s5, s7, 23
910:              bgeu         s10, s0, 929f
                  blt          a2, a6, 922f
                  addi         a3, a0, 1202
                  slti         a0, t5, 381
914:              add          t6, t3, s11
                  andi         s11, a4, -1337
                  ori          a7, t4, 606
                  blt          s4, s11, 928f
                  srai         a0, t6, 26
                  srl          a7, ra, ra
                  add          ra, s4, t1
                  lui          t6, 205293
922:              sra          t2, t6, t6
                  xori         s2, a2, 67
                  bne          s7, s2, 933f
                  sll          a6, t4, tp
                  bge          s9, s0, 927f
927:              xor          a3, a1, t1
928:              blt          tp, s1, 938f
929:              bge          s6, gp, 931f
                  xori         s6, s5, -1595
931:              ori          gp, a2, 2005
                  sub          s5, t0, s10
933:              beq          a5, t0, 946f
                  nop
                  or           a4, a5, a3
                  xor          sp, t4, s8
                  ori          s7, a3, 714
938:              addi         s3, t3, -1132
                  xori         a3, s6, 1358
                  bltu         t4, a5, 957f
                  addi         s6, a6, 1738
                  sll          zero, s7, t0
                  slt          s0, s0, a3
                  addi         a2, s9, 499
                  and          s10, s4, t1
946:              xori         s6, s3, 2002
                  sra          s2, ra, s10
                  srai         t0, t3, 9
                  xori         s0, t2, -463
                  sub          a0, s0, a1
                  bne          t6, a6, 971f
                  addi         a6, t4, -2016
                  slt          s8, s1, s6
                  or           a1, t2, a2
                  lui          sp, 163579
                  bgeu         ra, s9, 970f
957:              or           ra, s8, sp
                  srl          zero, s5, gp
                  and          t2, a1, s7
                  or           gp, s5, a3
                  xor          gp, tp, s5
                  andi         s3, t6, -2041
                  sub          s3, a7, a1
                  lui          a3, 463425
                  sub          s0, t1, s5
                  srl          a2, a1, t5
                  xori         t2, tp, -1199
                  beq          s5, s11, 977f
                  sltiu        t2, s6, -1023
970:              or           t6, s10, s10
971:              blt          a0, s1, 980f
                  bgeu         s10, a6, 975f
                  andi         s2, s0, 642
                  srl          s6, s4, s7
975:              add          t3, s10, s10
                  and          s11, s0, s4
977:              sub          a3, a6, t3
                  addi         a7, sp, 2017
                  and          s5, zero, gp
980:              slti         a4, s5, -1319
                  slti         a7, a0, 635
                  xori         s11, a6, -1060
                  nop
                  slli         t3, s3, 0
                  or           a6, a4, gp
                  add          s5, a2, s3
                  srai         s3, zero, 16
                  ori          s2, t4, -305
                  bne          s4, a5, 991f
                  xori         s3, t4, -220
991:              bltu         sp, s6, 1004f
                  srli         a6, s9, 26
                  sra          gp, t0, a7
                  andi         t1, s2, 521
                  srli         a1, a3, 3
                  bltu         a1, t2, 1002f
                  srli         a4, a2, 20
                  auipc        t0, 735782
                  srai         s8, s7, 15
                  slli         gp, s7, 7
                  auipc        s11, 23872
1002:             auipc        a1, 464553
                  xor          t3, t4, t3
1004:             ori          a6, tp, -1212
                  sub          a2, zero, t4
                  slli         s0, a4, 24
                  sra          s8, sp, s10
                  sll          a0, a0, s11
                  blt          a7, s7, 1020f
                  xori         s6, a7, 1215
                  add          s5, a4, t1
                  sub          s1, a7, a6
                  xor          s3, s11, t3
                  sltiu        s4, a6, -894
                  sltu         s8, a0, t2
                  sll          s1, t4, s3
                  beq          gp, t6, 1028f
                  ori          a6, s4, 1214
                  bne          s6, a3, 1033f
1020:             srl          a0, a7, tp
                  sll          s0, s8, t5
                  auipc        s8, 204190
                  bne          s3, s6, 1036f
                  bltu         t1, ra, 1038f
                  slli         s3, s5, 9
                  slli         s10, s9, 1
                  nop
1028:             addi         s4, s10, 751
                  or           a6, ra, s7
                  sra          a7, s3, s4
                  bltu         t1, a7, 1034f
                  xor          a4, s10, gp
1033:             bge          s4, a1, 1048f
1034:             and          zero, s5, t3
                  and          s10, sp, t2
1036:             bltu         tp, t5, 1037f
1037:             srli         a1, a2, 12
1038:             xori         s0, s5, -1353
                  blt          t3, s9, 1049f
                  bne          tp, s3, 1053f
                  and          a1, s3, s11
                  bge          sp, a2, 1044f
                  andi         zero, s5, -1364
1044:             bltu         zero, t6, 1048f
                  xor          a1, s4, t6
                  lui          s3, 640766
                  sltu         a7, s3, gp
1048:             srl          t3, t6, t0
1049:             slti         ra, s7, 88
                  bne          s3, a3, 1053f
                  srl          s0, t1, a0
                  lui          t6, 425574
1053:             xor          t3, a6, a0
                  auipc        s1, 27580
                  lui          a6, 632168
                  sub          s7, s5, t3
                  beq          zero, s6, 1058f
1058:             xori         s6, gp, -876
                  srl          gp, sp, s8
                  srai         t1, a4, 25
                  sltu         a2, a1, a4
                  andi         ra, s7, 885
                  bne          t1, s5, 1082f
                  bgeu         s10, a5, 1067f
                  slti         zero, s10, -1597
                  slt          t5, sp, a3
1067:             srli         a2, t1, 12
                  srl          s0, t5, s9
                  addi         s11, s9, -1511
                  sub          a0, s1, s1
                  bgeu         s4, t3, 1073f
                  ori          s3, s7, 216
1073:             or           a0, s10, a3
                  or           s11, s3, a0
                  sra          s7, s10, s7
                  sra          t3, t4, s0
                  sub          sp, s1, s10
                  auipc        s1, 79570
                  sra          a1, t2, s6
                  slti         s11, s5, 792
                  bltu         sp, s6, 1087f
1082:             sltiu        a2, a1, 1346
                  xori         s1, a0, 1329
                  xor          s3, t1, s9
                  or           s7, s11, a0
                  slti         a7, t1, -978
1087:             and          t0, t1, s7
                  sra          s7, s5, s4
                  auipc        s2, 810659
                  sub          s7, a4, s11
                  sub          s4, a4, s8
                  add          a0, t6, zero
                  slli         t5, t6, 31
                  xori         s6, t1, 1633
                  slti         s1, t2, -124
                  lw           s0, 4(t4)
                  or           ra, s4, a5
                  addi         t4, t4, 20
                  addi         a0, s2, -1274
1407:             addi x28, x8, 0
1407:             jalr x28, x28, 0
sub_5:            slli         a2, a0, 15
                  slli         a3, t5, 3
                  addi         t4, t4, -12
                  sub          t1, t1, t2
                  lui          sp, 791198
                  xor          s8, a1, s5
                  sw           s0, 4(t4)
                  lui          s1, 922504
                  lui          a2, 745812
                  la           sp, region_0+710 #start riscv_load_store_rand_instr_stream_1
                  sb           tp, 52(sp)
                  sra          a3, a2, gp
                  sb           t6, -40(sp)
                  slti         t3, s8, -1681
                  addi         s3, s3, 18
                  srai         t0, ra, 29
                  lb           s8, 2(sp)
                  sra          a2, t3, s9
                  lbu          zero, -13(sp)
                  lw           s4, 50(sp)
                  sh           t4, 2(sp)
                  xori         gp, t2, 253
                  sb           a6, -38(sp)
                  ori          a1, a2, 590
                  lbu          t2, 41(sp)
                  or           t0, ra, a7
                  lbu          a0, -19(sp)
                  andi         s7, a7, -1881
                  slti         s11, s10, -1167
                  sb           zero, -48(sp)
                  or           s6, ra, s9
                  lui          a1, 1007864
                  lbu          s3, 41(sp)
                  lbu          a1, 59(sp)
                  addi         s9, t5, 1759
                  srl          a3, a2, a7
                  lbu          s0, 35(sp)
                  lb           gp, 30(sp)
                  andi         s1, t0, -1065
                  sb           sp, 4(sp)
                  lh           s11, 0(sp)
                  sb           s3, 7(sp)
                  slli         s5, t0, 0
                  sb           t5, -15(sp)
                  ori          s3, tp, -371
                  sra          s10, s9, tp
                  slt          t3, a3, s8
                  sltu         s2, s0, zero
                  add          t2, ra, s11
                  lh           a3, -10(sp)
                  srl          s9, s4, s3
                  lbu          gp, -49(sp)
                  slt          s4, zero, s7
                  srai         s11, t6, 22
                  add          s10, s7, t0
                  ori          a0, ra, 901
                  lb           t6, 23(sp)
                  lbu          a4, -60(sp)
                  lb           s0, 15(sp)
                  sb           a2, 64(sp)
                  or           a4, a1, t0
                  auipc        s7, 800923
                  sb           a1, 13(sp)
                  or           ra, a3, ra
                  ori          a1, a7, -1930
                  lbu          t5, 59(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1647 #start riscv_load_store_rand_instr_stream_3
                  sb           s8, -12(sp)
                  lb           t1, -34(sp)
                  xor          a2, a7, t0
                  lhu          s9, -33(sp)
                  sb           a2, -35(sp)
                  sh           a4, -39(sp)
                  lh           s2, 33(sp)
                  slli         s1, t1, 0
                  sh           s5, -9(sp)
                  sub          a6, t1, tp
                  ori          zero, gp, -1284
                  xori         t1, a0, 645
                  ori          t5, s8, 1499
                  lb           zero, 13(sp)
                  lbu          a7, 37(sp)
                  sltu         zero, t4, tp
                  slti         t0, a5, -1203
                  sltu         a2, sp, t1
                  sltiu        s3, a1, 504
                  lui          s7, 324939
                  lbu          t5, 63(sp)
                  sb           s8, 56(sp)
                  lh           s7, -9(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_1+62 #start riscv_load_store_rand_instr_stream_0
                  lhu          s5, 8(a6)
                  sw           zero, 2(a6)
                  sb           s10, -7(a6)
                  sltiu        s8, s1, 404
                  sra          s0, s4, s8
                  srai         a1, t5, 8
                  sh           a1, 16(a6)
                  lbu          t3, -15(a6)
                  lb           gp, -9(a6)
                  ori          s10, s1, 598
                  lb           s11, 6(a6)
                  lb           a0, -9(a6)
                  lbu          a4, 7(a6)
                  and          s9, s7, s6
                  lb           s9, -11(a6)
                  lh           a7, -2(a6)
                  lhu          s7, 14(a6)
                  srai         a1, s10, 8
                  sb           sp, -15(a6)
                  addi         s8, t1, 195
                  auipc        a3, 950533
                  sb           a3, 12(a6)
                  lb           s3, -3(a6)
                  auipc        s1, 656512
                  lb           t1, -3(a6)
                  sub          t3, t0, t1
                  lbu          a3, -5(a6)
                  lb           a3, -7(a6)
                  lbu          t1, 7(a6)
                  sh           s3, 4(a6)
                  add          a2, s5, s3
                  lhu          a2, -16(a6)
                  lb           a3, -11(a6)
                  lb           a7, -10(a6)
                  srl          a7, a6, s4
                  addi         sp, t5, -380
                  lb           gp, 10(a6) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_1+1277 #start riscv_load_store_rand_instr_stream_5
                  andi         a6, s10, -308
                  lbu          s3, -180(gp)
                  sb           s11, -205(gp)
                  sub          s1, t0, s0
                  srl          sp, gp, s7
                  sltu         a7, t2, s8
                  sub          s8, a6, a0
                  sb           s8, 40(gp)
                  auipc        zero, 65950
                  lbu          a4, -149(gp)
                  lbu          s7, 186(gp)
                  and          zero, a3, zero
                  add          t3, a1, t1
                  nop
                  sltu         s6, a2, zero
                  srai         zero, s1, 16
                  xor          a0, s4, s7
                  or           ra, a5, t2
                  ori          a0, t0, -1914
                  lui          s7, 433524
                  lh           a1, 135(gp)
                  sra          s1, s9, s0
                  sb           a7, -212(gp)
                  sb           t4, 50(gp)
                  addi         a0, tp, 1266
                  xor          t1, s9, zero
                  sb           s7, 135(gp)
                  lbu          t2, -144(gp)
                  sltiu        a4, a2, 267
                  slt          t2, a3, a2
                  lb           zero, -114(gp) #end riscv_load_store_rand_instr_stream_5
                  sltiu        s6, tp, 516
                  sub          t3, s8, tp
                  sub          zero, ra, t4
                  xori         s11, a5, 712
                  or           a3, a1, gp
                  slti         a0, t2, -1976
                  ori          zero, a1, -588
                  lui          t2, 787077
                  slt          a0, a5, a7
                  and          t6, s2, tp
                  beq          s1, zero, 27f
                  sub          s9, s7, ra
                  xor          s0, zero, s7
                  auipc        a3, 310989
                  or           a0, s1, t5
                  bge          t0, tp, 18f
                  sltiu        s3, s10, -440
                  bgeu         a3, s10, 26f
18:               bgeu         a2, ra, 37f
                  sub          gp, a7, a1
                  slt          s8, t0, a6
                  srl          s7, a1, t2
                  nop
                  sltu         s11, ra, s0
                  nop
                  srli         s2, a3, 28
26:               sltiu        t0, gp, 289
27:               sll          zero, gp, s3
                  bge          t2, s11, 35f
                  sll          s1, s5, s0
                  sltu         t2, s7, a7
                  xor          a4, t4, s9
                  or           a7, t5, s9
                  andi         a0, a0, -1548
                  andi         s3, s1, -215
35:               slt          ra, a4, a2
                  blt          sp, t1, 55f
37:               bne          t6, s9, 49f
                  slti         t3, a5, -1037
                  addi         gp, gp, -1002
                  ori          a6, s3, 1757
                  lui          t1, 77234
                  or           ra, t1, a4
                  addi         s11, zero, 1434
                  sltiu        t1, a5, -998
                  slt          s9, s4, t3
                  sll          s9, t5, s9
                  srl          s8, s6, a2
                  sltu         a7, t3, t1
49:               srl          s2, s4, sp
                  add          t0, s8, t0
                  lui          s7, 638899
                  sltu         zero, a1, s1
                  slt          s8, a6, s6
                  sll          a6, s0, s3
55:               add          a2, s4, t4
                  blt          t3, s3, 74f
                  srai         s6, s2, 1
                  and          a4, t3, tp
                  bgeu         t4, s3, 70f
                  srli         a6, ra, 21
                  and          s0, sp, tp
                  sltu         t5, s0, s4
                  and          s10, s2, s6
                  add          s10, s10, t0
                  slti         s0, s9, -1450
                  sra          a4, a6, t0
                  blt          s7, tp, 87f
                  bltu         s4, a6, 70f
                  auipc        s5, 982503
70:               bltu         s9, s9, 72f
                  slti         s5, a6, -1702
72:               sub          s1, s1, t6
                  or           s8, t2, a3
74:               andi         s10, ra, 865
                  xori         s7, zero, -1932
                  addi         t5, t6, -1445
                  sra          t6, zero, a2
                  bge          a0, a2, 80f
                  add          s4, a0, t4
80:               addi         s9, gp, 1533
                  add          s10, s4, gp
                  srai         a6, a0, 11
                  srl          a7, a4, gp
                  srl          s10, gp, tp
                  ori          a4, a5, 1182
                  addi         a3, s6, 826
87:               ori          s9, ra, 1825
                  bgeu         zero, s1, 100f
                  srl          ra, a7, s0
                  nop
                  xori         zero, a1, -871
                  and          t2, a0, s0
                  sltu         s4, s7, s3
                  beq          a0, s10, 113f
                  nop
                  bne          s4, s10, 109f
                  slli         t0, a7, 23
                  srli         t2, a3, 7
                  beq          s7, a7, 107f
100:              slti         s2, t1, -445
                  sub          a3, zero, s10
                  add          s4, s9, gp
                  sltu         s4, s10, s9
                  srli         sp, t4, 11
                  srli         s2, tp, 9
                  bltu         zero, s3, 114f
107:              xor          s0, s7, t6
                  la           s1, region_1+768 #start riscv_load_store_rand_instr_stream_2
                  sb           a7, 19(s1)
                  srli         s6, gp, 29
                  srai         t2, sp, 19
                  andi         zero, s5, 566
                  sh           t1, 30(s1)
                  addi         t3, s2, -1643
                  sh           a2, 64(s1)
                  sh           s8, -64(s1)
                  sll          gp, a2, t4
                  sra          t1, tp, s5
                  sb           s5, 59(s1)
                  lb           a1, 36(s1)
                  auipc        a2, 614135
                  lbu          t3, -51(s1)
                  sltu         s7, a0, a2
                  and          s2, s6, a7
                  lb           s8, 17(s1)
                  or           a1, s10, s8
                  slli         a7, s9, 13
                  xori         t2, s1, -180
                  xori         zero, a3, 791
                  lbu          a1, 15(s1)
                  sb           s8, 25(s1)
                  sb           s3, -4(s1)
                  xor          t6, s10, tp
                  addi         s5, s2, -1048
                  slt          s11, a0, s2
                  lhu          t6, 54(s1)
                  sll          gp, a7, t3
                  lb           s8, -21(s1)
                  sb           s9, -58(s1)
                  sra          s7, s0, t4
                  addi         a2, s2, -1113
                  sb           a1, -42(s1)
                  sh           a4, -46(s1)
                  sb           a4, -19(s1)
                  sltu         s6, a0, s4
                  lbu          s7, 11(s1)
                  and          ra, s2, t2
                  lbu          a7, -53(s1)
                  sw           s3, 36(s1)
                  lhu          t5, 34(s1)
                  sltiu        ra, a0, 1980
                  lb           a7, 42(s1)
                  ori          s2, s11, 899
                  lbu          s3, -25(s1)
                  ori          s11, ra, -1640
                  lb           s7, -28(s1)
                  sll          a6, t6, s0
                  sh           a6, -46(s1)
                  slti         t1, s3, -1175
                  sw           zero, 20(s1)
                  andi         s6, s2, 74
                  sh           a5, 44(s1)
                  lb           a0, -4(s1)
                  lbu          t3, 8(s1)
                  nop
                  sll          t5, t2, a1
                  sb           s0, 34(s1) #end riscv_load_store_rand_instr_stream_2
                  bge          t2, s3, 109f
109:              lui          ra, 205033
                  ori          t6, s4, -496
                  srai         a0, t3, 12
                  xor          sp, a5, s4
113:              srl          s4, s4, ra
114:              or           zero, t4, a0
                  xor          t0, s1, s6
                  srli         a3, s8, 6
                  ori          a1, t0, -1472
                  auipc        sp, 259297
                  sltiu        s6, t1, -146
                  auipc        a3, 727278
                  or           a1, s8, a5
                  beq          s2, ra, 128f
                  srli         a4, t5, 17
                  sub          t1, t2, zero
                  slti         a0, a1, 1633
                  sub          s1, a4, s3
                  srli         s11, a1, 21
128:              add          a6, s0, s11
                  addi         s11, s10, 462
                  slti         t0, a0, 1951
                  andi         ra, t0, -1896
                  slti         t0, t4, 840
                  add          s11, s3, s10
                  auipc        t1, 772805
                  nop
                  lui          a3, 1034853
                  bltu         t0, t1, 145f
                  sll          ra, t5, a1
                  bge          t3, t4, 144f
                  blt          t5, a1, 144f
                  slt          s8, s9, a1
                  xor          s8, t4, sp
                  and          sp, a0, ra
144:              sltu         s3, a2, t4
145:              beq          s11, s4, 158f
                  andi         a6, ra, -1932
                  blt          s6, a0, 160f
                  add          s7, a5, a3
                  slli         s9, a1, 19
                  sll          s4, s9, t5
                  or           gp, a0, gp
                  bge          s4, s3, 163f
                  beq          a2, tp, 173f
                  and          sp, s6, a6
                  auipc        s7, 371966
                  bge          t2, t3, 171f
                  add          a1, s1, a2
158:              or           s2, s8, s10
                  bne          a6, tp, 170f
160:              slt          t0, t3, a3
                  addi         a4, t4, 866
                  ori          t5, s1, 72
163:              slti         t1, t3, 1690
                  andi         t6, a3, -990
                  slli         a2, t6, 2
                  sub          s3, a6, t1
                  bltu         t3, s2, 181f
                  lui          s11, 66189
                  slt          a2, s4, s6
170:              sltiu        s3, a7, -317
171:              srl          zero, gp, s11
                  bne          ra, a1, 180f
173:              and          a2, s2, gp
                  xori         gp, gp, 1085
                  slti         s2, a2, -1272
                  sltiu        a2, a3, -1073
                  auipc        t3, 197110
                  blt          s4, s1, 197f
                  sltiu        t3, t1, -465
180:              sra          a6, s6, s9
181:              xor          ra, s0, a1
                  sltu         ra, zero, gp
                  or           s7, t2, s2
                  slli         a7, s1, 11
                  auipc        a7, 993192
                  nop
                  sll          zero, t0, s6
                  xor          s10, a7, t0
                  bne          a4, zero, 191f
                  addi         a4, s6, -1086
191:              sub          s8, ra, s4
                  nop
                  srai         s4, s9, 31
                  blt          s5, s7, 206f
                  lui          t2, 905634
                  bge          a2, ra, 199f
197:              slli         a2, s11, 13
                  lui          s8, 341603
199:              bne          sp, s3, 201f
                  sltiu        s3, zero, 496
201:              srai         a6, sp, 12
                  xori         zero, s2, 1266
                  sra          s0, s7, t5
                  andi         s11, a5, -828
                  add          a3, sp, t6
206:              ori          s2, s9, 1213
                  srli         t3, t2, 6
                  bgeu         s1, t4, 219f
                  sll          s3, a7, t4
                  bne          zero, gp, 223f
                  beq          s4, a2, 224f
                  sltu         ra, a7, s6
                  slt          gp, t4, s10
                  auipc        s9, 579725
                  nop
                  sub          t1, s4, t3
                  sll          s0, t0, s4
                  xori         a2, a6, 1011
219:              xori         a7, s7, -638
                  sltiu        zero, tp, -1307
                  xori         s1, s2, 1130
                  blt          a2, a1, 230f
223:              sltu         t0, s5, ra
224:              andi         ra, s9, -1715
                  ori          a3, s2, -848
                  sll          ra, s0, a1
                  auipc        s10, 849181
                  add          a0, s10, a0
                  bgeu         a2, gp, 231f
230:              ori          t1, a2, -1325
231:              slli         t5, zero, 22
                  sll          sp, t3, ra
                  sub          s11, tp, t1
                  bne          s2, a7, 254f
                  add          t2, s3, s6
                  addi         s0, s5, 47
                  bltu         t1, zero, 257f
                  slt          s6, t5, zero
                  srai         ra, s1, 31
                  bge          zero, t2, 245f
                  lui          t3, 396129
                  or           t3, a3, a3
                  ori          s5, ra, 1223
                  andi         a3, a0, -1454
                  nop
                  srai         t6, sp, 14
                  andi         s7, t4, -1269
sub_5_j10:        jal          s0, sub_6 #jump sub_5 -> sub_6
                  nop
                  nop
                  blt          s8, s6, 249f
                  bge          a2, sp, 251f
245:              srai         s1, s10, 3
                  bge          ra, s10, 265f
                  bge          tp, tp, 259f
                  sub          sp, s4, s5
249:              srli         gp, t2, 4
                  bge          a2, s7, 264f
251:              sra          s7, s4, t3
                  sltiu        zero, tp, -1720
                  lui          ra, 269638
254:              bgeu         t6, gp, 271f
                  srl          t5, a3, t6
                  slli         t3, s0, 3
257:              sub          gp, s4, a7
                  bne          s10, s6, 266f
259:              srai         s3, s1, 0
                  sltiu        a0, t3, -343
                  bltu         a3, s10, 280f
                  sltiu        s3, s0, -59
                  add          t1, t3, a3
264:              and          a4, t3, zero
265:              slli         t5, tp, 22
266:              andi         s4, a0, -1364
                  srai         s1, a1, 14
                  ori          t5, a7, -999
                  blt          s10, s10, 280f
                  sra          a0, t6, a7
271:              srai         t6, t5, 3
                  bltu         s2, s8, 285f
                  slti         s6, t6, -1148
                  slli         s6, a3, 5
                  blt          tp, a5, 276f
276:              sltiu        a4, sp, 168
                  blt          s3, t4, 295f
                  ori          a7, a3, 599
                  lui          ra, 627967
280:              srai         s2, a2, 14
                  bgeu         s1, sp, 285f
                  and          sp, s11, a6
                  or           t2, ra, t1
                  add          s10, t3, a0
285:              srli         ra, a5, 20
                  sltiu        s11, s8, 574
                  xor          s5, s6, t6
                  sltu         t5, s3, t6
                  bne          s9, t0, 300f
                  nop
                  addi         a7, a1, 1280
                  sll          s11, t4, sp
                  xor          t1, s6, a1
                  and          a1, s7, a1
295:              add          t5, s4, t0
                  xor          s8, a6, s10
                  add          a0, s4, a4
                  auipc        a4, 121450
                  and          s3, a1, s1
300:              srl          s6, s11, s6
                  srl          a6, t5, s9
                  slt          t0, a7, t3
                  sub          t2, t1, tp
                  auipc        s7, 199815
                  srl          gp, zero, s5
                  bltu         t6, s0, 321f
                  srli         s11, ra, 7
                  slti         sp, ra, -166
                  addi         s0, s0, -492
                  srai         a3, s9, 25
                  srai         s9, a7, 17
                  bltu         t1, s5, 321f
                  sll          t3, t0, t3
                  addi         t1, zero, 685
                  beq          a7, s5, 334f
                  sltu         ra, t4, a0
                  blt          zero, t6, 323f
                  srli         s1, a5, 23
                  slti         a1, gp, 1856
                  andi         t6, t1, -2027
321:              blt          s10, a4, 336f
                  bltu         s6, gp, 325f
323:              sra          s3, ra, s3
                  xori         a7, a2, -1351
325:              blt          ra, sp, 345f
                  xori         s5, t5, -1870
                  srl          s9, s5, t1
                  sub          s3, a6, s0
                  bne          gp, a2, 348f
                  bge          tp, s3, 343f
                  bne          s8, a7, 333f
                  addi         s5, s3, -755
333:              srli         a7, a2, 15
334:              andi         s3, a3, -1545
                  bne          tp, s2, 353f
336:              srai         s3, a1, 1
                  and          a3, s6, s0
                  slt          s11, s5, ra
                  nop
                  sub          s8, s8, s5
                  or           s4, t5, s2
                  xori         t0, a0, -713
343:              auipc        gp, 1014159
                  lui          a2, 119579
345:              add          s1, a6, t2
                  nop
                  auipc        s3, 258188
348:              xori         a2, t0, -1852
                  xori         s11, a4, 496
                  srai         s6, s5, 18
                  xori         t0, t1, 1852
                  sltiu        s7, s4, -1981
353:              sltu         s4, a6, sp
                  andi         a2, a6, 906
                  bgeu         s5, s4, 372f
                  or           sp, s3, s10
                  bne          a5, t1, 366f
                  lui          t2, 14323
                  blt          t3, t2, 370f
                  beq          a6, a0, 368f
                  sltiu        t6, tp, 1186
                  srl          s10, t5, gp
                  srli         t2, s10, 5
                  xor          t2, s6, gp
                  sub          a6, t1, s0
366:              or           t2, t0, s4
                  bne          s10, t5, 371f
368:              nop
                  bge          t5, s9, 376f
370:              slli         t0, s2, 21
371:              or           t6, s11, a3
372:              slli         s0, t0, 7
                  xor          s7, a5, s11
                  lui          t1, 756236
                  add          t6, a6, s2
376:              srai         s9, t4, 1
                  or           ra, a0, gp
                  sltiu        sp, a1, -1819
                  bne          s3, t3, 387f
                  nop
                  sltu         s4, s4, s9
                  nop
                  bne          a4, t5, 402f
                  or           t1, t1, s5
                  sltiu        sp, tp, -940
                  bgeu         tp, t5, 406f
387:              sltu         t5, s10, t0
                  slti         a2, a7, 1927
                  blt          s3, s6, 390f
390:              sra          sp, s2, s2
                  xor          ra, a0, t0
                  xor          t5, gp, ra
                  sltiu        t6, s0, 1194
                  bne          s4, zero, 406f
                  srli         a6, t5, 5
                  xor          s0, s0, a1
                  slli         t0, t5, 2
                  add          gp, t3, s7
                  slt          s8, s1, ra
                  add          s8, s8, s10
                  srli         a0, t3, 31
402:              sub          a2, s6, a3
                  or           s3, s6, gp
                  auipc        t3, 649816
                  lui          s7, 831920
406:              sra          s5, zero, s7
                  addi         s1, a4, -1089
                  srl          s6, t6, t5
                  sra          s11, s1, a4
                  and          zero, tp, a6
                  blt          s5, zero, 424f
                  ori          s6, s11, -151
                  blt          ra, a3, 415f
                  srli         t1, s2, 31
415:              blt          s0, s11, 428f
                  srl          s3, s3, a0
                  xori         a3, s3, 937
                  ori          s7, s4, -440
                  bltu         sp, a3, 430f
                  sub          s5, s8, s3
                  lui          a6, 334266
                  slt          t3, t3, s1
                  lui          s3, 339126
424:              xori         a2, zero, 922
                  bltu         t5, s5, 427f
                  sltu         zero, ra, t4
427:              bltu         s5, zero, 438f
428:              sub          sp, s8, s10
                  bltu         t2, t5, 434f
430:              xor          s5, s2, a0
                  slt          zero, s4, t1
                  sltu         s11, s6, s4
                  xor          t5, zero, s7
434:              sltiu        s10, s6, -503
                  and          t3, t2, a7
                  andi         t0, zero, 598
                  or           s10, s10, a4
438:              ori          a0, s6, -186
                  sltu         t6, a7, a0
                  beq          s7, tp, 448f
                  and          t3, s7, s4
                  lui          s0, 847547
                  bne          s9, a4, 455f
                  nop
                  bne          s8, ra, 459f
                  sra          t6, t2, gp
                  andi         s11, a2, 917
448:              or           t3, t3, s10
                  sltu         zero, a3, s9
                  lui          s11, 528390
                  sltu         s8, gp, zero
                  slti         t0, tp, 611
                  and          s1, s5, s9
                  slt          s6, a0, tp
455:              bgeu         s1, s11, 473f
                  slli         a4, s9, 10
                  add          t1, s11, tp
                  sra          s8, a4, s2
459:              sll          s3, t0, a6
                  addi         a7, s2, 1797
                  and          s6, a1, gp
                  srli         s0, s5, 4
                  bltu         ra, s9, 465f
                  or           s6, s9, a5
465:              srl          t2, s3, t0
                  lui          a0, 619579
                  slti         s2, t6, 1581
                  srli         gp, t6, 11
                  xori         t2, ra, -939
                  srai         a2, a3, 27
                  bgeu         t1, t2, 491f
                  and          a0, a7, t3
473:              xori         ra, s3, 1128
                  xori         zero, ra, -71
                  srl          s10, s9, t1
                  srai         s2, s0, 13
                  bne          t2, t0, 485f
                  sll          t2, t5, s4
                  nop
                  bge          s10, s9, 499f
                  sra          s1, a0, a5
                  andi         s4, s4, 747
                  xori         a3, t6, 904
                  or           s7, t4, a1
485:              sra          a3, ra, a1
                  sll          ra, zero, s8
                  sltu         a4, zero, a4
                  lui          zero, 373787
                  bne          s8, a7, 495f
                  bltu         a4, s0, 507f
491:              add          t1, a0, s4
                  beq          t4, tp, 495f
                  andi         a4, s5, -1267
                  auipc        a4, 45709
495:              sub          s4, a0, s5
                  sltu         s7, s5, s3
                  xor          s2, s0, ra
                  sltu         s0, a4, s8
499:              xori         t1, s6, 685
                  bltu         a2, s6, 507f
                  beq          gp, s0, 505f
                  auipc        s4, 1023982
                  add          s9, t4, s11
                  bltu         a6, a5, 517f
505:              slti         t2, s10, -433
                  or           t5, s11, s2
507:              slt          t5, a5, s9
                  bltu         t6, s9, 516f
                  lui          t5, 823195
                  srli         t1, t2, 7
                  blt          s1, t1, 523f
                  bne          t4, t6, 517f
                  blt          t6, s1, 533f
                  srai         s11, a2, 31
                  srl          t0, s10, s1
516:              slti         a0, a3, -993
517:              sub          ra, a1, t0
                  sltu         gp, s4, a1
                  nop
                  and          zero, a0, ra
                  sltiu        t1, s5, -2021
                  auipc        ra, 368469
523:              xor          s1, a7, s1
                  auipc        t0, 993616
                  bne          t0, zero, 527f
                  slti         t2, s7, 754
527:              nop
                  sub          s9, a0, a7
                  slti         s3, a4, -1640
                  bltu         t4, ra, 541f
                  srl          sp, t1, s5
                  beq          a4, s2, 543f
533:              sub          s4, tp, a1
                  sub          a0, a2, a1
                  srai         s11, s9, 7
                  auipc        a3, 349067
                  srli         s3, s10, 11
                  nop
                  and          a7, t2, t5
                  slt          ra, t4, gp
541:              slt          t3, a2, a7
                  add          a3, t5, s11
543:              srl          t6, t6, tp
                  srai         s3, a4, 19
                  srli         s5, tp, 6
                  bne          a3, t2, 547f
547:              bltu         a5, t1, 549f
                  slli         s5, a7, 9
549:              srl          a7, s9, sp
                  bgeu         sp, t6, 563f
                  auipc        s1, 1006868
                  bne          a0, tp, 560f
                  xori         zero, s8, 855
                  ori          s3, s11, -641
                  ori          t0, a1, -2028
                  srli         s6, t3, 5
                  sra          t3, s0, s1
                  xori         s4, a5, -816
                  ori          a1, s10, -202
560:              and          s3, s0, a6
                  slti         s0, gp, -749
                  srl          s10, a1, t6
563:              or           s4, s9, a6
                  srai         s2, s8, 9
                  srai         ra, s11, 18
                  auipc        s8, 103896
                  nop
                  la           s8, region_0+1135 #start riscv_load_store_rand_instr_stream_4
                  ori          s10, a1, 1672
                  lbu          s11, -12(s8)
                  srli         ra, s5, 16
                  sltiu        s10, t1, -676
                  nop
                  andi         a0, a3, 511
                  srli         a6, t5, 31
                  lb           s1, -10(s8)
                  ori          s9, sp, 183
                  addi         s11, a7, -365
                  slt          s11, a1, s4
                  lw           t3, -7(s8)
                  sub          s9, s8, s9
                  auipc        t0, 693553
                  lbu          t5, -2(s8)
                  sltu         t1, s9, gp
                  lhu          a4, 15(s8)
                  sltiu        t3, a0, 99
                  sra          ra, t6, a0
                  or           t1, t3, sp
                  nop
                  or           a3, a5, ra
                  sb           s4, -4(s8)
                  lbu          s4, -16(s8)
                  slti         a2, s9, 1617
                  srai         s1, zero, 9
                  sra          sp, a0, s7
                  sub          a7, s4, a7
                  sh           t5, 15(s8)
                  lb           a1, -15(s8)
                  slti         s4, gp, -669
                  addi         s2, sp, -94
                  lbu          gp, -4(s8)
                  sltu         s7, ra, a3
                  srli         a6, t2, 23
                  lb           t6, -6(s8)
                  srai         s2, s10, 30
                  lbu          a2, -5(s8)
                  or           s9, s5, s3
                  nop
                  lb           a1, 3(s8)
                  add          s9, a4, a7
                  lb           ra, 6(s8)
                  sb           s5, 8(s8)
                  lb           t3, -5(s8)
                  xori         t5, a1, -1748
                  lh           a7, 13(s8)
                  sb           t2, -5(s8) #end riscv_load_store_rand_instr_stream_4
                  addi         s5, a7, 1698
                  beq          s4, s0, 588f
                  andi         t1, t4, 1166
                  ori          a4, t1, -1831
                  xor          s9, s3, s5
                  xori         a2, s11, 1157
                  andi         t6, s4, -843
                  addi         s9, a0, -852
                  xori         s10, a5, 911
                  la           ra, sub_6
                  lui          s9, 490236
                  add          s3, s1, s1
                  slli         s4, a1, 12
                  addi         ra, ra, 447
                  bne          a7, s9, sub_5_j9 #branch to jump instr
                  srl          s8, s5, s9
sub_5_j9:         jalr         s0, ra, -446 #jump sub_5 -> sub_6
                  bge          t1, sp, 591f
                  slti         s7, s1, -153
                  add          t0, s2, t3
                  xori         s6, a5, -647
                  ori          a2, s4, -1243
                  sll          s1, a4, a1
                  sltu         a2, a3, sp
                  auipc        a7, 614740
                  sltiu        a7, a0, 554
                  beq          a0, a5, 604f
                  bne          a7, gp, 600f
                  slti         s3, s8, 1155
588:              xori         a7, t6, 283
                  bgeu         s2, t2, 598f
                  or           a7, s6, a7
591:              and          s9, t4, t0
                  bgeu         a3, t0, 603f
                  lui          s4, 752647
                  sll          s9, a5, s0
                  sltu         s3, a5, a5
                  nop
                  sll          s11, s10, s2
598:              sub          s9, t0, sp
                  slt          a6, s3, s5
600:              or           s11, s2, s1
                  and          s5, s6, s10
                  bltu         t1, s4, 614f
603:              xori         s3, s8, 264
604:              srli         s3, a6, 30
                  ori          zero, s0, -713
                  and          a4, s2, s11
                  lui          t0, 371959
                  srai         a2, t6, 23
                  sra          sp, a5, gp
                  blt          s3, s8, 623f
                  lui          s10, 210631
                  srl          s7, t3, zero
                  lui          a3, 2321
614:              sra          a4, s1, gp
                  nop
                  auipc        ra, 877979
                  sltiu        a0, a5, 747
                  bge          s2, s11, 631f
                  bge          t6, ra, 632f
                  slli         s10, tp, 4
                  sub          s1, s11, s10
                  slli         s8, s2, 23
623:              sll          s11, s6, a5
                  sltiu        a2, tp, -733
                  addi         t6, s6, -993
                  slli         t5, s4, 25
                  slt          t3, a5, s4
                  nop
                  blt          a4, s9, 631f
                  bge          s8, zero, 631f
631:              nop
632:              bgeu         s1, s7, 638f
                  slt          a0, a7, a5
                  auipc        t6, 626913
                  slt          s0, s10, s3
                  srai         s0, a2, 11
                  bne          s11, t3, 639f
638:              bne          t1, s4, 649f
639:              sra          s1, a7, s7
                  srli         s10, a3, 16
                  or           a4, s9, s7
                  srl          a7, a5, t0
                  srai         a2, t2, 14
                  and          a3, s4, a1
                  slli         s7, a1, 23
                  xor          s11, s10, s0
                  sltu         t2, t2, s6
                  srli         s5, sp, 17
649:              sltiu        zero, s8, -364
                  blt          a5, s0, 652f
                  sltu         t3, s0, t2
652:              bgeu         t4, s9, 663f
                  beq          sp, t4, 661f
                  sra          a3, t4, t2
                  addi         gp, s10, 256
                  srai         s10, t1, 25
                  nop
                  beq          s0, a6, 666f
                  sll          s7, a2, s6
                  bltu         t2, t6, 679f
661:              blt          s10, t3, 669f
                  srli         t0, a1, 7
663:              slli         s6, t5, 9
                  slli         sp, t5, 2
                  auipc        a6, 120160
666:              add          a1, s6, s1
                  slli         s9, s11, 22
                  ori          s4, t5, -425
669:              beq          t4, t4, 676f
                  add          a1, s5, a6
                  and          s11, s5, a2
                  bgeu         s3, a7, 675f
                  bltu         s10, t1, 684f
                  add          t3, a5, t3
675:              srai         s3, t2, 11
676:              andi         ra, a1, 1315
                  bne          s2, s0, 694f
                  sra          s7, s1, a6
679:              xor          t0, tp, s1
                  sub          t3, a1, t0
                  sltiu        a3, a3, -582
                  addi         s10, s7, 1276
                  and          s3, s9, t0
684:              xori         s2, t0, 429
                  slli         s10, s2, 28
                  lui          a3, 1015365
                  sltiu        t2, s3, -1996
                  bgeu         t4, s4, 697f
                  auipc        sp, 807053
                  addi         t5, s4, -1011
                  slli         a7, s6, 14
                  bge          s2, gp, 707f
                  and          a1, s1, t3
694:              xor          s3, a4, t6
                  slti         a6, t5, -1308
                  bge          a7, s8, 715f
697:              lui          s2, 770034
                  andi         s10, tp, -458
                  srai         s11, s1, 1
                  slti         s1, a4, -658
                  nop
                  lui          zero, 241627
                  blt          gp, a7, 716f
                  and          s3, s9, a5
                  and          t2, s4, s8
                  sltu         t3, t3, a4
707:              slt          a4, t4, t5
                  bge          zero, a0, 712f
                  andi         t0, a0, 1581
                  addi         gp, tp, 2021
                  slt          s7, s10, a1
712:              bltu         t6, sp, 731f
                  bltu         a7, s6, 731f
                  sub          s8, s2, t5
715:              ori          t2, a7, -1908
716:              lui          a1, 366697
                  bgeu         a1, s3, 737f
                  sub          t0, t1, s5
                  slti         s11, s2, 1699
                  slli         ra, s8, 17
                  addi         ra, s3, -1668
                  sltiu        gp, s4, 431
                  sub          a7, t6, t6
                  nop
                  slt          gp, s2, a7
                  blt          t4, s5, 731f
                  sub          s7, s6, s3
                  srai         s7, s7, 10
                  sltiu        s4, a5, 1136
                  or           s10, s4, t3
731:              slli         gp, a1, 0
                  sll          a1, t0, t5
                  lui          t0, 736230
                  auipc        t1, 970457
                  ori          s7, s9, -791
                  sltiu        a1, s0, -1790
737:              slli         a6, a6, 7
                  sltiu        t5, a5, -393
                  beq          a4, t1, 753f
                  xor          t3, a6, s4
                  or           gp, t4, s3
                  auipc        a7, 1013242
                  slti         s6, gp, -1572
                  bltu         s0, s10, 756f
                  add          s11, a3, t2
                  sub          s3, s9, a1
                  add          a7, s7, a2
                  add          a0, t1, a1
                  srli         t5, s9, 27
                  srai         s4, a0, 16
                  addi         t2, s7, -1533
                  srli         s6, a0, 3
753:              andi         s10, t4, -1099
                  add          sp, s5, a7
                  ori          a4, s9, 188
756:              blt          s1, a1, 776f
                  addi         s5, a0, -1352
                  xor          s7, s11, tp
                  bge          a2, a6, 771f
                  srai         s6, zero, 14
                  sltiu        s3, a2, 474
                  srli         t3, t4, 23
                  srli         s10, a7, 29
                  srli         t2, gp, 7
                  andi         a7, ra, 1220
                  bge          s2, gp, 771f
                  nop
                  xor          a3, ra, a0
                  sltiu        t1, s7, -1597
                  or           t5, tp, s3
771:              bltu         s2, s11, 783f
                  sra          s2, a1, ra
                  bgeu         a5, s8, 787f
                  or           s4, s6, s10
                  auipc        s10, 570980
776:              sub          a2, a1, tp
                  bltu         s5, s9, 779f
                  slt          t5, a5, s3
779:              xor          a7, a6, s1
                  sll          sp, s0, t1
                  slli         s1, s7, 7
                  and          t1, tp, sp
783:              xor          t6, s6, t3
                  sub          t3, s2, zero
                  xori         zero, s6, -1760
                  and          a1, s5, s6
787:              slt          a3, t6, t4
                  sltiu        s10, s1, -384
                  sltiu        t5, s4, 739
                  addi         ra, sp, 1051
                  slti         a7, s10, 453
                  sll          s2, t0, a5
                  nop
                  and          s0, a6, t3
                  xor          a0, t1, a3
                  sub          s7, zero, s1
                  srli         s8, s8, 7
                  andi         s4, t1, -160
                  blt          t6, a3, 801f
                  xor          a3, s1, s4
801:              bgeu         ra, a2, 808f
                  slt          a1, tp, t6
                  add          t5, t4, zero
                  sub          a3, a6, t3
                  addi         a3, zero, 64
                  bltu         t2, a3, 815f
                  nop
808:              bltu         s3, t4, 828f
                  xor          s0, s3, ra
                  and          s7, s5, t0
                  auipc        s2, 216805
                  xor          s5, a6, a4
                  sra          s11, a0, t1
                  srli         sp, s2, 16
815:              sra          gp, t1, sp
                  slti         ra, s9, -941
                  auipc        s10, 873608
                  sub          s10, t2, tp
                  ori          a7, s11, -132
                  sll          gp, s4, t0
                  xori         zero, sp, -1664
                  srai         a2, s5, 24
                  bgeu         a1, s6, 838f
                  or           t5, t1, t5
                  srai         a4, s5, 0
                  sra          s7, s0, s6
                  xor          t6, t5, t4
828:              lui          t3, 205046
                  bne          s5, a5, 841f
                  srl          s10, t6, s7
                  slli         t6, s6, 29
                  addi         a7, t5, 1603
                  bge          gp, t1, 841f
                  srli         zero, s3, 9
                  sltu         s11, a7, t2
                  bge          t2, t1, 841f
                  lui          t1, 45226
838:              srl          a4, t6, a2
                  srli         s7, t3, 4
                  add          s1, t3, s2
841:              nop
                  addi         t3, a6, -1742
                  lw           s0, 4(t4)
                  addi         t6, s11, -469
                  addi         t4, t4, 12
                  andi         a4, s10, -538
1133:             addi x28, x8, 1
1133:             jalr x28, x28, 0
sub_4:            and          s10, a2, s8
                  and          s6, s0, a3
                  and          s11, a7, s0
                  sub          t2, a6, s3
                  add          a6, t4, s3
                  addi         t4, t4, -44
                  sw           s0, 4(t4)
                  nop
                  ori          a2, a0, -460
                  add          gp, a4, t2
                  slt          a1, s1, a0
                  lui          s7, 669748
                  and          gp, a6, t1
                  or           s7, s11, a6
                  bgeu         t1, ra, 21f
                  sll          a4, t4, t5
                  sra          s11, ra, s8
                  beq          t2, s0, 22f
                  and          a3, s0, sp
                  ori          t3, t5, 907
                  xor          s0, t4, a1
                  slt          s2, t0, a4
                  sra          s5, t0, t6
                  add          s6, a5, t1
                  or           t2, s11, ra
                  bge          s7, a4, 25f
                  slt          s5, s4, t2
                  addi         t2, ra, 276
                  blt          t6, t4, 26f
21:               xori         s0, s4, 693
22:               nop
                  sll          a7, s10, a3
                  slti         s5, a3, -836
25:               slli         a3, t5, 29
26:               slli         s5, a3, 13
                  sll          a4, s0, a2
                  bne          t4, t1, 31f
                  sra          s5, s2, t4
                  andi         zero, s11, -1082
31:               srli         s0, s6, 18
                  lw           s0, 4(t4)
                  srai         t1, gp, 3
                  addi         t4, t4, 44
                  srli         s6, s10, 17
                  slli         s1, s3, 20
                  sltiu        a0, t5, -601
46:               addi x17, x8, 0
46:               jalr x17, x17, 0
sub_6:            sll          s10, t2, s8
                  addi         t4, t4, -16
                  sub          a7, a2, a2
                  sw           s0, 4(t4)
                  srai         s4, s4, 27
                  sll          a3, s7, s4
                  slti         a2, t2, -1768
                  slt          a7, gp, s2
                  srai         s3, s2, 14
                  xor          a7, a2, s11
                  la           s11, region_0+121 #start riscv_load_store_rand_instr_stream_6
                  nop
                  srli         sp, t0, 14
                  sltu         zero, t6, t6
                  sb           ra, 8(s11)
                  sb           s9, 48(s11)
                  sltu         t2, s1, gp
                  sh           t3, 47(s11)
                  lbu          a7, 5(s11)
                  lhu          s2, -3(s11)
                  lbu          a4, -14(s11)
                  lb           a1, 29(s11)
                  slli         a7, s7, 1
                  srli         a4, sp, 14
                  lbu          ra, -14(s11)
                  sltu         t5, t0, a2
                  lb           a3, -40(s11)
                  lhu          s8, 21(s11)
                  sh           a6, -63(s11)
                  sh           s6, 25(s11)
                  auipc        a7, 27649
                  lbu          t1, -50(s11)
                  lb           s5, 34(s11)
                  sw           a1, 11(s11)
                  lb           a6, 15(s11)
                  sb           a1, 0(s11)
                  sll          s7, t3, ra
                  lhu          s1, 47(s11)
                  slt          a3, tp, s8
                  xor          s1, s4, t3
                  sra          s5, a6, gp
                  sub          s7, s10, ra
                  lb           a2, 4(s11)
                  sltu         s7, s8, s8
                  sb           tp, 40(s11)
                  lb           a3, 57(s11)
                  lb           s8, -34(s11)
                  sltiu        sp, a6, 1049
                  lbu          s4, -4(s11)
                  srai         s9, t2, 28
                  lb           t3, -30(s11)
                  sb           zero, 32(s11) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_1+1649 #start riscv_load_store_rand_instr_stream_14
                  lbu          sp, 136(ra)
                  or           t2, s8, s1
                  auipc        a6, 724927
                  lw           t0, -81(ra)
                  srli         a7, zero, 12
                  lb           a3, 201(ra)
                  sh           a0, -105(ra)
                  slt          a3, s0, t2
                  xori         s4, t5, -289
                  or           s3, a7, a4
                  lbu          s8, -48(ra)
                  lb           gp, -72(ra)
                  sll          t0, t2, t3
                  srl          a7, a5, a2
                  lbu          sp, -174(ra)
                  lbu          s3, -40(ra)
                  lh           s2, -65(ra)
                  add          s4, t1, s11
                  lbu          s6, 134(ra)
                  andi         zero, s11, -861
                  nop
                  sb           t5, 34(ra)
                  sltu         a0, s1, s1
                  lbu          s9, 26(ra)
                  lb           a4, -197(ra)
                  lbu          a0, 120(ra)
                  sltiu        s9, s4, 1247
                  sb           gp, -100(ra)
                  and          s3, a2, t4
                  lhu          t0, 255(ra)
                  lh           s4, 5(ra)
                  sb           s5, -90(ra)
                  lhu          zero, -109(ra)
                  lbu          s10, -156(ra)
                  xor          zero, s11, t5
                  lbu          gp, 211(ra)
                  lb           t2, 165(ra)
                  sh           ra, 141(ra)
                  andi         a1, a0, -1346
                  lbu          t3, -140(ra)
                  slti         gp, gp, 347
                  lbu          s7, -247(ra) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_1+1513 #start riscv_load_store_rand_instr_stream_5
                  lb           zero, 46(sp)
                  lbu          s6, 246(sp)
                  lbu          a2, 178(sp)
                  ori          s3, s11, -1515
                  lhu          t0, 7(sp)
                  or           a0, t0, s11
                  nop
                  sb           zero, 98(sp)
                  add          s4, s8, a7
                  lbu          a0, -218(sp)
                  auipc        t6, 586725
                  slti         t5, tp, 689
                  lbu          zero, -125(sp)
                  add          zero, s2, a3
                  sb           t0, 204(sp)
                  lbu          s10, -18(sp)
                  sra          s7, ra, s10
                  nop
                  sltiu        s6, a0, -707
                  sltiu        a1, tp, -782
                  xor          a1, s0, a1
                  sb           s4, -152(sp)
                  xori         ra, s10, 1351
                  lb           s10, -68(sp)
                  lb           s1, 197(sp)
                  or           t6, tp, tp
                  auipc        t1, 728558
                  sll          a0, t0, s5
                  sb           sp, 108(sp)
                  sh           t5, 175(sp)
                  sb           s7, 150(sp)
                  ori          t3, a1, 1995
                  sb           gp, -194(sp)
                  lbu          s0, -48(sp)
                  auipc        s4, 703707
                  ori          s0, t2, -1130
                  lb           s0, 146(sp)
                  slt          zero, s6, s6
                  sw           s4, -73(sp)
                  lbu          s10, -194(sp)
                  srai         s6, t3, 22
                  srli         t1, t4, 31
                  xor          a2, a0, ra
                  lbu          a4, -25(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1262 #start riscv_load_store_rand_instr_stream_11
                  sub          a4, a1, s9
                  sltu         s8, s1, s0
                  slli         s10, s0, 2
                  lbu          s11, -8(sp)
                  lhu          a6, 2(sp)
                  and          a7, a7, t3
                  sub          s5, s9, a5
                  addi         t3, s7, 1659
                  sb           s10, 12(sp)
                  lb           s4, -14(sp)
                  sb           s4, 15(sp)
                  ori          a2, a4, 1234
                  sub          a6, s10, t6
                  lb           t1, 1(sp)
                  lb           s5, -1(sp)
                  lbu          t1, 3(sp)
                  or           a0, s11, s3
                  sb           a6, 3(sp)
                  xor          s7, s1, t4
                  lb           t1, 9(sp)
                  lbu          t0, 3(sp)
                  slti         s5, t4, 1749
                  lw           t2, 2(sp)
                  andi         s5, s5, 23
                  lh           a4, -14(sp)
                  lb           a1, 13(sp)
                  lbu          s10, 4(sp)
                  sb           tp, -14(sp)
                  srl          s6, gp, t4
                  sb           a6, -3(sp)
                  lbu          s8, 5(sp)
                  sb           sp, 5(sp)
                  lh           a1, -14(sp)
                  srl          t2, s3, a5
                  sb           t4, 12(sp)
                  srai         s6, t5, 24
                  sb           a7, 0(sp)
                  lh           ra, 16(sp)
                  sltiu        t3, t5, 1153
                  slt          s0, a3, a3
                  sltu         s11, s3, s6
                  addi         s3, s4, 310
                  sltiu        gp, s1, -944
                  auipc        a6, 446973
                  slti         a4, a3, 1075
                  nop
                  sub          s9, a3, s2
                  lhu          s8, 0(sp)
                  lbu          s8, 9(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+904 #start riscv_load_store_rand_instr_stream_8
                  sb           gp, 560(sp)
                  and          s9, t4, ra
                  lw           s5, 248(sp)
                  sb           a6, 433(sp)
                  andi         s6, s6, -2007
                  sb           t2, -889(sp)
                  andi         a4, s9, 1480
                  and          a3, t0, s11
                  lhu          s0, 1070(sp)
                  sb           t2, -667(sp)
                  lh           s4, -404(sp)
                  sh           tp, 1060(sp)
                  or           s0, t4, a7
                  or           zero, sp, a1
                  addi         s10, a4, 1938
                  lh           a6, 330(sp)
                  lbu          t6, -99(sp)
                  xor          a3, sp, a1
                  auipc        t0, 146920
                  xor          s2, s0, s0
                  lui          t2, 4812
                  slli         gp, t5, 0
                  or           gp, t6, a5
                  srli         s10, t1, 12
                  sb           a3, -446(sp)
                  lb           s9, 607(sp)
                  lhu          s3, -584(sp)
                  srai         s4, sp, 19
                  srai         t2, s0, 21
                  lb           s2, 417(sp)
                  sb           s10, -275(sp)
                  addi         t6, t3, -1986
                  sw           t6, -4(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s11, region_1+1998 #start riscv_load_store_rand_instr_stream_9
                  lhu          s9, -236(s11)
                  and          a4, zero, t6
                  lh           a3, -234(s11)
                  or           gp, a1, a7
                  lbu          t3, -79(s11)
                  sh           s9, -88(s11)
                  sltu         s10, s6, s10
                  xor          t5, s1, s6
                  nop
                  lh           sp, -28(s11)
                  xori         a6, a4, -1161
                  lb           gp, -75(s11)
                  lh           ra, -140(s11)
                  sw           a6, -62(s11)
                  sb           s4, -217(s11)
                  sltu         a6, t6, sp
                  sb           t1, -248(s11)
                  srai         a0, s10, 16
                  sb           t3, -35(s11)
                  sltu         t1, s0, t5
                  slli         zero, s11, 25
                  sltu         s4, a3, s0
                  and          t1, gp, s10
                  auipc        a1, 355691
                  lb           s9, -168(s11)
                  andi         t3, a4, 1601
                  sb           tp, -88(s11)
                  lb           s7, -223(s11)
                  addi         a7, s0, -448
                  lhu          a4, -40(s11)
                  srl          t6, s5, s0
                  sh           s9, -92(s11)
                  lbu          t0, -39(s11)
                  andi         a1, s8, -1376
                  nop
                  lbu          s7, -178(s11)
                  srai         s8, t1, 12
                  lb           s5, -61(s11)
                  sltu         zero, t6, s3
                  lb           s5, -228(s11)
                  auipc        s0, 412564
                  lb           zero, -45(s11)
                  sh           a3, -50(s11)
                  slli         zero, a5, 12
                  lb           a4, -89(s11)
                  sltiu        s9, sp, -1552
                  sh           a2, -68(s11)
                  sltu         a4, s3, s0
                  lb           a3, -88(s11)
                  srli         a6, s5, 2
                  lb           t1, 1(s11)
                  lb           zero, -201(s11)
                  lui          s9, 454229
                  lbu          t2, -215(s11)
                  sra          a7, s11, a5
                  sw           s3, -154(s11) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+321 #start riscv_load_store_rand_instr_stream_0
                  lb           t5, -30(sp)
                  srli         gp, t1, 7
                  slti         a2, s5, -1601
                  sltu         t3, s7, s9
                  slt          s9, a0, a1
                  sb           s1, -140(sp)
                  xor          s7, t5, s0
                  lbu          zero, 91(sp)
                  addi         ra, tp, 1258
                  sb           t4, -24(sp)
                  lhu          t1, -173(sp)
                  srli         s11, s8, 16
                  lb           t2, 67(sp)
                  addi         t0, a1, -467
                  sb           gp, 63(sp)
                  sh           gp, -75(sp)
                  slli         t3, a5, 6
                  lb           a7, -215(sp)
                  sltu         t1, t0, s10
                  srl          s1, t6, zero
                  sltiu        s4, a7, -1616
                  auipc        ra, 510471
                  sll          s9, a1, t2
                  lui          a7, 28077
                  or           zero, a3, ra
                  lbu          s2, 45(sp)
                  sb           t5, -96(sp)
                  lbu          zero, 194(sp)
                  lhu          zero, 69(sp)
                  lhu          a3, 195(sp)
                  sb           s5, 242(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_1+863 #start riscv_load_store_rand_instr_stream_13
                  sb           t4, 90(s0)
                  sb           t2, -104(s0)
                  add          s2, s9, t2
                  sh           s11, 49(s0)
                  sb           t6, -64(s0)
                  lb           s8, 93(s0)
                  or           a6, t2, a5
                  lbu          s9, 76(s0)
                  sh           zero, -77(s0)
                  sll          t6, t1, a3
                  sra          s1, s11, a4
                  sb           s5, 32(s0)
                  sltu         t2, s6, a7
                  lb           s3, 90(s0)
                  lb           a6, 154(s0)
                  sb           s8, 54(s0)
                  lbu          a3, 157(s0)
                  lui          a4, 217085
                  add          a1, s9, s0
                  lbu          a1, -18(s0)
                  lbu          a3, -31(s0)
                  or           s6, s1, s1
                  lh           t2, 179(s0)
                  lbu          s5, 224(s0)
                  sh           ra, -23(s0)
                  lb           s7, 116(s0)
                  lb           a3, -75(s0)
                  sll          a3, s1, a2
                  add          s8, t6, a6
                  lbu          s5, 88(s0)
                  lbu          s9, 142(s0)
                  lbu          a0, 119(s0)
                  lb           a7, 132(s0)
                  add          t6, a3, s6
                  lb           s8, -228(s0)
                  sh           t5, 163(s0) #end riscv_load_store_rand_instr_stream_13
                  la           gp, region_1+769 #start riscv_load_store_rand_instr_stream_10
                  auipc        s9, 130861
                  lui          a7, 59065
                  lbu          a4, 3(gp)
                  sb           t4, 12(gp)
                  sb           a5, -15(gp)
                  slli         s6, s7, 9
                  lw           a3, 3(gp)
                  srl          t2, s7, s3
                  srl          zero, t1, s9
                  sh           t0, -15(gp)
                  add          zero, t1, s11
                  sb           s9, -2(gp)
                  lbu          t2, 1(gp)
                  sb           a3, -4(gp)
                  lbu          s4, -3(gp)
                  and          s2, a7, t5
                  sb           s11, -12(gp)
                  lbu          t5, 16(gp)
                  lbu          t5, 6(gp)
                  lbu          sp, 0(gp)
                  sb           t2, 2(gp)
                  addi         a3, tp, -894
                  lhu          sp, 7(gp)
                  srai         t5, s7, 5
                  lh           t5, -1(gp)
                  lhu          s3, -7(gp)
                  addi         a6, sp, 527
                  sltu         a6, a3, a7
                  sh           s11, -15(gp)
                  ori          s8, sp, -1023
                  slli         sp, s6, 15
                  sb           s3, -16(gp)
                  lbu          s4, -15(gp)
                  srai         a6, gp, 1
                  addi         s11, t6, -545
                  add          s11, ra, s9
                  lh           s3, -3(gp)
                  lb           a7, 10(gp)
                  lhu          t6, -3(gp)
                  lw           sp, -13(gp)
                  andi         s8, gp, -1224
                  lb           a7, 13(gp)
                  lbu          t2, 4(gp)
                  lb           sp, -2(gp)
                  xor          sp, s7, t6
                  ori          t6, t0, -1988
                  add          a0, s2, s6
                  lbu          s8, 12(gp)
                  lb           s8, -1(gp)
                  lbu          t1, 2(gp) #end riscv_load_store_rand_instr_stream_10
                  la           s11, region_1+1442 #start riscv_load_store_rand_instr_stream_3
                  lb           t2, -101(s11)
                  sub          gp, t5, a5
                  slli         t5, s7, 28
                  sb           a0, 104(s11)
                  lbu          s3, -208(s11)
                  lui          a0, 445890
                  sb           a3, 147(s11)
                  lbu          a6, -247(s11)
                  srai         a0, t1, 4
                  srai         a7, s0, 15
                  slti         t1, s4, -1609
                  addi         t1, t2, 760
                  srl          a7, s8, s3
                  or           a6, ra, t2
                  andi         s5, ra, -800
                  lb           a7, -75(s11)
                  slti         t5, t5, -464
                  lb           s6, 149(s11)
                  lh           s8, -234(s11)
                  and          s7, s5, s4
                  lb           a1, -121(s11)
                  slt          t5, t5, s3
                  lui          a0, 609967
                  sh           t2, -144(s11)
                  srli         t1, s2, 28
                  lbu          s9, -163(s11)
                  andi         s4, t4, -1681
                  sb           s8, -243(s11)
                  lbu          a3, -62(s11)
                  lh           t0, -112(s11)
                  lbu          a2, 228(s11) #end riscv_load_store_rand_instr_stream_3
                  la           t3, region_1+1864 #start riscv_load_store_rand_instr_stream_4
                  lbu          s7, 7(t3)
                  sb           s3, 27(t3)
                  lhu          s1, 38(t3)
                  lb           a0, 37(t3)
                  srai         s4, s0, 31
                  or           s6, s9, s4
                  or           s6, gp, a1
                  lh           t1, 28(t3)
                  sh           t5, 28(t3)
                  xor          s10, s9, s10
                  lhu          s8, -24(t3)
                  sll          ra, s1, a4
                  sh           t4, -46(t3)
                  lb           s6, 37(t3)
                  sll          s7, s6, s9
                  lbu          a2, 59(t3)
                  ori          t0, s11, -1071
                  lbu          s7, -51(t3)
                  addi         s9, t1, -1873
                  sltiu        s11, t3, -1897
                  lui          gp, 30254
                  lhu          s4, 18(t3)
                  lb           t1, 21(t3)
                  sb           s6, 17(t3)
                  xor          a4, s3, zero
                  sb           gp, 2(t3)
                  lw           a3, -20(t3)
                  nop
                  lbu          a0, -59(t3)
                  and          a3, s6, s9
                  slli         s1, s9, 13
                  lb           s7, -53(t3)
                  lhu          t0, -18(t3)
                  sb           s10, 3(t3) #end riscv_load_store_rand_instr_stream_4
                  sltu         a2, s1, sp
                  bge          s6, t1, 8f
                  lui          s7, 16072
                  bgeu         t4, s5, 17f
                  ori          a6, s10, -1130
                  ori          s10, t0, 1686
                  slti         s2, s8, -1404
                  bge          a4, s4, 21f
8:                bltu         a0, sp, 13f
                  ori          gp, a0, 1485
                  ori          s9, a0, 262
                  ori          s10, a7, -1538
                  srli         a1, a4, 5
13:               sltiu        t5, a1, 1163
                  sltiu        s9, a2, 1844
                  blt          s10, s5, 17f
                  xor          t1, a0, sp
17:               or           s10, s10, s2
                  nop
                  xor          a6, a3, s3
                  and          t2, t0, t6
21:               andi         t3, a6, 517
                  blt          t6, s6, 33f
                  lui          zero, 305908
                  slt          s7, a4, t4
                  auipc        t0, 968619
                  auipc        t3, 45012
                  add          t6, s2, ra
                  bltu         s4, s4, 32f
                  srl          s10, a2, a7
                  slt          t1, t6, a6
                  auipc        s1, 13992
32:               nop
33:               xori         s9, s7, 1123
                  blt          a4, s0, 45f
                  slli         s0, a3, 12
                  bne          a4, tp, 47f
                  blt          s0, t3, 52f
                  add          t2, ra, s4
                  srli         zero, a3, 22
                  srai         s9, s9, 29
                  slli         s8, a3, 11
                  and          a4, s6, t0
                  bgeu         s4, t6, 52f
                  addi         gp, s8, 1616
45:               sub          t2, a2, s4
                  sra          zero, t2, s1
47:               nop
                  bgeu         s11, t0, 50f
                  sub          t0, s0, a0
50:               blt          t4, s5, 62f
                  bgeu         s7, s11, 53f
52:               sltu         s7, ra, t5
53:               bge          a6, gp, 60f
                  bgeu         a6, t1, 62f
                  sll          t1, s11, t4
                  or           s9, a1, a1
                  slli         s11, s2, 21
                  or           a2, s5, zero
                  bge          t5, a5, 69f
60:               add          a7, t0, t3
                  or           ra, tp, gp
62:               auipc        t5, 567645
                  andi         a7, t5, 1694
                  bne          zero, t0, 79f
                  sub          s10, s9, a3
                  sltu         s2, s9, a0
                  bge          a0, a4, 69f
                  sltu         a0, a5, s3
69:               lui          ra, 1006378
                  xori         sp, s8, -106
                  sra          a6, a3, a3
                  sltu         t2, t4, t4
                  or           s1, s4, sp
                  bne          a4, ra, 94f
                  slt          s8, t1, a4
                  beq          s11, s7, 85f
                  xor          s7, t6, a3
                  srli         s1, a0, 5
79:               bltu         zero, a4, 99f
                  auipc        s3, 745027
                  slti         a2, s7, 341
                  auipc        s6, 1000232
                  andi         s8, s8, 1094
                  nop
85:               or           s11, t0, a1
                  xor          a7, t5, s1
                  srli         gp, s2, 27
                  and          a6, t0, a2
                  blt          t0, s10, 90f
90:               ori          a7, s8, 403
                  andi         a0, a6, -1042
                  srai         s2, zero, 18
                  slli         sp, s0, 27
94:               and          a6, a2, t4
                  bge          a3, s8, 108f
                  srli         s7, t3, 31
                  andi         t0, t4, -709
                  bge          s1, t1, 108f
99:               bgeu         t6, t2, 119f
                  bgeu         t6, a1, 118f
                  sltiu        s2, s0, -916
                  blt          a0, s11, 108f
                  srl          a6, s9, t6
                  beq          s10, tp, 122f
                  srl          s8, a5, a3
                  xori         ra, s5, -1506
                  sltu         s10, a0, a1
108:              sltiu        sp, s10, 699
                  srli         t0, a0, 21
                  and          s7, s8, t6
                  beq          tp, a7, 125f
                  xori         s4, s7, 761
                  srai         t1, t6, 26
                  bge          tp, s10, 134f
                  nop
                  blt          a5, s11, 126f
                  sra          t3, s8, s10
118:              andi         s9, s4, -1421
119:              sll          s3, t6, a7
                  xori         a1, t3, -874
                  or           a0, s9, s0
122:              sll          a2, ra, t3
                  sra          a1, s9, t6
                  srai         ra, zero, 4
125:              bgeu         s0, t2, 132f
126:              sub          s2, a6, s6
                  srl          s9, a6, a6
                  lui          a1, 84875
                  lui          s2, 640645
                  or           a2, s7, a0
                  ori          a3, s10, 508
132:              srai         a0, s9, 8
                  sll          a1, s6, s0
134:              xor          s11, s6, t2
                  bge          zero, t5, 149f
                  and          s1, s4, sp
                  xor          t5, s8, s10
                  ori          t3, s4, 669
                  srli         a1, s4, 8
                  or           s6, s1, a3
                  xor          a3, s4, t2
                  srl          s11, sp, t6
                  andi         zero, a3, -1451
                  or           s10, s11, a3
                  slti         a4, s7, -369
                  slt          t6, a5, t5
                  sll          s1, a6, t2
                  slli         s0, s3, 22
149:              srai         s9, t0, 20
                  srli         ra, a3, 4
                  sltiu        s6, a4, -416
                  bne          s3, a0, 157f
                  sra          s6, zero, a2
                  or           s7, a7, gp
                  xor          s3, a7, s1
                  andi         t0, a1, 1535
157:              slli         a0, a3, 13
                  beq          s11, tp, 168f
                  xori         s10, s11, -1900
                  bltu         ra, s0, 166f
                  srai         zero, a7, 10
                  sub          s1, ra, s9
                  bgeu         a2, a2, 181f
                  and          s2, t5, ra
                  sltu         a2, gp, t4
166:              srai         s7, a6, 24
                  lui          t0, 107707
168:              srli         a7, a3, 17
                  slti         s1, s10, -987
                  srli         zero, t5, 3
                  sra          t0, a3, s7
                  nop
                  blt          a2, s11, 175f
                  add          a1, a5, s10
175:              beq          a2, s4, 188f
                  srli         s1, s6, 25
                  ori          sp, t4, 1194
                  add          zero, s2, ra
                  andi         a3, s9, -931
                  lui          a7, 888067
181:              slt          s10, t2, a1
                  srai         t3, s1, 27
                  xori         s7, s8, -271
                  bne          tp, a7, 192f
                  sra          s2, zero, s7
                  srl          s4, sp, s7
                  sltu         s2, ra, ra
188:              sltu         s8, a1, s4
                  bltu         sp, a2, 207f
                  add          s5, t3, s9
                  addi         s7, s2, -871
192:              ori          s10, s2, 1308
                  addi         t1, s4, -1915
                  blt          t5, a7, 206f
                  blt          s2, t4, 196f
196:              bge          a7, a7, 203f
                  sltiu        a0, s6, -1269
                  sltiu        s0, ra, -432
                  auipc        zero, 879142
                  bne          ra, s11, 211f
                  slt          s8, s8, t5
                  sltu         s10, s9, tp
203:              sub          a6, a6, s9
                  bne          s4, s0, 219f
                  beq          a3, t2, 207f
206:              xori         ra, t4, -1533
207:              or           sp, t3, t5
                  bne          t5, s0, 212f
                  ori          a6, t5, -1658
                  bgeu         t6, s11, 212f
211:              sltiu        t2, s1, -630
212:              srai         sp, a5, 5
                  and          t3, a0, tp
                  srl          a0, s11, t5
                  bne          s1, zero, 229f
                  nop
                  sltiu        s9, s6, 894
                  srli         s4, a5, 20
219:              srl          t3, t5, t4
                  sltiu        s6, t6, -1115
                  sltu         s6, t4, a7
                  srai         s9, s0, 10
                  sltiu        s2, s0, -61
                  slli         s11, a1, 19
                  bne          s9, tp, 227f
                  xori         s9, s4, 186
227:              lui          s10, 38964
                  and          s0, tp, a5
229:              slli         a6, s1, 22
                  sll          gp, a3, a5
                  sltiu        a2, s7, -1442
                  bgeu         t4, s10, 243f
                  slli         t6, sp, 21
                  sll          t2, s8, gp
                  add          ra, s5, zero
                  bne          s6, a7, 256f
                  or           t6, t4, tp
                  addi         gp, zero, 625
                  xor          s1, t0, s1
                  addi         t3, a2, 499
                  blt          sp, a0, 250f
                  blt          s3, t2, 251f
243:              xori         s2, ra, -932
                  sll          t3, ra, a4
                  beq          s1, s8, 265f
                  xor          s5, a0, s7
                  srai         t1, a7, 3
                  sub          a7, a7, s1
                  slti         a0, s11, -1509
250:              andi         s3, t3, 1047
251:              lui          gp, 265080
                  slt          t2, a7, a6
                  bltu         a5, t6, 267f
                  auipc        t0, 369459
                  srl          a6, s4, t4
256:              lui          s6, 406973
                  slti         s11, t2, -1628
                  bltu         t0, t2, 273f
                  add          a2, s3, s6
                  add          s3, t2, a5
                  srai         s3, s8, 7
                  slt          t1, zero, s4
                  beq          s4, s8, 274f
                  srai         a1, s6, 31
265:              slli         s10, gp, 3
                  sll          a3, a5, a1
267:              or           zero, t4, s2
                  sub          t5, t6, s4
                  srli         a0, s3, 5
                  sub          a2, s6, s7
                  beq          t1, t5, 286f
                  la           t0, region_0+98 #start riscv_load_store_rand_instr_stream_7
                  lbu          a3, -25(t0)
                  lui          s8, 806539
                  sb           zero, -26(t0)
                  lb           t5, 60(t0)
                  sb           s11, -30(t0)
                  lb           s1, 3(t0)
                  lbu          a2, -10(t0)
                  lbu          s9, -63(t0)
                  sub          a4, t6, s3
                  sb           s9, 26(t0)
                  lb           a0, -19(t0)
                  slti         s5, t6, 481
                  sb           a0, 45(t0)
                  sb           s2, 47(t0)
                  sra          a7, gp, t6
                  sll          a6, s6, ra
                  lbu          a2, -32(t0)
                  lui          a7, 181481
                  sb           s8, -53(t0)
                  lbu          zero, -24(t0)
                  lbu          ra, 55(t0)
                  lb           s6, -45(t0)
                  xori         a3, a5, -572
                  srai         t6, a0, 31
                  sw           s4, 26(t0)
                  sll          sp, s6, t4
                  andi         s4, t2, -2019
                  lbu          t2, 13(t0)
                  lw           s4, 62(t0)
                  sh           t2, 4(t0)
                  lhu          s9, -36(t0)
                  sra          s9, a5, s6
                  lbu          s0, -11(t0)
                  add          ra, t6, zero
                  lbu          a4, -13(t0)
                  lbu          a7, 28(t0) #end riscv_load_store_rand_instr_stream_7
                  slt          t2, a0, s7
273:              slli         s8, s11, 17
274:              beq          tp, t2, 292f
                  slti         t2, t2, -1673
                  add          a1, s2, a0
                  bge          t2, tp, 297f
                  blt          s6, a0, 286f
                  and          s3, ra, tp
                  srli         s9, t4, 5
                  srli         gp, a0, 8
                  andi         s2, s4, 1703
                  sll          s11, a3, ra
                  bne          a4, t1, 295f
                  slt          a3, t5, t5
286:              bge          a5, s7, 300f
                  bge          t1, s0, 289f
                  sltu         gp, a6, a6
289:              srl          s10, a1, s4
                  sll          s10, tp, s2
                  slti         s4, a2, -599
292:              and          s6, a0, s0
                  ori          a1, sp, -2020
                  sub          t0, s10, t6
295:              bltu         t1, sp, 313f
                  slti         zero, s10, -1461
297:              add          gp, s9, a4
                  srl          s7, a1, ra
                  sra          t5, s7, a2
300:              blt          tp, s0, 306f
                  srl          s1, t4, s3
                  or           a7, a0, a7
                  slt          s2, a0, zero
                  sub          s8, gp, t6
                  slt          a3, a3, s5
306:              sra          s3, s2, t4
                  and          a4, s6, a4
                  slt          s6, t1, s11
                  beq          zero, s4, 322f
                  bge          s11, sp, 312f
                  sltu         s0, t0, s5
312:              srai         s7, s8, 6
313:              addi         s10, a3, 1191
                  srl          s2, s6, a1
                  beq          t1, s11, 324f
                  lui          a3, 852958
                  sltu         a1, s3, a4
                  slt          t2, s8, s10
                  xori         s1, a3, 830
                  or           s2, s6, s3
                  slli         s7, t4, 7
322:              srai         t6, a1, 21
                  srli         t0, t3, 21
324:              srl          ra, t1, t6
                  or           gp, a3, s6
                  add          t5, t4, s3
                  xori         a2, s0, 1092
                  sub          a0, s5, t6
                  sltu         s3, s9, s8
                  slti         a1, t5, -1272
                  sll          a3, s8, s10
                  addi         s5, s1, 1107
                  nop
                  auipc        s11, 573161
                  sltu         s8, s3, a5
                  bne          sp, t5, 341f
                  sltu         s6, s7, t1
                  bge          s1, t6, 348f
                  sll          gp, a7, zero
                  or           ra, s10, s8
341:              nop
                  sub          s0, s7, s5
                  sltu         zero, t4, s8
                  srai         s7, zero, 25
                  srli         t0, s8, 8
                  xor          a0, a5, s1
                  ori          gp, ra, 813
348:              or           s2, a1, gp
                  xor          s3, zero, t5
                  andi         t5, s7, -1695
                  slli         sp, s11, 23
                  or           s11, zero, s4
                  bltu         zero, t1, 364f
                  or           zero, tp, a7
                  srai         s0, t4, 24
                  add          s8, t5, s8
                  xori         t6, s9, 262
                  slt          a0, a1, s9
                  add          sp, t4, a7
                  sub          a7, a0, t1
                  bgeu         s2, zero, 381f
                  beq          t0, tp, 376f
                  sll          s8, a7, s5
364:              srli         zero, a5, 9
                  bge          a6, gp, 377f
                  srli         s0, s4, 5
                  and          t3, tp, t4
                  bltu         t4, s7, 369f
369:              bgeu         a2, t5, 371f
                  nop
371:              bltu         t5, zero, 381f
                  sra          t3, t5, s2
                  nop
                  auipc        t1, 1010484
                  and          s10, s11, a5
376:              sra          s10, s6, a0
377:              sra          a7, s1, t5
                  beq          s7, s5, 382f
                  nop
                  and          a3, s0, a0
                  la           sp, region_1+728 #start riscv_load_store_rand_instr_stream_12
                  lb           s5, 0(sp)
                  slti         t6, a0, 444
                  sb           t3, 11(sp)
                  slt          a7, a5, a0
                  lh           s6, 14(sp)
                  lbu          a6, 0(sp)
                  lbu          a3, 10(sp)
                  andi         zero, a0, -1689
                  lb           s4, -13(sp)
                  sh           t5, -2(sp)
                  lbu          a1, -5(sp)
                  addi         a1, t6, -1034
                  addi         s4, gp, -1040
                  srai         s8, s9, 17
                  addi         a4, a6, 1149
                  sb           a5, 5(sp)
                  xori         t2, s4, -178
                  lbu          a3, -6(sp)
                  lb           ra, -15(sp)
                  sb           a7, 0(sp)
                  srli         s0, t2, 18
                  lui          a1, 82212
                  ori          s1, s0, -509
                  lhu          a6, 8(sp)
                  slti         t0, sp, 1731
                  andi         s0, s4, 1522
                  sb           s5, -12(sp)
                  sh           s6, 16(sp)
                  sb           t4, -11(sp) #end riscv_load_store_rand_instr_stream_12
381:              srli         s3, s11, 4
382:              or           s6, s10, gp
                  auipc        gp, 758703
                  nop
                  ori          sp, s8, -562
                  addi         s4, t4, 1813
                  nop
                  sltu         ra, s10, s5
                  auipc        a3, 180014
                  bgeu         s2, zero, 410f
                  lui          s7, 882057
                  sltiu        s11, ra, -706
                  add          t3, t2, s3
                  bltu         t5, s10, 403f
                  sll          s0, s11, zero
                  sltiu        a0, t6, -1996
                  add          s3, sp, s5
                  slli         t1, t1, 17
                  auipc        s2, 327299
                  bgeu         s8, zero, 407f
                  srl          s11, t5, s2
                  bne          sp, a6, 413f
403:              and          t0, a7, t5
                  and          s6, s10, a1
                  or           s0, t3, s8
                  srli         s1, a6, 7
407:              sub          s7, a5, s1
                  slt          t0, s4, t4
                  lui          s3, 766630
410:              sll          a0, a1, s0
                  beq          t6, s6, 418f
                  bgeu         a7, s10, 427f
413:              bltu         gp, s8, 427f
                  slti         s9, sp, 1411
                  addi         s10, s8, 1370
                  sltiu        t5, t3, -1150
                  add          sp, s4, t1
418:              nop
                  bne          s2, s11, 421f
                  sra          s5, s3, gp
421:              sltiu        s10, a5, 1152
                  slt          ra, s2, zero
                  srai         gp, a5, 5
                  bgeu         s1, s11, 433f
                  xori         zero, s2, -2005
                  auipc        a6, 226660
427:              slti         a4, a4, 12
                  slti         a7, s3, 291
                  lui          ra, 328410
                  bne          t6, t6, 443f
                  bltu         s4, s9, 433f
                  bgeu         s2, t5, 443f
433:              addi         s3, a6, 1260
                  sltu         a7, t6, t5
                  andi         s2, sp, -1756
                  sub          s0, s8, sp
                  slt          s1, t4, a4
                  slli         a2, s9, 15
                  srai         s10, s8, 6
                  slti         t6, t5, -230
                  slli         t2, t0, 31
                  ori          a0, t0, 583
443:              slti         t1, a7, -816
                  srli         a3, sp, 4
                  srai         gp, t3, 12
                  srl          t1, t5, ra
                  sltiu        t1, tp, 1418
                  bltu         s8, t3, 468f
                  beq          s1, t0, 456f
                  sltu         s6, zero, s5
                  srai         t3, s10, 16
                  or           s9, a2, s6
                  ori          zero, a5, 1406
                  srai         gp, ra, 31
                  ori          s9, t6, 1542
456:              bge          t4, sp, 467f
                  bgeu         tp, s8, 465f
                  srli         a4, tp, 2
                  bltu         a0, s7, 469f
                  sltu         s7, s10, a5
                  sub          t6, a2, t5
                  andi         t2, s10, 1945
                  sra          sp, s8, s3
                  srli         s5, s5, 16
465:              slt          t0, t1, s5
                  sll          ra, a6, s7
467:              ori          s1, s6, 1269
468:              srl          s5, t6, a7
469:              ori          s7, s11, -1915
                  auipc        s9, 490733
                  bge          s7, t1, 475f
                  slli         t1, t2, 3
                  andi         a4, a3, 670
                  srl          a6, s6, t2
475:              or           a2, gp, a7
                  sub          s2, t4, s8
                  slt          t6, a7, sp
                  sra          gp, a5, a1
                  slli         s8, t1, 12
                  sub          s5, ra, t0
                  bne          a5, t6, 491f
                  or           t1, a6, a7
                  sltiu        s4, a2, -644
                  sub          s1, s0, a3
                  lui          s1, 308081
                  bltu         a3, s4, 492f
                  or           s11, tp, s11
                  bgeu         a4, a1, 502f
                  blt          s6, t5, 500f
                  sll          a4, s6, a0
491:              bltu         s7, s10, 511f
492:              ori          s2, s1, -1742
                  andi         a3, t2, -1490
                  slt          s10, t0, s7
                  and          s0, t5, s9
                  srl          t6, s0, t6
                  bltu         a3, a2, 502f
                  beq          a6, s1, 500f
                  slti         t0, sp, 814
500:              and          s3, s3, s9
                  bne          s9, sp, 519f
502:              srli         gp, s9, 3
                  add          t2, a7, t4
                  slli         sp, a4, 26
                  blt          s1, a6, 525f
                  srl          s5, s3, gp
                  beq          a5, s9, 522f
                  xor          t3, tp, s5
                  slt          t2, t0, t1
                  sub          s4, s5, s8
511:              bge          s2, s10, 529f
                  nop
                  sltu         s11, a1, a7
                  sub          a6, t2, s5
                  ori          a4, s7, -219
                  sub          t1, a1, a0
                  slt          gp, s7, s4
                  sll          s0, s5, t3
519:              bltu         sp, s2, 533f
                  xori         ra, s10, -825
                  sll          s10, s11, t2
522:              bge          s0, s3, 523f
523:              sub          ra, a7, a5
                  bgeu         s1, s5, 533f
525:              nop
                  sra          s9, s9, t2
                  srli         s3, tp, 22
                  lui          a4, 724609
529:              srai         s9, s5, 29
                  sub          s0, s2, t0
                  srl          s6, s1, t3
                  slli         s10, s10, 25
533:              xori         s4, s2, 1030
                  add          s11, s9, t1
                  bltu         a3, s6, 537f
                  nop
537:              and          s5, t1, zero
                  bne          s0, s2, 550f
                  auipc        s10, 452176
                  ori          gp, a3, 1758
                  or           s10, s8, s7
                  add          gp, s8, zero
                  blt          a4, a0, 558f
                  lui          t0, 211880
                  addi         a3, a7, 1466
                  xori         a3, a4, 940
                  ori          a4, s10, -2019
                  bltu         a6, s9, 550f
                  xor          s1, s5, s1
550:              srai         t5, sp, 1
                  auipc        s8, 703859
                  sub          s5, s10, s10
                  slli         a2, s4, 22
                  addi         a6, s9, -1854
                  nop
                  blt          a3, zero, 563f
                  add          ra, t6, s7
558:              bge          a6, t0, 572f
                  lui          sp, 557272
                  sra          a6, t6, s9
                  nop
                  sll          sp, a2, t5
563:              sub          s5, s11, s11
                  ori          s3, s11, -1332
                  sub          s3, zero, sp
                  srai         a3, gp, 2
                  sltu         t3, s0, s7
                  slli         t3, a1, 16
                  srl          s5, s3, s11
                  blt          a4, gp, 585f
                  bgeu         a5, ra, 581f
572:              sltu         s3, tp, s6
                  sub          s5, tp, s4
                  bltu         a4, a4, 581f
                  add          a3, s11, t6
                  ori          a2, a1, 281
                  beq          zero, s0, 595f
                  xori         s6, s8, 380
                  slt          gp, s0, a2
                  nop
581:              sra          s8, a7, s1
                  slti         t0, s6, -1964
                  sub          a4, s0, s0
                  xori         s0, a6, -1823
585:              auipc        t5, 771088
                  blt          a4, t2, 600f
                  slti         s4, t0, -58
                  slti         a3, s1, 1887
                  slli         a7, s8, 11
                  lui          a6, 148592
                  bne          a4, s4, 600f
                  auipc        s0, 28137
                  slti         a6, s10, -682
                  lui          s7, 362143
595:              nop
                  bltu         s6, t5, 610f
                  lui          t6, 617009
                  srl          s1, s11, s9
                  auipc        gp, 757079
600:              xor          t1, gp, s4
                  beq          gp, t2, 612f
                  bge          s10, t2, 622f
                  sltiu        s11, s0, -477
                  xori         t2, gp, 836
                  add          s9, s8, t4
                  slt          t0, s11, a5
                  slli         gp, gp, 25
                  or           zero, a2, a1
                  bgeu         a5, a3, 619f
610:              slti         s6, s3, 1261
                  slti         t3, t0, -1605
612:              and          t3, t0, ra
                  beq          s7, s3, 615f
                  andi         s1, a6, -1641
615:              slti         s4, a2, -810
                  bne          gp, t0, 627f
                  auipc        s5, 267589
                  bltu         s8, s5, 632f
619:              bge          s4, s2, 632f
                  sltiu        s4, gp, 994
                  bgeu         s7, s4, 636f
622:              srli         s7, t3, 12
                  sll          a4, t3, s0
                  srai         s1, s7, 9
                  blt          zero, s10, 637f
                  addi         s11, a1, -1151
627:              sub          s2, a7, a4
                  srai         t6, a5, 8
                  sra          s4, t5, a5
                  lui          a0, 989175
                  srl          zero, s11, s9
632:              srl          a0, sp, t4
                  slti         s10, tp, 553
                  xori         a6, s0, -1315
                  xori         ra, t2, -438
636:              bgeu         sp, s6, 641f
637:              slti         a2, s1, -1233
                  bge          s0, s5, 644f
                  slti         s11, s10, 75
                  and          s3, tp, a3
641:              bgeu         t4, s2, 650f
                  blt          s10, s9, 643f
643:              sltiu        t3, s0, 833
644:              or           a0, s10, a0
                  and          sp, t5, a3
                  auipc        gp, 1026217
                  nop
                  xori         t0, a6, 1720
                  lui          s8, 957769
650:              add          t6, s1, t4
                  bgeu         s11, t1, 671f
                  srai         t0, a4, 21
                  nop
                  and          a0, t0, a0
                  sub          t5, a5, t3
                  srli         s7, a4, 29
                  bge          tp, a6, 677f
                  srli         zero, a5, 0
                  sll          s5, s5, s4
                  bge          s9, t0, 668f
                  add          t2, s11, s6
                  nop
                  bge          gp, t4, 674f
                  bne          s6, a7, 666f
                  srli         t0, s10, 18
666:              srli         t5, s2, 9
                  slt          gp, t5, a2
668:              slti         s11, a6, -263
                  slti         a4, t1, 790
                  blt          t3, s2, 688f
671:              sub          a3, a5, s10
                  srli         zero, s5, 30
                  sltu         s10, a7, zero
674:              sra          s6, zero, s5
                  sub          s3, tp, t1
                  nop
677:              blt          s8, a6, 684f
                  bge          s5, tp, 680f
                  slt          t5, s5, t0
680:              auipc        s6, 685564
                  bltu         s4, t0, 683f
                  xori         a2, a7, 392
683:              sltiu        s0, s3, 605
684:              xor          t3, s8, t6
                  bne          a5, t4, 689f
                  sra          sp, a6, ra
                  nop
688:              andi         a4, s4, 1853
689:              bne          zero, tp, 700f
                  andi         t6, s2, -1419
                  bne          s10, s4, 709f
                  sll          t3, t2, s5
                  sll          zero, s0, gp
                  xori         s9, t0, 1107
                  xor          ra, a5, s5
                  addi         a6, s1, -1438
                  ori          gp, a4, -1794
                  slt          s9, s7, a7
                  sltu         a7, a5, t0
700:              sltiu        t5, t6, -812
                  ori          t5, a3, -1363
                  andi         gp, t3, 133
                  bge          sp, t6, 717f
                  auipc        s3, 51196
                  sra          t0, s5, s2
                  srl          a6, a2, zero
                  slli         t2, t1, 13
                  bgeu         a5, t4, 710f
709:              sub          t1, gp, gp
710:              srli         t5, s8, 1
                  blt          sp, s10, 715f
                  bge          a7, s7, 722f
                  bltu         a2, s4, 722f
                  lui          s1, 995358
715:              nop
                  xori         ra, s8, -315
717:              add          s9, t5, a2
                  xori         t2, a6, -312
                  sltu         s7, a5, s2
                  or           s5, t1, t3
                  auipc        s7, 609485
722:              andi         s3, s6, 1469
                  blt          gp, s9, 728f
                  addi         zero, s7, -252
                  lui          t0, 117960
                  sltiu        zero, t0, 1009
                  nop
728:              sltiu        s3, t3, 95
                  and          t0, s6, s4
                  srl          s3, t0, a4
                  sltiu        a2, s9, 509
                  slli         s9, s5, 1
                  xor          a1, s4, s6
                  slli         a7, a5, 6
                  andi         a6, sp, -1015
                  srl          a0, a7, s9
                  sra          zero, s10, s4
                  xori         a6, s7, -735
                  sltu         s5, t5, s4
                  sll          s4, s3, ra
                  sltiu        t2, a5, 926
                  sltiu        s8, s10, -1022
                  slli         a6, t4, 6
                  xori         s11, a3, -1249
                  slt          s8, s6, s10
                  bge          a5, tp, 760f
                  beq          s11, s10, 749f
                  sltiu        s9, a5, 557
749:              lui          ra, 127555
                  xori         a6, a2, -1117
                  add          a7, s0, a1
                  sll          a3, s9, s6
                  bge          s5, s0, 766f
                  sra          sp, a5, s9
                  bne          s5, s11, 773f
                  slti         a7, s1, 1787
                  or           t2, t0, t1
                  sra          a7, a5, s4
                  andi         t5, a2, -249
760:              sltu         s8, s11, s5
                  bge          ra, a5, 773f
                  slli         ra, s6, 22
                  ori          s10, a5, -1845
                  lui          s8, 781496
                  sll          gp, a2, s6
766:              add          a0, a5, s3
                  ori          a0, t3, -1355
                  srl          s1, a7, t0
                  add          s2, t0, s8
                  auipc        t5, 652533
                  srai         s5, t3, 15
                  xori         ra, s6, -1850
773:              bne          s3, t0, 793f
                  srai         a6, a0, 21
                  add          t5, t4, a7
                  bne          a7, s0, 783f
                  sll          t0, t3, s3
                  sub          s11, t1, a7
                  xori         s6, s8, 720
                  and          s10, s2, a1
                  srli         t0, s4, 16
                  blt          a4, s0, 796f
783:              bne          a1, tp, 792f
                  or           s0, t0, t6
                  beq          s7, s3, 786f
786:              srl          s2, t2, s7
                  bne          t3, t5, 789f
                  bltu         ra, t0, 795f
789:              and          s2, a6, ra
                  sub          s8, s0, s3
                  bltu         s2, zero, 801f
792:              xori         t3, a1, -632
793:              add          s2, s10, a4
                  sra          s8, s2, a0
795:              sltiu        s7, a5, -264
796:              xori         t0, a5, -1103
                  blt          t2, a0, 805f
                  nop
                  addi         t0, t5, -1722
                  beq          s2, gp, 806f
801:              lui          s10, 29226
                  sltiu        a6, s4, 1461
                  bltu         a5, t0, 814f
                  srai         t1, s4, 12
805:              bne          a7, t1, 825f
806:              srai         a3, a7, 5
                  nop
                  xori         a3, s9, -987
                  blt          s9, s1, 824f
                  sltu         a0, a3, s9
                  sltiu        a4, gp, -390
                  sub          s5, s9, a2
                  blt          a5, s10, 815f
814:              beq          s0, t4, 829f
815:              andi         t0, s0, -432
                  sra          t3, sp, a0
                  slli         t3, a7, 5
                  sll          a4, a1, s9
                  srli         s5, s8, 16
                  bne          a3, s6, 831f
                  slti         t1, s9, 101
                  lui          t0, 757949
                  slt          gp, t0, a0
824:              bge          a5, a3, 844f
825:              and          a7, zero, t2
                  srli         s7, t6, 17
                  auipc        t3, 31196
                  andi         s1, s4, 1309
829:              srai         t2, t3, 17
                  sll          t2, a4, zero
831:              slt          a4, t6, a0
                  sltu         a3, t2, s3
                  srli         s6, s7, 15
                  sub          zero, s3, a0
                  addi         s0, s9, -1149
                  srl          a7, t5, a5
                  xori         s11, gp, 2027
                  blt          s4, s11, 856f
                  addi         s6, t4, 771
                  xori         s9, a1, -1813
                  slt          s7, gp, s1
                  auipc        s6, 373986
                  slti         t2, s1, 678
844:              andi         t6, a6, -782
                  beq          s11, tp, 851f
                  lui          s0, 177242
                  slt          gp, s8, sp
                  add          t3, s1, s4
                  srai         a6, a0, 5
                  beq          t6, s1, 859f
851:              beq          s1, s0, 855f
                  add          t6, a7, gp
                  slti         s4, a0, 1517
                  beq          s6, s6, 856f
855:              xor          s2, a1, t2
856:              slt          s8, t5, tp
                  sll          t6, t3, a0
                  add          s3, s9, s6
859:              lui          s5, 799988
                  addi         a0, gp, 366
                  bne          s10, gp, 872f
                  or           a6, s5, a2
                  nop
                  ori          t0, gp, -74
                  blt          s9, s3, 877f
                  sra          a7, a6, a7
                  slt          sp, a6, s11
                  sra          s6, sp, s5
                  beq          zero, s11, 883f
                  slti         s0, t0, -2040
                  slti         t3, t1, 1973
872:              andi         s0, a6, 616
                  add          t6, a1, s10
                  sltiu        t5, a3, -972
                  ori          s3, a3, 589
                  slti         s11, s3, -349
877:              slli         s7, s6, 6
                  andi         s10, sp, 277
                  nop
                  sra          s1, a4, s3
                  bne          a2, a5, 890f
                  slti         s6, t1, 1964
883:              or           a6, t0, t5
                  xor          s0, sp, t5
                  sltu         t3, t1, s2
                  andi         gp, t4, 0
                  beq          sp, a2, 889f
                  nop
889:              sra          s4, gp, a3
890:              srai         s11, a5, 17
                  sltiu        t6, s7, -693
                  auipc        s4, 168428
                  andi         t3, t1, 1429
                  and          s1, s6, tp
                  lui          s6, 1006721
                  bge          s9, a1, 898f
                  andi         s6, s8, 1648
898:              xori         t3, a0, -670
                  bltu         t4, a4, 900f
900:              sra          t6, s11, a3
                  slti         s2, t6, 535
                  srai         s7, a4, 0
                  xor          a0, a6, t2
                  addi         s2, zero, 1175
                  addi         a6, s6, 1844
                  sra          a3, s11, t5
                  xor          ra, a1, a5
                  andi         s2, t5, -460
                  sub          s4, gp, t0
                  bltu         s9, a5, 917f
                  add          a4, zero, sp
                  slt          zero, a2, t1
                  sub          t3, t4, gp
                  bgeu         a1, t2, 928f
                  add          s2, s3, a1
                  bge          zero, a2, 936f
917:              blt          s4, t3, 919f
                  xor          sp, s4, a5
919:              add          a2, s7, s0
                  xor          a6, s6, s10
                  ori          s4, t3, 1314
                  bge          t0, t1, 942f
                  bgeu         s9, a2, 933f
                  bgeu         t3, sp, 942f
                  or           s11, gp, t3
                  xori         s10, s4, -1841
                  sltiu        s1, s8, 787
928:              srai         t2, s8, 22
                  or           t2, s7, ra
                  slli         s8, t0, 9
                  blt          a3, t5, 942f
                  bgeu         tp, s5, 945f
933:              nop
                  slt          t1, s10, a1
                  addi         s5, s1, -2027
936:              sra          s4, s4, zero
                  and          t1, s7, s8
                  xori         s1, s11, 1654
                  bne          a2, zero, 944f
                  srl          s4, s4, a7
                  xor          a3, tp, ra
942:              addi         s2, a7, 1207
                  bgeu         a2, a1, 958f
944:              ori          a4, s6, 2017
945:              bge          s1, zero, 959f
                  add          t0, s5, a6
                  sltiu        s1, s7, -1426
                  bltu         s6, a0, 968f
                  sltiu        t2, zero, -997
                  sub          s3, s2, t1
                  and          s0, s8, t3
                  andi         t6, ra, 142
                  sltu         gp, a7, sp
                  sltiu        t5, t6, 771
                  addi         s1, t6, -303
                  slti         t5, s10, 715
                  sltu         a4, s4, a2
958:              slli         t0, a2, 13
959:              and          t5, a6, zero
                  add          s1, a5, t2
                  sll          s7, s1, a6
                  sltu         a6, s0, s2
                  bne          s6, a0, 973f
                  srli         s2, t4, 1
                  bne          s3, zero, 980f
                  srl          gp, t6, s3
                  bge          t1, s4, 978f
968:              sra          s5, t0, t3
                  lui          zero, 1034781
                  blt          a5, a7, 978f
                  beq          a2, a7, 978f
                  bgeu         s5, s11, 981f
973:              ori          s2, s3, -382
                  sra          a6, a1, s8
                  lui          s6, 845967
                  auipc        t0, 908234
                  lui          t3, 122816
978:              lui          s5, 358107
                  srli         a4, s9, 21
980:              sltiu        s6, s9, -781
981:              srai         t1, s3, 8
                  and          a2, a4, t1
                  srli         s1, s10, 14
                  nop
                  beq          s4, zero, 1000f
                  bltu         s8, s5, 988f
                  or           t5, a4, s1
988:              sll          s8, s0, zero
                  xori         s8, a1, -1909
                  bgeu         t2, s0, 1001f
                  bltu         s7, s5, 1002f
                  srli         s6, s11, 9
                  sub          t6, a5, s2
                  bne          t4, s8, 1004f
                  addi         t2, sp, 1244
                  srl          s7, a0, s5
                  beq          a7, t1, 1004f
                  auipc        s4, 690980
                  bge          tp, sp, 1009f
1000:             sra          s2, t0, zero
1001:             sltu         a0, t0, a3
1002:             and          s9, s5, t1
                  blt          gp, t6, 1005f
1004:             srl          s2, gp, a0
1005:             sub          s0, s8, a2
                  sltiu        a1, t0, 984
                  lui          t6, 613583
                  xor          s10, a2, gp
1009:             blt          s2, t1, 1022f
                  sub          s9, s10, s4
                  xor          s7, sp, gp
                  or           s5, s10, ra
                  sra          s0, s4, t1
                  srli         t1, gp, 27
                  andi         sp, s11, 1905
                  lui          t1, 663945
                  nop
                  lui          t3, 155781
                  bge          a2, s7, 1031f
                  beq          t3, s5, 1035f
                  lui          a2, 294295
                  sltu         a0, a2, t6
                  sub          s6, a3, sp
                  bne          s5, s11, sub_6_j11 #branch to jump instr
                  sltiu        t3, s11, 848
                  slti         s0, t4, 1979
                  xor          t0, gp, s8
                  addi         a0, t4, 1177
                  xor          t2, a2, t1
                  srl          s9, a2, s5
                  srai         a1, tp, 26
sub_6_j11:        jal          s0, sub_7 #jump sub_6 -> sub_7
1022:             srli         s11, t0, 10
                  add          zero, t0, a6
                  bge          s1, a2, 1026f
                  nop
1026:             blt          s3, ra, 1033f
                  srl          s3, s2, a1
                  sub          a3, sp, s6
                  nop
                  bge          s11, s5, 1041f
1031:             srl          ra, s2, s5
                  sltiu        s2, a1, -1195
1033:             slti         s2, t3, -1913
                  sltiu        t1, a7, -2026
1035:             add          s5, ra, s1
                  sra          s7, t4, s1
                  xori         a2, a7, -1501
                  bltu         t3, a5, 1058f
                  sltiu        ra, s9, 1030
                  auipc        a2, 537907
1041:             srl          s11, a6, t4
                  sltiu        t1, s4, 1754
                  bltu         gp, t5, 1044f
1044:             or           s6, t0, a3
                  andi         a1, s5, -1763
                  andi         s9, s9, -510
                  bne          s11, s8, 1065f
                  auipc        s10, 4571
                  xor          s0, s4, a4
                  sra          s5, a7, a0
                  srl          s3, gp, s4
                  srl          s6, tp, s9
                  or           s5, a1, s1
                  srai         a1, s4, 25
                  srai         a2, s7, 10
                  and          s1, t0, tp
                  nop
1058:             blt          s4, a4, 1072f
                  sltiu        s5, s1, 232
                  bge          a6, t5, 1068f
                  bgeu         ra, gp, 1079f
                  sub          t6, tp, s5
                  slli         t5, a7, 3
                  slti         s9, t4, 619
1065:             bne          ra, tp, 1079f
                  sltiu        sp, t1, 723
                  sub          t1, a1, a7
1068:             srli         t6, s5, 28
                  bltu         t0, t1, 1071f
                  xor          gp, a5, a7
1071:             beq          a7, s9, 1077f
1072:             sll          s3, s9, s9
                  sll          s4, a3, t3
                  or           a7, a3, t2
                  bgeu         s5, t0, 1095f
                  bgeu         a0, a6, 1080f
1077:             beq          t4, a4, 1097f
                  lui          s6, 597523
1079:             addi         s2, ra, -1200
1080:             slt          s2, a4, s1
                  and          s4, s2, a0
                  bge          s6, a0, 1087f
                  xori         a6, t0, -2026
                  srl          a2, t6, t2
                  sltu         s3, s2, s1
                  ori          a7, a2, -1857
1087:             srli         s6, tp, 10
                  andi         s4, a1, -1908
                  sltu         t2, s7, t4
                  beq          s6, s2, 1099f
                  bne          tp, a4, 1105f
                  sll          s0, s2, s8
                  bge          s6, t5, 1108f
                  xori         t1, s2, -614
1095:             bgeu         s8, a0, 1115f
                  and          s5, t5, s9
1097:             srli         s8, a7, 24
                  xor          ra, s3, s6
1099:             addi         a2, t1, 1727
                  xor          s3, s10, sp
                  sll          t6, s6, sp
                  andi         s11, a4, -1274
                  add          s9, s11, t0
                  bgeu         s8, t1, 1108f
1105:             bge          a0, s4, 1110f
                  bge          tp, zero, 1117f
                  beq          s0, a7, 1121f
1108:             ori          a1, t2, 1016
                  sll          gp, s2, a6
1110:             sub          a3, s7, s7
                  sra          t2, a3, s4
                  or           s4, s3, s4
                  sll          t2, a2, s2
                  xori         a6, a1, 1767
1115:             srai         t5, s9, 30
                  andi         t2, s10, 1758
1117:             srl          s5, a2, s8
                  sub          a7, a3, s4
                  add          t6, a2, t2
                  bge          t0, s1, 1132f
1121:             bgeu         a4, s3, 1131f
                  lui          t6, 106820
                  nop
                  sltu         zero, s1, s5
                  sub          t1, a0, t0
                  srai         a0, a7, 15
                  or           a2, a6, t4
                  nop
                  slti         gp, s7, -375
                  xor          a0, t4, a1
1131:             sll          s8, s9, a1
1132:             srl          s5, s2, s3
                  sll          a0, a0, a0
                  nop
                  xori         t6, s9, 1305
                  sltu         sp, s5, gp
                  addi         s3, s5, -1163
                  auipc        s6, 675525
                  andi         t3, a4, -395
                  auipc        s2, 894399
                  slti         t3, t2, -1773
                  bltu         a5, t2, 1149f
                  xori         s7, a3, -1149
                  slli         t6, s10, 30
                  sra          s10, t4, a7
                  andi         s0, a1, 1075
                  beq          gp, s0, 1167f
                  auipc        s0, 613054
1149:             nop
                  slt          a0, sp, s11
                  sltiu        t3, a2, -983
                  bge          a0, t2, 1170f
                  srai         t1, tp, 1
                  auipc        a2, 136351
                  addi         a0, t1, -518
                  sltiu        a0, s8, -1740
                  andi         s11, s4, -1470
                  andi         s10, t4, -1307
                  addi         zero, gp, -1780
                  add          a6, s6, t0
                  auipc        s7, 438503
                  bge          zero, a1, 1182f
                  srli         t6, gp, 2
                  bgeu         s0, a3, 1182f
                  slli         s8, a4, 17
                  ori          ra, ra, 46
1167:             slt          t3, sp, a3
                  slti         ra, s6, 1563
                  andi         a1, a6, 350
1170:             auipc        s6, 48700
                  srl          s3, s0, t6
                  slti         a2, t1, -661
                  srli         s9, t4, 25
                  slli         a3, a1, 28
                  sub          t6, a0, a5
                  lui          ra, 303017
                  and          a3, t4, s3
                  auipc        s7, 157502
                  addi         s4, sp, -997
                  sra          s3, s4, a1
                  beq          s8, t4, 1191f
1182:             slti         s10, t2, 27
                  blt          zero, a2, 1194f
                  srai         zero, s3, 17
                  srai         s7, a6, 13
                  srl          t1, s5, a4
                  blt          zero, s5, 1196f
                  slli         a6, s0, 0
                  lui          a2, 868820
                  xor          s11, a5, t2
1191:             bltu         zero, t0, 1198f
                  bltu         a5, s6, 1206f
                  lui          s7, 682592
1194:             slli         a6, t3, 17
                  ori          s0, zero, -701
1196:             sltu         t6, s2, t1
                  sra          t1, s0, t1
1198:             beq          t4, s5, 1200f
                  slli         a0, s8, 16
1200:             sltu         s1, s9, s6
                  slli         a0, t6, 22
                  xori         s1, a0, 48
                  slt          a1, s1, s6
                  lui          s4, 22365
                  blt          ra, s7, 1218f
1206:             ori          a1, s7, 1126
                  andi         s7, a6, -410
                  sltu         s9, s0, s10
                  and          s0, a5, s4
                  add          t3, t5, s3
                  ori          a6, s4, 1020
                  slt          t3, ra, t2
                  sub          t5, t4, a7
                  sltu         a7, gp, sp
                  lui          t0, 607277
                  nop
                  srli         s4, a4, 2
1218:             beq          zero, s8, 1220f
                  nop
1220:             addi         gp, a6, 1424
                  srli         a4, a0, 22
                  xori         gp, zero, 1334
                  slt          s5, tp, a4
                  andi         s7, a6, 1541
                  ori          a4, a6, -1428
                  sra          s10, s4, s1
                  bgeu         s6, a4, 1233f
                  xori         s3, s3, -1021
                  sltiu        t3, s3, 253
                  xor          s0, a5, s8
                  and          t5, gp, a5
                  srl          t1, a0, s2
1233:             srl          a0, a4, t5
                  bne          gp, s9, 1235f
1235:             auipc        s7, 661531
                  nop
                  auipc        s5, 56328
                  xor          zero, t3, a2
                  and          t2, s5, a4
                  xor          s9, s11, s4
                  xor          ra, tp, t6
                  addi         zero, s5, 1759
                  bltu         tp, t1, 1251f
                  bgeu         ra, s10, 1258f
                  addi         s2, t3, 1034
                  sub          a7, s0, s5
                  xor          t2, s11, s4
                  xori         a3, a4, 643
                  sub          s9, a6, t2
                  slt          t6, s6, s7
1251:             xori         t6, s11, -902
                  blt          s6, s10, 1261f
                  beq          t2, zero, 1264f
                  sltu         t3, s7, a4
                  xor          s11, t3, a1
                  sub          s8, s9, t0
                  sltu         a1, t6, sp
1258:             nop
                  bne          zero, t3, 1274f
                  sltu         s8, gp, s1
1261:             sll          s9, a7, t0
                  ori          t1, t6, -1320
                  beq          t1, t5, 1265f
1264:             ori          s10, s8, 185
1265:             xori         s10, t2, 52
                  slli         s6, t3, 22
                  bge          ra, s3, 1269f
                  ori          t6, s10, -534
1269:             beq          t5, s8, 1280f
                  srai         t3, tp, 5
                  xor          ra, a2, a2
                  addi         s10, t2, -368
                  ori          a4, a2, 25
1274:             blt          a4, sp, 1284f
                  bgeu         t2, s8, 1279f
                  xor          s4, s7, a6
                  nop
                  xor          s10, s3, a3
1279:             or           a7, a1, s3
1280:             sub          sp, s10, s4
                  or           t1, s6, s10
                  sll          a4, sp, s3
                  blt          s3, zero, 1285f
1284:             sub          s7, s11, t1
1285:             slli         ra, ra, 5
                  sltiu        s4, sp, -884
                  auipc        a7, 820008
                  add          zero, s7, a7
                  bne          t5, a5, 1307f
                  sltu         a1, a1, s5
                  srl          zero, a2, t1
                  sltu         a6, t5, s8
                  andi         s3, gp, 1138
                  bltu         s6, a3, 1296f
                  sltiu        s9, a0, -462
1296:             or           s11, t5, a2
                  slli         s7, t6, 25
                  add          t2, s0, s2
                  sltu         s0, s2, a4
                  xor          a2, t3, t4
                  sub          t6, t3, s4
                  sltu         s1, s5, s4
                  nop
                  sltiu        sp, s6, 1258
                  beq          s7, gp, 1323f
                  bgeu         t2, a1, 1321f
1307:             ori          t6, t3, 1233
                  srli         sp, s6, 21
                  slti         a6, s8, -391
                  beq          a5, s9, 1324f
                  bne          t1, gp, 1319f
                  sra          t1, s9, ra
                  sub          a4, ra, s0
                  addi         sp, a5, -2038
                  bltu         s0, s11, 1335f
                  addi         s7, s5, -850
                  beq          a6, t3, 1324f
                  slti         zero, s11, 1239
1319:             slli         s1, sp, 16
                  slti         gp, t1, -1120
1321:             bne          s1, s1, 1341f
                  xor          a4, s4, tp
1323:             lui          s2, 546195
1324:             bge          gp, s9, 1337f
                  blt          gp, s9, 1332f
                  nop
                  beq          t3, a7, 1329f
                  slli         s4, t1, 12
1329:             xor          s4, t4, s7
                  lui          a7, 908975
                  lui          s4, 271171
1332:             srli         s1, a5, 12
                  slli         a4, s4, 26
                  beq          s4, t5, 1336f
1335:             ori          a3, a1, -1766
1336:             slt          a7, s2, tp
1337:             slti         s7, t1, -695
                  slt          s9, s3, a2
                  bge          s0, s0, 1350f
                  srl          a1, tp, s4
1341:             blt          a4, a1, 1352f
                  bne          s0, s5, 1343f
1343:             slti         ra, gp, -690
                  bltu         s1, s11, 1353f
                  beq          s1, s6, 1365f
                  sltu         zero, s10, a1
                  sra          t1, s7, a2
                  andi         t1, tp, -113
                  sltiu        t3, s4, -1769
1350:             slt          t0, s7, s8
                  bltu         s3, tp, 1363f
1352:             sltu         t1, t3, s3
1353:             sra          t3, sp, s3
                  bge          t1, s3, 1368f
                  srli         s8, s10, 9
                  blt          t0, s7, 1370f
                  sltu         t3, a0, zero
                  bltu         gp, s5, 1367f
                  blt          s6, a3, 1369f
                  sub          s11, a6, s11
                  srli         t6, t3, 3
                  lui          a7, 10018
1363:             srli         t5, tp, 1
                  bgeu         a3, t4, 1369f
1365:             xori         t0, a1, 1841
                  srl          a2, s0, a2
1367:             sltiu        a4, s2, 103
1368:             beq          t5, tp, 1383f
1369:             srai         t1, a4, 28
1370:             xor          ra, s11, s7
                  bne          s9, s9, 1377f
                  srli         s2, a4, 26
                  sltu         a2, a7, a2
                  sltu         s3, s6, t0
                  and          a7, t1, a7
                  bltu         t5, t6, 1388f
1377:             slli         a4, s3, 12
                  andi         a1, s6, -1327
                  ori          a0, s5, -472
                  andi         zero, t5, 1495
                  add          t0, a2, a1
                  xori         zero, a1, 1934
1383:             sltiu        s3, s10, -1374
                  srai         s1, s2, 21
                  bge          a6, s0, 1390f
                  bne          a4, s6, 1400f
                  and          ra, s3, a4
1388:             slt          s4, s3, t6
                  xor          sp, tp, a7
1390:             sub          s8, a3, s7
                  blt          a4, a5, 1400f
                  srl          s7, s2, a6
                  sltiu        s10, s11, 2008
                  blt          s9, sp, 1404f
                  auipc        gp, 979296
                  slli         s11, t1, 30
                  sltiu        s0, a0, -1760
                  bgeu         s4, s10, 1409f
                  auipc        a6, 229493
1400:             blt          s2, s9, 1418f
                  nop
                  andi         s3, s8, 1793
                  blt          s9, t2, 1418f
1404:             or           s5, t6, s11
                  bgeu         zero, t0, 1406f
1406:             ori          a2, s0, -547
                  add          a4, a3, a0
                  slt          a7, s1, s3
1409:             slti         s11, tp, -1273
                  bltu         s0, s1, 1412f
                  add          s9, a1, t3
1412:             lui          s9, 493103
                  bltu         t6, a6, 1433f
                  and          s5, a5, a7
                  srai         a1, s3, 6
                  and          s2, gp, ra
                  bltu         s10, tp, 1423f
1418:             auipc        a4, 153194
                  or           sp, s7, a6
                  sltiu        s9, a2, 805
                  xori         t0, s1, -1319
                  sll          a7, s10, a1
1423:             slti         s1, t1, 1919
                  slti         s7, t6, 983
                  srli         s1, t4, 13
                  addi         t2, a2, -1480
                  slli         a2, t2, 29
                  sll          s5, a7, sp
                  bne          zero, gp, 1436f
                  blt          a5, s6, 1441f
                  lui          s2, 332827
                  slti         sp, s7, -1863
1433:             bne          s5, a0, 1441f
                  ori          s5, a1, 334
                  sll          a4, t0, ra
1436:             andi         sp, t3, -1089
                  srai         a7, s9, 15
                  beq          tp, t6, 1456f
                  bne          t5, s0, 1450f
                  bge          s6, t0, 1442f
1441:             xori         a1, a0, -1102
1442:             blt          a3, a5, 1449f
                  sltu         t1, a1, s3
                  srai         a2, s0, 13
                  auipc        gp, 140492
                  xor          t5, t1, t2
                  sltiu        s1, tp, -759
                  xor          zero, s0, s10
1449:             sltu         a0, t0, t2
1450:             xor          t3, zero, s5
                  or           a4, t3, zero
                  slti         a0, a5, -864
                  beq          s4, a4, 1462f
                  and          a3, s1, s0
                  andi         a2, s5, 1430
1456:             blt          s3, a2, 1476f
                  slli         s2, a3, 15
                  srli         s2, t5, 28
                  sra          s0, t1, zero
                  addi         a1, s10, 1948
                  xori         s6, a3, -94
1462:             xori         a6, ra, 1185
                  srl          a1, s4, t0
                  add          t3, s2, s1
                  and          a2, s8, tp
                  srli         t6, t6, 25
                  lui          s5, 142501
                  slt          a0, a3, a5
                  ori          s5, sp, 1225
                  slti         ra, a1, 784
                  beq          a2, sp, 1475f
                  bltu         s4, s11, 1487f
                  lui          s0, 721330
                  sub          s1, a6, gp
1475:             slli         s4, t6, 0
1476:             addi         s5, s7, -302
                  sltiu        t3, sp, -885
                  sll          s1, s2, t2
                  lui          s11, 905662
                  lui          s4, 73776
                  auipc        s7, 283734
                  lui          s6, 722612
                  bgeu         s3, s11, 1503f
                  addi         a4, t1, -381
                  blt          a7, a6, 1495f
                  sltiu        s7, a4, 1820
1487:             lui          sp, 199223
                  sltu         s1, a2, t3
                  xori         s9, a6, 853
                  auipc        a2, 76258
                  slli         gp, t0, 6
                  sll          s4, s4, s0
                  auipc        s2, 745631
                  or           s6, t5, s3
1495:             bltu         gp, s11, 1509f
                  bgeu         s0, t4, 1498f
                  lui          ra, 910617
1498:             blt          s2, a3, 1500f
                  srl          a6, s9, t1
1500:             addi         a0, t4, 1820
                  sltu         s2, a5, a4
                  blt          a1, t1, 1515f
1503:             sltiu        t2, gp, -1883
                  srli         a3, a6, 14
                  slti         a2, s11, 175
                  bge          t5, a5, 1520f
                  srli         a7, a3, 27
                  slt          t3, a0, s6
1509:             bge          ra, sp, 1527f
                  slli         s6, s7, 23
                  srai         s0, s6, 9
                  sltiu        a3, a0, 1874
                  addi         a2, gp, 573
                  lui          t5, 545934
1515:             addi         a2, a6, 1953
                  sll          s2, a1, s10
                  sll          s6, s0, a2
                  add          a3, ra, t0
                  nop
1520:             sltiu        s3, ra, -1077
                  srl          a1, sp, t2
                  bne          t5, t2, 1526f
                  or           s3, s2, s9
                  addi         t2, a2, 1056
                  xor          s4, a0, t3
1526:             srl          t3, s4, s10
1527:             ori          ra, t3, 1980
                  sltu         s7, t0, s5
                  nop
                  slli         zero, t3, 19
                  and          ra, s10, s11
                  blt          a0, a5, 1543f
                  sra          s7, s6, t5
                  addi         sp, a0, 1346
                  sub          s10, a3, a0
                  sltiu        a4, a7, 294
                  sltu         gp, s10, gp
                  srai         s9, s4, 19
                  and          a7, a2, s9
                  sra          s6, s3, s0
                  lui          gp, 9011
                  bne          s0, t3, 1554f
1543:             add          a4, t4, t4
                  sll          s8, s0, s2
                  andi         s11, ra, 408
                  sltu         t2, sp, tp
                  slli         a2, t4, 28
                  xor          s11, s6, gp
                  addi         s2, t2, 310
                  srli         a3, a5, 2
                  slt          t5, sp, a6
                  bge          a7, a0, 1565f
                  srli         a3, gp, 2
1554:             addi         a0, t0, -1464
                  ori          s2, s1, -703
                  slti         s2, tp, -1609
                  nop
                  sra          t6, t0, t5
                  andi         s8, a4, 301
                  ori          a7, a6, 1846
                  xori         s1, a5, 277
                  bgeu         t0, a4, 1582f
                  bltu         s10, t3, 1565f
                  srl          a4, s8, t4
1565:             slti         a4, s8, 276
                  srai         a4, t1, 18
                  bgeu         s5, s11, 1582f
                  addi         zero, t1, 261
                  srai         a1, s0, 0
                  srl          t5, a2, a1
                  srai         ra, s11, 8
                  sra          a0, s7, s8
                  ori          s3, s3, -1387
                  sll          t2, t2, a5
                  srai         t1, a5, 19
                  srai         a4, t1, 1
                  slt          gp, a6, s0
                  srl          t6, a3, s6
                  beq          sp, s9, 1597f
                  sltiu        a6, t1, -114
                  sub          s1, zero, t2
1582:             xori         a2, t1, 1248
                  auipc        a7, 256284
                  andi         s1, s4, -373
                  sra          s7, t6, s10
                  or           s4, t6, a3
                  sub          t2, zero, s9
                  sltu         a0, a5, t5
                  sltu         t1, a2, a4
                  add          s4, s0, a2
                  or           t0, a1, t6
                  beq          a2, s3, 1597f
                  slt          s0, t0, t2
                  beq          a2, a5, 1603f
                  sra          t5, s0, t3
                  add          sp, a6, s1
1597:             auipc        a2, 398416
                  lui          a3, 144145
                  sll          t0, tp, t5
                  ori          a6, a0, -2023
                  srl          a0, t3, s0
                  auipc        s0, 992547
1603:             xor          a6, s4, a2
                  add          s10, s2, tp
                  slti         a4, t4, 420
                  xori         s10, t6, -867
                  slt          t2, zero, t0
                  srai         zero, s1, 9
                  beq          t0, a2, 1623f
                  bge          s7, s8, 1620f
                  slti         s10, gp, 32
                  sll          a2, t0, s0
                  nop
                  srli         s1, a6, 22
                  sltiu        gp, t3, -1473
                  blt          t4, s9, 1625f
                  sll          sp, a1, s8
                  bgeu         a6, a2, 1629f
                  sltu         s6, a1, ra
1620:             addi         s4, s1, -747
                  slti         s9, s1, 264
                  bltu         a1, tp, 1629f
1623:             ori          s9, s8, 585
                  andi         a6, a2, -1612
1625:             xor          gp, ra, s7
                  and          s2, a4, tp
                  sra          t3, t6, t3
                  bgeu         gp, a6, 1648f
1629:             add          a6, s0, s1
                  sub          t0, s10, tp
                  blt          t1, gp, 1641f
                  slt          a4, s1, s8
                  slli         s3, s0, 1
                  srli         s1, s5, 20
                  srl          a0, a5, a0
                  lui          s11, 846480
                  xori         t5, gp, -1617
                  sll          a2, gp, a0
                  slli         a0, s5, 20
                  auipc        s11, 856812
1641:             bge          a4, s0, 1643f
                  slt          s5, a7, t2
1643:             blt          s11, s8, 1657f
                  sltiu        t6, tp, -1008
                  xori         t2, a4, 727
                  lui          s8, 1044844
                  slti         t1, a0, -1740
1648:             srl          a7, a7, a4
                  slt          t5, zero, s6
                  sll          a2, s0, s6
                  xor          s7, s11, s6
                  lui          a7, 827173
                  srl          t3, t1, a3
                  addi         a1, s6, 493
                  slli         s2, s11, 2
                  srl          t6, s10, zero
1657:             srl          s2, s10, s4
                  andi         ra, s1, -1950
                  bltu         gp, tp, 1661f
                  lui          a7, 803566
1661:             nop
                  bgeu         t6, s9, 1669f
                  la           s1, region_1+915 #start riscv_load_store_rand_instr_stream_1
                  srai         s11, s4, 17
                  sb           a2, -252(s1)
                  ori          t0, a5, 358
                  auipc        zero, 616472
                  auipc        t6, 897968
                  sltu         t2, t0, a5
                  srai         a6, s4, 17
                  srai         a1, a3, 23
                  addi         a0, s2, -492
                  or           t3, s10, s8
                  srl          s10, zero, a5
                  sub          t3, a5, s6
                  lbu          s0, 164(s1)
                  slli         s7, t0, 20
                  sltu         s4, s3, t0
                  lb           ra, -78(s1)
                  srl          gp, t3, a2
                  lb           s6, -42(s1)
                  lbu          a1, -206(s1)
                  andi         gp, t2, 339
                  or           gp, s8, zero
                  xor          s5, t6, t1
                  lbu          sp, -116(s1)
                  lh           gp, 249(s1)
                  xori         a7, a3, 522
                  sh           ra, 109(s1)
                  nop
                  slti         t2, s10, -1205
                  lbu          t3, -250(s1)
                  sb           s4, -172(s1) #end riscv_load_store_rand_instr_stream_1
                  andi         t0, a6, 410
                  sltiu        a4, t4, -1949
                  andi         t2, tp, -1078
                  beq          a5, s11, 1674f
                  andi         t3, zero, 19
                  sll          a7, s6, gp
1669:             auipc        a3, 804133
                  addi         s10, sp, 1062
                  slti         t0, tp, -1818
                  add          s9, s3, tp
                  addi         s11, ra, 542
1674:             sub          a1, s10, s11
                  srl          sp, a5, t4
                  slti         a2, a3, 1338
                  sub          s2, a4, s2
                  srli         t6, s7, 12
                  sltu         t3, s6, t2
                  blt          s6, a0, 1695f
                  sub          a3, s9, ra
                  ori          sp, t0, 379
                  nop
                  srl          s1, s4, s0
                  xor          gp, a5, s2
                  andi         s11, a2, -319
                  add          a4, t5, ra
                  sltiu        t0, t0, 1543
                  xori         s10, a4, 1514
                  sll          sp, a2, t1
                  nop
                  and          zero, a6, t1
                  sltu         s10, zero, t6
                  srai         gp, t5, 30
1695:             xor          t6, a6, t0
                  bge          ra, t1, 1698f
                  ori          s5, t6, -507
1698:             bge          s4, a4, 1699f
1699:             sltiu        a7, sp, -1774
                  bgeu         s3, t2, 1720f
                  andi         a4, t2, -1595
                  or           s11, t2, a7
                  sltiu        t3, a2, -1513
                  slli         a7, a5, 31
                  sra          s9, gp, s11
                  or           s8, a2, zero
                  srl          a4, s11, s10
                  nop
                  srli         t3, s7, 6
                  xori         s1, s3, 398
                  bgeu         a6, a5, 1722f
                  or           s10, a0, s10
                  nop
                  slt          s4, s7, t3
                  srl          s11, a1, s8
                  slt          s7, s2, a2
                  srl          a6, zero, a4
                  slt          s1, a6, s11
                  bgeu         s3, a1, 1733f
1720:             beq          s6, s9, 1726f
                  blt          s7, a7, 1723f
1722:             nop
1723:             xori         t6, s1, 2030
                  addi         s8, s8, 649
                  nop
1726:             nop
                  srli         t1, s7, 18
                  sra          a3, a2, s10
                  slli         s4, a0, 1
                  bltu         t6, s10, 1731f
1731:             slt          s5, t1, s11
                  add          a3, gp, s9
1733:             blt          t2, s5, 1740f
                  xor          zero, s3, a7
                  bne          s11, zero, 1744f
                  sltiu        a3, s3, 179
                  and          s2, t1, s6
                  slti         s3, t0, -780
                  add          t1, t3, t1
1740:             bgeu         a3, a7, 1747f
                  beq          s4, s4, 1749f
                  bltu         t4, s6, 1756f
                  slt          s1, s10, a2
1744:             beq          s2, a1, 1754f
                  slti         s4, tp, -1436
                  srai         s1, gp, 12
1747:             ori          a7, zero, -701
                  nop
1749:             and          t6, t3, t3
                  bge          a6, s3, 1761f
                  sll          s1, s9, s0
                  xori         s0, t1, 1808
                  blt          t2, t2, 1764f
1754:             ori          gp, s4, -896
                  bne          s5, s0, 1757f
1756:             bltu         a6, s10, 1771f
1757:             auipc        s10, 569589
                  addi         s9, zero, 121
                  xor          ra, s7, a7
                  add          s8, s9, a6
1761:             xori         s5, zero, 1734
                  auipc        s1, 453265
                  xori         s5, a2, -1171
1764:             srl          t6, t2, s0
                  xor          s7, t6, s5
                  bgeu         a4, sp, 1786f
                  bne          t3, tp, 1787f
                  bne          s6, a7, 1782f
                  bgeu         s6, s6, 1783f
                  bge          s8, s2, 1772f
1771:             srl          s11, a2, sp
1772:             bgeu         t4, zero, 1778f
                  sll          t6, ra, sp
                  lui          s10, 529142
                  beq          sp, s6, 1786f
                  slti         s7, s7, 1647
                  bge          s11, s4, 1795f
1778:             slti         a6, t6, -202
                  ori          s6, t5, 274
                  and          a1, s11, t4
                  sub          t0, a5, s8
1782:             srli         t0, s11, 28
1783:             sltiu        a0, s2, -601
                  sra          t3, a0, a6
                  bgeu         a4, s7, 1800f
1786:             or           s9, sp, s0
1787:             sltiu        ra, s1, -1148
                  auipc        s8, 563280
                  auipc        s2, 1046843
                  beq          tp, ra, 1792f
                  auipc        zero, 908056
                  sltiu        t5, zero, 827
                  xori         t3, s11, 181
                  srli         a4, s6, 21
                  ori          s11, a6, 419
                  slt          t3, t1, a1
                  sll          s6, t5, s7
                  sub          a1, a1, a4
                  lui          a2, 135665
                  bne          s7, a5, sub_6_j12 #branch to jump instr
                  sll          a2, a1, t2
sub_6_j12:        jal          s0, sub_8 #jump sub_6 -> sub_8
1792:             bgeu         ra, gp, 1796f
                  add          t5, sp, t2
                  slti         a2, s7, 1858
1795:             slti         t6, a1, -1294
                  la           sp, region_1+1854 #start riscv_load_store_rand_instr_stream_2
                  sb           a2, 10(sp)
                  sltu         a7, a4, s3
                  sb           sp, 31(sp)
                  sb           tp, -54(sp)
                  sh           t0, -56(sp)
                  lbu          a6, -61(sp)
                  sra          t3, s11, tp
                  xori         s4, t6, 660
                  lui          s8, 690034
                  auipc        t3, 355068
                  lbu          gp, -20(sp)
                  xor          s6, t2, a2
                  sb           s3, 53(sp)
                  lb           s2, 41(sp)
                  sra          s7, s8, t4
                  lbu          s8, 25(sp)
                  andi         s6, a3, -456
                  lb           a4, -9(sp)
                  nop
                  sra          s2, s7, s1
                  srli         s9, t5, 25
                  slti         gp, zero, 853
                  and          a3, s1, s0
                  sltiu        s6, a3, -270
                  sb           s9, 23(sp)
                  srai         s10, t0, 14
                  lbu          a1, 39(sp)
                  srai         a2, s2, 4
                  lbu          s4, -38(sp)
                  sb           sp, -59(sp)
                  slt          s11, s1, a0
                  lbu          s5, -20(sp)
                  add          t2, a2, s4
                  sb           ra, 34(sp)
                  and          s0, s9, s1
                  slti         s5, a7, 1884
                  lw           s9, -38(sp)
                  lb           t2, 23(sp)
                  lbu          a1, -27(sp)
                  sub          s2, a7, s0
                  sb           t4, 53(sp)
                  sra          s7, t6, a7
                  xor          a4, t6, s3
                  sltiu        t6, t2, -1360
                  sb           a2, -25(sp)
                  srl          s4, s5, zero
                  lb           s7, -47(sp)
                  lw           t6, 2(sp)
                  sb           s7, 19(sp)
                  addi         s10, t6, -760
                  lh           s3, 42(sp)
                  sh           s6, 18(sp)
                  sb           ra, -53(sp)
                  addi         t0, tp, 274
                  sh           s9, -10(sp)
                  lh           s1, 22(sp) #end riscv_load_store_rand_instr_stream_2
1796:             srl          s9, s8, t0
                  bne          a6, ra, 1806f
                  sra          a7, a4, t1
                  bltu         t0, a5, 1812f
1800:             bge          t5, a0, 1820f
                  add          t3, t1, s0
                  nop
                  bne          sp, s6, 1815f
                  beq          s6, t1, 1822f
                  sub          s9, s2, s11
1806:             and          s0, ra, a5
                  xor          a4, ra, ra
                  sub          s3, s9, t4
                  addi         s8, a0, -952
                  andi         s3, gp, -818
                  addi         t5, s10, -650
1812:             srai         s1, s2, 1
                  bltu         s2, a2, 1818f
                  sltu         s10, sp, s5
1815:             auipc        s10, 789856
                  nop
                  slti         a3, gp, 592
1818:             sra          s6, s7, s5
                  addi         ra, s3, -461
1820:             srai         ra, s11, 12
                  xori         t0, a4, -966
1822:             and          a2, a5, s8
                  add          t3, t5, t2
                  slt          t5, t1, s11
                  beq          s4, t6, 1835f
                  andi         s0, s2, -821
                  slt          s8, s1, t0
                  and          sp, a0, s11
                  sub          a6, a0, s8
                  bne          t6, a6, 1841f
                  lui          s8, 292684
                  sub          s3, s9, s9
                  slt          zero, a3, t4
                  srl          s9, s3, a0
1835:             addi         t3, s7, -997
                  or           a6, a6, s10
                  or           s4, s11, tp
                  beq          a6, tp, 1846f
                  beq          tp, t6, 1846f
                  srl          s0, t1, s0
1841:             sltu         zero, a3, s5
                  sll          s9, a1, a0
                  slt          a6, s8, s7
                  srai         sp, s4, 16
                  bge          ra, a1, 1860f
1846:             slt          s9, s7, s3
                  sub          a0, t6, t2
                  slli         s9, a3, 17
                  slt          a6, sp, s1
                  sll          gp, t6, a6
                  add          zero, s4, s1
                  or           s11, a6, s9
                  ori          s7, s5, -1069
                  and          a3, s4, a7
                  nop
                  sltiu        s11, s0, 393
                  bltu         s1, tp, 1872f
                  sltu         s9, t2, a0
                  sub          zero, t1, s0
1860:             or           t1, t3, t3
                  blt          a1, tp, 1870f
                  xor          s8, s10, t0
                  add          s6, a1, s8
                  bge          a7, sp, 1884f
                  xori         s7, a2, -1377
                  slti         t1, a6, 1930
                  auipc        s1, 431338
                  or           s0, a4, a3
                  slti         s5, tp, 1702
1870:             sra          s0, a5, a7
                  andi         s3, s8, -327
1872:             lui          s1, 1043318
                  bne          t3, t2, 1880f
                  slt          s6, s2, t3
                  srli         t1, s10, 8
                  slti         s0, s10, 1350
                  auipc        t3, 462978
                  bne          t0, t1, 1892f
                  sltiu        s3, s1, 425
1880:             lui          a3, 688626
                  slli         s11, a2, 5
                  ori          t5, s3, 1919
                  sltu         zero, t3, sp
1884:             sub          s3, s11, t1
                  slli         ra, s8, 4
                  sub          s0, s0, a5
                  nop
                  addi         t2, s0, -393
                  blt          a3, t4, 1899f
                  sltiu        s2, s11, -1223
                  lui          t5, 638452
1892:             sll          sp, a3, t0
                  or           s7, a6, a5
                  bge          s2, s6, 1906f
                  addi         s2, ra, 616
                  add          t0, t2, s6
                  bltu         t5, a1, 1899f
                  slti         ra, a4, -240
1899:             bne          s10, t4, 1900f
1900:             slt          s3, s7, t2
                  sltiu        s1, s5, 811
                  and          a2, t5, gp
                  and          ra, s4, t3
                  srl          s4, s1, t0
                  addi         s10, tp, -1042
1906:             sub          a2, s1, sp
                  lui          s7, 99673
                  sra          zero, s5, a3
                  sltiu        a4, a4, -1613
                  sub          ra, s3, s8
                  srl          t2, s3, zero
                  lui          a1, 386765
                  addi         s3, s8, 1428
                  ori          t5, s1, -1542
                  sltiu        a7, t0, 1891
                  bne          s4, a5, 1926f
                  sll          sp, t1, t3
                  lui          zero, 765229
                  bne          s9, a6, 1932f
                  slti         t6, t0, -1266
                  sra          s5, a2, a0
                  sltiu        a0, s10, 221
                  srli         s3, a2, 7
                  bltu         t5, a4, 1935f
                  slt          t6, t5, s6
1926:             and          a4, s10, a1
                  sll          s1, t0, a5
                  sub          s7, sp, t5
                  srli         s1, s7, 22
                  sub          sp, s8, t3
                  sltu         s6, t3, a0
1932:             bltu         t2, ra, 1946f
                  srl          s11, zero, s4
                  beq          s2, sp, 1939f
1935:             bge          s11, zero, 1955f
                  slli         t2, t3, 7
                  nop
                  bge          a6, s1, 1940f
1939:             bge          gp, s5, 1950f
1940:             srai         a7, t3, 12
                  auipc        a1, 477837
                  sra          s6, t2, s3
                  srli         s4, s11, 27
                  nop
                  beq          a2, a0, 1947f
1946:             beq          t5, a7, 1959f
1947:             sltu         s9, a2, t5
                  auipc        a3, 137002
                  and          t0, t6, s2
1950:             or           a6, a5, t5
                  xori         ra, t1, 61
                  or           s7, a5, t2
                  bge          zero, sp, 1959f
                  bne          t5, a3, 1959f
1955:             ori          s10, t6, -1647
                  srl          a7, a1, s11
                  bgeu         t3, a1, 1959f
                  sra          t3, a2, s3
1959:             lui          ra, 318106
                  lw           s0, 4(t4)
                  addi         t4, t4, 16
                  sra          s9, tp, s5
                  srli         s4, s9, 21
                  lui          a3, 191348
2610:             addi x22, x8, 1
2610:             jalr x22, x22, 0
sub_7:            beq          s11, t0, sub_7_stack_p
                  sltu         a3, sp, a7
sub_7_stack_p:    addi         t4, t4, -28
                  sw           s0, 4(t4)
                  lui          ra, 873688
                  sra          gp, s9, s2
                  addi         t2, a4, 321
                  srl          a1, sp, tp
                  bltu         t5, t0, 5f
                  and          a2, s0, t6
                  sltiu        s10, s4, -836
                  beq          a0, s10, 11f
5:                sltu         t2, a7, a3
                  add          a3, a0, a1
                  sra          s10, a0, s6
                  xor          gp, t0, s8
                  slt          s9, s7, a3
                  nop
11:               and          s3, s8, a4
                  and          a0, tp, s3
                  lw           s0, 4(t4)
                  slti         s9, a2, -1908
                  sub          t0, s11, s1
                  slli         gp, s0, 13
                  sra          s5, a3, sp
                  sra          s8, s1, t4
                  addi         t4, t4, 28
                  srai         a7, s6, 21
                  and          zero, a3, zero
                  slti         a0, t0, 1685
30:               addi x24, x8, 0
30:               jalr x24, x24, 0
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
.word 0x9ff80460, 0x766d4800, 0x271093a6, 0xa671bd36, 0xe7a01b9a, 0x2cab634b, 0x691e854b, 0xf9dc4931
.word 0xd6d39d85, 0x322f3c72, 0x39b66b65, 0xc059a752, 0xc856972f, 0xbf5d4b17, 0x034f1d05, 0x4f49b2c5
.word 0x38f2af06, 0x2f19e3ba, 0xf18d0e62, 0x6f888027, 0x190abd5f, 0x6aba8893, 0xeb4a3463, 0xbce578da
.word 0x124ee527, 0x1acb5979, 0x4f7dbd97, 0x8593121c, 0xceba1a8d, 0x5e549276, 0xdfc70002, 0x1fe0ba73
.word 0xcc3a962a, 0x0ffba7fb, 0x8c7991d4, 0x383b3ef4, 0x5e456200, 0x5a0a2e1f, 0x4392296e, 0xc637d1d0
.word 0x5f10283c, 0x185074cb, 0xec37d797, 0x4c95d264, 0x83805c2e, 0x4d5f9c12, 0xe403e277, 0x749324cd
.word 0x2e9f54e6, 0xa84da3b2, 0xf4a9a1fd, 0x0938cd3b, 0x37cc0b8d, 0xd0e5663d, 0x3e34c79e, 0x9e6916ec
.word 0x7eb168b0, 0xd8f5009c, 0x1736b729, 0x54dc9409, 0x6931d677, 0x2f1fe48c, 0x15929995, 0xc15d5941
.word 0xf210c073, 0x4bc69607, 0x6d177661, 0xc21555b6, 0x0e567270, 0x0140c02b, 0xbc1679e5, 0xa7ff5044
.word 0xfb51de53, 0x05eca3a9, 0x5fcd26bf, 0xa9db1a46, 0x1ab2d3dd, 0xfb04b62a, 0x508e4b7a, 0xc4260d37
.word 0xf9f2889a, 0x37391d6e, 0x413bb127, 0x0e4deef9, 0xeffbeee7, 0x3d7df383, 0x3ab0f0a1, 0x9bafbeac
.word 0x4eb92916, 0x143b8ad9, 0x94d9613e, 0x7d7c51a2, 0x1c9b54b3, 0xffa7911f, 0x30fc660f, 0x2c7b9e1b
.word 0x94fcd1ca, 0x569599f3, 0xae1b6492, 0x027fe06e, 0x0030b1b1, 0xde7184ea, 0x1ac9d42b, 0x8fb0fd5e
.word 0x21909fb0, 0x5e733139, 0x20cabf95, 0xfba96731, 0x9bccca68, 0xe0062e81, 0xcedb3786, 0x2e64c988
.word 0x6846aa62, 0x1cc8a87f, 0x35286398, 0xe36421b2, 0xbbc1af27, 0x730ca934, 0x34acbf6a, 0x2d1f3209
.word 0x5c816ca8, 0xc8230185, 0xc2ab93bc, 0x9ab76ca8, 0x00862e08, 0xa271f583, 0xd9484834, 0xae14ca53
.word 0x3516431c, 0xcf683c6b, 0xb239d30a, 0x59721531, 0xb0804071, 0xca08a6da, 0x6759bfbf, 0x84dfdd8d
.word 0x1fdf325c, 0x655b9df9, 0x8254d94f, 0xb2fe41fd, 0xfff2589c, 0xdf30d1fd, 0x1f3ab0fe, 0xacb2fe6f
.word 0x5ae0b4f6, 0x631425ed, 0xab264b0f, 0x6d5cc224, 0x3d48b896, 0x1002ffe1, 0x22b15c63, 0x42777775
.word 0xd254c40b, 0xc2398e72, 0x4d2493ac, 0xf98edcdd, 0x5f98aae3, 0x300d0e2c, 0xf4ee22d5, 0x9420bff7
.word 0xb0898784, 0x648d09ea, 0xe736b0b3, 0xad7239f1, 0x38c44925, 0x08dcc1b3, 0x18fe21ff, 0x4e2c89ab
.word 0x11c32185, 0xe1992d80, 0x8727cfa9, 0x03359ea7, 0x957c5989, 0xdc9dd7b2, 0x27e0e045, 0xd1364fb6
.word 0x4d4fc5ee, 0xdde7f441, 0x7919c2f5, 0x9a96f39d, 0x8cd57a77, 0x04ee1a4c, 0x78ab79aa, 0x31940379
.word 0x68fedfd4, 0x8b70effa, 0xd64dd57a, 0xbba7f934, 0x0c129c8b, 0xc435d717, 0x4b912c50, 0x9bda4448
.word 0xb62899db, 0xb33dabf6, 0x7016a4ed, 0xaeeba9a2, 0xed7f7dd0, 0x15dabea9, 0xe06818a7, 0x9d506622
.word 0x1bb22af7, 0x8a4f49fb, 0xaac27e94, 0xafa3c1ce, 0x54f61940, 0x005523b7, 0xa8f8e3aa, 0xf37cbc44
.word 0x363de0b4, 0x0342cdd2, 0xe0f19c88, 0x85048bf2, 0x0c535f04, 0xf429a9c8, 0x0457a2ed, 0xc41c008f
.word 0x3a6c2c61, 0x241aa050, 0x7d6560c3, 0xba5c9799, 0xed3e5e4c, 0x273e78a9, 0xedb99159, 0xed91a2cf
.word 0x8d5b2ce2, 0xe9368db1, 0xf5bd55b5, 0x7dc57744, 0x030056f7, 0x12a17c69, 0xeb2b65f8, 0xc662eada
.word 0xe6324d81, 0x810e00e2, 0x7a5ccdba, 0x8e18b3be, 0x78df209b, 0x91b19e99, 0x3621baaa, 0xfebb39d2
.word 0xbc2e1972, 0xfacf5849, 0xcaecea2c, 0xad7ea685, 0x6fb80614, 0xec03e1e4, 0x53a26b95, 0xd8d045d0
.word 0x5d0c5367, 0x03e264cc, 0x96759f4e, 0x52033545, 0x79a423f0, 0x90f148de, 0x0d520fc0, 0x3093f8a2
.word 0x184fcb63, 0x81272725, 0x9017b2fa, 0xb4473af0, 0x282da1ef, 0x6dde3794, 0x00aae407, 0x72e7b5f4
.word 0xe75d9aa1, 0xd1e9d34e, 0x55675cc2, 0x7af6d4b0, 0x6400071a, 0xe989c49b, 0xcff0d051, 0xd5532878
.word 0x9f26c970, 0x2d401417, 0x3eab6ced, 0x8ff35eda, 0xf2bd1b12, 0xba7072a7, 0x44bafbe9, 0x2e03e085
.word 0x1974750c, 0x32c3f53b, 0xa3881ba3, 0x2167f2b1, 0x916963c3, 0x153303d6, 0xb3708423, 0xc211806d
.word 0x1555b4cc, 0x7d9b0b4d, 0xaed19a34, 0x6ac42f49, 0xc4bab855, 0x9711f187, 0x94ca35f2, 0x833789fb
.word 0x815d3784, 0x70edd35a, 0x632325bc, 0x374663c9, 0xc13b46ec, 0xe1642457, 0x440b0e07, 0xa29091f5
.word 0xceebb1e9, 0x9f57c4c1, 0xbc283d7b, 0x341cb1e2, 0x4f75d36a, 0x68048669, 0xf9ffdee5, 0x28185424
.word 0x77bf8ece, 0x44cfc81a, 0x7bec18aa, 0xb4239a4f, 0xad925c89, 0xc4bc423b, 0xf6affd4b, 0xf395240f
.word 0xbe69bbf2, 0x86e4c766, 0x8a493482, 0xf736726b, 0xccc7d6b5, 0xcf7a6526, 0xe71ad4df, 0x9352252f
.word 0x43ef7f3a, 0xa56f7727, 0xfa7015a8, 0x96a59525, 0x039f7d4b, 0x075bba21, 0x473df7ca, 0x2782fe19
.word 0x36b05d76, 0xc1fbfc0b, 0xa1a19e7c, 0x734ec9bb, 0x47a00e06, 0xdd76546b, 0x96e6f002, 0x3521104e
.word 0x0812baa6, 0x9ae203d4, 0x4853403a, 0x9a768bb8, 0xc4284d56, 0xd05df1cd, 0x5ae4b799, 0x8816442f
.word 0x35d77dd4, 0x84f6d6d3, 0xb2c9c3ea, 0xe1294024, 0x8ab13175, 0x0eee10fe, 0x4d3c332d, 0xea795a05
.word 0x429433d3, 0x8bf1f35e, 0x2837d4c8, 0xc3697591, 0x8d0a5054, 0xc772086c, 0x2137fb1f, 0x4cc733ad
.word 0xc5f04871, 0xaf59adcd, 0x89213402, 0x0535d9c0, 0x028272bc, 0x9fa17c0b, 0xdd944ee4, 0x8edf6e60
.word 0xb9d8a12c, 0xb8cad082, 0x5c580986, 0xb0a491dd, 0x678fbc7a, 0x11e846a3, 0x736af89e, 0xc51eb1be
.word 0xed7ab6da, 0x7561c539, 0xb40ae064, 0x355372d7, 0xd60feace, 0x3306c38b, 0x6431f386, 0x36f63860
.word 0xe6d05b5b, 0x40d1c9d9, 0x0823b812, 0x20e1a859, 0xe034ea37, 0x20b687ec, 0x0737309e, 0xf771e951
.word 0x1336e2aa, 0x338e7969, 0x00cd3ca0, 0x4516b907, 0xda84d122, 0xa098abbc, 0x65c728e3, 0x7e801ace
.word 0x4fcdd61c, 0x18104012, 0x9b32b3a3, 0x2c05df56, 0x40f2f23d, 0xee686ef6, 0x3eac53b5, 0xe611e782
.word 0xba7afb1c, 0x45cfe63e, 0x65c74f09, 0x56c9b9f9, 0x5b1722f6, 0x0b54b07c, 0x58ceae81, 0x7999b17f
.word 0x32b913cf, 0x7946f94d, 0x0c3b10b7, 0xb9ab8de7, 0xd8a16552, 0x34e117e3, 0x5ed49996, 0xc9f62876
.word 0x9ae82d6f, 0x2b51d015, 0x2b91009e, 0x9ae38679, 0xb0804d7f, 0x066cc34e, 0x46f852dc, 0xded09d36
.word 0x84b29567, 0x53e1d311, 0x8570825f, 0xf4eee7c7, 0xeba248b2, 0x790b8b2d, 0xf9882cc1, 0xd3237869
.word 0x396abc70, 0x340815e2, 0xad92a8c3, 0xd9301dec, 0x1749c7d2, 0x1b8a0486, 0xb385191d, 0xaeaca6ba
.word 0x11edf810, 0x866f6050, 0x6912286e, 0x3fd4df24, 0xc5c118bd, 0x2ffc64ae, 0x327dc5ef, 0xbe6613ed
.word 0xa6543faa, 0x8b5c2f72, 0x7a68470e, 0x35963693, 0xf7aca1e3, 0xbacb2208, 0xda89a9da, 0xee8278e5
.word 0xc268befb, 0x7e65a6af, 0x0873c5fe, 0x54c4dc61, 0x042425ef, 0xbe3b6f50, 0x30a4f374, 0x9badd0a8
.word 0x679d9cef, 0x7cb62c41, 0x5febd202, 0xc4bfef49, 0xf027aac6, 0xea285c71, 0xd5a924a8, 0xdf66120c
.word 0x1d2af9eb, 0xaa66ccc3, 0x805228c5, 0xdedd92fe, 0x09ae068c, 0xe0b89544, 0x2959525b, 0xadbcd856
.word 0xa35b0533, 0x2320d167, 0xc19bd043, 0x60342dc0
.section .region_1,"aw",@progbits;
region_1:
.word 0x2be19683, 0xdff309e8, 0x976f800e, 0x87be44d7, 0x286aa524, 0x7635631b, 0xefc4b8cd, 0xf2d742b2
.word 0x1136aed9, 0x2ca18780, 0x7519f77c, 0x21d45978, 0x6c1c4f0f, 0x051c88b9, 0x1f8843d8, 0x80136344
.word 0xbfc8254d, 0xd113c74d, 0x193488a1, 0xcc902055, 0xa4fab0d0, 0xd956e0bc, 0x503b2337, 0x30dbc01b
.word 0x2d6c056d, 0x7d36f63d, 0xa971229b, 0xccf123db, 0x6188afbd, 0x723b9dcd, 0x0de423a7, 0xac06243a
.word 0xd9c1efb9, 0xf20c5e75, 0xdf964729, 0xc8a8a2d1, 0xeedaa6b3, 0x1c811616, 0x22e15738, 0xc48b0fe7
.word 0x0abfbd81, 0xd0e2b38d, 0xc7263d87, 0x80f88bd4, 0x67474e73, 0x2d6bf16c, 0x18c57c12, 0x3710e73d
.word 0x217b3173, 0xda7beaf8, 0x6899fc7b, 0x22133a4e, 0x81ff3a40, 0x1e682929, 0xc4a3d7f9, 0xeaa67751
.word 0xfb3030c5, 0xc1036857, 0x6c1b12d3, 0x61c8618c, 0xb9a9add5, 0x5e5f6f34, 0x8d593933, 0xd1641b50
.word 0x77a3b9d7, 0xb75201e1, 0x6240892a, 0x892b36d9, 0x25372a7a, 0x12051852, 0xbbc2db92, 0xd856cc2b
.word 0x814e37f6, 0xc38c5cee, 0x0a5679b0, 0x4cfa9f90, 0xf54f0dc6, 0x8cf9e938, 0x9d1ec649, 0xbc57019b
.word 0x47749f06, 0xde706da4, 0x3fe0b35c, 0x55c9a79e, 0x3a540fc7, 0x5ca11ea3, 0x2c0ff0c7, 0xd8f60a99
.word 0x1f63778c, 0x160cf204, 0xfb7dae7d, 0xe9b17828, 0x43d310f4, 0xc324a49e, 0xef9e0534, 0xfe93e614
.word 0xa9735631, 0x7bcc0c05, 0xcd8b3b0c, 0xb62f1450, 0xc89cb07b, 0x70dd735c, 0xd5a4346a, 0x729fc693
.word 0xe413a77e, 0xcd3331c5, 0x7cbbc14c, 0x6677fe1f, 0x45068028, 0x71a51fc1, 0xc9405b23, 0x1179114e
.word 0x16183655, 0x2a607ea7, 0xc7dc0309, 0xca8fabf3, 0x6555d1e3, 0x2d1a3aed, 0x99d70c63, 0xeca33237
.word 0xe0ff905c, 0x0c35a6b0, 0x3ceea330, 0x3ddf262a, 0x75ed16bb, 0x1289c907, 0xcb8a106a, 0x579dcdb2
.word 0x08281cdc, 0xf118d49e, 0xdf8d1e56, 0x7aacb683, 0x25aa0ffd, 0x64aabc59, 0x885ae3c9, 0xfe5956e1
.word 0x2ccfa1d8, 0x77169184, 0x082e7e13, 0xa81b2639, 0x34f09c38, 0x2cfa1209, 0xc6346a13, 0x83954bdd
.word 0x64ba62eb, 0x0945d1fd, 0x73ce4d77, 0xc14cf8c1, 0x284d5c0c, 0xdb87b6f2, 0x8c544668, 0x1b263575
.word 0x06457bb3, 0x51fbfa69, 0x1c651be4, 0xf79976c6, 0x64a94aa4, 0x21949eaa, 0x10b2e28a, 0xe38af836
.word 0x5f489123, 0xa26d5a0f, 0x94402406, 0x134ac020, 0x28850f0f, 0x5a871e34, 0x477117ec, 0x38480c95
.word 0x1a7acb73, 0xaafeb9bc, 0x9abe70c4, 0xdffef6ff, 0x6f3faa66, 0xac1febb9, 0xfccf6396, 0x7c95bddc
.word 0x74c245f0, 0x7a902330, 0x3ae56f49, 0x65e1063d, 0x7f64555c, 0xf21daf8c, 0xe7079f48, 0xdd89a779
.word 0xde8ab2ce, 0xed9d601d, 0x5378823d, 0xd063b67a, 0x2983299e, 0x30ec227c, 0x41e1776d, 0xc589ace2
.word 0x1201f975, 0xf6bd352b, 0xc33121c6, 0x40c6f83e, 0xf5458992, 0xb7baf498, 0x758b79c5, 0x9caf0017
.word 0x741c795b, 0xb3c7265e, 0x710ef845, 0x7d3eef74, 0x159f0b71, 0xa7744d92, 0xab021321, 0x64cfa95f
.word 0xb9ec8b3e, 0x8579c97d, 0x167bb488, 0x2bf24ef8, 0x31b2a252, 0x7b095c54, 0x2eb79d94, 0x9d91db06
.word 0x72390364, 0x51988325, 0x6421b3db, 0xae2ee3bb, 0xccce97a5, 0xec11324c, 0x19ad6e79, 0x1959c51d
.word 0xe36c21c8, 0x9caf41ca, 0xe2343705, 0xc72da001, 0x2e18959e, 0x0bb5717c, 0x74250bd7, 0x64a474ba
.word 0x8e742ceb, 0x389c5f6f, 0xc0d1d77b, 0xb0933cd5, 0xb37881e2, 0xf2733cb8, 0xb6daae35, 0x407d8c88
.word 0x55db7478, 0xa68489c8, 0xc91cfe98, 0xe2889528, 0xa6fc49c5, 0xecd0c15c, 0x07b0d598, 0xb924257c
.word 0x0f364517, 0x03ce7cc2, 0x5e250277, 0xc81c7ac5, 0x439c2ac2, 0xcf5a66fe, 0x8fa906e8, 0xeb358ea6
.word 0xb37d934d, 0x163eb208, 0x8fee474f, 0x550a5ac1, 0x92d8044e, 0xbd9d7910, 0x96a5dff5, 0x011b3a48
.word 0x2304d383, 0x41f5a0f5, 0xe560fc7a, 0xaa0cde1b, 0xd68655ac, 0xa622a463, 0x0c789a57, 0x6022a802
.word 0xdeb7c0fc, 0x1fa771c4, 0x96ae516d, 0xb113d93c, 0xe6f21135, 0xf3d92c54, 0xd5c9b8cd, 0x8213a8ba
.word 0xf9ee5010, 0xd13b7184, 0x1e2834c7, 0xb94b077a, 0xeb515a30, 0x72d5f641, 0xe9dcd017, 0xec4955b1
.word 0x41269b51, 0x30aae104, 0x6ffaf57f, 0xc121dc41, 0xfd0522df, 0x32b69181, 0xc4c5c57d, 0x362bc260
.word 0xf0fff644, 0x68546a65, 0xd23042ff, 0xa760c291, 0x0be48ba3, 0xcd42eaf1, 0x7a31ef89, 0xf7686924
.word 0x8416a008, 0xab7e8a07, 0x1047851e, 0x5e2a24ad, 0xfd36f700, 0x37195bf3, 0xad8d3891, 0xa273f7d3
.word 0x9e4c26ed, 0x44efae8b, 0x4398cfc3, 0x9a7b76fb, 0xef8295ca, 0xb63d9f31, 0xdcec2695, 0x4e9c7814
.word 0x41bb91f2, 0x9ecbeda0, 0xd2a71974, 0x12f5a4b3, 0x493c6c56, 0x18ee4404, 0x24e49425, 0x254eba9e
.word 0xf4d6efd0, 0xfe7e5faa, 0x980f3ec7, 0x815aaadc, 0x0e50e6d7, 0xe2d27689, 0x31dc0a0d, 0x8eaad00b
.word 0xce4d2647, 0x875de3b3, 0xc8eb46a7, 0x4d509f12, 0x98243b9e, 0x88ed8c96, 0x6393bec8, 0xafce654b
.word 0xbbbe711d, 0x729c800c, 0xc8d689f1, 0x2a331a43, 0xd79c786d, 0x87fe0451, 0x4eb57714, 0x11ab7580
.word 0x92f3f51d, 0xebf2ee9d, 0x4a78b49b, 0x2753d317, 0x74146f62, 0x7b673373, 0xfad68e00, 0xf9b1222b
.word 0xb50acac3, 0x2e3f09fa, 0xd8942c78, 0x11001e27, 0xae3c61ef, 0x2e56960e, 0xc5831c4f, 0xbb5c507e
.word 0x2d998ce4, 0x526b5f69, 0x3f29e1ee, 0x1de03d33, 0xea7e3a5e, 0x33b8be66, 0x323308df, 0xd195fea7
.word 0x3de341fe, 0x79ee617f, 0xaa156998, 0xdf03d12f, 0xb5127c7c, 0xe6729890, 0x0a05253b, 0xf91db080
.word 0x95003dab, 0x1351270c, 0x3ddfeb1f, 0x4556472f, 0xa48c835c, 0xd5aab6c8, 0x32225d37, 0x76072a00
.word 0x8360223c, 0x8fcbc63a, 0x8a157d79, 0x348df011, 0xce5199ab, 0x81a2b469, 0x2530ff89, 0x932738e3
.word 0xb06844b5, 0xb667ca40, 0x3d8a0919, 0xb9f2aec2, 0xbaef3778, 0xba1f61d5, 0x86eb62a4, 0xda230d67
.word 0x47e2bbd9, 0x98eb2018, 0xd7c58a50, 0x61627aba, 0x3b1da71e, 0xe983cf55, 0xe9159fbc, 0x67166b38
.word 0xbf42a896, 0xffee372d, 0xce24d4cb, 0xb918e863, 0x72954dbc, 0x61f1794e, 0xad3ac46f, 0xeda68441
.word 0x3c430eea, 0xefbe2e89, 0x5f2e767a, 0x3ebe8f5d, 0xfc9779d7, 0xbc05c642, 0x8130262e, 0xc9205632
.word 0xb1ad2df6, 0x7ec12699, 0xf2a69ea5, 0xf664632d, 0xaa8cf053, 0xf254a478, 0xcc6afdce, 0x97674e47
.word 0x90f930b3, 0x49ccd957, 0xce0eddc7, 0xab8b5c67, 0x2dd3388a, 0x0d937b95, 0x044cd369, 0x3c2cc273
.word 0xc4ea6826, 0x85eeff49, 0x65b31fa6, 0xc3ecec1d, 0xaefb4793, 0x58f039c9, 0xb9a0bc54, 0x257cacb1
.word 0xd62fc511, 0xb999ff15, 0x9f0bdc9f, 0x973a9da9, 0xece0228d, 0x653f8940, 0x205948fa, 0xb43282c7
.word 0x4199f790, 0x5f08b27a, 0x15e4f516, 0x30843a35, 0x1d7d12d4, 0x72583e82, 0x21e29892, 0x8b8cef6c
.word 0x8bc2eaa6, 0x6007368b, 0x254624be, 0x99b05a82, 0x3132b426, 0x3a764eef, 0x4b07ad36, 0xb88d38c1
.word 0x3e5d7e9f, 0xb542f6a5, 0x803db12b, 0x3d9be381, 0x5f7fb999, 0x2844587e, 0x726047b0, 0x0625955c
.word 0xe056f0a4, 0xaec7d5e2, 0x1033adf3, 0x4e0302ff, 0x22b7c472, 0x66197a80, 0x758ff14a, 0xc86e29fa
.word 0x10cf136e, 0x41eb0698, 0x06c246db, 0x6720d123
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
                  add x4, x29, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x27, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x27, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x27, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x27, x2, ecall_handler
                  li x2, 0x1
                  beq x27, x2, instr_fault_handler
                  li x2, 0x5
                  beq x27, x2, load_fault_handler
                  li x2, 0x7
                  beq x27, x2, store_fault_handler
                  li x2, 0xc
                  beq x27, x2, pt_fault_handler
                  li x2, 0xd
                  beq x27, x2, pt_fault_handler
                  li x2, 0xf
                  beq x27, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x29, x4, zero
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
                  add x29, x4, zero
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
                  add x29, x4, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x29, x4, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x29, x4, zero
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
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x29, x4, zero
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
