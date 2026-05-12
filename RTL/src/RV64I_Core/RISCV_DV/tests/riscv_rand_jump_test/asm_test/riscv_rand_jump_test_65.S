.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x11, kernel_stack_end

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
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xc9f1a173
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0xf9ae3e27
                  li x8, 0x5ce76bde
                  li x9, 0x0
                  li x12, 0xfb181d3c
                  li x13, 0xf0f5fd4f
                  li x14, 0xc
                  li x15, 0x0
                  li x16, 0xa0da683b
                  li x17, 0xf
                  li x18, 0x7bef57da
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0xe
                  li x22, 0xf
                  li x23, 0xd
                  li x24, 0xf2bc5da6
                  li x25, 0x45d77357
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x1bb9c3a8
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0xf4ab76e4
                  la x10, user_stack_end
main:             slti         t0, s4, -223
                  la           s3, sub_3
                  sub          s9, s2, t3
                  xor          s0, t2, t4
                  addi         s3, s3, 732
                  andi         s1, t2, 1532
                  or           sp, a0, tp
                  beq          ra, s7, main_j2 #branch to jump instr
                  sll          s11, s5, s6
                  slti         t2, t2, -1515
main_j2:          jalr         s4, s3, -732 #jump main -> sub_3
                  la           sp, sub_2
                  addi         t0, s2, 325
                  srai         s1, t5, 4
                  sll          s11, s8, a6
                  andi         zero, sp, 462
                  slt          s0, a6, zero
                  nop
                  addi         sp, sp, -16
                  xori         s0, s1, 1633
                  or           t5, t1, t3
                  slt          s1, s7, s1
                  slt          s0, t0, a2
