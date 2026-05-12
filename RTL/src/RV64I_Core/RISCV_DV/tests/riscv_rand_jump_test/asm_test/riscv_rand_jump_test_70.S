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
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x790c0c4e
                  li x1, 0xa
                  li x2, 0xfddb941d
                  li x3, 0x1c7462ae
                  li x4, 0xf
                  li x5, 0x0
                  li x6, 0x74379655
                  li x7, 0xf06c4eb0
                  li x8, 0xf5256e30
                  li x9, 0x743baa8f
                  li x10, 0x8
                  li x11, 0xfdb5b047
                  li x12, 0xf
                  li x13, 0x2
                  li x14, 0x0
                  li x15, 0x79de9a53
                  li x16, 0x0
                  li x17, 0x3f17912b
                  li x18, 0x6
                  li x19, 0x939fd0cf
                  li x20, 0x0
                  li x21, 0x0
                  li x23, 0xf4d1a0a7
                  li x24, 0xd58dba
                  li x25, 0x80000000
                  li x26, 0xf
                  li x27, 0x0
                  li x28, 0x2
                  li x29, 0x0
                  li x31, 0xc6a92a6
                  la x30, user_stack_end
main:             la           t4, region_1+465 #start riscv_load_store_rand_instr_stream_5
                  lbu          s8, 367(t4)
                  sb           a2, 414(t4)
                  add          zero, tp, a1
                  nop
                  sb           s9, 938(t4)
                  lhu          a0, -107(t4)
                  srl          t3, ra, s4
                  lbu          ra, 923(t4)
                  ori          tp, s2, -1894
                  sb           a3, 1385(t4)
                  andi         t6, t4, -348
                  sll          zero, a7, t0
                  lw           s4, -273(t4)
                  lb           a4, 310(t4)
                  lbu          ra, 354(t4)
                  sb           t2, 573(t4)
                  lb           s8, 873(t4)
                  slt          t6, a0, t5
                  sw           s9, 579(t4)
                  or           sp, t2, a3
                  addi         a0, s3, -1183
                  nop
                  sb           s9, 1005(t4)
                  andi         a0, t6, 1090
                  auipc        t1, 713816
                  nop
                  slli         s7, gp, 17
                  srai         ra, a3, 0
                  sll          s1, a1, a5
                  or           a5, s8, t6
                  lbu          tp, -14(t4)
                  slti         s8, a4, -1717
                  auipc        s8, 603303
                  xori         a0, zero, 1800
                  lbu          s5, 492(t4)
                  xor          a7, t6, t1
                  sw           a0, 195(t4)
                  and          t1, t6, sp
                  sb           s6, 1161(t4)
                  slti         a1, a4, 1791
                  ori          a1, t3, 1152
                  lbu          a7, -449(t4)
                  sltiu        a1, ra, 2000
                  srl          s5, s8, t2
                  lbu          s3, 182(t4)
                  slli         a7, s3, 3
                  lhu          a0, 1171(t4)
                  sb           t4, 420(t4)
                  xor          gp, s10, s10
                  srl          s10, t2, t1
                  sh           a2, 919(t4) #end riscv_load_store_rand_instr_stream_5
                  la           tp, region_1+412 #start riscv_load_store_rand_instr_stream_4
                  andi         s3, s0, 734
                  andi         t3, a3, 908
                  lb           s7, -39(tp)
                  lbu          s8, 27(tp)
                  srl          a0, sp, t2
                  sltu         ra, a6, s8
                  sub          s3, s4, s0
                  lb           a0, -51(tp)
                  add          t1, sp, s11
                  lbu          s0, -55(tp)
                  sub          zero, t6, a7
                  addi         t3, s8, -1734
                  lb           t3, -5(tp)
                  lb           a5, 13(tp)
                  srai         s2, t1, 2
                  auipc        s7, 540646
                  xori         s0, s6, 1903
                  lw           a1, 20(tp)
                  lbu          a2, -17(tp)
                  xor          t4, s1, s6
                  lui          t0, 549496
                  sll          s8, a1, t0
                  sll          s0, a5, s6
                  lh           s11, 0(tp)
                  lb           t4, -3(tp)
                  xor          t6, a7, s6
                  slt          s4, a1, ra
                  lbu          s8, -6(tp)
                  or           a7, ra, t4
                  sll          s7, a3, t6
                  slt          s0, t4, s9
                  auipc        a3, 749370
                  lb           s0, -62(tp)
                  lui          ra, 886679
                  ori          a5, s11, -775
                  and          s9, s9, s1
                  srai         s11, sp, 13
                  sb           s3, -21(tp)
                  add          t1, sp, s9
                  lhu          a3, 28(tp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1433 #start riscv_load_store_rand_instr_stream_0
                  sltu         t3, s11, a6
                  auipc        a3, 599372
                  xor          a2, s11, t1
                  lbu          a7, 13(sp)
                  and          s2, t1, a7
                  andi         s8, a6, -1678
                  slt          gp, s6, t3
                  srai         t2, s0, 14
                  lui          s11, 111462
                  srl          s1, s9, s2
                  and          s8, gp, a4
                  ori          a7, s3, -2037
                  lbu          s9, -32(sp)
                  and          s7, s9, a1
                  xor          tp, s5, t3
                  add          a1, zero, gp
                  addi         s3, ra, 1571
                  sh           t5, -23(sp)
                  ori          s11, t3, -133
                  sb           t4, 20(sp)
                  lbu          t0, 16(sp)
                  sltiu        s0, s10, 1703
                  lbu          s8, 29(sp)
                  srai         s7, s3, 22
                  and          t0, s1, t0
                  lbu          gp, -3(sp)
                  lbu          a2, 24(sp)
                  add          tp, tp, ra
                  lhu          s5, 19(sp)
                  sll          t3, a0, a7
                  nop
                  nop
                  srai         s0, s5, 21
                  lbu          t4, -3(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a1, region_1+1913 #start riscv_load_store_rand_instr_stream_2
                  lb           s1, 30(a1)
                  lbu          a0, 55(a1)
                  lbu          zero, -13(a1)
                  lh           a4, -27(a1)
                  ori          s11, t5, -218
                  lbu          s2, 28(a1)
                  nop
                  lbu          a2, 46(a1)
                  add          s11, s4, t5
                  lbu          t6, 22(a1)
                  srai         s11, s10, 0
                  lh           s0, -29(a1)
                  sb           s4, 44(a1)
                  sb           zero, 18(a1)
                  lh           s1, -61(a1)
                  srl          a0, a1, s4
                  lbu          a7, -16(a1)
                  lui          s1, 564678
                  lb           s4, -57(a1)
                  or           sp, t6, t2
                  xor          t1, a0, a6
                  srl          t6, a3, s7
                  lb           s9, -62(a1)
                  nop
                  sb           ra, 47(a1)
                  lb           s1, -35(a1)
                  and          s11, t4, a0
                  andi         t3, s9, 660
                  lbu          t2, 43(a1)
                  sb           sp, -62(a1)
                  lbu          t2, -22(a1)
                  lb           s10, 44(a1)
                  srai         t3, ra, 1
                  sb           a3, 40(a1) #end riscv_load_store_rand_instr_stream_2
                  la           a5, region_1+234 #start riscv_load_store_rand_instr_stream_3
                  lb           s2, -49(a5)
                  ori          t6, a4, -1903
                  lbu          a3, -48(a5)
                  nop
                  slt          t1, ra, s3
                  sltiu        s8, s10, -1524
                  slti         tp, a4, -1135
                  sb           s5, 38(a5)
                  sltiu        s11, sp, -757
                  sltu         s2, t2, tp
                  srl          t3, s3, a5
                  lh           t4, 26(a5)
                  add          sp, a6, s8
                  slti         s1, a7, -1677
                  add          a1, sp, a1
                  sltu         t4, t0, a6
                  nop
                  xori         s11, gp, 1785
                  sll          a3, gp, s10
                  sb           s2, -59(a5)
                  xori         s10, t3, 1676
                  lb           a7, -7(a5)
                  lb           a0, 49(a5)
                  nop
                  sra          s2, t4, a3
                  lbu          a3, 23(a5)
                  nop
                  xori         ra, s5, -1640
                  sll          a2, s4, s5
                  sltiu        s1, t4, 53
                  xor          a1, s6, s0
                  sw           s5, 14(a5)
                  sb           s6, 30(a5) #end riscv_load_store_rand_instr_stream_3
                  la           t6, region_0+1841 #start riscv_load_store_rand_instr_stream_1
                  srli         t4, t2, 23
                  lb           zero, 51(t6)
                  or           s9, s3, ra
                  lbu          s7, 36(t6)
                  srl          s9, sp, gp
                  slti         a7, a1, 1243
                  add          s4, s8, s8
                  lb           s9, 18(t6)
                  sub          tp, s2, s8
                  srai         a2, s5, 28
                  andi         a4, s3, -1588
                  srai         s3, a7, 29
                  sw           sp, -21(t6)
                  lbu          gp, -15(t6)
                  lbu          s10, -10(t6)
                  sltu         gp, tp, t2
                  lbu          s1, 18(t6)
                  lh           s9, 51(t6)
                  lb           t3, 18(t6)
                  lb           t3, -20(t6)
                  auipc        s9, 739689
                  lb           a7, 43(t6)
                  xor          s10, s7, s1
                  sb           t3, 32(t6) #end riscv_load_store_rand_instr_stream_1
                  sub          ra, ra, sp
                  or           t0, a6, zero
                  lui          s5, 518022
                  bgeu         t2, a0, 7f
                  slli         ra, tp, 14
                  ori          t0, s9, -1317
                  bge          gp, a1, 8f
7:                auipc        a4, 560767
8:                sltiu        ra, s9, 568
                  srli         a7, s2, 6
                  blt          a6, s11, 30f
                  bgeu         sp, sp, 30f
                  slli         s9, s10, 9
                  bltu         s4, t6, 33f
                  sub          tp, s4, a6
                  sub          s8, t6, s5
                  xori         sp, s7, 1387
                  slli         s9, a6, 26
                  sub          s2, a3, t1
                  srl          s4, a3, sp
                  slt          s11, a6, s4
                  bne          t6, t2, 26f
                  slli         gp, t5, 22
                  slt          s3, a7, t4
                  or           s5, t5, s0
                  slli         t3, a5, 19
26:               xori         s8, s8, 624
                  beq          t3, t3, 43f
                  xori         s7, ra, -626
                  bltu         t6, t0, 32f
30:               add          t0, t3, t1
                  or           a5, t4, sp
32:               add          t2, a2, ra
33:               andi         gp, s5, 1488
                  andi         ra, s9, -987
                  lui          s5, 453474
                  bne          a4, s5, 38f
                  beq          a1, t0, 44f
38:               srl          a4, a5, a5
                  bge          s4, gp, 44f
                  and          sp, a1, t2
                  bge          a4, s0, 56f
                  bltu         s7, t5, 48f
43:               sub          a4, s5, zero
44:               sub          t6, a5, s11
                  slti         s9, t2, -1833
                  and          ra, t1, ra
                  bltu         t0, t6, 56f
48:               ori          a3, a3, -1897
                  bne          ra, s5, 60f
                  add          s10, tp, s6
                  addi         gp, tp, -1611
                  xori         t3, a3, -517
                  bne          a6, a5, 66f
                  xori         s1, s2, -824
                  bge          s8, s6, 57f
56:               sltu         s11, a0, t3
57:               addi         ra, tp, 1100
                  sll          a3, gp, s3
                  srli         a3, s8, 23
60:               bgeu         t6, a3, 65f
                  and          s0, s9, a6
                  srli         a0, zero, 18
                  or           s3, gp, s3
                  xor          s8, s6, t0
65:               auipc        a4, 26121
66:               bne          t3, ra, 80f
                  sra          s8, a2, s5
                  beq          s7, a7, 70f
                  xori         s7, s8, 85
70:               srl          zero, t0, s1
                  bne          a4, gp, 86f
                  srl          s0, s11, a5
                  slli         t6, s7, 0
                  bne          s0, a6, 79f
                  ori          a7, s1, 240
                  addi         s1, a2, -680
                  sltu         s8, s3, a5
                  slti         s8, s3, 897
79:               addi         s9, tp, 298
80:               bltu         a0, s8, 82f
                  xor          t1, s8, a1
82:               beq          t6, s1, 94f
                  addi         t6, s0, -634
                  addi         s10, s5, -232
                  xor          s10, ra, a2
86:               nop
                  sltiu        t6, zero, 1361
                  sub          a5, s9, a4
                  bgeu         t4, a1, 91f
                  srli         s11, t2, 31
91:               addi         gp, tp, -39
                  auipc        s0, 1003568
                  srli         s8, a6, 8
94:               ori          a2, a0, 550
                  sub          s3, s3, s0
                  sltu         a7, s11, s8
                  srli         s3, t3, 0
                  srli         a7, a1, 13
                  sub          s11, t0, a6
                  sll          zero, ra, a0
                  xori         s9, tp, -1849
                  bgeu         s4, a1, 119f
                  beq          a0, zero, 114f
                  bne          t4, s1, 120f
                  blt          s6, a4, 108f
                  lui          s0, 895389
                  nop
108:              bne          a3, a1, 118f
                  sll          s9, t0, t2
                  slt          s8, a5, s2
                  beq          tp, a3, 126f
                  slli         a4, s2, 22
                  addi         s2, t4, 249
114:              sll          s3, sp, s7
                  bgeu         zero, s4, 126f
                  srl          s5, s8, t0
                  or           t1, s7, s8
118:              srl          t3, a0, t6
119:              sub          a0, s1, a4
120:              sltiu        s11, gp, 1150
                  slti         t2, a0, 1066
                  srli         a3, s4, 30
                  bge          s9, s1, 126f
                  addi         a4, t3, 746
                  slt          t1, t0, ra
126:              srli         s2, t4, 16
                  sra          a0, s0, s1
                  bge          a1, gp, 133f
                  slt          s7, s5, t5
                  and          t0, a0, s9
                  addi         s0, t6, -1897
                  or           s3, s1, a6
133:              lui          a5, 665137
                  bge          ra, a0, 140f
                  lui          s3, 911547
                  addi         a0, s10, 1531
                  and          a2, s3, a6
                  bgeu         s6, t5, 154f
                  beq          s4, a3, 141f
140:              and          s11, t1, s5
141:              bgeu         s9, s7, 153f
                  sltu         s3, s6, t3
                  xori         s3, a0, 1513
                  add          t3, s8, s5
                  or           zero, t3, a7
                  auipc        ra, 968790
                  srai         s5, a5, 16
                  sltiu        s2, t4, 468
                  add          a4, s8, a4
                  bltu         a1, s9, 152f
                  xor          s1, a2, a0
152:              sltiu        tp, sp, 608
153:              slti         s3, s4, -241
154:              and          a5, gp, s11
                  srl          a7, a4, s3
                  slt          a2, s1, a2
                  blt          zero, t6, 177f
                  sltiu        t6, s6, 376
                  beq          s11, s8, 179f
                  bltu         a1, s10, 165f
                  bge          s8, a4, 163f
                  nop
163:              srl          s3, sp, t6
                  addi         s0, s10, 419
165:              srai         s3, t5, 3
                  or           a5, t1, a0
                  blt          s5, ra, 172f
                  xori         sp, a6, -1143
                  bne          t6, s8, 178f
                  bgeu         t3, a3, 183f
                  sub          t3, a0, zero
172:              addi         sp, a3, 251
                  slli         a5, s2, 9
                  ori          a3, a2, 1551
                  bne          gp, s8, 178f
                  beq          t4, t5, 193f
177:              lui          a7, 100507
178:              slti         s8, a6, 273
179:              andi         s8, t6, -597
                  andi         t2, s8, -1523
                  or           a4, s2, s1
                  ori          tp, a2, -585
183:              sltu         s4, s1, a7
                  add          t0, s11, t0
                  srl          s8, s10, zero
                  srai         t3, s9, 3
                  beq          s2, t6, 202f
                  andi         s8, a1, -1124
                  bltu         a2, s11, 205f
                  bgeu         a1, a2, 204f
                  sltu         a1, s5, a5
                  nop
193:              andi         s5, t3, -1174
                  auipc        s8, 508466
                  sll          a1, s5, s11
                  beq          ra, a4, 207f
                  bgeu         t2, t5, 199f
                  and          zero, s9, a1
199:              bltu         s7, s9, 201f
                  and          s0, a1, a4
201:              srli         a7, gp, 16
202:              bge          a7, a5, 204f
                  srli         s4, s6, 1
204:              slli         t6, a7, 28
205:              sltiu        a1, a3, 6
                  ori          gp, sp, -1790
207:              sra          a4, zero, s11
                  sll          ra, s6, t4
                  slti         s4, s8, 914
                  xori         s10, s0, 1137
                  bgeu         ra, s0, 216f
                  nop
                  srai         sp, gp, 22
                  andi         s4, s11, 1740
                  xori         s5, s5, 1415
216:              slli         t0, s3, 21
                  bgeu         s6, a5, 236f
                  sll          t2, a3, zero
                  srl          s10, s7, s8
                  sub          t4, s3, ra
                  nop
                  beq          a6, a0, 232f
                  slli         s9, a5, 21
                  addi         a5, a2, -1250
                  sub          a5, a7, ra
                  and          a3, s1, s9
                  bge          s10, t0, 231f
                  xori         t4, s6, -1412
                  xori         sp, s8, 666
                  xor          s10, a5, ra
231:              bltu         a2, t2, 238f
232:              sra          s3, s5, a6
                  and          gp, a5, s9
                  bne          ra, a2, 248f
                  sll          t1, s8, a0
236:              bgeu         a6, s3, 253f
                  slti         t2, a1, 601
238:              bne          s4, t1, 242f
                  srli         s2, t0, 11
                  sub          a0, a0, t3
                  add          gp, t0, s6
242:              or           s10, t5, t3
                  lui          a0, 570156
                  xor          t0, gp, a7
                  beq          s7, s10, 260f
                  bgeu         a7, t0, 266f
                  or           s10, s8, zero
248:              srli         s4, t1, 14
                  sltiu        s5, a5, -1003
                  bne          a1, s2, 252f
                  sltu         s2, a3, gp
252:              ori          s10, a0, 1379
253:              nop
                  slli         t3, s6, 26
                  addi         sp, a6, -869
                  bltu         t5, s0, 265f
                  auipc        s11, 787793
                  srli         a5, t3, 18
                  bne          a2, sp, 269f
260:              ori          t4, s3, 962
                  beq          gp, a5, 263f
                  ori          t1, tp, 1468
263:              xor          a1, a1, t0
                  ori          s1, t2, 1519
265:              slti         s0, a2, 365
266:              bge          s0, a4, 282f
                  slti         s8, gp, 494
                  bgeu         a0, s2, 273f
269:              bltu         t5, a2, 271f
                  srai         s8, t3, 27
271:              xor          t6, s11, a4
                  sltiu        s2, a6, 628
273:              nop
                  blt          a3, s5, 285f
                  bgeu         t6, zero, 280f
                  sltiu        s8, s8, 1090
                  xor          zero, a2, s10
                  bge          s4, s8, 284f
                  sub          s1, s8, t2
280:              xori         s2, s6, 136
                  nop
282:              add          zero, sp, a3
                  add          a7, a1, s7
284:              slli         s8, a5, 8
285:              srli         a7, s11, 8
                  bge          s0, tp, 291f
                  bne          a1, s11, 290f
                  auipc        s2, 464883
                  slli         gp, a2, 18
290:              bgeu         a5, zero, 297f
291:              xor          s4, ra, s0
                  bltu         s9, s1, 312f
                  bge          a3, a1, 312f
                  slti         s10, sp, -907
                  sra          s10, t5, s2
                  sub          a1, ra, t3
297:              auipc        a0, 713762
                  add          s9, a4, tp
                  andi         t6, s9, -114
                  lui          sp, 65025
                  beq          s1, a2, 303f
                  blt          s10, s4, 313f
303:              or           a0, t2, a6
                  sltu         s5, a3, s6
                  nop
                  addi         t2, t5, -1081
                  srli         t2, s2, 0
                  xor          a4, sp, t3
                  bltu         t1, s1, 325f
                  or           a1, a5, s1
                  beq          s11, s0, 314f
312:              bltu         s2, t2, 314f
313:              slli         s4, t2, 26
314:              nop
                  bgeu         t0, s9, 320f
                  srai         sp, a0, 31
                  bne          s11, s4, 319f
                  and          s8, gp, t1
319:              srl          a3, s8, s5
320:              bge          s8, t2, 335f
                  sltiu        sp, a2, 1797
                  sub          s3, s4, s10
                  slt          t2, s11, s3
                  sra          s4, t3, t1
325:              slti         a4, t2, 1559
                  blt          t5, gp, 339f
                  add          a5, tp, s10
                  add          s1, ra, s6
                  sltu         a3, s4, gp
                  ori          t6, tp, -307
                  sra          s8, t0, tp
                  andi         s9, s11, -311
                  xori         s2, s3, -649
                  xori         t0, t0, -1080
335:              andi         t2, t5, -835
                  sll          s1, t4, zero
                  bne          s4, s10, 349f
                  andi         s4, a3, 571
339:              bge          t0, a0, 345f
                  srli         a7, a0, 22
                  xor          t1, s9, a7
                  xor          a4, zero, t2
                  bge          t4, tp, 355f
                  bne          a2, a3, 361f
345:              bltu         s1, a2, 361f
                  xor          s3, s10, s8
                  blt          gp, s0, 352f
                  xor          a7, a5, s10
349:              ori          a0, a4, -126
                  lui          s11, 238404
                  sltu         s3, a3, t4
352:              addi         t4, s8, 129
                  srli         s0, t1, 14
                  bge          s4, t2, 374f
355:              sltiu        a4, a6, 339
                  auipc        s2, 955423
                  lui          s4, 556796
                  ori          t0, zero, 1660
                  sltiu        s2, a6, -1261
                  and          s1, a6, sp
361:              and          t1, t6, a1
                  slt          tp, s8, a5
                  bne          zero, ra, 366f
                  slti         s5, s1, 971
                  blt          t1, t6, 380f
366:              lui          s5, 76718
                  andi         a1, a4, 121
                  and          s7, s10, s1
                  xor          a7, s4, tp
                  slti         a7, t4, -829
                  srli         s11, sp, 22
                  andi         t2, s10, 1094
                  auipc        a2, 392725
374:              slt          a0, sp, a3
                  lui          t1, 526982
                  ori          s8, a1, -991
                  srai         s4, a3, 13
                  bge          zero, gp, 380f
                  lui          t0, 288175
380:              bne          s5, s3, 385f
                  bge          t4, a4, 384f
                  nop
                  addi         t0, a2, -1051
384:              slli         s1, t5, 23
385:              bgeu         a2, ra, 387f
                  srai         s7, zero, 24
387:              bne          s5, gp, 397f
                  sll          s11, a7, a1
                  sra          sp, s11, t4
                  slli         t4, a7, 3
                  lui          gp, 775093
                  sra          s9, a6, t3
                  sltiu        a7, t6, -656
                  sll          a1, s8, t1
                  sltu         t3, a7, s2
                  addi         s7, a3, -1970
397:              or           s2, s6, s6
                  andi         t0, t4, -130
                  slli         a3, t3, 16
                  bge          s4, s6, 411f
                  xori         a4, s10, -1724
                  sub          s10, a7, a1
                  srli         a3, t2, 17
                  and          t4, a5, zero
                  beq          a2, t3, 414f
                  xori         t1, s0, 1511
                  add          t4, s8, s11
                  xori         s1, t1, -1111
                  add          s0, s3, a5
                  addi         ra, a7, -1529
411:              srli         t2, s4, 25
                  blt          s6, a7, 427f
                  lui          tp, 641966
414:              nop
                  bne          t0, t3, 420f
                  sub          t6, a0, a6
                  srli         a0, t0, 13
                  add          a7, s9, s7
                  sltu         a0, a4, s11
420:              sltiu        s3, a6, -783
                  beq          t6, t4, 435f
                  lui          t4, 885280
                  xor          t3, t3, t2
                  ori          t1, a0, -1415
                  la           gp, sub_1
                  nop
                  srl          t4, gp, zero
                  xori         t4, a0, -959
                  addi         gp, gp, -973
                  sra          a7, s1, a5
                  sra          t2, a3, s2
                  xor          s0, s5, a4
                  sra          zero, s3, s1
                  bltu         t0, zero, main_j2 #branch to jump instr
                  nop
main_j2:          jalr         s11, gp, 974 #jump main -> sub_1
                  bgeu         a4, t3, 444f
                  slti         gp, a4, 865
                  sll          s5, a0, ra
427:              sll          a2, s5, s7
                  and          s8, t2, t0
                  bgeu         t6, a0, 445f
                  addi         a3, ra, 1536
                  nop
                  srli         a4, a3, 1
                  auipc        tp, 721516
                  bgeu         s1, s7, 436f
435:              sltu         s0, s5, a2
436:              xori         a5, ra, 201
                  sll          a5, s10, s3
                  sltu         s0, t5, a1
                  sltu         tp, t6, gp
                  sltiu        a1, t6, 490
                  slti         s8, gp, -1237
                  ori          gp, t3, 1697
                  slti         sp, a1, -528
444:              bne          s0, a0, 463f
445:              sltu         a3, t3, s6
                  xor          ra, gp, a1
                  bltu         s10, t2, 460f
                  sltu         a3, s11, a0
                  sra          t0, s0, s6
                  bltu         s4, t6, 455f
                  addi         t0, t1, -1198
                  bltu         s8, sp, 454f
                  lui          a2, 285752
454:              srai         s9, t1, 25
455:              addi         gp, a4, -837
                  slli         s0, t5, 0
                  bne          gp, s5, 468f
                  slli         s3, s6, 22
                  addi         a3, s4, 97
460:              xori         sp, a2, -89
                  sltiu        t4, t5, 1480
                  lui          zero, 887380
463:              sll          zero, t1, s2
                  auipc        s0, 774603
                  slli         s9, t4, 13
                  auipc        a5, 611745
                  bgeu         s3, zero, 469f
468:              srl          gp, ra, gp
469:              xor          a5, t4, s9
                  add          zero, a0, s1
                  slti         a3, s2, -1580
                  addi         s8, s2, 1807
                  sltiu        s9, t4, -783
                  sll          a7, a6, sp
                  xori         s2, s9, -1516
                  la           t4, sub_1
                  xor          ra, s2, a2
                  nop
                  auipc        t3, 26973
                  addi         t4, t4, 906
                  sll          tp, s7, t2
                  add          s3, a7, s2
                  blt          s0, t3, main_j1 #branch to jump instr
                  auipc        t3, 500762
                  srl          gp, ra, s0
main_j1:          jalr         s11, t4, -906 #jump main -> sub_1
                  sub          tp, t5, t1
                  srli         a5, a0, 18
                  bltu         t6, a2, 484f
                  srli         s3, a4, 18
                  lui          t1, 752281
                  ori          s0, a0, 1662
                  andi         s7, a0, 1965
                  sub          s4, t6, s10
                  bne          t1, a2, 485f
484:              sltu         s9, zero, t6
485:              bgeu         t0, s10, 489f
                  addi         s9, s6, -1407
                  blt          a2, s3, 492f
                  bltu         a2, gp, 500f
489:              bge          tp, a6, 504f
                  bge          s11, s8, 510f
                  slli         s4, ra, 17
492:              srli         t2, t6, 26
                  or           s0, s3, a5
                  sltiu        s0, s0, 1681
                  ori          s5, t1, 973
                  andi         s11, gp, -247
                  bgeu         a5, s11, 500f
                  add          zero, sp, sp
                  and          s4, t5, t5
500:              sltu         s2, a7, a1
                  bltu         ra, t5, 503f
                  sub          s2, t3, s1
503:              srai         s4, a6, 2
504:              xori         a0, a4, -469
                  xori         s7, ra, -1952
                  addi         a1, a7, -898
                  sltu         sp, gp, s2
                  beq          a3, a0, 513f
                  bgeu         s11, s5, 519f
510:              ori          s11, a3, -1280
                  sll          s2, tp, t4
                  beq          s10, s6, 528f
513:              bgeu         gp, a2, 522f
                  bgeu         a3, a6, 529f
                  bgeu         a4, s5, 529f
                  or           a5, t3, ra
                  bltu         a3, t6, 522f
                  xor          a2, t2, s9
519:              blt          t0, s7, 521f
                  xori         a0, a2, 292
521:              add          a7, ra, a5
522:              sll          t4, t2, t2
                  addi         t3, tp, -791
                  sltu         a0, s4, s7
                  srai         zero, a0, 20
                  xor          s10, s5, zero
                  blt          ra, a6, 538f
528:              slti         zero, s7, -384
529:              slti         s1, t3, -493
                  srai         s9, s4, 0
                  blt          s7, a4, 542f
                  andi         t4, s10, 1637
                  xori         s5, sp, 546
                  bne          t3, t5, 536f
                  sra          a3, t2, ra
536:              sltiu        s8, t4, -822
                  blt          s10, a7, 541f
538:              bne          t3, s8, 558f
                  lui          a0, 1036532
                  srl          sp, t5, t0
541:              sltu         t6, a5, a6
542:              bltu         s6, t2, 555f
                  beq          gp, t6, 545f
                  ori          tp, s1, 525
545:              add          s8, s8, s7
                  sltu         a3, t2, zero
                  or           a1, sp, s0
                  srli         s10, zero, 24
                  lui          s9, 548628
                  andi         zero, s5, -1009
                  slt          s0, t4, s10
                  xor          ra, t6, s11
                  srai         a5, ra, 5
                  sra          a3, s4, t1
555:              auipc        s7, 684909
                  xori         s3, s11, -983
                  bne          s9, s1, 559f
558:              sltiu        s7, ra, 1382
559:              srl          a3, a0, s10
                  srli         a2, s5, 7
                  slli         gp, s10, 8
                  and          s1, s7, t6
                  blt          sp, s9, 568f
                  srli         t4, s2, 20
                  sub          a1, t6, ra
                  sltu         sp, a0, s11
                  xori         t2, s0, 1957
568:              sll          tp, t5, s4
                  slli         sp, tp, 31
                  slli         a4, a3, 29
                  blt          s7, t3, 590f
                  slti         a4, t0, 336
                  xor          a4, zero, a7
                  and          t2, t5, s6
                  srli         a3, a4, 21
                  sltu         t6, zero, t4
                  sltiu        t1, t6, -839
                  andi         a5, s10, 1757
                  sub          sp, s10, s4
                  beq          s4, sp, 597f
                  or           s8, a1, s0
                  srl          t3, s11, t2
                  addi         s5, sp, -1714
                  ori          ra, t0, 671
                  addi         s5, s11, 1488
                  blt          s3, t3, 593f
                  andi         zero, ra, 1586
                  bgeu         s7, s10, 594f
                  ori          t2, t0, 2025
590:              nop
                  sll          s5, s8, s9
                  sra          t4, s6, s1
593:              lui          a3, 965708
594:              slli         s7, a3, 21
                  bltu         s1, a2, 611f
                  auipc        s0, 290650
597:              bne          a6, t3, 599f
                  xori         a2, sp, 1456
599:              lui          a0, 885307
                  sra          a2, s0, s10
                  andi         ra, gp, 1448
                  slti         s4, s10, -1298
                  xor          tp, gp, s1
                  sub          t0, s11, a0
                  bgeu         s6, s9, 608f
                  nop
                  sub          a1, s11, t1
608:              bgeu         a5, s5, 610f
                  slli         a1, a1, 16
610:              sltu         a3, sp, a4
611:              beq          s8, t1, 613f
                  and          gp, a7, t4
613:              beq          t0, a7, 616f
                  bne          s4, a2, 621f
                  sltu         t4, t6, t3
616:              xor          s7, a5, t5
                  slli         s5, ra, 15
                  beq          t4, t3, 623f
                  srl          a2, s11, a2
                  and          a4, a1, a0
621:              srl          a1, s10, s3
                  bgeu         a3, s3, 638f
623:              slti         t1, s10, -1229
                  xori         t3, a6, 1763
                  xori         s7, s3, -118
                  sra          s5, s10, s1
                  bltu         t5, zero, 632f
                  slli         s9, t1, 21
                  xori         a1, s8, 1615
                  sub          a5, sp, a6
                  slti         t3, s9, 1847
632:              slli         t3, s9, 28
                  blt          t4, t5, 636f
                  bgeu         s5, tp, 636f
                  xori         s10, s7, -1895
636:              xori         tp, a6, -290
                  slli         gp, a3, 28
638:              slli         s9, sp, 23
                  addi         ra, s1, -108
                  xori         a2, t5, 1423
                  ori          s7, s4, -1837
                  auipc        s4, 334741
                  bne          t1, t4, 654f
                  slti         t4, zero, 311
                  slt          s7, s10, a7
                  bne          a4, s3, 666f
                  sltiu        a7, tp, -1393
                  srl          s2, ra, t0
                  ori          s5, s2, -397
                  and          t0, a4, a1
                  or           a4, t4, t2
                  add          t3, gp, a6
                  andi         s11, t5, -632
654:              sltu         s4, t4, t2
                  and          s11, t0, gp
                  sra          s10, s11, s1
                  auipc        tp, 415494
                  sub          a0, t6, a6
                  sub          s2, s4, t0
                  lui          tp, 198118
                  slti         s9, a6, -843
                  ori          s5, sp, 1552
                  blt          s7, a3, 677f
                  srl          s0, s1, a2
                  xor          s3, s7, s4
666:              slli         a2, sp, 21
                  andi         s5, t0, 248
                  xori         s1, tp, 305
                  sltu         sp, t1, tp
                  bge          s8, s8, 674f
                  and          a1, s4, gp
                  or           gp, ra, s3
                  xori         a5, a1, -1394
674:              or           s2, a5, a3
                  slti         a0, a5, -149
                  sra          s4, s3, s9
677:              slti         a0, t5, -1204
                  add          a3, zero, a7
                  bltu         a5, zero, 692f
                  andi         a0, a6, 236
                  slli         t4, s4, 0
                  sll          a3, ra, s5
                  slli         s8, s0, 19
                  slli         t1, t4, 19
                  ori          a3, zero, -1168
                  slti         t6, s9, -1686
                  srl          a2, s10, s7
                  sll          t0, s3, t2
                  auipc        t1, 248492
                  ori          s10, t4, -934
                  bltu         ra, s5, 711f
692:              bge          ra, t2, 698f
                  and          s2, t2, t3
                  blt          t4, zero, 696f
                  add          a3, s10, ra
696:              slli         s1, s11, 13
                  nop
698:              slli         a7, s1, 0
                  add          sp, tp, a2
                  beq          t4, s0, 710f
                  xor          a1, s9, s3
                  bne          t6, t6, 717f
                  nop
                  add          s0, t6, s8
                  bltu         s0, s4, 722f
                  srai         s2, s11, 12
                  sra          zero, s0, s11
                  blt          t6, t0, 720f
                  auipc        zero, 660816
710:              sltu         t0, tp, a3
711:              xor          t1, s8, t2
                  srli         gp, a6, 23
                  sra          sp, t1, a3
                  slli         zero, s1, 25
                  or           s8, a5, tp
                  sltiu        s2, s9, 199
717:              addi         t4, tp, 83
                  slt          s2, s7, s11
                  beq          s11, gp, 730f
720:              auipc        s8, 932159
                  bgeu         s4, a4, 723f
722:              srai         t3, t0, 16
723:              lui          s0, 498092
                  slti         t4, s0, -1852
                  bltu         ra, a1, 741f
                  sltu         s4, s9, s8
                  slli         t0, t1, 6
                  beq          s3, sp, 733f
                  auipc        tp, 98423
730:              bgeu         a0, a3, 739f
                  nop
                  slti         gp, a5, 1752
733:              bne          s11, a7, 738f
                  bltu         tp, s10, 753f
                  and          t6, a4, t6
                  blt          a5, t1, 738f
                  slt          ra, t6, s2
738:              sll          s7, gp, s3
739:              lui          a2, 570642
                  sra          s5, sp, s11
741:              srli         t3, a2, 5
                  sltiu        s3, s2, -482
                  lui          s3, 210850
                  srl          s8, ra, s8
                  sra          a5, s2, s11
                  andi         a3, s5, 1195
                  xori         a5, s10, -1988
                  sub          a3, zero, a0
                  auipc        a5, 476448
                  bne          gp, t0, 758f
                  bne          t0, t3, 757f
                  bge          a0, t2, 756f
753:              slli         a4, zero, 13
                  bne          t5, a3, 758f
                  bgeu         a0, s6, 758f
756:              slli         a2, s2, 21
757:              ori          t1, s6, 1290
758:              auipc        s5, 742640
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            bge          t2, t6, sub_3_stack_p
sub_3_stack_p:    addi         t5, t5, -60
                  srli         a5, s4, 5
                  add          s3, s0, gp
                  nop
                  sw           s11, 4(t5)
                  nop
                  auipc        s3, 245544
                  bltu         s4, tp, 15f
                  or           zero, a3, t4
                  xori         a5, a3, -117
                  andi         a7, s6, 1682
                  sub          s1, a7, s7
                  bge          s9, ra, 20f
                  lui          s2, 581352
                  addi         a4, s4, -338
                  beq          gp, t3, 20f
                  blt          a1, s2, 12f
                  sltiu        t4, s11, -669
12:               srl          s1, sp, a5
                  addi         a7, s11, -1073
                  xori         ra, s0, 431
15:               or           a4, a2, s11
                  ori          zero, a6, -1417
                  blt          a5, gp, 20f
                  sltu         t0, s0, gp
                  bge          a2, sp, 20f
20:               sub          s7, t6, t5
                  lw           s11, 4(t5)
                  auipc        a4, 432707
                  srl          t2, s3, s4
                  addi         t5, t5, 60
                  addi         tp, s8, 2003
                  and          zero, s0, s10
34:               addi x8, x27, 0
34:               jalr x8, x8, 0
sub_4:            slli         s7, a3, 0
                  andi         gp, s1, -753
                  blt          ra, t3, sub_4_stack_p
                  sub          a1, s10, a0
sub_4_stack_p:    addi         t5, t5, -64
                  sw           s11, 4(t5)
                  nop
                  la           a5, region_0+515 #start riscv_load_store_rand_instr_stream_1
                  lh           a1, 7(a5)
                  sb           a4, 10(a5)
                  lb           s7, 13(a5)
                  lh           gp, -1(a5)
                  lb           s1, 16(a5)
                  lui          zero, 975926
                  sb           zero, 10(a5)
                  auipc        s7, 993004
                  lbu          s11, 7(a5)
                  lhu          s1, 13(a5)
                  lhu          tp, 13(a5)
                  ori          s2, t1, -169
                  andi         s7, t5, 177
                  lb           a1, 6(a5)
                  lb           t0, 2(a5)
                  sb           a7, -9(a5)
                  lhu          a0, 15(a5)
                  auipc        s7, 788896
                  auipc        s5, 53452
                  lhu          s8, -11(a5)
                  add          ra, sp, a5
                  slt          t2, sp, s5
                  xori         t3, s4, -865
                  lbu          s0, 12(a5)
                  lw           t0, 9(a5)
                  lbu          a3, -10(a5)
                  lb           t1, 6(a5)
                  lbu          t2, 8(a5)
                  lbu          a1, 14(a5)
                  sb           ra, -13(a5)
                  sb           sp, -3(a5)
                  xori         a1, t4, -82
                  slti         t3, s4, -658
                  sltiu        t6, a7, 1867
                  lbu          s5, -12(a5)
                  lb           t6, 2(a5)
                  sltiu        t6, s9, 1572
                  sltu         a2, t3, a7
                  sb           t0, 6(a5)
                  sra          a4, s7, gp
                  slti         a2, a0, -1819
                  sw           ra, 5(a5)
                  lbu          t6, -14(a5) #end riscv_load_store_rand_instr_stream_1
                  blt          a2, s5, 16f
                  nop
                  nop
                  auipc        s3, 229720
                  nop
                  and          a7, s8, t0
                  blt          t5, a3, 15f
                  add          s2, t3, a2
                  sltiu        t6, s3, -1623
                  slli         a3, t2, 25
                  ori          s8, s0, 1322
                  or           s2, t6, s7
                  lui          a1, 1032390
                  nop
                  sltiu        t6, zero, -1593
15:               slt          s0, zero, s7
16:               sra          s11, s10, s2
                  andi         t4, a6, 102
                  add          s5, t4, s2
                  srli         t2, t3, 12
                  addi         s11, s9, -147
                  xori         a0, a6, 918
                  sltiu        s1, a3, -1869
                  or           a5, s6, zero
                  bne          s5, s10, 36f
                  slti         s10, gp, 689
                  srai         s2, t4, 12
                  bltu         t1, gp, 33f
                  srl          s9, s10, t0
                  auipc        t0, 844848
                  addi         s4, t4, -252
                  blt          a4, a4, 42f
                  ori          t1, a5, 649
33:               sltiu        ra, s2, 1919
                  lui          s0, 550575
                  sub          a3, sp, gp
36:               sltiu        t2, s10, 852
                  bgeu         a0, s0, 41f
                  addi         s5, s7, -1170
                  blt          tp, t0, 44f
                  or           a2, s6, s4
41:               xori         s9, t6, 1069
42:               blt          a7, a0, 51f
                  bne          t5, t3, 57f
44:               bne          a2, a7, 60f
                  nop
                  beq          a3, s5, 47f
47:               slt          t3, t6, s1
                  bgeu         t3, sp, 56f
                  nop
                  beq          s1, s10, 70f
51:               sltiu        s10, s3, 1290
                  and          a4, sp, a2
                  slt          s10, t0, s10
                  andi         zero, s3, 158
                  ori          ra, s0, 2047
56:               auipc        a0, 415949
57:               andi         ra, s7, -1717
                  add          t4, s11, s9
                  sltu         t0, t1, a3
60:               bne          s6, a3, 73f
                  xor          gp, zero, s4
                  srli         a1, a7, 9
                  nop
                  add          a0, s8, s5
                  sra          a3, t4, s8
                  srai         s5, t0, 30
                  sltiu        s9, t6, -1552
                  bne          a3, s3, 82f
                  sll          s0, s10, a3
70:               auipc        a5, 564086
                  srl          t1, s5, s4
                  blt          sp, s3, 92f
73:               srl          tp, s6, tp
                  bge          a4, a4, 90f
                  beq          s8, ra, 88f
                  lui          a1, 740103
                  srli         s8, a6, 16
                  slti         s3, s7, -391
                  ori          a7, a5, -1693
                  bgeu         a7, s2, 85f
                  ori          t2, s11, 792
82:               sub          t6, s11, a7
                  andi         s9, a4, 751
                  slli         s7, t2, 23
85:               sll          a2, a5, ra
                  beq          a6, a1, 90f
                  sll          sp, t0, a5
88:               sub          a7, gp, s9
                  auipc        a4, 430030
                  srli         t3, a1, 28
                  addi         s5, t0, 794
                  sra          s4, s0, gp
                  sll          a5, a5, a0
                  sra          t1, a2, a0
                  andi         tp, s1, 955
sub_4_j7:         jal          s11, sub_5 #jump sub_4 -> sub_5
90:               addi         s3, s8, -682
                  and          t3, t0, a6
92:               lui          t6, 1043534
                  slt          gp, a2, tp
                  slti         t1, s0, 524
                  lui          gp, 21973
                  bgeu         a0, t1, 103f
                  nop
                  sll          s5, t6, s2
                  auipc        s3, 939450
                  auipc        s8, 733057
                  srai         a4, tp, 27
                  or           s1, a2, zero
103:              addi         a0, a4, -653
                  srl          s11, s0, t5
                  addi         s4, s3, 80
                  srai         t0, a6, 8
                  srai         t2, a0, 19
                  xori         gp, s6, -1348
                  bgeu         t2, tp, 114f
                  sltiu        s1, a0, -1568
                  srl          a5, gp, s1
                  and          sp, t3, t0
                  sll          t1, s3, s1
114:              sltiu        a7, t2, 603
                  srli         t6, s7, 13
                  ori          a7, s6, 1463
                  slt          a5, tp, s4
                  bltu         s4, s7, 128f
                  sltiu        s8, s5, 1283
                  sll          a3, a6, s10
                  andi         s8, a1, -1738
                  addi         s0, a3, -979
                  bne          t1, a4, 135f
                  sub          t4, a3, a3
                  add          a0, s1, a7
                  auipc        a3, 149995
                  srli         s5, sp, 27
128:              bge          a3, s0, 135f
                  bgeu         t2, s8, 143f
                  slti         sp, s7, -257
                  bgeu         a6, s9, 151f
                  sltiu        a1, t2, 250
                  addi         a4, t2, 132
                  srai         t0, t6, 4
135:              addi         s11, t3, -893
                  sra          sp, s8, s10
                  beq          a2, s0, 139f
                  sltiu        s9, s8, 470
139:              bne          s10, s11, 140f
140:              addi         zero, t0, 955
                  sll          s5, a1, tp
                  sltu         t2, s9, sp
143:              ori          a2, s5, 1951
                  and          zero, s9, zero
                  ori          s5, s10, -561
                  slli         s8, s11, 31
                  slti         tp, t6, 1980
                  srai         sp, t5, 4
                  nop
                  add          s1, t0, t0
151:              or           t2, s9, s9
                  srai         s1, t1, 9
                  andi         ra, ra, -317
                  bltu         s11, tp, 155f
155:              sltu         s4, t4, sp
                  bltu         s8, a4, 170f
                  sltiu        a5, s4, 1649
                  bge          t1, a7, 163f
                  sll          s9, s3, t6
                  addi         t0, t5, 1164
                  sltiu        t4, ra, 662
                  auipc        a3, 396352
163:              sub          s10, s7, s4
                  ori          a5, a3, -1127
                  bge          s10, t1, 179f
                  or           a4, t2, s0
                  slti         s2, zero, -2035
                  sltiu        gp, a1, 1896
                  slti         a0, a0, 214
170:              andi         tp, s8, 1207
                  andi         t6, s1, 520
                  sra          s9, a4, s9
                  xor          s5, t5, t0
                  xori         zero, s1, -1131
                  sll          a5, s0, t5
                  bgeu         s9, s8, 188f
                  bgeu         ra, s5, 185f
                  nop
179:              lui          ra, 244782
                  srai         s11, s1, 27
                  srai         a7, s6, 13
                  sll          t3, t6, a1
                  ori          s1, s6, -134
                  bgeu         t3, s8, 193f
185:              xor          s11, t1, a3
                  slli         s2, t0, 26
                  xor          a3, zero, ra
188:              sll          s5, t4, t3
                  blt          gp, zero, 196f
                  slti         s5, t4, 1748
                  add          t6, a2, gp
                  sltu         s0, s3, a6
193:              srli         a1, a2, 2
                  xori         s0, t2, 20
                  beq          t6, a0, 206f
196:              slti         s1, a1, -732
                  srli         a7, s11, 16
                  bne          tp, t5, 204f
                  addi         s11, s4, 128
                  bltu         a4, a5, 205f
                  lui          ra, 386353
                  srli         s8, a7, 11
                  sub          a0, t3, t5
204:              bgeu         a4, t5, 211f
205:              xor          s0, s0, s11
206:              xor          s5, s7, a6
                  la           a2, region_1+179 #start riscv_load_store_rand_instr_stream_0
                  xori         s1, a0, 79
                  lb           s9, -9(a2)
                  lbu          t3, 13(a2)
                  lbu          s9, -10(a2)
                  lb           ra, -11(a2)
                  lb           s0, 6(a2)
                  sh           ra, -13(a2)
                  lui          t4, 849601
                  slli         s10, s0, 31
                  xor          t2, t4, s1
                  xor          s1, zero, ra
                  srai         s2, s3, 11
                  slt          t6, s7, t3
                  sb           s7, -8(a2)
                  auipc        s2, 236072
                  sb           s0, -10(a2)
                  lb           s8, -6(a2)
                  sltiu        s2, t1, 622
                  or           s3, s10, s8
                  lb           t1, 8(a2)
                  lbu          s0, 9(a2)
                  sltiu        t1, a3, -2031
                  sltiu        a4, s9, 655
                  lui          s1, 886464
                  sra          s8, s5, s10
                  add          a5, t5, a3
                  sra          s11, s0, s3
                  lb           s10, -8(a2)
                  lhu          sp, -5(a2)
                  sub          t3, a1, s4
                  or           a4, s2, a7
                  lb           zero, -2(a2)
                  sb           a2, 1(a2)
                  sh           s6, 13(a2)
                  lb           t3, 6(a2)
                  sb           s10, -16(a2)
                  lhu          t6, 13(a2)
                  sltiu        s2, a4, 1925
                  lhu          tp, 15(a2)
                  sb           zero, 0(a2)
                  srli         t2, s6, 5
                  lbu          s8, -12(a2)
                  xor          a5, a0, s7
                  slti         gp, s8, -284
                  sra          s9, s9, a4
                  sltu         a4, a3, s10
                  slti         t0, t6, -391
                  lbu          sp, -10(a2)
                  and          tp, s3, s11
                  lb           t1, -12(a2) #end riscv_load_store_rand_instr_stream_0
                  slti         t6, s8, -769
                  add          zero, t4, t1
                  andi         t6, s9, -908
                  srl          a4, a3, a3
211:              bne          t6, s11, 223f
                  blt          s6, s6, 213f
213:              bge          a1, a4, 215f
                  bltu         s6, t3, 224f
215:              slt          ra, s9, s7
                  beq          s9, s1, 220f
                  bltu         a1, a1, 218f
218:              sll          tp, tp, a7
                  slti         s8, zero, 1537
220:              blt          a3, s10, 233f
                  bltu         t6, s8, 241f
                  nop
223:              sub          t3, a1, t0
224:              srli         s0, a0, 10
                  bgeu         s5, s8, 229f
                  bge          t5, t2, 242f
                  auipc        sp, 381110
                  or           s0, sp, a2
229:              slt          a7, s6, a3
                  add          s5, s5, t2
                  srl          s0, s8, a7
                  srli         s9, tp, 12
233:              nop
                  bltu         a6, a6, 248f
                  auipc        s7, 121371
                  add          a1, sp, t0
                  slli         s4, s7, 26
                  lui          s9, 748563
                  bge          s8, a4, 255f
                  sra          t1, a2, zero
241:              beq          t4, a0, 250f
242:              srai         s8, s3, 8
                  xori         s4, t2, 1968
                  slt          a3, a5, s9
                  bne          a1, s1, 258f
                  srai         s4, t5, 30
                  srl          a4, tp, t4
248:              beq          t5, s0, 253f
                  auipc        s8, 577257
250:              nop
                  xor          a0, a5, t2
                  slli         a5, s5, 11
253:              lui          s3, 461631
                  andi         zero, t6, -717
255:              and          t2, s5, s8
                  ori          t1, s11, 1584
                  blt          s11, s11, 258f
258:              slt          sp, a0, s6
                  sll          a5, t2, t6
                  nop
                  auipc        a4, 769505
                  nop
                  sltu         s2, sp, s9
                  srli         a1, a7, 11
                  blt          a6, t3, 279f
                  ori          t4, s9, 1737
                  addi         ra, s8, 114
                  or           t2, ra, s5
                  srai         a7, t1, 25
                  srli         s7, s3, 19
                  slti         s5, s3, 197
                  sltu         a2, t2, a2
                  sub          s5, t0, tp
                  srl          a7, s1, sp
                  xori         a5, zero, -990
                  blt          s8, t4, 279f
                  bne          s11, s5, 279f
                  addi         tp, a6, -1864
279:              xor          s10, a3, s0
                  lw           s11, 4(t5)
                  or           sp, gp, t0
                  sra          gp, s10, a1
                  addi         t5, t5, 64
                  srli         sp, a4, 25
394:              addi x7, x27, 0
394:              jalr x7, x7, 0
sub_9:            addi         t5, t5, -60
                  or           a5, s8, s2
                  srai         s5, t3, 29
                  sw           s11, 4(t5)
                  sltiu        s10, t6, -1214
                  sra          a5, s2, s0
                  andi         a0, gp, -105
                  srai         s10, t0, 21
                  sltiu        t3, s8, 1488
                  la           sp, region_1+1172 #start riscv_load_store_rand_instr_stream_3
                  andi         s5, a2, -615
                  and          t6, a0, a4
                  slt          a5, t3, s5
                  sra          s2, zero, s4
                  sltiu        s0, a7, -428
                  slti         a0, s10, 578
                  slli         s0, s0, 12
                  lh           a3, -42(sp)
                  lbu          s8, 19(sp)
                  slli         s5, a5, 2
                  lbu          s4, -3(sp)
                  lui          s10, 1043138
                  lui          s2, 654895
                  sltiu        a4, ra, 610
                  lb           s9, -36(sp)
                  sltiu        t6, a6, -2030
                  sb           zero, -27(sp)
                  and          t1, s11, s9
                  nop
                  lh           t4, 54(sp)
                  lbu          t4, 41(sp)
                  lbu          zero, 4(sp)
                  lb           s0, 45(sp)
                  lbu          t0, 35(sp)
                  lb           s0, 41(sp)
                  auipc        a7, 374591
                  xor          t0, tp, s7
                  sb           t5, 13(sp)
                  add          t3, sp, s5
                  srai         s7, a5, 8
                  sb           a4, -47(sp)
                  lbu          s0, 53(sp)
                  addi         t1, s10, -7
                  sb           t3, 29(sp)
                  lb           a3, 50(sp)
                  sb           t1, -17(sp)
                  lbu          a4, -59(sp)
                  lh           a4, 18(sp)
                  sub          s2, s0, s10
                  slt          a0, s0, s6
                  xor          s4, s4, s8
                  lbu          s8, 26(sp)
                  sh           s7, -32(sp)
                  ori          a2, t2, -1537
                  lbu          s8, 51(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t2, region_0+183 #start riscv_load_store_rand_instr_stream_0
                  nop
                  addi         a5, s8, 1849
                  sh           s11, 19(t2)
                  sra          s8, s6, zero
                  lh           s4, 51(t2)
                  sb           a4, -30(t2)
                  auipc        tp, 164758
                  srl          s11, s2, ra
                  lb           t3, 64(t2)
                  sb           s0, 14(t2)
                  slt          s7, s3, a2
                  ori          t6, gp, -1742
                  lbu          a1, 14(t2)
                  lhu          s8, -33(t2)
                  sltiu        s4, t6, 846
                  xor          ra, s4, zero
                  lhu          s4, 51(t2)
                  sb           s11, -24(t2)
                  srl          s9, s11, t0
                  lbu          t4, 57(t2)
                  lbu          s5, 61(t2)
                  lbu          s4, 46(t2)
                  lui          s4, 853987
                  sb           s2, -22(t2)
                  sra          a7, a6, s2
                  lh           sp, 39(t2)
                  and          a5, sp, s4
                  lb           s9, 7(t2)
                  lbu          t0, 12(t2)
                  xor          a0, sp, a4
                  lb           s1, 48(t2)
                  lb           ra, -2(t2)
                  lh           t6, 41(t2)
                  sh           a2, 17(t2)
                  ori          a3, s7, 817
                  lbu          t6, -13(t2)
                  lbu          sp, 49(t2)
                  xori         t0, s10, 336
                  sb           s4, 44(t2)
                  lb           a7, -55(t2)
                  sh           gp, -63(t2)
                  sh           t5, -49(t2)
                  lbu          s9, 32(t2)
                  lui          s9, 692248
                  sb           a1, 42(t2) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1362 #start riscv_load_store_rand_instr_stream_1
                  slli         t6, t6, 2
                  slt          ra, s1, s2
                  slt          a7, s5, t0
                  auipc        s0, 694987
                  sub          s2, a5, t1
                  sw           s6, 98(sp)
                  andi         s3, s6, 120
                  srli         zero, s11, 15
                  lb           s9, -99(sp)
                  sb           s9, -154(sp)
                  lhu          t4, 98(sp)
                  lb           a5, 198(sp)
                  sltiu        a3, t1, 1782
                  addi         ra, t2, 1955
                  lb           s2, 1(sp)
                  or           s9, a3, s7
                  srli         t6, tp, 25
                  sb           s8, 234(sp)
                  xor          tp, s0, s6
                  andi         a7, a0, 932
                  xor          t1, t3, a2
                  slt          a2, s4, ra
                  sb           s0, -90(sp)
                  sw           t0, -230(sp)
                  ori          a3, s0, 903
                  auipc        s11, 366253
                  sb           a5, 21(sp)
                  sb           t3, 171(sp)
                  srli         a4, a6, 26
                  auipc        t2, 343769
                  lbu          tp, -154(sp)
                  add          t3, s0, s4
                  sb           s7, -157(sp)
                  lbu          s9, 245(sp)
                  and          a7, t0, a5
                  slt          t1, zero, a1
                  sb           tp, -67(sp)
                  or           s3, zero, t0
                  lw           s4, -130(sp)
                  lbu          t3, -105(sp)
                  sltu         s4, s11, zero
                  sll          a4, t2, s8
                  sltu         s5, s3, s9
                  nop
                  lh           t0, 4(sp)
                  srai         s1, a5, 18
                  add          a3, ra, s9
                  lbu          zero, 178(sp)
                  lbu          s5, -113(sp)
                  sb           s4, -1(sp)
                  lb           a1, -241(sp)
                  sb           gp, -8(sp)
                  sh           a1, -216(sp)
                  sltu         s3, t5, ra
                  lbu          a0, -239(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1204 #start riscv_load_store_rand_instr_stream_8
                  lui          s4, 76366
                  sb           t6, 7(sp)
                  lb           a0, -7(sp)
                  andi         a7, s4, -255
                  lb           a0, -9(sp)
                  srl          a0, zero, s5
                  sh           s11, -10(sp)
                  lb           t6, -8(sp)
                  addi         s7, a6, 278
                  srli         s5, ra, 2
                  sra          ra, a3, a1
                  lbu          a3, -3(sp)
                  sltu         gp, s9, s9
                  or           a2, t2, t2
                  sltu         a3, t3, s5
                  sltiu        s1, t0, -265
                  lhu          t3, -14(sp)
                  sb           zero, -15(sp)
                  sltiu        s3, s3, 165
                  add          a4, s4, zero
                  slli         a1, t4, 6
                  srli         s4, s11, 27
                  slt          s3, a6, a7
                  andi         s3, s10, -879
                  lw           a3, 0(sp)
                  and          s8, t3, a3
                  nop
                  sb           a1, 14(sp)
                  lbu          a2, -7(sp)
                  addi         t3, s10, 424
                  sll          s2, a5, s6
                  lbu          t0, 13(sp)
                  lb           s0, 14(sp)
                  slli         s10, t1, 16
                  sb           t1, -5(sp)
                  ori          a3, t0, 1331
                  sb           a2, -3(sp)
                  slli         a2, s5, 10
                  srai         t2, t2, 8
                  lb           a3, -11(sp)
                  sb           t5, -15(sp)
                  srai         a2, s10, 15
                  srli         a0, s6, 4
                  sll          a3, a6, s10
                  sb           tp, -13(sp)
                  sub          t1, s0, t5
                  lh           a4, -14(sp)
                  add          t6, a5, s8
                  slt          t0, s3, a3
                  lhu          t6, 2(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+718 #start riscv_load_store_rand_instr_stream_4
                  ori          ra, a2, -1488
                  sb           t4, 55(sp)
                  or           a4, a4, s7
                  lbu          s2, -53(sp)
                  srai         a0, a1, 10
                  sb           ra, 27(sp)
                  lbu          t2, 56(sp)
                  srli         a7, s2, 6
                  lbu          tp, -45(sp)
                  sh           s10, 14(sp)
                  lhu          s7, -18(sp)
                  lhu          a5, -14(sp)
                  lb           t0, 13(sp)
                  lbu          t4, 11(sp)
                  sb           t3, 33(sp)
                  srl          s10, ra, sp
                  sb           s7, 23(sp)
                  lbu          gp, 55(sp)
                  sh           s0, -8(sp)
                  slt          a1, t3, s8
                  sub          t1, a0, s5
                  slt          a3, t6, a6
                  lbu          zero, -55(sp)
                  sb           s2, -31(sp)
                  ori          t2, s2, 1439
                  lb           a7, 47(sp)
                  lbu          a3, 51(sp)
                  lbu          t3, -41(sp)
                  srl          s8, s11, t3
                  ori          zero, s0, 1117
                  sra          s9, a0, a6
                  lb           t4, -11(sp)
                  sb           a7, 19(sp)
                  ori          a1, s2, -840
                  sb           a5, 31(sp)
                  slti         s9, t6, -1687
                  sh           a4, -30(sp)
                  lbu          a7, 62(sp)
                  lb           s3, 43(sp)
                  lhu          ra, 24(sp)
                  slti         gp, s9, 522
                  sh           t2, -44(sp)
                  sra          s1, s11, s7
                  lb           gp, -37(sp)
                  lb           s1, 24(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a7, region_1+1301 #start riscv_load_store_rand_instr_stream_2
                  lw           s0, 95(a7)
                  sub          s2, ra, a4
                  and          t2, s5, t3
                  srli         a1, s10, 8
                  sh           gp, -95(a7)
                  xor          t1, t3, t0
                  sub          t4, a1, s3
                  srai         a2, a1, 12
                  lb           a1, -30(a7)
                  lbu          s9, -139(a7)
                  lbu          s11, 123(a7)
                  sb           t0, -183(a7)
                  sra          a0, zero, a6
                  xor          a2, a6, s6
                  lb           a4, -166(a7)
                  sra          a4, t6, s7
                  srl          s2, s9, a1
                  lb           t0, 170(a7)
                  sb           a5, -95(a7)
                  or           s10, s1, s11
                  slt          s1, s2, s9
                  lb           a2, -72(a7)
                  ori          t6, a4, 38
                  xori         sp, s4, -1303
                  sb           tp, -20(a7)
                  slli         a3, s6, 10
                  sltiu        s1, sp, -280
                  sltu         s0, s4, a5
                  add          s2, sp, t1
                  sh           s0, 99(a7) #end riscv_load_store_rand_instr_stream_2
                  la           gp, region_1+1035 #start riscv_load_store_rand_instr_stream_10
                  sb           tp, -12(gp)
                  sb           t6, -62(gp)
                  xori         s10, tp, 1041
                  sb           a6, 38(gp)
                  addi         a5, a0, -997
                  lbu          s5, 24(gp)
                  sb           t1, -63(gp)
                  sltiu        s10, a3, 1419
                  sw           t6, -39(gp)
                  sb           s5, 64(gp)
                  sb           s2, -30(gp)
                  lw           a2, -23(gp)
                  lbu          s11, 60(gp)
                  lbu          a4, -40(gp)
                  lb           a5, 62(gp)
                  or           a2, ra, s6
                  sb           s8, -31(gp)
                  lbu          t0, -37(gp)
                  lb           a3, -56(gp)
                  lh           sp, 11(gp)
                  sw           gp, 13(gp)
                  lui          s1, 889652
                  lb           tp, 15(gp)
                  lbu          a0, 6(gp)
                  xor          a3, t3, gp
                  sb           s8, 25(gp)
                  lhu          a7, 39(gp)
                  sltu         s8, zero, s0
                  lbu          t4, 20(gp)
                  sb           a4, 58(gp)
                  auipc        s11, 616768
                  lbu          s3, -50(gp)
                  sll          s8, s10, t3
                  lbu          zero, -12(gp)
                  sll          t2, a1, a4
                  lbu          a7, 20(gp)
                  sb           s1, 33(gp)
                  sb           a3, -33(gp)
                  slli         a7, s8, 13
                  lbu          a4, -6(gp)
                  lbu          a4, 39(gp) #end riscv_load_store_rand_instr_stream_10
                  blt          s9, t4, 11f
                  sub          s5, s10, s0
                  nop
                  andi         a3, s6, 1519
                  slt          s0, a5, a4
                  sra          a5, tp, s0
                  xori         t0, a2, 398
                  blt          a6, a7, 22f
                  sll          s5, sp, a7
                  sub          t4, t6, ra
                  slt          a1, a2, t0
11:               andi         a0, t6, -1450
                  slli         a2, s6, 0
                  bltu         t1, s2, 32f
                  xor          gp, t2, s9
                  sra          a0, s9, a0
                  slt          zero, a7, t5
                  bgeu         a6, a7, 27f
                  beq          s2, sp, 25f
                  srli         s9, t5, 2
                  nop
                  xor          s10, t0, a1
22:               xor          a7, a1, gp
                  lui          t0, 530216
                  beq          t5, t0, 29f
25:               xori         a1, s5, -621
                  beq          a1, a0, 32f
27:               slti         a2, s10, -263
                  bgeu         ra, t4, 35f
29:               srli         s11, a5, 10
                  addi         s8, s9, -1454
                  nop
32:               srl          s9, t6, a2
                  bgeu         tp, s8, 46f
                  andi         tp, s3, -1471
35:               sll          t6, t1, s1
                  sra          s11, s6, tp
                  slli         t0, t5, 31
                  xori         ra, t4, -1702
                  bge          s6, s0, 45f
                  andi         ra, sp, -825
                  slti         gp, sp, -1841
                  sll          s11, t1, t2
                  sll          gp, t6, s5
                  srai         s7, gp, 28
45:               bge          s1, s0, 63f
46:               sra          t6, t1, tp
                  sub          s10, tp, a4
                  auipc        a5, 4621
                  srli         a4, a1, 8
                  bgeu         t4, ra, 56f
                  sltiu        zero, s3, -1748
                  and          s8, s6, s3
                  beq          s5, s0, 61f
                  blt          s1, t5, 63f
                  nop
56:               slt          t0, s5, gp
                  sltu         a4, t3, zero
                  sll          a0, s0, t6
                  sub          t2, s7, t1
                  and          s1, s7, t3
61:               blt          s5, s7, 66f
                  blt          s9, s6, 82f
63:               beq          s5, a6, 75f
                  lui          a4, 273400
                  xor          a4, gp, t2
66:               add          a2, a1, a2
                  nop
                  blt          a4, s4, 85f
                  andi         a5, t1, -420
                  slt          s0, s9, t0
                  sll          t2, a5, t4
                  bne          t6, s4, 88f
                  slti         t6, t5, 555
                  blt          s1, s10, 84f
75:               and          a3, s3, s8
                  bge          s7, s3, 90f
                  sltu         s3, t6, tp
                  bge          s0, a7, 83f
                  sltiu        s4, t0, -491
                  xor          s2, gp, s0
                  slt          s7, t3, s3
82:               sltiu        t3, a4, 852
83:               lui          sp, 917693
84:               add          a4, t1, a7
85:               srli         t2, ra, 11
                  ori          a0, sp, -692
                  srli         s3, a3, 12
88:               sra          s2, a1, t2
                  slli         a7, a3, 17
90:               xor          tp, s6, t1
                  bgeu         s9, t3, 96f
                  slti         s5, t4, 561
                  and          t6, t2, a1
                  bgeu         t0, s8, 114f
                  sltiu        a1, s7, 228
96:               srli         a4, gp, 7
                  bge          a2, s0, 114f
                  and          s11, s3, t2
                  xor          gp, s0, tp
                  sltiu        a1, s10, 1858
                  sub          t6, t6, s8
                  or           a5, s9, t5
                  sltiu        a4, s4, 1187
                  andi         a0, a7, -261
                  slti         tp, s7, 1408
                  addi         s9, t5, 1453
                  srl          ra, zero, a4
                  slli         s3, a3, 0
                  sltu         s0, s3, sp
                  sltu         t6, a4, s1
                  bne          a7, s1, 125f
                  srli         a7, s2, 1
                  bltu         a6, t2, 118f
114:              addi         tp, s10, -1956
                  and          s4, s5, t1
                  lui          t4, 194245
                  add          sp, s7, gp
118:              sltiu        a5, s5, -1533
                  bge          s1, a1, 122f
                  ori          a3, t5, 1962
                  andi         a0, a2, -1622
122:              sltiu        s10, a6, 956
                  add          s3, t0, t2
                  or           a1, a0, gp
125:              add          a2, a4, a7
                  and          s4, s3, ra
                  bne          s11, s8, 135f
                  or           t3, t1, a6
                  srai         t6, s8, 2
                  or           s11, s3, sp
                  and          t0, a0, sp
                  srl          s5, s5, sp
                  auipc        s2, 854669
                  andi         ra, s9, -1488
135:              srai         sp, t1, 17
                  bgeu         t1, s8, 137f
137:              xori         a1, a1, 1756
                  sra          t3, s10, sp
                  xor          sp, s8, s8
                  sra          zero, s7, s3
                  sltu         ra, s8, s5
                  andi         a3, a0, -36
                  sub          s1, tp, t2
                  add          t2, t1, s11
                  slt          tp, a7, a1
                  bgeu         t3, s10, 153f
                  bltu         sp, s2, 153f
                  sltu         gp, a1, sp
                  andi         s4, s5, -398
                  addi         t1, tp, 1250
                  srli         t3, a5, 8
                  lui          s10, 323779
153:              sub          s7, s7, a4
                  sll          t6, a1, a6
                  and          s11, s1, s11
                  ori          a0, ra, -1349
                  add          t6, a5, t3
                  ori          ra, a6, 1674
                  beq          a6, a4, 179f
                  slt          tp, s5, t2
                  bgeu         s9, s11, 172f
                  or           ra, s3, a6
                  bltu         t5, t5, 175f
                  sll          s1, a7, s2
                  xori         ra, ra, -505
                  sub          s9, s1, t2
                  sll          t6, gp, sp
                  beq          t3, a2, 173f
                  sltu         s8, t6, a3
                  bne          s2, gp, 184f
                  sra          s5, t0, gp
172:              slti         ra, t4, -928
173:              xor          s8, a1, ra
                  blt          s6, ra, 179f
175:              lui          s4, 251466
                  bge          s1, a0, 193f
                  sltiu        s3, a4, 1013
                  srli         s9, ra, 3
179:              bgeu         t0, s5, 189f
                  xori         s11, s1, 1324
                  bgeu         tp, s7, 191f
                  addi         t1, ra, 1941
                  and          s7, s0, zero
184:              andi         s10, sp, 1045
                  nop
                  sltu         s11, s8, zero
                  srai         a2, a0, 3
                  sltu         s5, s2, s1
189:              add          t1, t3, zero
                  sltu         a7, s6, s4
191:              srl          s0, s11, s0
                  nop
193:              lui          a3, 466189
                  ori          zero, s10, -1420
                  sll          s11, zero, s5
                  bne          s0, a2, 203f
                  xori         a2, s2, -1952
                  or           s11, zero, a5
                  lui          a3, 522546
                  slli         t3, t1, 12
                  srai         s2, t1, 1
                  slt          a3, s8, t2
203:              addi         a7, a4, -108
                  blt          s0, a7, 209f
                  sltu         s9, a2, s7
                  srl          ra, t2, t2
                  sra          s10, s0, sp
                  sll          t3, a5, s8
209:              xori         t4, a4, -830
                  blt          ra, s10, 219f
                  srl          a3, s3, a7
                  nop
                  or           s9, s8, a2
                  addi         s11, t1, 1997
                  beq          s5, a6, 218f
                  nop
                  srai         t1, a3, 25
218:              sll          t1, t5, a5
219:              srli         a3, zero, 13
                  auipc        t0, 1011990
                  nop
                  or           s8, s0, gp
                  sub          s3, zero, a2
                  sltu         s2, tp, a1
                  bge          a5, t3, 233f
                  slt          s0, a0, a4
                  or           s3, t0, a1
                  addi         s9, s8, -1888
                  slt          s4, t1, t1
                  bgeu         s9, s1, 249f
                  lui          a2, 533057
                  bgeu         t3, gp, 237f
233:              slli         s3, s4, 2
                  ori          a1, a5, 203
                  bne          gp, a4, 241f
                  beq          s0, s3, 252f
237:              slli         t6, s6, 17
                  sll          t4, ra, s5
                  andi         sp, s2, -1610
                  ori          sp, a6, -1460
241:              auipc        a0, 974133
                  slli         s11, t4, 10
                  auipc        s7, 34590
                  sub          s9, a4, s1
                  bgeu         sp, tp, 250f
                  bne          a3, gp, 261f
                  bne          s4, s5, 264f
                  sltiu        s8, s4, -1354
249:              slli         tp, a5, 30
250:              add          a2, s9, s10
                  srli         s10, s2, 21
252:              sra          a4, t6, a0
                  sltu         a2, a7, a4
                  and          s8, s4, s3
                  and          a7, t2, s3
                  add          a4, s10, s3
                  lui          a0, 325224
                  beq          s2, s11, 259f
259:              add          a7, t1, s6
                  sra          zero, s4, s0
261:              andi         a1, s11, -1089
                  srai         s2, a5, 30
                  slli         a7, s11, 18
264:              sltiu        a5, s5, -1670
                  slt          s3, s10, s7
                  slli         t0, s8, 20
                  or           zero, t0, t1
                  bgeu         s10, a7, 274f
                  xor          s4, s10, s3
                  slti         s3, t1, 1534
                  sltu         sp, zero, s4
                  slt          s11, gp, t1
                  and          a7, s6, s2
274:              or           s5, t2, t5
                  slt          s5, a6, a5
                  nop
                  auipc        s2, 9222
                  andi         zero, sp, 1131
                  srl          a2, s6, t0
                  ori          t4, a1, 511
                  lui          t1, 358058
                  bne          a6, s8, 296f
                  xor          a1, s9, s7
                  slli         a1, a5, 17
                  addi         s1, a2, -88
                  xor          t0, s0, s1
                  slli         s2, t1, 30
                  slti         a5, s11, -1021
                  or           t2, s10, s2
                  srli         t6, t5, 26
                  bne          a7, a4, 304f
                  sra          s4, s1, t6
                  ori          tp, zero, 1687
                  auipc        t2, 1000644
                  and          ra, s5, zero
296:              sltu         tp, gp, t6
                  srai         s4, t1, 17
                  slli         gp, t5, 10
                  bltu         a4, t0, 317f
                  addi         t0, s4, 1132
                  blt          s2, t1, 309f
                  or           s3, s8, s5
                  srai         t0, a3, 21
304:              sll          a2, t2, a7
                  sub          s11, s9, s1
                  addi         s0, a0, 1447
                  beq          a7, s3, 327f
                  auipc        s1, 888438
309:              and          t4, zero, gp
                  addi         tp, a1, -72
                  srli         gp, s7, 28
                  bge          sp, gp, 322f
                  addi         s3, a5, -618
                  and          s7, s1, a7
                  and          t6, s5, s11
                  bltu         s9, ra, 332f
317:              srai         ra, a3, 29
                  blt          s9, sp, 324f
                  sub          a3, zero, a4
                  sll          a1, a2, a5
                  slti         t6, t4, -1443
322:              slti         a2, s3, -1976
                  blt          a3, t4, 328f
324:              addi         t4, s9, -904
                  bge          tp, t6, 333f
                  slti         s5, gp, 988
327:              ori          s1, a5, -1169
328:              addi         t1, s5, -462
                  bge          a3, a5, 338f
                  bge          s6, a6, 350f
                  slt          s5, t1, a4
332:              add          s8, s9, a0
333:              srai         ra, s4, 30
                  ori          a1, s8, 1981
                  add          ra, sp, a5
                  bltu         a5, a0, 341f
                  lui          t0, 446326
338:              bltu         a2, t0, 356f
                  addi         t3, t6, -305
                  sltiu        t6, tp, -861
341:              nop
                  ori          t0, t0, -1254
                  sub          t4, s6, a4
                  bltu         s8, a6, 354f
                  auipc        t0, 988804
                  bne          zero, s3, 363f
                  sltu         s4, s4, s7
                  bne          s11, s5, 353f
                  beq          a6, s5, 355f
350:              srai         ra, s5, 8
                  beq          s11, t4, 362f
                  lui          s3, 594263
353:              andi         s5, s7, 909
354:              bltu         s5, t5, 355f
355:              add          ra, s10, s3
356:              sll          s4, s10, t5
                  add          a3, zero, s5
                  bltu         s11, s3, 378f
                  srl          a1, t0, a0
                  slti         s0, t1, 1397
                  blt          s5, a5, 374f
362:              xor          s7, s2, t0
363:              beq          s3, t4, 368f
                  srai         gp, a0, 23
                  blt          s9, t3, 371f
                  slt          t1, gp, a3
                  slt          t3, s9, a5
368:              auipc        s10, 575080
                  addi         a3, a1, 883
                  xori         s11, s8, 635
371:              or           a1, sp, s7
                  sra          s10, a4, a4
                  nop
374:              slti         a2, tp, 1996
                  add          sp, sp, s9
                  add          a4, ra, t5
                  and          t3, s9, a6
378:              blt          tp, gp, 390f
                  srli         t1, s5, 20
                  or           a2, t0, a3
                  andi         t0, s3, 1496
                  beq          a5, t4, 389f
                  ori          a7, gp, -1443
                  nop
                  addi         a0, s5, 269
                  bltu         t6, a5, 394f
                  lui          t1, 886449
                  addi         s2, a7, -1740
389:              sltiu        a4, s0, 277
390:              blt          a1, a6, 407f
                  srli         a4, s11, 21
                  add          sp, s9, t1
                  bge          s3, s5, 407f
394:              slti         s10, sp, -1500
                  beq          s4, s0, 410f
                  srl          s8, tp, s5
                  bgeu         t2, a4, 404f
                  sltiu        s7, sp, 566
                  srai         s9, s10, 0
                  sll          s7, s3, ra
                  slli         s8, s6, 11
                  andi         a4, tp, -212
                  sltu         a3, s6, t1
404:              add          t3, s3, gp
                  srl          s9, ra, s6
                  sltu         s2, t3, t5
407:              srl          a4, a3, s3
                  or           a4, s6, sp
                  bge          s1, s10, 412f
410:              add          a3, a5, s3
                  slt          zero, t1, s6
412:              lui          a7, 826804
                  bltu         s10, s2, 427f
                  sra          t0, t5, a1
                  la           sp, region_1+872 #start riscv_load_store_rand_instr_stream_11
                  sb           ra, -112(sp)
                  andi         s8, a6, 1656
                  ori          gp, t2, 393
                  lb           a2, 65(sp)
                  andi         s0, s5, 1884
                  sb           t2, 19(sp)
                  lbu          s4, -246(sp)
                  lh           zero, -244(sp)
                  add          t6, t5, sp
                  lb           a4, -165(sp)
                  lb           a4, 189(sp)
                  sb           tp, -107(sp)
                  addi         gp, a6, 794
                  lb           zero, 165(sp)
                  sltu         a4, t3, a4
                  srli         a0, a6, 17
                  and          zero, s4, t0
                  sltiu        s1, t6, 591
                  xori         s0, s0, 863
                  xori         s11, t6, -1200
                  auipc        a3, 85987
                  lbu          t4, -9(sp)
                  lbu          s9, 187(sp)
                  lb           a3, 216(sp)
                  sh           s10, -40(sp)
                  lh           a5, 70(sp)
                  sb           a5, -137(sp)
                  or           ra, s5, a2
                  srli         zero, s1, 9
                  lb           t1, -31(sp)
                  sw           a5, 20(sp)
                  xor          s5, a1, a6
                  lbu          a4, 201(sp)
                  lb           s7, -67(sp)
                  slt          tp, t5, a3
                  lb           gp, 25(sp) #end riscv_load_store_rand_instr_stream_11
                  auipc        t3, 126498
                  add          s8, a0, t0
                  sltu         s2, tp, t6
                  sltu         t3, sp, a4
                  sll          a1, s11, t5
                  bgeu         a7, t5, 425f
                  sub          t4, t0, tp
                  bgeu         a0, gp, 441f
                  or           s5, t4, ra
                  nop
425:              ori          s4, t5, 1044
                  slti         a2, a1, -681
427:              addi         t6, t5, 618
                  blt          a1, t5, 431f
                  xor          s7, a3, a5
                  beq          a1, s8, 442f
431:              bltu         a4, a5, 450f
                  sub          a4, s7, s1
                  sra          s7, t3, s7
                  sltiu        s9, a1, 924
                  bne          ra, s5, 451f
                  slli         a4, a6, 24
                  bltu         s7, a1, 447f
                  bgeu         t6, a1, 443f
                  ori          t3, a3, -734
                  auipc        zero, 545810
441:              lui          s7, 308442
442:              and          s10, t0, ra
443:              lui          a4, 948901
                  blt          gp, t5, 451f
                  auipc        a2, 257459
                  sub          a0, s2, t4
447:              auipc        s8, 996546
                  xor          a1, s0, a7
                  sltu         s5, t6, s5
450:              and          s2, a5, s2
451:              lui          ra, 977433
                  blt          a3, s8, 458f
                  or           s8, s1, a5
                  addi         t4, s1, -528
                  sltiu        a3, zero, -89
                  srai         t6, s11, 29
                  slli         s9, a1, 8
458:              add          a3, s1, s6
                  sll          s11, gp, s6
                  bne          t2, t1, 468f
                  slt          s0, tp, s1
                  add          s4, a2, s8
                  sltu         t6, s2, a1
                  bltu         a2, a4, 471f
                  bge          s9, sp, 466f
466:              sra          zero, s3, a5
                  srl          s3, t4, s5
468:              slt          s0, t6, s3
                  sra          t3, s11, t0
                  blt          s2, s5, 490f
471:              sra          s11, ra, s2
                  ori          s9, t1, -1194
                  beq          a2, a1, 487f
                  auipc        a1, 850220
                  sll          a5, a5, ra
                  srl          s3, t5, tp
                  or           t3, s11, t0
                  bgeu         t2, ra, 495f
                  blt          zero, ra, 485f
                  ori          t4, a5, 1209
                  bge          s3, a4, 491f
                  slti         s5, a4, 250
                  bltu         a7, gp, 492f
                  auipc        ra, 328444
485:              beq          a4, a5, 503f
                  beq          a7, a5, 503f
487:              sltu         s7, s2, s0
                  sub          t0, a0, s3
                  slli         a4, a0, 4
490:              beq          a3, a6, 495f
491:              auipc        ra, 737082
492:              slti         sp, s11, -1730
                  sra          zero, t0, a5
                  sra          tp, s10, t5
495:              slt          s10, s5, s4
                  bge          tp, t5, 509f
                  xor          a5, s3, a3
                  sub          sp, s4, t2
                  beq          t3, sp, 504f
                  sub          tp, s8, s8
                  and          a0, s2, s7
                  srl          s11, t5, s1
503:              xori         a5, t0, 192
504:              auipc        a2, 898939
                  srai         a7, ra, 10
                  srl          s7, t6, s8
                  bgeu         a2, a6, 512f
                  bgeu         s0, ra, 514f
509:              sltiu        s3, s3, -1084
                  sltu         s3, s3, a4
                  beq          a0, s10, 526f
512:              xor          a0, s11, a4
                  xor          t0, s5, tp
514:              add          s3, tp, a1
                  sltiu        s10, t3, 1669
                  blt          t1, tp, 536f
                  and          s2, t6, s2
                  sra          s8, s11, ra
                  beq          a2, a6, 533f
                  lui          t0, 596976
                  bge          sp, a2, 532f
                  and          s2, a5, a5
                  sltu         a3, s2, t0
                  srl          a1, a6, a2
                  ori          t0, a0, 857
526:              srli         a7, a1, 25
                  sltu         t6, t3, t1
                  lui          a7, 905982
                  slt          a7, s7, s3
                  sra          a0, t2, a6
                  blt          s2, tp, 539f
532:              sll          s11, a1, zero
533:              or           s0, t2, s1
                  bne          s7, a7, 539f
                  andi         s2, s1, -1725
536:              blt          gp, tp, 554f
                  lui          s10, 228442
                  andi         gp, t6, 1370
539:              blt          a0, a5, 552f
                  xori         t1, t3, 2022
                  lui          zero, 453183
                  slti         t1, s9, 127
                  slt          s3, s11, t0
                  bge          s5, t2, 559f
                  sltiu        tp, zero, 908
                  srl          s7, t4, s9
                  slti         ra, s0, -861
                  blt          a6, ra, 568f
                  bne          s5, t1, 559f
                  srli         s9, s7, 29
                  slti         t0, t1, 1738
552:              slli         t2, t2, 7
                  bgeu         ra, zero, 556f
554:              srl          s8, t3, tp
                  ori          s8, t4, -890
556:              slt          s9, a3, a3
                  and          s8, s5, sp
                  and          t1, a1, gp
559:              addi         sp, t0, -1675
                  la           t4, region_0+746 #start riscv_load_store_rand_instr_stream_5
                  sb           s6, -143(t4)
                  nop
                  sb           s1, 433(t4)
                  sub          a1, a6, t2
                  srl          a5, s2, t3
                  lb           tp, -659(t4)
                  srl          s3, s6, t0
                  xor          s10, t1, sp
                  lbu          s9, -650(t4)
                  or           sp, t3, s8
                  lb           t0, 622(t4)
                  sb           s2, -220(t4)
                  lhu          s3, 502(t4)
                  lb           a7, -601(t4)
                  lbu          t1, -605(t4)
                  or           s8, a6, s6
                  auipc        s11, 218637
                  add          s0, t6, t4
                  lb           a1, -265(t4)
                  sb           t0, 579(t4)
                  lb           a5, 643(t4)
                  sh           ra, -140(t4)
                  sltu         s7, s0, t4
                  lui          ra, 564741
                  andi         s9, t6, -562
                  sub          s1, t3, t6
                  lb           s5, 513(t4)
                  sb           s1, -113(t4)
                  sb           sp, 1175(t4)
                  lbu          sp, 163(t4)
                  sb           a1, -457(t4)
                  lb           s0, -75(t4)
                  lb           a2, -666(t4)
                  add          s4, gp, a4
                  nop
                  xori         s11, s8, 2013
                  lb           a0, 456(t4)
                  lbu          s1, 969(t4) #end riscv_load_store_rand_instr_stream_5
                  nop
                  ori          t2, zero, -115
                  sltiu        s0, a6, 285
                  sub          s1, s4, a3
                  slt          s2, t0, a7
                  srl          s4, a5, gp
                  srai         a5, s11, 8
                  nop
568:              bge          ra, t2, 573f
                  sub          tp, tp, zero
                  ori          t6, s5, 863
                  addi         zero, a4, -495
                  and          t6, s10, s2
573:              slti         tp, t3, -1767
                  sra          s5, t1, a2
                  bgeu         s3, a6, 582f
                  ori          s3, t5, -8
                  bge          s2, t2, 586f
                  srli         t2, s7, 25
                  bgeu         a4, s4, 584f
                  bne          s7, s5, 586f
                  sll          a2, s3, s5
582:              srl          t6, s6, a1
                  slti         a1, a3, -811
584:              srl          t2, s8, t6
                  andi         a2, s7, 1013
586:              add          s8, s0, s1
                  addi         s0, a6, -966
                  srl          s10, a0, s2
                  beq          t3, s7, 590f
590:              bne          a4, s11, 606f
                  nop
                  slt          s9, s9, a2
                  sltu         a4, s8, t3
                  addi         s8, s10, 1577
                  or           s3, s9, a5
                  srl          t6, a6, gp
                  xor          s10, t0, s0
                  auipc        a7, 968460
                  and          t2, a7, s10
                  srl          a5, a1, s2
                  slti         t4, s10, 258
                  srai         s5, s3, 0
                  beq          t0, t4, 611f
                  auipc        s9, 369670
                  and          t0, s11, t0
606:              slti         s1, s11, 2020
                  lui          s4, 428090
                  bge          s11, a1, 614f
                  beq          ra, t6, 623f
                  auipc        t2, 103244
611:              sll          sp, s1, tp
                  srli         s7, a2, 4
                  slli         s9, s8, 26
614:              add          s7, s0, a7
                  sra          a0, sp, sp
                  auipc        tp, 765108
                  slt          s11, gp, ra
                  bltu         t0, gp, 628f
                  sltiu        t3, s0, -226
                  sub          s3, a3, t5
                  ori          ra, s5, 276
                  xori         s9, a0, 1783
623:              srai         t2, t4, 2
                  sltiu        t3, a7, 1102
                  sll          s10, t0, t5
                  sltiu        s10, t1, -1160
                  slli         gp, t5, 18
628:              lui          s5, 1000529
                  slti         a2, a5, -88
                  lui          s1, 343386
                  or           zero, t4, t6
                  nop
                  beq          a3, a2, 653f
                  beq          s0, a1, 642f
                  lui          t3, 808934
                  andi         s7, s0, -662
                  bge          s0, tp, 656f
                  auipc        s11, 504072
                  bgeu         t3, s2, 656f
                  slli         s8, t5, 25
                  srli         t6, t0, 31
642:              sltu         t6, tp, a3
                  addi         s4, ra, 1150
                  sltu         t2, a3, t1
                  ori          s5, t3, -802
                  nop
                  srl          t1, ra, s11
                  sltiu        t0, t3, -1415
                  and          s4, a2, s11
                  sub          a7, s3, a4
                  addi         a0, s2, 1744
                  beq          t4, t1, 657f
653:              xori         s0, a1, 1055
                  srl          a5, s11, t2
                  add          a2, a1, t3
656:              sra          a2, t1, a3
657:              bge          t5, s0, 662f
                  xori         s2, a5, 182
                  xor          t1, a6, t0
                  nop
                  beq          s4, s10, 675f
662:              srl          a0, a7, s1
                  sra          s11, s0, s2
                  sll          s8, a7, s6
                  srl          s3, ra, a6
                  sra          ra, a4, s4
                  bltu         s7, t3, 678f
                  addi         a3, t1, 584
                  bge          t3, gp, 681f
                  slli         a0, t3, 15
                  or           s4, tp, s0
                  sltu         t3, s10, t0
                  slli         gp, t6, 23
                  lui          t0, 217999
675:              sltu         t6, s11, tp
                  bgeu         ra, s2, 693f
                  xor          gp, s9, s6
678:              bltu         a0, s3, 684f
                  sub          s7, s5, zero
                  srai         s10, s8, 21
681:              nop
                  sltu         s8, s9, s2
                  sll          a5, s10, t3
684:              xori         s5, s6, -2040
                  sltu         tp, t0, t1
                  slti         a1, s1, -2013
                  beq          t6, a6, 694f
                  sltiu        t0, s5, 965
                  xor          s9, sp, s8
                  addi         zero, s8, 572
                  srai         sp, a6, 9
                  sltiu        a1, gp, 1924
693:              addi         s7, t0, 867
694:              add          t4, t0, s9
                  or           s3, s9, gp
                  xor          a4, a4, ra
                  slli         a0, t5, 28
                  sub          t3, t6, t0
                  add          s5, s5, a4
                  bge          a5, t2, 705f
                  beq          s2, t6, 711f
                  sltiu        s1, s7, -1917
                  xor          s3, a2, t5
                  bne          gp, a4, 714f
705:              srl          zero, s11, a4
                  sltiu        sp, t3, 1553
                  or           s1, t6, a0
                  blt          t0, t2, 714f
                  slli         s7, s11, 21
                  sltiu        a7, a0, -299
711:              ori          s11, s0, -1987
                  srai         gp, s6, 20
                  addi         a5, t2, -319
714:              xor          s0, a4, t5
                  sra          t6, a2, t4
                  sub          sp, t0, t4
                  srai         s4, a6, 29
                  bne          s8, s0, 735f
                  slli         a0, t4, 12
                  add          zero, a7, a7
                  sub          s4, a0, s11
                  bge          s7, s10, 728f
                  blt          ra, t3, 728f
                  srli         t2, gp, 12
                  blt          t5, t3, 745f
                  xori         gp, t3, 495
                  nop
728:              bge          sp, t6, 733f
                  sra          gp, a7, a5
                  nop
                  slli         a2, s0, 10
                  sll          zero, t1, a2
733:              bge          t3, t3, 742f
                  sub          a7, a1, s5
735:              addi         a2, s6, -1521
                  xor          s0, s0, s2
                  bge          t6, a4, 751f
                  addi         s3, a4, 1276
                  bge          s2, tp, 746f
                  srai         ra, s8, 10
                  sub          a0, a0, a2
742:              addi         s11, zero, 616
                  addi         s8, t1, 946
                  slti         s9, t0, -1392
745:              srli         a1, s2, 15
746:              xori         a3, a3, -1220
                  bgeu         t4, s6, 767f
                  add          a5, t2, s9
                  bne          s4, s10, 768f
                  xori         ra, tp, 1520
751:              slli         s3, a1, 20
                  slt          s5, s9, zero
                  andi         s4, s10, -1451
                  sll          a3, s2, s4
                  bne          zero, t0, 769f
                  auipc        s8, 570672
                  xori         s11, t3, 393
                  add          a2, a4, s9
                  auipc        sp, 304083
                  slti         a3, a7, 219
                  xor          s3, t4, a3
                  bne          s3, a1, 770f
                  andi         t1, a6, -1769
                  slt          s5, s5, tp
                  bltu         a1, zero, 768f
                  ori          s1, t0, 1821
767:              andi         t6, s8, 1822
768:              beq          t5, t1, 780f
769:              bgeu         s2, t3, 787f
770:              slti         s9, t6, -629
                  xori         s7, a3, -373
                  srl          t3, sp, s5
                  slli         tp, t4, 9
                  beq          a3, s8, 785f
                  sub          a5, s4, s10
                  ori          s4, t6, 1113
                  sltu         t6, ra, a3
                  auipc        s1, 237900
                  bne          t2, tp, 796f
780:              bge          s8, t0, 786f
                  slli         a2, a2, 26
                  sltu         a1, t3, ra
                  bltu         ra, ra, 788f
                  addi         s5, t5, 1057
785:              slt          s11, a5, s2
786:              sll          a7, t1, s7
787:              srli         s2, zero, 16
788:              sltiu        zero, a5, -1130
                  bgeu         t0, s11, 805f
                  addi         tp, ra, -1368
                  sltu         sp, s8, a2
                  sub          a2, a2, s3
                  or           gp, sp, s1
                  slti         a2, tp, 598
                  sll          s10, a6, tp
796:              slt          tp, a5, sp
                  sra          s5, zero, a2
                  or           t6, a5, s6
                  bge          sp, t0, 812f
                  add          s8, t1, s9
                  ori          s11, a7, -280
                  addi         t3, a6, -1701
                  beq          s0, s4, 818f
                  srl          t3, t2, t0
805:              bltu         t4, a0, 810f
                  sll          a0, s3, s1
                  slt          t1, a4, t3
                  nop
                  srai         s3, a4, 3
810:              ori          s11, t2, -2009
                  srli         a7, s3, 0
812:              andi         s1, gp, -510
                  lui          a0, 633950
                  add          a1, s0, zero
                  slti         gp, s4, 1111
                  bgeu         s1, s2, 821f
                  or           tp, s2, t5
818:              auipc        s8, 380206
                  sll          s1, s0, zero
                  lui          a3, 898090
821:              blt          a6, s6, 822f
822:              lui          a0, 729149
                  beq          a7, s10, 830f
                  sub          sp, a6, s1
                  sltiu        s8, gp, -1099
                  beq          a2, t0, 834f
                  slt          a3, s4, s6
                  addi         a7, s4, -1508
                  xori         s7, gp, 193
830:              auipc        a2, 761478
                  nop
                  sub          s7, s3, s6
                  addi         sp, s6, 1932
834:              or           a7, gp, gp
                  bgeu         t3, a6, 841f
                  lui          zero, 426803
                  and          s9, sp, s2
                  srl          t6, s7, zero
                  slt          s5, zero, a5
                  addi         a7, s7, -43
841:              sub          t2, t2, s5
                  add          t4, t0, t0
                  bne          a5, t4, 848f
                  auipc        s4, 670629
                  bne          s10, tp, 853f
                  srl          s4, t5, tp
                  and          s9, s9, s9
848:              beq          s7, t1, 862f
                  slt          s2, s6, s8
                  auipc        s4, 574034
                  ori          s8, t3, 1787
                  add          zero, a7, s10
853:              sra          tp, ra, t6
                  srl          zero, t5, t0
                  or           t0, t0, a1
                  sub          s0, t6, a7
                  sll          s0, s3, ra
                  sltu         s10, t5, a2
                  ori          gp, s4, -215
                  srl          a0, ra, t6
                  sub          s4, s10, t5
862:              bge          s5, s6, 878f
                  lui          s8, 577170
                  slli         a1, s11, 5
                  srai         gp, t3, 28
                  bltu         s7, a0, 883f
                  beq          t3, s0, 873f
                  lui          sp, 770626
                  srli         tp, s1, 2
                  sll          s2, s6, a5
                  nop
                  sltiu        s9, tp, 1530
873:              andi         s1, t0, -656
                  slt          s9, s11, t5
                  srai         t6, s11, 3
                  add          t1, s0, gp
                  bgeu         t6, s4, 882f
878:              slli         s9, a3, 6
                  slti         zero, ra, -1254
                  slt          tp, s3, t1
                  andi         s5, a2, 653
882:              bltu         s1, s1, 893f
883:              beq          s8, t5, 884f
884:              lui          s2, 40903
                  bltu         s9, a7, 893f
                  addi         s0, s6, 123
                  sltu         a0, s11, s4
                  bne          s9, a5, 903f
                  auipc        sp, 991043
                  slt          t1, t2, zero
                  bltu         s10, t4, 894f
                  slt          a2, ra, a7
893:              sltiu        s0, a5, -426
894:              sub          s8, s3, s0
                  slli         a5, a7, 8
                  add          t4, a0, a4
                  srli         a5, t4, 19
                  xori         s11, zero, -96
                  addi         a4, s6, -646
                  and          t4, t4, a3
                  srl          a0, s4, a0
                  srai         s5, t4, 10
903:              beq          zero, a2, 908f
                  sltiu        a7, s3, -1153
                  ori          s5, t6, 1077
                  blt          s7, a3, 916f
                  xori         ra, s10, -481
908:              nop
                  bgeu         s7, s11, 928f
                  auipc        a4, 221247
                  sra          zero, t1, s0
                  bne          t5, t1, 925f
                  sll          s8, a6, s7
                  xori         s3, s5, -987
                  slt          a5, sp, s9
916:              ori          t0, a2, 472
                  sub          tp, t1, s2
                  sra          s11, s4, t1
                  addi         a7, t3, 1901
                  and          t0, a0, a7
                  andi         t2, s8, -334
                  auipc        tp, 560572
                  srai         s10, s3, 23
                  bltu         s10, a2, 929f
925:              sltu         a1, s10, a5
                  slt          s3, a7, t0
                  blt          s9, a0, 939f
928:              bne          sp, a2, 948f
929:              or           s3, t3, a0
                  bge          ra, a7, 948f
                  blt          a7, t2, 941f
                  bltu         s11, a0, 946f
                  ori          sp, sp, -1048
                  sra          s10, s2, s7
                  bgeu         a4, a1, 942f
                  addi         ra, a5, 602
                  auipc        t6, 505674
                  blt          t5, s9, 943f
939:              sll          a7, sp, a0
                  add          a1, s3, a2
941:              sra          s1, s3, a0
942:              or           gp, ra, t0
943:              andi         s8, s6, -972
                  auipc        s4, 863951
                  nop
946:              ori          tp, s3, -22
                  and          s3, a7, a3
948:              auipc        s1, 876996
                  srai         t3, s6, 25
                  addi         a4, s2, 2033
                  addi         s9, s2, 375
                  bge          t0, s1, 958f
                  sltiu        t0, a6, 1833
                  ori          s1, s2, -1750
                  or           t3, s10, a7
                  xor          a1, a3, a4
                  add          a4, ra, s6
958:              bltu         a0, s2, 978f
                  lui          s9, 98224
                  xori         a0, t2, 1191
                  andi         s11, a4, 1252
                  srli         t6, s8, 30
                  slti         t6, s3, 488
                  nop
                  bne          a4, s3, 982f
                  slt          s9, s4, s11
                  srli         s5, t5, 13
                  bltu         t0, s4, 977f
                  or           gp, s10, tp
                  xori         s2, a6, -490
                  nop
                  slt          sp, s9, s5
                  bltu         s3, s2, 980f
                  bltu         t6, s10, 975f
975:              ori          a7, a5, 401
                  ori          s2, a6, 425
977:              sltiu        t4, s3, 1999
978:              slt          tp, gp, a5
                  ori          t4, gp, 655
980:              blt          s8, s0, 998f
                  andi         gp, s8, 1724
982:              beq          gp, s4, 993f
                  sltiu        t4, a6, -608
                  slli         s5, t6, 16
                  bltu         t1, t0, 995f
                  bltu         s3, s2, 993f
                  addi         ra, a1, -980
                  ori          s5, zero, -815
                  or           t6, s8, sp
                  slt          zero, t3, s2
                  auipc        a4, 340417
                  beq          s0, tp, 997f
993:              sra          t1, a6, a5
                  sll          t0, s9, a7
995:              bge          a2, t2, 1011f
                  xor          ra, s7, t0
997:              nop
998:              bge          s3, s6, 1012f
                  andi         t6, t0, 288
                  beq          s10, tp, 1020f
                  bltu         t5, s4, 1009f
                  ori          s8, s2, -627
                  nop
                  slt          s5, t1, s6
                  add          s5, s7, s0
                  slti         s0, a0, 470
                  ori          s10, gp, -456
                  blt          zero, s11, 1013f
1009:             xori         s0, a4, 404
                  srli         s10, a4, 20
1011:             beq          a3, a1, 1030f
1012:             bgeu         a4, zero, 1017f
1013:             bltu         a7, s1, 1021f
                  sll          sp, sp, s9
                  sltiu        t2, s11, -1936
                  sltiu        sp, s8, -1436
1017:             lui          s4, 884837
                  bne          t4, zero, 1038f
                  xori         a3, s5, 1588
1020:             sltiu        s10, a7, 769
1021:             sltiu        a3, s2, -1201
                  srl          s1, s8, t6
                  addi         a2, a2, 901
                  srl          a0, t0, s8
                  bltu         zero, t3, 1028f
                  ori          zero, sp, -1251
                  beq          s2, s3, 1040f
1028:             bge          s5, t4, 1040f
                  bne          a2, s7, 1044f
1030:             bge          t3, s4, 1037f
                  addi         ra, a7, -1936
                  sltiu        t1, a3, -1289
                  srl          sp, gp, a4
                  ori          s10, tp, -2020
                  or           a7, s7, t6
                  sltu         t6, a2, s11
1037:             andi         a7, s10, 1901
1038:             sra          gp, zero, s8
                  sub          t6, a7, s4
1040:             addi         s4, s5, -1552
                  add          s4, s7, t6
                  srl          a3, t4, s9
                  sll          t1, s10, s8
1044:             lui          ra, 97134
                  auipc        a3, 105916
                  addi         gp, a2, 646
                  bltu         s0, a4, 1061f
                  bltu         a6, a1, 1058f
                  sra          t2, t5, a0
                  nop
                  bne          s2, t6, 1056f
                  sltu         a7, s9, a4
                  ori          s5, a3, -1318
                  or           s8, t6, s4
                  bne          t6, a4, 1072f
1056:             bge          s10, t0, 1062f
                  ori          t3, a5, -356
1058:             bgeu         tp, tp, 1067f
                  bge          s0, a3, 1065f
                  slti         t1, s4, -379
1061:             add          tp, s0, s1
1062:             sltu         s1, a2, t4
                  beq          t1, t1, 1069f
                  xor          s1, tp, t6
1065:             sll          s7, a5, t2
                  auipc        s9, 588870
1067:             bne          s1, tp, 1084f
                  srli         t1, s6, 7
1069:             sra          ra, a7, s9
                  sltiu        s7, a5, 702
                  ori          s7, s4, 816
1072:             or           s3, s5, a4
                  lui          t6, 434112
                  la           a3, region_1+1029 #start riscv_load_store_rand_instr_stream_9
                  addi         s9, a5, 236
                  ori          ra, s11, -1353
                  add          t0, s10, a3
                  sb           a0, 62(a3)
                  lbu          s4, 10(a3)
                  lui          t1, 939048
                  and          t4, a2, a6
                  sb           t1, -56(a3)
                  lui          t4, 159468
                  sub          a7, a7, s7
                  lui          s4, 907987
                  srl          s3, s7, a7
                  srli         t2, s9, 17
                  andi         a0, s2, 1724
                  lb           s5, 46(a3)
                  and          s0, t5, t2
                  sltu         a1, s9, zero
                  lb           s7, 41(a3)
                  lb           t3, -22(a3)
                  sll          s11, a6, tp
                  lbu          a1, -51(a3)
                  sltu         sp, s2, s6
                  sub          sp, tp, a0
                  sh           s9, 41(a3)
                  sra          s5, a4, t0
                  sltiu        sp, gp, -168
                  sub          gp, s9, s10
                  lbu          zero, -56(a3)
                  lhu          a5, -1(a3) #end riscv_load_store_rand_instr_stream_9
                  add          a4, a2, tp
                  srai         s4, a2, 27
                  srai         a1, s8, 12
                  addi         s3, a0, 700
                  srai         s7, ra, 1
                  ori          sp, ra, 476
                  addi         t4, s3, -1460
                  xori         sp, s11, -425
                  bgeu         t3, t3, 1087f
                  blt          a5, s3, 1088f
1084:             addi         a5, s8, 846
                  srli         ra, s10, 9
                  slt          t1, a1, a7
1087:             andi         t2, s2, 1782
1088:             slt          a0, t1, s2
                  srl          s9, s3, t4
                  ori          a3, a7, -1256
                  bge          s1, gp, 1106f
                  sra          a1, t1, s6
                  nop
                  sll          sp, t6, a6
                  xor          t1, a4, a0
                  addi         s8, s1, 1099
                  sll          s2, tp, s9
                  srl          t1, t0, a7
                  bltu         sp, s0, 1109f
                  bne          t1, t1, 1107f
                  sra          ra, a2, s2
                  addi         s1, t6, -149
                  bgeu         s9, a7, 1104f
1104:             slti         a1, a0, 1551
                  slt          t2, s5, t4
1106:             bne          t5, ra, 1125f
1107:             bge          s6, a5, 1114f
                  sll          s8, a2, s0
1109:             srli         a1, zero, 14
                  sll          s2, tp, a1
                  auipc        t0, 19089
                  sltiu        s10, gp, 74
                  beq          sp, t4, 1118f
1114:             nop
                  or           zero, a1, s3
                  ori          zero, s6, 1826
                  auipc        a1, 156374
1118:             sltiu        s2, t5, 522
                  slt          ra, s7, a2
                  bge          s6, a2, 1132f
                  beq          a4, s5, 1127f
                  slli         s1, s4, 30
                  auipc        sp, 310872
                  srai         t0, s8, 4
1125:             bne          a6, a4, 1139f
                  or           s10, s0, s5
1127:             or           zero, s2, a4
                  bne          s11, s1, 1133f
                  andi         s11, gp, -872
                  slti         a7, a7, -621
                  bgeu         a0, s0, 1147f
1132:             srai         t4, s10, 15
1133:             xor          s7, s0, t0
                  andi         a0, a3, 1993
                  addi         s9, a0, 337
                  bne          s10, a6, 1149f
                  add          t4, zero, t1
                  sra          a3, a3, s0
1139:             bne          a7, sp, 1147f
                  slt          s7, s7, a2
                  sltiu        s9, s1, 11
                  and          sp, t5, s5
                  srli         s11, s0, 28
                  sra          s7, a3, a4
                  sltu         t3, a2, s5
                  sltiu        t6, t2, -1509
1147:             bgeu         t3, a2, 1157f
                  xor          s10, a5, a5
1149:             bltu         a0, s2, 1169f
                  bltu         s0, a2, 1168f
                  slti         t3, a4, 884
                  auipc        t1, 638887
                  srli         s9, s1, 20
                  xor          s11, s11, a6
                  srl          t2, s2, tp
                  ori          s1, a2, -196
1157:             bge          a6, a0, 1166f
                  bge          s8, a6, 1175f
                  sub          s1, sp, t2
                  add          s11, zero, s2
                  bge          sp, t1, 1167f
                  xor          a1, t3, s3
                  bge          s8, s4, 1168f
                  slt          ra, a4, s1
                  addi         t3, t4, -561
1166:             slli         t1, t0, 16
1167:             sra          a1, s0, t1
1168:             bltu         s5, ra, 1179f
1169:             bltu         sp, zero, 1175f
                  srli         s1, a3, 30
                  or           ra, a5, gp
                  blt          t5, s8, 1177f
                  add          zero, s4, t0
                  sltu         a3, a4, s4
1175:             srli         gp, sp, 6
                  or           s7, s0, s3
1177:             add          s3, s10, s1
                  lui          s5, 420887
1179:             sltiu        s8, a5, 39
                  auipc        ra, 751024
                  slti         s5, a3, 163
                  bltu         zero, a2, 1190f
                  sltiu        a3, gp, 531
                  nop
                  addi         sp, s10, 1323
                  bge          t0, tp, 1189f
                  and          s4, s6, s1
                  addi         t2, t4, 1094
1189:             ori          s3, s4, -1213
1190:             ori          s3, gp, -698
                  sub          ra, tp, ra
                  addi         zero, s6, -1177
                  sltiu        s9, t0, 1071
                  bne          a3, a6, 1214f
                  andi         s5, a4, -774
                  sra          t4, tp, s2
                  andi         a3, s10, 915
                  srai         gp, a1, 9
                  or           tp, s10, gp
                  slli         a4, s10, 8
                  bgeu         s0, a2, 1218f
                  bge          s2, s9, 1216f
                  slti         s4, a6, -1215
                  lui          s9, 567213
                  slli         zero, t1, 4
                  bgeu         a7, a3, 1221f
                  ori          s1, a5, 38
                  lui          a3, 548406
                  sll          t6, t6, t5
                  bgeu         t1, zero, 1211f
1211:             addi         t2, t6, -942
                  bne          tp, s5, 1217f
                  sub          a1, t0, a0
1214:             andi         t2, a1, -2012
                  sltiu        t3, a7, 786
1216:             sltu         s10, s9, s3
1217:             blt          a2, tp, 1223f
1218:             sra          a0, s10, s1
                  andi         s0, s4, 1000
                  auipc        t3, 242148
1221:             or           s5, s8, a3
                  beq          t3, s6, 1232f
1223:             sra          t0, ra, sp
                  sra          s9, s6, t0
                  ori          s4, s6, -16
                  sll          s2, s7, s2
                  lui          a3, 1048449
                  bge          s5, s3, 1234f
                  auipc        s1, 217176
                  slli         a1, s5, 13
                  blt          a4, a1, 1237f
1232:             srl          s1, t3, t5
                  bge          t2, sp, 1238f
1234:             sll          a7, s11, s1
                  andi         zero, a0, 636
                  slti         a5, s4, 530
1237:             nop
1238:             srai         t1, s7, 6
                  and          s8, s11, s10
                  bltu         t1, s4, 1248f
                  bne          ra, t0, 1248f
                  sltu         t3, a0, zero
                  sub          t6, s6, a0
                  bne          a0, ra, 1252f
                  sra          a3, t3, s5
                  srl          a3, t6, s4
                  xor          sp, s1, a7
1248:             srl          a0, s3, s1
                  srl          a4, a4, gp
                  ori          ra, t2, -361
                  slt          t3, a3, ra
1252:             auipc        a1, 353460
                  srl          zero, s9, s5
                  slt          s7, a3, t4
                  xori         s9, sp, 346
                  lui          a1, 964846
                  add          a1, a4, a1
                  bgeu         gp, s7, 1263f
                  srl          ra, t0, s6
                  sub          t4, s1, s1
                  slt          a3, a1, zero
                  sll          s10, gp, a4
1263:             andi         a0, t4, 85
                  add          s9, tp, t6
                  bne          s0, s4, 1277f
                  bltu         t2, sp, 1275f
                  and          t1, s7, s11
                  sltu         t4, a1, sp
                  xor          gp, t3, t4
                  slt          s9, s9, a6
                  sra          a2, a2, s2
                  sub          t0, a0, t5
                  addi         s4, a6, -86
                  sll          zero, a5, t4
1275:             addi         t3, s1, 555
                  bgeu         t4, s8, 1290f
1277:             bge          s0, t0, 1295f
                  slli         t1, s1, 24
                  ori          t4, s9, 1413
                  bne          t5, gp, 1285f
                  srai         a3, s3, 11
                  bgeu         gp, sp, 1292f
                  add          s4, ra, gp
                  nop
1285:             auipc        s10, 890915
                  slti         s11, t5, 663
                  addi         a2, sp, -847
                  srai         a4, s2, 27
                  xor          s3, s0, t6
1290:             auipc        a3, 48531
                  nop
1292:             xor          tp, t5, s1
                  xor          a7, a2, s4
                  auipc        s2, 828887
1295:             slli         sp, s7, 1
                  add          t3, t0, a4
                  bgeu         s4, s7, 1314f
                  bgeu         t2, a3, 1318f
                  bltu         a1, t5, 1318f
                  andi         a4, t6, 2018
                  slli         s0, a6, 31
                  sub          gp, s10, t6
                  and          a5, zero, t3
                  srai         s9, s9, 12
                  sub          s5, sp, s6
                  slt          s0, a2, a5
                  slt          s4, s6, ra
                  bgeu         s11, t0, 1321f
                  xori         s2, sp, -1225
                  nop
                  xori         t2, zero, -1137
                  lui          a0, 863849
                  addi         t2, gp, 1270
1314:             bltu         a2, a6, 1317f
                  sra          ra, a2, a3
                  xor          a2, s10, ra
1317:             slli         a2, t4, 7
1318:             or           a1, tp, s3
                  bge          t3, a7, 1333f
                  slli         a0, gp, 9
1321:             slti         a1, zero, 602
                  sll          t0, s0, t4
                  lui          s0, 246883
                  ori          s3, gp, -1105
                  slt          s11, a4, a6
                  srl          t3, a2, s11
                  nop
                  sll          a0, t5, t6
                  ori          a5, tp, -198
                  addi         gp, a7, 894
                  sra          s8, t1, t2
                  slli         s0, s11, 1
1333:             addi         a5, s0, 1601
                  beq          tp, t4, 1341f
                  ori          gp, a7, -1203
                  andi         t2, t3, -2038
                  xor          s4, a4, t4
                  or           s0, t1, t2
                  andi         s9, t5, 243
                  srai         s7, a3, 0
1341:             slt          gp, s7, s11
                  bgeu         zero, a2, 1347f
                  srai         s9, s9, 6
                  ori          ra, gp, -2004
                  srli         a2, t1, 12
                  sltiu        s11, a4, -1865
1347:             srai         sp, s7, 22
                  auipc        tp, 8371
                  sltu         tp, a4, tp
                  slt          a3, t3, s10
                  and          s4, s11, s4
                  sltu         t6, s5, s4
                  andi         a1, a2, 170
                  slli         s7, a1, 25
                  nop
                  bgeu         t4, s7, 1367f
                  slli         a4, a5, 8
                  slt          s4, t6, s8
                  sra          s5, zero, a4
                  bltu         sp, t2, 1380f
                  sll          tp, s7, t0
                  xori         t1, t1, -1828
                  nop
                  sra          t3, a3, s5
                  beq          t6, t3, 1381f
                  sub          s1, a1, t1
1367:             addi         t4, a3, -453
                  srli         zero, s10, 0
                  srli         tp, zero, 24
                  slli         a4, s9, 27
                  bltu         s4, t5, 1388f
                  srli         s11, t1, 21
                  blt          a3, a4, 1380f
                  add          t4, ra, s0
                  bgeu         a4, ra, 1382f
                  and          a5, s3, t4
                  srai         a3, a3, 18
                  addi         s0, t1, -1018
                  add          t4, s9, a0
1380:             sll          s9, s8, s3
1381:             andi         a7, t0, 282
1382:             srai         s2, a6, 1
                  xor          gp, s10, ra
                  andi         zero, sp, 1489
                  ori          a7, a0, -789
                  add          s2, t2, t3
                  srai         s11, s6, 21
1388:             slti         a7, s7, 718
                  xori         t0, s7, 2037
                  andi         t3, tp, 933
                  addi         s0, ra, 1762
                  sll          sp, a5, s5
                  xori         a5, a5, 65
                  andi         a7, a2, -871
                  sub          a0, s10, ra
                  sll          s4, t3, tp
                  xor          t4, s10, s2
                  slli         t4, a1, 8
                  bgeu         s6, t3, 1418f
                  bltu         t2, s7, 1417f
                  srai         tp, t6, 8
                  bge          s11, t6, 1407f
                  sltiu        s10, a6, -154
                  srli         s0, s11, 30
                  andi         sp, s10, -1866
                  nop
1407:             auipc        gp, 594407
                  blt          a3, a1, 1414f
                  add          a7, s2, a5
                  addi         s1, a2, 1750
                  bltu         t4, a1, 1425f
                  sub          s7, sp, s5
                  nop
1414:             srli         ra, tp, 11
                  andi         s11, s10, -1757
                  srai         t2, t5, 22
1417:             xor          s0, a5, s11
1418:             bltu         a4, s11, 1423f
                  bgeu         t3, s8, 1431f
                  xori         t3, s10, 1289
                  ori          s9, s9, -1047
                  auipc        s11, 619226
1423:             slli         s1, ra, 28
                  slti         s0, s10, 293
1425:             blt          t3, s6, 1433f
                  ori          s4, sp, 1647
                  sll          s3, a3, zero
                  bge          zero, s11, 1443f
                  slli         a2, tp, 27
                  sltu         s4, s7, t3
1431:             blt          a5, s1, 1448f
                  sll          t1, a6, s1
1433:             blt          s1, a6, 1453f
                  sll          s2, a7, s5
                  sltiu        s4, t2, 849
                  srli         s11, s3, 0
                  beq          s2, a5, 1453f
                  la           sp, region_0+127 #start riscv_load_store_rand_instr_stream_7
                  sltu         a4, s0, s6
                  lui          s8, 216598
                  slt          s10, t0, t4
                  sb           a3, 248(sp)
                  lh           t6, 197(sp)
                  lbu          t3, 150(sp)
                  lb           s9, -60(sp)
                  sll          a2, s8, s0
                  lbu          s4, 11(sp)
                  xor          gp, a5, s7
                  sb           gp, -36(sp)
                  addi         s3, tp, 149
                  sub          s0, gp, a1
                  sltu         s3, s10, s1
                  sb           s11, 103(sp)
                  lh           a5, 163(sp)
                  slli         s2, gp, 25
                  sub          s10, t6, t5
                  lbu          s1, 74(sp)
                  lhu          a0, 53(sp)
                  lh           a4, 255(sp)
                  lbu          a1, 144(sp)
                  lbu          s10, -38(sp)
                  sh           a0, 109(sp)
                  lui          t0, 114438
                  sb           t6, 70(sp)
                  lbu          s11, 132(sp)
                  lb           a0, 54(sp)
                  and          s9, gp, a4
                  addi         s9, zero, -745
                  sb           t1, 233(sp)
                  xori         a0, gp, 1331
                  sb           a5, -12(sp)
                  lb           zero, -58(sp)
                  sb           ra, -57(sp)
                  sb           t2, -100(sp)
                  lh           zero, 133(sp)
                  lhu          s10, 247(sp) #end riscv_load_store_rand_instr_stream_7
                  ori          tp, t0, -1998
                  sll          s1, s8, t6
                  srli         t4, zero, 12
                  slti         s11, ra, -936
                  xori         a4, t0, 1289
1443:             srl          t4, gp, s7
                  srai         s7, s3, 1
                  blt          a1, sp, 1459f
                  srai         s10, zero, 23
                  slli         s8, s3, 11
1448:             xor          a4, a5, zero
                  bne          s9, s9, 1460f
                  nop
                  andi         s2, gp, 877
                  bgeu         zero, sp, 1470f
1453:             sub          a4, s8, a1
                  srl          t2, sp, s1
                  or           t4, s3, t5
                  slt          s0, a5, s8
                  srai         ra, s5, 30
                  and          ra, t3, a5
1459:             beq          s8, a7, 1464f
1460:             bgeu         gp, a3, 1466f
                  srl          a1, t5, s5
                  sub          s4, a5, s6
                  sltu         s1, s2, s11
1464:             sltu         tp, t4, ra
                  auipc        s4, 548619
1466:             sub          t0, s10, s0
                  sll          a3, t4, s11
                  bltu         t4, s2, 1473f
                  sub          t1, t5, s10
1470:             auipc        tp, 708241
                  bltu         s1, a0, 1480f
                  andi         s0, t4, 40
1473:             beq          s5, t0, 1478f
                  ori          a2, s9, -129
                  add          t4, t0, ra
                  lui          a7, 293381
                  addi         s8, a4, -1217
1478:             bgeu         s5, tp, 1491f
                  srli         t2, s6, 12
1480:             or           t4, t3, s1
                  lui          sp, 624821
                  sub          a1, s5, t5
                  lui          t1, 524161
                  lui          s11, 994509
                  or           s11, a0, t1
                  slt          a1, s5, s8
                  addi         a5, sp, 1771
                  and          ra, s4, t4
                  srli         s0, a7, 9
                  srl          s8, t0, s3
1491:             sll          t6, s4, s1
                  slti         s11, gp, -1606
                  sltiu        t1, s6, 1728
                  sltiu        s7, s2, 562
                  add          a5, s7, s6
                  sub          t3, t1, ra
                  lui          a5, 226697
                  bge          t3, zero, 1501f
                  xori         s2, t1, 549
                  sltu         a3, a3, s0
1501:             xor          t3, a0, a2
                  nop
                  bltu         a2, t1, 1518f
                  and          s5, a6, a3
                  sra          t3, s2, t2
                  slt          t2, t3, gp
                  xori         a7, a5, 49
                  sub          t3, s11, a3
                  srl          zero, s8, a1
                  addi         zero, t2, -1791
                  srl          t2, s11, s2
                  lui          tp, 854540
                  and          a7, a5, s1
                  auipc        gp, 429356
                  auipc        t3, 546139
                  la           a2, region_0+444 #start riscv_load_store_rand_instr_stream_6
                  sub          a4, s6, s11
                  lh           s0, -48(a2)
                  sb           a4, -255(a2)
                  lh           s2, -126(a2)
                  lb           a5, 57(a2)
                  and          t1, s7, t1
                  and          s11, a2, t5
                  lbu          t3, -7(a2)
                  sh           t0, 44(a2)
                  lh           s7, 214(a2)
                  lbu          t2, -207(a2)
                  sltiu        s1, t1, 1428
                  lb           a3, -87(a2)
                  sltiu        s7, s9, 305
                  lbu          ra, 61(a2)
                  lh           s0, 222(a2)
                  nop
                  lb           s11, -3(a2)
                  lbu          s5, -5(a2)
                  lui          sp, 612142
                  sh           s7, 142(a2)
                  sh           a1, 56(a2)
                  srl          a3, t1, t5
                  sb           ra, 192(a2)
                  and          s8, a1, s2
                  or           a4, s8, s4
                  ori          gp, t2, 646
                  addi         ra, s0, 711
                  lb           tp, 43(a2)
                  lb           s7, -59(a2)
                  ori          a7, s2, -498
                  srl          s10, a6, a7
                  add          s1, a0, s11
                  slt          t1, s0, zero
                  sw           s3, -104(a2)
                  lbu          s1, -163(a2)
                  nop
                  lb           s0, 170(a2)
                  slli         s0, s11, 16
                  lbu          a1, 241(a2)
                  auipc        s7, 311370
                  lbu          gp, -39(a2)
                  addi         t4, s5, -655
                  slli         t6, ra, 6
                  lhu          t0, 202(a2)
                  addi         a5, s7, 2002
                  sb           ra, 179(a2)
                  sb           a2, -71(a2)
                  lbu          zero, -63(a2) #end riscv_load_store_rand_instr_stream_6
                  xori         ra, s7, -658
                  ori          s1, sp, 336
1518:             addi         a0, gp, -340
                  lw           s11, 4(t5)
                  sltiu        s0, s10, 328
                  addi         t5, t5, 60
                  sra          a5, s6, a6
                  sltu         s2, a0, s1
                  or           a3, a5, s7
2047:             addi x19, x27, 1
2047:             jalr x19, x19, 0
sub_10:           addi         t5, t5, -32
                  sw           s11, 4(t5)
                  sll          s7, s2, a1
                  addi         t6, t6, -982
                  andi         s2, t4, -1157
                  slli         t0, a1, 13
                  or           a4, s3, t2
                  la           s1, region_1+1309 #start riscv_load_store_rand_instr_stream_0
                  sb           t3, 6(s1)
                  and          a3, a0, a4
                  lbu          s11, -3(s1)
                  lbu          s10, -8(s1)
                  lb           s8, 8(s1)
                  lui          a4, 920566
                  sltiu        a1, s2, -240
                  lb           zero, 9(s1)
                  slt          gp, t2, s10
                  sh           t5, -11(s1)
                  lbu          t0, 12(s1)
                  lhu          zero, 13(s1)
                  sh           s6, 7(s1)
                  addi         t0, s10, 33
                  lh           a2, 1(s1)
                  lb           a7, -2(s1)
                  lbu          s9, -14(s1)
                  auipc        a5, 599608
                  xori         a4, t3, 211
                  sll          s9, s0, a4
                  sb           s8, 4(s1)
                  slt          a5, tp, zero
                  lb           s5, 3(s1)
                  addi         ra, a6, 955
                  lbu          sp, 10(s1)
                  sltiu        t2, sp, -142
                  lh           t2, -9(s1)
                  sb           a6, 13(s1) #end riscv_load_store_rand_instr_stream_0
                  add          t6, t1, s11
                  auipc        a2, 837435
                  slli         s1, s3, 26
                  bltu         a5, s11, 10f
                  bgeu         a0, a4, 18f
                  srl          gp, a7, ra
                  or           s8, s6, s9
                  sub          s9, s1, a3
                  ori          t0, s4, -1324
                  slli         a0, s6, 14
10:               nop
                  addi         s10, t3, -729
                  bgeu         s9, gp, 17f
                  bltu         t4, s0, 21f
                  xori         tp, ra, -532
                  auipc        a1, 538981
                  srl          tp, t0, t4
17:               or           ra, s2, t4
18:               sltiu        a0, a2, -82
                  slti         gp, s1, -2036
                  blt          gp, s7, 29f
21:               sub          a1, t6, t0
                  xor          s3, a4, a1
                  bge          s1, t6, 29f
                  bltu         zero, a3, 32f
                  sub          s11, a6, s8
                  bge          a0, s3, 39f
                  bne          s1, s11, 40f
                  beq          s4, s8, 47f
29:               andi         s9, s11, -2026
                  xori         a7, s1, -1115
                  xor          s8, s8, ra
32:               sltiu        s1, t2, -1522
                  xor          s1, t1, s3
                  add          s10, s8, a3
                  bge          a2, sp, 54f
                  slti         s2, gp, 294
                  add          tp, a4, a3
                  or           tp, s9, a1
39:               andi         s3, t6, -693
40:               slti         sp, s1, 1269
                  and          t4, tp, s11
                  srli         s4, t5, 20
                  bne          tp, s7, 47f
                  srai         s1, s5, 12
                  bne          s10, t5, 48f
                  or           s3, s5, sp
47:               xori         t2, a6, -1084
48:               sra          t4, s10, gp
                  lui          sp, 747531
                  and          s9, a7, s2
                  add          s0, ra, t1
                  xori         a0, a5, 827
                  sltu         s10, a4, s4
54:               bgeu         a7, ra, 70f
                  slli         a1, s2, 15
                  sub          a5, a2, sp
                  lui          sp, 907801
                  blt          s4, s2, 71f
                  xor          zero, sp, t2
                  lui          a4, 592149
                  bge          t3, s5, 78f
                  srl          a5, a2, t5
                  addi         s2, a4, 1635
                  sltu         s4, s7, t5
                  sll          a3, s9, s1
                  bgeu         tp, t3, 71f
                  add          s8, s9, t0
                  andi         t6, t1, -2003
                  or           s10, s7, t4
70:               beq          s2, t2, 82f
71:               auipc        s3, 14098
                  ori          tp, s0, 1121
                  sub          sp, tp, s11
                  blt          t6, zero, 81f
                  slli         s0, s10, 8
                  blt          s8, a2, 80f
                  nop
78:               blt          t2, gp, 86f
                  or           t0, ra, t2
80:               sll          s11, ra, t4
81:               ori          a1, a1, 461
82:               or           a0, a2, ra
                  ori          t0, s9, 1109
                  and          a3, t3, t6
                  bgeu         a5, sp, 95f
86:               bltu         s11, a5, 105f
                  xori         s5, a1, 1287
                  bne          s8, s0, 101f
                  lui          s2, 86333
                  xor          ra, s5, a0
                  bgeu         zero, s5, 105f
                  slli         t2, t3, 0
                  ori          s9, s0, -258
                  sltiu        gp, t1, 1692
95:               bgeu         s11, s9, 111f
                  sltiu        s2, a6, -1555
                  srai         t6, s1, 13
                  slt          s8, zero, s11
                  or           ra, t3, a3
                  beq          a1, a4, 114f
101:              and          sp, a3, s3
                  srl          s1, s4, t4
                  sll          s9, t5, s10
                  lui          s0, 9140
105:              sltu         a4, ra, zero
                  blt          a2, s3, 115f
                  and          t2, s7, a1
                  slti         a5, s10, 1483
                  sub          s4, s0, s5
                  sub          t6, zero, s1
111:              sltiu        a1, a5, 156
                  add          s4, zero, s0
                  slti         s5, t1, 1454
114:              sub          t3, a7, s5
115:              addi         zero, s0, 1247
                  slt          gp, a1, s1
                  srai         s2, a4, 30
                  nop
                  sub          t4, s11, tp
                  addi         a0, s4, 1772
                  and          s0, s8, a0
                  srai         s11, gp, 29
                  auipc        a7, 967452
                  add          s11, t4, a6
                  blt          a2, gp, 128f
                  sltiu        s7, a6, -1351
                  nop
128:              nop
                  srl          s3, s8, a3
                  lw           s11, 4(t5)
                  sra          s4, a7, t4
                  sll          s2, a6, s9
                  andi         gp, ra, -509
                  addi         t5, t5, 32
                  sll          sp, sp, t6
                  nop
                  xor          s3, s8, t0
                  slli         t0, t2, 26
                  lui          s3, 679783
176:              addi x3, x27, 0
176:              jalr x3, x3, 0
sub_7:            beq          s5, s8, sub_7_stack_p
                  sltu         sp, sp, a7
                  nop
sub_7_stack_p:    addi         t5, t5, -64
                  sw           s11, 4(t5)
                  sltu         a2, zero, t3
                  bgeu         s6, s11, 14f
                  srai         a0, s6, 4
                  and          s10, ra, s10
                  xori         a3, s2, -564
                  andi         a3, a1, 223
                  nop
                  sltu         s4, gp, t2
                  andi         t3, tp, -1617
                  addi         s4, a7, -880
                  srl          t4, t1, s10
                  andi         t3, t4, -820
                  slt          a1, a0, s5
                  bltu         ra, ra, 26f
                  sll          t0, a7, a4
14:               lui          t6, 678074
                  sll          ra, t2, a5
                  sra          s11, t1, a3
                  bltu         s3, ra, 23f
                  bgeu         a2, s1, 20f
                  or           a5, t1, t4
20:               addi         s8, t2, 1711
                  sltu         s9, a7, t4
                  beq          a5, t3, 35f
23:               blt          s2, s4, 38f
                  slt          t4, a4, a3
                  sra          t1, zero, a0
26:               nop
                  auipc        a5, 167158
                  slt          t3, a6, sp
                  lui          s8, 970723
                  ori          s10, s0, 15
                  sltiu        a2, tp, 1771
                  slti         a3, a7, -1035
                  addi         t4, a3, 663
                  andi         t2, sp, -1965
35:               and          s7, t0, t4
                  sub          s9, gp, t0
                  auipc        s7, 154654
38:               addi         s0, a7, 1841
                  blt          s1, tp, 53f
                  nop
                  beq          s11, ra, 56f
                  auipc        a4, 517316
                  add          zero, a6, s0
                  or           s8, s0, s1
                  slt          s9, s1, a2
                  la           s0, region_1+188 #start riscv_load_store_rand_instr_stream_1
                  nop
                  lbu          t1, 1619(s0)
                  lb           s9, 866(s0)
                  andi         ra, s5, -1709
                  slli         gp, t3, 13
                  sw           a4, 860(s0)
                  sb           s2, 1466(s0)
                  srai         zero, s4, 5
                  slt          sp, gp, sp
                  lh           s4, 1348(s0)
                  auipc        s8, 261159
                  sb           s8, 731(s0)
                  lb           s9, 1199(s0)
                  lb           s1, 831(s0)
                  srl          s7, ra, gp
                  lh           s11, 1390(s0)
                  sra          s1, t3, a6
                  ori          ra, a1, -461
                  sh           t4, 1136(s0)
                  addi         gp, s7, 1440
                  lb           a5, 1444(s0)
                  andi         a7, s9, 1256
                  lbu          sp, 887(s0)
                  sra          a2, s0, s2
                  sub          s1, s9, sp
                  sltu         a4, s2, t3
                  lhu          s1, 1754(s0)
                  sb           s7, 614(s0)
                  xori         s1, tp, -755
                  lb           s9, 1153(s0)
                  lh           s11, 1634(s0)
                  lbu          s11, -50(s0) #end riscv_load_store_rand_instr_stream_1
                  slt          s3, s7, t1
                  xori         a5, t1, 586
                  bge          a1, zero, 50f
                  nop
50:               sra          a0, s3, t0
                  or           s2, a7, t6
                  bne          s1, a5, 70f
53:               bne          s8, t1, 72f
                  slt          a4, a3, a2
                  nop
56:               auipc        sp, 679550
                  and          a0, a6, t6
                  ori          a1, a1, -1518
                  sll          a3, s6, t6
                  beq          s9, s4, 70f
                  slt          a7, s11, s5
                  addi         s11, tp, 1175
                  slli         t4, t2, 6
                  slli         s3, t1, 1
                  ori          a2, s0, 855
                  xori         a0, s9, 1045
                  srli         a7, t1, 27
                  and          t0, s4, s6
                  beq          a0, a2, 79f
70:               srli         t0, s0, 19
                  andi         s0, gp, 219
72:               slt          s4, s3, t4
                  sltu         s1, s10, t3
                  srli         t1, a0, 20
                  nop
                  blt          s0, a7, 91f
                  sltu         t3, s2, s3
                  or           t2, t4, s2
79:               andi         a4, a4, -729
                  blt          t1, s1, 81f
81:               ori          t4, gp, 893
                  or           s11, t2, s0
                  bne          s3, a3, 91f
                  ori          t6, sp, -1675
                  bge          t2, a1, 101f
                  nop
                  sltu         a5, a1, a4
                  and          t0, t2, s3
                  srl          gp, t0, s0
                  lui          a4, 198195
                  slli         t0, t6, 2
                  nop
                  slli         s7, s1, 30
sub_7_j12:        jal          s11, sub_8 #jump sub_7 -> sub_8
                  bge          a1, s0, 101f
                  xori         t4, t5, 587
                  blt          ra, t3, 95f
                  addi         s5, a7, -1579
                  xor          s9, s3, a7
91:               lui          gp, 1017925
                  xor          t3, tp, s2
                  bltu         tp, zero, 95f
                  lui          a0, 167945
95:               add          s4, tp, a3
                  srai         t3, t3, 24
                  bgeu         a6, s0, 98f
98:               srai         t3, t3, 20
                  ori          a3, s4, -161
                  xor          s10, s9, s7
101:              blt          a6, tp, 119f
                  sltu         s8, a5, a2
                  slti         s5, s9, 365
                  bltu         s2, s11, 119f
                  sra          a1, a1, t1
                  slt          s10, s7, t4
                  bge          a0, t4, 127f
                  srai         a5, s3, 24
                  srai         a2, t6, 11
                  sub          s9, t3, s0
                  blt          tp, s10, 114f
                  sll          t0, a3, s7
                  srli         s5, s5, 8
114:              lui          t0, 26701
                  nop
                  xori         s0, t5, 641
                  srai         t0, sp, 21
                  sll          zero, a0, t1
119:              addi         t3, t2, -1405
                  and          a7, t2, t2
                  beq          gp, t0, 124f
                  sra          tp, s1, a6
                  sll          s5, a5, a0
124:              slt          s1, a3, t3
                  bltu         gp, t4, 127f
                  beq          zero, a5, 146f
127:              bltu         t3, t1, 139f
                  nop
                  bne          s1, t4, 134f
                  xori         sp, gp, 524
                  sltu         s9, t1, s7
                  andi         t0, a4, -926
                  bge          a5, t3, 138f
134:              sltu         a1, sp, a3
                  or           s1, t4, a0
                  srai         sp, t3, 31
                  and          t3, t1, t2
138:              slti         s0, s4, -1914
139:              srai         a2, s8, 31
                  sll          t0, s4, a6
                  and          s2, tp, s11
                  sltiu        s9, s10, -1786
                  slli         a2, s7, 12
                  sll          t6, s9, s1
                  ori          s4, zero, -113
146:              sltu         zero, a2, t5
                  bltu         t6, s0, 148f
148:              lui          s11, 272701
                  bge          s11, a6, 169f
                  bgeu         a6, s0, 160f
                  beq          s5, t4, 161f
                  andi         ra, a0, -1707
                  sub          a4, tp, ra
                  slli         sp, s3, 13
                  auipc        a4, 725179
                  add          s7, a2, a0
                  sltiu        s11, s10, -1964
                  nop
                  add          a4, s11, s4
160:              sll          t3, zero, a7
161:              sll          s3, s2, a0
                  slli         t4, s11, 30
                  and          t1, t5, s10
                  srli         s11, t4, 17
                  slt          s3, a0, a5
                  nop
                  srli         a4, s8, 6
                  sll          t4, s6, a7
169:              sll          zero, a4, s10
                  slti         s4, a0, 737
                  addi         ra, s0, 286
                  bge          s2, sp, 185f
                  sll          t2, s0, s11
                  sltiu        s3, sp, 27
                  add          zero, s7, s3
                  srl          s9, s1, a6
                  andi         s7, t5, 1830
                  bltu         a2, a4, 180f
                  bgeu         s7, s8, 181f
180:              sll          s2, s0, t2
181:              sll          a4, gp, t0
                  sltu         s9, s7, s8
                  andi         s8, s10, 400
                  bltu         s2, t5, 192f
185:              srai         s7, zero, 19
                  sltiu        t1, s4, 1525
                  auipc        t1, 760351
                  srai         t3, a5, 29
                  slt          s11, ra, a2
                  xori         t4, t0, -626
                  lui          s3, 435482
192:              nop
                  andi         a1, a7, -1868
                  sltu         t0, a0, gp
                  xori         t3, t0, -1946
                  slli         a0, a4, 7
                  add          s5, t6, s5
                  beq          sp, s8, 200f
                  slli         t0, a6, 26
200:              bltu         t4, zero, 207f
                  sll          s5, a6, s8
                  bne          a3, s0, 203f
203:              or           zero, t1, t4
                  blt          a2, s8, 207f
                  sltiu        a2, a1, -1887
                  bgeu         a7, zero, 221f
207:              srai         gp, s2, 29
                  slt          tp, tp, a0
                  xor          t0, t0, t1
                  slti         s4, s11, -1985
                  add          s3, a2, t3
                  lui          ra, 577205
                  bltu         t4, s5, 232f
                  xor          s1, s9, s8
                  blt          sp, s2, 221f
                  addi         zero, a5, 1138
                  sll          a7, s4, ra
                  add          a7, a5, s11
                  slli         s3, sp, 16
                  sra          s9, gp, a4
221:              slli         s3, t4, 13
                  sltu         s8, s7, s0
                  srai         ra, t4, 25
                  blt          s0, t1, 244f
                  add          tp, t6, s2
                  ori          gp, t3, 1518
                  or           gp, zero, s1
                  andi         t4, a5, 589
                  bge          a4, t5, 244f
                  la           sp, region_0+1050 #start riscv_load_store_rand_instr_stream_2
                  andi         s8, s11, -1634
                  sb           t4, 58(sp)
                  lh           s9, 52(sp)
                  sh           s8, -36(sp)
                  nop
                  lb           a7, -60(sp)
                  lb           s9, 39(sp)
                  lbu          t1, -42(sp)
                  lbu          ra, 43(sp)
                  ori          t6, a5, 573
                  lb           s2, -23(sp)
                  slt          s1, s2, s10
                  lb           s5, -17(sp)
                  sh           gp, -56(sp)
                  ori          tp, t3, 1656
                  and          gp, s10, t6
                  sb           gp, -64(sp)
                  lbu          s5, 16(sp)
                  sb           t2, -26(sp)
                  lb           s7, -2(sp)
                  lh           t4, 34(sp)
                  lh           t3, 18(sp)
                  sh           t3, -46(sp)
                  lbu          a7, 55(sp)
                  sb           t3, 49(sp)
                  lh           ra, -52(sp)
                  srli         s1, s10, 13
                  xor          s7, t6, s8
                  nop
                  srli         s5, t3, 24
                  lui          ra, 943845
                  sub          gp, s2, s1
                  srl          s5, s1, t0
                  sb           s5, 46(sp)
                  slli         s4, a7, 16
                  lb           gp, -27(sp)
                  lb           a2, 63(sp)
                  sub          ra, gp, a1
                  lb           a7, -7(sp)
                  srl          s3, a4, s7
                  lbu          s1, 9(sp)
                  sb           s0, -64(sp)
                  lb           t4, 6(sp)
                  lbu          a2, -49(sp)
                  lbu          a7, 59(sp)
                  lbu          tp, 31(sp) #end riscv_load_store_rand_instr_stream_2
                  sltu         s11, sp, gp
                  auipc        sp, 938421
232:              bgeu         t4, s2, 246f
                  sub          t3, a4, s11
                  lui          a0, 800654
                  lui          a3, 669632
                  slli         t2, t0, 3
                  bne          t0, a5, 240f
                  sub          a7, s3, s5
                  srl          s0, a1, a5
240:              add          s5, a6, tp
                  andi         t3, t0, 726
                  sltu         s5, sp, a3
                  lui          a4, 249956
244:              or           gp, t2, t3
                  ori          s1, t2, -813
246:              srli         ra, a5, 21
                  and          a3, s7, s11
                  srai         t6, a1, 4
                  xor          t0, a6, t4
                  sra          a5, tp, s5
                  addi         s9, t6, -477
                  bne          s4, a3, 270f
                  blt          tp, s5, 265f
                  slt          t2, s3, s3
                  srli         a4, s10, 23
                  beq          tp, t2, 271f
                  slt          a4, tp, s4
                  sltiu        a2, s0, 2035
                  andi         t0, gp, 1342
                  bltu         s2, ra, 262f
                  xor          t4, t6, s2
262:              nop
                  slli         s3, s10, 17
                  beq          t5, a6, 282f
265:              sltu         zero, s5, tp
                  slli         a0, a7, 18
                  sll          a4, t0, a5
                  blt          a6, a6, 283f
                  slli         s2, a4, 11
270:              blt          a2, t1, 284f
271:              auipc        t3, 350767
                  ori          s3, t6, -356
                  sra          gp, s7, t2
                  beq          s5, a3, 289f
                  andi         a4, ra, 1786
                  srl          zero, s4, tp
                  sltu         a1, s7, s5
                  bltu         s0, s3, 292f
                  srai         s1, t4, 9
                  sub          zero, a7, sp
                  sub          ra, s7, t1
282:              slti         t3, a3, 716
283:              sltu         s4, t3, ra
284:              nop
                  xori         a7, gp, 1477
                  slt          t4, gp, a0
                  auipc        zero, 1036286
                  andi         a0, s9, 1897
289:              lui          a3, 48601
                  sll          a1, s5, s3
                  bge          tp, a1, 307f
292:              beq          tp, s3, 299f
                  lui          ra, 97117
                  and          t2, ra, t1
                  ori          t2, s9, 1047
                  add          t3, t5, a5
                  xor          s9, t5, zero
                  sltiu        t6, a5, 1961
299:              srai         s8, s8, 31
                  or           t4, s8, ra
                  bge          s3, t3, 303f
                  andi         t4, a6, -2005
303:              slti         zero, s0, -1118
                  srai         t1, t6, 3
                  bge          s7, s10, 307f
                  nop
307:              bgeu         s8, a1, 313f
                  slt          a2, gp, t5
                  bne          ra, s9, 324f
                  la           s9, region_1+1995 #start riscv_load_store_rand_instr_stream_0
                  lbu          s4, -89(s9)
                  sb           a5, -106(s9)
                  sh           s3, -159(s9)
                  sh           gp, -229(s9)
                  srli         t2, s1, 14
                  srli         a1, a5, 23
                  lhu          zero, -199(s9)
                  srli         gp, s2, 8
                  xori         t2, s3, -772
                  or           t6, zero, s2
                  lui          gp, 649650
                  nop
                  lbu          ra, -143(s9)
                  lui          s4, 247475
                  sltu         zero, t2, a1
                  nop
                  xor          s8, gp, a0
                  lbu          s5, -254(s9)
                  add          t4, t1, t5
                  sh           s5, -43(s9)
                  sb           t2, -230(s9)
                  add          zero, s10, t1
                  lbu          s4, -109(s9)
                  lui          tp, 433501
                  lh           s2, -213(s9)
                  sb           t2, -38(s9)
                  sw           a7, -219(s9)
                  sh           a1, -53(s9)
                  sb           a7, -115(s9)
                  slti         a3, s5, -1109
                  add          a1, t0, s4
                  lb           zero, -140(s9)
                  slli         s1, a5, 16
                  slt          s11, t3, t5
                  lui          s4, 129025
                  lbu          t4, -192(s9)
                  slli         t4, s10, 9
                  lb           s8, -231(s9) #end riscv_load_store_rand_instr_stream_0
                  sll          s0, s4, s6
                  xori         a4, a4, 736
                  sub          a4, s11, t6
313:              or           tp, sp, t0
                  xor          a5, s4, s3
                  add          t3, a0, s0
                  beq          tp, t1, 330f
                  lui          t3, 820917
                  addi         s0, t4, -1347
                  sub          ra, s2, t2
                  beq          a0, s4, 333f
                  andi         a5, t1, 950
                  srai         a3, s2, 29
                  lui          a5, 277005
324:              sll          s3, a2, ra
                  bge          a5, t6, 345f
                  slli         s4, s8, 17
                  or           a1, a1, t2
                  sub          t6, a0, a1
                  auipc        s2, 773644
330:              nop
                  bgeu         tp, s2, 346f
                  beq          a0, a5, 348f
333:              srai         s0, t5, 28
                  slli         s5, sp, 4
                  sltiu        t1, s8, -257
                  sub          a4, s0, a1
                  bltu         a1, a4, 356f
                  andi         tp, s2, 1570
                  and          a3, s5, s9
                  sll          a4, s0, a4
                  sll          t1, gp, ra
                  slti         s1, t5, 790
                  slt          a5, s7, a4
                  beq          t1, sp, 346f
345:              beq          s7, s6, 363f
346:              or           a5, a5, ra
                  ori          zero, a7, 128
348:              bne          s3, t6, 363f
                  slli         s4, a7, 17
                  beq          t4, t3, 353f
                  nop
                  auipc        s2, 222296
353:              bne          t3, a5, 355f
                  bgeu         s10, s7, 369f
355:              slt          tp, t1, t1
356:              srl          t6, zero, s0
                  sltiu        s7, s5, -1046
                  or           s3, a4, s9
                  xori         s2, s1, 1831
                  xori         s3, ra, 1756
                  nop
                  nop
363:              blt          s5, s3, 373f
                  bltu         s8, a2, 384f
                  bge          a5, a3, 373f
                  auipc        a5, 994208
                  srli         s8, s6, 28
                  blt          tp, gp, 380f
369:              slt          s7, t6, s3
                  sra          a5, s5, a3
                  or           t3, s6, a4
                  srai         t6, t0, 30
373:              blt          s8, t1, 387f
                  sltu         s10, a5, s9
                  slli         a4, tp, 21
                  or           a7, zero, t5
                  bne          s3, t4, 378f
378:              xor          a1, s1, a0
                  srli         sp, s4, 27
380:              srai         s7, a4, 18
                  sltu         a0, a5, s4
                  add          t1, a4, gp
                  srli         ra, a1, 2
384:              bne          s6, a3, 402f
                  ori          sp, s3, 125
                  slli         a7, tp, 6
387:              nop
                  xori         t3, sp, 1377
                  beq          a7, s2, 390f
390:              srai         a4, a2, 11
                  bne          a0, s2, 396f
                  and          a2, s9, tp
                  lui          a5, 905871
                  sub          t4, t3, t1
                  slli         tp, s3, 12
396:              lui          s5, 742708
                  slti         s10, s11, 650
                  xori         sp, s1, 724
                  xor          a3, t6, a6
                  slt          s0, gp, s4
                  sltiu        s4, t2, 49
402:              and          a5, s10, gp
                  sub          a3, a3, s6
                  slti         t6, s1, 1694
                  addi         s7, s4, -768
                  slt          t4, t2, t6
                  bgeu         t3, t0, 410f
                  add          a1, a2, s3
                  slt          s8, s4, s11
410:              sll          s8, t5, ra
                  slti         t1, s11, -465
                  bne          s10, t0, 427f
                  lui          a2, 1020216
                  slli         sp, tp, 17
                  sub          a3, t6, s0
                  srl          a7, t0, s6
                  bgeu         s6, t0, 427f
                  and          s2, a4, s3
                  xor          t4, s10, s7
                  srli         a2, a1, 24
                  bltu         ra, t3, 435f
                  auipc        a1, 315959
                  sub          s5, s6, t0
                  sltiu        tp, t3, 1339
                  sll          t3, a0, a3
                  srai         a1, zero, 1
427:              andi         tp, t0, 998
                  xori         a5, s7, 231
                  sll          s5, s2, s2
                  or           a3, t1, t1
                  bne          t5, t3, 443f
                  and          s8, a4, ra
                  sra          t3, gp, t5
                  bgeu         t6, a2, 435f
435:              slt          t1, a2, t1
                  slli         tp, zero, 21
                  and          s8, s8, a6
                  sltiu        s8, s10, 1576
                  and          a5, s2, s3
                  xori         a5, s4, 513
                  srli         s0, t5, 23
                  ori          a1, a5, 1649
443:              sll          s0, a5, s6
                  blt          s4, s2, 445f
445:              and          s1, a1, s7
                  lw           s11, 4(t5)
                  nop
                  slti         s9, s9, 1181
                  srai         a3, s3, 22
                  addi         t5, t5, 64
                  addi         t4, t3, -1230
586:              addi x17, x27, 0
586:              jalr x17, x17, 0
sub_2:            xori         a3, s5, -1187
                  addi         t5, t5, -40
                  sltiu        t0, s6, -1065
                  sltu         t4, t2, t6
                  auipc        t3, 42579
                  sw           s11, 4(t5)
                  nop
                  sll          t6, s6, t0
                  xori         zero, a6, -1713
                  sltu         a0, a2, a0
                  blt          a2, s5, 7f
                  bne          a4, a2, 7f
                  bne          s0, a7, 6f
6:                sra          sp, a1, s3
7:                lui          s10, 239296
                  and          s9, a2, s7
                  auipc        a5, 131782
                  lw           s11, 4(t5)
                  ori          ra, zero, 209
                  add          s9, a6, a1
                  xori         zero, t4, 49
                  auipc        t1, 225339
                  addi         t5, t5, 40
                  andi         s1, t6, -555
                  lui          t2, 79232
25:               addi x1, x27, 1
25:               jalr x1, x1, 0
sub_8:            beq          zero, a5, sub_8_stack_p
                  sra          s10, ra, s7
sub_8_stack_p:    addi         t5, t5, -48
                  nop
                  lui          a2, 422311
                  sw           s11, 4(t5)
                  and          a0, a0, t1
                  srai         tp, t1, 25
                  andi         tp, a3, 1184
                  la           sp, sub_9
                  andi         gp, a0, 113
                  srai         a5, t2, 19
                  slt          gp, gp, a1
                  slti         t6, s11, 839
                  auipc        a3, 853848
                  addi         sp, sp, 746
                  blt          zero, s10, sub_8_j13 #branch to jump instr
                  lui          s9, 525249
                  andi         a5, a3, 1587
sub_8_j13:        jalr         s11, sp, -746 #jump sub_8 -> sub_9
                  sltu         a3, a6, s2
                  slt          s9, t2, s3
                  la           s11, sub_10
                  lui          a1, 742530
                  sra          a4, s2, s1
                  ori          s2, t1, -1882
                  addi         s11, s11, -832
                  srai         s5, s8, 12
                  and          a4, a6, a1
                  bgeu         s2, s6, sub_8_j14 #branch to jump instr
                  sll          t4, t4, a7
sub_8_j14:        jalr         s11, s11, 833 #jump sub_8 -> sub_10
                  sub          a4, a4, a2
                  and          a7, s9, a0
                  xor          s2, s3, s11
                  addi         s5, s1, 1993
                  xori         s1, a3, -76
                  xori         a7, s2, 1879
                  slti         zero, s2, -1212
                  addi         s3, a1, -1921
                  la           sp, region_1+1176 #start riscv_load_store_rand_instr_stream_0
                  xori         s1, s6, 1980
                  lbu          ra, -348(sp)
                  lbu          t4, -403(sp)
                  andi         zero, gp, -1610
                  srai         zero, ra, 12
                  slti         s2, t0, -4
                  nop
                  srl          t2, tp, a1
                  sb           a0, 669(sp)
                  auipc        t1, 987947
                  lb           a2, 31(sp)
                  sltiu        t0, s10, 1576
                  sltu         t2, s0, a7
                  lb           a1, -271(sp)
                  sb           s3, -516(sp)
                  lhu          t0, 38(sp)
                  nop
                  slti         s0, t6, -178
                  slt          tp, t4, s10
                  and          s2, a2, s3
                  sll          s5, s2, s0
                  sub          gp, a4, s1
                  sh           a2, -110(sp)
                  ori          s10, t6, -835
                  lb           a7, 358(sp)
                  and          s1, a2, a4
                  lb           a4, -826(sp)
                  sub          s11, a4, a0
                  addi         s0, a3, 1631
                  sb           s3, 107(sp)
                  sb           s4, -700(sp)
                  lb           s5, -663(sp)
                  addi         t3, s5, 1588
                  sh           gp, -624(sp)
                  sb           a7, -537(sp)
                  lb           s2, -657(sp)
                  lb           zero, -341(sp) #end riscv_load_store_rand_instr_stream_0
                  bltu         a0, t1, 15f
                  xor          s3, s3, a4
                  srli         s4, t5, 12
                  ori          ra, t6, 670
                  lui          t6, 951269
                  sltiu        s4, a0, 344
                  sltiu        tp, s2, -241
15:               blt          s0, s3, 27f
                  xor          gp, t6, sp
                  andi         s11, a0, -955
                  bltu         s2, t4, 35f
                  sltiu        t4, a5, -678
                  or           zero, a6, a6
                  slti         t3, sp, 1181
                  bltu         sp, s0, 41f
                  srli         a2, s2, 25
                  slti         gp, s11, -510
                  sll          s4, s0, s2
                  slli         s1, s7, 10
27:               add          t2, s10, t2
                  sub          s8, t3, t3
                  blt          t5, s5, 37f
                  xor          a3, a5, zero
                  sltiu        a7, s1, -159
                  srai         s4, sp, 16
                  blt          t2, a0, 41f
                  bne          s6, s3, 44f
35:               bne          t1, s8, 50f
                  and          s10, s2, gp
37:               srl          a7, s11, t0
                  bge          zero, a3, 47f
                  or           a0, a6, ra
                  bltu         s8, t1, 50f
41:               srli         s11, s5, 10
                  bltu         a4, s10, 54f
                  add          t2, sp, s4
44:               sltiu        a2, a2, 547
                  slti         a2, s11, 821
                  bltu         a6, t6, 60f
47:               srl          sp, t2, s2
                  bgeu         s8, s2, 67f
                  slt          ra, s8, s1
50:               beq          tp, a1, 52f
                  sltiu        s3, t3, -961
52:               xori         s9, tp, 506
                  ori          t4, s8, 1697
54:               blt          a4, gp, 56f
                  slti         s7, sp, -64
56:               sll          s1, s0, s0
                  and          zero, s6, t2
                  slti         s0, sp, -2032
                  xor          t6, a0, t3
60:               sll          s0, gp, s8
                  addi         ra, s0, -314
                  srai         t6, ra, 10
                  nop
                  lui          s3, 323199
                  beq          a0, s2, 81f
                  ori          sp, s9, -194
67:               bltu         s1, s2, 79f
                  beq          s6, s5, 80f
                  bge          s7, a2, 79f
                  sltu         ra, a6, t5
                  slli         t6, a7, 10
                  blt          s9, s0, 89f
                  xori         s8, a1, -245
                  sra          s1, s5, a4
                  sltu         sp, t0, s2
                  xor          s5, a5, s8
                  slt          t4, s9, s10
                  blt          gp, a3, 90f
79:               sra          a2, a0, s0
80:               bge          s0, a2, 81f
81:               lui          s4, 380711
                  sub          gp, a0, s3
                  slt          t0, tp, a3
                  bgeu         a2, t3, 94f
                  bltu         t3, gp, 93f
                  beq          t5, s6, 99f
                  andi         a5, sp, -1357
                  or           s1, s8, s1
89:               bgeu         s2, s4, 109f
90:               sra          s7, tp, a5
                  xori         sp, s7, -1915
                  xor          ra, t5, a2
93:               bgeu         t3, a1, 101f
94:               bne          t1, a5, 97f
                  sra          a2, s2, t1
                  srai         s7, s3, 22
97:               slli         s2, s9, 22
                  slt          s3, s0, s11
99:               addi         s1, a2, -2008
                  slti         t6, a2, 321
101:              sltiu        t3, s4, 63
                  slt          a7, s9, t1
                  sltu         sp, t3, a0
                  bge          t3, a2, 124f
                  sub          ra, a7, t2
                  blt          gp, s9, 118f
                  or           t4, t6, a3
                  auipc        t6, 153673
109:              xori         t1, ra, 1261
                  ori          tp, ra, 1613
                  slli         sp, s10, 31
                  auipc        s7, 91693
                  srl          a4, s2, gp
                  srli         s5, tp, 22
                  bgeu         a1, a6, 131f
                  xor          a4, t1, s2
                  or           sp, gp, zero
118:              ori          s8, t4, 1106
                  addi         s4, sp, 255
                  bltu         t4, a4, 128f
                  lui          s9, 365573
                  xor          a1, gp, s1
                  blt          a2, s2, 133f
124:              srai         a4, t3, 23
                  andi         a1, t1, -1148
                  sll          t4, zero, s4
                  sra          s10, t2, sp
128:              addi         s4, t1, -55
                  ori          s5, s3, 1683
                  addi         s3, t4, 1428
131:              srai         s9, s7, 24
                  andi         a1, t3, 1448
133:              sra          s0, t4, t1
                  bgeu         a1, t0, 143f
                  sub          a7, t4, a3
                  blt          a2, s2, 143f
                  slti         tp, s11, -697
                  bne          s10, t6, 143f
                  bge          s10, s2, 143f
                  auipc        a1, 519850
                  or           a1, zero, t1
                  blt          a1, s11, 143f
143:              xori         s9, s8, 1010
                  lw           s11, 4(t5)
                  addi         t5, t5, 48
                  lui          ra, 163809
                  srl          s5, sp, s0
                  and          s3, a5, t3
219:              addi x23, x27, 1
219:              jalr x23, x23, 0
sub_5:            srai         t0, t0, 21
                  addi         t5, t5, -20
                  srl          s2, s3, s10
                  sw           s11, 4(t5)
                  sra          s4, s2, a6
                  slt          sp, a3, a6
                  xori         a1, a4, 1618
                  auipc        a1, 953714
                  ori          a1, a1, -374
                  xor          s7, a5, s9
                  slti         a3, gp, 1150
                  slli         s3, sp, 21
                  ori          s3, s8, -1673
                  or           s5, s1, a7
sub_5_j8:         jal          s11, sub_6 #jump sub_5 -> sub_6
                  la           a4, sub_6
                  sltu         s0, s7, zero
                  and          s10, zero, a1
                  srli         s7, a6, 20
                  addi         a4, a4, -112
                  srl          a3, s0, s5
                  sll          s3, a3, s7
                  lui          t4, 1006820
                  xor          s10, a0, s9
                  auipc        t6, 526888
                  sltiu        a0, s10, -623
sub_5_j9:         jalr         s11, a4, 113 #jump sub_5 -> sub_6
                  la           t4, region_1+1374 #start riscv_load_store_rand_instr_stream_0
                  lhu          a1, -1300(t4)
                  add          s4, t1, s7
                  lui          a0, 1048165
                  lb           sp, 22(t4)
                  lbu          t6, -627(t4)
                  sb           ra, -1194(t4)
                  lbu          a5, -553(t4)
                  lbu          s10, 422(t4)
                  srli         a3, t0, 2
                  lb           a4, 245(t4)
                  lui          s3, 357444
                  auipc        zero, 427861
                  sw           t4, 222(t4)
                  sh           s4, -102(t4)
                  and          s11, s5, a2
                  srai         a2, s5, 28
                  lb           a4, -9(t4)
                  lbu          a3, -1285(t4)
                  sb           ra, 432(t4)
                  sb           s11, -281(t4)
                  ori          t2, a0, 1973
                  lbu          s0, -487(t4)
                  sltu         a4, t5, s6
                  lh           s4, 28(t4)
                  xor          a5, a6, s8
                  sub          t1, s9, s10
                  lhu          t3, -136(t4)
                  sb           s0, -37(t4)
                  lbu          s2, -905(t4)
                  xori         zero, t2, -1826
                  sb           s9, -250(t4) #end riscv_load_store_rand_instr_stream_0
                  or           t3, t0, zero
                  or           t0, t5, s9
                  bne          s9, a6, 9f
                  addi         t1, t1, 1906
                  lui          s5, 220837
                  sra          s5, s3, a0
                  beq          s9, s3, 17f
                  sltiu        t2, a3, 46
                  nop
9:                bge          s7, s0, 11f
                  nop
11:               slli         s3, gp, 24
                  sra          a2, t0, a1
                  srl          s9, a0, a6
                  slt          s10, ra, gp
                  sltu         s5, s10, s9
                  lui          t4, 936945
17:               slli         tp, t1, 11
                  and          s8, s0, a5
                  bgeu         t2, s8, 36f
                  sltiu        s3, s6, 1679
                  sra          t2, s8, ra
                  blt          s11, s3, 36f
                  xor          tp, a2, s2
                  bge          a1, ra, 32f
                  srai         ra, t1, 12
                  bltu         a1, a4, 45f
                  slt          s8, s0, s11
                  sltu         sp, s11, a5
                  add          zero, s0, a5
                  slli         s8, t5, 5
                  sra          a7, a1, zero
32:               sra          t6, s0, gp
                  slli         a4, s1, 11
                  bltu         s8, a2, 42f
                  xori         a7, t3, -544
36:               slt          t6, t2, s11
                  sll          t1, a7, s6
                  xor          a1, a2, s4
                  andi         s9, a1, -1429
                  bge          a6, sp, 51f
                  beq          a4, t5, 59f
42:               bltu         s2, a7, 55f
                  srai         s3, s7, 19
                  sub          t1, s9, ra
45:               srai         a4, t4, 13
                  bge          a5, s11, 55f
                  lui          s9, 709963
                  lui          t6, 320160
                  sltiu        t6, s5, -1534
                  xor          t3, s8, a5
51:               slli         a2, s4, 5
                  add          s11, t0, a1
                  bgeu         ra, s1, 59f
                  beq          a5, a3, 67f
55:               slt          t0, t1, gp
                  sra          a5, zero, t1
                  sll          zero, a7, t1
                  bne          a7, gp, 70f
59:               auipc        zero, 107404
                  bgeu         a3, s4, 68f
                  addi         zero, sp, 413
                  slti         a2, a4, 783
                  slt          gp, a4, a5
                  xor          s0, s5, a3
                  beq          t5, t3, 67f
                  bltu         t6, t0, 73f
67:               slti         a3, s2, 1200
68:               srl          sp, s9, a6
                  srai         s5, s5, 4
70:               andi         a2, tp, 1084
                  sltiu        a1, t6, 1700
                  lui          s0, 386651
73:               xori         s10, t6, 1957
                  and          s11, s1, s6
                  sltu         a2, a1, s8
                  sltiu        a0, a3, 159
                  lui          gp, 934420
                  xor          s1, a7, s4
                  addi         s5, tp, -1026
                  srl          s9, a5, a0
                  bgeu         tp, s7, 99f
                  or           sp, s9, ra
                  xori         a7, s0, 2002
                  bltu         t6, s8, 85f
85:               and          s0, s9, a1
                  slti         s0, a6, -673
                  andi         s10, s3, 947
                  bgeu         t6, s10, 90f
                  slti         gp, a5, -1823
90:               or           s11, s8, t3
                  add          t0, gp, t3
                  or           t1, s2, s8
                  add          t6, t0, t5
                  auipc        s8, 475547
                  or           s7, t3, t5
                  sra          a2, s6, t3
                  sll          t4, zero, s9
                  sltu         ra, s8, s5
99:               bltu         sp, a6, 115f
                  beq          tp, s5, 102f
                  or           a0, s4, a5
102:              bne          s8, ra, 106f
                  bltu         a4, a0, 120f
                  srli         s11, ra, 1
                  srli         a1, tp, 26
106:              xori         a4, ra, 1682
                  blt          a7, t0, 127f
                  bne          s11, a1, 118f
                  slt          sp, zero, t3
                  ori          s11, s8, 932
                  srai         t0, t2, 9
                  ori          t2, s8, 813
                  lui          s11, 496059
                  ori          s1, zero, 1682
115:              sra          s9, a7, ra
                  nop
                  bltu         a1, a6, 132f
118:              xor          t1, a0, gp
                  lui          gp, 581753
120:              bgeu         tp, s8, 139f
                  ori          t3, t1, 412
                  nop
                  xori         t6, s2, 1032
                  bne          s4, s1, 129f
                  beq          a7, ra, 133f
                  slli         t2, s10, 12
127:              or           s11, s1, tp
                  bne          s9, a0, 138f
129:              andi         t6, t4, 1979
                  beq          s8, a4, 147f
                  ori          t4, s0, -478
132:              slli         a7, s0, 11
133:              sub          t0, tp, a2
                  bltu         t4, s3, 136f
                  sra          s7, t0, a6
136:              srl          s10, t5, zero
                  add          a5, t1, a4
138:              ori          s7, t3, -1357
139:              lui          s10, 330344
                  bltu         s3, gp, 141f
141:              nop
                  xor          a3, sp, s5
                  srl          s7, a2, zero
                  sub          a0, s2, s11
                  lui          tp, 201379
                  xori         t3, s9, 659
147:              nop
                  ori          s1, s8, 763
                  addi         t1, s3, 505
                  or           ra, s9, a2
                  xor          s7, t0, s5
                  bltu         a6, a3, 154f
                  lui          t6, 913014
154:              slti         s2, a0, 1513
                  xor          s3, a5, t5
                  sra          t2, a0, a1
                  lw           s11, 4(t5)
                  addi         t5, t5, 20
                  sra          t2, t1, s2
                  add          sp, a3, a6
220:              addi x11, x27, 0
220:              jalr x11, x11, 0
sub_1:            srl          sp, sp, s5
                  sub          t3, t4, t5
                  srli         t3, a6, 12
                  addi         t5, t5, -12
                  lui          s1, 538401
                  sw           s11, 4(t5)
                  slt          sp, s6, t2
                  and          s2, a7, ra
                  and          a7, t0, s3
                  sub          s0, t1, a7
                  sll          s8, t2, sp
                  sra          sp, zero, s1
                  la           s4, sub_4
                  slt          a2, t1, s9
                  srl          s11, a4, a2
                  addi         s4, s4, 688
                  sub          s7, s7, t6
                  addi         t0, a1, -1866
                  addi         a3, t2, 1820
sub_1_j3:         jalr         s11, s4, -687 #jump sub_1 -> sub_4
                  la           t1, sub_3
                  andi         gp, s7, -1767
                  slli         s10, t0, 30
                  srai         s5, s1, 6
                  add          s0, a1, t6
                  sub          gp, s2, s4
                  xori         s2, s5, -1208
                  addi         t1, t1, -326
                  add          s5, gp, zero
                  srli         t3, zero, 17
                  lui          s9, 67233
sub_1_j4:         jalr         s11, t1, 326 #jump sub_1 -> sub_3
                  la           a7, region_0+964 #start riscv_load_store_rand_instr_stream_5
                  add          ra, a4, s9
                  lw           a4, -744(a7)
                  andi         s4, a5, 1728
                  lh           s2, 370(a7)
                  srli         t4, s5, 14
                  srai         a3, s6, 3
                  ori          s2, s6, -872
                  and          a5, t4, t5
                  lb           a4, 713(a7)
                  or           s11, a3, s2
                  xori         s11, a5, -1851
                  and          t1, t6, a7
                  and          a1, t0, t3
                  sw           s5, 148(a7)
                  lui          s7, 908817
                  xori         a1, sp, -852
                  sb           t5, 956(a7)
                  sb           s0, 603(a7)
                  lhu          t4, -40(a7)
                  lb           s8, 54(a7)
                  add          s11, zero, s5
                  sh           sp, -58(a7)
                  lbu          sp, -151(a7)
                  srl          a4, s4, s10
                  lbu          t1, 308(a7)
                  slt          gp, a5, s7
                  sb           sp, -937(a7)
                  sb           gp, -101(a7) #end riscv_load_store_rand_instr_stream_5
                  la           s10, region_1+1610 #start riscv_load_store_rand_instr_stream_1
                  slt          gp, t5, a6
                  andi         a5, s9, 1229
                  sra          gp, s6, t0
                  sub          s1, a5, s1
                  and          t3, t0, t0
                  slt          a4, a7, a4
                  lui          s4, 307694
                  slt          s7, t0, s1
                  ori          tp, s9, 2004
                  sb           t3, -453(s10)
                  lbu          t3, -1275(s10)
                  lb           t2, -1104(s10)
                  lh           a1, 72(s10)
                  or           s3, s8, t4
                  lbu          ra, -683(s10)
                  xori         s3, s9, -1339
                  sub          zero, s10, s6
                  or           sp, a5, a4
                  sb           a2, -246(s10)
                  and          s7, gp, t6
                  xori         s0, a5, -1527
                  lui          s0, 138082
                  lb           s4, 53(s10)
                  sltu         t0, t5, s9
                  lbu          ra, -731(s10)
                  sltu         s0, s3, s4
                  sll          t2, a2, s9
                  lhu          t4, 160(s10)
                  lb           a1, -939(s10)
                  lb           s9, -903(s10)
                  sb           s4, -1343(s10)
                  lhu          s3, -646(s10)
                  sltu         ra, s9, a3
                  sll          s2, t2, a1
                  slt          a3, t4, s5
                  sra          s3, s8, tp
                  sltu         s8, s11, t0
                  nop
                  auipc        s5, 360359
                  xor          s8, tp, a0
                  lhu          a4, -1040(s10)
                  slti         s2, s2, -358
                  lbu          a4, 49(s10)
                  sb           s9, 233(s10)
                  sltu         s0, t4, s5
                  srli         s9, a3, 5
                  sh           t2, -106(s10) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_1+1228 #start riscv_load_store_rand_instr_stream_2
                  or           s1, a5, s4
                  xori         gp, s8, 86
                  lhu          t4, 246(a3)
                  andi         s8, gp, -1747
                  sw           s1, 768(a3)
                  lbu          s9, -1203(a3)
                  lbu          zero, 495(a3)
                  lh           s4, -1214(a3)
                  srl          t6, ra, a6
                  auipc        t3, 45793
                  xor          a4, a5, s1
                  slli         t6, t5, 25
                  sh           a1, 290(a3)
                  lbu          a1, -647(a3)
                  sll          t2, t0, zero
                  addi         a4, t3, 601
                  auipc        s8, 303611
                  lhu          a0, 566(a3)
                  nop
                  nop
                  slti         a4, tp, 1021
                  xori         sp, s0, -550
                  lb           zero, -661(a3)
                  andi         a0, s4, 616
                  sb           a3, -1047(a3)
                  and          a1, t0, a7
                  xori         t4, s3, 1917
                  srl          a2, s6, ra
                  lw           s11, 600(a3)
                  srli         sp, s1, 0
                  sb           s7, -414(a3)
                  lbu          a2, -1167(a3)
                  nop
                  lb           s7, 364(a3)
                  lui          sp, 479092
                  sll          s5, s4, t6
                  xor          s7, t5, t4
                  slt          t6, t3, s7
                  sb           a3, 733(a3)
                  add          t1, tp, a1
                  lh           a5, 244(a3)
                  lh           t0, 630(a3)
                  sb           s9, -800(a3)
                  slti         s5, s1, -1708
                  lb           a0, -384(a3)
                  auipc        s4, 796338
                  lbu          t3, 157(a3)
                  sb           t4, -519(a3)
                  andi         s3, ra, -841
                  sh           a3, 246(a3)
                  sb           a4, -516(a3)
                  lui          t1, 432776
                  sh           tp, 612(a3)
                  slli         t4, tp, 3
                  lb           sp, -985(a3) #end riscv_load_store_rand_instr_stream_2
                  la           s7, region_1+1391 #start riscv_load_store_rand_instr_stream_0
                  nop
                  sub          sp, s5, a6
                  lbu          a1, -214(s7)
                  lbu          t4, 154(s7)
                  sh           t6, 97(s7)
                  sh           s9, 91(s7)
                  xor          ra, sp, ra
                  slt          s5, t1, a7
                  sb           s9, -126(s7)
                  sb           s7, -156(s7)
                  srl          gp, t3, s5
                  or           s0, a0, a6
                  lh           s8, -199(s7)
                  lb           a5, -166(s7)
                  lhu          s4, 103(s7)
                  add          a1, t6, tp
                  xor          tp, t0, ra
                  slti         t6, t1, 142
                  nop
                  or           t0, t3, t6
                  sh           t5, 191(s7)
                  sb           sp, -170(s7)
                  lb           s8, -228(s7)
                  sltu         tp, s2, s7
                  lb           a5, -201(s7)
                  srai         s0, s4, 1
                  lb           t4, 52(s7)
                  add          tp, zero, a7
                  addi         s3, s3, -345
                  lb           a1, 239(s7)
                  sra          s1, gp, a6
                  lbu          t0, 66(s7)
                  lhu          s4, 203(s7)
                  sra          tp, t5, s2
                  slt          t1, zero, a1
                  andi         s1, ra, 340
                  sra          a5, s6, ra
                  slti         a5, t1, -430
                  lui          t3, 224372
                  auipc        t6, 814600
                  lb           s3, -210(s7)
                  sltu         t2, t1, s8
                  lhu          gp, 207(s7)
                  sltiu        a1, t1, 93
                  sltu         t0, s8, t4
                  andi         a1, t6, 678
                  sltiu        s10, s5, 1669
                  lb           a7, 184(s7)
                  sw           t2, 177(s7)
                  lb           t4, -129(s7)
                  lb           s10, 104(s7)
                  addi         s3, a7, -724
                  auipc        s1, 960886
                  sb           s3, -244(s7)
                  lb           s3, -184(s7) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_0+942 #start riscv_load_store_rand_instr_stream_3
                  sub          tp, t4, s6
                  lb           a1, 423(t1)
                  sb           s0, -259(t1)
                  sb           s0, -860(t1)
                  lh           a7, 924(t1)
                  sb           a0, 919(t1)
                  sh           t6, 182(t1)
                  xor          t3, t4, s4
                  sub          a2, s9, s10
                  lb           a3, 727(t1)
                  lb           s5, -883(t1)
                  or           ra, s11, t3
                  lbu          a2, 495(t1)
                  sh           a3, 600(t1)
                  lhu          s11, -28(t1)
                  auipc        s1, 574409
                  srai         a5, tp, 11
                  lhu          a3, 632(t1)
                  sh           t4, -666(t1)
                  lb           s2, 931(t1)
                  srl          t2, s9, sp
                  lb           s7, -344(t1)
                  auipc        ra, 422699
                  sub          a4, s1, s0
                  lw           a2, -714(t1)
                  sh           a0, -276(t1)
                  lhu          t6, 1006(t1)
                  srai         zero, a4, 26
                  lh           t4, -500(t1)
                  lb           zero, 181(t1)
                  sh           a3, -264(t1)
                  sh           a6, 708(t1)
                  lb           s5, -582(t1)
                  lbu          s2, -924(t1)
                  lui          a7, 610712
                  lbu          s11, -797(t1)
                  lhu          s2, 228(t1)
                  lhu          s1, 2(t1)
                  sub          a7, a6, a2
                  sh           t3, 188(t1)
                  sb           t1, -177(t1)
                  sb           a6, 254(t1) #end riscv_load_store_rand_instr_stream_3
                  la           s1, region_1+893 #start riscv_load_store_rand_instr_stream_11
                  lbu          t1, -516(s1)
                  add          a4, s9, sp
                  sh           s0, 685(s1)
                  lbu          t1, -287(s1)
                  or           a5, t1, gp
                  ori          zero, s0, -1608
                  nop
                  lbu          ra, 932(s1)
                  sra          a3, tp, s0
                  lh           s2, -229(s1)
                  lb           a1, -583(s1)
                  lbu          a7, 352(s1)
                  slti         s7, s6, 2039
                  sb           s5, -317(s1)
                  lb           t0, 1086(s1)
                  lui          t4, 137814
                  auipc        t3, 642175
                  lbu          a5, -141(s1)
                  sub          tp, ra, s6
                  lh           s5, 185(s1)
                  lbu          s5, 792(s1)
                  xor          t6, s6, t3
                  andi         a7, s3, 1533
                  sb           t0, 564(s1)
                  sb           a0, 102(s1)
                  andi         t2, s3, -1794
                  lui          ra, 133609
                  lh           a4, 365(s1)
                  lb           s3, 777(s1)
                  sw           gp, -473(s1)
                  sh           a5, 717(s1)
                  sb           s8, 94(s1)
                  ori          t3, a0, 253
                  lb           t1, 313(s1)
                  auipc        s8, 65720
                  sra          t6, s11, t5
                  lbu          ra, -781(s1)
                  lhu          a4, 287(s1)
                  xor          t2, t6, t0
                  lh           sp, 497(s1) #end riscv_load_store_rand_instr_stream_11
                  la           t3, region_0+584 #start riscv_load_store_rand_instr_stream_7
                  sb           s4, 157(t3)
                  sltiu        a4, s10, -1789
                  lw           a0, -108(t3)
                  or           t0, sp, a5
                  lhu          s0, -68(t3)
                  sra          zero, t6, a0
                  lhu          sp, -102(t3)
                  sra          t2, ra, t4
                  add          a3, a2, s0
                  addi         s0, a3, 75
                  ori          t0, t5, 1597
                  lb           s10, 229(t3)
                  lh           s4, 146(t3)
                  lb           a5, -5(t3)
                  sb           s10, 143(t3)
                  lbu          a1, 47(t3)
                  ori          t1, t1, 1679
                  srai         s9, s9, 18
                  lbu          s3, -47(t3)
                  srli         a2, a3, 20
                  lb           a4, 237(t3)
                  lbu          ra, 15(t3)
                  srl          t0, t5, a7
                  lbu          a3, 135(t3)
                  sb           s10, -129(t3)
                  srl          t1, t6, a4
                  xori         s0, tp, -823
                  sb           s10, -27(t3)
                  sub          s8, s11, a6
                  sb           s4, -89(t3)
                  lh           s10, -146(t3)
                  sub          a4, tp, a6
                  or           t2, s5, s11
                  sb           a6, -84(t3)
                  add          a4, sp, a5
                  lbu          t0, 169(t3)
                  lb           s7, 109(t3)
                  lhu          s10, 90(t3)
                  lb           a5, 87(t3) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+721 #start riscv_load_store_rand_instr_stream_10
                  sh           sp, -63(sp)
                  xor          a3, t1, t4
                  slti         s10, s1, 266
                  sub          s4, s2, a7
                  srai         s8, s11, 24
                  sub          a2, t3, s8
                  lui          s9, 33208
                  ori          s1, t4, 1402
                  lui          a7, 50731
                  lbu          a1, 56(sp)
                  lh           gp, -39(sp)
                  sh           t0, 5(sp)
                  sb           t0, -26(sp)
                  or           t6, t6, s7
                  srai         gp, t6, 5
                  slt          t4, zero, s2
                  srl          t3, s0, t6
                  lb           s8, 49(sp)
                  lbu          t6, -10(sp)
                  sb           a4, 54(sp)
                  nop
                  sw           s1, 35(sp)
                  sltu         t4, sp, a4
                  sra          s7, tp, gp
                  addi         t4, a5, -1174
                  srli         s10, t4, 9
                  sb           t6, -40(sp)
                  xor          s3, a3, s11
                  lb           ra, 46(sp)
                  lb           t2, 6(sp)
                  srli         s9, a2, 10
                  add          a2, s2, s5
                  srl          ra, s2, gp
                  sltu         gp, sp, s7
                  andi         s4, a6, 56
                  slt          s5, s9, s6
                  or           a2, s11, a0
                  sw           s4, 7(sp)
                  nop
                  sb           gp, -18(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1440 #start riscv_load_store_rand_instr_stream_4
                  lh           zero, -24(sp)
                  sh           s7, -24(sp)
                  sltiu        s9, t4, -1500
                  lh           s3, -48(sp)
                  ori          s1, t1, 119
                  sra          s4, s10, ra
                  slt          s5, zero, tp
                  lb           t2, -10(sp)
                  lb           s5, 31(sp)
                  sb           s0, 30(sp)
                  srli         t6, s10, 2
                  sra          a0, s6, t1
                  lbu          s0, -62(sp)
                  sub          t1, a7, s2
                  lh           s7, -2(sp)
                  lui          a7, 1001493
                  sub          t2, a5, s5
                  lw           s10, 36(sp)
                  lhu          s10, -34(sp)
                  and          t0, t0, t3
                  lb           s9, -51(sp)
                  xor          s4, s10, s8
                  sub          zero, t5, s7
                  lbu          t1, 11(sp)
                  srl          s0, t2, a0
                  andi         t2, a2, 364
                  srli         t1, s5, 23
                  lhu          s0, 42(sp)
                  sra          s2, s9, a5
                  slli         a4, s0, 4
                  slti         s7, a6, -1254
                  add          t1, a0, sp
                  sh           a1, 50(sp)
                  xor          s8, t5, s3
                  lb           a3, -9(sp)
                  lui          a5, 793404
                  sltu         t2, a4, a2
                  sb           a6, -41(sp)
                  sw           s11, -36(sp)
                  lb           gp, 38(sp)
                  srl          s9, s11, t2
                  srl          s11, t2, s9
                  sh           t3, -48(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_1+515 #start riscv_load_store_rand_instr_stream_6
                  lbu          sp, -453(a0)
                  sb           s5, -220(a0)
                  lhu          s1, -321(a0)
                  lb           s8, 982(a0)
                  sb           t3, -75(a0)
                  lw           zero, 233(a0)
                  ori          a5, tp, 985
                  sra          a2, a0, tp
                  sra          s7, zero, a1
                  sb           a4, 382(a0)
                  xori         t6, t5, 1244
                  srli         a1, s0, 5
                  lbu          s10, 1458(a0)
                  add          s5, zero, gp
                  andi         a7, t4, -460
                  lh           t3, 1195(a0)
                  lbu          s8, 782(a0)
                  ori          t3, t3, -1300
                  sb           s9, -114(a0)
                  srl          s10, gp, gp
                  sb           s2, -424(a0)
                  lb           s1, -185(a0)
                  lh           s3, 707(a0)
                  addi         t0, s3, -1567
                  srl          t1, t1, s3
                  lui          t2, 542828
                  xor          a4, ra, gp
                  auipc        t3, 820081
                  sltu         s8, a0, a5
                  nop
                  lbu          a4, 752(a0)
                  sltu         s7, tp, a0
                  lb           tp, -191(a0)
                  sub          a5, t2, t6
                  add          s0, a4, ra
                  lhu          gp, 537(a0)
                  xori         s1, a0, 2027
                  sh           t6, 769(a0)
                  lh           s8, -225(a0) #end riscv_load_store_rand_instr_stream_6
                  la           a0, region_0+1856 #start riscv_load_store_rand_instr_stream_8
                  srai         zero, s2, 15
                  lhu          s9, -12(a0)
                  lui          ra, 603206
                  lui          s10, 239912
                  sltiu        sp, s1, -967
                  or           t6, sp, s11
                  sb           s8, 61(a0)
                  sb           a1, 22(a0)
                  lb           s8, 46(a0)
                  lbu          s7, 9(a0)
                  andi         t4, gp, 1402
                  add          t4, t1, tp
                  lbu          t0, -16(a0)
                  lbu          a3, 22(a0)
                  slti         a5, s1, 1753
                  lh           t6, -26(a0)
                  lbu          s1, -22(a0)
                  xor          t6, s5, a5
                  sb           gp, -55(a0)
                  slt          t1, s11, s10
                  lb           ra, -47(a0)
                  lui          s8, 867800
                  sb           s11, 21(a0)
                  srai         tp, s9, 13
                  lh           s7, 0(a0)
                  sra          s1, a4, a1
                  sb           s11, -26(a0)
                  ori          t6, s11, -1187
                  and          s2, s6, gp
                  sh           t2, 64(a0)
                  sw           a7, -20(a0)
                  slt          a3, t5, ra
                  srl          t3, t6, t4
                  sb           s1, -61(a0)
                  lhu          s7, 38(a0)
                  lbu          s10, 23(a0)
                  auipc        s8, 435700
                  lb           ra, -53(a0)
                  lbu          zero, 10(a0)
                  lhu          ra, -44(a0)
                  lh           s4, -56(a0)
                  sw           sp, 64(a0) #end riscv_load_store_rand_instr_stream_8
                  bne          a6, s7, 8f
                  auipc        s0, 302294
                  lui          s0, 1025698
                  blt          a6, ra, 14f
                  or           s2, a4, s3
                  sltiu        s10, t1, -167
                  srli         s9, a6, 30
                  andi         s5, t3, 170
8:                lui          a3, 808994
                  bne          a3, a5, 23f
                  auipc        s0, 626573
                  lui          t2, 817766
                  or           s1, s10, a0
                  lui          s3, 625221
14:               srli         a7, s11, 22
                  blt          t3, s8, 32f
                  sra          tp, a5, s9
                  addi         a7, t0, 2038
                  auipc        s4, 713831
                  beq          ra, a5, 38f
                  or           tp, t1, s7
                  xori         t1, s0, 872
                  srl          s4, s2, s3
23:               slli         s5, a2, 13
                  srl          t0, s2, sp
                  srl          s2, a1, a1
                  lui          zero, 95674
                  auipc        a5, 657720
                  xor          s8, s8, a0
                  beq          a2, s9, 48f
                  bgeu         t4, t1, 38f
                  sub          a4, a6, t3
32:               sra          s5, s6, a1
                  sltu         s10, zero, s9
                  nop
                  sll          s0, s1, s3
                  andi         a5, a6, -896
                  add          s3, s8, ra
38:               auipc        s9, 932742
                  bgeu         ra, s11, 59f
                  bltu         s5, s4, 44f
                  slt          gp, zero, s2
                  srli         ra, zero, 14
                  add          a0, s11, gp
44:               lui          zero, 214557
                  andi         s5, t2, -693
                  sltiu        a4, t2, 1102
                  ori          a7, a0, -1229
48:               srl          s8, a1, a0
                  nop
                  bne          s0, s7, 66f
                  beq          a4, s10, 53f
                  addi         s0, s3, -2015
53:               add          a0, a6, s10
                  srl          t6, a0, a6
                  and          s11, gp, tp
                  bgeu         gp, t1, 63f
                  nop
                  blt          t5, zero, 75f
59:               sltu         s7, s6, a7
                  add          s5, zero, t3
                  bltu         tp, s2, 80f
                  nop
63:               bgeu         s6, s4, 75f
                  and          a3, s2, s5
                  slti         a5, a2, 1938
66:               add          s5, tp, s7
                  sra          s2, zero, s5
                  sltu         s1, t1, tp
                  slt          t2, gp, zero
                  xor          a1, s6, s8
                  slli         a4, a3, 14
                  sra          s8, s2, s5
                  ori          s9, sp, 779
                  bltu         a2, gp, 83f
75:               addi         s8, a2, 1961
                  and          a1, s0, s0
                  srl          gp, s11, s8
                  slli         s9, ra, 19
                  add          s8, zero, gp
                  sub          zero, s3, t6
                  slt          a1, a5, s6
                  andi         tp, s6, -766
                  auipc        s9, 649061
                  sltiu        ra, a1, -714
                  xor          sp, t2, s0
sub_1_j6:         jal          s11, sub_2 #jump sub_1 -> sub_2
                  slli         t6, s7, 17
                  or           s8, t3, s4
                  auipc        s1, 373600
                  ori          tp, s2, -1417
80:               auipc        t3, 358750
                  slti         s2, s6, -962
                  srai         zero, s4, 17
83:               add          s11, s7, t1
                  andi         sp, ra, 1588
                  blt          t4, s0, 103f
                  beq          s5, a2, 100f
                  slt          s3, gp, tp
                  bge          a2, s5, 94f
                  lui          s1, 525639
                  slt          zero, a3, ra
                  auipc        s10, 823321
                  or           s8, s6, s1
                  sltiu        s2, a4, -65
94:               add          a1, t2, a6
                  sltiu        s10, s8, 1980
                  addi         a5, s5, 1712
                  sll          a1, ra, t3
                  ori          sp, s3, -1202
                  slt          t0, a2, s1
100:              slti         t0, s3, -1878
                  auipc        a1, 77429
                  lui          sp, 305890
103:              sll          s4, t0, t0
                  ori          s3, s1, 629
                  sra          t6, a5, a7
                  andi         s3, t3, 742
                  slti         a0, s0, 98
                  andi         s8, s8, 374
                  blt          s1, s7, 110f
110:              nop
                  sltu         s4, s1, s2
                  srl          s8, a6, gp
                  bgeu         s0, s9, 130f
                  andi         s2, s1, -1806
                  and          s3, a0, s6
                  or           t4, a3, t3
                  sub          a7, gp, t4
                  or           a3, a5, s1
                  and          s7, s10, t6
                  srl          tp, t0, t2
                  sll          a3, t1, t4
                  slli         a4, s10, 25
                  sub          s7, a5, t1
                  sltiu        a2, s3, -1878
                  auipc        t4, 671495
                  auipc        s0, 900019
                  slti         s0, s10, -1582
                  sra          s4, t4, a6
                  bne          t4, t6, 148f
130:              slti         s4, a6, -85
                  bge          a7, t1, 136f
                  or           s2, a2, a5
                  xori         a4, a7, -1662
                  and          a3, s2, s5
                  sll          s4, s4, s3
136:              bge          s11, t4, 145f
                  sltu         s5, a0, a5
                  addi         t2, s6, -91
                  beq          s10, a2, 155f
                  beq          zero, s9, 145f
                  ori          zero, a7, -9
                  srli         a1, s4, 27
                  sub          t1, s7, s2
                  bltu         a6, zero, 159f
145:              srl          s9, ra, sp
                  ori          s5, s4, 1708
                  addi         s5, a5, -22
148:              xor          s5, s8, t4
                  beq          t1, a1, 166f
                  or           s7, a2, s11
                  bge          t2, t6, 161f
                  slli         s8, s5, 22
                  slli         zero, a5, 30
                  slt          a3, s9, a6
155:              blt          t5, s4, 159f
                  bltu         tp, s4, 165f
                  lui          s7, 482809
                  auipc        a7, 1037597
159:              xori         a3, zero, 1811
                  lui          s8, 778041
161:              beq          s5, s0, 178f
                  sll          t4, t4, s11
                  xori         a5, a2, -1483
                  xori         t0, a2, 112
165:              andi         s0, a1, -716
166:              auipc        s5, 722167
                  slti         s9, a7, -1214
                  srli         t3, a4, 23
                  or           a4, a1, t1
                  bgeu         s5, s3, 186f
                  bltu         sp, t6, 175f
                  sltu         a4, zero, ra
                  bgeu         t3, t1, 190f
                  slli         s5, s7, 12
175:              sll          a4, tp, a1
                  sra          t6, a1, s11
                  slt          s4, t3, t3
178:              sltiu        s10, s4, 1953
                  ori          s3, t3, 1502
                  bge          s0, a4, 182f
                  sll          s9, s7, gp
182:              ori          tp, s0, 1878
                  andi         t6, s4, 651
                  slli         a0, zero, 14
                  sra          ra, s5, a6
186:              sltu         zero, s5, gp
                  xor          a5, zero, a2
                  and          t1, s9, s2
                  and          t1, t3, s1
190:              blt          t3, t6, 195f
                  slti         a7, a5, -2019
                  slt          a7, a7, gp
                  ori          a2, t6, 520
                  lui          s11, 10012
195:              bltu         a5, a3, 205f
                  nop
                  srai         a7, t0, 18
                  nop
                  sltiu        s10, t3, -1483
                  sra          s8, t6, s8
                  srli         ra, t4, 1
                  xor          s4, s5, t2
                  or           s0, t1, t3
                  srli         a4, ra, 29
205:              beq          zero, a7, 213f
                  nop
                  andi         s10, t6, 1882
                  addi         t2, a3, -1984
                  nop
                  blt          a6, t4, 214f
                  slli         a2, t1, 12
                  bne          s4, s7, 226f
213:              xori         t3, ra, 2042
214:              slt          ra, t4, zero
                  nop
                  blt          a1, a7, 235f
                  srl          s0, s8, a7
                  lui          t0, 714650
                  bltu         a0, sp, 226f
                  bge          a7, ra, 225f
                  srl          zero, a6, a0
                  srai         s10, s0, 19
                  xor          a0, sp, a3
                  sll          s2, s4, sp
225:              nop
226:              srai         t4, t3, 11
                  auipc        t6, 424145
                  add          s3, s7, s6
                  bge          a6, a1, 249f
                  nop
                  srl          s11, s2, t1
                  addi         t4, a5, 971
                  ori          a3, t5, 1266
                  bge          t1, a4, 240f
235:              srl          t2, t2, s0
                  addi         s7, a4, -1823
                  andi         s5, s9, 1769
                  sltiu        s7, a4, 1964
                  sltiu        t2, s6, -1951
240:              bltu         a3, a6, 255f
                  lui          s4, 463530
                  bgeu         s5, s8, 261f
                  blt          s11, t1, 251f
                  srli         s9, a6, 21
                  bgeu         s4, s4, 259f
                  srli         a0, t4, 5
                  addi         a4, s1, 1198
                  slt          t0, zero, t3
249:              ori          gp, a2, -1264
                  nop
251:              andi         s8, a5, -118
                  add          ra, t6, gp
                  andi         a0, s0, 1074
                  add          a2, tp, a7
255:              xor          a4, s6, t6
                  slt          a1, s0, t6
                  add          a7, t2, s2
                  bge          a5, t3, 267f
259:              slt          a1, t1, t3
                  xor          t3, t4, t5
261:              and          s9, s1, s0
                  andi         s11, a5, -1804
                  add          a3, s0, t5
                  sra          t6, zero, t0
                  ori          t3, t1, 429
                  blt          s0, s3, 277f
267:              xor          s7, t5, a1
                  xori         s11, zero, -1603
                  srli         s8, s5, 0
                  beq          ra, t6, 271f
271:              slti         s7, a7, -1346
                  slti         t3, t5, 511
                  slti         a7, t4, 1972
                  auipc        s3, 746295
                  slt          a7, t1, t2
                  sltu         s4, t6, gp
277:              bne          s3, a2, 294f
                  blt          a5, a6, 296f
                  bge          s0, a2, 295f
                  ori          a5, a3, -417
                  sub          t6, a0, a7
                  srl          t6, tp, s5
                  beq          gp, t1, 300f
                  bgeu         a1, t5, 303f
                  or           a7, s0, s0
                  addi         gp, t2, 996
                  sltiu        t1, a6, -1271
                  ori          s0, s1, -1540
                  nop
                  bne          zero, s9, 302f
                  sltiu        s10, ra, 720
                  slt          t4, a6, s3
                  srai         s4, s5, 26
294:              srai         t3, t6, 21
295:              srai         gp, t2, 17
296:              blt          ra, s11, 315f
                  slli         a4, a7, 29
                  xori         t3, gp, -1495
                  addi         t0, s1, -622
300:              nop
                  blt          t3, s6, 317f
302:              auipc        s4, 315779
303:              bltu         t4, s11, 304f
304:              andi         s10, a5, 1509
                  ori          t3, a4, -576
                  or           a0, t0, t2
                  slli         a2, zero, 16
                  add          a0, a4, s5
                  andi         s7, a5, -1206
                  andi         t0, sp, -1889
                  sub          s9, s2, s1
                  slti         tp, t1, -387
                  sra          s5, s8, t6
                  slt          t2, a1, t6
315:              blt          s3, t1, 329f
                  slti         a1, s7, -810
317:              nop
                  lui          s9, 608341
                  sub          s9, gp, s0
                  auipc        a0, 34059
                  sra          s7, t5, s1
                  bgeu         gp, s3, 327f
                  bne          s2, t5, 330f
                  sub          s9, a5, a2
                  bgeu         s0, t3, 341f
                  srai         s8, a5, 19
327:              andi         s5, a4, -1814
                  or           a5, t6, s2
329:              bge          s5, t6, 348f
330:              auipc        t1, 106540
                  sra          a7, s4, s11
                  srai         s7, s0, 25
                  bne          s4, s4, 350f
                  beq          a6, a4, 343f
                  bltu         s5, s5, 343f
                  sub          tp, zero, s1
                  bltu         sp, t2, 356f
                  srai         t6, a7, 7
                  slli         s0, s8, 18
                  srli         s11, s2, 30
341:              bgeu         zero, gp, 358f
                  bltu         s8, gp, 359f
343:              bgeu         s1, s8, 363f
                  or           s8, s1, s6
                  blt          t1, t2, 355f
                  bltu         t3, s0, 358f
                  beq          s1, t0, 362f
348:              slli         tp, a1, 15
                  bgeu         t1, a4, 368f
350:              add          s0, s10, s2
                  bge          s10, s11, 356f
                  addi         s2, a3, 1680
                  andi         t3, sp, -1195
                  srli         a1, s2, 18
355:              sltu         a0, s5, t0
356:              and          s3, s5, t3
                  sll          s1, ra, s9
358:              ori          zero, a7, -231
359:              bne          sp, s3, 373f
                  slt          ra, t2, zero
                  slti         s2, t4, -1803
362:              or           a1, t6, s5
363:              or           a0, a2, s11
                  blt          t3, s11, 375f
                  sltiu        s4, s8, -301
                  srli         a0, s1, 18
                  andi         t2, ra, 1722
368:              andi         gp, s11, 476
                  bltu         s1, t2, 373f
                  bltu         a6, a1, 372f
                  xori         t6, s0, -1392
372:              srl          s10, a2, s2
373:              addi         a7, s4, -347
                  ori          s1, s5, 1502
375:              srai         a0, s6, 5
                  sub          t1, t4, zero
                  sub          t6, s3, t6
                  xor          s1, s11, zero
                  auipc        s1, 539341
                  andi         sp, t4, 1787
                  bgeu         a5, t6, 385f
                  auipc        t3, 912053
                  addi         a2, t3, -97
                  auipc        s0, 488996
385:              sll          t6, t5, s6
                  sltiu        ra, s9, -715
                  nop
                  beq          s10, s6, 405f
                  srli         s0, s0, 16
                  slt          t0, s4, t5
                  blt          s10, ra, 410f
                  or           s10, zero, a3
                  bgeu         a4, t0, 401f
                  or           s3, s0, a7
                  slli         s8, t0, 6
                  sub          s0, s2, s9
                  or           s7, s4, t6
                  lui          zero, 131333
                  bltu         s9, s11, 417f
                  slli         ra, s10, 27
401:              and          sp, a4, s5
                  slti         s0, t2, 863
                  sub          s7, s11, t2
                  auipc        a2, 705949
405:              bne          t2, s11, 411f
                  andi         a5, s1, -878
                  xori         a0, s4, -2033
                  sra          s8, s1, a4
                  sltiu        a4, s5, 1364
410:              auipc        sp, 13997
411:              slli         a7, t6, 16
                  ori          a4, t6, -1970
                  xori         s11, a3, 248
                  slli         a2, s7, 13
                  addi         a3, a4, -974
                  bne          t5, s0, 425f
417:              auipc        s8, 565332
                  ori          zero, t5, 341
                  andi         t6, s1, -1167
                  auipc        s5, 245579
                  and          s2, zero, s1
                  beq          gp, s4, 429f
                  sltiu        a3, s0, -1891
                  ori          tp, t2, 1702
425:              add          a5, s6, s9
                  ori          s7, s1, -1424
                  addi         s4, a5, 1320
                  lui          gp, 315159
429:              bge          s9, a7, 434f
                  beq          a4, s5, 447f
                  bne          a0, s4, 450f
                  bne          s9, s4, 446f
                  xor          sp, s9, a6
434:              beq          a4, t0, 451f
                  and          a3, a0, t1
                  slli         t1, a7, 21
                  blt          t5, s4, 455f
                  andi         a3, s1, -226
                  ori          s11, s5, 369
                  sra          s0, a4, tp
                  bltu         a6, s10, 460f
                  add          t3, t1, sp
                  addi         s9, gp, -1758
                  srl          s7, s9, a1
                  nop
446:              lui          a0, 539121
447:              lui          a5, 800486
                  bge          s8, a3, 468f
                  bge          s5, s4, 461f
450:              slti         t6, s7, -654
451:              sub          a7, a5, a3
                  slti         a4, a3, 286
                  slli         a3, t2, 31
                  sub          a0, a2, t3
455:              beq          t4, s6, 463f
                  sltu         a7, t5, zero
                  lui          a7, 526424
                  slli         s2, a4, 18
                  add          s2, a2, s4
460:              nop
461:              sub          s9, sp, s9
                  blt          a7, tp, 466f
463:              srai         a5, tp, 25
                  slli         t3, a0, 29
                  lui          a7, 361357
466:              and          t4, a7, t4
                  srai         a4, s5, 20
468:              sll          a2, a0, a3
                  srli         t4, t4, 19
                  sltiu        sp, t4, 503
                  xor          t0, zero, t6
                  ori          s10, zero, 1562
                  or           zero, a1, s8
                  blt          s0, t4, 482f
                  bltu         s10, s3, 492f
                  lui          t0, 425717
                  auipc        gp, 89535
                  xor          gp, sp, gp
                  beq          s1, t6, 483f
                  and          t1, t3, a1
                  blt          s10, tp, 483f
482:              bne          s9, ra, 483f
483:              sltu         s11, s0, a0
                  slli         a5, tp, 21
                  slt          ra, a5, s4
                  slt          s11, t1, s3
                  auipc        sp, 799899
                  bltu         s11, s4, 499f
                  xor          a0, zero, s9
                  srai         a1, gp, 7
                  srl          ra, a4, s2
492:              sra          a7, zero, t2
                  bltu         t4, a4, 509f
                  andi         t3, t5, -1132
                  sltu         s3, t3, s10
                  sltu         gp, s7, a7
                  nop
                  add          t0, t5, tp
499:              and          a1, a7, a5
                  or           s2, s0, t5
                  auipc        gp, 731767
                  bge          s5, a4, 521f
                  addi         t0, s2, 232
                  lui          a1, 59234
                  sltu         a0, t6, s8
                  and          a1, s7, s4
                  srai         s5, gp, 7
                  blt          a4, t6, 524f
509:              blt          s3, t0, 528f
                  add          s5, s9, a6
                  sll          s3, a2, t5
                  sltu         s8, s10, t5
                  beq          s6, ra, 528f
                  slt          s10, s4, a1
                  bgeu         s5, t0, 524f
                  lui          s5, 848633
                  bgeu         s1, s3, 523f
                  srli         s1, s9, 18
                  sub          s5, t3, s8
                  lui          gp, 419425
521:              bge          s5, s9, 535f
                  xor          s2, s5, s7
523:              sltu         s2, s8, gp
                  slt          t0, t6, a1
                  lui          s11, 223636
                  auipc        s11, 649692
                  and          t1, s3, zero
                  nop
                  xor          t6, t2, t4
                  ori          t2, s0, -1978
                  srl          t0, zero, s4
sub_1_j5:         jal          s11, sub_4 #jump sub_1 -> sub_4
524:              sltiu        a4, s10, -1919
                  auipc        s1, 27215
                  sll          tp, t0, a4
                  auipc        s9, 412628
528:              sll          gp, sp, t4
                  blt          s2, t1, 538f
                  sltu         s7, tp, a4
                  sra          t3, s9, a5
                  slli         s1, sp, 19
                  bgeu         s0, s3, 550f
                  slli         s4, s4, 24
535:              add          s5, s1, s8
                  srai         a4, a5, 6
                  add          t0, s8, s5
538:              slti         a4, a7, 756
                  sub          s7, t5, s3
                  bne          t0, s10, 545f
                  sub          t2, s9, tp
                  slti         a7, s4, 1043
                  ori          t1, s6, 1870
                  sll          a4, t0, a5
545:              slti         s5, a7, 1934
                  bgeu         t0, t6, 556f
                  or           s9, a3, t4
                  slli         zero, t4, 4
                  bge          gp, tp, 550f
550:              xori         s10, ra, -1423
                  srl          s9, a6, s5
                  sltiu        sp, s8, -1046
                  sll          a1, s7, a6
                  slti         a3, a2, 1858
                  sltiu        a7, t0, 1654
556:              sltu         a2, a4, s9
                  bltu         t0, s0, 563f
                  sub          a3, zero, a0
                  bltu         a7, a7, 571f
                  sll          gp, s10, s2
                  bgeu         t5, s2, 580f
                  xor          a7, a6, s0
563:              xori         s9, a4, 1308
                  beq          t0, s7, 574f
                  blt          a5, s0, 581f
                  add          t3, s9, s7
                  sll          ra, s0, sp
                  slli         s4, t5, 29
                  bge          gp, ra, 586f
                  slt          a7, s9, zero
571:              xori         tp, a2, 1156
                  sra          t3, a4, t1
                  and          tp, t5, ra
574:              sltiu        s9, s3, 121
                  bne          s0, s7, 591f
                  srai         t3, s5, 7
                  xor          s7, t5, s4
                  beq          s2, a4, 593f
                  auipc        a5, 639415
580:              sub          ra, a1, tp
581:              sltiu        s9, a0, 416
                  auipc        a0, 449596
                  bltu         s1, s0, 603f
                  ori          s2, s6, -203
                  lui          a7, 798289
586:              auipc        s3, 635520
                  or           s2, s0, tp
                  lui          gp, 84955
                  addi         s0, s3, -1058
                  srai         tp, t1, 22
591:              andi         t3, a7, 704
                  xor          s7, gp, a3
593:              lui          s10, 445188
                  andi         a5, ra, 950
                  auipc        a4, 346476
                  beq          t4, a7, 610f
                  sub          a1, t6, t3
                  xor          gp, a7, sp
                  sra          t4, ra, sp
                  sll          s8, s5, s4
                  srai         s1, s7, 23
                  blt          s0, a3, 619f
603:              or           ra, t1, s3
                  sll          a3, s2, a4
                  slti         s10, tp, -7
                  sll          s5, a7, t1
                  or           s2, s4, s10
                  auipc        t1, 100713
                  sltiu        t4, a0, 153
610:              and          t3, t1, s0
                  and          t6, t3, a0
                  bge          s8, a0, 620f
                  nop
                  bne          s0, tp, 633f
                  beq          a3, ra, 624f
                  ori          t3, a4, 869
                  sltiu        s10, t4, 1903
                  andi         a7, s2, -441
619:              sub          gp, a5, t1
620:              auipc        s2, 42777
                  xori         a2, a2, 1197
                  sll          t1, s10, tp
                  nop
624:              ori          a5, t6, 2006
                  xori         t4, s3, -1475
                  andi         a0, s5, -283
                  auipc        t6, 316814
                  bne          t5, ra, 632f
                  beq          a1, s9, 643f
                  slti         s0, t4, -1528
                  ori          s3, a4, -558
632:              auipc        tp, 801204
633:              slti         a3, t3, -1163
                  sll          t2, a7, sp
                  sll          tp, t6, s5
                  beq          s3, s5, 644f
                  srli         s1, sp, 1
                  sltiu        a3, ra, 269
                  srl          sp, ra, s8
                  bge          t5, t5, 651f
                  sltu         t4, s3, a6
                  srl          a5, s8, s9
643:              sll          a4, gp, s10
644:              slti         ra, s7, 1065
                  bgeu         s9, tp, 649f
                  slli         s3, ra, 17
                  bne          a4, zero, 665f
                  andi         a4, s8, -425
649:              beq          s3, a1, 654f
                  sll          t1, zero, a3
651:              sltiu        t2, tp, 238
                  srl          a4, s7, a0
                  sltiu        a7, t4, -1258
654:              srl          t6, s2, s8
                  slti         s8, a6, 666
                  sub          t2, tp, zero
                  andi         t4, s6, -219
                  lui          gp, 389927
                  or           t0, a1, s10
                  srli         s2, t2, 20
                  beq          t1, s3, 680f
                  slli         s4, t4, 23
                  andi         s0, t1, 263
                  sra          a4, a4, s2
665:              ori          a3, s1, -1731
                  sltu         a1, s6, s11
                  auipc        a2, 27732
                  add          tp, a0, t1
                  blt          a5, s2, 674f
                  addi         s8, t0, 1541
                  auipc        s1, 742317
                  sra          s10, s5, s5
                  sra          t3, sp, t2
674:              nop
                  blt          gp, a5, 694f
                  slli         t1, s6, 27
                  add          sp, a3, s1
                  slt          a7, s8, a7
                  bltu         zero, s9, 688f
680:              bne          a2, s2, 697f
                  bltu         sp, ra, 698f
                  slt          t3, t2, s8
                  nop
                  bne          tp, s5, 691f
                  auipc        s10, 1039008
                  sltu         zero, s10, t2
                  sub          s2, t0, s6
688:              or           a2, s8, t3
                  beq          s2, gp, 691f
                  bge          t3, zero, 701f
691:              srai         gp, t0, 29
                  sub          ra, s2, s4
                  sll          t1, a0, s3
694:              and          gp, ra, s10
                  slt          a0, s5, s1
                  andi         t0, t2, -37
697:              slli         s2, t1, 6
698:              sltu         s2, t1, a1
                  bgeu         tp, s2, 708f
                  and          s5, zero, t4
701:              bne          s0, gp, 718f
                  slti         a4, t4, 853
                  srai         a1, s7, 11
                  blt          t5, a4, 718f
                  slt          t4, ra, t5
                  srl          a0, t1, a1
                  xori         a1, sp, -1129
708:              sll          s7, s0, t3
                  slti         s2, t0, 803
                  bltu         a3, a2, 712f
                  sltu         t1, a1, s11
712:              srai         tp, t1, 20
                  lui          s11, 379821
                  sra          t3, a6, s2
                  beq          a3, a0, 735f
                  sltu         tp, t5, s10
                  lui          s5, 781228
718:              xor          s4, t4, s5
                  slt          s5, t5, a2
                  and          a5, s4, s5
                  srli         sp, tp, 15
                  nop
                  and          t2, a1, a7
                  sltiu        a1, s7, 1986
                  slli         a7, t0, 5
                  ori          s2, t4, -114
                  srli         t4, s6, 0
                  slli         t0, a2, 24
                  ori          s5, s0, -1133
                  sltu         s3, a0, a3
                  auipc        s7, 492325
                  add          s8, s1, t2
                  or           a5, s1, zero
                  sll          s8, t2, t0
735:              bltu         a5, a7, 745f
                  or           t1, t2, s4
                  add          s4, t1, s3
                  bgeu         s6, sp, 743f
                  srli         gp, s3, 19
                  lui          a4, 785846
                  bne          s11, t5, 747f
                  beq          a4, s5, 761f
743:              bltu         a5, ra, 759f
                  sll          s2, a2, s4
745:              ori          t3, ra, 738
                  sltiu        t3, s1, 564
747:              bne          tp, t2, 751f
                  andi         t4, a3, -1661
                  auipc        s1, 53704
                  sll          a3, s9, a6
751:              srli         a7, s8, 2
                  bge          t4, s0, 753f
753:              or           t1, s8, t1
                  or           t6, t4, t3
                  xori         s9, s3, 946
                  ori          s10, s5, -832
                  sra          t6, zero, t5
                  slt          zero, s0, a4
759:              ori          s10, s7, -1059
                  xor          zero, ra, a2
761:              xori         t4, s6, 1745
                  slt          s11, a5, s11
                  add          s8, a0, tp
                  xori         s0, t0, -1487
                  or           s1, s2, s0
                  slt          a3, s11, a1
                  or           s8, t1, tp
                  blt          s6, a7, 785f
                  beq          a0, sp, 776f
                  nop
                  bge          ra, s2, 789f
                  bltu         tp, t0, 780f
                  lui          t2, 854708
                  slti         s3, a0, 1648
                  slti         a3, t0, 1799
776:              slli         zero, s9, 18
                  bne          s7, t3, 796f
                  bne          s2, gp, 797f
                  nop
780:              or           t6, ra, tp
                  srli         s0, sp, 13
                  bgeu         a4, t3, 786f
                  xori         s8, a3, 1989
                  bltu         sp, a4, 799f
785:              srai         a5, t4, 18
786:              andi         s9, t5, -788
                  andi         a4, sp, -1456
                  slli         sp, t5, 23
789:              or           s11, s6, s9
                  auipc        a1, 538708
                  bgeu         s9, gp, 807f
                  blt          t2, a4, 804f
                  beq          s10, s9, 801f
                  addi         t2, s3, -590
                  slt          ra, a5, a1
796:              xor          sp, tp, a7
797:              slli         s2, s9, 30
                  sltiu        s0, t2, 1029
799:              srli         a0, a5, 23
                  bltu         t0, a5, 817f
801:              sra          s0, t6, s1
                  addi         s7, s11, 1439
                  srl          s8, s10, t5
804:              bgeu         a4, t4, 821f
                  srli         gp, a1, 23
                  slli         t1, a3, 4
807:              lui          s8, 823186
                  slli         s3, s9, 8
                  nop
                  bne          t6, a7, 824f
                  srai         a7, t5, 20
                  nop
                  srl          ra, s9, a6
                  slti         t6, a7, 870
                  bne          a5, s11, 834f
                  bne          t6, t6, 821f
817:              srl          s9, a0, s6
                  srai         s9, s2, 14
                  srl          ra, t3, sp
                  slt          s3, s4, s9
821:              xori         t2, a0, -41
                  slt          ra, a6, s10
                  andi         a4, a0, 449
824:              bne          s11, s0, 833f
                  bge          t4, t2, 841f
                  auipc        s8, 940520
                  and          s10, t5, s10
                  sra          a1, s3, a1
                  slli         zero, tp, 24
                  slli         s4, s1, 11
                  addi         s0, t6, 439
                  sltiu        a1, a5, -468
833:              sltu         sp, a4, t4
834:              slti         s2, t5, 2032
                  bgeu         sp, s11, 837f
                  slli         a0, s8, 16
837:              sll          t6, s0, s7
                  lui          s2, 710617
                  slti         s0, s4, -967
                  slt          a3, t4, t6
841:              bltu         a4, t5, 860f
                  lui          a3, 390238
                  slti         t6, s9, -726
                  and          a0, t1, s5
                  bltu         s7, a1, 859f
                  srli         sp, a4, 0
                  xori         t3, a0, 1622
                  sra          s11, s4, t2
                  blt          s4, s2, 868f
                  nop
                  ori          s3, a6, -506
                  bgeu         ra, a2, 863f
                  add          a0, sp, a5
                  bge          a2, ra, 855f
855:              sll          s2, t4, tp
                  bne          zero, s8, 874f
                  bltu         a5, s1, 863f
                  add          t1, s0, a4
859:              xori         s8, a4, 1504
860:              andi         ra, s11, 687
                  beq          t6, t4, 869f
                  srli         s2, s8, 2
863:              xor          t6, s11, a4
                  slt          s2, tp, t2
                  sra          gp, a5, ra
                  bne          s7, s6, 881f
                  sltiu        s0, s3, -1667
868:              auipc        a0, 677918
869:              add          tp, s5, s2
                  sltiu        a3, s2, -1874
                  or           sp, a3, a5
                  beq          s11, s7, 876f
                  bgeu         t5, sp, 878f
874:              sra          sp, a3, a2
                  slli         t4, t2, 1
876:              ori          t3, s11, 1723
                  sltiu        tp, a1, 746
878:              sltu         t2, a6, t0
                  bgeu         gp, t4, 883f
                  blt          s11, a2, 894f
881:              bne          s4, s8, 898f
                  add          s0, s5, s3
883:              sltiu        ra, t5, 1124
                  andi         s7, t6, -781
                  sub          s4, s11, t6
                  add          a2, a3, a3
                  add          s3, t6, a3
                  ori          a0, s10, 217
                  slti         ra, t0, -1680
                  srai         s2, t1, 20
                  xor          s7, tp, a2
                  slt          t2, s1, s3
                  sra          s9, t4, a7
894:              slli         s3, t5, 31
                  andi         s7, s8, 1034
                  bne          s7, t2, 905f
                  auipc        a2, 75543
898:              bne          a6, s10, 907f
                  sltiu        a3, t4, 947
                  slt          s4, s0, sp
                  andi         s9, t6, -440
                  ori          s4, t6, 145
                  andi         s8, a3, -1671
                  slli         tp, s11, 16
905:              bge          s0, s6, 922f
                  slli         a5, s0, 20
907:              sltu         a2, s2, t6
                  add          sp, a5, tp
                  bgeu         a0, s0, 919f
                  and          sp, s6, s2
                  bge          s10, tp, 923f
                  ori          s7, sp, 719
                  bgeu         s5, s0, 930f
                  srai         s11, s9, 5
                  auipc        tp, 590367
                  slt          s2, s7, t0
                  slt          s11, s10, sp
                  slt          s5, tp, zero
919:              lui          zero, 286240
                  slti         tp, s3, 89
                  sll          s4, s10, a7
922:              auipc        a5, 546849
923:              bne          t0, s5, 939f
                  xori         t3, a1, 1119
                  sll          s1, sp, a5
                  sltiu        a3, t2, 500
                  addi         a1, t3, -1556
                  slt          ra, sp, s0
                  xori         s7, s7, -140
930:              bge          a5, a2, 947f
                  xor          s0, t0, a1
                  sub          s8, s7, s7
                  or           s11, a6, t0
                  or           s8, s0, a3
                  srai         s3, s4, 1
                  sltu         s11, a0, a6
                  sra          t0, t1, ra
                  sub          a7, a3, s8
939:              blt          s4, a2, 947f
                  sltiu        a4, s6, 1498
                  bge          s4, t5, 948f
                  add          a0, s10, gp
                  bne          t5, t6, 962f
                  sltiu        s10, s10, 1835
                  and          t6, a2, a5
                  blt          t2, s10, 965f
947:              sra          s8, tp, s0
948:              bltu         a2, t2, 953f
                  srl          s11, tp, s2
                  auipc        s9, 35343
                  bgeu         s6, t6, 971f
                  add          s10, s6, a4
953:              xori         s7, tp, -807
                  nop
                  blt          t2, zero, 963f
                  ori          t3, a0, -197
                  lui          tp, 762937
                  andi         a0, s2, -74
                  slti         t2, a0, -2019
                  sra          s3, a3, sp
                  slli         a7, t6, 3
962:              auipc        t4, 162069
963:              srai         t3, t2, 31
                  auipc        t0, 1029506
965:              sra          a4, s1, t2
                  slt          s9, s4, a6
                  xor          t2, zero, s9
                  sltiu        zero, t2, 1311
                  add          s10, s1, s4
                  andi         a5, zero, -1680
971:              sll          a7, s5, s4
                  srli         s9, s4, 31
                  sltu         t2, sp, a2
                  addi         tp, tp, 1086
                  bge          s6, s5, 994f
                  bltu         s1, t6, 991f
                  bgeu         ra, ra, 996f
                  bne          s7, a6, 986f
                  srl          t2, s2, s3
                  ori          zero, ra, 1607
                  bge          a5, t3, 995f
                  sub          s10, s3, a4
                  lui          s3, 580851
                  bltu         s0, tp, 998f
                  xori         s10, a4, 1519
986:              bltu         t2, a7, 1005f
                  sltu         s4, s7, s2
                  srai         s5, s1, 18
                  bne          t0, s0, 995f
                  slli         ra, a3, 21
991:              addi         s9, ra, -545
                  sub          gp, s6, t0
                  srai         a0, s0, 14
994:              sll          s1, t1, zero
995:              ori          a1, s4, -1171
996:              bne          a6, a0, 997f
997:              add          s3, t2, s5
998:              andi         t4, s11, 384
                  xori         s11, a4, 757
                  auipc        gp, 190934
                  auipc        s2, 84228
                  add          a1, s1, a2
                  and          a1, ra, s11
                  sub          a1, s0, t6
1005:             ori          a3, t0, 834
                  srl          zero, a2, ra
                  slti         s4, s8, -616
                  bge          t5, a4, 1027f
                  slli         a1, ra, 29
                  addi         ra, a2, 836
                  xori         s7, t6, 639
                  srai         s9, s9, 0
                  slti         s9, zero, -1641
                  ori          t1, s4, -1111
                  bgeu         sp, s8, 1019f
                  srl          sp, t4, tp
                  xor          a5, t0, ra
                  xori         a0, s5, -1630
1019:             auipc        s4, 757997
                  srli         t6, a2, 9
                  xori         a3, s4, -53
                  xori         a2, a6, -1515
                  auipc        a3, 446510
                  slti         s0, s3, 137
                  or           s10, ra, s7
                  sltu         a2, a6, a2
1027:             sll          gp, s6, s6
                  beq          a2, t4, 1030f
                  sltiu        t2, t1, -140
1030:             bne          s10, a7, 1047f
                  add          a0, t0, s4
                  or           t0, s2, s1
                  xori         tp, s10, -600
                  lui          t1, 515488
                  srl          s0, ra, t0
                  xor          s2, s4, s1
                  auipc        a4, 812234
                  blt          s9, gp, 1043f
                  lui          a3, 77815
                  blt          s2, s10, 1050f
                  and          gp, a1, a2
                  xori         s1, s6, 302
1043:             sltiu        s2, s11, -314
                  bge          zero, gp, 1048f
                  add          sp, s4, t0
                  xor          t0, s2, t6
1047:             sub          s11, a7, a6
1048:             sltiu        t2, a7, 681
                  auipc        a0, 746185
1050:             nop
                  bge          s0, a4, 1069f
                  sltiu        s11, a5, 1942
                  auipc        s4, 578762
                  sltu         s1, a1, s10
                  bgeu         s4, t1, 1064f
                  add          a3, s9, tp
                  bltu         s3, a3, 1074f
                  beq          t6, tp, 1065f
                  addi         zero, t5, -35
                  srli         s8, gp, 26
                  addi         a3, t0, 1630
                  srl          s3, a3, gp
                  bge          a0, s5, 1075f
1064:             xori         zero, s11, -1788
1065:             nop
                  addi         s8, t5, -1353
                  slli         zero, ra, 29
                  sub          s9, zero, s0
1069:             beq          sp, a6, 1089f
                  or           s0, s2, a4
                  bgeu         ra, s0, 1076f
                  bge          a4, s1, 1088f
                  bltu         s1, ra, 1090f
1074:             bgeu         a4, gp, 1091f
1075:             or           a5, a7, sp
1076:             sltu         s2, s3, a0
                  sub          gp, a0, s11
                  blt          t4, s8, 1094f
                  slli         t3, s6, 31
                  blt          tp, t0, 1091f
                  bge          t3, a5, 1090f
                  sltu         t3, s10, a2
                  and          s1, t6, s7
                  or           sp, t5, a5
                  srli         s8, t5, 5
                  srl          a5, t4, s9
                  sll          a2, zero, sp
1088:             slt          a5, s10, sp
1089:             addi         ra, a0, -411
1090:             slli         gp, s11, 19
1091:             srl          a2, s5, t6
                  blt          tp, s10, 1099f
                  ori          s5, t5, 1599
1094:             slti         s4, t6, -871
                  sltu         a0, t4, t2
                  or           t0, tp, a0
                  blt          a0, tp, 1111f
                  srai         a2, s7, 9
1099:             srai         a4, t4, 0
                  srli         t1, a0, 21
                  and          a7, s1, a5
                  slli         t6, a0, 8
                  bge          t2, t0, 1119f
                  or           a3, a7, a5
                  bge          a2, a3, 1124f
                  or           a0, a2, s6
                  blt          t6, t4, 1108f
1108:             sra          s9, a1, s10
                  slti         t2, a2, 655
                  andi         t6, t1, -595
1111:             beq          s4, s2, 1113f
                  xori         s7, s3, -1084
1113:             srl          a4, s3, s6
                  beq          a1, s11, 1131f
                  slti         t4, a5, -479
                  blt          s6, s9, 1133f
                  bgeu         s6, t1, 1122f
                  auipc        a5, 189414
1119:             sra          a0, s2, s8
                  bge          t1, s6, 1130f
                  sll          s4, s0, gp
1122:             bne          s3, a0, 1136f
                  lui          a2, 595466
1124:             slti         ra, s7, -94
                  bne          sp, t6, 1144f
                  bgeu         s1, t1, 1138f
                  and          s11, t6, a2
                  bgeu         sp, t5, 1148f
                  xor          ra, s5, a7
1130:             slli         a7, t4, 30
1131:             beq          a6, s2, 1140f
                  xor          a7, a2, t6
1133:             sra          a4, t5, s2
                  sra          a4, s4, t1
                  bgeu         s4, s10, 1153f
1136:             xori         a5, a3, -1966
                  beq          zero, s9, 1145f
1138:             sltiu        a5, s3, 1436
                  srli         ra, t3, 21
1140:             addi         s11, s7, -1217
                  srl          s11, s9, t5
                  sll          zero, t2, s8
                  bne          a1, s5, 1162f
1144:             beq          a6, gp, 1148f
1145:             ori          s10, s3, 1188
                  bne          s11, a1, 1150f
                  sltiu        s5, a6, 966
1148:             nop
                  bgeu         a5, a0, 1165f
1150:             srl          sp, s10, s8
                  xor          tp, ra, a1
                  xori         a3, t4, -646
1153:             lui          s5, 824791
                  and          zero, s2, s3
                  la           s4, region_1+917 #start riscv_load_store_rand_instr_stream_9
                  xor          t2, s11, s1
                  sll          gp, t3, t5
                  xori         s11, s8, -1391
                  and          s5, t1, a2
                  lb           a1, 24(s4)
                  slti         a3, t5, 1214
                  lb           s8, -18(s4)
                  ori          t6, s2, 1327
                  xori         t6, s1, 1842
                  ori          ra, s5, -954
                  srl          t3, s2, ra
                  lbu          sp, 64(s4)
                  slt          zero, gp, s6
                  nop
                  slti         t6, a1, 982
                  lui          ra, 490148
                  sb           a4, 38(s4)
                  sb           a2, -36(s4)
                  sub          s10, t6, s1
                  lb           tp, 13(s4)
                  xor          gp, t2, a6
                  lui          a0, 650189
                  srl          a1, a6, gp
                  lui          ra, 236829
                  and          t4, t5, s11
                  auipc        s7, 72253
                  lb           t3, -18(s4)
                  or           a2, a2, a6
                  or           ra, a5, s7
                  lw           sp, -29(s4)
                  srl          tp, a4, t0
                  sra          s3, tp, a0
                  slt          s1, a5, s0
                  srli         gp, s9, 12
                  auipc        s2, 628245
                  sw           s10, 55(s4)
                  ori          s3, s9, 1088
                  slt          tp, s8, s11
                  lbu          a0, 30(s4)
                  sh           s3, 19(s4) #end riscv_load_store_rand_instr_stream_9
                  xor          s8, s8, t0
                  xori         s1, a4, -588
                  sra          s4, t4, s4
                  sll          a0, s8, s1
                  sub          sp, s1, sp
                  ori          t4, s5, 1528
                  bgeu         t5, tp, 1176f
1162:             sltiu        s4, a4, 1641
                  beq          s8, a0, 1169f
                  xori         s7, s6, 1557
1165:             sltu         t4, a2, s10
                  bge          s8, ra, 1171f
                  xor          a7, gp, s9
                  srai         a3, gp, 19
1169:             nop
                  xori         t4, s8, 478
1171:             blt          a7, a2, 1179f
                  xor          a0, gp, t2
                  addi         t6, zero, -236
                  sltiu        zero, a4, 400
                  sltu         s8, a5, t1
1176:             sll          s3, s7, s6
                  xor          a4, t5, s10
                  blt          s2, t4, 1195f
1179:             sll          ra, t0, t5
                  nop
                  sra          a5, a6, t2
                  sra          t0, s2, ra
                  and          a5, s8, gp
                  andi         a5, s6, 731
                  srai         a3, a6, 29
                  sltiu        ra, s9, -1621
                  add          s3, s7, a6
                  sltu         sp, s1, t3
                  slli         t6, s8, 9
                  nop
                  or           t2, s6, t6
                  nop
                  bge          t0, t4, 1210f
                  slti         s7, s3, -1545
1195:             bltu         a6, ra, 1204f
                  auipc        a7, 940331
                  bltu         s9, s7, 1216f
                  bge          s4, s5, 1209f
                  sra          s5, ra, a1
                  auipc        s11, 155807
                  sub          a4, a1, a7
                  bgeu         a3, s6, 1214f
                  slt          s1, a7, s4
1204:             sltu         a7, s7, zero
                  ori          zero, a1, 551
                  and          s4, a2, a3
                  sra          s4, t3, a6
                  slti         tp, s2, 6
1209:             andi         a4, s8, 251
1210:             lui          t2, 545149
                  auipc        a0, 194178
                  bgeu         t3, t5, 1221f
                  xor          t6, s8, t0
1214:             or           sp, a2, a1
                  addi         a0, ra, 1375
1216:             slt          t0, s3, t3
                  xor          sp, gp, s8
                  bne          s11, sp, 1222f
                  slti         t2, s6, 2004
                  and          s5, a3, s9
1221:             bgeu         s8, a0, 1239f
1222:             sltu         s9, s6, s11
                  xor          t6, s2, t3
                  and          t0, a4, t6
                  srai         s5, t4, 10
                  sltiu        a0, s3, 258
                  and          t1, s10, s11
                  slli         s2, ra, 8
                  srl          s8, t6, s4
                  srl          s10, s7, ra
                  auipc        t6, 768630
                  srai         s7, t0, 21
                  bge          t2, s5, 1250f
                  sltiu        s5, s0, 797
                  slti         s11, s9, 175
                  auipc        s11, 29864
                  blt          a2, s1, 1241f
                  slti         a4, s3, -1763
1239:             sll          s10, a3, zero
                  or           s2, a0, s11
1241:             bne          s10, tp, 1260f
                  nop
                  xor          a7, t6, t4
                  xori         t6, s10, 386
                  slli         s11, s6, 25
                  slti         s9, s8, -216
                  sltu         a0, t0, s11
                  slt          s2, s1, s11
                  sltu         a5, s8, t2
1250:             addi         t2, s2, -1109
                  bne          a2, s0, 1261f
                  beq          t3, a2, 1267f
                  sltu         a5, t1, a3
                  beq          a7, s5, 1273f
                  andi         tp, s7, 271
                  bne          t5, s6, 1272f
                  slti         t6, ra, -1817
                  nop
                  and          s9, zero, tp
1260:             nop
1261:             srli         t1, t1, 8
                  bne          ra, s4, 1263f
1263:             bgeu         t6, t1, 1280f
                  add          t6, s0, ra
                  sll          a2, s7, a2
                  blt          s9, s4, 1280f
1267:             bge          a2, gp, 1275f
                  xor          ra, t0, a3
                  xori         a4, t4, -1113
                  lui          a4, 416070
                  sll          a2, s6, gp
1272:             bne          t2, s10, 1286f
1273:             bgeu         t2, a3, 1289f
                  sub          a1, s10, tp
1275:             nop
                  addi         a1, a4, 1273
                  slti         a3, a1, -505
                  srl          s8, t6, zero
                  addi         a3, s6, 2012
1280:             slti         a7, gp, 1155
                  sub          t3, s3, a4
                  and          t2, s11, a4
                  srai         t2, a5, 20
                  sra          s2, s6, a7
                  sltu         t6, s1, a2
1286:             ori          a5, ra, -674
                  sltiu        s11, t0, -1523
                  bgeu         t4, s11, 1294f
1289:             add          t0, ra, a5
                  slti         s7, s9, -221
                  and          s2, gp, t6
                  xori         t1, ra, -700
                  ori          a2, a0, 1671
1294:             bltu         t3, ra, 1313f
                  sub          s9, s6, t5
                  blt          s10, a3, 1307f
                  sltu         a0, t6, t2
                  slt          t1, a6, tp
                  andi         s5, s2, -333
                  srai         t2, s5, 29
                  slt          s1, a1, a1
                  sltu         a4, s4, t2
                  sll          s9, s4, t4
                  or           s9, a0, a6
                  and          s2, a5, s3
                  addi         t4, tp, -1658
1307:             add          s0, s4, s7
                  sub          a4, s4, a3
                  or           a4, s9, t5
                  ori          t3, t5, -1791
                  lui          sp, 431978
                  blt          a2, s10, 1321f
1313:             sll          s3, s9, s5
                  sll          s3, a7, s7
                  bge          tp, s5, 1320f
                  srai         a2, s6, 15
                  slli         s10, s8, 21
                  andi         a3, s11, 949
                  addi         t1, a6, 288
1320:             beq          t5, ra, 1327f
1321:             bge          t6, a0, 1338f
                  sra          t3, t5, t2
                  xor          s11, t0, zero
                  sub          a4, a4, s11
                  addi         a2, s3, 1234
                  bge          a5, t6, 1334f
1327:             nop
                  xor          t4, s8, t2
                  ori          s11, a4, -2048
                  slt          ra, a4, a4
                  or           a0, s3, a1
                  sltu         t4, tp, s9
                  andi         s5, ra, 1276
1334:             and          t6, a2, s10
                  auipc        s4, 345586
                  bge          a7, a5, 1353f
                  slt          ra, tp, s5
1338:             bne          s2, t1, 1358f
                  lui          s7, 1015920
                  beq          t3, s2, 1345f
                  bltu         s10, s10, 1360f
                  xor          a5, s2, t6
                  bge          zero, t1, 1345f
                  sltu         ra, t5, s11
1345:             blt          t2, s9, 1349f
                  and          s0, t3, a2
                  bne          a4, t1, 1366f
                  slli         zero, t0, 12
1349:             sll          s2, a0, s4
                  sra          sp, s4, a1
                  beq          a0, gp, 1370f
                  ori          t0, s5, -556
1353:             srli         a2, s2, 27
                  bne          a1, s9, 1369f
                  bgeu         a5, a2, 1363f
                  sll          a4, t3, t2
                  or           a0, s5, a2
1358:             bltu         a7, a5, 1367f
                  xor          t2, a7, s3
1360:             sltu         ra, a6, a3
                  bltu         s1, t1, 1378f
                  srai         s2, t4, 0
1363:             xor          s4, a7, s9
                  srl          s10, s8, a1
                  auipc        sp, 388699
1366:             bltu         s3, a5, 1384f
1367:             xor          s2, s9, t2
                  and          ra, gp, s5
1369:             andi         s11, s8, -1860
1370:             and          t0, s8, a7
                  add          t1, tp, s4
                  bne          a5, s3, 1388f
                  sltiu        s4, t0, 1652
                  auipc        sp, 303271
                  slti         zero, gp, -1109
                  sub          s10, t6, s9
                  sltu         s4, gp, t0
1378:             andi         sp, a6, 1844
                  bltu         s3, s4, 1388f
                  slli         ra, s1, 16
                  srl          s0, tp, t4
                  or           s5, s1, s11
                  ori          a5, a4, -1644
1384:             sll          t1, s2, a1
                  bgeu         s5, tp, 1390f
                  auipc        s4, 27262
                  add          s11, s0, s3
1388:             slti         t2, s2, 359
                  add          a7, a1, a4
1390:             blt          sp, t4, 1409f
                  slli         s8, t4, 0
                  and          tp, a4, sp
                  blt          sp, t5, 1405f
                  bge          s0, s5, 1399f
                  slli         gp, ra, 30
                  srl          ra, s4, s11
                  andi         s11, a3, 2030
                  ori          tp, s10, 275
1399:             slli         sp, s3, 22
                  xor          sp, s0, s0
                  slt          s11, t0, t4
                  add          gp, t5, s11
                  bge          s5, s5, 1419f
                  srai         s10, a7, 31
1405:             ori          s4, s6, 901
                  and          a7, a0, ra
                  srl          t6, zero, a3
                  and          t3, a7, t5
1409:             sub          s3, a4, s11
                  slti         t6, a5, -749
                  slt          s5, gp, t0
                  auipc        a3, 758620
                  slli         s5, s7, 0
                  or           a0, ra, s5
                  nop
                  bge          a3, t2, 1433f
                  sltu         s5, s1, t4
                  bltu         zero, s3, 1432f
1419:             ori          a5, tp, -1055
                  and          a7, s10, zero
                  lui          t6, 231188
                  beq          s11, s1, 1429f
                  slti         tp, t4, -474
                  srl          a4, t6, a0
                  xor          s11, s10, s5
                  auipc        t0, 528663
                  sub          a3, t4, zero
                  sub          s3, a0, t4
1429:             lui          tp, 783298
                  srli         s7, s4, 9
                  sra          s1, a0, t1
1432:             bne          a5, s10, 1434f
1433:             or           a5, a4, s10
1434:             bgeu         zero, a3, 1453f
                  sll          s2, s5, s2
                  srl          s7, s6, t6
                  sra          a2, a4, gp
                  slt          a3, gp, ra
                  or           gp, s2, t6
                  bge          sp, s8, 1457f
                  xor          a4, t5, a7
                  blt          t4, s6, 1443f
1443:             sub          s8, s5, a5
                  slti         s10, a1, 410
                  xor          s1, t0, sp
                  slt          s7, zero, a2
                  beq          sp, s5, 1458f
                  beq          s7, s4, 1452f
                  sra          a7, t5, t2
                  srai         t0, zero, 5
                  bge          s10, t6, 1471f
1452:             addi         s3, s2, -1735
1453:             xor          zero, a6, s8
                  bge          zero, t2, 1460f
                  xori         tp, a4, -1567
                  lui          a7, 659456
1457:             srl          t1, a0, sp
1458:             ori          a5, a0, 1626
                  addi         gp, s5, -512
1460:             add          a2, t5, ra
                  addi         gp, s7, 1916
                  bne          a7, s11, 1479f
                  bltu         t0, s11, 1471f
                  bgeu         s2, t2, 1478f
                  sll          a5, tp, ra
                  add          a2, t5, a5
                  auipc        s3, 91450
                  srli         a5, a2, 20
                  beq          s8, t3, 1479f
                  blt          a7, s11, 1475f
1471:             and          a0, t1, s11
                  srai         s10, sp, 16
                  bgeu         tp, s4, 1489f
                  srl          s11, a4, a5
1475:             or           a7, tp, ra
                  bne          s6, s6, 1496f
                  andi         s5, s11, -1222
1478:             srai         gp, a2, 5
1479:             sltiu        a2, s8, -758
                  or           s2, s7, a1
                  sra          a4, zero, a7
                  lui          s8, 88238
                  nop
                  bne          a1, zero, 1503f
                  slli         gp, s2, 1
                  bgeu         s0, s7, 1491f
                  beq          a2, s10, 1504f
                  sra          tp, a0, s5
1489:             sltiu        gp, sp, 935
                  srli         gp, ra, 21
1491:             sra          a2, s10, s4
                  sltiu        a7, tp, -1366
                  slli         a5, s7, 11
                  srai         s9, s6, 20
                  bge          s4, s3, 1497f
1496:             blt          t4, s8, 1512f
1497:             bge          s8, t3, 1514f
                  sltu         a7, t2, s5
                  blt          a0, t6, 1509f
                  srai         s4, zero, 10
                  slt          s0, t4, s0
                  srai         tp, s7, 7
1503:             blt          s2, a4, 1515f
1504:             sll          ra, t3, s10
                  srli         t6, t5, 22
                  sltiu        tp, t2, 1574
                  xori         s5, a1, -276
                  and          t4, a0, s6
1509:             srl          a5, t4, s5
                  sll          s5, t3, s10
                  sll          s11, t6, tp
1512:             lui          gp, 685043
                  slti         s9, a4, 807
1514:             beq          s5, s8, 1515f
1515:             bltu         s7, s5, 1525f
                  bltu         gp, a7, 1525f
                  slli         s11, s9, 30
                  or           s5, s0, s7
                  slti         s10, s11, 18
                  andi         s5, s4, -1548
                  lui          a7, 340742
                  ori          s7, a2, -18
                  slti         s1, s5, 164
                  srl          s1, t5, s2
1525:             xor          a4, s2, s7
                  lw           s11, 4(t5)
                  srai         s4, t5, 20
                  srl          t4, t3, s1
                  sra          a0, s10, a4
                  slt          t1, t6, s10
                  addi         t5, t5, 12
                  auipc        t0, 45165
                  and          s7, gp, zero
                  sub          a3, s11, s2
2109:             addi x7, x27, 1
2109:             jalr x7, x7, 0
sub_6:            bgeu         a7, t3, sub_6_stack_p
                  sltiu        gp, s5, 331
                  sra          s5, t2, s2
                  srl          zero, tp, a3
sub_6_stack_p:    addi         t5, t5, -40
                  slt          a7, gp, s1
                  sra          a4, s9, tp
                  sw           s11, 4(t5)
                  sra          ra, t2, tp
                  sll          t3, t2, a7
                  and          s2, s10, sp
                  sll          zero, t5, s9
                  la           a2, sub_7
                  ori          t1, t1, -156
                  addi         a2, a2, -548
                  bgeu         s4, t2, sub_6_j10 #branch to jump instr
                  sll          s8, a3, s8
sub_6_j10:        jalr         s11, a2, 549 #jump sub_6 -> sub_7
                  nop
                  la           s4, sub_7
                  sll          tp, s2, a1
                  addi         s4, s4, -951
                  andi         gp, t0, -44
                  slli         t4, sp, 4
                  blt          zero, s5, sub_6_j11 #branch to jump instr
                  xor          s8, t1, ra
sub_6_j11:        jalr         s11, s4, 952 #jump sub_6 -> sub_7
                  slti         a0, s7, 1629
                  auipc        a4, 447739
                  sltiu        s8, ra, -878
                  andi         a0, a5, -952
                  addi         s0, a3, -270
                  srai         s7, s11, 19
                  srli         s3, a3, 4
                  sltu         s5, zero, t3
                  sltiu        t2, zero, -675
                  andi         a7, t5, 628
                  lw           s11, 4(t5)
                  ori          s3, ra, -519
                  sltiu        a1, s6, -1972
                  xori         t1, s8, 1491
                  addi         t5, t5, 40
                  nop
43:               addi x27, x27, 0
43:               jalr x27, x27, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x22, x30, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x25, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x25, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x25, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x25, x20, ecall_handler
                  li x20, 0x1
                  beq x25, x20, instr_fault_handler
                  li x20, 0x5
                  beq x25, x20, load_fault_handler
                  li x20, 0x7
                  beq x25, x20, store_fault_handler
                  li x20, 0xc
                  beq x25, x20, pt_fault_handler
                  li x20, 0xd
                  beq x25, x20, pt_fault_handler
                  li x20, 0xf
                  beq x25, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x30, x22, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x22, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x22, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x30, x22, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x30, x22, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x30, x22, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