main_j3:          jalr         s4, sp, 16 #jump main -> sub_2
                  la           sp, region_0+65 #start riscv_load_store_rand_instr_stream_2
                  lui          t1, 766783
                  lbu          a7, 1848(sp)
                  lh           s4, 483(sp)
                  lbu          s5, 1380(sp)
                  srli         a3, gp, 9
                  srl          a2, t2, a5
                  slli         s10, s9, 24
                  andi         s8, t4, -1219
                  lh           a5, 101(sp)
                  and          t0, t1, s2
                  auipc        a6, 898862
                  add          t4, s2, s11
                  lhu          t3, 561(sp)
                  sb           gp, 991(sp)
                  sb           a5, 1814(sp)
                  lb           s3, 1492(sp)
                  slti         s1, a7, 714
                  xori         a6, s0, -1350
                  sltu         t5, tp, s0
                  sb           s4, 1321(sp)
                  sh           t2, 1867(sp)
                  sh           a2, 1605(sp)
                  sltiu        ra, gp, 1299
                  sra          t2, t3, sp
                  or           s9, s5, t0
                  ori          a2, s6, 1267
                  nop
                  lui          t5, 604039
                  sltiu        gp, a4, -1010
                  lb           s4, 560(sp)
                  sb           s0, 348(sp)
                  andi         a5, t0, -1204
                  sb           t3, 852(sp)
                  sh           a2, 673(sp)
                  slli         s11, a0, 25
                  lui          a7, 827589
                  sb           s3, 1049(sp)
                  srai         t6, t4, 31
                  lui          a2, 452969
                  lbu          s10, -50(sp)
                  ori          t6, sp, -1961
                  lbu          t4, 1124(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1048 #start riscv_load_store_rand_instr_stream_3
                  sh           s5, 40(sp)
                  sb           ra, 55(sp)
                  sb           t6, -33(sp)
                  lbu          a6, -4(sp)
                  lui          t5, 790757
                  slti         s1, a3, 1231
                  lw           s3, -40(sp)
                  lbu          gp, 58(sp)
                  srli         t4, t2, 21
                  lui          s0, 849650
                  lb           s5, -23(sp)
                  lbu          t2, 54(sp)
                  srai         s4, t5, 15
                  ori          a2, s8, -1840
                  ori          s8, t1, 1930
                  srai         a4, a5, 8
                  auipc        s4, 658107
                  lbu          t6, -5(sp)
                  lb           t3, -37(sp)
                  lb           a6, 26(sp)
                  nop
                  slli         t1, s2, 3
                  slli         s1, t2, 16
                  lbu          a5, 37(sp)
                  lbu          s8, -9(sp)
                  srai         s10, a1, 6
                  lhu          t1, 48(sp)
                  lbu          s3, 19(sp)
                  lbu          t0, 33(sp)
                  lbu          s2, 64(sp) #end riscv_load_store_rand_instr_stream_3
                  nop
                  and          s11, s7, a2
                  xori         t1, t5, 555
                  srai         s8, zero, 12
                  sltu         sp, sp, s7
                  bltu         a5, a5, 9f
                  add          ra, a0, s2
                  bgeu         sp, s4, 20f
                  srai         t0, s1, 15
9:                srl          s4, s8, t6
                  slt          a7, s5, a4
                  beq          s10, s0, 18f
                  addi         zero, a2, 1437
                  xor          s0, s2, zero
                  srl          ra, a5, a4
                  srli         s9, s9, 29
                  and          a2, gp, zero
                  nop
18:               sltu         t3, a6, gp
                  blt          s1, tp, 38f
20:               slli         sp, s9, 18
                  xori         t2, sp, -893
                  sll          t4, s3, a6
                  ori          gp, sp, 1660
                  ori          s3, t4, 1579
                  blt          t3, a2, 44f
                  beq          s4, s11, 35f
                  nop
                  beq          a6, s5, 34f
                  sub          sp, s3, s11
                  beq          a4, s2, 47f
                  beq          ra, tp, 33f
                  srai         sp, t3, 3
33:               beq          s8, a6, 50f
34:               add          a3, a6, a0
35:               sra          a4, a6, s1
                  auipc        t5, 374454
                  sll          s4, s8, a1
38:               bne          t0, s2, 53f
                  srl          t0, s0, t0
                  or           t5, t1, a5
                  sltiu        a3, s10, 927
                  srai         sp, t6, 3
                  xori         a3, a5, -1887
44:               srli         t2, s5, 13
                  add          s5, t4, s2
                  xori         s2, a6, -1931
47:               beq          s9, t2, 65f
                  or           a3, s3, s6
                  slli         a6, s1, 30
50:               xor          a4, s3, s9
                  xori         t0, t2, -322
                  sltu         s4, t2, a4
53:               sra          t3, t1, s9
                  bgeu         t4, a6, 70f
                  slli         t4, t0, 31
                  sra          s2, s10, t2
                  slti         s10, s6, -1913
                  xori         t1, s10, -505
                  sltiu        s9, t3, 584
                  beq          t0, t3, 67f
                  srl          t1, tp, a2
                  slti         s10, t1, 1503
                  slli         a7, s1, 15
                  or           s0, a7, a1
65:               and          gp, s0, s2
                  sll          t1, a5, a7
67:               bge          s10, zero, 82f
                  srai         a4, tp, 26
                  andi         zero, s4, -1168
70:               sll          tp, tp, s5
                  blt          s9, t6, 90f
                  srli         a3, t0, 20
                  and          a3, sp, s11
                  slt          a7, s7, s8
                  sub          a6, s0, t0
                  auipc        s4, 1031868
                  sub          s8, t5, t2
                  xor          t4, t1, t2
                  la           s9, sub_3
                  addi         s9, s9, 77
                  sub          s0, s2, a7
                  sub          zero, t1, a1
                  bne          a6, s5, main_j4 #branch to jump instr
                  sra          s5, gp, s4
                  add          sp, s7, s10
                  sltiu        s10, a7, 415
main_j4:          jalr         s4, s9, -77 #jump main -> sub_3
                  or           gp, s2, s7
                  sll          s10, s10, a6
                  slli         t0, a3, 10
                  or           a2, a3, a6
                  slt          a6, s10, s10
82:               beq          s4, a7, 89f
                  xor          s5, zero, sp
                  nop
                  sub          s1, s4, s9
                  la           s0, sub_1
                  addi         s0, s0, 787
                  andi         s3, s0, 173
                  sll          a6, a5, t0
                  or           zero, a5, t0
                  sltiu        a6, gp, -348
                  auipc        t1, 1022627
                  srli         sp, s2, 9
                  xori         ra, t5, -1398
                  srl          t4, a4, s2
                  slt          s4, s7, t0
                  add          zero, s7, a3
main_j1:          jalr         s4, s0, -787 #jump main -> sub_1
                  sll          t4, t1, s11
                  bgeu         gp, s10, 103f
                  sltiu        sp, t1, 429
89:               sub          t1, a1, zero
90:               lui          a5, 555389
                  slt          t5, t1, a6
                  srl          s5, s2, a2
                  bge          ra, sp, 102f
                  slt          a7, s11, s2
                  sltiu        t5, sp, -1945
                  xor          t3, s11, s6
                  srli         a7, s1, 25
                  sub          a6, t4, ra
                  or           s0, s9, s0
                  auipc        sp, 116319
                  srl          t1, s11, s3
102:              sll          a5, t3, a7
103:              slti         s2, a6, 1157
                  sub          sp, a7, a5
                  nop
                  srai         t6, s5, 4
                  nop
                  srli         s9, t1, 25
                  bltu         zero, s11, 127f
                  bltu         s11, zero, 116f
                  ori          t1, t4, -582
                  lui          a5, 853186
                  sra          s3, zero, t1
                  sltu         s3, t3, t1
                  add          s10, a2, a0
116:              blt          gp, t4, 125f
                  add          sp, t3, s7
                  bltu         t1, ra, 130f
                  sub          s9, t3, s6
                  beq          a0, zero, 133f
                  srl          a7, s10, sp
                  bne          s10, a3, 141f
                  addi         s3, a1, -929
                  bltu         a5, a6, 133f
125:              srai         a7, s10, 3
                  blt          a6, a4, 134f
127:              slti         sp, t4, -495
                  lui          a5, 414900
                  nop
130:              sra          t6, tp, s6
                  srai         s2, s8, 4
                  lui          a6, 920123
133:              srl          a6, sp, a0
134:              slti         a4, a1, 620
                  lui          s3, 814613
                  sub          a5, s1, s2
                  slti         s0, s4, -13
                  xor          zero, a6, s2
                  slli         t0, a7, 26
                  add          sp, t6, s11
141:              addi         s5, t6, -1799
                  slti         s6, s5, 748
                  or           t5, a3, s7
                  srl          a4, zero, t2
                  nop
                  nop
                  srl          t5, s3, sp
                  add          tp, zero, t5
                  add          t6, a3, t4
                  srl          a4, t1, ra
                  addi         tp, a1, -368
                  blt          t6, a5, 163f
                  add          t4, t3, s11
                  lui          s5, 599623
                  beq          t3, s11, 174f
                  ori          t0, s4, -1171
                  addi         s8, a0, 610
                  sltiu        s5, s3, -866
                  xor          gp, a1, t6
                  srli         t3, a7, 14
                  or           t2, a5, ra
                  bne          s3, t4, 181f
163:              sll          s1, a1, a5
                  sra          t5, s7, a3
                  bne          t5, s1, 178f
                  bgeu         t6, a6, 172f
                  sltu         s4, s10, a5
                  lui          t4, 798548
                  blt          tp, s10, 182f
                  slt          tp, t1, ra
                  sll          s3, t1, t0
172:              xori         s3, s10, 1094
                  beq          ra, s1, 190f
174:              bgeu         t4, s9, 181f
                  andi         s8, s0, 140
                  auipc        t5, 38629
                  or           t0, t4, a2
178:              sltiu        t4, s9, 1515
                  slli         t2, a0, 13
                  nop
181:              xor          s8, t1, t1
182:              andi         s8, a7, -12
                  ori          s9, a7, 1687
                  addi         a7, s6, -2043
                  blt          s10, a3, 194f
                  bltu         a1, s3, 205f
                  slti         t3, a4, 1179
                  beq          s8, s0, 199f
                  sltu         t6, t1, t1
190:              or           s10, s9, a0
                  xor          a4, s3, t0
                  add          t5, a2, s0
                  srai         a7, s9, 25
194:              slli         s11, s6, 15
                  sub          s10, zero, s5
                  sltu         s9, zero, ra
                  addi         t3, a4, -1503
                  sra          t2, a3, s2
                  la           sp, region_0+746 #start riscv_load_store_rand_instr_stream_1
                  add          a5, s5, a6
                  slli         ra, s9, 4
                  sb           s11, -5(sp)
                  sll          a2, a7, s8
                  sb           a2, -1(sp)
                  xori         s10, s3, -1409
                  andi         s11, s5, 480
                  lbu          s9, 2(sp)
                  nop
                  andi         s3, sp, -776
                  lbu          t2, 11(sp)
                  lbu          ra, -1(sp)
                  slli         a6, s3, 5
                  lbu          t0, -9(sp)
                  andi         s2, zero, 477
                  ori          s9, a6, -1017
                  lb           s6, 11(sp)
                  sw           t3, 6(sp)
                  lbu          s5, -3(sp)
                  and          s6, s5, a6
                  sh           zero, -8(sp)
                  lb           s2, -12(sp)
                  slli         ra, s4, 16
                  lbu          a6, -15(sp)
                  srli         a4, sp, 10
                  sh           s8, 0(sp)
                  or           a3, gp, s3
                  lh           s1, -8(sp)
                  sll          s6, zero, gp
                  lbu          t0, -13(sp)
                  auipc        ra, 988410
                  sb           s2, -3(sp)
                  lbu          s0, 0(sp)
                  srli         s1, a2, 27
                  lb           s10, -13(sp)
                  lb           t2, -9(sp)
                  lw           a3, 10(sp)
                  lhu          s5, 6(sp)
                  lb           a2, 2(sp)
                  slli         s8, gp, 18
                  slt          s6, s1, s6
                  auipc        s2, 111188
                  lb           s5, -7(sp)
                  sb           t0, 11(sp)
                  srl          s0, t6, a4
                  addi         t5, a1, 1844
                  lb           t5, 10(sp)
                  lh           t4, 4(sp) #end riscv_load_store_rand_instr_stream_1
199:              sll          s1, t6, s7
                  ori          t6, a1, 977
                  slti         s9, a0, -1606
                  slti         zero, s11, 835
                  sub          s1, gp, a2
                  beq          t4, s7, 223f
205:              sra          s9, gp, tp
                  lui          s8, 485181
                  slt          t4, a6, s4
                  xori         gp, s10, -1731
                  srl          t3, t6, t5
                  sltu         s9, t6, s1
                  srl          a5, s11, ra
                  beq          s4, s8, 221f
                  auipc        s4, 985961
                  slli         gp, t4, 11
                  sub          t4, s1, a0
                  sra          t4, s5, a3
                  blt          s2, gp, 236f
                  bltu         gp, s11, 227f
                  sltiu        a6, s2, 650
                  xori         t3, s9, 1499
221:              add          s9, sp, a4
                  slti         t6, s0, 155
223:              slti         s9, t4, -753
                  sll          s10, a3, ra
                  and          t1, zero, ra
                  bge          sp, ra, 235f
227:              nop
                  bne          t1, t5, 230f
                  andi         a6, ra, -349
230:              sltu         s10, tp, a3
                  bne          t4, t1, 238f
                  sltu         a7, sp, a0
                  sra          s4, s6, a3
                  sll          a3, t0, a3
235:              sra          s10, t1, zero
236:              nop
                  srli         s11, sp, 26
238:              and          gp, ra, t3
                  or           t3, a1, s6
                  slli         a2, t2, 5
                  bne          s5, t1, 247f
                  add          s8, a3, a6
                  ori          s2, a7, -1585
                  sub          s8, zero, gp
                  slt          sp, t2, tp
                  addi         s10, s9, 505
247:              srl          s6, a2, gp
                  slli         a3, s0, 29
                  bgeu         s8, a1, 268f
                  beq          s1, a1, 269f
                  slli         s11, a0, 0
                  sub          s2, s11, s8
                  xori         zero, s3, -1427
                  or           t1, s8, a7
                  sra          s1, ra, a1
                  lui          t6, 273795
                  bne          a7, s7, 275f
                  slli         a5, s0, 19
                  bne          a3, s5, 274f
                  and          sp, t4, s5
                  srl          s6, t3, gp
                  addi         s8, a2, -341
                  srl          s3, s4, tp
                  bne          s10, s1, 272f
                  slt          a6, gp, s6
                  ori          s0, tp, 738
                  and          a6, s2, t2
268:              beq          sp, a4, 272f
269:              sltiu        a6, tp, -1240
                  sltu         t5, t2, gp
                  bltu         s3, a1, 290f
272:              slli         t2, s9, 28
                  andi         s8, a3, -1183
274:              slti         zero, s6, 1131
275:              addi         a3, s3, 1821
                  slt          s9, s1, a2
                  or           a4, s6, t2
                  sll          a2, s10, t4
                  srai         t2, s5, 3
                  sltu         t2, t3, a4
                  or           s9, s8, s1
                  nop
                  addi         a7, s3, 24
                  sub          s3, s11, a5
                  slt          s6, s4, a5
                  or           s10, s4, t3
                  bne          a0, t4, 303f
                  add          s11, s2, zero
                  addi         t5, t0, 1599
290:              sltu         a5, zero, gp
                  auipc        a7, 399693
                  ori          s5, t1, -1701
                  bgeu         s9, t2, 300f
                  bgeu         s7, t4, 310f
                  addi         gp, s6, 83
                  bge          s9, tp, 311f
                  andi         s0, a4, 130
                  slti         s1, s0, -1286
                  andi         a7, a2, 1605
300:              srli         t6, t6, 17
                  slt          s0, a1, s3
                  bltu         s1, a4, 314f
303:              nop
                  nop
                  sll          s11, a6, s7
                  bltu         a4, t4, 323f
                  bgeu         s0, t4, 325f
                  sub          gp, a4, a7
                  bltu         s0, a0, 328f
310:              or           t0, t6, tp
311:              lui          t6, 229353
                  ori          s10, s0, 959
                  bgeu         zero, s4, 322f
314:              sll          s9, zero, a7
                  sra          t0, ra, ra
                  sra          tp, t0, s9
                  srl          a2, s4, a3
                  lui          s9, 949973
                  and          t3, t4, s7
                  auipc        s9, 621375
                  sltu         s10, zero, s0
322:              add          t6, a6, a6
323:              slti         s0, t0, 1597
                  beq          tp, s9, 342f
325:              sll          a6, t5, s7
                  sltu         a7, a6, ra
                  beq          t4, s3, 344f
328:              sra          s10, a4, gp
                  auipc        a6, 623863
                  slti         s11, s1, -250
                  add          a6, t2, s1
                  srl          zero, s5, zero
                  sltiu        a4, s5, -1867
                  sra          s0, s5, s4
                  sub          t3, a4, s6
                  slli         a2, s5, 12
                  xori         t1, s4, -862
                  nop
                  and          s0, a6, s8
                  blt          a7, a0, 355f
                  blt          t6, ra, 349f
342:              slti         a6, s5, -197
                  bgeu         s5, s11, 362f
344:              andi         gp, t4, 696
                  lui          sp, 847155
                  la           sp, region_0+313 #start riscv_load_store_rand_instr_stream_0
                  slti         t6, a0, 1679
                  lb           s9, -170(sp)
                  sb           s11, 1245(sp)
                  sh           sp, 159(sp)
                  sra          tp, a2, s0
                  nop
                  sh           a0, 877(sp)
                  lbu          t3, 1590(sp)
                  sb           a6, 1330(sp)
                  xori         s8, s1, -426
                  lbu          a2, 1663(sp)
                  lb           s11, -104(sp)
                  sw           ra, 1675(sp)
                  sb           t2, 1272(sp)
                  sb           s1, 45(sp)
                  sb           tp, 1544(sp)
                  lbu          s8, 1180(sp)
                  sll          s3, a5, s2
                  lbu          s11, 815(sp)
                  srai         s0, zero, 11
                  sll          s10, s1, s10
                  addi         s2, a7, -1439
                  auipc        t6, 894102
                  sb           t2, 572(sp)
                  lh           gp, 255(sp)
                  lbu          t3, -142(sp)
                  sb           t4, 1434(sp)
                  nop
                  xori         s8, t1, -1165
                  lui          s8, 56983
                  slli         s5, a5, 16
                  sb           s9, 1286(sp)
                  ori          t5, a7, -79
                  ori          zero, t2, 1632
                  lb           tp, -30(sp)
                  sb           s4, -230(sp)
                  sltiu        a4, a3, 1982
                  lbu          ra, 486(sp)
                  srl          a3, s7, t5
                  lbu          s4, 977(sp)
                  lh           s6, 579(sp)
                  nop
                  sltu         ra, s7, s3
                  lbu          t4, 1150(sp)
                  sb           t0, -291(sp)
                  andi         s0, a6, -449
                  sltiu        s4, ra, 1456
                  lbu          a5, 71(sp)
                  or           a5, s3, t4
                  srli         s6, zero, 22
                  xor          s10, s11, s10
                  lb           a6, 134(sp)
                  lbu          t0, 548(sp) #end riscv_load_store_rand_instr_stream_0
                  add          t5, s6, a6
                  sll          s1, s7, tp
                  bltu         s1, a7, 355f
349:              xori         s8, s1, -1851
                  andi         a3, t4, -730
                  srli         s0, s11, 2
                  slli         s0, sp, 0
                  bge          t4, a6, 360f
                  xori         a5, t6, 1217
355:              bge          s8, t4, 361f
                  sub          s1, t1, sp
                  addi         s6, a6, -1398
                  sll          ra, s3, s9
                  bgeu         s1, s6, 370f
360:              beq          s5, s10, 373f
361:              addi         s11, s0, -1607
362:              slt          s1, sp, a1
                  srli         s11, t3, 8
                  ori          s1, t3, -1151
                  sltu         s1, a0, tp
                  blt          a0, a5, 385f
                  and          s0, a5, t4
                  srai         t1, sp, 21
                  srli         s10, s11, 31
370:              beq          a4, a3, 385f
                  bltu         t2, t4, 389f
                  blt          s7, a4, 379f
373:              bge          ra, s2, 385f
                  blt          t2, a0, 383f
                  beq          t3, s8, 381f
                  srl          tp, t5, a3
                  andi         s5, t4, 975
                  xori         a7, s7, 745
379:              slli         gp, s11, 4
                  sll          s11, s0, ra
381:              blt          s1, s6, 385f
                  bgeu         s3, s8, 391f
383:              srl          s11, t4, a6
                  or           tp, s2, t4
385:              srai         gp, t5, 19
                  or           a5, s11, a4
                  bltu         a5, ra, 404f
                  or           t3, s2, t0
389:              sra          s10, zero, a1
                  srai         s8, s3, 5
391:              blt          s6, tp, 410f
                  addi         s1, t5, -1049
                  nop
                  xori         s11, a4, 1842
                  sub          a5, s2, s8
                  srai         t2, a3, 17
                  bltu         tp, t6, 413f
                  and          a2, a3, s5
                  andi         s6, s10, 1302
                  xor          t6, s6, a7
                  add          t6, t5, s10
                  add          t5, s3, t1
                  xori         s9, s1, 1867
404:              blt          s11, s0, 420f
                  auipc        zero, 182497
                  bne          t6, ra, 425f
                  srl          a2, a4, s4
                  xor          a7, t1, t2
                  andi         s8, a5, -1351
410:              sltiu        s9, t6, -1306
                  ori          s5, a2, -885
                  andi         t4, t4, 348
413:              blt          s9, s10, 432f
                  auipc        t1, 649136
                  beq          s4, t5, 428f
                  lui          t4, 252415
                  beq          a6, a6, 426f
                  or           ra, t6, a4
                  nop
420:              auipc        a2, 572914
                  srai         a7, s4, 19
                  xori         sp, s7, -430
                  andi         s5, zero, -1281
                  beq          t0, s9, 426f
425:              blt          s10, a2, 444f
426:              bgeu         t0, t5, 439f
                  slli         t0, a2, 22
428:              srli         s4, zero, 14
                  lui          a6, 431221
                  srai         a5, t4, 11
                  sltiu        s6, a7, 673
432:              ori          t3, t4, -2024
                  blt          s2, s7, 439f
                  bne          a7, s3, 453f
                  sll          t5, a0, a1
                  nop
                  auipc        a7, 33927
                  nop
439:              sra          t2, t2, ra
                  xor          s3, t4, s11
                  bge          s0, s3, 452f
                  sra          t3, s7, s4
                  srl          a2, a5, zero
444:              srl          s8, s9, tp
                  bne          s2, s5, 454f
                  bge          zero, a6, 465f
                  sltu         t6, gp, a2
                  blt          t2, zero, 464f
                  xor          s8, s3, s7
                  sub          a6, t0, s2
                  srl          s1, zero, zero
452:              slti         sp, a0, -905
453:              and          zero, s5, s4
454:              lui          t6, 520107
                  nop
                  srl          a5, a3, a4
                  slli         t2, t6, 18
                  lui          s11, 13703
                  sll          t4, gp, s4
                  sll          s6, sp, t5
                  sltu         gp, a0, s3
                  srl          a7, t0, t4
                  slti         s5, t1, 262
464:              andi         s3, a0, 640
465:              bltu         s9, s5, 482f
                  srl          s3, ra, a7
                  bge          a0, s2, 485f
                  or           t4, t0, t4
                  xor          a3, s3, a7
                  addi         s9, s3, -967
                  srl          gp, a4, t0
                  addi         sp, a3, 1378
                  or           t5, sp, a0
                  beq          a5, s0, 476f
                  xor          a2, t0, s3
476:              slti         s5, t2, -1948
                  srli         t6, a6, 2
                  sub          t0, zero, s8
                  bltu         s1, s1, 485f
                  and          a6, t1, a6
                  andi         sp, t4, 2010
482:              srai         s10, s8, 13
                  slt          s4, a3, gp
                  lui          s4, 214482
485:              srli         ra, a3, 7
                  slli         t0, a6, 1
                  sub          s10, s0, s2
                  and          gp, s7, s6
                  add          s1, ra, gp
                  sltu         t6, s1, gp
                  sll          t5, t0, t2
                  sltu         a2, zero, a1
                  or           a7, s1, t0
                  srl          s8, a5, a1
                  andi         sp, t2, 1944
                  slt          a6, s5, s7
                  lui          s10, 708407
                  beq          t5, a1, 516f
                  srl          ra, t4, ra
                  bne          a3, t3, 517f
                  addi         s11, s7, -2040
                  beq          a7, a7, 510f
                  bne          gp, a6, 517f
                  xori         a5, gp, 1182
                  srli         t2, t1, 29
                  sll          tp, a7, s7
                  add          t4, s2, s5
                  srli         zero, a6, 8
                  auipc        a4, 98895
510:              auipc        gp, 315631
                  slti         t1, tp, -729
                  and          s1, ra, tp
                  bne          t6, s6, 517f
                  sltiu        s3, s4, 1132
                  nop
516:              nop
517:              xor          s10, s5, ra
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a0, a0, -28
                  ori          t5, a7, 1112
                  sw           s4, 4(a0)
                  slt          a2, a4, t1
                  nop
                  sll          a7, s5, s7
                  nop
                  xor          gp, t2, a7
                  srl          t0, s11, t6
                  srl          s2, a3, s4
                  add          s10, gp, t0
sub_2_j5:         jal          s4, sub_4 #jump sub_2 -> sub_4
                  nop
                  bgeu         tp, s9, 2f
2:                srl          t1, a1, s6
                  add          s4, t4, a3
                  slli         gp, t2, 6
                  srl          s8, tp, t6
                  ori          sp, a0, 2027
                  sltu         s11, t5, t6
                  slli         a4, s5, 31
                  sub          a5, t6, t6
                  bge          s1, t6, 15f
                  srli         s6, a6, 0
                  sra          t3, t4, a1
                  srai         s2, a2, 10
                  bgeu         gp, gp, 28f
15:               srli         sp, gp, 19
                  srli         t4, a3, 18
                  blt          s5, s10, 35f
                  add          a6, s2, a5
                  srl          s3, sp, t1
                  blt          a3, s6, 34f
                  and          s2, s3, sp
                  bge          ra, s1, 40f
                  beq          s2, s2, 32f
                  sra          s5, gp, s11
                  and          a4, s2, s1
                  sltu         s10, s8, s2
                  add          sp, a5, ra
28:               lui          a6, 31863
                  blt          t0, t1, 31f
                  slti         zero, s7, 996
31:               sub          s3, s3, a1
32:               xor          a3, a2, a1
                  bne          a1, t1, 42f
34:               slt          t2, s4, t5
35:               add          s8, s10, s3
                  addi         sp, s10, 80
                  srai         a4, sp, 4
                  or           s0, a6, a5
                  bne          s1, s9, 47f
40:               srl          t4, s2, t3
                  xori         s4, gp, -88
42:               sltu         s9, a1, sp
                  andi         s8, sp, -686
                  bltu         a0, gp, 64f
                  addi         s1, s8, -1977
                  or           a2, s10, a2
47:               blt          a4, zero, 51f
                  auipc        s2, 761363
                  andi         s4, tp, -1546
                  xor          t2, a6, t0
51:               blt          s11, sp, 55f
                  andi         s8, t0, -260
                  sub          t0, t1, a0
                  xori         t5, zero, 1899
55:               slt          sp, tp, s3
                  bge          a1, a1, 59f
                  sub          tp, s9, t0
                  xori         t4, s4, -868
59:               add          a3, s9, s9
                  slt          sp, s9, a0
                  bne          s11, t3, 70f
                  blt          t3, sp, 81f
                  sra          a4, t0, t0
64:               bne          s6, a2, 77f
                  slti         gp, s10, 1822
                  sltu         a7, a4, s0
                  sltu         t6, s8, t6
                  andi         s9, zero, 249
                  srai         s9, s0, 3
70:               bge          zero, zero, 85f
                  bge          s0, a4, 77f
                  sll          s0, a3, t1
                  nop
                  xori         s3, t5, 1481
                  slt          t5, a7, gp
                  srl          sp, t1, a5
77:               blt          a2, ra, 97f
                  sra          sp, s4, a0
                  auipc        sp, 188937
                  andi         t3, a0, 145
81:               bgeu         a2, a3, 95f
                  addi         t5, a7, 1657
                  blt          t3, s2, 100f
                  srai         t3, a1, 16
85:               sll          s1, t2, a4
                  slti         s10, t6, 783
                  bgeu         s9, t5, 101f
                  sll          s0, s5, a1
                  bgeu         a7, s11, 97f
                  slt          s8, zero, s3
                  andi         ra, a5, 183
                  sub          s3, a5, t3
                  sltu         s0, a5, zero
                  beq          s1, s3, 97f
95:               beq          s6, a7, 115f
                  sltu         zero, t2, a5
97:               bge          a6, t3, 109f
                  and          a2, a7, sp
                  bltu         a7, s1, 115f
100:              slti         t6, s2, 170
101:              bge          t5, ra, 117f
                  beq          s8, t0, 115f
                  sll          s9, t6, s4
                  srl          a6, s11, a7
                  bne          a3, t6, 110f
                  sub          a7, t2, zero
                  sll          a4, t4, s9
                  ori          t1, t0, -760
109:              srli         a3, s7, 26
110:              slli         ra, s7, 30
                  sltiu        ra, t6, -140
                  xor          t0, s11, t1
                  or           s5, t4, s7
                  blt          a4, t3, 115f
115:              beq          ra, s11, 123f
                  nop
117:              xori         a4, sp, 647
                  xor          a7, s1, zero
                  blt          t4, t4, 127f
                  xori         s4, s9, -170
                  bne          a6, a2, 134f
                  bltu         sp, t4, 138f
123:              bge          ra, a1, 132f
                  xori         s0, t3, 422
                  beq          a1, a5, 145f
                  lui          s2, 393143
127:              beq          s9, s11, 131f
                  or           s6, t4, zero
                  bltu         t6, s4, 144f
                  andi         a5, a0, -1424
131:              slli         s10, s10, 15
132:              sub          s6, s3, t1
                  srl          t0, t5, s7
134:              srli         t4, t2, 4
                  add          t4, t5, a0
                  bltu         s8, s8, 148f
                  bltu         a3, a2, 155f
138:              bge          t0, s9, 158f
                  or           s4, t1, a7
                  sub          s11, a3, a2
                  nop
                  sltu         t4, s3, a7
                  auipc        a7, 3304
144:              slli         sp, s3, 0
                  la           s9, region_0+1762 #start riscv_load_store_rand_instr_stream_0
                  lb           a6, -11(s9)
                  lhu          a7, 20(s9)
                  slti         ra, a7, -639
                  lbu          sp, 59(s9)
                  srl          t3, s11, a5
                  lhu          t5, -64(s9)
                  addi         ra, a2, -1387
                  andi         sp, s10, 327
                  ori          sp, a5, 1961
                  sb           s1, -53(s9)
                  lui          a4, 892430
                  lw           s1, -50(s9)
                  lbu          a4, -37(s9)
                  lb           a7, 47(s9)
                  lbu          s3, 59(s9)
                  lb           s8, 3(s9)
                  lbu          s3, -31(s9)
                  lb           zero, -14(s9)
                  addi         t4, s2, 483
                  sra          a6, t5, s0
                  lbu          t1, 31(s9)
                  sb           s0, -25(s9)
                  xor          sp, s7, tp
                  lbu          s10, 38(s9)
                  srl          t0, a2, a0
                  slli         zero, t0, 11
                  sb           s3, -13(s9)
                  nop
                  slti         ra, sp, -1001
                  sb           s3, 17(s9)
                  or           t6, s11, t4
                  srl          gp, s7, s6
                  lb           s2, 60(s9)
                  or           t6, t4, t4
                  slt          ra, tp, a7
                  sb           t6, -47(s9)
                  sb           sp, 29(s9)
                  sb           t0, -22(s9)
                  lb           a3, -62(s9)
                  lbu          t3, -62(s9)
                  xori         t0, t5, 1152
                  slt          gp, t0, s3
                  and          zero, t5, s2
                  sb           s5, -35(s9)
                  lb           sp, 28(s9)
                  lbu          zero, -46(s9)
                  sw           s4, 58(s9)
                  auipc        t5, 58426
                  sll          sp, s6, ra
                  srai         t4, a2, 23
                  add          s0, a6, sp
                  sb           a6, 35(s9) #end riscv_load_store_rand_instr_stream_0
145:              add          a5, s7, a4
                  srai         gp, s7, 18
                  and          s3, ra, s6
148:              blt          t1, s11, 162f
                  blt          s9, s11, 163f
                  slt          t1, a1, a3
                  srl          tp, s4, s4
                  sra          s2, tp, s11
                  nop
                  srai         s9, s9, 8
155:              srai         s9, t5, 4
                  srli         s2, s11, 8
                  nop
158:              blt          a1, t1, 167f
                  blt          gp, s0, 172f
                  bne          t1, a4, 177f
                  bgeu         a0, a7, 164f
162:              add          t1, s11, s2
163:              sra          s5, s3, t1
164:              add          a2, t6, a5
                  auipc        t1, 11342
                  andi         zero, t2, -1644
167:              and          s9, s10, s2
                  bgeu         s3, zero, 187f
                  slli         t6, zero, 6
                  sltu         tp, a3, s4
                  beq          t2, s1, 175f
172:              bge          s1, gp, 174f
                  and          a3, a5, a1
174:              slli         ra, s11, 20
175:              lui          a7, 478749
                  slti         s0, s10, -708
177:              srai         s3, s7, 26
                  srai         tp, t5, 28
                  or           s8, a5, a3
                  sltiu        s1, tp, 985
                  beq          s4, t3, 195f
                  bltu         t6, s1, 196f
                  xor          zero, s6, sp
                  nop
                  andi         s8, s10, -1781
                  ori          s0, t6, 445
187:              srl          tp, t5, s1
                  xor          s0, t3, s4
                  bge          sp, a3, 192f
                  beq          zero, t4, 206f
                  sub          t5, s3, t6
192:              ori          a5, s10, 1030
                  sltiu        t2, tp, 1547
                  srl          t3, s7, s7
195:              auipc        tp, 295355
196:              srli         s3, a2, 1
                  sll          s9, s2, a3
                  sra          tp, a5, s2
                  sub          s5, s7, t2
                  ori          ra, tp, 1954
                  or           s3, t4, t6
                  and          s11, s9, t0
                  and          a6, s5, a1
                  sra          s11, a4, gp
                  and          s11, t1, zero
206:              slti         s11, a2, -470
                  xor          t3, t0, a5
                  bne          t2, a3, 226f
                  addi         t4, s3, 1263
                  sub          t3, a4, s11
                  auipc        s3, 14141
                  sub          t6, t5, a5
                  sltiu        s8, t0, 279
                  bne          s6, t3, 220f
                  addi         s8, t4, -1874
                  bge          gp, s1, 225f
                  sll          a6, s10, t1
                  nop
                  ori          s8, t6, 1319
220:              or           s4, s1, t1
                  beq          s5, t6, 241f
                  slt          s4, sp, s0
                  bge          s5, t6, 235f
                  srli         sp, t1, 13
225:              add          a2, s3, sp
226:              bne          t2, a5, 235f
                  bgeu         s4, a7, 241f
                  lui          t5, 579167
                  lui          ra, 114702
                  sltiu        zero, s10, -23
                  slti         tp, s9, 142
                  slti         s5, t1, 1549
                  xor          s6, t0, s0
                  xori         gp, s5, 537
235:              addi         s0, t1, -1424
                  and          t0, s2, s11
                  lui          t2, 657976
                  slt          zero, sp, a1
                  srai         t1, ra, 12
                  srai         s8, s10, 29
241:              or           s0, s7, t1
                  slli         t0, s5, 4
                  beq          t4, gp, 247f
                  andi         s8, t3, 1200
                  sub          s3, s5, s4
                  bgeu         a7, t6, 262f
247:              or           s5, t3, t1
                  lui          a5, 788359
                  sub          ra, t5, gp
                  lui          s9, 214362
                  sll          t3, s1, s9
                  or           s2, s4, a7
                  lui          a2, 438415
                  bne          t0, a3, 268f
                  bgeu         s11, a2, 275f
                  beq          a1, s10, 259f
                  lui          t3, 782108
                  xori         ra, a6, -1477
259:              sltiu        a5, s4, -1835
                  bne          t4, t5, 276f
                  srli         s1, s8, 7
262:              srai         a6, a0, 18
                  add          t2, t1, s10
                  la           s6, region_0+1137 #start riscv_load_store_rand_instr_stream_1
                  andi         s5, a7, -1830
                  lbu          ra, 52(s6)
                  lbu          a6, -36(s6)
                  sb           a4, 54(s6)
                  lb           t5, -22(s6)
                  add          s4, t0, s4
                  sltiu        t5, a1, -22
                  lui          s1, 971321
                  xor          a4, gp, t2
                  sb           s7, 5(s6)
                  sb           s4, -18(s6)
                  lbu          tp, 0(s6)
                  slti         t3, s2, -932
                  sll          t4, ra, a2
                  sb           sp, 6(s6)
                  lb           t3, -52(s6)
                  sltu         t0, gp, s2
                  srl          tp, t5, tp
                  sb           a4, 63(s6)
                  auipc        zero, 352212
                  and          s5, a6, a3
                  sb           s1, -34(s6)
                  lbu          s11, 4(s6)
                  lh           a6, -63(s6)
                  lbu          a7, 21(s6)
                  srai         t6, t6, 12
                  lhu          s0, -11(s6)
                  xori         s11, a5, 554
                  lb           s10, 30(s6)
                  sb           a2, 26(s6)
                  add          s5, t3, a0
                  lb           s3, -56(s6)
                  sb           s4, 6(s6)
                  sh           s7, -21(s6)
                  slti         s11, a4, 1254
                  lbu          t0, -12(s6)
                  sltiu        sp, s11, 1575
                  addi         a7, a1, -1590
                  nop
                  lbu          t2, 1(s6)
                  srli         zero, t6, 18
                  andi         a7, t2, -1642
                  sub          a4, s10, t4
                  lb           t6, -11(s6) #end riscv_load_store_rand_instr_stream_1
                  sltiu        t5, t3, -343
                  slti         sp, s4, -1375
                  srl          s11, s1, s4
                  lui          a5, 77744
268:              bne          a4, s4, 272f
                  bne          a2, s1, 287f
                  srl          s10, t2, a7
                  bltu         a4, t1, 291f
272:              sll          t5, s3, s4
                  slti         t0, s1, 2024
                  blt          s0, a2, 280f
275:              bltu         t5, tp, 283f
276:              slli         s5, a4, 30
                  slt          sp, a6, s1
                  srli         s6, s11, 17
                  xor          a5, t2, a7
280:              add          t1, s6, a4
                  lui          a2, 465542
                  sltu         s9, t1, s11
283:              ori          sp, a2, -1141
                  srai         t6, gp, 5
                  blt          tp, t2, 294f
                  bltu         t1, s5, 299f
287:              auipc        gp, 929233
                  sltiu        a4, a5, -258
                  bltu         a1, s10, 298f
                  blt          t6, t0, 308f
291:              addi         tp, s1, 674
                  sub          s3, a6, s0
                  xori         t6, zero, 1067
294:              srai         t1, a2, 27
                  andi         a2, s11, -1893
                  bgeu         tp, s11, 301f
                  slli         zero, a2, 30
298:              add          s1, s7, t5
299:              bgeu         s11, s2, 302f
                  auipc        t4, 17587
301:              bgeu         t2, a6, 318f
302:              ori          a7, t3, 658
                  srai         s8, sp, 22
                  ori          s2, s3, -596
                  bne          s9, s3, 319f
                  addi         a6, s3, -1700
                  sub          tp, s0, t2
308:              nop
                  xor          s9, t0, s1
                  add          s2, gp, s1
                  beq          t6, s2, 325f
                  sltu         s11, zero, s5
                  bgeu         t5, s11, 315f
                  lui          s4, 790570
315:              lui          s1, 963255
                  srai         s8, s2, 19
                  xor          zero, s6, s11
318:              srai         t6, tp, 5
319:              ori          t5, ra, -1309
                  nop
                  slti         t3, t0, -225
                  bne          s7, sp, 327f
                  beq          t6, tp, 327f
                  sltiu        s9, s4, 1976
325:              sra          s0, a2, s0
                  or           a6, tp, tp
327:              sra          s8, a7, s2
                  lw           s4, 4(a0)
                  sub          t2, a7, a5
                  xor          sp, a6, t2
                  sll          s2, t1, s4
                  sll          t6, gp, a3
                  addi         t4, a7, -285
                  andi         s2, a3, -90
                  sub          a5, s1, s7
                  srl          gp, s7, tp
                  addi         a0, a0, 28
                  sltiu        a3, t1, 359
449:              addi x18, x20, 0
449:              jalr x18, x18, 0
sub_5:            addi         a0, a0, -32
                  andi         s5, t3, -1283
                  sw           s4, 4(a0)
                  srai         a3, s6, 22
                  sltiu        zero, s3, -857
                  sub          t0, t4, s2
                  sub          a2, s11, a4
                  nop
                  la           a6, region_1+245 #start riscv_load_store_rand_instr_stream_2
                  sb           a6, -165(a6)
                  sub          s10, a7, s2
                  slli         s0, s1, 5
                  sb           s6, 1364(a6)
                  sb           t1, 1276(a6)
                  addi         zero, s4, -1426
                  lh           s4, 413(a6)
                  lh           s10, 759(a6)
                  lbu          s3, 370(a6)
                  addi         s2, a2, -1184
                  srl          a7, a0, a3
                  lhu          t4, 77(a6)
                  sh           a1, 1375(a6)
                  lhu          a4, -127(a6)
                  sltiu        zero, s8, 291
                  auipc        a5, 945444
                  lb           t4, 257(a6)
                  addi         s8, a0, 1091
                  lhu          t3, 111(a6)
                  lb           s0, -184(a6)
                  xor          s10, t0, s5
                  lw           s5, 1327(a6)
                  sub          a4, s2, sp
                  nop
                  sll          a7, a2, gp
                  add          gp, t2, a2
                  lh           gp, 1669(a6)
                  sra          t3, a7, s5
                  lb           t5, 1336(a6)
                  lbu          t6, 1587(a6)
                  add          s0, s4, t1
                  sb           a7, 416(a6)
                  lbu          a7, 456(a6)
                  sra          a3, s10, s8
                  add          t5, ra, tp
                  lh           s11, 1035(a6)
                  sb           s8, 518(a6)
                  sb           ra, 537(a6)
                  nop
                  sw           t4, 1459(a6)
                  lui          s2, 1006599
                  sltiu        s0, s8, 7
                  lb           a7, -158(a6)
                  slt          a3, s9, a0
                  sb           s5, 1350(a6)
                  nop
                  andi         t4, tp, -661
                  lh           a2, 1473(a6)
                  auipc        t2, 80458
                  nop
                  srli         t0, s0, 25
                  lbu          t4, 1280(a6)
                  sra          sp, t5, s7
                  and          zero, zero, s11
                  lw           t5, 3(a6)
                  lw           t1, 1543(a6) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_0+319 #start riscv_load_store_rand_instr_stream_3
                  srai         s0, s11, 10
                  sb           s0, -226(s4)
                  srl          t1, s5, t4
                  lui          t5, 47608
                  ori          t5, t1, -1537
                  lbu          ra, 212(s4)
                  lb           tp, -94(s4)
                  and          s2, s0, a1
                  lbu          t3, -42(s4)
                  lh           s2, -149(s4)
                  sh           t6, -71(s4)
                  sb           s1, -164(s4)
                  sh           tp, 183(s4)
                  sra          s1, t2, s11
                  lb           s1, 119(s4)
                  ori          a6, s9, -636
                  lb           s3, -177(s4)
                  sb           s1, 244(s4)
                  addi         a7, s2, 755
                  slt          s9, a7, s5
                  xor          sp, a2, s2
                  sb           a7, -179(s4)
                  sb           sp, 172(s4)
                  addi         s10, a5, -1418
                  lbu          a6, -249(s4)
                  lbu          t0, 14(s4)
                  sltiu        ra, t5, -722
                  lw           t1, -7(s4)
                  sb           a0, -22(s4)
                  sb           zero, -116(s4) #end riscv_load_store_rand_instr_stream_3
                  sltiu        s4, t2, -608
                  or           a4, t0, gp
                  nop
                  xor          gp, s11, a4
                  andi         t0, s1, -99
                  slt          a4, s5, t4
                  bgeu         t2, s8, 23f
                  bltu         s11, s3, 22f
                  sll          zero, s0, zero
                  nop
                  sll          s8, s5, a1
                  sltiu        t1, t0, 1080
                  xor          t6, a3, a2
                  blt          t0, t3, 23f
                  or           a6, s4, gp
                  or           tp, s5, a5
                  sltiu        a2, zero, 816
                  slli         a7, s10, 24
                  bltu         t2, t4, 30f
                  beq          a6, sp, 36f
                  beq          s5, t3, 21f
21:               slt          a7, zero, a4
22:               slt          t6, tp, t1
23:               nop
                  sub          t6, t3, tp
                  slt          zero, a5, t4
                  slli         sp, a4, 18
                  xor          t1, a1, sp
                  nop
                  add          s10, s8, a5
30:               srl          s6, zero, t5
                  sra          t4, s10, a0
                  sub          s2, s2, s7
                  andi         sp, zero, -1784
                  slli         s11, s5, 13
                  slli         t5, a7, 30
                  la           ra, region_0+1500 #start riscv_load_store_rand_instr_stream_0
                  sh           ra, -40(ra)
                  add          t6, t1, s3
                  lb           s2, -89(ra)
                  srli         s4, t0, 10
                  lb           t5, -98(ra)
                  lhu          s11, 16(ra)
                  sb           a1, 155(ra)
                  slli         s3, t6, 22
                  sltiu        s1, s10, 1677
                  slti         t5, t6, -574
                  srai         s2, a2, 26
                  lbu          a2, -197(ra)
                  lbu          s9, -23(ra)
                  or           s9, t6, a7
                  xor          tp, t4, t5
                  or           a4, s0, t3
                  sra          t6, s2, a2
                  lb           tp, 231(ra)
                  slti         a3, t4, 1990
                  and          t6, s2, a6
                  sltiu        s8, s11, 1240
                  slt          a6, s8, s5
                  lb           t2, -153(ra)
                  lbu          gp, -121(ra)
                  srli         s11, t3, 16
                  lb           gp, -92(ra)
                  sb           s1, 121(ra)
                  and          a7, sp, t5
                  xor          t5, a4, a2
                  lb           t0, 181(ra)
                  slti         s4, s9, -1620
                  lb           t1, -138(ra)
                  sb           t1, 227(ra)
                  lui          t6, 212785
                  lbu          s1, -48(ra)
                  srli         a6, s3, 8
                  lbu          t3, 243(ra)
                  andi         s10, a3, 1381
                  xori         s8, s7, -323
                  srai         s6, tp, 31
                  slti         t3, s11, -337
                  sb           a3, -89(ra)
                  slli         s10, t1, 26
                  xor          t2, zero, s4
                  lb           a6, 151(ra)
                  lb           zero, 11(ra)
                  lb           s10, -78(ra)
                  lhu          t0, -94(ra)
                  lhu          tp, 172(ra)
                  srai         a2, t5, 8
                  sb           s9, 14(ra)
                  sltiu        t1, s3, -1178
                  and          t6, t3, s2
                  sh           t5, 140(ra)
                  sltu         t4, t0, tp
                  lh           s10, 12(ra) #end riscv_load_store_rand_instr_stream_0
36:               nop
                  addi         gp, t1, 2047
                  lui          a6, 654774
                  blt          zero, s2, 54f
                  slli         ra, a2, 9
                  and          t6, a3, s0
                  auipc        t1, 443908
                  nop
                  auipc        s0, 874772
                  or           a5, t1, a0
                  bgeu         a2, a3, 49f
                  srai         t4, s4, 24
                  srai         a3, s2, 11
49:               sltu         a7, s0, a0
                  ori          s4, s0, -1719
                  blt          s3, a5, 53f
                  bltu         t6, a4, 66f
53:               sll          ra, a1, a1
54:               sll          a3, s7, s2
                  nop
                  sltu         a4, s10, s2
                  sra          s0, t0, s11
                  blt          s1, s10, 78f
                  sll          a4, t5, ra
                  auipc        t0, 231148
                  sll          zero, s2, gp
                  srli         a3, t5, 18
                  and          tp, t0, t3
                  add          s4, t4, tp
                  srl          tp, s11, t1
66:               or           s0, s11, s9
                  andi         s2, t2, 1853
                  srl          a3, tp, s5
                  bne          s8, s3, 75f
                  blt          a7, a2, 88f
                  blt          s1, t4, 78f
                  sub          gp, s6, t0
                  bgeu         s3, s9, 81f
                  sll          s6, s11, t6
75:               nop
                  sltu         t2, s2, s7
                  srli         s4, a6, 3
78:               ori          t6, zero, -782
                  sub          gp, ra, s2
                  nop
81:               ori          sp, s1, -533
                  bltu         tp, s6, 86f
                  sltiu        s3, a2, 1253
                  beq          s0, s4, 94f
                  srai         zero, s9, 3
86:               sltiu        a4, a6, -1295
                  srli         a4, t6, 14
88:               andi         a5, tp, -284
                  sra          sp, t3, t6
                  beq          a2, t5, 103f
                  sltu         s2, t5, t0
                  andi         s11, sp, 1161
                  slti         s8, a6, -596
94:               beq          t5, s4, 114f
                  add          a5, t6, s1
                  ori          a4, s1, -778
                  bne          a5, s0, 99f
                  auipc        s9, 290819
99:               xor          s1, a5, a4
                  slt          s5, tp, t4
                  blt          t4, s6, 116f
                  bne          t2, t6, 118f
103:              lui          a4, 908200
                  auipc        zero, 295657
                  lui          t2, 54540
                  bne          tp, a5, 114f
                  ori          s3, a3, 1020
                  or           t3, t3, s2
                  sltu         a5, a3, s10
                  xori         s2, zero, -316
                  srli         t4, zero, 29
                  sra          gp, zero, gp
                  srl          t3, t3, s9
114:              add          a3, s5, s10
                  ori          t1, t1, 1394
116:              bge          t1, sp, 132f
                  add          ra, t5, gp
118:              slti         a6, t0, 1120
                  and          a4, t5, s3
                  xori         t0, t1, 1085
                  blt          t5, zero, 127f
                  add          gp, s8, t1
                  slti         s6, t5, -1808
                  sll          zero, s1, s3
                  slli         a5, s6, 0
                  bge          ra, a6, 132f
127:              add          t0, a0, a5
                  slti         s8, s0, 640
                  bge          t5, t0, 135f
                  sll          zero, s0, s3
                  bne          s0, sp, 150f
132:              lui          t1, 623673
                  sll          t0, t1, s5
                  sltu         t6, s1, a5
135:              srl          t5, s9, a6
                  bge          s2, tp, 145f
                  sub          sp, a0, s7
                  bltu         a7, s1, 154f
                  and          a5, s11, a7
                  la           s1, region_0+384 #start riscv_load_store_rand_instr_stream_1
                  sh           s5, 716(s1)
                  lb           zero, 148(s1)
                  lbu          s6, 325(s1)
                  addi         a3, a7, 1797
                  lbu          s8, 1047(s1)
                  srai         t0, s2, 30
                  lb           s4, 206(s1)
                  slt          s8, s5, s4
                  addi         t3, a6, 481
                  lb           a4, 1322(s1)
                  sw           a6, 620(s1)
                  slti         tp, t5, -694
                  ori          s10, a6, -82
                  sltu         s8, a2, s4
                  lui          a2, 362889
                  andi         t1, s1, 294
                  or           a3, a6, t1
                  sub          s9, sp, t3
                  lb           zero, 1372(s1)
                  andi         t5, t6, 192
                  lhu          s2, 944(s1)
                  sb           s3, 1034(s1)
                  xori         t5, a2, -2027
                  andi         s11, t6, -33
                  xor          s5, a6, s3
                  sll          s2, s5, ra
                  sb           gp, -327(s1)
                  sub          t1, s8, s0
                  sltu         s11, zero, s11
                  sb           t3, 279(s1)
                  andi         t2, t2, 1352
                  sh           t2, 950(s1)
                  srl          s0, zero, tp
                  sltu         t2, a4, s5
                  slti         t0, t6, -1156
                  lhu          sp, 202(s1)
                  srai         s5, t6, 1
                  lb           a3, 605(s1) #end riscv_load_store_rand_instr_stream_1
                  andi         s1, t5, 1429
                  sltiu        zero, s0, -1374
                  or           tp, s9, a2
                  blt          a1, t4, 149f
                  and          t6, a5, t4
145:              slt          t2, t1, a4
                  srai         s9, a4, 17
                  beq          t6, s11, 163f
                  sll          s8, a5, t2
149:              addi         a2, s9, -1468
150:              bgeu         a6, sp, 168f
                  srli         t5, s9, 31
                  beq          s2, tp, 160f
                  blt          s2, t5, 168f
154:              srl          t5, t5, a6
                  srli         t1, t1, 6
                  bne          t4, ra, 172f
                  ori          s10, zero, 592
                  sra          s10, s6, a3
                  bgeu         s8, s7, 165f
160:              sub          s1, tp, t6
                  nop
                  add          sp, s0, s9
163:              or           s0, s6, a7
                  sltu         a5, s10, s1
165:              srli         s2, a1, 13
                  srli         t0, a0, 14
                  nop
168:              slli         s3, s8, 18
                  andi         a6, a6, 1920
                  nop
                  xor          gp, t1, s7
172:              nop
                  xor          a4, s4, tp
                  bgeu         s10, t1, 183f
                  sub          gp, s10, gp
                  xor          s11, ra, s3
                  sub          a7, a4, s9
                  add          a4, s11, a7
                  bge          s8, s11, 199f
                  and          s10, a4, t2
                  lui          s4, 676189
                  sra          s6, s5, a0
183:              bge          ra, s6, 198f
                  srli         s4, a6, 13
                  sll          s4, a6, a3
                  slti         ra, tp, 457
                  bne          t2, s0, 189f
                  bltu         t4, s7, 208f
189:              addi         gp, s2, -271
                  srl          t6, s6, a2
                  lui          sp, 332424
                  ori          a3, s9, 1469
                  lui          a6, 1027358
                  lui          a6, 595282
                  sltu         s2, a2, a0
                  or           ra, s0, s2
                  bltu         a4, a1, 205f
198:              addi         s2, s5, -1599
199:              slt          s5, s7, a4
                  lui          gp, 154375
                  ori          t2, a7, -184
                  xori         s8, a3, 1464
                  bltu         s11, s10, 218f
                  xor          t3, zero, a1
205:              bge          s6, tp, 212f
                  bgeu         t1, a5, 222f
                  srl          a6, tp, a7
208:              ori          t1, a0, 1763
                  bgeu         s6, a7, 228f
                  sll          a2, t4, a7
                  blt          t1, zero, 225f
212:              or           a7, s3, t4
                  ori          t1, a1, -146
                  bgeu         s5, s8, 224f
                  beq          a3, a6, 218f
                  slli         a2, sp, 15
                  ori          t6, s4, -914
218:              bne          a6, s2, 230f
                  bne          t5, s7, 236f
                  bgeu         s10, ra, 221f
221:              bne          t2, a1, 238f
222:              sltu         s8, a4, s7
                  srli         s4, tp, 24
224:              auipc        a5, 738620
225:              auipc        s3, 720567
                  xor          a2, a3, s2
                  bltu         sp, s7, 233f
228:              sltiu        s4, a0, -1301
                  srli         s0, a6, 2
230:              lui          tp, 439088
                  sub          s5, s11, a3
                  slt          s4, a0, a7
233:              xori         a3, t3, -313
                  beq          t4, a3, 238f
                  addi         s6, s5, -1066
236:              sub          s2, s10, t6
                  sltu         a6, t6, gp
238:              sub          t3, s0, s11
                  sll          s10, s4, s11
                  sub          s1, tp, zero
                  sub          t3, s10, a6
                  or           s10, tp, s7
                  slti         s10, t4, 689
                  beq          t3, s2, 254f
                  nop
                  sub          zero, zero, t0
                  and          a2, a2, s11
                  srli         sp, s0, 4
                  auipc        s1, 1004942
                  slti         s10, s0, 672
                  nop
                  sltiu        a5, gp, -32
                  sll          t0, s0, s4
254:              sra          a7, t4, s11
                  xori         ra, s11, -179
                  srli         s6, s8, 26
                  sra          a5, t0, zero
                  xori         a7, s5, -172
                  lui          s0, 10242
                  slli         s0, a7, 18
                  ori          s6, a4, -835
                  or           tp, s5, s4
                  xor          s10, s4, s1
                  lui          s0, 609539
                  nop
                  slti         s1, t1, -1596
                  srli         a7, a1, 21
                  and          a7, a2, tp
                  auipc        s4, 889915
                  bltu         t4, t3, 283f
                  slt          a7, s3, a6
                  sltiu        s4, s4, -434
                  srl          t5, t1, s4
                  lui          t1, 888859
                  srli         sp, s9, 28
                  beq          t1, t5, 282f
                  srli         s6, t2, 1
                  sub          ra, a4, gp
                  bltu         a6, s9, 281f
                  sra          a6, t1, a4
281:              or           s10, s9, t1
282:              sub          tp, a1, s7
283:              sltu         a7, tp, s11
                  bge          s6, gp, 287f
                  srai         t0, ra, 9
                  sra          s9, a4, s6
287:              or           sp, s8, s3
                  xori         s4, a5, -1288
                  beq          a3, s11, 295f
                  srai         ra, s3, 25
                  bne          t2, a2, 307f
                  auipc        ra, 536485
                  bne          a0, a6, 307f
                  slti         a7, tp, -321
295:              bge          s0, a6, 297f
                  ori          t3, s7, -2034
297:              and          ra, a5, s2
                  add          s11, s0, tp
                  sltu         s10, zero, t3
                  srai         gp, s11, 20
                  addi         a3, a0, 2005
                  add          s1, s2, ra
                  sub          s6, t1, s3
                  blt          gp, a2, 324f
                  xori         t3, a5, -67
                  sub          t4, a5, t1
307:              slt          a6, s0, s3
                  blt          s8, s1, 314f
                  srai         s9, t6, 26
                  sltiu        a2, gp, 1471
                  slli         s5, t4, 11
                  bgeu         s2, ra, 327f
                  nop
314:              sltu         t4, s2, s0
                  nop
                  srli         s9, s3, 26
                  xori         a6, a5, -1905
                  beq          ra, s4, 335f
                  slti         a7, s5, -1157
                  lui          t4, 649294
                  sub          a5, a5, t2
                  sltu         t1, a3, a3
                  slti         sp, s7, -258
324:              srai         a5, s6, 2
                  addi         t1, s1, -1757
                  bne          t5, a2, 341f
327:              srl          t3, s0, ra
                  lui          a7, 707151
                  srai         a2, a2, 3
                  blt          t4, a4, 350f
                  slli         s8, a3, 6
                  srli         ra, t0, 23
                  and          s0, a7, a6
                  srli         s0, t2, 15
335:              xor          a4, s0, zero
                  blt          t6, t5, 351f
                  slti         t2, sp, 104
                  sltu         t0, a1, t5
                  andi         a2, s7, 960
                  sltu         t2, gp, t4
341:              beq          a7, s5, 358f
                  andi         t0, s1, 1967
                  slti         t1, a2, -1173
                  srai         a3, s8, 24
                  auipc        s11, 374952
                  bne          a5, a6, 364f
                  slt          t4, s9, a5
                  sub          s1, gp, sp
                  beq          s2, gp, 359f
350:              xori         t3, a6, 58
351:              bgeu         s7, a3, 357f
                  xor          a5, t6, t5
                  bne          s1, t3, 359f
                  slt          sp, t0, t1
                  bgeu         s8, t4, 363f
                  ori          a5, t6, -1871
357:              nop
358:              slt          s8, tp, s2
359:              xori         t2, tp, -1527
                  andi         s11, t3, 1143
                  sltu         s3, s5, t0
                  slti         a7, s3, 618
363:              xor          s4, s2, gp
364:              sltu         t2, ra, a3
                  nop
                  andi         sp, s2, 1134
                  nop
                  lui          a3, 908776
                  nop
                  andi         s1, t3, 1550
                  sra          t1, s6, s0
                  sub          s6, s1, s4
                  slti         s5, t5, 1893
                  srai         s9, t5, 19
                  slti         ra, zero, 1443
                  sub          s8, t3, a1
                  bgeu         t1, s4, 384f
                  bge          s1, tp, 391f
                  sll          t1, tp, s7
                  srai         s6, t6, 13
                  xori         sp, a0, 272
                  slt          a5, ra, t3
                  lui          s3, 782839
384:              sub          s6, s3, t6
                  srl          s4, s3, t0
                  srl          gp, a6, t6
                  slt          t2, t1, s7
                  lui          s11, 48088
                  srli         t0, s3, 12
                  srli         a2, t0, 9
391:              bge          a5, a2, 400f
                  sltu         s0, t6, a5
                  beq          t0, sp, 401f
                  beq          s9, s9, 404f
                  sll          s9, t1, t0
                  bltu         a1, s2, 397f
397:              lui          t6, 955104
                  ori          a3, a1, 1168
                  addi         t5, t6, -1579
400:              srli         t0, tp, 5
401:              sltiu        zero, s9, 1721
                  sll          a5, a7, a2
                  slt          a2, tp, sp
404:              blt          t4, s11, 420f
                  xor          t5, a2, gp
                  ori          s1, s8, 134
                  beq          zero, s5, 426f
                  blt          s10, t3, 420f
                  and          t5, s3, t6
                  andi         s0, a6, 1568
                  srli         s6, t3, 28
                  slli         s8, a6, 29
                  sra          s2, a6, t1
                  slt          s11, t5, s9
                  blt          t0, s2, 419f
                  sltu         sp, ra, s0
                  blt          zero, sp, 433f
                  srl          t6, s8, tp
419:              slt          s10, s3, s4
420:              nop
                  addi         t3, t6, 120
                  srai         t6, t6, 18
                  slti         sp, gp, -1273
                  sltiu        a6, ra, 346
                  sltu         t3, s6, s7
426:              sub          s5, s5, a2
                  bgeu         s8, t6, 429f
                  xori         t0, s10, -955
429:              sll          a7, tp, s6
                  sll          t2, gp, s8
                  srai         a2, a5, 13
                  blt          a4, s8, 449f
433:              srai         s1, a6, 8
                  blt          a1, s3, 440f
                  sra          t5, s1, s6
                  bltu         a4, s5, 451f
                  srai         s3, sp, 30
                  xori         s6, sp, -559
                  and          a4, s11, a6
440:              srl          a6, s5, t3
                  or           t6, a5, s8
                  sltu         t5, a5, a5
                  bgeu         a3, ra, 462f
                  xor          zero, s6, t0
                  slli         t0, a3, 6
                  addi         s5, a6, 165
                  nop
                  blt          s1, t5, 454f
449:              bltu         s11, t5, 464f
                  slli         s9, a1, 3
451:              xor          t3, t0, t1
                  blt          a3, sp, 460f
                  sll          s10, gp, t2
454:              bltu         a6, t2, 457f
                  bge          s1, s11, 473f
                  slt          a2, a6, ra
457:              srai         s3, s10, 17
                  sra          t5, t5, s10
                  srai         t5, zero, 8
460:              srli         gp, s6, 17
                  bgeu         t1, a3, 471f
462:              srl          s1, a5, t5
                  auipc        sp, 189779
464:              bne          a2, s6, 473f
                  or           t1, a4, zero
                  addi         a7, zero, -1668
                  slli         t1, s7, 19
                  srai         sp, a3, 13
                  ori          s10, t3, -1169
                  sltu         s10, a4, s3
471:              blt          s6, s2, 488f
                  nop
473:              lui          t4, 277491
                  srl          s3, s11, t6
                  bge          t4, t4, 490f
                  slt          t3, a0, t2
                  sltiu        t6, s5, -1238
                  andi         s9, s8, 948
                  ori          s3, ra, 1549
                  lui          s9, 250877
                  xori         t6, s6, 210
                  srai         s4, s8, 27
                  sll          t4, a4, s11
                  sll          t5, t3, zero
                  xor          ra, s9, gp
                  sll          zero, ra, t5
                  sra          t0, s4, a7
488:              sltiu        t2, a0, -1446
                  slt          zero, a2, s8
490:              slt          a4, s6, s9
                  sltiu        t0, s0, -1811
                  nop
                  andi         s5, a4, -1126
                  bgeu         a6, t5, 496f
                  and          s5, s0, a5
496:              srai         t4, t1, 11
                  bge          a3, t5, 517f
                  srl          s4, s0, a7
                  slti         s1, s11, 2003
                  bltu         zero, a5, 502f
                  andi         a7, s6, 354
502:              ori          s3, s10, 1013
                  ori          s1, a1, 1778
                  srli         t3, t6, 7
                  auipc        s6, 706306
                  ori          s5, t4, -1582
                  slt          t2, zero, s9
                  lui          s10, 501386
                  bge          s2, s9, 523f
                  sltiu        s1, s8, 1293
                  srli         t6, a6, 10
                  bgeu         t4, s2, 522f
                  bgeu         t0, t1, 529f
                  andi         s5, s6, -1622
                  sra          t5, tp, a4
                  addi         s0, sp, -1900
517:              srli         s3, t1, 16
                  sll          s3, s3, t6
                  beq          s9, s8, 539f
                  bne          s6, t1, 536f
                  slli         tp, s11, 7
522:              bne          gp, s11, 526f
523:              sltiu        a6, a7, -284
                  slti         s4, s0, 1019
                  and          t6, a7, t0
526:              bgeu         s6, ra, 533f
                  nop
                  srai         a6, s8, 30
529:              bge          a5, s8, 541f
                  nop
                  blt          t2, a2, 537f
                  and          a3, t2, s8
533:              srli         s10, s0, 30
                  slli         a7, sp, 26
                  srl          sp, tp, a1
536:              and          zero, s5, s7
537:              slli         s5, s5, 28
                  sub          s1, a6, gp
539:              slt          s1, tp, s4
                  srl          a3, a6, s2
541:              bge          s4, a0, 548f
                  srai         a7, t6, 18
                  sub          s0, s5, sp
                  nop
                  bge          t0, t2, 548f
                  slli         a7, s5, 12
                  srai         gp, s4, 22
548:              xor          a6, t3, sp
                  or           zero, s7, s9
                  slt          sp, t1, a4
                  lw           s4, 4(a0)
                  addi         a2, s4, -2047
                  sub          s8, s6, gp
                  addi         a0, a0, 32
                  sltiu        s2, t4, -1872
748:              addi x14, x20, 0
748:              jalr x14, x14, 0
sub_8:            sltu         a4, s6, zero
                  bge          s9, a4, sub_8_stack_p
                  srli         s6, a5, 13
sub_8_stack_p:    addi         a0, a0, -60
                  and          t4, s9, s8
                  srli         s1, s4, 13
                  sw           s4, 4(a0)
                  sltu         t5, s6, s3
                  lui          ra, 46143
                  add          s5, t3, s10
                  or           s5, a7, t0
                  or           t0, t3, t0
                  sltiu        t0, t2, -214
                  slt          t6, s7, s4
                  addi         tp, s7, -495
                  xori         s6, t2, 371
                  addi         s4, t3, 583
                  bgeu         gp, s6, 9f
                  sra          t3, s11, s10
                  add          s2, t6, a3
                  sra          s10, s10, t2
9:                lui          s0, 866159
                  auipc        gp, 60047
                  xori         s10, s11, -251
                  slli         ra, s10, 28
                  lui          s8, 197575
                  lw           s4, 4(a0)
                  srl          t0, a0, s6
                  xor          sp, a0, s11
                  addi         a0, a0, 60
                  auipc        t0, 741309
31:               addi x31, x20, 0
31:               jalr x31, x31, 0
sub_3:            sll          sp, a5, s6
                  addi         a0, a0, -12
                  srl          t1, s1, t1
                  srli         s11, s11, 31
                  sltiu        t1, s2, -1298
                  xori         s11, sp, -174
                  srli         s9, s11, 20
                  sw           s4, 4(a0)
                  add          a6, t3, s8
                  and          sp, s3, t3
                  and          a7, t2, s9
                  la           s11, sub_4
                  ori          a7, s1, -637
                  addi         s11, s11, -182
                  sll          a3, t2, t3
                  srli         s6, t2, 2
                  nop
                  bgeu         a6, s10, sub_3_j6 #branch to jump instr
                  sltu         tp, a0, s3
                  addi         zero, a3, -282
                  add          s2, s8, s11
                  or           t2, s5, s1
                  srai         ra, t4, 28
sub_3_j6:         jalr         s4, s11, 182 #jump sub_3 -> sub_4
                  la           s6, region_0+138 #start riscv_load_store_rand_instr_stream_1
                  sh           t0, 192(s6)
                  sh           sp, -84(s6)
                  lbu          s11, -53(s6)
                  srai         a3, s3, 18
                  addi         t1, t2, -1792
                  slti         t0, s4, 394
                  lbu          gp, 161(s6)
                  lh           s1, 242(s6)
                  lbu          t2, 169(s6)
                  sra          t6, t4, t5
                  xori         a4, a4, 1839
                  lbu          t2, -100(s6)
                  lui          s9, 759697
                  srli         t3, ra, 25
                  sh           s8, 100(s6)
                  sb           a1, -67(s6)
                  sb           tp, 101(s6)
                  srai         t1, a5, 6
                  lbu          tp, 239(s6)
                  sb           s5, 167(s6)
                  lhu          t4, 118(s6)
                  lh           a4, -136(s6)
                  lbu          t0, 154(s6)
                  sb           s2, -51(s6)
                  sb           t5, -121(s6)
                  ori          s3, t3, 1411
                  lhu          t0, 102(s6)
                  lhu          s2, 142(s6)
                  lbu          t0, -63(s6)
                  sh           t5, -90(s6)
                  sb           t0, 12(s6)
                  sb           a4, 164(s6)
                  srai         s3, a0, 30
                  lb           zero, 135(s6)
                  sb           t0, -75(s6)
                  lb           s9, 48(s6)
                  lbu          a2, 185(s6)
                  lb           t4, 74(s6)
                  and          s8, s3, a2
                  or           a4, s1, sp
                  lw           sp, -86(s6) #end riscv_load_store_rand_instr_stream_1
                  la           s9, region_1+1004 #start riscv_load_store_rand_instr_stream_9
                  auipc        t6, 827506
                  sltiu        t2, s11, 371
                  or           t1, ra, s0
                  srli         t5, a2, 16
                  lbu          a3, 49(s9)
                  lbu          s5, -25(s9)
                  sh           t5, -6(s9)
                  lbu          a3, 49(s9)
                  ori          tp, s6, -230
                  sh           s0, 0(s9)
                  and          t6, t0, s11
                  lbu          s5, 9(s9)
                  lb           a3, 43(s9)
                  nop
                  slti         s6, s2, -1914
                  sltu         s1, s3, s7
                  xor          a5, zero, s8
                  slti         t2, t6, 247
                  lb           sp, 11(s9)
                  and          t1, s1, a3
                  xori         t6, gp, -1382
                  lui          s6, 77022
                  sb           a2, 59(s9)
                  lh           s0, -30(s9)
                  sltiu        a2, tp, -1406
                  lb           s10, 35(s9)
                  nop
                  add          s5, s5, t1
                  lh           a2, 18(s9)
                  srl          gp, a2, tp
                  xor          ra, t0, s11
                  sb           s8, 0(s9) #end riscv_load_store_rand_instr_stream_9
                  la           s6, region_0+1547 #start riscv_load_store_rand_instr_stream_7
                  lbu          a5, 3(s6)
                  xori         a2, t6, -1517
                  sra          ra, zero, s0
                  and          a7, s8, t3
                  srai         t2, a1, 16
                  slli         a7, a0, 27
                  lh           a3, -1(s6)
                  lui          ra, 620260
                  srai         tp, t0, 23
                  and          s2, t5, a3
                  sub          t5, s9, gp
                  lbu          s5, -14(s6)
                  add          s2, s7, s11
                  sb           s1, -16(s6)
                  sh           s8, -13(s6)
                  addi         t3, zero, -1531
                  lb           s1, -12(s6)
                  addi         a6, t5, -1381
                  or           s11, t2, a7
                  lbu          a4, 1(s6)
                  srli         s5, zero, 29
                  lhu          a6, -3(s6)
                  auipc        s11, 20266
                  and          a2, tp, a5
                  auipc        sp, 273684
                  sll          t3, ra, t4
                  lw           t6, -7(s6)
                  add          sp, ra, t6
                  auipc        s5, 388071
                  addi         gp, t3, -1514
                  ori          s1, zero, 98
                  or           s2, t5, a4
                  sra          zero, tp, s6
                  and          a5, t5, s7
                  sb           t0, 9(s6)
                  lui          s5, 477376
                  sll          a3, s11, s3
                  lbu          t2, -5(s6) #end riscv_load_store_rand_instr_stream_7
                  la           a6, region_1+1707 #start riscv_load_store_rand_instr_stream_6
                  or           t2, gp, sp
                  sltu         t4, s8, s11
                  lbu          s8, 48(a6)
                  slt          s4, zero, s0
                  sh           s7, 31(a6)
                  andi         t1, tp, 183
                  sb           s3, -42(a6)
                  nop
                  andi         sp, s2, 615
                  or           t2, s2, t5
                  lb           s2, -59(a6)
                  lb           s3, -28(a6)
                  lb           a4, 20(a6)
                  lb           a2, -10(a6)
                  sb           a1, 60(a6)
                  sw           s7, -15(a6)
                  lhu          s9, -49(a6)
                  sltiu        gp, s4, 1996
                  sw           s9, -31(a6)
                  sb           s5, -2(a6)
                  sltu         gp, sp, s3
                  slt          tp, s8, t5
                  auipc        s8, 718099
                  auipc        t6, 486710
                  slt          zero, a0, a3
                  add          s10, sp, a5
                  sb           s8, 56(a6)
                  lb           s3, 2(a6)
                  ori          t1, t1, -745
                  slt          ra, sp, a1
                  sh           s5, 19(a6)
                  lui          a3, 888965
                  lhu          a2, -61(a6)
                  add          a2, s11, a7
                  lbu          s4, -40(a6)
                  lb           t1, 34(a6)
                  andi         a5, t2, 634
                  sb           a6, 51(a6) #end riscv_load_store_rand_instr_stream_6
                  la           s3, region_0+1611 #start riscv_load_store_rand_instr_stream_4
                  auipc        t2, 710682
                  sh           gp, -49(s3)
                  lbu          a7, 20(s3)
                  sb           t2, 26(s3)
                  and          t3, t5, s3
                  srai         a5, s8, 5
                  sra          t2, s0, a0
                  lb           s2, -11(s3)
                  lb           s11, -7(s3)
                  sh           zero, -217(s3)
                  sltiu        zero, s9, 1152
                  lh           gp, -201(s3)
                  sb           s2, -43(s3)
                  lb           t4, -226(s3)
                  lbu          ra, -210(s3)
                  srli         t0, a3, 4
                  ori          a3, t1, 701
                  srl          tp, t5, t5
                  lbu          a2, -250(s3)
                  sltiu        a5, s2, 552
                  lbu          s9, -218(s3)
                  slli         zero, s7, 8
                  lbu          a3, -252(s3)
                  lw           a7, 37(s3)
                  lb           t3, -25(s3)
                  lb           a7, -165(s3)
                  lb           ra, 136(s3) #end riscv_load_store_rand_instr_stream_4
                  la           tp, region_0+1889 #start riscv_load_store_rand_instr_stream_2
                  lb           a5, -12(tp)
                  auipc        a6, 132798
                  xori         sp, sp, -1658
                  lb           s3, 0(tp)
                  lbu          s5, 6(tp)
                  lbu          s1, -13(tp)
                  lbu          t3, 9(tp)
                  sw           t3, -1(tp)
                  lbu          s2, 3(tp)
                  srli         s9, s7, 10
                  lb           s5, 1(tp)
                  sb           t5, -8(tp)
                  lb           zero, -14(tp)
                  sb           s7, -14(tp)
                  nop
                  xori         t4, s3, 275
                  lhu          zero, 1(tp)
                  slli         t5, t5, 30
                  srli         a2, s1, 28
                  sb           ra, 3(tp)
                  sb           sp, 4(tp)
                  sb           t1, 12(tp)
                  sb           a5, 10(tp)
                  srai         t3, zero, 4
                  lhu          a4, 3(tp)
                  lb           t1, -8(tp)
                  slti         zero, t6, -675
                  lb           gp, -7(tp)
                  lbu          s9, 16(tp)
                  lbu          s1, 15(tp)
                  lbu          t3, -2(tp)
                  lb           t2, 9(tp)
                  sw           s1, -9(tp)
                  add          s5, a1, ra
                  sb           s4, -6(tp)
                  sh           s3, 15(tp)
                  lb           s4, -8(tp) #end riscv_load_store_rand_instr_stream_2
                  la           t6, region_0+1121 #start riscv_load_store_rand_instr_stream_0
                  lb           gp, 34(t6)
                  auipc        a2, 195991
                  sb           t2, 184(t6)
                  sra          s6, s7, a2
                  lb           t2, -172(t6)
                  srai         s11, t2, 7
                  srl          s1, a5, t4
                  add          s10, sp, s11
                  and          s11, s2, t6
                  sw           s5, 255(t6)
                  srl          s2, s7, t2
                  auipc        s4, 326794
                  lbu          a7, -42(t6)
                  sltu         ra, s10, s11
                  sra          t0, a4, s0
                  lh           ra, -51(t6)
                  sltu         gp, sp, a4
                  xori         s10, s4, 866
                  lhu          t0, -115(t6)
                  and          a4, t1, t0
                  lbu          s6, 144(t6)
                  sb           a0, -201(t6)
                  sra          a2, s10, s10
                  srli         t3, a2, 13
                  lh           tp, -191(t6)
                  xor          tp, zero, s3
                  lb           a6, 202(t6)
                  lb           t3, -89(t6)
                  ori          s5, t0, 574
                  slli         s2, s3, 21
                  sltiu        t1, t5, 81
                  sltiu        zero, s2, -757
                  lb           a2, 116(t6)
                  sb           t1, 211(t6)
                  sb           a1, 171(t6) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_0+1554 #start riscv_load_store_rand_instr_stream_3
                  sb           s2, -49(s3)
                  lbu          t5, 57(s3)
                  lbu          a6, -1(s3)
                  srl          a7, a0, s0
                  slli         a7, a2, 16
                  lbu          s11, 59(s3)
                  xori         gp, t4, 1812
                  lb           t6, -25(s3)
                  lui          zero, 11301
                  lb           t4, 10(s3)
                  srli         s9, s1, 10
                  lw           gp, 22(s3)
                  slti         a3, t0, -1017
                  xori         zero, t5, 396
                  srl          t4, a1, a1
                  lb           a7, -34(s3)
                  lui          t3, 168442
                  lbu          t1, 63(s3)
                  auipc        a7, 752022
                  lbu          a3, -62(s3)
                  slt          t4, s11, s10
                  and          t3, zero, t5
                  srli         sp, s3, 9
                  lb           sp, 45(s3)
                  nop
                  slt          a6, t4, a7
                  sll          t6, a7, a3
                  slli         t1, t2, 1
                  sltu         a6, s3, t1
                  auipc        a6, 1024338
                  lb           s8, -27(s3)
                  lb           sp, 60(s3)
                  srli         a6, s9, 28
                  ori          t4, t0, 258
                  lhu          s10, 64(s3) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_0+1769 #start riscv_load_store_rand_instr_stream_10
                  sb           a7, -1231(a6)
                  sb           a4, -614(a6)
                  lb           s8, -374(a6)
                  lbu          s9, -568(a6)
                  lbu          t2, -150(a6)
                  sh           t2, -155(a6)
                  lb           gp, -253(a6)
                  andi         t0, a3, 326
                  sb           t3, -1392(a6)
                  sb           s3, -1392(a6)
                  sb           t4, -1027(a6)
                  lh           a3, -75(a6)
                  lbu          a4, 65(a6)
                  slli         s8, s3, 3
                  nop
                  lbu          t6, -1036(a6)
                  lb           s9, -186(a6)
                  lb           s3, -303(a6)
                  sra          t2, s2, s10
                  sub          s8, s7, t6
                  xori         zero, a7, 1449
                  xori         t4, zero, 1352
                  lb           s2, -533(a6)
                  sb           s7, -1046(a6)
                  sub          s6, a3, s10
                  srli         s1, s0, 11
                  sw           a6, -1269(a6)
                  sb           a7, -1690(a6)
                  lbu          t3, -36(a6)
                  add          t1, s0, a1
                  sh           s2, 109(a6)
                  xor          s8, t5, a2
                  lhu          s6, -1765(a6)
                  lb           sp, -310(a6)
                  sh           a2, 171(a6) #end riscv_load_store_rand_instr_stream_10
                  addi         t5, s0, -958
                  srli         t5, a6, 22
                  andi         s0, s7, 1377
                  auipc        a2, 965727
                  bne          t5, a2, 23f
                  auipc        s4, 196592
                  sltu         t0, a2, a4
                  srai         ra, s7, 15
                  slli         s1, sp, 29
                  auipc        s2, 502121
                  or           s9, ra, a5
                  beq          t4, t1, 20f
                  sub          s1, a7, a6
                  sltu         s9, a0, s5
                  sub          s4, ra, s7
                  andi         t0, a4, -535
                  sltu         s2, t3, a5
                  addi         a6, t2, 1623
                  nop
                  sltiu        s0, s2, -975
20:               sltu         s0, s10, a2
                  bne          a6, a4, 35f
                  or           t1, t4, s8
23:               xori         a3, a1, -2048
                  srli         s3, s1, 3
                  sltu         a4, s4, a7
                  and          t0, ra, t4
                  blt          t4, t3, 47f
                  sltiu        s5, s8, 321
                  sll          s1, s3, a4
                  andi         s3, zero, -616
                  bltu         s3, s6, 34f
                  bltu         a4, s1, 43f
                  slli         a5, sp, 25
34:               sra          t1, t6, a4
35:               sra          a3, t3, a4
                  srl          sp, a6, t5
                  sra          a4, s9, s4
                  bgeu         t3, s1, 58f
                  sltu         sp, zero, a2
                  srli         a6, t3, 14
                  ori          s4, a6, 1401
                  bge          tp, s5, 58f
43:               slt          tp, t2, s9
                  srli         s1, s7, 28
                  andi         s11, gp, 1947
                  srli         a4, ra, 13
47:               bgeu         zero, t4, 65f
                  beq          s0, s10, 50f
                  srl          a6, a7, s6
50:               bge          a6, s11, 62f
                  add          a2, a6, s4
                  sra          t4, a1, t3
                  nop
                  xori         gp, t6, 195
                  srai         t1, s10, 23
                  bne          a4, s1, 67f
                  slti         s2, tp, -1267
58:               blt          tp, s8, 75f
                  add          tp, zero, a3
                  and          t1, sp, tp
                  slti         a3, a6, -910
62:               add          s9, zero, gp
                  andi         t4, a5, -1474
                  sub          s10, a0, t1
65:               andi         gp, a3, 929
                  slt          t5, sp, a0
67:               bltu         tp, t2, 81f
                  or           a4, t5, a7
                  beq          s4, a7, 82f
                  nop
                  addi         t0, a2, -239
                  srl          zero, a6, s2
                  srai         t6, a5, 23
                  sub          s8, a6, ra
75:               sltu         t5, t0, zero
                  auipc        a2, 1029307
                  sll          t1, a5, gp
                  srai         ra, a0, 2
                  auipc        t5, 629160
                  srl          sp, s1, s1
81:               srl          a4, t2, sp
82:               srai         t0, s11, 26
                  lui          s0, 171774
                  bgeu         tp, s7, 97f
                  auipc        t1, 517829
                  nop
                  sub          a4, a0, a2
                  bgeu         a6, t5, 90f
                  slt          t5, ra, a6
90:               lui          a2, 110976
                  slli         a5, s1, 27
                  slti         a2, t5, 338
                  sub          s5, gp, sp
                  bne          a1, ra, 98f
                  srl          t2, tp, s0
                  sub          s9, a0, t5
97:               blt          s9, a6, 114f
98:               sll          t2, s0, a1
                  add          s0, s2, gp
                  srli         ra, t3, 28
                  sltu         s2, s7, a2
                  sll          zero, s1, s1
                  bge          s3, s1, 115f
                  sll          gp, a4, sp
                  ori          zero, gp, 1916
                  slti         zero, s2, 247
                  sll          t5, a5, s3
                  srl          s11, s11, a7
                  beq          a2, s1, 127f
                  beq          zero, s11, 112f
                  bne          s7, zero, 128f
112:              xori         t3, a0, -1841
                  sltu         a3, t6, t1
114:              sltu         a3, s2, t5
115:              bne          t4, s4, 120f
                  slli         a6, s1, 14
                  sub          s6, t6, t0
                  sltiu        a6, s0, 160
                  or           gp, ra, a3
120:              andi         sp, t0, -1672
                  xori         a7, s0, 1546
                  bgeu         tp, a7, 132f
                  slti         gp, a3, 1460
                  beq          s2, s11, 126f
                  srl          s1, a4, s10
126:              sra          t3, t3, s7
127:              sub          s9, gp, a1
128:              sub          a4, s9, a5
                  sub          s5, a0, s8
                  srai         t4, a4, 29
                  andi         a7, t5, -1502
132:              bne          t0, s6, 145f
                  and          a7, s8, s5
                  add          t1, t0, s5
                  slt          s1, s8, a1
                  xori         sp, s2, 2015
                  bne          t1, ra, 149f
                  srl          t0, a2, zero
                  addi         s6, ra, 760
                  blt          a0, a2, 157f
                  slt          s9, t4, t6
                  srli         s0, a2, 5
                  bltu         a7, s4, 154f
                  sra          a2, zero, s2
145:              bltu         a7, s9, 165f
                  blt          sp, t0, 159f
                  addi         s4, a2, -578
                  and          a7, a4, ra
149:              beq          s8, a4, 160f
                  nop
                  sltiu        s4, t4, -956
                  auipc        s8, 764611
                  bne          t3, gp, 171f
154:              ori          s1, t1, 1605
                  addi         t4, a0, -623
                  blt          s1, gp, 173f
157:              bne          t6, a1, 175f
                  addi         s11, s1, 1477
159:              sra          t6, s3, s7
160:              add          t2, a2, t3
                  beq          t0, s6, 172f
                  sltu         a5, t4, a6
                  slti         s3, tp, -342
                  sra          t1, t5, s8
165:              sltu         a4, ra, t0
                  or           a3, a7, a4
                  bge          t5, s4, 183f
                  nop
                  xor          s1, gp, a5
                  xor          ra, a0, t2
171:              slli         t3, a2, 21
172:              sra          t0, a0, t5
173:              ori          a2, s0, -905
                  bltu         s10, s0, 191f
175:              beq          s10, s9, 192f
                  sltu         a3, a0, tp
                  lui          zero, 271140
                  xor          a4, a3, t6
                  slt          s6, s1, t5
                  or           s0, s10, a7
                  or           s3, s6, s0
                  srl          tp, s9, s7
183:              beq          s0, s5, 196f
                  addi         tp, t6, -349
                  bltu         s0, a1, 204f
                  addi         t6, s3, 1012
                  slti         t5, s1, -1380
                  srai         zero, s0, 30
                  srai         s11, t3, 7
                  bltu         s2, s11, 207f
191:              blt          zero, t6, 201f
192:              sll          a3, a7, s10
                  bne          t6, s9, 198f
                  or           s4, t6, t3
                  auipc        gp, 639514
196:              slli         a3, t1, 6
                  sub          ra, ra, s10
198:              sltiu        s11, a4, -403
                  srli         s11, gp, 11
                  sltu         t4, s8, s8
201:              lui          a5, 480999
                  addi         a2, a2, 1659
                  addi         s6, s1, -1113
204:              slt          s6, s9, t6
                  slt          a2, s0, t2
                  bltu         ra, a3, 210f
207:              bgeu         s5, tp, 209f
                  lui          t6, 952392
209:              srli         s10, t3, 12
210:              or           t0, t0, ra
                  slt          a7, a7, t6
                  auipc        s1, 295535
                  srl          a5, a0, a4
                  and          s5, t4, s8
                  add          a3, zero, t1
                  beq          t1, t0, 225f
                  add          a7, ra, t5
                  srl          t5, a6, s7
                  srl          s1, sp, a0
                  slli         ra, ra, 15
                  xori         t4, t6, 597
                  slli         s10, s10, 11
                  bgeu         tp, tp, 234f
                  add          ra, t4, t5
225:              sub          sp, a2, a0
                  lui          s5, 672700
                  blt          s8, t0, 247f
                  slli         a3, t3, 29
                  srl          t4, s1, s5
                  bge          a6, s1, 244f
                  bgeu         s1, s4, 243f
                  slli         zero, a2, 19
                  auipc        s10, 448335
234:              auipc        s8, 987166
                  bge          gp, a1, 249f
                  bgeu         ra, s5, 248f
                  bne          a5, a2, 239f
                  bne          zero, a4, 240f
239:              srai         a5, s10, 11
240:              sltu         a5, s2, a1
                  addi         s3, a1, -1593
                  xori         a5, s5, -597
243:              lui          s2, 866376
244:              beq          ra, t6, 246f
                  addi         sp, a6, -240
246:              sra          t4, ra, s8
247:              bltu         s11, s0, 250f
248:              or           a5, a3, s1
249:              and          s8, t4, t2
250:              addi         ra, s6, -1758
                  beq          s2, ra, 264f
                  sub          tp, s11, t0
                  beq          s10, s3, 265f
                  bge          s2, s1, 259f
                  ori          a4, t5, 1244
                  sltu         zero, sp, gp
                  bge          s10, t3, 270f
                  srai         s4, a4, 23
259:              lui          t1, 336768
                  sub          zero, tp, zero
                  slli         s10, a1, 30
                  nop
                  xori         a2, s1, 1192
264:              bltu         s4, a4, 278f
265:              auipc        zero, 555031
                  and          a5, a1, t4
                  beq          t5, s4, 279f
                  srl          a5, t5, t0
                  blt          a5, t3, 286f
270:              sub          t1, a3, tp
                  and          s11, t1, t0
                  bltu         t4, t0, 284f
                  bne          s0, s10, 284f
                  srli         s8, s4, 15
                  sub          a3, sp, t1
                  sltu         t2, t3, ra
                  blt          s11, s3, 296f
278:              add          s6, s9, s5
279:              sub          tp, sp, t0
                  beq          a5, t6, 297f
                  nop
                  srl          s1, s7, t2
                  ori          s3, ra, 361
284:              blt          tp, s6, 287f
                  sub          s3, s11, t4
286:              sra          s1, s11, a6
287:              bgeu         zero, t0, 300f
                  beq          ra, s8, 302f
                  blt          a7, t6, 298f
                  bge          t0, s1, 292f
                  beq          s1, a4, 307f
292:              sll          s1, s11, s0
                  slt          s6, s10, a6
                  auipc        a4, 665287
                  xor          s5, tp, a6
296:              addi         t1, t4, -352
297:              sll          t6, t5, s1
298:              bltu         a0, t2, 300f
                  and          a5, zero, s3
300:              auipc        s2, 904918
                  add          t4, a5, a0
302:              bgeu         a5, a1, 319f
                  srai         tp, a0, 14
                  auipc        s1, 330465
                  srai         s9, tp, 25
                  sll          t2, t1, t3
307:              lui          s9, 144602
                  bne          zero, s4, 325f
                  srl          ra, t0, t0
                  lui          tp, 290619
                  srl          s3, t2, s5
                  and          s5, t1, s1
                  add          t3, a1, gp
                  xori         t0, s4, 656
                  bltu         t1, sp, 326f
                  srai         s1, a0, 27
                  sltiu        s4, s5, -2042
                  slt          sp, s5, t1
319:              xor          t3, a2, s3
                  lui          zero, 623788
                  add          t4, s2, a2
                  bgeu         s11, t2, 335f
                  auipc        ra, 358406
                  sll          s4, a1, s11
325:              slti         a2, t6, -1345
326:              sra          zero, s9, a0
                  sll          t6, s2, ra
                  lui          s3, 83331
                  nop
                  andi         a6, s1, 1348
                  beq          t4, s1, 349f
                  srai         a2, s3, 24
                  sra          t3, sp, t4
                  blt          s2, zero, 354f
335:              add          s1, s9, a7
                  xori         a4, t1, 93
                  lui          ra, 145802
                  lui          t6, 841217
                  lui          a5, 878532
                  bgeu         s1, a0, 342f
                  addi         t1, s0, 247
342:              slli         s10, a3, 3
                  srl          s0, s6, a0
                  slt          s9, gp, a6
                  add          a2, s8, zero
                  nop
                  bge          sp, a7, 358f
                  add          gp, a6, t0
349:              srai         s10, a2, 18
                  and          zero, a4, a3
                  sltiu        s0, t3, -695
                  srli         s4, a1, 12
                  sra          a2, zero, ra
354:              nop
                  slt          s10, a4, s10
                  slli         s2, s3, 25
                  sll          s9, t5, s7
358:              bne          s4, s10, 368f
                  bge          a1, a0, 377f
                  addi         t6, t1, -1898
                  nop
                  slti         a7, t1, -1466
                  add          gp, a7, s3
                  bgeu         s11, ra, 368f
                  bge          a2, ra, 377f
                  sub          a6, s1, t2
                  xori         t0, a1, -530
368:              srl          t1, zero, a1
                  lui          s9, 945663
                  or           s1, t5, s1
                  xor          gp, s6, a2
                  bge          a0, zero, 374f
                  auipc        s3, 572071
374:              sra          gp, t6, s7
                  beq          a2, s3, 395f
                  auipc        t0, 675344
377:              sltu         t1, s7, t2
                  blt          s2, t6, 381f
                  beq          s11, s8, 393f
                  sra          s3, t2, a5
381:              blt          zero, gp, 395f
                  bgeu         t5, a5, 402f
                  andi         s10, s11, 93
                  sra          a2, t5, ra
                  sltu         sp, a1, s7
                  and          gp, a2, s10
                  sltiu        s9, s2, -1228
                  and          gp, s7, t6
                  addi         a5, a0, -1089
                  sra          s9, s7, t6
                  addi         s2, a1, 1654
                  sll          t5, s8, t6
393:              add          a7, s10, a1
                  sltiu        t3, t1, -1312
395:              sll          s5, a4, t3
                  lui          t2, 7988
                  or           a5, a4, a4
                  sra          s1, s11, s5
                  sltiu        a7, t3, 239
                  sra          s9, a5, s5
                  or           s8, s2, s7
402:              addi         t5, s11, -1965
                  and          t3, a7, a0
                  slli         t3, s1, 5
                  lui          t0, 706721
                  or           a5, zero, t0
                  xori         t3, s6, -236
                  sub          t3, gp, s8
                  sltu         t2, t3, s8
                  andi         s1, t4, -1467
                  slli         s10, tp, 19
                  bgeu         a5, t5, 430f
                  andi         s5, s0, 105
                  auipc        t3, 137642
                  bgeu         t6, t2, 435f
                  nop
                  andi         a7, s2, 1079
                  addi         t2, t4, 1662
                  srli         s1, s8, 11
                  xori         t2, s2, -839
                  sltu         a2, s11, a0
                  slli         t3, s2, 16
                  srl          sp, t1, s6
                  or           s3, sp, a1
                  bne          a6, gp, 435f
                  blt          s6, s2, 428f
                  lui          a5, 355577
428:              bltu         s5, a3, 432f
                  sra          a2, a3, a7
430:              add          t3, t5, s5
                  srl          s6, t2, sp
432:              addi         s4, s10, 1455
                  andi         s5, s3, -1534
                  ori          s5, s7, 245
435:              xori         s0, a5, 35
                  ori          a6, a2, 939
                  bne          a7, zero, 439f
                  nop
439:              srai         zero, s7, 31
                  sll          s9, s6, s11
                  srli         sp, s10, 26
                  ori          s6, t6, 923
                  sra          s5, a5, t3
                  srai         s9, ra, 26
                  blt          a7, a5, 447f
                  sub          s1, s7, s5
447:              sltu         sp, s10, s7
                  sub          a4, a5, s7
                  srli         a4, t1, 19
                  sub          s6, s9, a6
                  xor          a4, s9, ra
                  addi         s4, s3, 745
                  slli         t3, zero, 22
                  sltu         a5, a6, s9
                  lui          s4, 644804
                  nop
                  srl          s5, s3, a6
                  bltu         s10, t3, 475f
                  beq          s2, t3, 472f
                  sll          s0, a0, t2
                  sltu         s5, t4, t0
                  lui          s2, 1008608
                  or           a6, a3, s4
                  sub          a7, a0, s0
                  srl          s0, s9, s9
                  bltu         a1, zero, 471f
                  add          t3, a3, s1
                  srl          sp, s5, s3
                  sub          a3, tp, s7
                  ori          t1, s11, -1111
471:              auipc        sp, 283481
472:              add          a6, s8, a0
                  sll          a5, s9, s4
                  ori          a5, t2, 1235
475:              blt          t4, s0, 494f
                  or           s3, s8, a5
                  sll          gp, s8, s0
                  sub          a2, s9, sp
                  xori         s6, s2, 1198
                  auipc        t2, 245374
                  sra          t6, s11, sp
                  srai         a6, a2, 11
                  srl          a3, s0, t5
                  sll          s11, s7, s2
                  lui          a4, 1004867
                  addi         tp, s1, -1814
                  bgeu         zero, a2, 503f
                  andi         s1, tp, 270
                  addi         s8, s0, -2013
                  xori         t6, t3, 1911
                  addi         s6, a3, 1225
                  beq          s6, s10, 504f
                  add          a4, a0, s6
494:              or           a2, t1, s7
                  nop
                  ori          s0, t6, 1040
                  or           s10, gp, gp
                  beq          a0, s6, 510f
                  sltu         t0, gp, sp
                  nop
                  nop
                  nop
503:              or           s5, t2, sp
504:              slt          a2, a2, t4
                  ori          t3, s1, 2000
                  nop
                  beq          t2, a5, 518f
                  or           s2, a0, a7
                  srl          gp, gp, ra
510:              sub          s3, a4, s8
                  bgeu         a0, t0, 523f
                  srl          a4, a6, a6
                  sra          sp, a2, s2
                  bgeu         s2, s1, 525f
                  slti         t2, a2, 855
                  or           s10, a5, a3
                  srl          a2, a2, s11
518:              or           ra, t6, s2
                  nop
                  xor          a4, a5, s8
                  blt          s5, s2, 532f
                  sltu         a5, s8, t5
523:              srl          sp, t4, t1
                  srl          gp, zero, s10
525:              xori         s2, a4, 738
                  add          a5, t3, s10
                  xori         t5, t4, 1888
                  xori         s1, s6, -1128
                  auipc        t4, 214285
                  bne          s6, tp, 547f
                  srl          a4, t1, sp
532:              sll          t4, t3, a1
                  and          s8, a0, s10
                  add          a4, s4, s9
                  srli         zero, s4, 29
                  sll          a6, a6, gp
                  and          s3, t4, s0
                  slli         a2, sp, 12
                  slt          a7, a0, s10
                  sltu         a3, t1, s6
                  bgeu         a3, t3, 558f
                  sltiu        s2, s10, 539
                  srl          ra, s3, t2
                  nop
                  slt          ra, tp, a7
                  andi         s1, a7, -206
547:              sltiu        zero, s9, 1531
                  sra          sp, s4, s6
                  andi         a5, s3, -558
                  sra          s0, tp, s0
                  srl          sp, s7, s11
                  slli         t1, a3, 19
                  addi         t5, a6, 1511
                  srli         s5, a1, 4
                  slt          s9, s6, a2
                  ori          zero, s3, -104
                  sub          zero, s11, a1
558:              andi         s0, a3, -194
                  ori          a2, s4, 352
                  sub          a5, s2, a2
                  bltu         sp, s3, 578f
                  addi         a4, t0, -1324
                  andi         s0, s4, 1979
                  slti         t3, t5, 216
                  sltiu        a2, s6, -1822
                  sub          s5, a3, sp
                  auipc        s5, 562346
                  xori         s3, zero, 913
                  xori         s5, a5, -195
                  sub          a6, t0, sp
                  bne          s0, a0, 584f
                  lui          s9, 900288
                  add          s1, a2, t4
                  auipc        s8, 773054
                  bltu         a7, a4, 593f
                  srai         tp, s9, 3
                  sltiu        a5, t2, 1117
578:              bltu         a7, s0, 580f
                  sltiu        t5, s9, 978
580:              slt          s5, t6, s3
                  xor          s4, s2, a0
                  bgeu         a7, s4, 591f
                  nop
584:              slli         tp, s11, 7
                  srli         a4, sp, 4
                  sra          s6, ra, t5
                  blt          s5, tp, 600f
                  bne          s11, a1, 592f
                  sub          s1, s7, a0
                  xori         sp, s6, -1633
591:              bge          s4, gp, 593f
592:              auipc        sp, 62639
593:              slli         t2, t0, 0
                  sltu         t0, a6, s8
                  slli         s5, a2, 27
                  ori          a6, s6, -1821
                  auipc        s6, 203147
                  ori          a3, s10, 903
                  and          s10, s1, ra
600:              add          a2, a2, a3
                  addi         a2, gp, 907
                  sll          t0, s0, a7
                  and          s9, a1, s6
                  nop
                  ori          s6, s3, 1640
                  srai         gp, a5, 31
                  beq          t0, ra, 609f
                  bgeu         a4, s2, 628f
609:              xori         ra, sp, 380
                  la           s10, region_1+49 #start riscv_load_store_rand_instr_stream_8
                  addi         t6, s9, -841
                  add          t2, t0, zero
                  lbu          t6, 7(s10)
                  lbu          s0, 10(s10)
                  lb           a7, 16(s10)
                  lhu          t0, 3(s10)
                  lb           a4, -5(s10)
                  lbu          t3, -16(s10)
                  sb           a6, -4(s10)
                  sltiu        zero, a4, 1901
                  lbu          s3, -6(s10)
                  slli         t0, t6, 14
                  srli         t5, a6, 13
                  sb           sp, 7(s10)
                  sra          ra, gp, t3
                  lb           s1, -10(s10)
                  and          t5, t3, s10
                  sub          a4, a5, t3
                  sb           a4, 16(s10)
                  sltiu        gp, a2, -1852
                  sb           t1, -4(s10)
                  sll          t5, a2, a7
                  lb           s8, 7(s10)
                  lb           t2, -8(s10)
                  slti         s0, a0, -537
                  sh           a6, 1(s10)
                  lh           a5, -1(s10)
                  sb           tp, -13(s10)
                  srl          s2, a6, zero
                  addi         s1, t0, 210
                  lb           ra, 0(s10)
                  auipc        t5, 73606
                  lbu          sp, -6(s10)
                  lh           tp, -7(s10)
                  lbu          t4, 16(s10) #end riscv_load_store_rand_instr_stream_8
                  xor          s8, tp, s4
                  lui          sp, 811889
                  bltu         s6, t1, 624f
                  and          s10, t4, t0
                  slti         s2, s10, -632
                  slti         s1, t1, 1894
                  add          a5, a2, a1
                  ori          a7, s1, 356
                  srai         s8, ra, 27
                  addi         t0, ra, 4
                  sltiu        t5, s2, 1551
                  sltiu        s2, t6, 418
                  sub          s10, s10, s10
                  addi         a6, a1, -350
624:              sltiu        zero, s3, -541
                  nop
                  sltiu        s11, s9, 554
                  slli         s1, a0, 0
628:              add          s0, s1, s10
                  bge          s1, t6, 641f
                  bgeu         t5, a3, 632f
                  blt          a7, t0, 642f
632:              beq          a6, a1, 649f
                  bge          t6, t6, 652f
                  xor          t2, s10, t6
                  slli         s11, t3, 11
                  addi         t4, s7, 1958
                  nop
                  sltu         t1, t6, a5
                  slt          sp, t3, t2
                  xor          s5, t5, a0
641:              bne          a2, a1, 655f
642:              ori          a5, a2, -729
                  srli         t5, s1, 8
                  sltu         s9, a7, a3
                  andi         s3, s4, -1796
                  xor          s0, s8, t0
                  blt          s5, a4, 658f
                  add          a6, a2, s4
649:              blt          tp, a7, 658f
                  andi         a2, a7, -25
                  slli         s11, s0, 14
652:              andi         s5, a3, -445
                  lui          s11, 404049
                  ori          s6, s8, -1755
655:              sltu         a2, s4, a4
                  ori          t0, s4, 601
                  nop
658:              slti         s8, t5, -190
                  xori         s3, s9, 925
                  xori         a2, s6, 673
                  xori         ra, a3, -321
                  slli         s0, a6, 18
                  nop
                  srl          t2, a4, a5
                  slt          t5, gp, s11
                  nop
                  addi         s11, t6, 793
                  or           s1, t1, s7
                  xori         a6, zero, 399
                  bne          s4, s7, 682f
                  ori          s1, zero, 1639
                  slt          zero, a3, a3
                  bne          a1, t1, 678f
                  srli         ra, s5, 14
                  auipc        tp, 835644
                  sll          s3, a0, t1
                  sra          t5, t4, t5
678:              sra          zero, t3, s1
                  xor          s4, s5, t0
                  blt          t5, a7, 698f
                  lui          s10, 620876
682:              bgeu         s5, s0, 698f
                  srl          a2, a6, t6
                  sub          s2, zero, s4
                  slti         a5, s1, -1706
                  blt          t1, t0, 703f
                  slli         gp, s7, 27
                  and          s2, t1, a6
                  xori         zero, s9, 1267
                  xori         a2, a0, -1576
                  or           a5, t3, a6
                  sra          s1, t4, s5
                  sltu         t1, t2, s10
                  slli         s0, a2, 9
                  ori          zero, t4, 1286
                  addi         t3, a4, -382
                  xor          a7, sp, s1
698:              nop
                  srl          s2, a4, sp
                  srli         a7, s8, 5
                  sra          s6, s1, t0
                  bltu         s1, s9, 705f
703:              slt          t0, t5, s8
                  blt          s2, s11, 721f
705:              ori          s1, ra, -375
                  xori         sp, a2, 182
                  sltu         sp, t0, s0
                  srli         a3, s1, 25
                  slti         a6, t3, -976
                  auipc        t3, 11222
                  srli         s3, sp, 15
                  xori         a2, s3, 831
                  or           s6, s9, gp
                  beq          t2, s9, 727f
                  addi         s10, gp, 1339
                  nop
                  srli         t3, t3, 19
                  slti         s1, t0, -292
                  addi         a7, s0, -108
                  sll          t6, s4, s6
721:              bge          t6, a1, 735f
                  sra          t1, s0, gp
                  nop
                  srl          sp, a0, s2
                  sltu         tp, ra, t0
                  ori          sp, s3, 155
727:              nop
                  blt          tp, t4, 746f
                  xori         s8, s5, -759
                  sub          s5, s1, s9
                  srai         sp, s3, 21
                  beq          a0, t4, 745f
                  bltu         s2, ra, 746f
                  lui          s10, 678805
735:              lui          a6, 231050
                  sll          ra, t5, a2
                  bge          ra, s8, 757f
                  sll          t0, ra, gp
                  andi         s0, s3, 70
                  xor          s9, a4, ra
                  srai         t0, a3, 16
                  srli         t3, t6, 27
                  beq          a4, zero, 753f
                  slli         a7, a0, 15
745:              and          a2, s7, t1
746:              srl          ra, t6, a6
                  sll          a7, s9, a7
                  and          a4, t1, a5
                  addi         t2, s11, -29
                  or           a4, a2, t6
                  add          sp, a1, t0
                  nop
753:              sll          tp, a4, t1
                  srli         t1, s6, 2
                  ori          s9, s11, -203
                  auipc        a5, 40412
757:              srl          s0, s5, s8
                  slti         a4, tp, 341
                  lui          t0, 627565
                  sltiu        s2, s0, 824
                  sub          a6, t5, t1
                  beq          s3, s11, 764f
                  xori         gp, ra, -1689
764:              srai         gp, s2, 26
                  slli         tp, s8, 15
                  auipc        gp, 768433
                  sra          s11, sp, s6
                  xori         a6, tp, 834
                  srli         s10, t4, 31
                  sltu         zero, t3, s6
                  sub          t5, gp, a2
                  srai         t6, s5, 7
                  bltu         t5, s4, 784f
                  sra          gp, a0, s0
                  andi         gp, t3, 1802
                  sub          s5, ra, zero
                  or           a4, s8, t0
                  addi         tp, t4, 1320
                  srli         s0, a4, 17
                  beq          t1, s3, 797f
                  xor          s4, t3, a5
                  sub          s4, t6, s5
                  blt          s1, s3, 800f
784:              nop
                  or           s10, a6, a3
                  bne          s3, a0, 805f
                  blt          t2, a5, 804f
                  slti         a7, tp, 567
                  ori          a6, s2, -167
                  srai         s10, s5, 23
                  andi         s11, zero, -516
                  sltiu        a6, s3, -1593
                  bgeu         t1, a3, 796f
                  bne          s5, s6, 807f
                  bltu         ra, t1, 809f
796:              xori         a5, s7, 1950
797:              xor          sp, a2, ra
                  slli         sp, t6, 24
                  bne          tp, t4, 801f
800:              bltu         t1, a7, 812f
801:              bne          s11, t6, 813f
                  bgeu         s7, a3, 811f
                  auipc        s5, 512140
804:              and          zero, zero, s10
805:              slti         zero, s5, 1070
                  sll          a4, s1, s4
807:              srai         a2, s2, 5
                  xor          s8, t6, tp
809:              srl          tp, a6, tp
                  blt          s6, s1, 826f
811:              bne          a0, s10, 824f
812:              sltu         t3, a2, t6
813:              lui          t2, 624523
                  addi         t1, sp, -288
                  addi         t4, t2, 330
                  bgeu         t0, s8, 833f
                  sltu         ra, s4, t3
                  slli         s5, a2, 16
                  and          s9, s7, a5
                  blt          a5, s11, 822f
                  xor          s1, sp, s0
822:              lui          t3, 525368
                  bge          s9, s9, 825f
824:              bge          gp, s0, 829f
825:              andi         a5, s11, -1036
826:              add          tp, s0, a7
                  slli         t1, t6, 7
                  add          gp, t2, s4
829:              ori          t6, sp, 1555
                  sltu         a3, sp, t3
                  andi         a6, s11, 551
                  srl          s6, a7, s4
833:              and          a3, a7, tp
                  sra          a7, a3, s7
                  bne          s10, s2, 853f
                  beq          s4, s10, 848f
                  slti         tp, t1, 117
                  andi         a7, s11, 952
                  sltiu        s1, a4, -1604
                  ori          a2, s1, -1713
                  blt          s3, s9, 859f
                  andi         ra, gp, -266
                  andi         a7, s2, 1628
                  sll          s8, s10, a0
                  ori          a7, ra, -940
                  slti         t0, a4, -1910
                  lui          zero, 255693
848:              srl          tp, t4, t1
                  or           gp, a5, ra
                  slli         s1, s4, 4
                  sll          t5, t2, t3
                  srai         gp, t2, 17
853:              addi         t0, s10, 500
                  bgeu         t6, s3, 858f
                  bne          tp, s1, 869f
                  bne          a1, s9, 867f
                  srai         a2, a3, 18
858:              bgeu         s1, a5, 868f
859:              sltiu        s8, s8, 96
                  sra          s3, a5, zero
                  slli         s6, s1, 0
                  blt          a6, s2, 879f
                  slti         s5, s11, 966
                  sub          t5, t5, sp
                  lui          sp, 53751
                  bge          zero, t6, 877f
867:              sll          a2, a0, s5
868:              srai         t3, sp, 24
869:              add          t6, t6, s7
                  and          s9, a2, s8
                  srai         s9, s10, 17
                  or           t6, zero, t4
                  auipc        s2, 505989
                  slli         s11, s1, 19
                  auipc        gp, 692775
                  sltiu        s5, a7, 2011
877:              sra          s5, a1, t6
                  sra          s0, sp, s11
879:              xor          a3, t5, gp
                  sub          s8, t3, a2
                  srai         s6, s2, 7
                  srl          s4, s0, a6
                  srl          t6, sp, a0
                  nop
                  srli         a3, a6, 11
                  slti         s8, s2, 547
                  slti         s10, zero, 955
                  bltu         s1, s1, 901f
                  andi         t4, s5, 931
                  bne          a5, a2, 910f
                  auipc        tp, 844568
                  sll          s0, gp, s10
                  ori          s5, t1, -2013
                  or           t4, s10, s3
                  sltiu        t2, a3, -1669
                  sltu         s1, s1, a6
                  or           a6, t3, s5
                  xori         t6, ra, 1947
                  xor          gp, a3, a2
                  srli         s2, a3, 13
901:              srli         t3, s0, 14
                  add          sp, a0, s11
                  slli         zero, ra, 20
                  andi         s3, s7, -1707
                  sra          t3, a1, s9
                  bltu         s6, tp, 908f
                  bltu         s5, a5, 927f
908:              and          a5, s11, t0
                  slli         tp, a0, 19
910:              and          a2, a6, a7
                  la           s3, region_1+1443 #start riscv_load_store_rand_instr_stream_5
                  lbu          s11, 87(s3)
                  and          t2, s8, t5
                  lbu          gp, 160(s3)
                  auipc        a2, 32198
                  sltiu        t5, a5, 1029
                  slt          gp, sp, zero
                  sb           a2, -56(s3)
                  or           t3, a5, a3
                  lb           s0, 152(s3)
                  lb           s10, -146(s3)
                  lhu          gp, -143(s3)
                  xori         t5, s1, 1880
                  lbu          s11, -234(s3)
                  lbu          zero, 195(s3)
                  sb           t0, -114(s3)
                  lbu          s8, 90(s3)
                  addi         t3, a1, -1317
                  sh           ra, -33(s3)
                  lb           s8, -33(s3)
                  lb           a5, 166(s3)
                  lb           s5, 142(s3)
                  sb           ra, 5(s3)
                  lb           a3, -224(s3)
                  lb           t4, 111(s3)
                  lb           a2, -244(s3)
                  sub          a3, s1, s7
                  lbu          s5, -86(s3)
                  sb           s10, 57(s3)
                  sb           s4, 14(s3)
                  slt          tp, t2, a0
                  lbu          s5, 66(s3)
                  lui          a7, 926207
                  srli         t4, s5, 15
                  sb           t3, -119(s3)
                  lb           s4, -71(s3)
                  lb           s6, -121(s3) #end riscv_load_store_rand_instr_stream_5
                  slti         t4, zero, 1570
                  andi         t1, a7, -1546
                  bne          sp, t6, 924f
                  or           s4, t2, s5
                  add          t3, t5, t6
                  beq          a0, sp, 928f
                  xori         t4, sp, 639
                  and          s4, s11, s9
                  add          s8, a6, s2
                  sub          zero, s1, s4
                  sltu         s0, s10, gp
                  srl          s6, a5, s5
                  bne          gp, zero, 936f
924:              beq          s8, ra, 938f
                  sra          s11, s0, tp
                  sll          gp, s4, t2
927:              andi         t1, tp, -957
928:              srl          s9, s8, s11
                  lui          s4, 699899
                  srai         t1, t3, 29
                  srai         t3, a3, 6
                  ori          s5, s6, -1130
                  blt          s9, a7, 950f
                  slt          s10, zero, t0
                  add          a5, t5, s4
936:              srai         t0, s10, 12
                  sra          s8, s6, tp
938:              lui          s9, 990821
                  bltu         a2, a3, 950f
                  slli         gp, s8, 4
                  sltiu        t6, t5, 660
                  slli         t5, a4, 2
                  bltu         a5, t3, 947f
                  xori         t4, t6, 639
                  sra          s8, gp, s9
                  or           s2, s9, a7
947:              sltu         t1, t4, t5
                  xor          zero, t2, a0
                  addi         s3, s1, 246
950:              slti         s1, a3, 864
                  and          tp, t5, s8
                  sll          sp, t6, sp
                  ori          a7, t0, 1841
                  ori          t2, a6, -1433
                  srai         s9, ra, 12
                  srl          a6, a3, a5
                  srai         a4, gp, 9
                  sll          t2, s5, s5
                  sltu         t0, s10, a1
                  sltiu        t0, a7, -878
                  bltu         s0, s4, 963f
                  srli         sp, a6, 16
963:              sub          t3, s1, a1
                  beq          a6, a7, 976f
                  addi         s1, s11, 1213
                  addi         s2, sp, 475
                  auipc        t3, 984091
                  sub          zero, s8, t2
                  lui          tp, 333605
                  lui          s1, 898337
                  sltiu        a6, s2, 11
                  slt          a2, a4, s0
                  beq          t3, s10, 992f
                  bltu         t4, a2, 986f
                  slt          t1, s6, s10
976:              sra          s9, s8, a7
                  and          t5, a1, a5
                  bgeu         a7, s3, 992f
                  beq          s2, ra, 988f
                  or           sp, a7, s0
                  lui          s8, 491242
                  lui          s10, 922381
                  or           s2, s5, a4
                  sltiu        s3, a6, -1004
                  bge          s10, s6, 1002f
986:              bge          sp, s6, 1003f
                  nop
988:              bne          s9, tp, 1006f
                  auipc        s2, 991326
                  bne          ra, s3, 995f
                  sra          s1, a3, s9
992:              add          s0, gp, t6
                  sll          s11, t0, t2
                  blt          s2, t3, 1007f
995:              bge          sp, s9, 997f
                  beq          s0, t0, 998f
997:              slti         tp, a0, 911
998:              bgeu         s4, a3, 1009f
                  nop
                  beq          t0, tp, 1017f
                  bne          s10, s9, 1012f
1002:             slt          tp, a3, s9
1003:             auipc        sp, 366356
                  addi         t1, a2, -1288
                  slti         t3, s3, -1324
1006:             sub          t3, t4, s10
1007:             auipc        s0, 1026808
                  sll          s4, s0, sp
1009:             sltu         s6, s0, a2
                  slti         s10, a4, 486
                  slti         s2, t3, 1791
1012:             or           a2, t6, s8
                  and          s0, s0, a1
                  bge          a4, s11, 1017f
                  lui          t2, 449378
                  sltiu        a3, t3, -1736
1017:             bltu         a2, t6, 1030f
                  and          t6, t4, s11
                  slt          a2, a2, a1
                  sltiu        a6, t6, -606
                  nop
                  sub          s11, s9, a6
                  bltu         t1, tp, 1033f
                  auipc        t1, 1004441
                  slti         s5, a3, -742
                  srai         s10, s6, 17
                  ori          t5, a7, 1011
                  slli         a3, tp, 25
                  bltu         s6, t6, 1047f
1030:             add          t2, s2, t2
                  bne          s10, a4, 1047f
                  nop
1033:             srl          gp, s4, s0
                  bne          s10, a1, 1054f
                  lui          a4, 833405
                  bgeu         s11, a6, 1056f
                  blt          t4, a4, 1039f
                  slt          s3, a5, s11
1039:             slli         s11, t2, 12
                  xori         a2, a0, -1334
                  srli         s4, a4, 8
                  xor          s11, a7, s11
                  nop
                  srli         t2, a5, 2
                  ori          a2, s10, 658
                  auipc        t6, 197622
1047:             xor          gp, a6, a3
                  and          a2, s2, s7
                  add          t4, ra, t6
                  bgeu         t6, sp, 1052f
                  bltu         zero, s9, 1071f
1052:             auipc        a2, 148536
                  beq          s4, a4, 1071f
1054:             addi         sp, s6, 1436
                  slti         a3, t2, 1055
1056:             auipc        s5, 726186
                  srai         s1, ra, 31
                  slti         s2, s3, -1439
                  blt          s7, tp, 1076f
                  srli         s3, s0, 13
                  blt          zero, t6, 1081f
                  or           t2, tp, a5
                  andi         s10, a1, -2034
                  xor          a3, s11, t6
                  lui          a5, 832895
                  sltu         s3, t2, t0
                  ori          gp, a6, 1915
                  beq          tp, a5, 1070f
                  lui          s0, 322178
1070:             bge          s4, s7, 1081f
1071:             lui          a4, 248358
                  blt          a6, a1, 1077f
                  slli         a4, s10, 27
                  blt          s11, a5, 1076f
                  srl          s9, s11, tp
1076:             nop
1077:             sltu         a6, ra, a0
                  or           a2, s0, a6
                  xori         a5, a6, -1117
                  add          tp, s5, a6
1081:             ori          s2, t5, 841
                  or           s4, s2, s9
                  srli         s2, a6, 29
                  lui          t2, 430399
                  srl          t6, t6, s6
                  lui          s8, 993019
                  ori          a2, zero, 1709
                  bge          ra, t2, 1105f
                  bne          s6, zero, 1102f
                  ori          a6, a3, 1575
                  srli         s5, t1, 21
                  add          tp, s4, gp
                  addi         a3, t0, -1816
                  or           s1, tp, s0
                  lui          s2, 409655
                  ori          s3, t0, 1169
                  auipc        a6, 488439
                  sltiu        a4, a5, -1101
                  addi         s8, zero, 728
                  and          s9, s2, s1
                  bgeu         a1, a5, 1104f
1102:             ori          zero, s9, -2010
                  beq          a5, a0, 1114f
1104:             andi         t6, t3, -1994
1105:             srl          s9, t6, ra
                  srl          a6, t5, a6
                  auipc        s10, 34137
                  srl          s1, s10, a7
                  ori          t4, s2, -889
                  slli         sp, a4, 1
                  sltiu        a5, s9, 24
                  srai         a2, t4, 25
                  bne          a7, a0, 1130f
1114:             nop
                  slti         a6, zero, 1503
                  bltu         s2, t1, 1127f
                  lui          s4, 588971
                  sltu         s11, s8, ra
                  add          a4, s7, t3
                  beq          a0, s3, 1133f
                  bge          gp, s11, 1125f
                  bge          a6, a3, 1132f
                  bge          a4, t6, 1136f
                  or           s2, tp, s5
1125:             nop
                  or           t1, a6, s0
1127:             srli         s10, s8, 28
                  srl          t6, t2, s10
                  xor          a3, s3, t5
1130:             andi         t4, s7, 1929
                  nop
1132:             sub          s8, a6, s4
1133:             add          sp, t6, a1
                  bne          a4, t5, 1146f
                  blt          t1, s4, 1149f
1136:             srai         s3, a6, 10
                  srli         a3, a2, 14
                  add          tp, tp, a6
                  sltu         s3, a5, s0
                  sra          tp, s5, s6
                  bgeu         a2, ra, 1143f
                  lui          s3, 785106
1143:             bgeu         zero, a7, 1155f
                  sub          s9, gp, t4
                  add          s10, t0, a7
1146:             blt          s5, a3, 1163f
                  bltu         a7, s1, 1166f
                  auipc        s4, 662733
1149:             bge          s6, t2, 1165f
                  slt          s8, ra, s11
                  slti         a4, s0, -810
                  xori         sp, s7, 1411
                  srl          a7, s6, s11
                  sltiu        s6, a6, 1392
1155:             sltu         gp, s11, s4
                  xor          t6, a0, a2
                  srli         tp, gp, 25
                  xor          ra, s6, t5
                  and          a3, s10, s3
                  sll          a4, s2, s9
                  sltu         a4, s5, t2
                  sra          a5, s5, s9
1163:             xor          t0, t2, t5
                  slti         zero, ra, -1446
1165:             sra          t0, s0, s1
1166:             bge          a2, a2, 1180f
                  srli         a3, t6, 29
                  srl          s0, s10, s8
                  bne          s1, gp, 1181f
                  sll          a5, s8, a1
                  bltu         t1, t4, 1189f
                  andi         s0, s4, -1174
                  lui          gp, 9562
                  slt          a7, t4, a4
                  sltiu        s9, zero, 1475
                  slt          t1, t6, a0
                  bgeu         ra, t3, 1186f
                  ori          s9, s8, 1544
                  bgeu         s7, t6, 1193f
1180:             and          a4, s8, s11
1181:             auipc        t4, 617832
                  blt          s2, s11, 1193f
                  lui          s10, 874178
                  beq          t2, tp, 1186f
                  slti         s6, a3, 1394
1186:             srl          a6, a2, zero
                  sra          t6, t6, s4
                  slti         sp, a2, 1674
1189:             bltu         s3, t0, 1207f
                  addi         t6, a3, 1194
                  sll          s5, a6, sp
                  bgeu         a6, s6, 1206f
1193:             auipc        a4, 141407
                  and          ra, s0, t0
                  nop
                  srai         zero, t4, 24
                  bge          s3, s11, 1199f
                  xori         t3, a6, -1053
1199:             sltiu        gp, s0, 1001
                  bge          a5, t6, 1213f
                  slli         s9, s0, 25
                  srai         t4, s0, 25
                  slt          gp, a1, a6
                  or           s3, s1, tp
                  blt          t3, s3, 1222f
1206:             sub          s4, ra, t3
1207:             sub          s2, a7, t3
                  addi         s11, s10, -563
                  bne          s10, s2, 1221f
                  addi         a2, zero, 1206
                  sub          s8, s7, s3
                  blt          t4, a0, 1228f
1213:             add          s3, s7, s0
                  bgeu         a5, zero, 1232f
                  andi         s8, t0, 796
                  bgeu         sp, a6, 1220f
                  blt          a3, t4, 1229f
                  sra          a7, a4, t1
                  slt          tp, ra, a6
1220:             bltu         t3, s5, 1237f
1221:             or           t5, s6, s11
1222:             sra          a3, tp, t2
                  sltiu        a7, s2, 1237
                  slt          a2, t6, t4
                  bge          t3, a1, 1228f
                  slli         s3, s9, 13
                  bltu         s6, a5, 1246f
1228:             addi         s3, s2, 1355
1229:             and          s9, s9, a4
                  bltu         s11, a3, 1239f
                  xori         s0, s8, -1782
1232:             srai         a4, s10, 8
                  sub          s9, t3, ra
                  auipc        s10, 962753
                  srl          s1, a1, tp
                  sltu         t6, sp, t0
1237:             bgeu         s7, s10, 1257f
                  slli         a4, s7, 28
1239:             sub          t4, a6, s8
                  sll          a4, s3, a4
                  ori          t2, a2, -175
                  bgeu         a0, s6, 1255f
                  blt          sp, s10, 1254f
                  addi         t5, t3, 1129
                  sub          t6, s9, a0
1246:             sra          s6, s6, t1
                  auipc        zero, 1044955
                  and          t1, s5, s4
                  slt          t3, s11, t5
                  sltiu        zero, t0, -547
                  slti         a4, s6, 1242
                  slti         a4, t1, 1399
                  addi         t4, sp, -53
1254:             add          t2, s3, a5
1255:             xori         s6, a0, -1538
                  xor          s6, a4, t0
1257:             sltiu        s3, s7, 149
                  lui          t1, 953796
                  slt          t6, t3, a3
                  addi         s2, s5, 1280
                  sra          sp, s8, a0
                  beq          s7, t1, 1279f
                  bne          a4, tp, 1280f
                  srli         s8, s4, 27
                  slt          s5, gp, tp
                  ori          zero, t4, -1656
                  bge          t0, a6, 1287f
                  sll          zero, t4, t1
                  xori         s0, t0, -1843
                  lui          ra, 350118
                  sll          a6, s4, s5
                  srli         s0, zero, 30
                  bgeu         s11, s5, 1286f
                  sll          a4, a3, s10
                  addi         s10, a5, 462
                  nop
                  sub          sp, sp, t1
                  beq          s10, s10, 1288f
1279:             slti         t4, s11, 481
1280:             xor          a5, t6, t6
                  nop
                  bgeu         ra, a2, 1294f
                  or           zero, s5, s6
                  or           a6, s3, t1
                  sra          s3, s11, s0
1286:             andi         a3, s7, 1716
1287:             sra          ra, s4, t6
1288:             srli         t3, a2, 15
                  or           s11, a3, t4
                  xor          sp, s2, t3
                  xori         s6, s11, -256
                  sltu         gp, s7, ra
                  nop
1294:             ori          zero, s5, -459
                  slt          a5, zero, t0
                  bltu         a2, a4, 1298f
                  srl          a6, a1, s5
1298:             sra          s4, s1, zero
                  sll          s10, s5, s3
                  sub          s9, t1, s9
                  beq          gp, t1, 1312f
                  add          a6, t5, s9
                  sltu         a5, sp, s7
                  sll          s11, a1, s5
                  nop
                  lui          a6, 989251
                  bge          s0, t3, 1312f
                  sltu         s1, t0, zero
                  sra          t5, t2, t2
                  blt          s0, zero, 1312f
                  srl          gp, t0, tp
1312:             beq          a3, ra, 1325f
                  srl          s8, t5, a5
                  beq          s8, zero, 1328f
                  srl          a5, s8, s5
                  sltu         s4, s4, s7
                  nop
                  srai         s10, t4, 1
                  sll          a3, s0, s7
                  xor          t2, gp, t1
                  blt          gp, t6, 1325f
                  addi         s1, t3, -893
                  or           t6, zero, s0
                  or           a5, t0, s4
1325:             bltu         s2, a0, 1336f
                  slt          t1, t1, ra
                  sra          a5, tp, a7
1328:             addi         t0, a4, 1468
                  blt          s6, zero, 1339f
                  slli         s5, s7, 21
                  sltu         t0, s8, s8
                  and          ra, a0, a7
                  addi         t3, a5, 975
                  and          t3, a0, t1
                  bgeu         a6, s2, 1352f
1336:             andi         s3, s1, -308
                  nop
                  bgeu         a3, a4, 1355f
1339:             beq          a6, s2, 1359f
                  bne          a0, s2, 1343f
                  sltiu        s1, t4, 83
                  srli         s0, a1, 25
1343:             lui          t1, 990289
                  lui          a7, 79854
                  xor          s10, zero, s8
                  sra          zero, a6, a1
                  auipc        s5, 646406
                  lui          s10, 24193
                  slti         zero, a7, -1986
                  xor          s5, s3, a6
                  and          t5, a0, a3
1352:             slt          s9, s9, t2
                  sltu         s10, s5, s6
                  ori          s11, sp, 51
1355:             bne          s9, a3, 1357f
                  beq          a7, t5, 1376f
1357:             bltu         tp, a0, 1374f
                  auipc        zero, 64581
1359:             sll          sp, t5, t1
                  slti         tp, s9, 834
                  sltiu        t1, t3, -243
                  srli         s8, t1, 9
                  and          s4, a5, gp
                  beq          s5, gp, 1377f
                  sub          t0, t3, t6
                  nop
                  slt          t4, s5, zero
                  srl          t5, a1, a2
                  xori         s8, s4, -889
                  xor          zero, gp, s10
                  lui          s6, 914873
                  andi         a4, zero, -431
                  srl          t5, s9, s7
1374:             slt          t5, a7, a0
                  srl          t0, t1, s2
1376:             slti         s5, a3, -500
1377:             auipc        a5, 442823
                  sub          s6, sp, s6
                  slti         a4, t5, -1187
                  bne          t6, t3, 1394f
                  slti         s0, a0, 2002
                  xori         t0, a0, 263
                  addi         t5, s11, 2031
                  xor          s11, a1, sp
                  lui          s1, 751583
                  sltiu        a2, ra, -1934
                  srli         s11, a3, 1
                  xori         ra, a0, -1414
                  beq          s6, s8, 1401f
                  add          s1, a5, gp
                  auipc        t6, 232488
                  bge          a0, s9, 1405f
                  or           s6, t6, s10
1394:             slli         t0, s9, 1
                  srai         t1, a4, 16
                  bne          s11, s0, 1398f
                  lui          s0, 760711
1398:             bge          a1, t4, 1405f
                  srl          s2, s9, s1
                  sltiu        sp, sp, -1269
1401:             ori          tp, s8, -271
                  srl          ra, ra, a7
                  sra          t5, a5, s5
                  andi         a4, sp, -1074
1405:             xor          t6, t5, a6
                  andi         s3, s6, 1551
                  lw           s4, 4(a0)
                  nop
                  addi         a0, a0, 12
                  sltiu        s9, s7, 1639
                  slli         t0, t1, 26
                  auipc        s5, 42801
                  and          a6, s7, a0
                  ori          s6, s0, 1504
                  and          ra, a0, s3
                  sltu         t0, a6, a1
1841:             addi x31, x20, 1
1841:             jalr x31, x31, 0
sub_7:            addi         a0, a0, -12
                  sltiu        t2, s0, 194
                  sra          zero, gp, t6
                  slti         s10, a2, -303
                  srli         s10, s6, 13
                  sw           s4, 4(a0)
                  srai         a3, a3, 2
                  sltu         t1, s7, s5
                  slli         s10, a2, 13
                  slli         sp, s1, 26
                  la           sp, region_0+1849 #start riscv_load_store_rand_instr_stream_1
                  lh           t4, -1203(sp)
                  or           s6, s5, s8
                  and          a3, a5, s4
                  auipc        a4, 751214
                  slt          s0, zero, t0
                  addi         s1, gp, 1903
                  lw           s5, -1149(sp)
                  lh           tp, -747(sp)
                  srl          a6, t4, s5
                  sra          s6, t0, s3
                  sltiu        s1, t5, -1102
                  add          s3, t1, t2
                  or           t3, a2, zero
                  sltu         t3, s1, s4
                  sub          t1, a2, s8
                  sb           tp, -1777(sp)
                  lb           a3, -1288(sp)
                  lbu          ra, 32(sp)
                  lbu          t5, -1067(sp)
                  lb           s11, -1593(sp)
                  sll          a4, a7, a2
                  nop
                  lb           s5, -924(sp)
                  lui          s5, 257651
                  sltiu        s4, t1, -1052
                  lh           t0, -1663(sp)
                  lbu          t5, -264(sp)
                  sw           gp, -257(sp)
                  lbu          t3, -570(sp)
                  and          a7, t0, tp
                  sltu         s10, s5, t3
                  slti         a3, s6, 510
                  sb           a2, -1749(sp)
                  lh           tp, -1819(sp)
                  lbu          tp, -713(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+225 #start riscv_load_store_rand_instr_stream_3
                  auipc        s2, 515377
                  sub          t3, s10, s6
                  lhu          a6, 61(sp)
                  ori          gp, s2, -810
                  lhu          a7, 203(sp)
                  lw           a2, -57(sp)
                  sb           s11, 164(sp)
                  lb           s10, 248(sp)
                  sb           s7, 50(sp)
                  lui          zero, 619805
                  lb           a5, -69(sp)
                  lbu          s6, 84(sp)
                  lb           a6, 52(sp)
                  sub          a5, a3, gp
                  srai         a4, a7, 6
                  sb           t0, 54(sp)
                  sltiu        s1, s2, 813
                  sb           t3, -46(sp)
                  sh           s7, 31(sp)
                  lbu          t1, -114(sp)
                  lb           t1, 10(sp)
                  addi         a4, a0, 576
                  lbu          s1, 88(sp)
                  auipc        s9, 109993
                  lbu          a3, 86(sp)
                  lui          s11, 997031
                  srai         s3, t2, 20
                  lbu          a7, 217(sp)
                  sh           t4, -23(sp)
                  srai         t5, s9, 10
                  lb           s0, 45(sp)
                  slli         a5, s1, 22
                  lb           a7, -70(sp)
                  sub          s1, s1, s6
                  lbu          t6, 64(sp)
                  add          a4, a5, tp
                  auipc        t0, 593392
                  lbu          s1, -71(sp)
                  srl          s9, a1, t3
                  sb           s4, -16(sp)
                  lhu          s4, -57(sp)
                  sb           s4, -138(sp)
                  sw           t6, -217(sp)
                  lhu          t1, 251(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1897 #start riscv_load_store_rand_instr_stream_0
                  sltiu        a2, a6, 101
                  lhu          a6, 9(sp)
                  sb           s2, 46(sp)
                  lw           t0, -41(sp)
                  sub          t2, t4, t4
                  slti         t4, a4, 1865
                  srl          a4, s1, t0
                  lw           s11, 11(sp)
                  lh           s2, -55(sp)
                  sb           a0, 0(sp)
                  sra          s3, a5, a1
                  sll          gp, s7, ra
                  sra          s3, t1, sp
                  sw           a6, -9(sp)
                  sltu         t5, s4, a3
                  sub          s1, a4, a0
                  sltiu        s2, t3, 1570
                  auipc        t1, 861147
                  sb           s4, 4(sp)
                  add          tp, a6, t1
                  andi         a5, s5, 375
                  lb           s6, -60(sp)
                  or           s1, s7, s11
                  addi         s9, sp, -1047
                  sb           s6, 61(sp)
                  xori         s1, s0, -160
                  ori          s9, t2, 1216
                  addi         s4, s6, -220
                  lb           a4, -32(sp)
                  sb           gp, -29(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1228 #start riscv_load_store_rand_instr_stream_2
                  srl          s3, s11, t4
                  sb           s0, -202(sp)
                  nop
                  slti         s4, tp, -1748
                  sll          tp, tp, a1
                  lh           a5, -170(sp)
                  sltu         t4, t1, sp
                  sltiu        a7, ra, 1879
                  sb           s0, 221(sp)
                  sb           ra, -145(sp)
                  ori          a6, a7, -900
                  lb           t6, -57(sp)
                  xori         a6, s10, -1564
                  lb           t4, -137(sp)
                  lb           s9, 51(sp)
                  lbu          ra, -25(sp)
                  slt          ra, a7, t2
                  lb           s5, 213(sp)
                  lbu          s2, 101(sp)
                  lb           zero, -222(sp)
                  srl          s4, s9, zero
                  lbu          a2, -16(sp)
                  slti         s1, a6, -21
                  lb           a6, -63(sp)
                  lbu          t1, -138(sp)
                  and          a3, tp, a2
                  sh           ra, -102(sp)
                  lb           a7, -237(sp)
                  slti         a2, a0, 1067
                  sltu         s11, t2, tp
                  sra          s0, t6, a7
                  lbu          t6, -222(sp)
                  lbu          a3, -149(sp) #end riscv_load_store_rand_instr_stream_2
                  slti         t5, a5, -1019
                  sub          a2, s4, gp
                  slti         sp, t5, 932
                  slt          gp, s9, s11
                  beq          a4, t2, 23f
                  lui          s5, 122078
                  sll          s2, s4, a7
                  and          t0, s5, gp
                  sll          s5, s1, t5
                  sub          t4, tp, t0
                  or           s10, a1, a7
                  addi         t3, s0, -654
                  sltu         s4, s6, s8
                  xor          s3, t3, a3
                  srai         s3, a6, 2
                  sra          s6, s8, a2
                  srai         t3, t3, 14
                  slt          s10, s2, s4
                  ori          s11, s3, 1524
                  or           s11, gp, t4
                  sll          t4, t3, sp
                  ori          a3, s2, -1783
                  and          a7, a4, tp
23:               srai         tp, a5, 5
                  slli         s4, a5, 6
                  sll          tp, t4, ra
                  andi         a5, a1, 1042
                  ori          t2, a1, 272
                  nop
                  sltiu        sp, a6, -136
                  lui          tp, 900417
                  addi         a3, a6, -1624
                  or           s6, t6, s1
                  slti         s8, s9, 297
                  auipc        s0, 948148
                  sltu         t4, t2, s8
                  srl          s1, a0, s1
                  addi         a7, s7, -682
                  blt          a5, s7, 47f
                  ori          t0, s1, 1766
                  srl          s3, s6, gp
                  add          s8, t2, s4
                  srl          a4, sp, s1
                  srli         s6, t5, 8
                  andi         t6, t6, 592
                  bgeu         t6, t3, 51f
                  slti         tp, s1, 1856
47:               sra          t4, s9, t5
                  bgeu         s9, sp, 58f
                  slti         t0, s3, 2047
                  beq          s2, s7, 55f
51:               bltu         a0, s4, 54f
                  xor          a7, zero, t6
                  srli         s1, sp, 2
54:               srli         s6, zero, 29
55:               lui          s8, 111684
                  sltu         a2, t6, t6
                  bne          t5, s10, 61f
58:               bge          t1, a5, 61f
                  slt          t2, a5, s8
                  and          s11, gp, a4
61:               bne          s1, s4, 68f
                  addi         t4, t2, -1083
                  sltu         t2, s4, s4
                  bge          s9, a1, 80f
                  ori          s11, s6, -1892
                  bgeu         zero, a2, 81f
                  srli         t5, a7, 29
68:               srai         gp, sp, 28
                  slt          s3, sp, s2
                  bltu         s11, s3, 77f
                  add          s5, s11, s3
                  bltu         s6, s8, 77f
                  nop
                  nop
                  or           s4, s11, a0
                  bge          a5, t4, 94f
77:               and          t4, zero, t3
                  slli         a5, a2, 26
                  nop
80:               blt          s2, s8, 86f
81:               xor          s11, s0, s7
                  add          t4, a7, s1
                  xor          a3, t3, a5
                  sub          ra, s10, gp
                  andi         s2, a7, 1933
86:               slli         ra, s1, 19
                  blt          s0, a4, 90f
                  srai         t3, a3, 16
                  nop
90:               slli         a5, s10, 4
                  or           t0, t2, t3
                  srai         s6, ra, 19
                  sra          s5, zero, s0
94:               blt          s6, s10, 113f
                  xori         s4, a1, 516
                  lui          t6, 1024012
                  add          t6, s1, a2
                  slli         a2, sp, 30
                  beq          t4, t5, 113f
                  or           a4, s8, s8
                  xori         s1, s6, 407
                  blt          s3, a7, 120f
                  sltiu        t2, gp, 858
                  addi         a6, t5, -175
                  and          gp, a4, t0
                  sll          s8, t0, a0
                  bne          s4, t5, 108f
108:              blt          t0, t6, 109f
109:              or           s10, a6, s5
                  bne          s6, s7, 125f
                  beq          s5, s1, 120f
                  xori         t6, zero, -1162
113:              blt          ra, ra, 127f
                  slli         t5, t6, 1
                  srli         t6, t5, 21
                  blt          t6, sp, 128f
                  ori          s9, a1, 1026
                  slli         t1, s5, 31
                  beq          s11, s11, 128f
120:              lui          s11, 94513
                  xor          s6, s4, s5
                  srl          sp, zero, gp
                  slt          s11, t0, t6
                  bltu         s4, ra, 129f
125:              lui          t4, 840495
                  beq          s3, a5, 127f
127:              and          ra, tp, s1
128:              add          t4, t4, a0
129:              srl          s11, t0, tp
                  xor          gp, s5, s7
                  sltiu        sp, t4, 1276
                  blt          s0, zero, 150f
                  beq          s11, t1, 141f
                  add          t0, t2, t6
                  srl          t2, s9, t5
                  auipc        t6, 632031
                  blt          t5, s11, 146f
                  add          t6, t1, s0
                  srli         a4, t1, 25
                  slti         s6, t0, 1047
141:              andi         a2, t5, 1440
                  nop
                  xori         a6, s3, 35
                  ori          a5, t2, -1013
                  sra          s10, t0, tp
146:              andi         s5, s11, 1924
                  nop
                  or           s0, s5, s4
                  bltu         s4, s9, 158f
150:              beq          s9, sp, 155f
                  ori          s4, s7, 980
                  slli         t2, a1, 24
                  and          zero, a3, t0
                  beq          a7, a5, 157f
155:              sra          sp, a0, s8
                  bge          a3, s9, 175f
157:              auipc        s4, 338647
158:              bge          t0, s7, 177f
                  bge          gp, gp, 160f
160:              slti         s0, s1, -637
                  auipc        s6, 869019
                  add          t6, s8, t4
                  slli         t0, s10, 19
                  add          a3, a1, s2
                  ori          s3, s2, 1172
                  addi         s2, a0, 1476
                  srli         s8, a2, 10
                  srli         s3, ra, 7
                  bgeu         s5, s3, 170f
170:              sltu         t6, s8, a2
                  slti         ra, t6, 1123
                  bne          a2, s11, 177f
                  srli         zero, a3, 30
                  bge          s6, s3, 188f
175:              nop
                  or           a2, s10, ra
177:              slli         t5, gp, 10
                  add          gp, tp, t4
                  bge          a5, s5, 189f
                  srai         a2, s4, 31
                  xor          a7, t3, t5
                  or           s5, t1, a1
                  add          gp, a7, a6
                  addi         s4, a3, 209
                  xori         t0, s3, 1470
                  add          t6, a1, zero
                  addi         s4, s4, -1340
188:              ori          sp, s6, 1126
189:              srai         a3, s0, 22
                  nop
                  sub          s11, s11, a2
                  srli         t6, a4, 29
                  and          a5, s2, a2
                  lui          s10, 8453
                  lui          t2, 105314
                  add          s4, t2, s1
                  bgeu         t6, s7, 202f
                  bne          s7, sp, 216f
                  auipc        a2, 715423
                  srli         s6, t3, 15
                  xor          s6, t1, s7
202:              slti         t3, zero, 1826
                  auipc        s3, 846738
                  bltu         gp, s4, 219f
                  or           ra, t6, a0
                  bgeu         s4, s2, 213f
                  andi         s8, a3, -5
                  bge          s10, a3, 209f
209:              or           sp, t4, t1
                  slti         s11, s7, -1826
                  ori          t4, a1, -1804
                  bgeu         a1, s5, 220f
213:              addi         zero, a1, -1846
                  slt          a4, t6, gp
                  auipc        t6, 613918
216:              slt          sp, t4, s0
                  add          s6, t6, ra
                  addi         s6, s9, -155
219:              ori          gp, s10, -1377
220:              sll          a3, t6, gp
                  slt          s2, a4, zero
                  srai         zero, a6, 23
                  slt          a3, zero, a1
                  bne          t2, t4, 239f
                  slli         t1, s6, 17
                  auipc        s3, 197727
                  blt          a5, a6, 231f
                  bgeu         a3, gp, 244f
                  nop
                  srli         a4, s10, 8
231:              srli         s3, s1, 23
                  sltiu        ra, a6, 1586
                  bgeu         s9, t5, 239f
                  lui          t0, 113679
                  sra          t3, a1, t6
                  beq          tp, a7, 248f
                  srli         s8, t4, 11
                  srl          t3, a5, a2
239:              auipc        s0, 258408
                  srai         zero, s1, 27
                  sub          s10, a3, t4
                  auipc        a5, 922092
                  lui          s10, 1005977
244:              lui          s8, 621123
                  add          t5, s9, s1
                  auipc        s11, 536513
                  sra          a3, s11, ra
248:              srai         a4, s1, 23
                  addi         s0, s0, 1321
                  add          t2, a7, s2
                  add          s3, sp, a0
                  sltu         t0, a5, s2
                  and          s1, s9, t4
                  blt          t1, s10, 272f
                  slti         s9, zero, -927
                  xori         s2, zero, -1719
                  andi         a3, s1, 80
                  nop
                  srli         tp, a3, 0
                  srli         a3, t5, 11
                  sub          s4, s5, t6
                  xori         s1, t5, -859
                  nop
                  addi         tp, zero, 969
                  sll          s0, a2, a6
                  xor          a2, s9, t3
                  sll          s1, t2, t5
                  auipc        s8, 264970
                  xori         a2, s4, 959
                  lui          s10, 64175
                  srl          s6, a2, a7
272:              srli         s10, a2, 12
                  ori          sp, s4, -1675
                  xor          t4, s8, t1
                  blt          s1, t5, 284f
                  addi         s9, a5, 1800
                  slt          a4, s8, s1
                  slli         s8, t0, 8
                  sra          a2, s7, t5
                  srli         gp, s11, 9
                  srai         zero, s5, 10
                  lui          s4, 799587
                  slli         tp, t4, 19
284:              sltiu        s3, a7, 1536
                  bltu         a6, s4, 288f
                  bge          s2, a6, 292f
                  beq          t1, s5, 294f
288:              slt          s1, t6, a4
                  bge          a0, s9, 303f
                  or           t2, s1, s1
                  sll          tp, a7, s10
292:              addi         a3, s5, 782
                  xori         sp, s3, -1759
294:              add          t2, sp, s7
                  srl          s0, ra, ra
                  sub          s0, s3, t6
                  slti         s9, t1, 1098
                  sltu         s1, s10, a1
                  xor          a6, s5, a2
                  sra          s1, s8, a3
                  slti         t0, t0, -854
                  lui          s1, 111634
303:              sll          a5, t0, t1
                  sltu         gp, s0, t4
                  auipc        ra, 354895
                  xor          a4, sp, t3
                  slli         a2, a2, 11
                  sub          t5, a1, t0
                  nop
                  xor          s9, zero, a3
                  nop
                  lui          s10, 136041
                  addi         t2, s10, 903
                  bne          a2, a6, 317f
                  or           s6, s1, s11
                  srai         a7, s0, 24
317:              or           a6, zero, s11
                  ori          s9, s9, 861
                  sltu         t4, a7, a2
                  sltiu        s2, t4, -1513
                  sub          s9, s6, s9
                  add          s6, tp, gp
                  andi         a6, a6, -688
                  srai         t6, ra, 5
                  xor          t5, t2, s1
                  bne          tp, s10, 344f
                  slt          sp, a5, a3
                  sltu         s5, s9, zero
                  addi         s3, ra, -256
                  beq          a5, t4, 339f
                  add          t0, t2, s11
                  blt          a5, s4, 337f
                  xor          t5, t4, zero
                  bgeu         s9, s6, 353f
                  sltiu        t0, t2, 1577
                  xor          s5, t0, t1
337:              andi         t3, a2, 698
                  xori         s8, a6, 1993
339:              add          gp, zero, a6
                  srai         a7, a0, 9
                  addi         a5, s8, 591
                  srl          s9, s7, a0
                  slti         a2, sp, -837
344:              beq          ra, s10, 345f
345:              bgeu         sp, s8, 353f
                  srli         ra, s8, 9
                  addi         tp, t6, 1814
                  slti         s3, s8, -244
                  blt          t0, s10, 354f
                  xor          s10, s5, ra
                  beq          sp, t6, 370f
                  sltiu        a4, zero, -1150
353:              xori         t3, gp, 77
354:              lui          s3, 963100
                  xor          s1, a0, a4
                  andi         s3, a2, 818
                  bgeu         a5, t2, 372f
                  beq          s7, s3, 373f
                  sra          s5, s8, zero
                  xor          t5, a2, a5
                  bge          tp, gp, 362f
362:              srl          t4, a6, s3
                  slti         s4, a2, 1370
                  add          t6, gp, t0
                  bge          ra, s10, 374f
                  slti         s2, a7, 1549
                  beq          s5, s4, 381f
                  ori          t2, s11, -410
                  bne          s0, sp, 372f
370:              xor          a4, s10, t4
                  beq          a7, t2, 374f
372:              andi         a6, t6, 32
373:              bgeu         s1, t0, 391f
374:              slli         s6, a2, 29
                  nop
                  bge          zero, a5, 394f
                  ori          s8, s5, 1523
                  xori         a6, t1, -363
                  la           t0, sub_10
                  and          s1, t5, a3
                  addi         t0, t0, 270
                  srli         s8, t6, 27
                  slt          s9, s2, tp
                  auipc        a4, 284501
                  and          s1, t2, sp
                  slti         t2, a1, -100
                  srli         s9, s4, 23
                  sub          a4, t1, t2
sub_7_j14:        jalr         s4, t0, -270 #jump sub_7 -> sub_10
                  and          s8, t4, s10
                  sub          a2, a2, a3
                  and          s8, a2, a1
                  lui          t3, 493690
381:              nop
                  sra          t4, zero, t5
                  andi         a4, s4, -668
                  ori          a7, s3, -235
                  xori         s2, s9, 796
                  lui          zero, 203622
                  bge          s10, a6, 396f
                  andi         a6, s8, -1749
                  auipc        t4, 18131
                  srli         t4, a0, 25
391:              or           s3, t3, s8
                  sra          a5, s6, a5
                  slli         a5, s6, 13
394:              bltu         tp, a0, 401f
                  auipc        a4, 238842
396:              sltiu        s0, s10, -573
                  addi         a2, s8, -1075
                  add          a4, s10, t4
                  bltu         a2, a4, 403f
                  srai         s4, a7, 22
401:              blt          sp, sp, 415f
                  nop
403:              blt          a6, a3, 413f
                  xor          s3, s0, s4
                  nop
                  or           tp, a6, s4
                  slti         s3, tp, 1593
                  sltiu        a5, t2, -682
                  srli         s1, t6, 1
                  srli         s0, tp, 7
                  sltiu        zero, a2, -1183
                  or           s9, gp, a7
413:              ori          s3, s3, -1479
                  xor          a5, s11, t6
415:              or           ra, s1, t0
                  lui          s4, 850973
                  sltu         s2, zero, zero
                  srli         t3, a4, 0
                  xori         t0, s9, -1973
                  and          s2, tp, a7
                  sll          ra, zero, a5
                  beq          a6, s3, 438f
                  sll          a6, a7, s9
                  lui          s10, 372295
                  lui          a7, 650578
                  sll          s8, s2, s7
                  bgeu         s9, zero, 433f
                  bge          zero, t3, 435f
                  srl          s11, s11, a0
                  sll          gp, zero, s10
                  or           ra, s11, s3
                  bgeu         s6, s10, 438f
433:              and          s0, s1, a2
                  slti         zero, s10, 1298
435:              bltu         ra, s4, 447f
                  auipc        s0, 828728
                  sub          s6, a5, t6
438:              nop
                  srl          t3, s3, s5
                  bltu         t5, a3, 441f
441:              addi         t4, t3, -1138
                  andi         s9, t4, 745
                  auipc        tp, 82357
                  andi         s11, sp, 1059
                  srl          a3, a6, t3
                  srl          t6, a7, s7
447:              nop
                  ori          t5, zero, 297
                  addi         s2, a3, -584
                  auipc        a4, 3579
                  auipc        a7, 900861
                  blt          t6, t3, 457f
                  slli         ra, s11, 17
                  blt          t4, a1, 472f
                  slti         zero, t1, -358
                  bne          a2, s5, 459f
457:              beq          t4, a6, 476f
                  bltu         gp, a3, 462f
459:              bne          a7, t4, 465f
                  bge          tp, s4, 475f
                  nop
462:              sra          s8, s6, s1
                  slt          a6, s5, ra
                  add          s3, t3, s9
465:              sltiu        ra, s11, 2017
                  srli         s6, a1, 11
                  bge          t3, s0, 472f
                  srli         s4, s11, 20
                  bne          t2, gp, 479f
                  bgeu         s2, t3, 484f
                  add          t0, s10, tp
472:              sltu         ra, a6, gp
                  sra          s5, s1, a5
                  srai         t3, a3, 18
475:              sra          a2, a6, s0
476:              sra          t5, a4, t5
                  and          t2, s2, gp
                  beq          s11, s5, 493f
479:              bne          a7, s3, 485f
                  slti         a5, s0, 1648
                  sra          t1, t0, s7
                  xor          s2, t6, s6
                  slli         s4, s7, 24
484:              bne          ra, t3, 485f
485:              beq          s0, s11, 486f
486:              slti         s10, t5, -1707
                  sub          s9, s8, a6
                  beq          s1, a5, 491f
                  nop
                  bge          zero, a1, 493f
491:              sltu         ra, ra, t2
                  slli         t3, a6, 30
493:              slt          t4, t2, t4
                  xori         t6, t6, -235
                  xori         s3, a1, -1773
                  or           s3, a4, s0
                  nop
                  add          t1, t6, ra
                  addi         s5, s11, 614
                  xori         s1, s11, -1855
                  addi         t5, s7, -1147
                  sub          zero, s9, a6
                  bgeu         sp, s7, 506f
                  srl          s11, a6, a3
                  srl          a6, gp, a6
506:              slti         s1, t1, 1885
                  or           a6, tp, t5
                  bgeu         a6, t0, 509f
509:              andi         s6, s1, -1285
                  blt          s4, s2, 522f
                  sub          t3, s8, s5
                  slt          a3, t6, gp
                  bge          gp, a6, 518f
                  sra          s9, a6, s4
                  and          s11, tp, s6
                  xor          sp, s9, s1
                  bge          a3, zero, 531f
518:              beq          zero, sp, 537f
                  sltiu        s0, ra, 545
                  bltu         a5, t1, 538f
                  sltiu        sp, t3, -1030
522:              sltu         t2, a2, t5
                  sra          ra, t6, a1
                  bge          s2, a5, 533f
                  srai         s3, a1, 19
                  xor          a6, t4, t1
                  sub          t1, s2, a0
                  xori         t1, gp, 40
                  blt          s11, s7, 534f
                  auipc        t3, 250979
531:              and          gp, a0, a5
                  bne          a7, t3, 539f
533:              bge          s0, s11, 540f
534:              slti         s5, t0, -100
                  sra          s4, s2, t0
                  andi         gp, a4, 354
537:              bgeu         s11, t3, 555f
538:              sltiu        tp, zero, -237
539:              sub          s3, gp, a6
540:              sltiu        t1, a2, 1381
                  or           a7, t4, a3
                  sub          s2, a2, a3
                  xor          t4, a4, t6
                  bgeu         s3, s6, 553f
                  srli         t1, sp, 16
                  sll          s1, t5, t6
                  srli         gp, sp, 15
                  bltu         s8, gp, 556f
                  xori         a7, a5, 1945
                  nop
                  add          zero, t1, t4
                  sltiu        s11, a0, 896
553:              sub          sp, s0, s7
                  sub          s0, zero, ra
555:              auipc        a6, 391219
556:              lui          a4, 642046
                  lui          t0, 883046
                  auipc        s3, 693526
                  sra          s0, s9, t2
                  srli         s1, ra, 11
                  and          gp, s6, t2
                  blt          s7, zero, 580f
                  xor          t4, a7, t2
                  sra          t5, t0, s11
                  nop
                  slti         s5, zero, -1230
                  bge          zero, zero, 583f
                  addi         s10, s3, 1432
                  add          a6, s5, t6
                  slti         t4, s4, 1893
                  addi         t4, s9, 147
                  srli         s5, zero, 14
                  beq          ra, s4, 582f
                  sra          sp, t6, a5
                  and          zero, s1, s0
                  add          a2, ra, a6
                  xor          s6, a5, s3
                  beq          s6, s2, 594f
                  xor          tp, t3, t5
580:              sltu         t4, a7, t6
                  add          zero, t3, t2
582:              addi         s0, t1, -84
583:              auipc        sp, 749543
                  slt          s10, ra, sp
                  slt          sp, t0, gp
                  addi         s2, t2, -1664
                  and          t4, s11, s11
                  slli         s2, s8, 7
                  or           a4, s9, tp
                  blt          a6, s9, 604f
                  nop
                  and          a2, t5, s7
                  or           a6, s6, zero
594:              addi         s8, a3, 1325
                  auipc        zero, 288740
                  bltu         t5, a3, 599f
                  sll          t4, a3, a0
                  addi         s4, zero, 1141
599:              bltu         gp, s9, 606f
                  andi         ra, s0, 1175
                  slt          s3, s9, a6
                  srl          t6, s8, s7
                  addi         tp, t2, -830
604:              xor          s10, a1, t4
                  bltu         s11, s10, 614f
606:              andi         s1, t3, 1347
                  srli         s1, s10, 14
                  beq          gp, gp, 618f
                  or           s6, tp, s6
                  slt          zero, a2, s2
                  sltu         s0, a1, zero
                  slti         a7, s2, -1093
                  srai         t6, a0, 19
614:              slt          s4, a1, s9
                  beq          s2, s10, 634f
                  srl          s2, s7, s6
                  bgeu         a7, a4, 618f
618:              ori          s10, t3, -34
                  sll          t3, s10, s8
                  bne          s2, s0, 623f
                  blt          s9, s8, 636f
                  bgeu         a7, t3, 631f
623:              and          zero, tp, t5
                  sra          ra, t4, s8
                  sll          t0, a1, s0
                  sltiu        t6, gp, -1499
                  sltiu        s10, t0, 971
                  sra          a6, zero, s3
                  srl          t5, a1, s11
                  lui          s9, 245706
631:              srai         a3, a7, 9
                  auipc        zero, 762433
                  bge          a3, t5, 634f
634:              slti         t6, s1, -1483
                  blt          s4, gp, 647f
636:              addi         gp, a5, 331
                  sll          a4, t0, tp
                  lui          a3, 19708
                  sub          a4, s8, s10
                  slli         s1, a0, 1
                  sltu         s11, tp, a7
                  srl          t6, t1, s0
                  and          s1, s8, s4
                  bge          s6, s0, 650f
                  sra          a3, t1, s2
                  sll          a7, gp, s1
647:              sll          s10, ra, gp
                  addi         t3, a5, -539
                  bgeu         a3, t4, 662f
650:              sra          sp, s8, gp
                  sub          ra, a1, s11
                  sra          s0, t5, a3
                  sltiu        t0, a2, -428
                  andi         ra, a0, -1777
                  la           s5, region_0+150 #start riscv_load_store_rand_instr_stream_4
                  lbu          t6, -3(s5)
                  lb           t4, 8(s5)
                  lh           t0, -6(s5)
                  nop
                  sra          a4, a1, s2
                  srli         t1, a5, 3
                  sb           a3, 1(s5)
                  lbu          t5, 5(s5)
                  sb           a0, 3(s5)
                  lhu          s11, -4(s5)
                  lb           s3, 0(s5)
                  lb           a5, 5(s5)
                  sll          t0, a7, a3
                  srli         s10, zero, 22
                  sltu         s8, a6, t0
                  lbu          s2, 2(s5)
                  lh           s6, -6(s5)
                  or           sp, a1, a3
                  sb           sp, -13(s5)
                  auipc        t5, 890214
                  sra          tp, a2, gp
                  sb           s5, -3(s5)
                  add          s4, a5, a2
                  lbu          sp, -9(s5)
                  sb           t0, -2(s5)
                  lui          s1, 955122
                  lui          ra, 322625
                  addi         gp, t2, 1081
                  nop
                  nop
                  sltiu        s0, s11, 890
                  sb           s10, -3(s5)
                  add          gp, s7, a1
                  addi         a4, a4, -1611
                  slti         tp, t0, -666
                  xori         t1, a2, 543
                  nop
                  lbu          s10, -15(s5)
                  sb           t0, 5(s5)
                  lb           a5, 7(s5)
                  ori          s0, t3, -466
                  sb           a5, 11(s5) #end riscv_load_store_rand_instr_stream_4
                  bgeu         s1, sp, 656f
656:              or           a3, s9, a2
                  bgeu         t5, gp, 662f
                  srai         s0, sp, 10
                  sra          a3, t0, a1
                  lui          a7, 947312
                  slti         zero, a3, 922
662:              sra          ra, s0, s8
                  lw           s4, 4(a0)
                  srl          t4, t4, s10
                  xor          t5, a0, ra
                  addi         a0, a0, 12
                  srli         t1, s0, 30
880:              addi x25, x20, 1
880:              jalr x25, x25, 0
sub_9:            add          sp, t4, gp
                  bgeu         t5, s1, sub_9_stack_p
                  slti         gp, a2, 42
sub_9_stack_p:    addi         a0, a0, -40
                  nop
                  sw           s4, 4(a0)
                  xor          t1, t5, gp
                  la           a5, region_1+1050 #start riscv_load_store_rand_instr_stream_1
                  lb           t6, 11(a5)
                  auipc        a4, 976455
                  lb           t5, -7(a5)
                  srai         s11, s1, 2
                  lb           t5, 5(a5)
                  lbu          s1, -15(a5)
                  addi         gp, a0, 480
                  sra          t4, a2, s8
                  sh           a5, -14(a5)
                  lbu          t0, -9(a5)
                  lb           s4, 3(a5)
                  andi         s11, t6, -251
                  slli         t5, tp, 29
                  lw           gp, -10(a5)
                  srl          t4, s4, s1
                  sub          t3, t6, s5
                  srai         s8, s0, 2
                  slti         t4, s7, -2013
                  lb           s8, 5(a5)
                  lbu          t4, -12(a5)
                  sh           t0, 14(a5)
                  xori         a3, s1, 373
                  add          t6, t1, sp
                  and          a4, ra, t1
                  addi         a3, a7, -1491
                  sub          s11, a5, s9
                  or           t3, t5, a0
                  lbu          zero, -15(a5) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_1+866 #start riscv_load_store_rand_instr_stream_0
                  lb           s8, 20(gp)
                  nop
                  sb           s1, -54(gp)
                  sb           a6, 2(gp)
                  ori          a7, a0, -1192
                  lh           a6, 64(gp)
                  slti         s10, zero, 1664
                  sb           s8, 6(gp)
                  lb           a6, 46(gp)
                  sb           a1, -17(gp)
                  andi         t1, s3, 1713
                  sltu         a5, a5, a1
                  srai         s5, t5, 19
                  srli         s10, s1, 19
                  xor          a7, sp, t4
                  lh           s11, -22(gp)
                  lh           s0, 12(gp)
                  lb           t1, 25(gp)
                  lbu          t4, 31(gp)
                  slti         t3, s6, 1697
                  srai         a4, sp, 2
                  lbu          t0, -52(gp)
                  lb           a4, 59(gp)
                  slli         s3, s2, 23
                  sb           s2, -44(gp) #end riscv_load_store_rand_instr_stream_0
                  bge          s0, s5, 8f
                  srl          a5, t3, gp
                  bgeu         t3, t6, 3f
3:                srl          a3, a5, s3
                  blt          s4, zero, 20f
                  or           s2, s11, a3
                  slli         a2, t3, 5
                  srl          s6, t3, s11
8:                srl          s2, s2, s5
                  sra          t3, s6, s11
                  sub          s11, s10, s8
                  bge          zero, t4, 12f
12:               and          s10, t2, ra
                  auipc        t5, 974070
                  slli         t4, ra, 1
                  add          a4, t0, t0
                  lui          sp, 247740
                  sltu         s6, s5, t3
                  srl          a5, tp, a1
                  sll          t3, s4, s4
20:               sltiu        t1, a3, -62
                  bltu         s4, a2, 40f
                  bne          tp, a2, 31f
                  bne          a7, a1, 35f
                  slli         a2, t6, 12
                  bltu         a5, gp, 31f
                  srl          a3, s10, zero
                  ori          s9, t0, -1364
                  add          s9, s5, s10
                  beq          zero, s7, 35f
                  sltiu        t1, s4, -714
31:               beq          t2, s6, 34f
                  sltiu        gp, a5, -1022
                  sll          t3, s0, s0
34:               beq          s6, gp, 54f
35:               ori          a5, t1, 1077
                  nop
                  andi         t3, s6, 153
                  sltu         tp, t4, gp
                  or           s0, s9, s9
40:               lui          t6, 923891
                  andi         tp, a2, 264
                  nop
                  blt          s11, t5, 51f
                  sltiu        a7, t3, -792
                  addi         s6, a1, 119
                  slti         s10, ra, -1370
                  bge          a6, t5, 62f
                  xor          s1, t4, t3
                  bltu         s4, s3, 66f
                  add          s8, s1, a7
51:               xori         s3, t3, -1432
                  add          s3, a6, s0
                  andi         a7, a1, 1280
54:               bltu         s11, t1, 70f
                  auipc        t2, 643065
                  sra          a4, s10, a7
                  addi         t6, a4, 2011
                  sub          a4, t4, a1
                  beq          t2, s8, 73f
                  srli         a4, t4, 7
                  bltu         s4, a0, 66f
62:               or           sp, s7, s5
                  sll          s2, a1, t0
                  sra          gp, a1, a4
                  beq          tp, s7, 75f
66:               sra          s6, s3, a2
                  srai         s4, t0, 2
                  blt          s10, tp, 76f
                  srai         s4, a7, 17
70:               sub          t3, ra, s3
                  slli         s6, zero, 20
                  bltu         s7, t2, 86f
73:               sll          gp, sp, sp
                  sll          a6, tp, gp
75:               or           s0, t5, s1
76:               srl          s6, tp, sp
                  slti         s8, s2, -1411
                  bne          a1, s2, 79f
79:               srl          s3, s4, s1
                  blt          a6, s2, 98f
                  beq          s7, s2, 85f
                  bne          a2, s8, 102f
                  lui          a2, 34419
                  beq          sp, s4, 98f
85:               slli         sp, s3, 0
86:               sltu         t6, tp, s5
                  nop
                  slti         t5, zero, -402
                  slt          a5, sp, ra
                  slli         ra, s3, 15
                  sltu         t0, s11, ra
                  slli         ra, t0, 19
                  xori         s11, a3, 887
                  slli         a3, s8, 20
                  srl          t3, ra, s0
                  bge          s8, s10, 102f
                  lui          zero, 77467
98:               bge          s0, s4, 114f
                  lui          a6, 735975
                  slt          s10, s2, t0
                  add          a5, a2, a3
102:              sltiu        a6, a1, -1856
                  andi         s6, s5, 1236
                  sltiu        a4, a7, -1532
                  and          a4, s3, s5
                  or           a4, s4, s11
                  nop
                  ori          sp, s3, 771
                  beq          t6, gp, 120f
                  sltu         s9, s8, gp
                  bne          gp, a4, 120f
                  bgeu         s5, s11, 115f
                  blt          gp, s3, 117f
114:              lui          a4, 597142
115:              bgeu         t6, t2, 124f
                  or           s4, s0, s0
117:              addi         s4, s5, 736
                  bgeu         a7, a3, 133f
                  bge          t6, a2, 122f
120:              xori         s4, t1, 719
                  srli         s1, s3, 28
122:              add          zero, tp, s6
                  sra          s2, gp, sp
124:              slti         a5, a7, -793
                  blt          s3, t6, 131f
                  slti         s9, a3, -1961
                  sra          ra, t1, a3
                  auipc        s8, 590451
                  auipc        a7, 757001
                  lui          s10, 85849
131:              srai         s9, s8, 31
                  and          s6, t4, a5
133:              slt          s6, s1, gp
                  beq          s5, a6, 140f
                  srai         a7, t2, 10
                  sra          zero, t1, tp
                  lui          s11, 286015
                  beq          s1, ra, 143f
                  ori          s6, s6, 378
140:              slt          a7, a3, t0
                  srli         t2, s6, 21
                  sll          s10, s3, t5
143:              sub          ra, s2, s5
                  and          gp, s1, a5
                  bgeu         t6, t1, 146f
146:              ori          s0, s0, 1459
                  srl          t1, a5, zero
                  srli         s1, s0, 5
                  bgeu         a3, s7, 150f
150:              nop
                  xori         s4, ra, -438
                  srli         a4, s2, 23
                  or           s1, t3, s2
                  xor          a6, ra, ra
                  or           zero, gp, t3
                  sub          a5, t6, s9
                  srai         a7, a7, 23
                  or           a2, s2, a3
                  auipc        t2, 247687
                  sub          sp, zero, s5
                  slt          a4, s8, s2
                  beq          t6, gp, 182f
                  bne          t1, s10, 181f
                  sltu         a7, a6, a2
                  auipc        t0, 788506
                  srli         s4, a5, 27
                  bgeu         t6, t4, 183f
                  sra          a7, t2, a2
                  nop
                  xor          t2, t6, t3
                  bge          sp, a5, 185f
                  sltu         s10, s7, t2
                  sltiu        s10, s11, 1426
                  xor          gp, ra, a2
                  sltu         t5, a0, s0
                  xor          t4, gp, a2
                  sub          t5, t0, a5
                  xori         s1, zero, -476
                  auipc        a4, 713539
                  or           a3, t1, t4
181:              blt          t0, s2, 190f
182:              sltu         t0, s11, a4
183:              slli         s10, t5, 12
                  and          t5, zero, s3
185:              xori         t0, a0, -1566
                  add          s9, s1, a2
                  nop
                  addi         ra, a7, 984
                  xor          a2, tp, s11
190:              srai         s4, a2, 27
                  ori          s0, s11, -55
                  srai         t5, t4, 10
                  andi         t1, tp, -1961
                  bltu         s8, a3, 202f
                  slli         gp, s9, 6
                  slti         zero, a4, 73
                  or           a2, s6, gp
                  blt          tp, t2, 206f
                  slli         a3, t1, 0
                  bltu         s2, s6, 220f
                  slti         t3, sp, -1966
202:              addi         a7, s11, 1840
                  blt          s6, s4, 222f
                  sra          s1, t6, zero
                  and          a4, t4, s1
206:              ori          a2, s1, -1452
                  srl          t1, s9, a0
                  ori          t2, t2, -1451
                  addi         a5, a6, 547
                  slli         a6, s1, 31
                  bne          a6, tp, 221f
                  bgeu         s2, s2, 223f
                  slli         sp, t3, 2
                  slt          s3, t4, a0
                  xor          t5, s11, s10
                  bne          t6, s0, 233f
                  bge          s7, a7, 218f
218:              and          t6, s5, s2
                  sub          t6, s11, s2
220:              sra          a5, t4, s3
221:              sltu         a4, a0, a3
222:              blt          a7, s9, 236f
223:              lui          tp, 820264
                  srli         tp, a1, 9
                  srai         s4, t1, 10
                  bge          a1, zero, 229f
                  andi         s4, t0, -490
                  slti         t3, t5, -666
229:              bne          a2, ra, 237f
                  slt          sp, a3, t6
                  bne          s6, sp, 243f
                  srl          t5, a0, a5
233:              srli         t0, t6, 22
                  andi         s10, a2, 1122
                  add          sp, s9, s0
236:              slt          s9, tp, s2
237:              blt          t6, s9, 251f
                  andi         s2, gp, 1298
                  sub          s8, ra, a4
                  auipc        t3, 575880
                  bne          a2, s9, 253f
                  beq          a3, gp, 253f
243:              srli         a5, sp, 17
                  sub          s9, t6, a1
                  sltu         t6, a6, s0
                  blt          t2, t5, 252f
                  lui          a5, 616076
                  or           a4, s4, a0
                  slt          s5, s3, ra
                  sra          t6, a4, s3
251:              auipc        s6, 282860
252:              xori         t4, s10, -1339
253:              ori          s9, t2, -870
                  xor          a3, t3, a5
                  lw           s4, 4(a0)
                  nop
                  addi         t0, t5, 471
                  srai         t5, s7, 0
                  addi         a0, a0, 40
                  srai         tp, s11, 11
323:              addi x12, x20, 1
323:              jalr x12, x12, 0
sub_4:            or           s11, s4, a7
                  sltiu        zero, tp, -98
                  addi         a0, a0, -52
                  sub          t2, s11, s1
                  srli         a7, s11, 2
                  xori         s8, a4, 1966
                  sw           s4, 4(a0)
                  and          s2, s2, t0
                  and          t2, s7, s10
                  or           a6, s8, s9
                  slti         s3, t1, 979
                  addi         gp, a5, 1693
                  slli         t6, ra, 11
                  sltiu        s1, t1, -1119
                  or           a7, a1, t6
                  srli         t4, s0, 5
                  slli         s11, t2, 28
                  la           a6, sub_8
                  slt          ra, s11, gp
                  addi         a6, a6, 219
                  addi         sp, a4, -1059
                  srai         a3, a0, 0
                  or           a7, s11, s8
                  sra          s8, a3, s11
sub_4_j8:         jalr         s4, a6, -218 #jump sub_4 -> sub_8
                  xori         s3, s1, -529
                  sub          a7, s4, t5
                  andi         s6, t0, -70
                  srai         sp, s6, 25
                  andi         t0, a6, 1803
                  srli         gp, s10, 11
                  srai         s10, s9, 22
                  add          s5, sp, s10
                  slli         s9, a2, 20
sub_4_j9:         jal          s4, sub_7 #jump sub_4 -> sub_7
                  bge          s2, s4, sub_4_j10 #branch to jump instr
                  sra          a7, a7, s2
                  andi         t6, s6, 71
                  slti         t1, sp, 970
                  sra          s9, s10, s8
                  auipc        s3, 903038
                  addi         a2, tp, -858
sub_4_j10:        jal          s4, sub_7 #jump sub_4 -> sub_7
                  la           s3, sub_5
                  sra          zero, s1, t3
                  xori         a4, a0, 887
                  sltiu        s11, t4, 1814
                  srai         s6, a3, 13
                  slli         s1, a2, 1
                  addi         s3, s3, -39
                  or           s11, tp, s5
                  srai         s2, ra, 31
                  sltiu        s2, s9, 1081
sub_4_j11:        jalr         s4, s3, 40 #jump sub_4 -> sub_5
                  and          a3, t2, a5
                  slti         s6, gp, 1545
                  lui          a2, 159667
                  auipc        s2, 202369
                  sltiu        s3, s2, 321
                  bge          t6, t3, sub_4_j12 #branch to jump instr
                  srai         s8, sp, 27
                  sltiu        a3, s6, -1384
                  or           a7, s7, t3
                  xori         zero, a4, 1926
sub_4_j12:        jal          s4, sub_6 #jump sub_4 -> sub_6
                  la           sp, region_1+738 #start riscv_load_store_rand_instr_stream_0
                  lb           a5, 1(sp)
                  sltiu        s9, s4, 1540
                  lh           a4, 62(sp)
                  andi         s2, s2, 1412
                  and          s10, s0, gp
                  lb           s1, -40(sp)
                  lb           t6, -28(sp)
                  sb           t0, 43(sp)
                  lbu          a4, -62(sp)
                  lbu          gp, -43(sp)
                  slt          s10, s11, a7
                  sb           s1, 64(sp)
                  andi         s5, t5, -1616
                  lb           s0, -51(sp)
                  add          s11, t0, a2
                  lh           s6, -20(sp)
                  lhu          s6, -50(sp)
                  slli         t6, t3, 9
                  auipc        tp, 293041
                  sh           a2, -46(sp)
                  nop
                  lbu          s9, 51(sp)
                  srli         a3, a3, 9
                  srai         t0, s6, 12
                  sb           t6, 46(sp)
                  sltu         t2, a3, s3
                  srli         s5, s7, 26
                  sh           tp, -64(sp)
                  slti         t5, s10, 1919
                  lb           t0, 47(sp)
                  sltu         a2, t5, a1
                  xori         s4, s9, 1920
                  sub          a4, s2, s1
                  and          t4, s9, t2
                  andi         s5, t4, 768
                  lhu          s3, -62(sp)
                  sltiu        s4, s11, 1658
                  srli         a7, s1, 1
                  and          a3, s4, sp
                  srli         s9, t4, 20
                  or           t1, sp, tp
                  lb           ra, 49(sp)
                  or           s8, t4, a5
                  nop
                  ori          t1, s2, -1659
                  srai         t2, tp, 3
                  sra          s11, s9, gp
                  lbu          gp, -57(sp)
                  sltu         s4, t0, a0
                  sh           tp, 4(sp)
                  sb           s8, 40(sp) #end riscv_load_store_rand_instr_stream_0
                  add          zero, s2, s5
                  bltu         zero, t6, 16f
                  bltu         t1, t5, 13f
                  sub          s1, gp, t4
                  srai         t2, s7, 16
                  srl          a6, s4, a4
                  srai         tp, s3, 1
                  lui          a3, 528575
                  sra          a2, s8, t2
                  nop
                  ori          a3, t3, -1937
                  blt          a2, zero, 17f
                  beq          s9, a5, 25f
13:               xor          gp, t1, zero
                  xori         s10, s2, -692
                  or           a2, s0, a6
16:               slt          a5, s8, s2
17:               lui          s9, 318435
                  addi         s6, t0, 323
                  add          t0, s4, a0
                  srai         a3, s0, 0
                  or           s8, tp, t3
                  and          t1, t0, zero
                  sltu         t4, t1, s7
                  bgeu         a2, sp, 37f
25:               and          s10, ra, s2
                  slt          a2, s2, a1
                  slt          a4, a5, s10
                  beq          s0, t1, 30f
                  addi         s1, t4, 2040
30:               andi         s4, s8, -22
                  add          s6, gp, t1
                  ori          tp, s7, -227
                  sub          s1, a1, s8
                  xori         s3, zero, 1801
                  bgeu         s4, a3, 40f
                  bge          a0, s6, 47f
37:               bgeu         s10, s1, 55f
                  slti         zero, t4, -509
                  slti         t3, t6, -1283
40:               sltu         t5, s7, s8
                  slt          s1, s0, sp
                  srl          s4, a5, ra
                  bgeu         s5, s5, 62f
                  bgeu         s3, s1, 50f
                  blt          s1, s3, 48f
                  sltu         s3, t5, s2
47:               sra          t5, a7, sp
48:               sra          tp, t3, s9
                  bltu         s3, s8, 51f
50:               sra          a7, t4, a1
51:               sll          ra, a0, s1
                  slt          s8, s4, a6
                  bge          s7, s0, 61f
                  xor          zero, s2, s3
55:               bge          s2, s0, 75f
                  sra          s9, sp, s5
                  la           t3, sub_9
                  sra          s4, a2, t6
                  xori         s0, gp, -577
                  ori          a5, zero, -1032
                  or           tp, a4, s0
                  srl          s9, s0, s3
                  add          s8, a3, s0
                  addi         t3, t3, -215
                  or           t2, zero, s11
sub_4_j7:         jalr         s4, t3, 215 #jump sub_4 -> sub_9
                  addi         s9, s7, -373
                  srl          t5, t5, s9
                  and          a7, a0, t5
                  ori          s11, s3, -413
                  addi         s3, s10, 1396
61:               nop
62:               sltiu        s6, a0, -1387
                  bgeu         s5, t2, 75f
                  beq          ra, t1, 78f
                  blt          t6, tp, 71f
                  srl          s10, zero, s11
                  slli         a5, s10, 21
                  xori         tp, t2, 848
                  ori          t4, s9, 1412
                  xori         s4, s6, -526
71:               sltiu        tp, a1, 1530
                  slli         t2, s7, 27
                  slt          t5, s6, ra
                  bne          t5, s0, 91f
75:               slt          s0, ra, a4
                  srl          s6, t6, a6
                  bgeu         a6, t4, 87f
78:               sra          gp, s11, s6
                  srai         a2, a3, 11
                  slti         s10, a6, -1725
                  beq          s10, s4, 92f
                  sltu         ra, s1, a5
                  bgeu         sp, sp, 93f
                  beq          s6, ra, 87f
                  slt          t2, a1, s3
                  slti         a7, gp, -1372
87:               srl          t6, s11, s6
                  sltiu        t6, s6, 1036
                  bltu         tp, a2, 105f
                  add          s5, t5, t6
91:               andi         a6, a1, -1274
92:               sll          t2, t4, t6
93:               beq          s8, a5, 99f
                  sra          gp, s1, t5
                  bgeu         s3, t0, 104f
                  xori         t5, s1, -794
                  andi         t3, t0, -947
                  slti         sp, s3, 1001
99:               sltu         t2, s0, s6
                  bgeu         t2, s11, 109f
                  xori         t2, s9, -75
                  addi         t5, a6, 1636
                  nop
104:              and          t2, s5, t6
105:              bne          a3, t3, 116f
                  sltiu        s2, s5, 1770
                  xor          s0, s2, a5
                  bgeu         sp, t5, 123f
109:              bne          s3, a0, 127f
                  slt          t3, zero, zero
                  nop
                  auipc        s9, 751493
                  lui          t5, 207253
                  slti         s0, t3, 1742
                  bgeu         ra, s8, 126f
116:              sub          s5, a2, t6
                  beq          ra, tp, 125f
                  auipc        t6, 537009
                  srai         s8, t3, 17
                  sll          s5, s0, a2
                  beq          t5, s7, 137f
                  blt          a4, s2, 134f
123:              lui          zero, 222563
                  sra          t6, a1, sp
125:              srl          s0, s10, zero
126:              slti         ra, a4, 1818
127:              auipc        s9, 470308
                  auipc        s8, 455210
                  sub          s5, t3, gp
                  or           t4, s2, t4
                  slt          t1, s2, s11
                  srai         s4, t1, 29
                  auipc        gp, 501715
134:              bne          s9, a4, 151f
                  slli         s11, zero, 5
                  slt          s10, t1, s0
137:              srl          s4, t5, t4
                  andi         s5, s2, 1440
                  bge          s1, ra, 157f
                  bne          a4, s8, 155f
                  sltu         a7, s11, t3
                  xori         s9, t5, -1090
                  ori          t1, s4, -1076
                  add          s6, s4, s2
                  sub          s3, s11, a0
                  auipc        t1, 290538
                  blt          a5, ra, 149f
                  slt          t6, t0, a4
149:              sub          tp, t2, t1
                  sltiu        gp, tp, -204
151:              xor          s5, a6, s3
                  bge          s3, t1, 162f
                  addi         t2, s2, -996
                  bltu         a2, s0, 159f
155:              slli         zero, t1, 9
                  slt          s1, s2, zero
157:              sub          a5, a3, ra
                  bgeu         a6, t4, 169f
159:              sra          a6, t4, s0
                  beq          ra, a3, 171f
                  sll          zero, gp, s5
162:              xor          a5, s1, a3
                  bne          t2, t6, 178f
                  bne          t6, s0, 167f
                  xor          t4, sp, a1
                  blt          t6, s1, 177f
167:              ori          a2, a6, 394
                  srai         s10, sp, 30
169:              slt          s10, t3, t0
                  or           s9, t2, a4
171:              slli         zero, t2, 21
                  srai         sp, gp, 4
                  xori         s4, t5, -1952
                  lui          s5, 323071
                  slti         a5, s4, 1883
                  bgeu         sp, t3, 189f
177:              xor          s1, tp, s6
178:              blt          t3, t0, 181f
                  slli         s2, a4, 28
                  slli         a3, a1, 14
181:              xori         s4, a1, -781
                  sltu         tp, s8, t3
                  andi         s1, a3, 87
                  sub          zero, t5, s5
                  ori          s11, zero, -1571
                  srli         s10, a7, 3
                  sub          s8, a3, a4
                  and          s3, s7, sp
189:              srl          a5, a5, s8
                  slti         t5, a4, 1849
                  sltu         a7, sp, s8
                  bge          ra, a0, 198f
                  bgeu         s11, tp, 199f
                  sll          a6, t1, a1
                  sub          s8, a6, s4
                  slli         s10, s0, 17
                  srli         s2, s5, 20
198:              slti         t5, a5, -1056
199:              bgeu         s10, sp, 201f
                  addi         s8, a2, 145
201:              sub          t0, t2, s8
                  sub          a3, s4, t4
                  nop
                  bltu         a0, a1, 209f
                  or           s0, s10, a5
                  andi         a4, t6, 317
                  bltu         a4, s5, 209f
                  srl          gp, t4, t6
209:              nop
                  lw           s4, 4(a0)
                  sltu         s5, t1, a5
                  addi         a0, a0, 52
                  add          s3, s5, a3
                  sltu         s3, tp, s1
                  auipc        s6, 189631
                  andi         t2, s6, -855
345:              addi x17, x20, 1
345:              jalr x17, x17, 0
sub_6:            addi         t4, s10, -1168
                  bge          s0, s8, sub_6_stack_p
                  add          a5, tp, a5
                  add          ra, s0, a7
                  and          s6, s4, a5
sub_6_stack_p:    addi         a0, a0, -20
                  auipc        a3, 1032215
                  slti         s0, s4, 1799
                  sw           s4, 4(a0)
                  slti         a5, tp, -922
                  srai         t2, s0, 29
                  xor          sp, a0, s1
                  la           sp, region_1+852 #start riscv_load_store_rand_instr_stream_2
                  lh           a3, 10(sp)
                  sb           s6, 10(sp)
                  lb           t1, -5(sp)
                  sw           s4, -12(sp)
                  lhu          s0, -38(sp)
                  andi         s8, t2, -1777
                  sw           s9, -16(sp)
                  slt          ra, s7, a1
                  lb           a4, 6(sp)
                  srai         t3, s5, 18
                  sb           s5, -5(sp)
                  nop
                  sb           s1, -48(sp)
                  sb           s6, -31(sp)
                  sb           s1, 60(sp)
                  add          zero, s2, sp
                  andi         s6, a1, -783
                  lbu          tp, -3(sp)
                  lb           t1, 55(sp)
                  sll          t2, t6, a6
                  sltu         s4, a1, sp
                  lbu          a4, 41(sp)
                  sh           ra, 62(sp)
                  sb           s2, -8(sp)
                  sb           t3, -15(sp)
                  sltu         tp, s6, s10
                  lbu          a3, 17(sp)
                  sb           gp, -29(sp)
                  lb           gp, 61(sp)
                  lb           zero, 59(sp)
                  add          s0, t4, a3
                  lbu          gp, 1(sp)
                  sb           a2, -7(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1560 #start riscv_load_store_rand_instr_stream_0
                  sh           t6, -16(sp)
                  lbu          a4, 3(sp)
                  addi         zero, gp, 638
                  lbu          tp, -3(sp)
                  xori         a2, s0, -1135
                  sra          a5, s4, a6
                  lb           s6, 3(sp)
                  sb           a0, -10(sp)
                  lb           a6, 12(sp)
                  nop
                  add          s6, a7, s3
                  lb           a6, -5(sp)
                  sltiu        s8, ra, 1631
                  sb           zero, 5(sp)
                  sltu         t4, gp, gp
                  nop
                  ori          t6, s7, 730
                  xor          s2, a4, s11
                  xor          a4, a3, s11
                  lb           tp, 1(sp)
                  andi         ra, s2, -739
                  sb           a2, 5(sp)
                  nop
                  lbu          s9, 13(sp)
                  xor          s10, s11, t6
                  slli         s0, zero, 3
                  lbu          t5, -10(sp)
                  lb           s11, -10(sp)
                  lhu          s4, 6(sp)
                  sb           s0, 14(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t6, region_0+707 #start riscv_load_store_rand_instr_stream_3
                  slli         s1, s3, 16
                  lui          ra, 72787
                  slli         s3, zero, 18
                  slli         s3, s3, 12
                  lw           s2, 225(t6)
                  nop
                  sh           a1, -237(t6)
                  xori         ra, ra, -1721
                  lh           s4, -35(t6)
                  sw           sp, 201(t6)
                  slti         s6, s3, 1816
                  lui          s2, 128681
                  lbu          s10, -188(t6)
                  srli         a7, s10, 16
                  sb           a6, 218(t6)
                  lbu          a5, -74(t6)
                  slli         a7, t6, 25
                  addi         a2, s5, 1716
                  lb           a7, -72(t6)
                  lw           s5, -51(t6)
                  auipc        s5, 1005129
                  lbu          a6, -122(t6)
                  xor          s2, ra, s2
                  lb           tp, 190(t6)
                  sltiu        a4, a0, 161
                  lbu          s11, -14(t6)
                  auipc        s1, 134340
                  sltiu        t3, s9, 1823
                  slt          t4, t3, s0
                  sb           a1, -118(t6)
                  lb           s11, 79(t6)
                  lbu          s11, -38(t6)
                  sb           s0, 96(t6)
                  lb           s6, 118(t6)
                  ori          ra, t4, 123
                  sh           t3, 117(t6)
                  lui          t4, 648328
                  sb           a6, -165(t6)
                  slti         s9, t0, 1798
                  lbu          a4, 219(t6)
                  lhu          a5, -29(t6)
                  lhu          ra, -23(t6)
                  lb           s4, -252(t6)
                  nop
                  lb           t1, -104(t6)
                  sb           t4, 30(t6)
                  lbu          t4, 63(t6) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+461 #start riscv_load_store_rand_instr_stream_4
                  lbu          a3, -12(sp)
                  sh           a3, 63(sp)
                  xor          ra, sp, a6
                  lh           s2, -19(sp)
                  lhu          s10, -53(sp)
                  ori          t4, a1, -794
                  sltiu        s9, t0, 1461
                  lb           a7, -46(sp)
                  lbu          s10, -42(sp)
                  ori          s1, zero, 538
                  sb           t4, -23(sp)
                  lb           s5, -8(sp)
                  lb           s5, 33(sp)
                  lui          a7, 425658
                  sltiu        a4, a2, 612
                  lb           ra, 25(sp)
                  lb           t1, 3(sp)
                  sb           a2, 52(sp)
                  lbu          t3, -42(sp)
                  ori          s5, s6, 2025
                  lbu          t0, 27(sp)
                  slti         s3, s11, -1337
                  lbu          t2, 1(sp)
                  lb           s6, 40(sp)
                  slli         s10, s2, 31
                  lb           s1, 2(sp)
                  auipc        a6, 853447
                  ori          s6, s10, -95
                  lh           a3, 55(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1158 #start riscv_load_store_rand_instr_stream_5
                  sltiu        zero, sp, 863
                  sb           a0, -175(sp)
                  and          t0, s9, t2
                  lb           a6, 284(sp)
                  add          ra, a4, ra
                  srli         a5, s2, 11
                  auipc        s4, 405350
                  srl          zero, s1, ra
                  sh           s9, 838(sp)
                  xor          t3, a6, ra
                  nop
                  lhu          t6, -880(sp)
                  and          s0, sp, t3
                  lb           s2, 313(sp)
                  sll          s6, a3, a2
                  slli         s11, t1, 6
                  nop
                  lb           t3, 647(sp)
                  add          t3, s4, s4
                  slli         s4, a4, 1
                  addi         t5, t1, -767
                  ori          s8, t0, -492
                  lb           s8, 227(sp)
                  slt          t5, s3, a6
                  lh           t4, -1054(sp)
                  sb           s11, -521(sp)
                  lbu          t0, -1024(sp)
                  lw           a3, 234(sp)
                  srli         t4, t4, 23
                  ori          zero, s0, 1338
                  sb           t1, 665(sp)
                  sltiu        s3, zero, 1773
                  lb           s2, 686(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1768 #start riscv_load_store_rand_instr_stream_6
                  srai         a6, a4, 14
                  lh           t1, -158(sp)
                  lhu          tp, 192(sp)
                  sb           t6, -163(sp)
                  sltu         s4, tp, t3
                  lb           s9, 176(sp)
                  sll          s11, s0, s4
                  slt          t2, s9, s2
                  and          ra, t0, sp
                  sb           a7, -149(sp)
                  lbu          s10, 107(sp)
                  lhu          s3, 152(sp)
                  slti         t6, zero, 806
                  slt          s2, a6, zero
                  lb           s5, -212(sp)
                  sra          s10, s0, a5
                  srl          s6, ra, s0
                  lh           s1, 22(sp)
                  add          s3, t2, t0
                  lbu          ra, -90(sp)
                  sb           t3, -249(sp)
                  lbu          s10, -64(sp)
                  lbu          tp, 142(sp)
                  sra          gp, s2, a2
                  addi         a7, s0, -298
                  xori         tp, t4, 1498
                  lb           t1, 82(sp)
                  sb           t2, -171(sp)
                  lbu          s10, 83(sp)
                  sb           a3, -56(sp)
                  lui          a3, 57109
                  sll          s3, a3, s9
                  lbu          s5, -251(sp)
                  srai         t3, t3, 4
                  addi         t6, a1, 1252
                  lbu          s1, -141(sp)
                  nop
                  lb           s1, 43(sp)
                  srai         t6, sp, 9
                  lb           s9, 205(sp)
                  lui          s11, 30524
                  lh           t6, -120(sp)
                  lb           t3, -57(sp)
                  sltiu        a5, s9, 1320
                  lbu          ra, -179(sp) #end riscv_load_store_rand_instr_stream_6
                  slli         zero, gp, 9
                  sub          s1, s6, t2
                  srl          s11, s0, s3
                  slt          s11, a6, s9
                  sltu         s1, zero, s11
                  sll          s8, s1, a0
                  slt          a5, a5, t0
                  lui          a2, 704875
                  bgeu         a2, a3, 18f
                  slt          s1, a6, s2
                  srl          a3, s4, t5
                  slt          t3, a1, s0
                  ori          s5, a5, -1485
                  sra          a6, s0, a7
                  slt          t4, s3, a5
                  bge          s1, a3, 33f
                  sub          s4, tp, a0
                  or           s3, s6, tp
18:               xor          t1, sp, a3
                  beq          t1, s11, 31f
                  sub          a7, s5, s6
                  slti         t4, a6, 1530
                  sub          t2, t1, t2
                  srl          s6, s9, zero
                  add          gp, s6, s11
                  and          ra, sp, a0
                  xor          sp, t4, a1
                  srl          a5, t6, t6
                  lui          sp, 244306
                  slti         s10, t0, 1081
                  sltu         t6, s11, s10
31:               lui          t6, 833804
                  ori          s5, s3, -777
33:               xori         s6, a2, 1062
                  srli         tp, s8, 10
                  andi         a4, a2, -884
                  or           s10, a7, t0
                  blt          t4, a0, 54f
                  lui          a2, 1021292
                  slt          s0, a6, s1
                  add          s8, t6, t4
                  sll          t4, t2, tp
                  blt          s0, t1, 49f
                  bne          s2, s3, 44f
44:               sltu         tp, t3, a0
                  bgeu         sp, gp, 47f
                  or           s9, t6, s1
47:               bltu         t2, t3, 58f
                  bge          s4, a5, 56f
49:               andi         sp, s6, -1808
                  and          s2, t4, a6
                  sltu         t3, a4, s11
                  andi         a7, ra, 299
                  sltiu        s10, s10, 750
54:               sll          t3, sp, a4
                  bltu         s8, a1, 58f
56:               slt          a6, zero, t4
                  bge          sp, a1, 76f
58:               xor          t1, t1, t1
                  andi         ra, s10, 1940
                  auipc        s6, 929727
                  add          zero, a2, tp
                  sra          s11, gp, gp
                  slli         t5, t4, 12
                  bge          t6, t2, 76f
                  srl          s6, s3, s1
                  bne          a4, s8, 78f
                  and          ra, s3, t2
                  slt          a4, tp, t2
                  sltiu        a6, s1, 1751
                  or           t0, t3, s0
                  ori          s3, t5, -773
                  andi         tp, s6, 1590
                  slli         a7, zero, 21
                  slt          s6, a2, s1
                  sltiu        a2, s4, -1646
76:               bgeu         t0, s5, 82f
                  sltu         s6, t2, tp
78:               lui          t4, 754092
                  sub          t6, ra, s3
                  andi         tp, s7, 923
                  srli         s1, t6, 11
82:               lui          t5, 657028
                  andi         s4, t1, -1555
                  bne          s0, t5, 91f
                  sltu         s1, a7, t0
                  bltu         a0, a2, 88f
                  sltu         a2, t1, a1
88:               and          s6, t4, s5
                  bgeu         a5, sp, 109f
                  srai         s8, t1, 13
91:               slli         zero, s8, 6
                  srl          s2, a3, a0
                  nop
                  and          s1, s11, zero
                  slt          s2, s11, zero
                  bne          s8, t4, 105f
                  addi         s10, sp, 1315
                  xor          ra, s11, a4
                  or           s3, a3, s0
                  sub          s1, s8, t4
                  srai         s4, s6, 26
                  sll          s9, s10, tp
                  sra          tp, s4, s8
                  slli         s1, s8, 13
105:              ori          a6, s9, 1567
                  sub          s9, s3, t3
                  or           gp, a0, s3
                  and          t5, a7, zero
109:              andi         t4, a0, 1739
                  or           t5, zero, s9
                  lui          gp, 960485
                  bltu         a3, a7, 114f
                  nop
114:              srai         sp, t3, 22
                  slti         t1, zero, 101
                  addi         a2, s11, -1137
                  sll          t2, sp, a0
                  sra          s4, s6, s11
                  bltu         a2, s7, 125f
                  sra          t0, ra, a2
                  beq          t5, s3, 139f
                  andi         s2, a2, -251
                  xori         t1, a5, 1587
                  lui          t4, 57919
125:              xor          s4, t0, t3
                  and          t1, s2, s3
                  srai         a6, zero, 31
                  slt          s3, a0, sp
                  srli         t4, s3, 4
                  add          tp, t4, s1
                  slli         a2, sp, 11
                  xori         a7, tp, 1102
                  srli         s3, t3, 5
                  bltu         a5, s2, 152f
                  nop
                  beq          sp, s8, 137f
137:              slli         s6, sp, 8
                  sll          a7, s9, s0
139:              nop
                  blt          a1, s5, 155f
                  sra          a7, t3, t5
                  auipc        gp, 990524
                  bne          gp, sp, 159f
                  xori         t4, s1, 158
                  bge          t2, t3, 160f
                  sll          ra, t1, a3
                  sll          s0, gp, s6
                  srli         s4, a3, 25
                  srli         ra, t1, 4
                  add          a6, s10, t6
                  blt          a4, s3, 161f
152:              sltiu        s9, s0, -1738
                  sltiu        a6, a3, 305
                  bne          t0, a1, 163f
155:              nop
                  bge          t0, a4, 162f
                  beq          t2, s11, 163f
                  beq          t3, s8, 166f
159:              and          s4, s2, s9
160:              xor          t2, t4, s7
161:              bgeu         gp, t1, 168f
162:              ori          s3, ra, 1881
163:              and          gp, t6, a2
                  xori         s6, t5, 1533
                  sll          t0, gp, s1
166:              bgeu         a5, ra, 183f
                  xor          t2, s8, s7
168:              add          a5, s10, t0
                  beq          s11, a0, 178f
                  nop
                  sra          t4, s5, tp
                  nop
                  or           a7, s7, s3
                  srli         t4, gp, 3
                  sub          s6, zero, s10
                  srai         t2, ra, 20
                  or           s6, s3, t5
178:              xori         t6, zero, -623
                  bge          tp, s11, 185f
                  xor          t4, t6, s3
                  xori         t3, t4, -964
                  sltiu        t3, s2, -963
183:              blt          s3, gp, 192f
                  beq          a2, s5, 196f
185:              bne          t2, t5, 200f
                  or           a6, s7, a2
                  slti         s6, t3, 1970
                  bne          s5, s0, 189f
189:              add          a4, t5, a3
                  bgeu         a5, a5, 208f
                  bge          sp, tp, 211f
192:              nop
                  xori         t6, s7, 303
                  slli         s5, s7, 6
                  sub          a5, gp, t2
196:              or           t3, t0, a6
                  or           s1, s11, tp
                  srli         t5, s1, 24
                  beq          s10, s7, 205f
200:              sub          s4, s8, a0
                  sltiu        t0, a0, -1095
                  sll          a6, s1, s2
                  add          tp, s10, sp
                  lui          t1, 122631
205:              srli         s0, s6, 11
                  sltiu        a4, ra, -1412
                  beq          a6, a2, 209f
208:              bgeu         t4, t3, 226f
209:              add          s4, t0, zero
                  ori          t4, s7, -1113
211:              add          zero, t0, ra
                  addi         sp, a7, -1998
                  or           a4, t1, s6
                  sub          a4, t6, a5
                  slti         s5, s6, 1228
                  sll          t5, a7, a4
                  bne          s5, s6, 227f
                  sra          t3, a5, tp
                  sll          s1, t1, t6
                  andi         t0, t3, 848
                  ori          tp, a2, -388
                  add          t6, t5, a2
                  srli         a5, t4, 9
                  xori         gp, zero, 1157
                  srli         s2, a3, 8
226:              sub          a4, t3, s4
227:              andi         t3, tp, 1174
                  auipc        s3, 770217
                  addi         s4, a1, 749
                  slt          t5, t5, ra
                  sll          t5, a2, zero
                  lui          s3, 663583
                  bltu         a7, s11, 248f
                  nop
                  addi         s6, a5, 775
                  addi         s11, s2, -787
                  nop
                  srai         s4, s0, 14
                  auipc        s3, 945697
                  andi         t2, t3, 421
                  nop
                  or           s11, t3, s11
                  srai         t5, s9, 11
                  bne          t1, sp, 255f
                  auipc        s1, 182625
                  bgeu         t2, a7, 264f
                  bge          zero, a3, 263f
248:              sll          s6, s2, t1
                  slt          zero, a6, s2
                  and          tp, s0, t3
                  sltu         a2, a5, s7
                  auipc        tp, 324356
                  sltiu        s4, a2, -2028
                  slli         a4, a3, 14
255:              srli         sp, a7, 3
                  sll          s3, zero, s1
                  xor          a6, s9, a6
                  slti         tp, t5, -1972
                  add          s5, t3, s0
                  bgeu         s4, a4, 272f
                  andi         s9, s10, 1886
                  add          s4, ra, s7
263:              lui          s9, 490490
264:              sra          s4, a3, a5
                  ori          t5, t0, -1631
                  sltu         a2, a7, t5
                  xor          s2, s5, t3
                  bne          a4, s2, 270f
                  bgeu         t4, gp, 279f
270:              ori          gp, t6, 114
                  xor          gp, s8, t6
272:              xor          t4, a7, s9
                  bgeu         a6, s6, 279f
                  add          a3, zero, sp
                  andi         sp, s7, 1073
                  sltu         s6, a6, t0
                  srli         t0, s9, 7
                  slt          a7, a3, s4
279:              srl          s10, s2, s2
                  srai         s9, t6, 3
                  nop
                  sltiu        s0, s10, -1758
                  add          s3, s9, t2
                  xori         t3, t4, -1708
                  bge          s3, ra, 292f
                  bgeu         s2, s9, 298f
                  srai         a6, a3, 1
                  auipc        a6, 94541
                  sll          t2, a2, t3
                  sll          a4, t2, s1
                  and          a3, s11, a0
292:              andi         s2, t5, 646
                  slt          a2, s4, a7
                  bltu         a1, s0, 295f
295:              srai         s11, t2, 11
                  blt          a3, s0, 298f
                  beq          a2, t1, 316f
298:              or           a2, s0, t5
                  lui          s10, 735098
                  sltu         a3, s9, t5
                  nop
                  xor          t5, s9, a4
                  andi         s1, s7, 516
                  or           s2, sp, s3
                  beq          s11, ra, 308f
                  sltu         ra, a3, t4
                  lui          s9, 78258
308:              auipc        t4, 112144
                  lui          s2, 316227
                  slt          s5, s1, a1
                  auipc        a6, 765985
                  beq          s0, sp, 318f
                  addi         a5, sp, 1287
                  sltu         s11, s0, t6
                  andi         t6, sp, -1686
316:              sltiu        s1, a2, 167
                  la           sp, region_1+188 #start riscv_load_store_rand_instr_stream_1
                  srl          gp, a7, s2
                  lb           t2, 792(sp)
                  lbu          zero, 1080(sp)
                  lbu          a7, 960(sp)
                  lbu          t1, 891(sp)
                  andi         s8, s5, -1971
                  lb           s8, 1718(sp)
                  sltu         s10, s10, s7
                  lb           a7, 37(sp)
                  sb           t6, 27(sp)
                  xor          t3, gp, tp
                  xori         s11, ra, 1252
                  sb           ra, 1043(sp)
                  sh           a1, 1498(sp)
                  lb           a6, 409(sp)
                  slli         t1, t0, 19
                  lbu          ra, 1233(sp)
                  add          gp, sp, t5
                  nop
                  slli         s8, a1, 31
                  lhu          zero, 84(sp)
                  sb           t1, 953(sp)
                  sra          s2, sp, s10
                  slt          s3, t3, tp
                  srli         s9, t4, 3
                  sb           t3, 601(sp)
                  lbu          s2, 340(sp)
                  lhu          t6, -160(sp)
                  xori         a4, t1, -350
                  lbu          s5, 673(sp)
                  nop
                  lhu          a7, 66(sp)
                  sll          t4, t0, ra
                  srl          s11, s5, s11
                  lb           s9, 776(sp)
                  sb           s3, 1801(sp)
                  lbu          t4, 403(sp)
                  and          s5, tp, t5
                  sb           t5, 79(sp)
                  srai         a6, a2, 4
                  slli         t6, t2, 18
                  addi         zero, s8, 1902
                  lb           s2, 98(sp)
                  lhu          tp, 162(sp)
                  sb           t0, 1497(sp)
                  lh           ra, 1238(sp)
                  auipc        t3, 423908
                  sh           s6, 1066(sp)
                  slti         t0, s0, 889
                  lhu          t3, 714(sp)
                  sb           s11, 817(sp)
                  sltu         a3, a2, s3
                  or           s3, s3, t3
                  srli         s3, a6, 14
                  sh           t2, 1534(sp) #end riscv_load_store_rand_instr_stream_1
                  andi         s8, s8, 1147
318:              add          t3, a1, s6
                  slt          s4, s0, s7
                  xori         ra, t3, 1621
                  srli         s8, sp, 5
                  sra          a2, s2, s5
                  auipc        a7, 473266
                  slt          s1, ra, a0
                  sub          s6, a1, s9
                  nop
                  slt          a5, t5, tp
                  slti         zero, s0, 1170
                  srli         a4, t5, 10
                  bgeu         t1, t5, 339f
                  nop
                  sltu         t4, t4, zero
                  lui          t5, 988822
                  srl          s1, a1, a1
                  srli         a3, ra, 3
                  or           s1, t4, s1
                  slti         s6, s8, 598
                  slti         tp, a6, -1647
339:              add          s11, s3, gp
                  slti         t0, a2, -1281
                  srl          a3, t5, a6
                  lui          a7, 451237
                  bne          s11, ra, 363f
                  srai         a6, t6, 0
                  or           t5, s9, zero
                  or           s11, s9, t0
                  and          t3, a6, t3
                  or           s10, sp, gp
                  nop
                  sltu         t5, s9, t2
                  or           s0, t5, s0
                  or           s5, s3, s10
                  or           a5, t5, t5
                  add          t1, t3, t6
                  addi         a3, t1, 1974
                  sltiu        s4, a0, -101
                  slt          t0, s7, s7
                  blt          tp, s9, 364f
                  xori         sp, s10, -1947
                  addi         t2, t3, -570
                  blt          s4, ra, 362f
362:              and          t4, t4, s11
363:              srai         a2, s2, 16
364:              andi         s8, s3, -1805
                  or           t5, a0, a7
                  srli         t5, gp, 1
                  xori         s4, s10, 464
                  xor          s10, zero, s5
                  sra          a7, s3, a5
                  srli         t6, s1, 23
                  blt          ra, t0, 389f
                  bne          t2, t3, 378f
                  or           a5, tp, a2
                  slti         s9, s0, -1028
                  xori         t1, s3, 1405
                  beq          s4, t3, 388f
                  blt          ra, s1, 384f
378:              lui          t1, 527958
                  xori         s3, s9, -960
                  sub          t2, s6, a3
                  or           s9, s8, a2
                  sub          t5, t1, ra
                  slti         s10, t0, 700
384:              and          s3, s1, a6
                  sltiu        a4, a4, -1063
                  slli         a3, ra, 16
                  ori          t2, s6, 1316
388:              srl          s1, sp, s2
389:              sltiu        s1, t1, -1941
                  nop
                  bltu         s8, a0, 406f
                  lui          sp, 1048339
                  srl          t6, s1, ra
                  sltu         a4, a2, t0
                  auipc        gp, 882317
                  or           t3, a2, s11
                  blt          t2, ra, 400f
                  sltiu        s4, t3, 363
                  srli         t3, s0, 16
400:              sub          s8, s11, a1
                  beq          sp, zero, 412f
                  blt          a2, ra, 412f
                  sra          a4, s4, a0
                  sltu         a4, s10, t4
                  bgeu         a7, t6, 412f
406:              ori          s4, sp, 1507
                  xori         s9, s4, 15
                  slt          s11, s9, s2
                  auipc        t1, 1005918
                  addi         a7, a6, -1638
                  auipc        ra, 324843
412:              andi         s8, s4, 421
                  bgeu         a0, t1, 432f
                  sub          s1, a2, s10
                  bgeu         s9, t1, 424f
                  blt          tp, a2, 418f
                  lui          s1, 72559
418:              ori          s4, t4, 1584
                  andi         tp, gp, 1556
                  slti         t3, s5, -1779
                  srai         t3, s1, 26
                  slti         s1, s5, 1948
                  beq          s1, s8, 441f
424:              xori         a5, a0, 969
                  srli         t6, t1, 17
                  sltiu        a3, a0, -2005
                  slti         s11, a2, -1000
                  slt          a3, a7, s3
                  srai         s11, s11, 17
                  andi         t6, a5, -1201
                  ori          t3, s5, -114
432:              nop
                  sltiu        a5, s8, -49
                  xori         t5, s5, 142
                  ori          s9, a5, -1136
                  lui          s11, 26192
                  or           ra, zero, s7
                  sra          t1, s9, s5
                  or           sp, t4, a7
                  auipc        s1, 1035339
441:              sltiu        t2, s5, 1507
                  bne          s11, sp, 458f
                  slti         t1, a1, 1820
                  bne          t1, t6, 452f
                  bltu         tp, s0, 447f
                  sra          s2, a6, a3
447:              srai         s1, a2, 2
                  and          zero, s5, s7
                  xor          t0, a2, a5
                  srli         s4, s4, 7
                  ori          s6, ra, 756
452:              add          s2, s4, tp
                  srl          sp, gp, tp
                  bltu         a1, tp, 460f
                  sll          gp, s2, s6
                  auipc        a3, 624733
                  nop
458:              xor          ra, a4, t2
                  srai         zero, t5, 2
460:              slt          s4, s10, sp
                  sltiu        s11, a0, 888
                  srli         s4, sp, 24
                  bne          s6, s1, 480f
                  blt          a1, a0, 476f
                  beq          s7, s11, 483f
                  auipc        zero, 312514
                  srai         a2, zero, 9
                  sltiu        tp, s10, -313
                  bgeu         a3, t0, 470f
470:              addi         s3, s4, 927
                  srli         a4, s2, 19
                  bne          zero, a1, 474f
                  add          s9, a4, s0
474:              or           s0, t3, a6
                  slt          t1, t6, zero
476:              andi         s0, sp, 943
                  lui          s2, 594662
                  add          s0, s5, a1
                  la           a4, sub_10
                  xori         gp, a0, -1256
                  addi         a4, a4, -347
                  bge          tp, s0, sub_6_j13 #branch to jump instr
                  sub          tp, s1, sp
                  addi         s9, t1, -506
                  sll          a2, s3, a7
                  srli         a6, tp, 1
                  slti         tp, s9, 289
                  addi         t5, t4, -57
                  sltiu        t0, a6, 668
sub_6_j13:        jalr         s4, a4, 347 #jump sub_6 -> sub_10
                  bge          t6, a3, 491f
480:              bltu         a0, gp, 490f
                  sub          ra, s4, a2
                  bltu         t5, ra, 488f
483:              slti         a4, t2, -1728
                  sra          t6, s11, s10
                  srli         a2, s4, 25
                  sll          a5, zero, a3
                  addi         s4, s1, 830
488:              xor          s10, a6, s3
                  add          a3, a0, t2
490:              nop
491:              slt          s0, s0, t2
                  slli         a2, gp, 0
                  sll          tp, s8, ra
                  nop
                  lui          t3, 527421
                  blt          s3, gp, 511f
                  ori          a4, s2, -1719
                  sra          t3, a6, s11
                  blt          t2, a5, 511f
                  bge          t4, t2, 510f
                  bne          a2, a0, 517f
                  srl          a3, t2, s2
                  srli         s10, a2, 11
                  srli         t6, gp, 24
                  sltu         s11, a1, s5
                  blt          s3, t6, 507f
507:              blt          s7, a0, 509f
                  xori         zero, a7, -1039
509:              bge          s2, s6, 511f
510:              nop
511:              beq          s1, zero, 526f
                  sra          t6, t1, s1
                  srli         s2, gp, 23
                  sra          tp, a7, a5
                  sll          t6, zero, t1
                  ori          a3, t5, 141
517:              xori         s1, t4, 1013
                  sll          a2, a1, tp
                  blt          s4, s0, 528f
                  sub          a4, s10, a0
                  xor          s9, a3, s5
                  bgeu         ra, a7, 540f
                  auipc        gp, 805450
                  bge          a7, s1, 530f
                  beq          gp, s6, 526f
526:              ori          ra, s1, 1421
                  srai         a7, s8, 31
528:              andi         t2, a7, -23
                  slli         a5, gp, 4
530:              nop
                  srl          t5, zero, a2
                  bltu         a3, a4, 539f
                  bne          t1, s8, 548f
                  sltu         t5, a5, a7
                  slti         s1, s1, 860
                  add          s2, a5, t5
                  lui          a7, 1040280
                  srli         a6, a7, 14
539:              bgeu         a7, s8, 551f
540:              beq          zero, s2, 551f
                  ori          a4, a6, 1256
                  blt          s1, t2, 551f
                  beq          s1, s8, 553f
                  slt          s5, s5, s5
                  or           t1, zero, t0
                  add          a7, s9, t2
                  beq          s7, ra, 549f
548:              bgeu         s11, s10, 554f
549:              xori         t6, s4, 1944
                  or           a5, s6, a2
551:              sll          a3, zero, a7
                  and          s3, t5, t0
553:              bltu         a4, t0, 559f
554:              slti         s8, s5, 695
                  lui          t2, 454908
                  lui          s8, 718970
                  bne          s0, s6, 575f
                  srl          t1, a0, a6
559:              sub          t5, a4, tp
                  sub          a3, a5, s1
                  sll          t4, s10, s3
                  srl          s0, s1, s7
                  slt          s3, t5, s6
                  srai         a2, gp, 26
                  blt          a7, ra, 582f
                  sub          s0, s0, s4
                  bltu         s11, t1, 586f
                  bne          t4, s1, 575f
                  sltu         zero, a6, s4
                  sra          a5, a1, gp
                  sub          s2, s0, t0
                  slti         ra, t0, 1251
                  srl          sp, s1, tp
                  slt          t3, t1, t5
575:              srl          s5, s6, s10
                  or           s10, a3, a0
                  slti         t5, s3, -840
                  add          t2, a3, s1
                  ori          s0, s4, -664
                  xor          gp, t5, s8
                  bge          s9, t2, 599f
582:              auipc        t6, 517135
                  srli         t2, s0, 25
                  xori         s1, s10, -467
                  add          t3, a0, s8
586:              bltu         s0, s11, 592f
                  addi         a4, gp, 1104
                  lui          s6, 592267
                  slli         t3, s1, 16
                  srli         s4, a4, 18
                  sra          s2, s9, tp
592:              sltu         t6, s6, sp
                  slli         a6, s0, 2
                  or           a2, a0, t2
                  addi         a5, a7, -257
                  srli         zero, t0, 24
                  bne          s8, s11, 609f
                  srl          t5, s2, s7
599:              andi         s10, s8, -171
                  slt          a6, s9, a3
                  and          sp, a5, a3
                  sub          a3, t0, sp
                  sltu         s1, s3, s4
                  srl          t6, s8, gp
                  srai         t2, s8, 25
                  bgeu         t0, a5, 626f
                  bgeu         a7, t1, 610f
                  sub          s1, s11, s3
609:              add          tp, a4, t3
610:              beq          tp, s1, 618f
                  or           gp, a1, s4
                  nop
                  srli         a7, s2, 13
                  auipc        zero, 120354
                  xori         tp, t4, 344
                  xor          t1, s0, zero
                  slli         t5, t0, 25
618:              slli         a5, a3, 25
                  beq          s11, t6, 629f
                  sltu         tp, t3, t0
                  blt          t6, s7, 632f
                  or           s3, s8, t1
                  add          gp, a5, a7
                  xori         s9, s8, 2027
                  sub          zero, zero, t5
626:              sll          a5, zero, a7
                  bltu         s5, s0, 644f
                  bgeu         a4, s5, 631f
629:              srli         s4, s1, 5
                  bne          a4, s5, 639f
631:              or           s10, s6, a2
632:              srai         a3, s9, 12
                  blt          a2, a2, 640f
                  sra          tp, s3, s6
                  slti         s5, s2, -959
                  addi         t6, s9, 247
                  sltiu        a4, s2, -296
                  and          sp, a7, a2
639:              slt          s6, a0, s3
640:              or           a7, tp, a6
                  add          t5, gp, t6
                  srai         sp, sp, 29
                  auipc        t1, 779363
644:              sll          s1, s9, gp
                  sub          s5, t4, s7
                  or           t2, sp, s9
                  ori          a4, s11, -1832
                  xor          s2, s10, s4
                  andi         a2, s8, -944
                  auipc        t3, 230773
                  sra          a3, a2, s3
                  slt          s9, a1, t1
                  sub          s11, zero, a2
                  sll          a7, s6, tp
                  nop
                  sltiu        t1, s1, 277
                  sltu         sp, t3, s3
                  bge          a0, s0, 665f
                  srli         a2, a6, 12
                  xor          s6, t2, a1
                  sub          a3, s3, a6
                  add          s8, a1, a4
                  bltu         sp, a4, 678f
                  sra          sp, a6, a4
665:              auipc        tp, 1003103
                  sra          a2, a5, s0
                  srl          t4, s8, s5
                  sll          t0, tp, s11
                  beq          a0, t5, 689f
                  slt          s2, gp, s7
                  and          t4, t0, s1
                  nop
                  xori         t2, s5, 1415
                  xori         s10, a4, -1585
                  sra          a7, s5, a4
                  bgeu         s7, s5, 694f
                  andi         sp, t5, 1217
678:              srli         gp, a6, 21
                  srl          a5, tp, a6
                  srai         t1, s6, 29
                  slt          a6, a5, s6
                  srl          ra, t1, s11
                  lui          t1, 837778
                  sll          zero, a6, t1
                  srli         gp, s10, 15
                  sra          s9, s7, t4
                  bge          t0, t1, 693f
                  nop
689:              blt          a1, s11, 708f
                  sub          ra, t6, s8
                  nop
                  slti         sp, zero, -1779
693:              bge          s1, a1, 699f
694:              slt          gp, s9, a6
                  bltu         a4, s8, 696f
696:              and          s6, t0, a1
                  srai         t1, sp, 11
                  ori          s10, s2, 873
699:              bge          s2, t0, 701f
                  srl          s9, a3, t5
701:              srai         t1, t6, 21
                  lui          t3, 69825
                  slti         s11, s1, -1453
                  andi         s10, t6, 219
                  and          a4, t5, s5
                  sra          t5, s9, t5
                  and          zero, s8, a7
708:              srli         s5, t6, 24
                  slti         s9, a4, 843
                  bge          t5, a5, 722f
                  andi         t6, s7, -620
                  bge          s0, s2, 713f
713:              beq          a1, s7, 725f
                  srli         a3, a4, 1
                  beq          t6, s8, 725f
                  srai         s11, a2, 26
                  bgeu         s10, a4, 723f
                  srli         t6, a3, 3
                  xori         t6, s7, 946
                  andi         a3, t1, -943
                  ori          a4, t1, 599
722:              bltu         t4, zero, 731f
723:              add          s5, s3, s3
                  slt          t0, s1, s0
725:              bltu         s7, s5, 741f
                  slt          gp, s2, t6
                  slti         s3, s11, -319
                  xor          ra, s5, a1
                  srli         a7, s7, 13
                  beq          a7, ra, 748f
731:              beq          a5, tp, 733f
                  beq          s11, ra, 734f
733:              ori          a4, zero, -431
734:              slli         t4, gp, 11
                  sll          a3, s10, zero
                  sltu         a6, a4, a0
                  and          s4, s5, t6
                  ori          t2, t0, -337
                  bgeu         s2, t2, 757f
                  blt          a2, s0, 752f
741:              lui          t5, 637171
                  srli         s10, gp, 14
                  sra          s8, s7, a2
                  sltiu        a5, gp, -905
                  sra          t3, t6, a1
                  sra          tp, sp, s6
                  addi         a5, a1, -489
748:              ori          ra, t4, 427
                  ori          a5, s6, 108
                  ori          a6, t1, 660
                  sra          s9, a5, a2
752:              nop
                  srli         zero, t3, 24
                  slt          a4, t0, sp
                  blt          t5, a7, 761f
                  beq          s5, t2, 771f
757:              beq          s3, a0, 765f
                  slt          s1, a1, s0
                  slti         a4, t4, 826
                  andi         sp, a3, -1401
761:              nop
                  slti         t5, zero, -1316
                  bne          a2, s5, 770f
                  slt          s5, t4, s3
765:              nop
                  andi         sp, s8, -1917
                  andi         t0, a3, -264
                  slli         a4, s10, 7
                  sra          t2, a6, s0
770:              addi         s11, a3, 1904
771:              sra          s5, s8, a3
                  srai         t0, s11, 11
                  sra          t3, t2, s0
                  bge          t0, s2, 776f
                  bgeu         sp, t5, 777f
776:              addi         t5, t4, 564
777:              xor          t4, a2, gp
                  srl          a3, ra, t3
                  srl          s1, zero, t3
                  sltiu        a4, s2, -1762
                  srai         s5, s0, 19
                  sll          s3, t2, a2
                  andi         s8, ra, -1927
                  slti         t2, a0, -863
                  lui          a4, 559995
                  bltu         s8, a0, 792f
                  auipc        t4, 1016165
                  bne          t1, s7, 798f
                  xor          s3, s3, t3
                  slti         s2, t0, 838
                  xori         gp, a0, -8
792:              xor          s1, s7, a2
                  srai         s3, t6, 5
                  sll          zero, t6, tp
                  and          t4, s0, s9
                  sltu         s2, s2, t2
                  bne          s7, s8, 803f
798:              addi         s3, s1, -506
                  nop
                  srl          zero, s1, zero
                  slti         sp, t3, -1616
                  xori         gp, s8, 986
803:              srai         s9, t3, 30
                  sub          t2, t4, s11
                  bgeu         a4, a2, 823f
                  bge          s4, a1, 815f
                  ori          s4, sp, -1593
                  sltu         s2, a0, s1
                  xor          a3, s0, s2
                  slli         sp, t1, 19
                  bne          s3, a0, 828f
                  lui          a3, 701792
                  bgeu         s5, a2, 822f
                  add          s6, t3, a2
815:              sub          s8, zero, s5
                  bltu         t2, tp, 822f
                  blt          t3, s5, 837f
                  bge          a6, a1, 819f
819:              andi         t3, s5, 938
                  auipc        zero, 478000
                  srai         s10, tp, 27
822:              srli         s11, a2, 9
823:              blt          a7, s9, 835f
                  or           s8, t5, s10
                  beq          a6, a6, 827f
                  xori         s11, t5, 706
827:              bge          t1, a5, 834f
828:              sltu         s0, ra, t2
                  andi         s1, t0, 3
                  bge          a4, a5, 831f
831:              auipc        zero, 795484
                  ori          s11, t2, -555
                  sub          t5, sp, a6
834:              ori          s1, a1, 2021
835:              blt          s0, s8, 838f
                  ori          zero, t2, 1697
837:              or           a4, t1, t5
838:              srl          a5, t1, tp
                  srai         a4, s1, 30
                  sra          ra, s7, t6
                  sll          t2, t5, tp
                  lui          t1, 853835
                  or           s1, zero, tp
                  srl          sp, t0, a6
                  auipc        t5, 195094
                  and          s10, a3, sp
                  sub          s4, gp, t2
                  sltu         t0, sp, t2
                  sltiu        t5, t0, -1334
                  slli         gp, ra, 27
                  bgeu         ra, s1, 859f
                  xori         a4, t1, -118
                  sra          s9, t1, tp
                  andi         sp, t5, 771
                  bne          a6, s0, 866f
                  srai         t0, s1, 12
                  sltiu        s10, a0, -552
                  bgeu         t1, zero, 873f
859:              lui          s11, 1032573
                  sll          s10, sp, a1
                  srl          tp, a3, t4
                  lui          a3, 858721
                  sltiu        gp, s3, -384
                  blt          a5, s2, 879f
                  beq          gp, s0, 881f
866:              bge          s3, a6, 878f
                  beq          sp, s11, 885f
                  bne          s3, s4, 874f
                  srai         a2, s10, 19
                  or           s9, t5, s4
                  slli         a6, s7, 24
                  sra          s6, s5, s11
873:              andi         a5, s10, 1187
874:              srli         s2, tp, 0
                  ori          t5, s10, 652
                  sltiu        s9, tp, 1170
                  add          t5, s11, s5
878:              slli         a6, gp, 25
879:              xori         s8, a5, 1583
                  and          sp, s1, a1
881:              bge          gp, t6, 899f
                  blt          t5, t0, 901f
                  sltu         tp, s8, t4
                  xor          a6, s6, t3
885:              add          s10, a6, gp
                  lui          t2, 1001158
                  srl          tp, tp, gp
                  slti         a3, s4, -1274
                  and          a5, a5, t4
                  xori         s11, s10, 749
                  bne          s2, sp, 903f
                  auipc        s11, 601722
                  slt          s10, a0, gp
                  sra          s11, s4, a3
                  xor          a5, ra, t5
                  and          s4, a7, a7
                  auipc        s11, 743048
                  slti         s10, tp, -1918
899:              add          t3, t6, t1
                  srli         t6, s7, 14
901:              bltu         a6, a0, 911f
                  sub          t0, a6, s4
903:              nop
                  add          gp, s5, a4
                  sra          t5, s4, s0
                  ori          s1, a2, -1990
                  sltiu        s2, t6, -1256
                  sltiu        s3, sp, -257
                  beq          a3, s0, 915f
                  and          a6, t3, s1
911:              slli         t4, a4, 16
                  bge          s7, a2, 913f
913:              sra          t0, t1, s6
                  auipc        s1, 614717
915:              add          sp, s4, a4
                  slli         s2, zero, 24
                  lui          a2, 385775
                  bge          s11, tp, 925f
                  and          s1, zero, s2
                  slti         sp, s9, 1116
                  lui          t4, 860984
                  slli         s2, t2, 30
                  ori          zero, s3, 669
                  and          a5, s11, s0
925:              srl          s4, t3, a1
                  xor          a6, s5, s6
                  and          t0, s10, t6
                  lw           s4, 4(a0)
                  sltu         a2, t0, a3
                  sub          t1, s8, s7
                  sub          t2, s1, a6
                  addi         a0, a0, 20
                  xori         a7, t2, 1923
                  srli         s10, s8, 24
                  slli         gp, t2, 30
                  sub          a6, s1, a4
                  slli         a3, zero, 16
1241:             addi x20, x20, 0
1241:             jalr x20, x20, 0
sub_1:            add          a5, s6, s7
                  addi         a0, a0, -40
                  sra          a2, s2, t2
                  sub          ra, a4, s10
                  srai         s1, a6, 21
                  add          a7, a7, ra
                  auipc        sp, 856886
                  sw           s4, 4(a0)
                  sltu         zero, gp, s8
                  srai         sp, t0, 30
                  srl          s2, s1, a6
                  blt          s9, s5, 18f
                  sltiu        a3, s11, 20
                  sub          s8, tp, t4
                  beq          a0, s9, 23f
                  srai         a7, a5, 25
                  blt          a4, s0, 25f
                  bge          zero, a1, 10f
                  sltiu        s11, s11, -1527
                  bge          a2, zero, 21f
                  beq          t6, tp, 16f
10:               bltu         s5, sp, 24f
                  bne          s2, ra, 18f
                  slti         a7, zero, 1357
                  srai         s11, a7, 14
                  lui          t4, 787669
                  sltiu        a6, t5, 1447
16:               bgeu         s7, s0, 19f
                  slli         s5, a7, 18
18:               sltiu        t4, tp, -1970
19:               sltiu        sp, s7, -1782
                  bltu         t5, t5, 31f
21:               srai         t2, s9, 2
                  srl          t6, s0, s6
23:               bltu         t6, a5, 34f
24:               bltu         s1, s2, 28f
25:               bge          s11, a6, 32f
                  slti         a6, t1, 389
                  bne          t3, sp, 43f
28:               add          t5, t3, ra
                  addi         s8, a6, -1836
                  slti         t1, s1, 1508
31:               srai         a6, tp, 5
32:               srl          a4, s3, zero
                  sltu         a6, t5, a6
34:               sltiu        a3, s6, -1470
                  srl          a5, a7, s6
                  bge          s11, s9, 53f
                  srl          t1, a7, s11
                  sltiu        s10, s4, 1990
                  auipc        a3, 957751
                  slti         t0, t0, -1489
                  sltu         a2, a7, a6
                  srai         a4, sp, 22
43:               auipc        s8, 875949
                  slt          gp, s9, a6
                  slti         a7, a4, -946
                  sltu         s2, gp, s2
                  sub          s10, s1, s10
                  ori          s10, s2, -259
                  add          zero, t1, a4
                  xori         s11, s10, -1
                  slt          s4, a1, a5
                  auipc        s1, 818370
53:               ori          s9, t5, -839
                  sra          s3, s2, s0
                  add          t0, sp, a4
                  xor          s10, sp, a3
                  sltu         s3, t5, t6
                  ori          t6, t5, -1607
                  bgeu         s4, t6, 73f
                  sll          a4, sp, ra
                  bgeu         gp, s11, 69f
                  or           a5, s1, a4
                  sra          a5, a7, tp
                  bgeu         t0, s8, 80f
                  sra          s0, a2, s5
                  srli         gp, s0, 27
                  or           t1, s6, s8
                  sltu         ra, t4, t3
69:               srli         s2, t0, 6
                  sll          a6, a4, a4
                  and          s5, a4, t5
                  slti         ra, s3, -1269
73:               sltu         ra, sp, tp
                  or           sp, zero, sp
                  sll          s5, a2, a0
                  beq          a1, zero, 86f
                  beq          sp, s11, 80f
                  sltiu        s8, s1, -538
                  add          a4, s9, s10
80:               or           a5, tp, s10
                  blt          a1, s11, 93f
                  sll          a2, s8, a3
                  andi         s11, t1, -134
                  bltu         t2, ra, 89f
                  bgeu         s5, s0, 90f
86:               bne          t3, ra, 94f
                  bne          a4, t0, 89f
                  xori         zero, s7, -508
89:               slti         a3, t3, -604
90:               srai         ra, t0, 3
                  slt          t5, s6, t1
                  srl          a5, t6, sp
93:               auipc        t1, 67586
94:               addi         t0, t3, 646
                  srl          s6, gp, zero
                  sra          s0, s3, a1
                  sltiu        s6, s11, -1611
                  slt          a4, tp, s8
                  beq          t2, s5, 113f
                  bge          t4, t5, 101f
101:              bne          s4, a1, 111f
                  sltiu        t2, s11, -1897
                  srai         a3, a7, 17
                  nop
                  or           s6, s7, t0
                  slli         ra, tp, 13
                  sra          t4, s3, s2
                  and          sp, s0, t1
                  lui          s5, 902033
                  srl          t6, s4, a7
111:              sra          a5, s11, a5
                  and          a7, s9, s10
113:              slli         s11, s11, 12
                  xor          t6, s11, s0
                  srl          s1, a0, s3
                  sll          s5, ra, a0
                  bge          t5, s8, 122f
                  beq          s5, s4, 122f
                  srai         s11, s6, 29
                  xori         t4, a0, -763
                  sll          a7, a7, sp
122:              sra          t6, a7, s9
                  sub          s2, ra, t2
                  lw           s4, 4(a0)
                  addi         a0, a0, 40
                  slli         s0, s6, 26
                  xor          s11, s2, s0
139:              addi x9, x20, 0
139:              jalr x9, x9, 0
sub_10:           addi         a0, a0, -24
                  or           s8, ra, s9
                  sll          t0, a6, a1
                  slti         s6, a6, 1483
                  and          gp, s9, s4
                  srai         a6, t3, 5
                  sltu         a7, s8, t2
                  srai         s8, a2, 1
                  sw           s4, 4(a0)
                  sltu         t1, s7, a4
                  slt          a5, a5, s4
                  bge          s4, s7, 4f
                  slti         gp, t4, 325
                  srl          ra, s1, a6
                  sltu         s6, gp, tp
4:                auipc        s3, 331568
                  srai         a6, s0, 29
                  add          s11, t4, a1
                  srl          sp, s8, a4
                  slti         s3, t5, -852
                  addi         tp, a1, -2024
                  lw           s4, 4(a0)
                  xori         a5, s3, 1369
                  srai         sp, zero, 6
                  xor          t4, t0, s5
                  addi         a0, a0, 24
                  sub          a4, zero, s0
27:               addi x17, x20, 1
27:               jalr x17, x17, 0
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
.word 0xbb411cac, 0xc64fe883, 0x7e2d0a5e, 0x9952fdc9, 0x46026d82, 0x8c0d8c13, 0xd5cbca52, 0x45e315df
.word 0xdf206ebb, 0x8d91e155, 0xf5d998ca, 0xfc2202cf, 0x63cc729c, 0x952807d0, 0x2449cf87, 0x6e5a1385
.word 0x60ef8189, 0x798c2502, 0xbbb73718, 0x14b2e733, 0x73baf6f7, 0x5ec72af8, 0xd8f851fd, 0x57e67d07
.word 0x127ce6a5, 0x4c66b8d6, 0xcc28a0d2, 0xe48e4cfb, 0x4e1e5957, 0x8bb667b2, 0xab8cea8d, 0x20b1e177
.word 0xd85573ad, 0x1c6d66cb, 0x3b173913, 0x1c51fbfb, 0x0b93d139, 0x4ea2dfcc, 0x0d27d04a, 0xb1e4c72b
.word 0x81f70ded, 0x4deb3075, 0x7778af61, 0x371b5162, 0x53264e64, 0xfa019e70, 0xfcad8907, 0xcd0a8851
.word 0xd6cc4b34, 0x7063b7e6, 0x24f631eb, 0xd71b202b, 0x8e59d6f7, 0x0a6f46cd, 0x0782b438, 0x2fad0c49
.word 0x3742a123, 0x94746ed5, 0x0574421a, 0xdaf221d2, 0x2d2e0544, 0xb504249c, 0x225bce8b, 0x9d168549
.word 0x9cbf1397, 0xfd91e368, 0x81bf7d78, 0x1c3e5ce6, 0x20574f07, 0xb06db57e, 0xf354a5e8, 0x0d52e1c4
.word 0x95e7154f, 0x86b609fe, 0x22f9b91f, 0xbbde57ee, 0xc7452fcd, 0xa433bb79, 0x627aa7f4, 0xc272981f
.word 0xbd7e5ecf, 0xf1ce5c4f, 0xbaeaeede, 0xe6ca0c35, 0xc301bb43, 0xa50a5baa, 0x74ef4a85, 0xa53e5c4c
.word 0x154140b7, 0xac966104, 0xacec6672, 0xfb04405f, 0x7754e776, 0x1542a508, 0xa9ced3f5, 0x88af7e6d
.word 0xcef0605a, 0x62b45bbd, 0x1157ae04, 0x97ab3927, 0xf511b9c4, 0x1fc8c1cf, 0x94457108, 0x98bfb989
.word 0xc6efb9ee, 0xeb792da2, 0x0c0ca388, 0x09f3a165, 0x4a1c803a, 0x22046f2e, 0xe66e50d0, 0xc58c0c30
.word 0xba725069, 0x7989401e, 0xef2a7809, 0x93cd2087, 0x20484432, 0x5e1961b7, 0x67ffd26a, 0xffedc7f2
.word 0xc858cccf, 0x11117398, 0x3d1a6aeb, 0x75cf0ca1, 0x3dff26b8, 0xf88ef415, 0x4af1508c, 0xe3cc235e
.word 0xa21437ec, 0xef5aaf99, 0x5a1cc382, 0xe3631253, 0xa9d078c1, 0x2030d925, 0xae454785, 0x41b0b470
.word 0xec482246, 0xf098f67c, 0x34cbf440, 0x8a792a3c, 0x6c298821, 0x607f07e0, 0x226df588, 0xd36754a2
.word 0x4fac7fcd, 0x7395c97e, 0x2569586e, 0x2f3ea22d, 0x97865804, 0x29b6fdaf, 0x625ed389, 0x793f75d9
.word 0x72c58d0b, 0x497a250d, 0x18704925, 0x4be6ce17, 0x72fca54c, 0xb984f83d, 0x7aa54ec6, 0xb419218f
.word 0x62bfda33, 0xc2a2ff49, 0x64d23933, 0xed82cdc3, 0xa6ec1e10, 0xcd98563c, 0x18aa199e, 0xf8213659
.word 0x89f7a64d, 0x98d25b35, 0xd84d7c36, 0x6b7ef083, 0xceb5b4a6, 0x79dcda69, 0x20558eb6, 0xc0fb95ba
.word 0x11e7123e, 0x64859ab6, 0x53dd5984, 0x70449d3a, 0x265a5500, 0xaef6bfa9, 0xa775d263, 0x33609c90
.word 0xb376480d, 0x3e9e35d2, 0xd37760b8, 0xa95254e5, 0x3f2fd83d, 0x5a6fac95, 0x840b6d30, 0x44250319
.word 0xa8829643, 0x883bae03, 0x1b7b210b, 0xd3048c17, 0xe8b1f9ea, 0xd2009983, 0xad17f2a9, 0xd87219c9
.word 0x132ed0be, 0x583b41ed, 0xcc62c3fb, 0x25c8e2b5, 0xd323f515, 0xa5fcb6bd, 0xaa3849cf, 0x50dcf054
.word 0xc6d9f556, 0xcbb13e1b, 0x3b01cee7, 0x946825ea, 0x9017795e, 0xaca545de, 0x672ff8d1, 0x97753782
.word 0xe78923e1, 0xcd864e66, 0x05c4b8c1, 0x72c1db5f, 0x2c4421f7, 0x8f573a3f, 0xeb56f5f4, 0x5456cfcf
.word 0xd8114a2d, 0xa64d034e, 0x255bc222, 0x75f4a1ef, 0x3f574b67, 0x916d2259, 0x9af28d13, 0xc63bf5ed
.word 0xc6894b25, 0x9607a8eb, 0x165c8e2c, 0xc1da8361, 0xe9def5ca, 0xd86dc8f9, 0x3c145c11, 0xfe44ab48
.word 0xbe0a51e5, 0x95b493a7, 0x7eb4bba4, 0x0deb2108, 0xc3fa0eda, 0x1928bbfa, 0x22fe24fc, 0x1e6516fc
.word 0x64e5ed16, 0x08f2a624, 0x518ec52b, 0x91fa1b5a, 0xf8cf5de1, 0x34cc8e0b, 0xc595da8b, 0xb81f28cd
.word 0x2ea489bc, 0x2c630764, 0xf88d5284, 0x6f0c7402, 0xd8a90229, 0x4574b8ee, 0x4d5fb8b9, 0x8b4f2c0b
.word 0xcdf2b571, 0x9e24b336, 0x4036ec75, 0x1b7cb07b, 0x8766f36d, 0x1a0abfa5, 0xec8a77fb, 0x77aa6f5a
.word 0x8f1bcb01, 0x1108f7ff, 0x8384912a, 0xc8d41e89, 0xcd470a4e, 0x13eeb33a, 0xb6c11028, 0x2962961b
.word 0x9da1a3c0, 0x893d21d2, 0xe7ef4c93, 0x89be2e1a, 0xdf167f49, 0xb3adeec8, 0x82e8b43d, 0x7bd14498
.word 0x102d22c2, 0x0df4a32f, 0xfe30bfba, 0x6db3703a, 0x9c62e283, 0x24da0ec3, 0xc72a0ad0, 0x771a921f
.word 0x7d854ec2, 0x85744f59, 0x476a6767, 0x57d753df, 0xbe290529, 0xdc26acea, 0xc915ae76, 0x2f5e67bf
.word 0x978d38d6, 0x7c8448d9, 0x2e24300f, 0xe552321a, 0x13ffbcb5, 0x44f95664, 0x5491b19b, 0x6c02d059
.word 0x735049c5, 0xafa30e90, 0x6bc4d5ed, 0x74ad9bd3, 0xdcee57ef, 0x7b204520, 0x10a35800, 0x7907ac1a
.word 0xdbfd931d, 0xe33faecc, 0xa5fef02f, 0x7ffef79e, 0x753acdd7, 0x2ea49133, 0x9d6302a5, 0x51708dea
.word 0xb59ab3a4, 0xc1f9df6a, 0x503f014a, 0x139e3760, 0x70177b59, 0xbff738ba, 0x1ee04b8b, 0x0cade9a1
.word 0xa74eaa7f, 0xd509584b, 0x14fab8f4, 0xc9bd29bf, 0x8fc519f8, 0x159747d5, 0xdf5f7bd9, 0x048aeb38
.word 0x9c0cb15b, 0x43e03bb5, 0x4d8769e1, 0x2da5729d, 0x3bcd482b, 0x22ef772c, 0xc84f1576, 0x5efa8d38
.word 0x805705d4, 0x76356c1e, 0x81b81f64, 0xd42ccf3e, 0x61404444, 0x4e8c3e72, 0x6cfc7b58, 0x6b508d36
.word 0xb90ec9e2, 0x419b2d26, 0x7901c021, 0x548dfe33, 0xd934c6b1, 0x6f2fd1f6, 0x063e7e34, 0xcf6b21c1
.word 0xb8e18d3d, 0x97de1088, 0x8d2e062e, 0x697f1b00, 0xfbbec63e, 0xdbd06aac, 0xad2c61a8, 0x3dafc874
.word 0x359163b9, 0xf1ecdc24, 0x03810568, 0x5fa71045, 0x02c651aa, 0xfd8d33b5, 0x38daf547, 0xbb9e81d2
.word 0x974e9ec9, 0x085188f2, 0x444fbcab, 0x27a6d006, 0x469242c3, 0x5de00213, 0x780c64b9, 0x2d2e67a0
.word 0x5f544594, 0x5091b128, 0x698cd126, 0xf101505f, 0x55db1160, 0x60ec2bc3, 0xe5eedaaf, 0xbab035aa
.word 0x671263a0, 0xd89daf92, 0x29a7e525, 0x87ffb827, 0x7511248e, 0x06766ca7, 0xc69211a4, 0x7862caf6
.word 0xd5ebc6ff, 0x6aaa55ef, 0xf9f8c33c, 0x6f8b9789, 0xabda0664, 0x6ffbe680, 0x5ba2e9d4, 0x27843f30
.word 0xd79e4299, 0x7e1568fd, 0xed58a19f, 0x4b49b49f, 0xd75d706f, 0x2748c9a0, 0xf26666d6, 0x9ba2a018
.word 0x0c3f95c3, 0x6bc5850b, 0x1db5113f, 0x4cb795c7, 0x561be45d, 0xb4cd8d4f, 0x1b1131f6, 0xdb06c31d
.word 0x91c93a7d, 0x64244763, 0x4265ec79, 0x5e5af4c1, 0xec592c5c, 0xc3f24932, 0x111e2817, 0x7c6cd2bc
.word 0x379b7b76, 0xaa33b586, 0x8b860afa, 0x737dcfcd, 0xb69abd5f, 0x984c122e, 0xaf7830bc, 0x556cd2f0
.word 0xa5934646, 0xb81233bd, 0x56b45b90, 0x709e1be2, 0x6159458c, 0xd86e8d63, 0xea4fae47, 0x9ef67822
.word 0x435365e1, 0x07d814a4, 0xcd31dfa0, 0xad053144, 0x863a2599, 0x2da18cd3, 0x7d2a69ec, 0xe8e260d9
.word 0xb4b47e0a, 0x75b7f2fb, 0x4767502b, 0xb2e69343, 0x31d19873, 0x79b4795c, 0x52109af3, 0xee853ee5
.word 0x4213d9c3, 0x7d5a5858, 0xc4cd3047, 0xd49a9157, 0x6c762882, 0xe8351201, 0x6b3c78be, 0x7a8c7adf
.word 0x861f52b9, 0x32441664, 0xeb194f8f, 0x2efa4e61, 0x088d789c, 0x41aee73f, 0x6dc78d9d, 0xb6fbc6cb
.word 0xaf56e7f5, 0x71d15ed1, 0x8ef4bef1, 0xceaada02, 0xf3c0dabe, 0x08f47337, 0xb4cdba85, 0xe7aaaba1
.word 0x746988e7, 0xc95fd7ee, 0x008fd954, 0x7da0ee00
.section .region_1,"aw",@progbits;
region_1:
.word 0x2b5d5f28, 0xb7801e4c, 0x3254ca59, 0x949f307a, 0x57e3c941, 0xd3b4dc87, 0x47824fb6, 0x85454299
.word 0xd0242dd6, 0x3319da02, 0xecb5c2af, 0x1d2a7fa0, 0xe98b3a72, 0x3ac3dd6e, 0xa916d595, 0xbd6e9df5
.word 0x19b18219, 0x7624dc0c, 0x16bffdbd, 0xc2b41fb0, 0x27058ebf, 0x320b5de0, 0x3275841f, 0xfd86e09d
.word 0x3e54830e, 0x856f478a, 0x599fa34e, 0x7cc29a70, 0x9573e2e7, 0x57befef6, 0x4d40cafa, 0x7ad482eb
.word 0xd0f74137, 0xbe528d4a, 0xc84c1390, 0x1ffa0162, 0xa5b9bfc6, 0xb3f20755, 0xeb88d41b, 0xb35ee2b1
.word 0xcb69eb37, 0x3ffc649e, 0x9cc6e53b, 0xe2fd662b, 0x06828dd1, 0x436deceb, 0xa15fe5f3, 0x963155e8
.word 0x76a9f73e, 0x95c80ffd, 0x0ec20122, 0xc0ab2eb0, 0x03696e13, 0x773aef05, 0x76cab560, 0xda2b3bdf
.word 0xb3097b6c, 0x010a8aac, 0x491efa06, 0xc4692293, 0x04cfbacf, 0x395919d1, 0x35f380b3, 0x3a52cde5
.word 0x0a0c5b31, 0xfe6cc10d, 0xac6b8f65, 0x8303faf5, 0xcdf4c24d, 0x004d1f80, 0xe64debf4, 0x33b0c5af
.word 0x83cc0ae7, 0xa1229d1f, 0xf71c888b, 0x0560a3fc, 0xd3d3fb41, 0xd3dca4f4, 0xf2cae782, 0x924e1c72
.word 0x29c1ff6a, 0x7fe46346, 0xd14f34ee, 0xe72ed019, 0xfa1aa584, 0xd2bd87e9, 0xcdb32187, 0x1f92ce1c
.word 0xdf49912e, 0x9d8ee400, 0x618d3e9c, 0x4de77317, 0x68104a89, 0x7f9954ed, 0x27a5015a, 0xd3d47464
.word 0x1a5ef3a7, 0x3d6f91dc, 0x4dd06427, 0xa9c2babe, 0xc1b2a2e8, 0x2d7e1aae, 0x79cf7238, 0x8ffe27b6
.word 0x66804e35, 0x271ddf18, 0xe4463ef7, 0x4abce021, 0xf85b1ff4, 0x04a1f667, 0xf241ae28, 0x90177697
.word 0xfc763e6a, 0x6ab64a82, 0xa79355e7, 0xbd0071de, 0x585252e0, 0xb7acfc3b, 0xe8ff0c14, 0x5e0af058
.word 0x73b856e8, 0x7b132cd6, 0x2bb25e51, 0x1cf79eef, 0x931bbb9b, 0x7c633a64, 0xe1f18ee3, 0x46de215b
.word 0xfc60e045, 0x9c5fbd6e, 0x05a18654, 0x022272e6, 0x23cb36a3, 0x7774eaeb, 0xbe9c64c0, 0x219833bd
.word 0xb6848aeb, 0xa4ca8437, 0x1ba8c3d1, 0xbde7943a, 0x60fd6da6, 0xbbec8ded, 0xdedb4197, 0x76f2de20
.word 0x6b21b85e, 0xef362f6a, 0xc34263b6, 0xa8aaed29, 0x43c65803, 0xcd8147f9, 0x556902e4, 0x01a6f33d
.word 0xb45ab382, 0x76311b37, 0x11ef9e1f, 0x28837019, 0x18294f0d, 0x46c35994, 0xfad6a31a, 0x6afd5551
.word 0x29cdac1e, 0x1b91dae5, 0x627240d0, 0x3c1efe7c, 0x6b5eceef, 0xabd61610, 0xe7ff1f55, 0x453cdd06
.word 0x058193e4, 0xfdf65de6, 0x3367b9a2, 0x65b1ce23, 0xb0038b87, 0xb5c53138, 0x4e7ba849, 0xf113b582
.word 0x042fb4f8, 0x899c2390, 0x230695c7, 0x2c346f52, 0xb9c41c26, 0x82a62c2b, 0xe97f1f4c, 0x3c3625c7
.word 0x1c30b464, 0x2cdabaa4, 0x917bcb55, 0xbdbe2b71, 0x4bd0dfd5, 0xc57087d0, 0xf73b02c6, 0x554e8f7b
.word 0xecf6c60b, 0x4b13ae43, 0xeaf5c70a, 0x489bce8b, 0x5929785c, 0x19fe346a, 0xdf57e6d4, 0x07dba627
.word 0xaaa12ad0, 0xb53d128b, 0xf5e136a7, 0x1dbb7a53, 0x21926c47, 0x9a2934c8, 0xad4324ed, 0x5dbed115
.word 0x39bcfba3, 0xb24a453d, 0x894ecf33, 0x3f3f3fbe, 0x7b2a7b16, 0xd492fb2b, 0xda4256fc, 0xb4a4ed83
.word 0x5474c9fd, 0xe3593665, 0xb53c850e, 0x56068ea1, 0xb6d01408, 0x25542c7b, 0xcb16b4cf, 0x550cf55a
.word 0x2df48bf8, 0xb0d2e768, 0xfce79c5a, 0xb5c5da17, 0x2aafe3ce, 0x54f92ff1, 0xb0addf00, 0xa50ecf0e
.word 0xd01344bc, 0x563769d2, 0xed04acac, 0xe0da60af, 0xbfceeeda, 0x21e55ec7, 0xb5456375, 0x1c837cad
.word 0xf5be9708, 0x68df2007, 0xd728dc70, 0x4f3db329, 0xa82b5914, 0xf0153c37, 0x44228783, 0xd97c16ef
.word 0xcc8d5301, 0xbae7915d, 0xdc9fb825, 0x536e5402, 0x032a8e4e, 0x68a998d5, 0xd6ce6fbb, 0x551cebf9
.word 0xe2b68812, 0x4a42cd1c, 0xc1203ff2, 0xced485ea, 0xa8021a9b, 0x3286feae, 0x0229bcb7, 0x96eb16ef
.word 0x0f674f62, 0x44e10c9a, 0x47320f0e, 0x9cc18f6e, 0xd998d43a, 0x6b1b736b, 0x2ab923ca, 0x22fd19e3
.word 0xe8382e05, 0xa06cc477, 0x1a0b2075, 0x30c867f6, 0xb7f8c94c, 0x56587457, 0xc52ff457, 0x353565c2
.word 0x94b37bfe, 0x8c767c16, 0x72c9c4a7, 0x1c0179cd, 0xa013b2ab, 0x3f0dc61c, 0xd1c7ced5, 0xb04e56c1
.word 0xd3205727, 0x72cbfaea, 0xa5a5f9c0, 0x587513fd, 0xc960b508, 0x481a01e4, 0x6c667624, 0x1fc3bfe7
.word 0xbd5287d5, 0x43d8c255, 0xe894b707, 0x89789aa6, 0x466ab0c8, 0xd33b7b66, 0xa265c872, 0x2d2dd4f3
.word 0x20b8882a, 0x4aa7c9c5, 0x57cf2044, 0xf345309f, 0xeedad60f, 0xa3331f46, 0xf420a18f, 0x4a222b64
.word 0x9255f780, 0x13386a76, 0xd5f56a09, 0xd2a28980, 0xef341920, 0xbb6d70e8, 0xf585f7d7, 0x48b1cef3
.word 0x420f8c97, 0xc40140eb, 0x8958d332, 0xf753389d, 0xe9589ea1, 0x2b5042f1, 0x27d66308, 0x758e735a
.word 0xeae6d618, 0x87de1842, 0x1a4b0176, 0x2b254875, 0x02537876, 0xf46432ac, 0xf6b2e165, 0x7cec92e1
.word 0xba65d6fa, 0x3b224a7d, 0xa457795b, 0x5d3eb946, 0x341d0c43, 0xae02065d, 0x7da67cd6, 0x2ff60384
.word 0x7d2935c5, 0x0c46a862, 0x3de8846d, 0xbdf1866d, 0xb98fea62, 0xceba78e5, 0xcf6a1805, 0xc0abf6ff
.word 0x7e40c838, 0x20ea06c6, 0xd9175ed0, 0xdd86008c, 0x019d2021, 0x05a3c545, 0x90d11901, 0x6e973747
.word 0x4213f400, 0x76a5519e, 0x7307eca9, 0x6ab83f7c, 0xde56f731, 0x22a4f4fb, 0xb2bdc1b3, 0x8caa0e8a
.word 0xf38daa33, 0xf220995b, 0xacff4344, 0x3a0a7432, 0x9bedcdc0, 0x6df5e182, 0x0d29dc2b, 0x22affe2e
.word 0xbb753d11, 0xa636efbe, 0xe0b69bc9, 0xad308f86, 0xf995f839, 0xf1739405, 0x73f36bcb, 0x67502749
.word 0xeef2e125, 0xe11c522b, 0x7c520138, 0x70971bd8, 0xee0e216c, 0xa78c94ff, 0x70c10749, 0x4331e782
.word 0x10e66dc9, 0xc29ed89d, 0x5c6eb79e, 0x347744ba, 0x2c0e2e52, 0x4115867b, 0x6e653e50, 0x67f42363
.word 0xe7838b60, 0x1081c775, 0x50185777, 0x6439707c, 0xa80065b0, 0x1726d390, 0x82f724e3, 0x9b009d5e
.word 0x721088b3, 0xba42e67f, 0x4297e4db, 0x1be15114, 0x00668147, 0xb6a8fd04, 0xbc7e4b98, 0x40ca1545
.word 0x4ebf06ed, 0xceb785da, 0x97ca0ebc, 0x8ea6ea77, 0x977c23e7, 0xb0127f91, 0xdafec233, 0x7f6279a5
.word 0x3068f2db, 0x5cc68666, 0x06a7e4e6, 0xfa46a595, 0xdd444a3c, 0x52c858e3, 0x3cc4b8c3, 0x500f88a0
.word 0xad129c6e, 0x9777c4c4, 0x0c1b1dbd, 0xfd33f881, 0xcbe1eebb, 0x40cb8fbf, 0x14b24342, 0x37cc9b99
.word 0xfc244851, 0x6f2a117f, 0xf9bab46d, 0x42f5fb5c, 0x7bc88345, 0xff12f12f, 0x9ee629cb, 0x3cea4c02
.word 0xad40abb4, 0x4dffafb6, 0xaf133a8c, 0xa1585851, 0x142facae, 0xcb66236f, 0xbd734ac0, 0xd4c87959
.word 0xf37dd052, 0x88b5663f, 0x184c78aa, 0xa65ff1ab, 0x96f31821, 0x631f87c6, 0x54325a7b, 0x75a7f6bb
.word 0x19cdb85f, 0x75131cb2, 0xbafcf9be, 0x4dcbd640, 0xe46d6cdd, 0xe003ba28, 0x8c820c2c, 0x2c6b2cec
.word 0xd1b8f0d2, 0x3db9f06b, 0x65688e7f, 0x615c067a, 0x29bc4077, 0x05076fb8, 0xcde84d0c, 0x9a542d4b
.word 0x9306f9ab, 0xc65a234e, 0xb0cef5b6, 0x510b147c, 0xa29ee3b4, 0xd56d5541, 0x68bd7b03, 0x5f9b49f1
.word 0x43e547f2, 0x0226f4dd, 0xd5930816, 0x144f4938, 0x2cc96387, 0x05e262e1, 0xb81a0f03, 0x7695800a
.word 0xc86f3a3d, 0x296411a5, 0xfcf1646d, 0x38fb60d2
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x11, x10, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x2, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x2, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x2, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x2, x9, ecall_handler
                  li x9, 0x1
                  beq x2, x9, instr_fault_handler
                  li x9, 0x5
                  beq x2, x9, load_fault_handler
                  li x9, 0x7
                  beq x2, x9, store_fault_handler
                  li x9, 0xc
                  beq x2, x9, pt_fault_handler
                  li x9, 0xd
                  beq x2, x9, pt_fault_handler
                  li x9, 0xf
                  beq x2, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

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
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x10, x11, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
