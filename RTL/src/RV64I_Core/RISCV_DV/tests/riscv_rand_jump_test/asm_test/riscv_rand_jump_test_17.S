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
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 0
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0x9
                  li x1, 0x4bb9b29b
                  li x2, 0x168056a6
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x9a1dfc86
                  li x7, 0x80000000
                  li x8, 0xaf0ec63f
                  li x9, 0xf7e7ea95
                  li x10, 0xffd6dac8
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0xf
                  li x15, 0xc
                  li x16, 0x12f9654a
                  li x17, 0x80000000
                  li x18, 0xfffe586f
                  li x19, 0x0
                  li x20, 0xf02fa5d1
                  li x21, 0x82259c28
                  li x22, 0x6
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x26, 0x8872d120
                  li x27, 0xf
                  li x28, 0x3
                  li x29, 0x0
                  li x30, 0x0
                  la x25, user_stack_end
main:             xori         a4, s4, -1290
                  srai         s6, a2, 13
                  slli         s2, a0, 18
                  ori          a1, a1, 141
                  sub          a0, sp, t2
                  auipc        zero, 518804
                  slti         a5, t5, 2029
                  bge          a6, a4, 16f
                  auipc        a6, 70831
                  sll          s4, s9, zero
                  slli         t1, s10, 9
                  xori         s4, s7, -1425
                  bltu         s5, s7, 24f
                  and          s7, s9, s11
                  beq          a1, t1, 30f
                  blt          t1, zero, 33f
16:               sub          t1, tp, a2
                  srl          s8, a0, s3
                  xor          s0, s1, t5
                  sub          a1, ra, zero
                  and          s5, s1, s9
                  or           a7, zero, s3
                  srai         a6, sp, 20
                  ori          ra, a1, 1898
24:               sltu         tp, s10, ra
                  sltu         sp, s0, s9
                  addi         s11, s3, -548
                  bge          tp, a4, 36f
                  bgeu         s5, t6, 46f
                  slti         s6, t0, 1920
30:               ori          a2, zero, 1280
                  beq          s1, t3, 40f
                  xori         s3, t3, 1775
33:               addi         sp, s2, 424
                  addi         s0, s11, -706
                  slti         a2, s6, -1594
36:               bge          s3, s4, 46f
                  sltiu        a0, a0, -1178
                  addi         s4, s6, 226
                  sltu         zero, t5, s4
40:               sltiu        t0, tp, -1160
                  bge          s1, sp, 56f
                  sltiu        a2, t6, 85
                  bgeu         s10, a1, 60f
                  xori         a2, s4, -223
                  srl          ra, s6, t1
46:               or           a1, a3, a6
                  sltu         s5, t5, ra
                  xor          a2, s9, a1
                  lui          t0, 34095
                  blt          t3, sp, 63f
                  addi         s6, a7, 958
                  or           t4, s6, a2
                  addi         a1, a7, -1165
                  sltu         a0, s3, t1
                  bge          ra, s2, 65f
56:               sll          gp, a1, a1
                  nop
                  sltiu        s4, t2, 771
                  sltiu        s4, s3, 168
60:               auipc        sp, 629987
                  blt          s8, a0, 68f
                  sub          a3, a1, a2
63:               sltu         t2, zero, s1
                  lui          s11, 124775
65:               xor          a7, zero, s9
                  ori          s2, a4, -1146
                  blt          a6, t3, 74f
68:               sra          zero, t4, s4
                  addi         s5, a2, -113
                  or           sp, s1, a1
                  sra          s5, s3, t3
                  slt          a1, t2, zero
                  sltu         t5, zero, a2
74:               lui          a3, 24609
                  bge          sp, s11, 76f
76:               addi         t0, gp, -615
                  xori         sp, t5, -357
                  srli         zero, s7, 5
                  srai         s3, s7, 4
                  bne          s5, t1, 87f
                  beq          s10, sp, 90f
                  sltiu        t0, a1, 97
                  bne          a7, gp, 99f
                  beq          s6, t5, 91f
                  bgeu         s5, t4, 98f
                  slti         a5, s2, 1944
87:               bne          t2, s7, 106f
                  add          t4, s1, t0
                  blt          t6, gp, 103f
90:               auipc        a5, 327689
91:               slt          s6, s5, t5
                  xor          t5, t0, a1
                  ori          a6, s1, -134
                  sra          t4, zero, s3
                  lui          t1, 588870
                  bge          s1, a2, 105f
                  bne          s8, t3, 99f
98:               srai         s11, a1, 8
99:               xor          s4, t2, s2
                  bltu         t2, t5, 105f
                  bgeu         a7, gp, 121f
                  srai         t2, a5, 7
103:              sra          s3, t3, t6
                  sra          a4, t6, a3
105:              srai         a7, t3, 29
106:              nop
                  beq          t5, tp, 121f
                  srl          s0, zero, s7
                  sll          s1, t5, a5
                  xori         t4, t5, 979
                  or           gp, s8, a3
                  andi         a5, a6, 875
                  slt          gp, t4, a0
                  slti         s4, s5, -1537
                  andi         a6, s2, 721
                  slli         a7, t1, 20
                  sltu         s10, tp, s3
                  bge          a6, s7, 129f
                  blt          s6, s3, 138f
                  auipc        t5, 661265
121:              bgeu         s10, s9, 136f
                  bne          s5, tp, 136f
                  blt          t1, s5, 140f
                  bne          s10, s5, 133f
                  bgeu         s1, sp, 132f
                  beq          tp, zero, 142f
                  bltu         s0, a2, 145f
                  lui          s1, 660465
129:              sll          s7, s11, s7
                  xor          s2, a5, s5
                  ori          gp, sp, 1061
132:              sltu         t1, s10, a1
133:              bne          s10, s5, 148f
                  andi         s2, a7, -1668
                  auipc        s11, 806354
136:              srai         t5, zero, 7
                  lui          a3, 203703
138:              addi         s8, ra, 771
                  srai         a6, t4, 31
140:              bne          s9, t1, 147f
                  bge          t1, s4, 154f
142:              xor          ra, a0, s0
                  sub          s0, a2, s11
                  and          sp, a0, s0
145:              nop
                  sra          a5, a7, s10
147:              auipc        a5, 861709
148:              beq          a4, t3, 162f
                  lui          s7, 272278
                  and          a7, s0, a4
                  bge          a5, t6, 158f
                  srli         zero, t5, 26
                  or           a6, a4, t3
154:              sltiu        s3, t5, 880
                  or           a0, a6, tp
                  xor          zero, s2, t6
                  bne          t6, a5, 173f
158:              or           a0, a5, tp
                  slt          t5, s6, a1
                  xori         s7, s6, 1787
                  add          a3, s7, a7
162:              addi         a6, t5, -1787
                  sra          s11, a3, a4
                  blt          t5, s11, 183f
                  sra          gp, zero, a7
                  bgeu         zero, t2, 175f
                  slt          a1, t2, t0
                  addi         t2, zero, -675
                  andi         t4, s0, -225
                  slt          a0, t5, t5
                  sub          s2, t3, a6
                  slti         t4, a1, -1826
173:              nop
                  srai         a5, s2, 4
175:              bltu         a0, sp, 194f
                  srai         t2, a4, 5
                  bne          s7, t5, 186f
                  srl          s6, s3, t4
                  slt          s0, a3, sp
                  lui          t0, 378834
                  sra          t4, t4, sp
                  bgeu         ra, sp, 191f
183:              xor          s5, tp, s11
                  slt          ra, s2, zero
                  ori          t1, t2, -139
186:              xor          t4, s0, s6
                  blt          a1, a2, 192f
                  and          ra, a2, s2
                  addi         s4, a1, -1930
                  nop
191:              sll          s0, s5, a1
192:              sub          t2, a1, t4
                  slt          t2, s11, tp
194:              bge          ra, a4, 205f
                  sub          s11, t2, a5
                  ori          s5, s1, 1578
                  or           a2, s8, a3
                  or           t1, s11, s7
                  sra          ra, s11, s6
                  srl          s11, t2, s7
                  sub          gp, s2, s5
                  slli         a1, t0, 3
                  slli         zero, s10, 12
                  ori          s6, t5, -392
205:              ori          t1, s5, -655
                  addi         a0, a4, 421
                  srl          s1, t6, a3
                  srl          s6, s6, s6
                  bltu         a4, t4, 216f
                  bgeu         gp, a2, 219f
                  sltiu        zero, s9, 419
                  or           t5, s1, s5
                  srai         t2, a2, 18
                  and          a6, s10, s4
                  or           s6, a3, t6
216:              lui          s7, 856594
                  bne          t6, t5, 218f
218:              srai         a0, s9, 9
219:              srli         s4, s8, 1
                  srli         t5, t2, 1
                  sub          gp, s3, s0
                  xor          s7, t2, s6
                  ori          s5, s11, 805
                  or           t0, t3, s8
                  bltu         t2, s0, 240f
                  nop
                  slt          gp, s1, ra
                  sll          s2, t1, t0
                  addi         a3, s11, -806
                  slti         a0, s3, 682
                  slli         s5, sp, 9
                  nop
                  slli         s8, a1, 14
                  srai         s10, t5, 15
                  slt          t1, t1, t6
                  bltu         a5, t0, 248f
                  sub          zero, a1, a2
                  lui          s2, 548740
                  la           a2, sub_1
                  sub          ra, tp, a6
                  add          zero, a1, s7
                  or           s10, t2, s7
                  addi         a2, a2, -34
                  slli         t2, a2, 21
                  slt          a0, s10, a5
                  add          s0, t2, t6
                  ori          zero, a7, -705
main_j1:          jalr         t5, a2, 35 #jump main -> sub_1
                  auipc        a2, 790317
240:              xori         a4, s10, -52
                  bge          a7, sp, 243f
                  lui          s1, 72865
243:              bge          sp, a4, 256f
                  slt          t4, a3, t3
                  srli         s2, zero, 17
                  sub          s4, zero, s4
                  sra          t4, ra, t3
248:              bgeu         s10, s8, 266f
                  slt          a1, s4, s0
                  lui          s6, 109305
                  sub          s1, s7, tp
                  bltu         t4, ra, 272f
                  slli         tp, a2, 7
                  bltu         a7, t5, 264f
                  lui          t2, 517556
256:              srl          ra, t4, t5
                  or           s1, t4, a0
                  blt          zero, t0, 268f
                  bne          a1, a3, 275f
                  sltiu        t0, s4, 1759
                  andi         a2, s9, 201
                  or           s11, t5, a7
                  xori         s11, t0, -1363
264:              or           t2, s0, t0
                  sll          s1, s4, t6
266:              auipc        a7, 90226
                  or           s1, a5, s0
268:              add          t4, s5, a3
                  sltu         s10, t4, gp
                  srai         s2, a6, 5
                  xor          sp, s5, s6
272:              xor          t1, s6, gp
                  xori         s2, a0, 1266
                  or           t1, t1, s1
275:              ori          t1, tp, -708
                  ori          s0, a5, -1209
                  sltiu        s6, a1, -1978
                  xori         a4, s0, 990
                  addi         t0, a6, -818
                  srli         a6, s6, 1
                  and          t2, t2, s9
                  bge          a4, t0, 291f
                  add          a3, t5, zero
                  bgeu         ra, s3, 298f
                  auipc        ra, 402517
                  addi         a6, a5, -1648
                  and          s5, a5, gp
                  andi         s10, s8, 1562
                  ori          s2, s4, -1643
                  sltu         t2, t0, t0
291:              xori         a6, t2, -1882
                  la           sp, region_0+793 #start riscv_load_store_rand_instr_stream_1
                  add          s2, s6, s5
                  xor          t2, ra, a5
                  srai         s10, s7, 26
                  lhu          s1, 1(sp)
                  lbu          ra, -14(sp)
                  sltiu        s0, t2, 249
                  sw           s5, -105(sp)
                  slli         a5, s1, 27
                  nop
                  lh           a4, -139(sp)
                  and          tp, s6, a5
                  sb           a0, -44(sp)
                  slt          ra, s7, s9
                  sw           t6, -101(sp)
                  sub          a5, s6, a7
                  srl          s2, gp, tp
                  add          a7, zero, s1
                  xor          gp, sp, gp
                  lbu          ra, 112(sp)
                  sb           zero, -182(sp)
                  lh           a0, -183(sp)
                  lb           s4, -102(sp)
                  sh           s6, -91(sp)
                  or           s5, zero, s9
                  ori          tp, a3, -324
                  lbu          t1, -143(sp)
                  lb           s7, -84(sp)
                  add          t5, a1, s10
                  addi         a1, t0, -678
                  lw           s11, -41(sp)
                  lb           s2, -162(sp)
                  lb           s4, -102(sp)
                  sll          s7, a0, t6
                  srai         a1, a7, 29
                  lbu          t4, 132(sp)
                  sb           t6, 125(sp)
                  lb           s1, 222(sp)
                  lbu          a3, -116(sp)
                  lb           a7, -168(sp)
                  lhu          a5, -221(sp)
                  xor          s8, t5, s6
                  ori          s1, t5, -936
                  sb           s4, 221(sp)
                  lbu          a0, -145(sp) #end riscv_load_store_rand_instr_stream_1
                  blt          s8, a7, 293f
293:              bgeu         t4, s1, 302f
                  addi         ra, sp, -1230
                  beq          t5, t5, 302f
                  slli         a0, a7, 27
                  sltiu        tp, s6, 1116
298:              bgeu         t1, s9, 315f
                  and          ra, s9, a1
                  srli         sp, s6, 30
                  srai         s2, s7, 19
302:              sltu         s6, a0, s3
                  andi         a5, ra, 319
                  andi         a2, s6, 221
                  sltiu        ra, s0, 1365
                  auipc        t1, 433916
                  addi         a5, s3, -104
                  bne          t5, t1, 317f
                  xor          s7, a3, a3
                  beq          t0, s8, 325f
                  srai         a2, s9, 20
                  sra          tp, s2, s0
                  xori         s0, a2, -363
                  srli         a4, s2, 19
315:              and          a4, t4, s2
                  bltu         t6, gp, 330f
317:              addi         a4, a6, 1966
                  addi         t2, a0, -2006
                  slli         s1, t5, 19
                  and          zero, a1, s8
                  sub          a3, t3, s11
                  bgeu         a1, s4, 340f
                  xori         s3, t4, 727
                  andi         s10, a6, -1982
325:              bne          tp, a0, 337f
                  addi         s11, s7, -1810
                  slt          s7, s10, s8
                  la           sp, region_0+342 #start riscv_load_store_rand_instr_stream_0
                  lb           gp, 399(sp)
                  lbu          s3, -191(sp)
                  sll          s8, a7, s9
                  lbu          a7, -246(sp)
                  lb           s0, 330(sp)
                  or           s4, t5, s2
                  lh           s2, 96(sp)
                  lbu          t0, 1003(sp)
                  xori         s10, a5, 1066
                  xor          s4, a1, a1
                  lbu          s2, 1311(sp)
                  srl          s11, t4, zero
                  lbu          s11, 1608(sp)
                  lh           a5, -156(sp)
                  sub          ra, a5, a1
                  sh           t5, 688(sp)
                  andi         s3, s6, -1079
                  lbu          s11, -99(sp)
                  lhu          a6, 1404(sp)
                  lh           s5, 1408(sp)
                  andi         s1, tp, -1153
                  sh           s0, 100(sp)
                  lbu          a0, 1161(sp)
                  lbu          zero, 1319(sp)
                  addi         s10, s8, 1889
                  sh           s7, 444(sp)
                  lb           a4, 1493(sp)
                  sra          s7, a5, t5
                  sb           a3, 519(sp)
                  lb           s0, 360(sp)
                  addi         s10, s9, 1333
                  lbu          s5, 694(sp)
                  slli         tp, a2, 12
                  add          t0, a7, s10
                  lbu          s8, 1393(sp)
                  lb           a4, 1129(sp) #end riscv_load_store_rand_instr_stream_0
                  add          t5, a7, t0
                  srai         a7, a3, 16
330:              blt          s11, s11, 340f
                  ori          s11, s2, 128
                  bltu         a5, s6, 343f
                  sll          s11, s2, s9
                  add          a6, t3, s7
                  sra          s6, a6, t3
                  srai         t2, t2, 12
337:              add          s6, s5, a1
                  beq          t3, t3, 343f
                  bge          tp, a7, 358f
340:              beq          zero, s4, 349f
                  andi         t5, s7, 738
                  xor          s7, a3, a7
343:              srli         a1, ra, 6
                  sra          ra, a1, s10
                  sra          a2, s8, t1
                  add          tp, t4, gp
                  or           t4, a5, sp
                  sub          s8, gp, s0
349:              srl          t5, a4, t3
                  xor          t1, tp, s5
                  bltu         s1, a4, 360f
                  auipc        a7, 59154
                  bge          s7, s11, 363f
                  xor          t0, a5, a1
                  sll          s3, s0, s5
                  slti         t5, zero, -1409
                  sll          s3, t6, s0
358:              srai         a0, a7, 14
                  lui          tp, 22728
360:              beq          s6, sp, 363f
                  bge          t0, a1, 363f
                  sub          s7, s5, a2
363:              sll          a5, t1, s1
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            sub          s0, a1, a1
                  bgeu         s1, s2, sub_7_stack_p
                  nop
                  slti         t0, a5, -765
                  sub          zero, a7, a4
sub_7_stack_p:    addi         s9, s9, -24
                  sw           t5, 4(s9)
                  srl          t2, t1, s1
                  sra          s4, s2, sp
                  slli         a0, a0, 27
                  addi         a2, s1, -22
                  add          tp, a3, zero
                  add          zero, ra, gp
                  xori         s3, s1, -194
                  srl          s0, t5, t4
                  slt          a3, s2, ra
                  ori          s0, t1, 155
                  la           a7, sub_10
                  ori          ra, t1, 454
                  srl          t2, ra, s6
                  sltu         s5, a5, gp
                  addi         a7, a7, -990
                  sltiu        t0, s8, -1704
sub_7_j8:         jalr         t5, a7, 991 #jump sub_7 -> sub_10
                  add          t2, s8, t2
                  la           s6, sub_8
                  srl          s8, tp, tp
                  addi         s6, s6, 166
                  sltiu        t0, a4, -1402
                  addi         s8, t3, -1259
                  sub          a1, s0, s1
                  srli         s5, s9, 17
                  blt          a3, zero, sub_7_j9 #branch to jump instr
                  slti         a0, s10, 537
                  add          s1, a7, s6
                  add          t4, t1, s0
                  ori          t1, a0, 1991
sub_7_j9:         jalr         t5, s6, -166 #jump sub_7 -> sub_8
                  sltu         a4, t2, t6
                  sra          s11, t1, gp
                  xor          s10, sp, a3
                  or           t2, t4, tp
                  add          a2, a1, s1
                  addi         s10, s11, 636
sub_7_j11:        jal          t5, sub_10 #jump sub_7 -> sub_10
                  la           sp, region_0+636 #start riscv_load_store_rand_instr_stream_0
                  lbu          t4, 5(sp)
                  lb           a4, -3(sp)
                  sra          s4, a0, a0
                  ori          s10, s5, 1931
                  lhu          tp, -2(sp)
                  lb           tp, 12(sp)
                  auipc        t2, 554142
                  srai         ra, gp, 0
                  sltu         a3, a0, t1
                  auipc        zero, 958343
                  sra          a1, gp, s5
                  lb           t0, -13(sp)
                  add          s6, a4, tp
                  xori         t4, s8, -1336
                  lh           s0, -14(sp)
                  lbu          s11, -16(sp)
                  lb           s11, -9(sp)
                  lbu          a0, -3(sp)
                  sltu         t4, t0, s11
                  lbu          tp, 5(sp)
                  sltu         a0, t6, s9
                  andi         t0, t0, 1960
                  slt          s2, s1, s1
                  xor          s5, s1, tp
                  lh           t4, 10(sp)
                  sb           a6, 3(sp)
                  sb           t5, 14(sp)
                  srl          tp, t0, s11
                  lb           a7, 15(sp)
                  lb           a2, 11(sp)
                  sb           s2, 11(sp)
                  add          s10, tp, a4
                  lb           s0, 13(sp)
                  lb           a6, 7(sp)
                  lb           ra, 12(sp)
                  lb           zero, 15(sp)
                  sb           t5, -5(sp)
                  lb           t0, 7(sp)
                  sh           s1, -4(sp)
                  sb           a2, 5(sp)
                  lb           t0, 0(sp)
                  ori          t2, s11, 259
                  sb           zero, -11(sp) #end riscv_load_store_rand_instr_stream_0
                  bge          s2, s7, 15f
                  sra          zero, s0, s10
                  slt          s0, s3, s6
                  srli         s0, s10, 19
                  bgeu         zero, t2, 8f
                  addi         t1, a7, -428
                  auipc        a3, 550638
                  blt          s11, a4, 8f
8:                bge          s9, s7, 11f
                  or           a0, a2, s6
                  srli         a3, s1, 9
11:               sll          t2, s9, s5
                  bgeu         s0, t3, 19f
                  slt          t0, a3, a6
                  bge          t3, ra, 21f
15:               slli         s7, t6, 15
                  xori         a4, s10, 1919
                  ori          s10, s11, 1902
                  sra          t5, a7, t3
19:               bltu         t2, t2, 23f
                  bgeu         ra, s1, 26f
21:               ori          t5, tp, 1504
                  srli         t4, s7, 31
23:               slli         s10, t3, 27
                  ori          a4, t1, 806
                  srli         s4, zero, 21
26:               auipc        a7, 539349
                  bltu         a2, t3, 29f
                  srl          a6, ra, s4
29:               andi         t1, s8, -1863
                  slti         a4, a5, 1841
                  lui          sp, 678960
                  ori          a4, a7, 855
                  or           s4, sp, s7
                  sra          s7, t6, a4
                  addi         a0, ra, -74
                  srai         s3, gp, 3
                  bge          s6, s10, 46f
                  slt          t2, s2, t4
                  slli         t0, a3, 22
                  slli         a4, sp, 19
                  auipc        s1, 673145
                  add          t1, s6, a4
                  sltu         s4, s6, s9
                  or           s4, a6, s1
                  lui          s7, 271895
46:               bltu         s10, ra, 62f
                  slli         t0, a6, 21
                  auipc        s10, 447556
                  srai         s3, t6, 19
                  ori          t1, t3, -1834
                  sub          tp, a6, s7
                  beq          s5, a6, 57f
                  lui          a6, 947657
                  and          zero, t1, ra
                  andi         tp, zero, -87
                  slti         t2, s6, -999
57:               or           a3, tp, s4
                  bltu         ra, s9, 59f
59:               xor          a4, t2, a1
                  and          a4, s3, t1
                  blt          ra, s8, 66f
62:               bne          s6, a1, 80f
                  lui          a3, 302076
                  srl          s3, ra, tp
                  sub          tp, s10, t2
66:               addi         a4, s4, -1974
                  or           s5, zero, a2
                  slli         s4, s9, 7
                  auipc        ra, 1017445
                  sub          s3, s7, s4
                  srai         gp, s4, 13
                  bne          s10, s10, 73f
73:               sltu         s0, a1, s10
                  andi         a6, sp, 404
                  andi         a4, s9, -718
                  sll          t2, t6, t2
                  addi         s5, sp, 1661
                  lui          gp, 645666
                  or           s1, t1, t3
80:               nop
                  and          tp, s7, a4
                  slt          t2, a6, a5
                  beq          t2, s3, 86f
                  xor          t4, s9, a6
                  sltiu        a4, sp, 1772
86:               nop
                  nop
                  nop
                  bne          ra, a3, 108f
                  sub          s6, a4, a6
                  slli         tp, s11, 16
                  andi         s10, s2, 1513
                  ori          s11, s7, -1537
                  bgeu         t3, s6, 100f
                  blt          t1, a6, 102f
                  bltu         a1, a2, 108f
                  lui          a2, 360561
                  sltu         s1, t6, s6
                  sltiu        ra, ra, -418
100:              sra          s7, a1, a4
                  beq          sp, t2, 111f
102:              and          t5, s4, s11
                  srl          s8, a6, ra
                  addi         a5, t2, 1832
                  srli         a5, t0, 4
                  addi         t4, s8, -75
                  slti         t2, zero, 57
108:              bne          t4, a3, 114f
                  addi         gp, s9, -2000
                  blt          a4, s7, 122f
111:              sra          s5, t0, s0
                  slli         a2, s5, 26
                  addi         a0, s3, -1258
114:              bne          a7, s2, 118f
                  bge          s5, a6, 120f
                  auipc        s2, 532526
                  srli         zero, t3, 20
118:              andi         t1, s7, -448
                  bgeu         s6, a7, 121f
120:              add          a6, t4, t2
121:              slt          a2, a1, t6
122:              sub          ra, s5, a6
                  beq          t2, s4, 126f
                  auipc        a5, 185016
                  slli         s11, s4, 25
                  la           s0, sub_9
                  lui          s8, 44464
                  sra          s1, t5, t5
                  addi         s0, s0, 605
                  add          a5, s2, s4
                  sltiu        s4, gp, 1874
                  bge          ra, s3, sub_7_j10 #branch to jump instr
                  slt          a1, s7, s5
                  slli         a5, t1, 14
                  or           gp, gp, t6
                  add          sp, tp, t2
sub_7_j10:        jalr         t5, s0, -604 #jump sub_7 -> sub_9
126:              srli         a1, tp, 8
                  sub          s11, s5, s7
                  andi         a3, a1, 179
                  xor          a3, a6, a7
                  bltu         tp, a0, 150f
                  srl          t2, t3, t5
                  auipc        t5, 391838
                  slli         a3, s0, 9
                  bgeu         t0, a7, 144f
                  sra          a3, ra, t3
                  auipc        s2, 897969
                  sltiu        a2, s4, 1508
                  bne          a4, s10, 139f
139:              slt          s1, t3, s7
                  andi         t4, a2, 758
                  blt          tp, t1, 153f
                  lui          sp, 998493
                  slli         a0, s8, 15
144:              srl          a4, s10, t1
                  bne          s11, a0, 151f
                  blt          s11, zero, 150f
                  ori          sp, s1, -677
                  blt          s9, s8, 150f
                  nop
150:              and          a0, s5, t0
151:              nop
                  sub          a6, s11, t5
153:              slti         s0, s2, 1525
                  lui          s7, 876029
                  blt          t1, s2, 164f
                  and          a1, a3, a2
                  blt          a0, a5, 162f
                  srl          s0, a6, s9
                  sll          a3, tp, s7
                  beq          s8, sp, 161f
161:              srli         zero, t4, 21
162:              ori          s4, a5, -823
                  bgeu         s10, s2, 164f
164:              slli         t5, t4, 23
                  ori          gp, t4, 1500
                  lw           t5, 4(s9)
                  addi         s9, s9, 24
                  srli         t0, s11, 20
                  lui          gp, 514212
                  srli         a6, a6, 8
                  addi         s1, t1, -2005
                  sll          gp, a7, t0
                  srli         s5, s5, 2
275:              addi x24, x30, 0
275:              jalr x24, x24, 0
sub_6:            srl          s5, zero, s6
                  addi         s9, s9, -16
                  lui          t1, 68432
                  sll          t1, tp, t0
                  sub          t4, t6, a5
                  lui          a7, 174717
                  lui          a6, 47376
                  xori         s7, a4, -1563
                  ori          s7, zero, 835
                  sw           t5, 4(s9)
                  srli         t4, t1, 3
                  slli         zero, t4, 1
                  add          t2, s5, s8
                  nop
                  bge          s6, a4, sub_6_j7 #branch to jump instr
                  or           a6, a2, t6
                  xori         a2, s10, -1801
sub_6_j7:         jal          t5, sub_7 #jump sub_6 -> sub_7
                  slli         tp, s1, 12
                  sltiu        s0, a6, -994
                  xori         s2, a5, 1947
                  nop
                  bgeu         s1, s5, 9f
                  andi         t2, s3, -1658
                  sra          a3, a0, s3
                  srl          s6, s7, s6
                  andi         s1, t0, 1936
9:                andi         t0, a5, 1048
                  sub          a7, s4, a1
                  beq          a4, zero, 15f
                  sll          t0, t5, a4
                  sra          a0, s0, t1
                  lui          a3, 796663
15:               xor          s2, s2, a1
                  andi         a0, t2, -249
                  auipc        tp, 438901
                  bne          a2, t6, 30f
                  blt          a2, t5, 28f
                  bltu         a5, t4, 27f
                  auipc        t4, 10464
                  addi         a5, t1, -1299
                  andi         a1, a5, -273
                  bltu         t2, s2, 29f
                  xor          a3, a5, s0
                  andi         s6, a1, -502
27:               srai         s6, t5, 24
28:               bne          a3, gp, 30f
29:               ori          a6, s3, -1321
30:               nop
                  lw           t5, 4(s9)
                  slti         a5, s6, -819
                  sltiu        a0, s2, -945
                  auipc        s11, 979655
                  sll          a0, t6, s11
                  addi         s9, s9, 16
                  addi         t0, a2, -1581
56:               addi x20, x30, 1
56:               jalr x20, x20, 0
sub_1:            slti         gp, s1, 751
                  lui          s3, 550980
                  addi         s9, s9, -32
                  sw           t5, 4(s9)
                  sltu         s11, a7, s4
                  sll          a2, s6, s5
                  or           a6, s1, s6
                  srai         a4, a7, 29
                  add          s2, sp, s5
                  srai         sp, a2, 1
                  ori          t4, a6, 1269
                  or           s5, s7, t3
                  and          sp, t5, a1
                  sll          s6, s4, ra
                  beq          s5, s4, sub_1_j2 #branch to jump instr
                  srl          s1, t4, s7
                  andi         a4, gp, 1131
sub_1_j2:         jal          t5, sub_2 #jump sub_1 -> sub_2
                  slli         s11, s1, 28
                  bge          a2, t2, 6f
                  xori         s0, a2, 131
                  lui          t4, 630491
                  sub          tp, a4, t4
                  blt          s10, s0, 17f
6:                blt          gp, a7, 17f
                  ori          a2, gp, -1635
                  srl          a5, a1, sp
                  auipc        s5, 472226
                  blt          s1, s1, 17f
                  andi         a1, s3, -416
                  blt          t5, sp, 17f
                  and          a2, a1, t1
                  bgeu         t1, s2, 17f
                  slti         t0, s11, 950
                  bne          a4, t1, 17f
17:               srai         s3, a5, 14
                  ori          s10, s9, 2041
                  lw           t5, 4(s9)
                  sltiu        a3, gp, -642
                  lui          a2, 860329
                  addi         s9, s9, 32
                  slti         sp, t0, 1027
                  nop
                  slli         s11, s4, 18
                  sltiu        s11, a4, 1420
45:               addi x21, x30, 0
45:               jalr x21, x21, 0
sub_4:            lui          t0, 465899
                  bltu         sp, tp, sub_4_stack_p
                  sltiu        a0, a2, -1761
sub_4_stack_p:    addi         s9, s9, -8
                  xor          a1, zero, a4
                  sw           t5, 4(s9)
                  lui          t2, 93979
                  la           sp, region_0+313 #start riscv_load_store_rand_instr_stream_0
                  sh           t0, -171(sp)
                  srl          t2, a1, a6
                  auipc        s10, 883791
                  sh           s1, -73(sp)
                  lb           t0, -131(sp)
                  sll          gp, t5, s11
                  lb           a6, -56(sp)
                  nop
                  lb           s10, -29(sp)
                  sltiu        a0, a2, -1708
                  lhu          t1, -53(sp)
                  lb           tp, -204(sp)
                  xori         ra, tp, -272
                  lbu          t2, 71(sp)
                  srai         t1, tp, 20
                  lh           zero, -7(sp)
                  or           a5, s9, ra
                  auipc        a2, 958597
                  lbu          s4, -143(sp)
                  lui          s1, 170773
                  lui          s4, 737997
                  srli         zero, t6, 30
                  sb           s2, 77(sp)
                  sh           s1, 251(sp)
                  sll          a3, s0, gp
                  sb           t0, 44(sp)
                  xori         t5, ra, -92
                  sll          s10, a0, t6
                  addi         a6, s4, 1614
                  lbu          tp, 172(sp)
                  lhu          t0, -223(sp)
                  auipc        t1, 51400
                  sra          tp, s11, t0
                  lh           a2, -225(sp)
                  sh           ra, 213(sp)
                  or           tp, s1, a0
                  addi         a6, a6, -92
                  slli         s2, a6, 30
                  addi         s1, s3, 1973
                  lb           t0, -74(sp)
                  nop
                  and          a5, a2, t1
                  add          a1, zero, t5
                  xori         s10, s10, 32
                  slt          t2, t4, t4
                  lbu          s10, 17(sp)
                  or           s2, ra, ra
                  lb           t1, 90(sp)
                  sltu         a2, t3, s5
                  sb           zero, -254(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1268 #start riscv_load_store_rand_instr_stream_1
                  ori          s3, gp, 1259
                  auipc        s6, 69475
                  add          s7, a3, s2
                  lbu          zero, 11(sp)
                  sh           a6, 4(sp)
                  sh           a4, -14(sp)
                  sw           t3, 8(sp)
                  lbu          s0, 3(sp)
                  sh           s4, 2(sp)
                  sltu         t4, s4, t0
                  nop
                  lhu          a3, -2(sp)
                  lw           gp, 16(sp)
                  lui          t5, 315774
                  lbu          s2, -14(sp)
                  sltu         s2, t1, a3
                  srai         a5, s1, 18
                  and          t0, t1, zero
                  slli         s10, t5, 6
                  lb           a1, -14(sp)
                  lbu          s6, -6(sp)
                  sb           s5, 7(sp)
                  sb           a3, 7(sp)
                  sltiu        t5, s7, 1680
                  sh           a2, -10(sp)
                  sb           tp, 7(sp)
                  lb           zero, -1(sp)
                  sb           a2, 1(sp)
                  sra          a2, a1, t6
                  sltiu        zero, t3, -418
                  lbu          s10, 2(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1050 #start riscv_load_store_rand_instr_stream_5
                  slti         s5, s10, -1386
                  sra          s0, s9, s6
                  sb           a5, -30(sp)
                  sltiu        s5, a0, 593
                  slti         t1, s5, 408
                  sltiu        t1, t4, 921
                  slt          t1, a0, a0
                  lbu          tp, -61(sp)
                  sltiu        a2, t4, -1895
                  lb           a2, -36(sp)
                  and          s11, s0, s9
                  and          tp, ra, s9
                  slt          a7, t2, s1
                  lbu          a7, -11(sp)
                  andi         a0, ra, 406
                  add          s5, t1, s1
                  sltu         a4, t4, t5
                  lbu          a5, -2(sp)
                  sb           t0, 35(sp)
                  sra          a7, s10, s6
                  lui          t5, 79765
                  sll          s7, s11, a4
                  auipc        s0, 507823
                  sltu         t1, t0, s7
                  sra          t0, s11, a7
                  lb           t1, 27(sp)
                  lb           s4, -62(sp)
                  sltiu        a0, a4, -1201
                  sltiu        s1, t5, 636
                  ori          s1, a7, 2035
                  slt          t2, s0, t0
                  auipc        s4, 832479
                  sb           s2, 50(sp)
                  sh           s1, -58(sp)
                  slti         a6, s0, -1994
                  xori         t2, a0, 750
                  sb           a7, 53(sp)
                  lbu          t5, 26(sp) #end riscv_load_store_rand_instr_stream_5
                  la           gp, region_0+1932 #start riscv_load_store_rand_instr_stream_4
                  sb           t1, -189(gp)
                  andi         a7, a4, -1832
                  lbu          t5, -112(gp)
                  lb           s7, -179(gp)
                  lui          s6, 626511
                  srli         s0, t3, 5
                  lw           a2, 20(gp)
                  sub          a7, s9, s8
                  sltu         s8, s8, t2
                  lbu          s5, -100(gp)
                  lhu          a1, -106(gp)
                  lb           a3, -75(gp)
                  sll          a7, a6, s3
                  srai         s8, s4, 9
                  andi         s8, t1, -1705
                  lbu          s0, -79(gp)
                  sb           t4, -225(gp)
                  sb           ra, -37(gp)
                  or           s10, s7, t0
                  slli         ra, gp, 28
                  lbu          a7, -236(gp)
                  sh           a7, 36(gp)
                  lb           s11, -181(gp)
                  lbu          s6, 38(gp)
                  xori         a7, s11, 433
                  lb           tp, -52(gp)
                  sb           t3, 27(gp)
                  add          s6, a4, s10
                  lbu          s4, -139(gp)
                  sll          s10, gp, s9
                  sb           t2, 29(gp)
                  slt          a4, sp, gp
                  sw           t4, 44(gp)
                  sb           a3, -77(gp)
                  lb           s7, -235(gp)
                  sb           t5, -81(gp)
                  slti         s7, a3, 1500
                  lw           a0, -64(gp) #end riscv_load_store_rand_instr_stream_4
                  la           s8, region_1+1880 #start riscv_load_store_rand_instr_stream_6
                  addi         s2, s10, 467
                  lb           a1, -50(s8)
                  lb           s0, -26(s8)
                  nop
                  slli         a3, a6, 31
                  or           a4, s9, s11
                  lb           a2, 71(s8)
                  srl          s10, s1, s6
                  sw           s2, -196(s8)
                  sb           s2, -47(s8)
                  xor          a6, s8, a2
                  add          sp, s8, a0
                  sb           a1, -45(s8)
                  srai         t0, s5, 18
                  lui          a7, 78648
                  xor          a0, a7, ra
                  lb           tp, -131(s8)
                  nop
                  auipc        t0, 468757
                  sltiu        s0, a7, -1844
                  lbu          a6, 49(s8)
                  lhu          ra, -248(s8)
                  sb           a0, -134(s8)
                  sb           tp, -136(s8)
                  andi         s3, t0, 1343
                  lb           sp, -205(s8)
                  sb           t0, -97(s8)
                  lb           a0, -190(s8)
                  lhu          a5, -40(s8)
                  lb           a3, 90(s8)
                  slti         s2, s1, 273
                  slti         a0, s2, 1276
                  lb           t5, 9(s8)
                  lhu          s4, -128(s8) #end riscv_load_store_rand_instr_stream_6
                  xor          gp, t3, a0
                  nop
                  add          a2, gp, a2
                  andi         t0, s7, 1916
                  andi         s11, tp, -1193
                  bltu         t3, a0, 7f
                  slti         t5, t4, -918
7:                and          a1, gp, t1
                  and          t4, a5, t5
                  slti         a3, a3, -1663
                  bgeu         s6, t1, 16f
                  add          s2, a1, s5
                  sltu         s10, a4, s9
                  sltu         t1, a4, t1
                  sltu         sp, zero, a3
                  sltu         t0, s7, t6
                  srl          a7, t4, s2
                  bltu         a6, a0, sub_4_j6 #branch to jump instr
                  xor          s0, s7, tp
                  srai         tp, ra, 0
sub_4_j6:         jal          t5, sub_6 #jump sub_4 -> sub_6
                  bltu         t3, a0, 19f
                  srl          s1, s1, a5
16:               add          s3, a6, a0
                  or           a0, a2, s11
                  beq          a0, tp, 26f
19:               blt          ra, s9, 20f
20:               add          s10, gp, gp
                  ori          a2, s1, -1758
                  add          t5, t5, s7
                  sll          s5, s10, zero
                  sra          s7, s6, s0
                  nop
26:               srl          tp, a3, a5
                  bltu         a2, s2, 33f
                  bltu         s5, s1, 38f
                  xori         s7, s5, 326
                  sra          t2, t0, a2
                  srl          zero, a0, t4
                  andi         sp, s1, 517
33:               bltu         a6, s9, 49f
                  andi         tp, zero, -273
                  bne          t3, a7, 42f
                  add          s10, s5, a6
                  xori         s6, gp, -751
38:               srli         s1, a3, 0
                  slt          zero, s10, s4
                  blt          s0, a3, 42f
                  blt          t6, s2, 61f
42:               ori          s11, gp, -1575
                  auipc        s6, 103440
                  lui          ra, 633014
                  srai         s3, a5, 31
                  auipc        t1, 633510
                  sll          s3, t0, a5
                  add          a1, a2, s7
49:               addi         s6, s9, 1370
                  bge          t5, s9, 70f
                  auipc        sp, 965169
                  beq          sp, a0, 64f
                  and          s3, t5, t0
                  slti         s6, a5, -1876
                  auipc        a1, 828713
                  lui          s0, 311781
                  and          a6, s6, s5
                  or           a3, a0, a6
                  or           t5, s7, s2
                  srai         a2, zero, 21
61:               xor          s0, t3, a5
                  xori         s8, t5, 978
                  bgeu         t1, a0, 67f
64:               xori         s1, t2, 498
                  srai         ra, t6, 29
                  bltu         s1, ra, 71f
67:               bgeu         t0, t5, 87f
                  xor          zero, a0, t5
                  bgeu         t3, tp, 70f
70:               bne          ra, s11, 73f
71:               bne          a7, t1, 91f
                  srli         s6, a3, 28
73:               or           gp, a1, a2
                  and          s5, zero, s5
                  srli         t2, s6, 5
                  slli         s7, t0, 14
                  or           ra, sp, s7
                  addi         a4, s5, -708
                  addi         a4, a7, -880
                  and          s2, a2, s8
                  srai         s3, s2, 3
                  andi         ra, s8, 1436
                  bltu         a6, t6, 102f
                  xori         s10, a7, -1884
                  sra          a2, a6, s5
                  bge          s10, s0, 104f
87:               srl          s7, t6, s3
                  la           s10, region_1+43 #start riscv_load_store_rand_instr_stream_2
                  sw           s1, 221(s10)
                  sb           s11, 86(s10)
                  or           s1, s9, s11
                  lb           s7, 141(s10)
                  srl          a0, a6, ra
                  lbu          s3, 46(s10)
                  lh           a2, 151(s10)
                  lh           sp, 111(s10)
                  lh           s2, 53(s10)
                  lb           a3, 63(s10)
                  or           a3, s4, t2
                  addi         zero, t6, -770
                  xori         s5, t2, 1300
                  sltu         s2, a1, s9
                  sb           t0, 103(s10)
                  lb           s11, 74(s10)
                  sh           a4, 3(s10)
                  sh           t5, 13(s10)
                  sltu         a7, sp, s6
                  lhu          s2, 153(s10)
                  lhu          ra, 67(s10)
                  sb           s5, 41(s10)
                  slli         t2, s9, 4
                  lb           t1, 241(s10)
                  srl          s5, t4, s2
                  auipc        a5, 839887
                  lbu          a3, 31(s10)
                  lh           s1, 133(s10)
                  sb           s5, 28(s10)
                  sh           s2, -37(s10)
                  sb           tp, 14(s10)
                  and          zero, s1, a4
                  addi         sp, s10, 269
                  lb           s6, 217(s10)
                  sb           sp, 72(s10)
                  addi         t1, s10, -1843
                  sb           s6, 161(s10)
                  sw           a0, 129(s10)
                  slt          t4, a4, a3
                  sh           t6, 111(s10)
                  sb           gp, 152(s10)
                  slli         a1, a1, 2
                  sltu         s7, s11, s0
                  lb           t5, 100(s10) #end riscv_load_store_rand_instr_stream_2
                  xori         s10, t1, -247
                  bltu         t0, s5, 101f
                  add          s5, ra, t0
91:               bge          a2, a0, 110f
                  sub          gp, s8, a2
                  addi         s4, t4, 1256
                  auipc        sp, 360188
                  beq          t1, s3, 112f
                  xor          t2, t3, t3
                  nop
                  add          a1, s0, s0
                  bgeu         s0, s2, 104f
                  or           a4, a6, s5
101:              sll          t5, gp, s3
102:              slt          s7, t1, t3
                  blt          a7, s6, 113f
104:              sltu         s3, s7, sp
                  slti         a7, t6, 399
                  sub          s4, t6, t0
                  slli         a6, s7, 21
                  sltu         a5, a0, sp
                  bge          a3, s7, 122f
110:              lui          zero, 847513
                  auipc        ra, 133682
112:              bltu         t2, t4, 121f
113:              bne          s10, s5, 130f
                  srl          s11, s11, a3
                  lui          s4, 577604
                  nop
                  or           s7, a4, s2
                  nop
                  srl          s5, t4, s5
                  or           t0, tp, s11
121:              xori         s10, t3, -1098
122:              beq          t2, a7, 127f
                  or           s8, s10, t5
                  bge          a4, s9, 126f
                  bge          a6, a7, 131f
126:              nop
127:              sra          s7, a6, s7
                  bgeu         a5, s6, 132f
                  slli         s5, s9, 2
130:              add          t1, s8, s1
131:              nop
132:              srl          s3, tp, s10
                  srai         t2, s5, 0
                  sltu         s11, a6, s5
                  add          s3, s1, a0
                  andi         s3, t2, 1763
                  andi         a0, tp, 1078
                  bgeu         zero, s7, 158f
                  slt          t1, a4, t4
                  srl          a3, a4, a0
                  xor          a7, t2, gp
                  andi         sp, t6, -459
                  xor          a1, t6, s10
                  xori         tp, a5, -1584
                  andi         a2, gp, -637
                  sra          t5, t2, t3
                  addi         s2, s3, 1676
                  lui          zero, 492905
                  srl          s4, zero, sp
                  srai         s6, a3, 16
                  srl          s2, s8, a5
                  andi         t5, s0, -2029
                  bltu         s8, a7, 165f
                  srl          zero, a0, tp
                  ori          tp, a1, -847
                  xor          a0, tp, a4
                  sltiu        a3, s5, 1307
158:              srl          a4, s7, s6
                  srai         a6, ra, 9
                  xor          s6, t5, s9
                  sra          s5, t2, a1
                  sltiu        a1, s11, -1232
                  srai         s7, s3, 21
                  ori          t4, s6, 1625
165:              or           t5, ra, s2
                  bne          gp, t6, 174f
                  srai         tp, tp, 0
                  sll          s8, zero, sp
                  andi         a4, s3, -514
                  bltu         tp, s11, 175f
                  lui          s5, 803358
                  sub          zero, t3, s9
                  lui          a3, 136979
174:              srai         a1, a7, 15
175:              auipc        s7, 874020
                  srai         a3, a2, 4
                  xor          s11, t6, a3
                  and          a0, t0, s10
                  sll          s3, s2, a5
                  slli         s0, t0, 11
                  andi         a6, s0, 1592
                  srai         s2, t3, 7
                  beq          gp, a4, 202f
                  srli         t1, s3, 15
                  andi         sp, s9, 518
                  srl          s4, s1, gp
                  ori          t0, s9, 525
                  add          s0, t5, tp
                  xor          ra, s11, s5
                  add          tp, s9, a7
                  auipc        a1, 181953
                  sltiu        a0, s6, 1937
                  srai         t2, s10, 21
                  auipc        a4, 495456
                  lui          ra, 414980
                  slti         s5, t6, -1475
                  xor          s10, a1, s10
                  auipc        s11, 303258
                  ori          zero, s0, -534
                  ori          gp, s6, 1577
                  blt          a5, t4, 202f
202:              sra          a1, t1, a5
                  ori          ra, a6, 48
                  ori          t0, s6, 152
                  auipc        t5, 643124
                  andi         s11, s0, 62
                  andi         ra, s8, 1842
                  beq          t0, s4, 228f
                  xori         a2, s7, 853
                  srli         s4, s3, 31
                  slti         t2, ra, -1829
                  slli         s8, sp, 6
                  and          t0, t4, a3
                  add          a7, t6, t4
                  srli         tp, gp, 24
                  slti         a7, sp, 1827
                  addi         gp, s6, -913
                  bgeu         s0, s1, 237f
                  srli         tp, a7, 26
                  srli         a6, s1, 31
                  srli         tp, s11, 31
                  sub          t2, t5, a3
                  srl          s7, s4, s6
                  xor          t0, tp, zero
                  beq          t2, a6, 230f
                  srai         a4, a0, 7
                  ori          ra, s4, 1422
228:              slt          s7, t2, ra
                  slli         a4, s9, 3
230:              add          s6, a4, s10
                  or           s10, a3, s1
                  sltu         s3, s1, s1
                  srl          a2, a0, s10
                  bge          ra, s1, 246f
                  beq          a6, s3, 245f
                  ori          s8, s2, 901
237:              xori         a4, ra, -470
                  beq          a5, t1, 239f
239:              add          tp, zero, t6
                  ori          s7, t5, -1803
                  sltu         a5, s8, sp
                  nop
                  bgeu         s3, s5, 248f
                  andi         sp, a5, -1917
245:              xori         s3, s9, -1222
246:              xor          t4, s11, s8
                  blt          s7, s6, 260f
248:              bltu         a1, zero, 257f
                  bgeu         t3, s4, 267f
                  slli         ra, tp, 1
                  sra          t5, tp, s5
                  sltiu        t2, gp, -1053
                  addi         s6, s11, 1339
                  srai         a4, a7, 4
                  slli         s2, t6, 2
                  slt          a7, s2, a1
257:              slt          gp, a0, a3
                  addi         t4, a6, 1486
                  srai         gp, s9, 17
260:              blt          sp, a2, 280f
                  ori          t5, a7, -603
                  srai         s1, s2, 31
                  sra          a5, a5, s9
                  sub          s0, a2, s4
                  addi         t4, a0, -1674
                  sltiu        s3, s2, -1908
267:              auipc        a2, 897562
                  nop
                  or           t2, tp, s7
                  bltu         ra, s5, 280f
                  sltiu        s6, s2, -92
                  slli         a0, s4, 7
                  sub          s4, s3, a3
                  lui          a2, 272329
                  sra          s3, s5, t0
                  or           s6, t6, s10
                  and          a5, tp, a2
                  xori         sp, s1, 1238
                  srli         a7, tp, 9
280:              bltu         a5, t2, 296f
                  blt          a6, t1, 286f
                  addi         t0, a6, 1499
                  addi         a4, s8, 1457
                  andi         a0, t3, 1625
                  slli         t5, s11, 13
286:              sll          a2, s9, t2
                  and          a3, s11, tp
                  xor          a4, s5, t5
                  and          a0, a0, t1
                  bgeu         s7, t1, 297f
                  sltiu        s1, s7, 1710
                  beq          s11, t3, 298f
                  xor          t2, s7, t2
                  or           a5, a1, a6
                  srai         s4, s4, 25
296:              ori          a7, s5, -341
297:              addi         a3, s4, -1042
298:              sll          s2, s2, s3
                  blt          t2, sp, 319f
                  sub          a1, t1, s2
                  xori         s4, s7, -1825
                  or           a4, a6, a3
                  xor          s4, t5, a6
                  slti         t0, gp, 587
                  beq          t5, a4, 308f
                  andi         tp, t3, -324
                  sub          a7, s6, tp
308:              srai         a1, s10, 11
                  and          a1, s9, a0
                  or           s2, s1, s1
                  srl          a4, s10, s8
                  slli         a0, a6, 17
                  bge          t2, a2, 330f
                  beq          t0, ra, 331f
                  bgeu         s1, s8, 317f
                  bge          s10, t2, 335f
317:              sltiu        s5, s3, -179
                  bgeu         s8, a6, 330f
319:              srai         s0, a0, 31
                  srli         t2, a6, 31
                  add          s2, s1, s8
                  or           a6, s2, s7
                  ori          s5, s2, -694
                  beq          a1, ra, 334f
                  srai         a1, s2, 1
                  sub          zero, t4, t1
                  beq          t2, s8, 343f
                  nop
                  and          s10, s6, s5
330:              sltu         t1, sp, s2
331:              slti         t1, s4, 1812
                  srai         a7, s8, 11
                  bgeu         a1, t4, 339f
334:              add          s11, t4, s11
335:              srai         s7, s1, 3
                  xori         a3, s11, 338
                  slli         gp, s2, 16
                  sll          ra, a5, a0
339:              sll          t4, s6, a1
                  xor          a6, a6, s10
                  and          s6, s0, s9
                  slt          a0, s10, t2
343:              blt          s7, a1, 363f
                  bne          a2, s9, 363f
                  srl          s2, a5, s7
                  xori         zero, a3, 1861
                  bge          s5, a6, 364f
                  bne          tp, sp, 353f
                  sltu         s2, s4, a2
                  addi         a5, s9, 211
                  slt          s8, a3, a6
                  lui          s10, 499397
353:              slli         a4, s9, 21
                  sub          t0, s1, t4
                  slti         sp, zero, -151
                  bgeu         s5, a6, 376f
                  ori          s3, s11, 1776
                  sll          zero, a4, t3
                  andi         s2, s6, -218
                  beq          s11, t2, 362f
                  nop
362:              slt          a7, s11, t0
363:              srai         ra, a3, 29
364:              srli         s2, tp, 20
                  sltu         a0, s4, s11
                  add          t0, s4, s4
                  bge          zero, s5, 387f
                  slti         s5, a6, -1358
                  sltu         s0, sp, a0
                  sltu         s2, s5, s1
                  bgeu         t2, a3, 374f
                  sll          a3, sp, gp
                  slli         s2, a6, 8
374:              or           t1, s7, t3
                  and          a5, t5, s7
376:              srl          s7, a7, t6
                  lui          s5, 933319
                  sltu         t2, a1, s9
                  beq          a7, a2, 380f
380:              or           a1, t0, s3
                  auipc        t0, 367409
                  bne          s11, t4, 390f
                  slli         t0, s8, 14
                  andi         t4, t1, 2018
                  sll          s2, tp, tp
                  lui          s3, 766369
387:              srl          a1, a6, s8
                  srl          zero, t2, t6
                  sll          a7, s7, a6
390:              blt          a5, s4, 395f
                  bge          s10, s10, 398f
                  slt          t2, s2, tp
                  srl          gp, t1, s10
                  add          s4, s2, s10
395:              addi         s8, t0, 1760
                  and          a5, a3, a4
                  bgeu         a5, t6, 402f
398:              sltu         s3, zero, t1
                  srl          s5, s4, gp
                  bltu         a0, a0, 410f
                  sub          a1, t5, a2
402:              bltu         s11, t0, 411f
                  and          a1, a7, sp
                  nop
                  nop
                  sltu         t5, s9, s0
                  addi         ra, t6, 792
                  beq          s4, s4, sub_4_j5 #branch to jump instr
                  srl          s3, a2, s11
                  and          t2, s8, s0
sub_4_j5:         jal          t5, sub_5 #jump sub_4 -> sub_5
                  sra          s7, a5, t2
                  slli         a3, sp, 28
                  sltiu        s6, s7, -23
                  bge          a2, a0, 412f
                  sltu         t5, a3, a5
410:              xor          s2, sp, t6
411:              blt          s6, s9, 423f
412:              beq          t5, s8, 417f
                  sll          a4, s4, a5
                  srl          a1, s3, gp
                  andi         s10, zero, 1948
                  sra          a0, s8, s9
417:              sra          t5, t2, zero
                  sub          t1, a3, t5
                  sll          zero, a2, a6
                  bgeu         s8, s3, 421f
421:              ori          s4, s8, -1142
                  or           s7, t6, t5
423:              ori          gp, gp, 1453
                  sll          a1, a1, s8
                  srl          s5, a0, s4
                  sub          s11, s2, sp
                  andi         gp, a0, 30
                  add          sp, gp, t5
                  add          ra, gp, t1
                  and          s7, gp, s10
                  sra          a0, s4, s1
                  sll          s4, s10, a2
                  bge          s1, s11, 446f
                  sll          t1, t6, s10
                  bne          a2, s3, 455f
                  sltiu        s4, t5, 538
                  or           a0, a3, s6
                  xori         a2, t1, 622
                  add          a7, s2, a0
                  blt          s2, zero, 446f
                  srl          s3, tp, s4
                  sub          s2, a0, s0
                  ori          a4, ra, 916
                  bge          t1, a5, 446f
                  sltu         a5, t4, t2
446:              srli         t0, sp, 9
                  srli         a2, s7, 17
                  xor          s7, t4, t2
                  blt          t0, a5, 467f
                  srai         s0, s10, 2
                  add          zero, t3, a1
                  srl          t5, t5, sp
                  bgeu         a6, t1, 470f
                  bge          a4, ra, 474f
455:              srai         s11, s7, 22
                  sll          a3, a1, s4
                  bge          s9, t3, 467f
                  sll          s7, a1, t6
                  sll          gp, s11, zero
                  blt          s3, t0, 479f
                  add          t5, gp, a4
                  bne          s0, s1, 468f
                  srli         t5, s3, 22
                  andi         s1, a1, -284
                  xori         t2, a6, -1221
                  srli         tp, a2, 9
467:              xori         s11, t5, 508
468:              addi         s11, s7, -1102
                  bge          s3, s8, 485f
470:              xori         s8, t5, 465
                  lui          s8, 455232
                  beq          t3, s11, 482f
                  srli         a4, t4, 5
474:              sra          s7, t0, s0
                  srli         sp, s10, 27
                  auipc        t0, 959240
                  slli         s0, a6, 14
                  beq          s6, sp, 483f
479:              xor          s0, s4, s8
                  auipc        a4, 804491
                  ori          s5, s10, 1563
482:              nop
483:              nop
                  bgeu         ra, a4, 489f
485:              ori          a4, t4, -1218
                  bgeu         s8, a4, 503f
                  sltiu        s10, t3, 1255
                  sltu         s8, a6, s10
489:              xori         t4, a6, 1808
                  auipc        sp, 988223
                  blt          s0, s11, 511f
                  andi         s7, a0, 1188
                  addi         a4, s1, 649
                  slt          s4, s10, s8
                  addi         s8, a3, 224
                  auipc        t4, 803916
                  bne          a5, t5, 509f
                  srl          s8, s7, tp
                  sub          s6, t3, s4
                  bne          zero, s8, 512f
                  srai         s7, s2, 9
                  bgeu         s8, t3, 504f
503:              andi         t5, s0, 240
504:              sub          s6, ra, a0
                  slti         t1, a1, -153
                  lui          a4, 981011
                  and          a5, a4, s11
                  lui          a5, 1033285
509:              sltu         a1, ra, a6
                  or           t4, zero, t1
511:              xori         s11, s9, -442
512:              blt          s4, sp, 513f
513:              srai         s0, a6, 23
                  or           ra, s5, s3
                  xori         s2, t5, -556
                  bgeu         t0, a1, 529f
                  beq          s2, s3, 526f
                  bge          s7, t3, 523f
                  sltu         s10, s3, a3
                  bgeu         s3, a1, 524f
                  bltu         a1, a7, 541f
                  ori          s2, a3, 1335
523:              srli         s4, t0, 8
524:              andi         s8, zero, -741
                  bge          t0, s0, 545f
526:              sub          zero, s5, s9
                  lui          a1, 449795
                  sltiu        a1, s6, 1389
529:              slt          a0, t2, a2
                  srli         s2, a5, 16
                  bltu         zero, t3, 536f
                  blt          s7, s5, 540f
                  beq          s3, s9, 535f
                  sltu         t2, s10, t4
535:              slli         a2, tp, 12
536:              bltu         t4, a2, 537f
537:              or           s0, t4, s2
                  bge          t6, s8, 545f
                  add          s5, sp, s3
540:              bgeu         s0, s7, 557f
541:              bltu         s0, s10, 544f
                  lui          a2, 228314
                  slti         s7, sp, -393
544:              srl          s4, tp, sp
545:              or           a2, s9, a0
                  slt          a6, a3, s4
                  slli         a2, s11, 26
                  bne          s0, a7, 566f
                  bltu         a7, a7, 555f
                  srai         s7, a0, 3
                  sltu         t1, s10, a2
                  slt          s8, t4, a6
                  sra          t1, s1, t6
                  and          sp, s5, gp
555:              bge          s9, s8, 574f
                  bltu         t3, s4, 573f
557:              bgeu         s9, t3, 559f
                  or           s0, t1, t4
559:              bne          a2, t0, 576f
                  nop
                  blt          a3, s5, 569f
                  bltu         s9, zero, 571f
                  srl          t0, a4, s6
                  addi         s3, s0, 1325
                  bgeu         s4, a0, 569f
566:              bgeu         s6, tp, 571f
                  sub          a4, a3, gp
                  ori          a2, s0, 35
569:              bge          t4, s3, 575f
                  add          a2, tp, a3
571:              bltu         tp, t0, 587f
                  nop
573:              slli         s5, tp, 27
574:              srli         s1, s6, 1
575:              beq          t3, ra, 581f
576:              beq          a1, s10, 596f
                  beq          s1, s7, 587f
                  slti         tp, a5, 1745
                  nop
                  nop
581:              addi         t0, t6, -1
                  beq          sp, t1, 595f
                  bltu         t3, zero, 588f
                  xori         s11, a0, -386
                  bge          t5, s6, 605f
                  srli         s11, a3, 5
587:              srli         s7, t2, 15
588:              slt          s6, t6, s1
                  srai         a7, t0, 31
                  bge          t0, t5, 609f
                  slti         s11, t3, 1382
                  sub          s6, a7, a2
                  sll          s1, s2, t4
                  slli         zero, gp, 23
595:              slli         a3, a3, 31
596:              and          s2, a6, s4
                  srai         a7, s4, 0
                  nop
                  bgeu         zero, a4, 604f
                  sltiu        t2, a0, -698
                  auipc        tp, 535770
                  bgeu         s8, zero, 621f
                  addi         t5, t4, 1081
604:              lui          a2, 511785
605:              slli         tp, sp, 19
                  sra          zero, t5, s9
                  sra          zero, ra, s10
                  addi         t2, a1, -1378
609:              add          a4, gp, a6
                  or           a0, gp, s5
                  slt          s8, gp, s3
                  bge          t3, a5, 624f
                  sub          a6, t1, t3
                  or           a4, t6, tp
                  bltu         s0, t6, 622f
                  xori         s0, t4, -780
                  bgeu         t2, s1, 618f
618:              srai         ra, a5, 5
                  xori         a2, s1, 367
                  slli         t5, a0, 2
621:              srl          t4, t1, sp
622:              blt          t5, s5, 625f
                  slti         ra, s8, -1442
624:              and          t0, s8, tp
625:              srli         s0, s9, 29
                  and          a1, a0, zero
                  nop
                  slti         t0, s2, 374
                  add          s1, s6, s7
                  and          s7, t4, a0
                  add          s11, t0, t0
                  slti         s8, s10, -1705
                  auipc        s2, 201945
                  addi         zero, s11, -1946
                  lui          s11, 881888
                  sll          s1, a2, a4
                  or           a0, a3, s4
                  bgeu         t4, s3, 648f
                  bge          s10, sp, 640f
640:              xor          ra, sp, s4
                  xori         s7, t1, -1894
                  bge          gp, s11, 662f
                  sra          s4, s5, s7
                  bgeu         s1, t1, 649f
                  nop
                  srli         t2, s2, 12
                  bltu         s6, ra, 667f
648:              sltiu        s5, s8, -871
649:              auipc        a7, 41901
                  srai         a6, s4, 16
                  add          t0, s10, s10
                  blt          tp, zero, 664f
                  bne          s0, zero, 671f
                  andi         s2, s6, -1974
                  xori         s0, s9, 381
                  beq          s9, a3, 658f
                  or           a5, a0, sp
658:              bge          s0, ra, 666f
                  sltiu        zero, a4, -390
                  srai         s0, s7, 31
                  beq          s8, zero, 666f
662:              sra          s10, a7, sp
                  bgeu         a5, a4, 666f
664:              bgeu         t5, t6, 669f
                  bne          sp, a6, 677f
666:              sltu         s6, s0, ra
667:              bne          t2, sp, 672f
                  sltiu        a1, t4, 112
669:              srai         t5, tp, 22
                  auipc        a2, 552476
671:              sltiu        a0, s5, 1017
672:              and          gp, ra, a5
                  andi         s2, t5, 1554
                  bltu         t3, s3, 693f
                  srli         s11, a6, 15
                  bgeu         a1, gp, 681f
677:              nop
                  ori          t0, a2, -691
                  xori         a5, t0, -89
                  srai         t5, a7, 11
681:              nop
                  bne          s3, t4, 691f
                  addi         t2, t6, -229
                  nop
                  slli         t0, s3, 12
                  ori          t5, a0, -20
                  sltu         a0, s4, a1
                  slli         a0, a6, 15
                  or           a0, a6, s7
                  andi         gp, s9, -1250
691:              srli         s10, s0, 15
                  srai         a7, t5, 26
693:              addi         gp, s4, 523
                  blt          sp, t1, 710f
                  slt          s10, s10, t0
                  sltiu        t2, s7, 577
                  nop
                  srl          a7, zero, ra
                  lui          t5, 919510
                  lui          gp, 356701
                  sub          s1, tp, ra
                  blt          t3, s0, 722f
                  add          s8, a6, s9
                  auipc        a5, 63481
                  beq          t6, t6, 724f
                  ori          s5, a0, -1532
                  slt          a5, t4, s6
                  sll          t5, t4, a5
                  bgeu         t1, sp, 729f
710:              sltu         t1, t1, t0
                  srl          a0, t1, t0
                  andi         s3, t4, 343
                  xori         t5, a2, 379
                  sltiu        gp, s0, -1875
                  beq          a5, s5, 733f
                  bne          s0, a4, 722f
                  slti         a0, s8, 723
                  bltu         t2, t6, 719f
719:              addi         s7, s3, -743
                  bge          a0, a1, 730f
                  ori          a0, sp, -1717
722:              sltu         s0, s1, s8
                  beq          t3, s0, 724f
724:              sltiu        gp, t5, 1516
                  srli         t2, t3, 28
                  bltu         t2, s2, 736f
                  sltiu        a6, gp, -1561
                  sll          s8, tp, s4
729:              xori         zero, s3, -764
730:              bge          a6, t1, 742f
                  slli         zero, s8, 31
                  auipc        s5, 484528
733:              bge          gp, t0, 750f
                  slt          t0, ra, t6
                  bne          t2, s8, 752f
736:              slti         gp, s7, -670
                  nop
                  slli         ra, a0, 23
                  auipc        t5, 484640
                  slli         s10, a5, 14
                  ori          t0, s0, -1370
742:              sll          ra, t0, s4
                  xori         a0, a4, 1751
                  srl          t4, s5, s10
                  blt          s11, s2, 765f
                  add          a1, t1, a2
                  and          s1, s0, a6
                  ori          zero, s10, 1854
                  bltu         a5, t0, 751f
750:              sll          s7, a7, a7
751:              xor          t2, a5, s6
752:              xori         s4, s10, -1020
                  ori          a3, zero, -1474
                  addi         a0, s5, -870
                  addi         sp, s0, -228
                  ori          s1, zero, 1292
                  blt          a5, t0, 763f
                  slli         a1, tp, 21
                  sub          t4, t1, t6
                  bne          a5, a0, 767f
                  bgeu         s1, a1, 765f
                  add          a6, gp, s11
763:              slti         t5, a7, -1862
                  sra          a4, a7, s3
765:              sll          a7, t2, zero
                  add          s5, sp, a7
767:              bltu         s4, s9, 780f
                  or           s2, s10, a0
                  beq          a2, s1, 771f
                  or           s5, s0, t0
771:              bge          t3, s5, 791f
                  auipc        s3, 592787
                  srli         gp, s7, 1
                  bltu         t5, s2, 777f
                  bne          s0, a6, 783f
                  add          t0, t3, a5
777:              blt          a6, sp, 796f
                  bgeu         t2, a6, 780f
                  sub          a0, s4, s7
780:              xor          a7, s2, t3
                  bge          s3, s0, 794f
                  lui          a4, 434169
783:              slli         s1, t6, 31
                  xori         t2, t4, -409
                  or           t0, a6, s9
                  slt          t4, s0, t4
                  sltiu        t2, sp, -1523
                  slti         a1, s3, 687
                  nop
                  sltiu        t0, ra, -849
                  la           t0, region_1+1426 #start riscv_load_store_rand_instr_stream_3
                  and          s7, s10, s11
                  sub          s8, gp, s4
                  lui          gp, 803266
                  lh           s10, 504(t0)
                  lb           a5, -111(t0)
                  sltu         a3, s3, s4
                  srai         a7, s8, 2
                  add          a5, a3, a7
                  lbu          s7, -547(t0)
                  sll          t5, s4, s8
                  sw           zero, 170(t0)
                  xor          a2, t0, s4
                  lbu          sp, -774(t0)
                  lb           t1, -409(t0)
                  srai         a6, t3, 10
                  srai         a0, s7, 0
                  nop
                  sb           t2, -933(t0)
                  or           a3, sp, s10
                  lhu          s7, 438(t0)
                  xori         t5, a2, -1501
                  srai         s5, t3, 23
                  sh           a0, 324(t0)
                  ori          tp, s9, -1813
                  lui          a5, 127078
                  lh           s8, -590(t0)
                  slti         s3, s1, 1246
                  lbu          s4, -1029(t0)
                  addi         t1, s9, -1075
                  sh           t1, -1318(t0)
                  andi         t5, t1, -1186
                  sb           t5, -1389(t0)
                  lbu          s5, -1335(t0)
                  lbu          s10, -1226(t0)
                  sltiu        a7, s2, -255
                  sra          s10, tp, t0
                  sb           t0, -469(t0)
                  andi         s4, a7, 1448
                  lbu          s3, -603(t0)
                  ori          s2, sp, -656
                  sub          a1, s1, s5
                  sltu         s7, s4, s5
                  lb           s11, -210(t0)
                  lb           a4, -7(t0)
                  sh           s9, -370(t0)
                  lbu          s1, -357(t0)
                  lb           a6, -11(t0)
                  sb           a4, 323(t0)
                  xori         t1, t2, 1680
                  lui          s7, 784902
                  lbu          s6, -192(t0)
                  addi         a4, a6, 219
                  lbu          s2, -501(t0) #end riscv_load_store_rand_instr_stream_3
791:              sll          t2, ra, t1
                  sltiu        a1, s1, -1049
                  blt          s2, a7, 799f
794:              ori          ra, a7, -1920
                  auipc        s3, 817439
796:              add          s7, sp, s10
                  auipc        tp, 189700
                  xori         ra, t0, -75
799:              bge          s5, gp, 819f
                  bne          t2, a7, 816f
                  bgeu         s4, s5, 821f
                  sltiu        a3, t6, -178
                  sltiu        a5, t2, -699
                  beq          t4, gp, 821f
                  sltu         a7, gp, a7
                  auipc        tp, 711719
                  srli         s8, s2, 22
                  blt          a6, s10, 828f
                  ori          s0, a3, -1505
                  srai         a7, t5, 19
                  sra          a3, s10, ra
                  lui          t2, 573672
                  slti         t0, zero, -300
                  srl          a0, s6, s2
                  auipc        s0, 83559
816:              auipc        s8, 879512
                  srli         s0, a0, 21
                  slt          a0, s1, zero
819:              bgeu         s0, gp, 824f
                  sra          t2, zero, s6
821:              slti         t0, s9, -1066
                  nop
                  bne          sp, ra, 828f
824:              ori          s2, s5, -1703
                  srl          a5, a0, tp
                  lui          gp, 820523
                  bge          a6, a4, 831f
828:              bltu         s6, t5, 837f
                  lui          s5, 600100
                  and          s2, s11, a0
831:              sub          a2, s0, ra
                  bgeu         t4, s4, 839f
                  sll          s11, a1, tp
                  sltu         t5, a1, a7
                  sra          t1, a5, a7
                  beq          gp, gp, 841f
837:              or           a5, a2, t4
                  andi         s8, t0, -539
839:              bge          s3, s7, 859f
                  sltu         gp, s6, t6
841:              beq          a5, s1, 853f
                  sltiu        s6, s11, 1277
                  sra          t0, s3, a3
                  bge          s11, a5, 849f
                  slli         s2, tp, 20
                  or           a4, s4, s3
                  srli         t2, tp, 4
                  bne          a7, t0, 849f
849:              bge          t3, t0, 867f
                  beq          a3, s2, 860f
                  add          s0, a3, s4
                  beq          ra, s6, 853f
853:              sltu         ra, a4, s7
                  blt          a6, s8, 873f
                  andi         t4, t6, 1355
                  auipc        t1, 673550
                  blt          s10, s8, 874f
                  bge          zero, t2, 864f
859:              auipc        a3, 563868
860:              and          s7, a7, ra
                  srai         a5, s7, 13
                  blt          a7, a6, 872f
                  slli         s4, zero, 24
864:              or           s1, sp, t0
                  sra          sp, t3, a1
                  addi         t4, a5, 1888
867:              sra          t1, s7, a4
                  and          gp, a2, t3
                  sra          t0, s0, s5
                  sltiu        a4, gp, 1891
                  nop
872:              blt          a5, s3, 884f
873:              slli         ra, t2, 17
874:              bne          a2, a2, 876f
                  srai         s11, a6, 25
876:              slli         gp, s11, 24
                  xori         a5, t3, 2024
                  srl          t5, gp, a2
                  srli         t5, t5, 28
                  xori         s5, s10, -1230
                  and          t5, s8, s10
                  slti         t5, s1, -1083
                  sll          t5, s7, a6
884:              xori         a1, a6, 965
                  and          a7, sp, s7
                  sub          s1, sp, ra
                  bne          sp, t3, 893f
                  sltiu        s0, t1, 1360
                  or           a2, s0, a3
                  xori         t4, t1, -555
                  beq          tp, s5, 898f
                  xor          s0, s6, t4
893:              andi         ra, ra, -214
                  addi         ra, t0, -4
                  bltu         s9, a2, 913f
                  auipc        ra, 608980
                  xor          t5, a2, a0
898:              sltu         s0, a0, s11
                  bge          t6, t6, 911f
                  sltiu        s10, s10, -1241
                  and          a5, s2, s1
                  slli         s3, sp, 14
                  and          s4, t1, ra
                  sub          s1, s9, t0
                  sll          a4, s8, s0
                  add          s4, s0, s3
                  beq          a2, ra, 908f
908:              auipc        s1, 236266
                  ori          s3, ra, 966
                  lui          a6, 1037950
911:              sltu         s3, tp, a3
                  and          a5, a1, s9
913:              or           s2, s10, sp
                  srli         zero, a6, 12
                  beq          t3, s3, 934f
                  xor          a6, a4, a5
                  nop
                  beq          s9, a0, 930f
                  add          a7, t3, t1
                  sub          s0, s0, a1
                  lui          s0, 394303
                  nop
                  andi         gp, a6, -379
                  xori         s8, a6, -1161
                  beq          t4, s1, 929f
                  sltiu        t0, tp, 527
                  sltiu        s5, s9, 1300
                  slti         s7, a5, -2044
929:              bne          s10, a2, 949f
930:              srai         s11, ra, 25
                  lui          s7, 150356
                  add          s4, s2, t1
                  andi         s2, sp, 1165
934:              lui          t1, 49880
                  srli         t5, a3, 12
                  sra          a4, t2, sp
                  slti         gp, t2, 1315
                  sltiu        a7, s11, 1338
                  or           s8, s5, s9
                  xor          a3, tp, s4
                  bge          sp, tp, 958f
                  slti         t2, s6, 1054
                  blt          t5, s9, 948f
                  bgeu         t1, s1, 954f
                  srai         s2, ra, 31
                  sltu         s7, s5, s5
                  addi         s3, a1, -1245
948:              or           a4, s1, ra
949:              bge          gp, s8, 960f
                  sltu         a3, s5, a5
                  addi         a2, t5, -764
                  lui          sp, 313252
                  ori          a6, gp, 624
954:              bge          tp, t0, 956f
                  srl          t5, a0, s8
956:              srl          a6, s6, a6
                  blt          t4, s4, 960f
958:              srli         a3, tp, 19
                  srli         s8, a5, 7
960:              slt          a7, s8, t4
                  lw           t5, 4(s9)
                  srai         t0, a3, 3
                  lui          a7, 729754
                  sra          s4, s11, s0
                  xor          t1, a0, s8
                  addi         s9, s9, 8
                  xori         sp, s3, 1701
                  auipc        s11, 929394
                  addi         s5, a0, -175
1286:             addi x13, x30, 0
1286:             jalr x13, x13, 0
sub_5:            bge          s2, gp, sub_5_stack_p
                  and          ra, t4, s10
                  srl          t0, s9, a5
                  andi         gp, sp, 1102
                  or           s8, s1, t1
sub_5_stack_p:    addi         s9, s9, -56
                  sltu         sp, t3, a4
                  sw           t5, 4(s9)
                  ori          s10, s7, -1831
                  and          sp, s3, s2
                  sll          tp, a2, s5
                  sltu         a7, a3, s4
                  sll          s10, zero, t2
                  srai         s1, s3, 12
                  ori          zero, s10, 1583
                  or           s4, gp, s8
                  and          a7, s2, a3
                  addi         t4, t0, 483
                  srli         a0, s6, 16
                  slt          tp, t4, a0
                  lui          t1, 487897
                  and          sp, t2, zero
                  nop
                  auipc        gp, 1045192
                  sltu         s7, ra, s6
                  slt          a4, s3, a0
                  bltu         a4, a1, 21f
                  addi         s6, a3, 644
                  or           t0, s5, zero
                  beq          a1, s9, 19f
                  addi         s11, tp, -1829
                  srai         s2, a3, 30
19:               sltu         a1, s3, ra
                  add          s4, tp, s10
21:               bltu         s4, a3, 27f
                  addi         s1, t5, -1614
                  addi         t0, t4, -1226
                  xori         sp, s7, 1428
                  sltiu        s5, s11, 1434
                  bge          s10, gp, 28f
27:               xor          a0, s8, a0
28:               add          zero, gp, s6
                  slt          s4, a2, sp
                  blt          t3, t2, 37f
                  sltiu        zero, ra, -200
                  srai         s7, tp, 16
                  slli         s6, s2, 18
                  nop
                  ori          s8, gp, -824
                  bge          t1, s0, 37f
37:               auipc        t1, 675297
                  and          s8, s8, t2
                  sra          a2, t5, zero
                  ori          s11, s2, 445
                  bgeu         gp, t6, 46f
                  srl          a5, s0, ra
                  add          s1, s8, s7
                  srli         a5, s2, 29
                  andi         zero, s8, -181
46:               andi         sp, s5, 632
                  sll          zero, sp, s9
                  srli         s6, s4, 1
                  srai         s10, t0, 2
                  xori         s5, t2, -1063
                  bge          tp, s11, 61f
                  slli         t5, a1, 9
                  addi         s1, s7, 1155
                  andi         s7, t2, 29
                  slt          s3, gp, s0
                  srai         s0, a6, 16
                  srli         s3, s6, 30
                  sra          a3, sp, ra
                  blt          gp, t4, 67f
                  sltiu        s7, s1, 1142
61:               nop
                  and          s6, s9, t0
                  srl          ra, s8, a4
                  srli         a3, tp, 11
                  sll          a2, s1, a6
                  beq          s8, a6, 67f
67:               addi         s5, t1, 441
                  slti         t2, a0, -1845
                  sub          a7, a2, zero
                  and          sp, gp, a0
                  sra          a1, tp, s3
                  add          a7, a2, ra
                  lw           t5, 4(s9)
                  addi         t0, s7, -1663
                  addi         s9, s9, 56
                  andi         a2, t4, -1156
                  srli         a4, s5, 6
91:               addi x13, x30, 0
91:               jalr x13, x13, 0
sub_8:            addi         s9, s9, -40
                  auipc        s3, 43036
                  slti         s11, s10, 169
                  sw           t5, 4(s9)
                  lui          zero, 680837
                  ori          gp, a5, 1018
                  sub          t2, a5, sp
                  add          s10, sp, s7
                  nop
                  sltu         a4, tp, s11
                  addi         a3, a7, 1681
                  xor          s11, t5, t5
                  auipc        a0, 73896
                  nop
                  or           s10, s11, ra
                  srai         a4, a3, 30
                  srli         a6, s7, 15
                  blt          t6, a5, 6f
6:                sll          t0, s4, s6
                  srli         a5, s5, 6
                  sub          s11, t2, a5
                  xori         s8, s6, 448
                  sll          a1, sp, s11
                  sub          s3, s8, s5
                  slli         s5, sp, 16
                  lw           t5, 4(s9)
                  and          a6, a4, s0
                  sltiu        a6, s2, -1178
                  addi         s9, s9, 40
                  ori          a6, ra, 2027
                  add          a5, s6, a2
31:               addi x24, x30, 1
31:               jalr x24, x24, 0
sub_9:            srli         a6, t3, 7
                  addi         s9, s9, -20
                  srli         a0, t6, 4
                  sw           t5, 4(s9)
                  and          a7, s0, t0
                  la           s6, region_1+1930 #start riscv_load_store_rand_instr_stream_5
                  andi         a5, s4, 1116
                  lhu          a7, 40(s6)
                  sb           zero, -19(s6)
                  lbu          t1, 35(s6)
                  sra          gp, a0, s5
                  sb           t3, -13(s6)
                  lhu          s10, -230(s6)
                  sb           a0, -207(s6)
                  lbu          s0, -59(s6)
                  ori          ra, s8, 654
                  addi         s11, a2, 1278
                  sw           s7, -162(s6)
                  xor          a5, a6, a4
                  lb           s0, -231(s6)
                  lb           t4, -22(s6)
                  srl          zero, s9, zero
                  sb           t4, 19(s6)
                  lb           a2, 9(s6)
                  sh           a3, 24(s6)
                  andi         a1, s5, 117
                  slli         t0, s0, 17
                  sb           s3, -171(s6)
                  sb           sp, -60(s6)
                  lh           s0, 60(s6)
                  slli         t4, a7, 1
                  sb           a7, -237(s6)
                  sh           t1, -56(s6)
                  slti         tp, gp, 1853
                  lb           a6, -234(s6) #end riscv_load_store_rand_instr_stream_5
                  la           s7, region_1+11 #start riscv_load_store_rand_instr_stream_10
                  sra          sp, tp, s2
                  or           s3, a7, s3
                  sw           a2, 21(s7)
                  sb           a4, 15(s7)
                  lbu          t0, 59(s7)
                  sw           a5, -7(s7)
                  srl          t4, s2, a3
                  and          sp, a5, s3
                  lw           t4, 109(s7)
                  slti         sp, s11, -1422
                  addi         t2, a4, -1997
                  slt          sp, s7, t1
                  lb           s3, 154(s7)
                  sh           t5, 201(s7)
                  lh           s3, 37(s7)
                  lhu          a5, 143(s7)
                  xor          s11, t1, t5
                  lui          t1, 608068
                  sh           t0, 135(s7)
                  lw           a2, 193(s7)
                  srai         a2, a1, 27
                  sra          a2, a5, tp
                  sub          sp, a4, s4
                  sltiu        tp, t5, -9
                  xori         s0, a2, 189
                  add          t5, s2, s7
                  sb           gp, -4(s7)
                  lbu          a2, 108(s7)
                  srli         s6, s9, 31
                  nop
                  lhu          a0, 203(s7)
                  lui          gp, 369207
                  sb           s5, 39(s7)
                  sltiu        a7, ra, -925
                  lbu          s11, 77(s7)
                  sh           s0, 231(s7)
                  add          a0, s10, s1
                  sb           tp, 118(s7)
                  sra          a2, s2, a6
                  srai         a0, a4, 26
                  nop
                  slli         s3, s1, 6
                  xori         s5, tp, 1965
                  and          s5, ra, a1
                  add          s4, t2, a7
                  sll          s4, t2, a3
                  addi         a4, a6, -1899
                  sb           s8, 178(s7)
                  sb           a6, 244(s7)
                  sb           t4, 71(s7)
                  sltu         s2, t5, t5
                  lb           s4, 14(s7) #end riscv_load_store_rand_instr_stream_10
                  la           gp, region_1+1059 #start riscv_load_store_rand_instr_stream_12
                  addi         s11, a6, 1608
                  sub          t2, s8, gp
                  addi         a5, s6, 434
                  lh           s4, 19(gp)
                  nop
                  lui          s11, 386803
                  or           t1, s1, s8
                  slt          s3, s1, s4
                  ori          a7, s7, 921
                  sb           a3, 15(gp)
                  slli         s1, s9, 2
                  nop
                  lb           s5, 24(gp)
                  slli         s1, s9, 8
                  srl          sp, s0, s2
                  addi         s10, a6, -994
                  lh           s3, -33(gp)
                  lb           t2, -20(gp)
                  lhu          s4, -9(gp)
                  srai         t2, s2, 15
                  lbu          s1, -26(gp)
                  or           t2, s3, tp
                  lbu          a0, 30(gp)
                  sb           s6, 58(gp)
                  lhu          t5, -49(gp)
                  slli         a5, s8, 4
                  lui          t5, 1014716
                  sb           a1, -56(gp)
                  or           tp, s10, a6
                  sb           gp, -18(gp)
                  lbu          t4, 34(gp)
                  lbu          t2, 57(gp)
                  sh           s1, -5(gp)
                  addi         s5, s10, -860
                  lbu          a5, 8(gp)
                  lh           zero, -53(gp)
                  srli         t4, s7, 22
                  andi         s2, s0, 383
                  lbu          s8, -61(gp)
                  sb           s9, 30(gp)
                  sb           a4, 58(gp)
                  sw           tp, 49(gp)
                  slti         s0, t5, -1506
                  lui          a4, 1013122
                  sb           zero, -45(gp)
                  lui          zero, 464033
                  sub          t4, t4, a3
                  lbu          t2, 20(gp)
                  lb           s6, 0(gp)
                  lb           a1, -2(gp)
                  sh           tp, 17(gp)
                  lb           a6, 19(gp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_0+1794 #start riscv_load_store_rand_instr_stream_6
                  sub          a0, t4, a1
                  lb           a6, -7(sp)
                  sb           sp, -5(sp)
                  lb           a7, -6(sp)
                  xor          gp, s0, s10
                  sb           s8, 1(sp)
                  andi         t4, zero, -745
                  lhu          s5, -8(sp)
                  sb           a2, -2(sp)
                  lui          s1, 505576
                  sh           s11, -12(sp)
                  lbu          a3, -6(sp)
                  slti         t5, sp, -545
                  xori         gp, t1, 1581
                  srli         t1, a4, 21
                  sub          s10, sp, a2
                  lb           s6, -9(sp)
                  lbu          ra, 8(sp)
                  lbu          a4, 2(sp)
                  ori          t0, s6, -418
                  slti         t2, a2, -532
                  ori          s1, a1, -609
                  sh           a5, -14(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+348 #start riscv_load_store_rand_instr_stream_3
                  lb           zero, 185(sp)
                  lbu          s1, -5(sp)
                  and          s3, gp, t6
                  addi         s3, t5, 1515
                  sltu         s10, s4, a3
                  ori          a6, sp, 1731
                  addi         s8, t0, -1601
                  lh           a6, -146(sp)
                  lbu          a1, -146(sp)
                  lb           s7, 218(sp)
                  sw           s6, -92(sp)
                  sll          s4, a2, zero
                  auipc        t0, 1031977
                  auipc        a7, 664224
                  lbu          tp, -214(sp)
                  xor          s1, a2, a2
                  lbu          s3, 151(sp)
                  lb           s2, -210(sp)
                  auipc        t2, 971151
                  sltu         a2, sp, t0
                  lh           a5, -98(sp)
                  lb           s8, 157(sp)
                  xor          s2, s2, a6
                  sra          s7, a3, a2
                  add          a7, a5, a7
                  slli         s11, s9, 23
                  sltu         a2, s8, a5
                  lui          a5, 390885
                  lbu          s5, -224(sp)
                  sll          ra, s0, s4
                  lb           s8, 201(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_1+1320 #start riscv_load_store_rand_instr_stream_1
                  lui          a5, 362889
                  slti         t0, s1, -2025
                  lui          s4, 213214
                  and          gp, s2, s1
                  or           ra, t6, a7
                  slt          a3, t3, a6
                  slli         s4, s11, 16
                  lbu          s7, 42(a0)
                  lb           s7, -55(a0)
                  sb           a6, 11(a0)
                  srl          gp, t0, t0
                  lb           gp, -45(a0)
                  sw           a3, -24(a0)
                  lb           s11, 20(a0)
                  lui          tp, 765874
                  sll          s4, t0, s7
                  sb           t1, -27(a0)
                  srl          t4, gp, s8
                  andi         sp, a4, -918
                  sra          ra, ra, s6
                  sltu         sp, s0, s8
                  sb           s11, 19(a0)
                  sw           s7, -52(a0)
                  lbu          s11, -53(a0)
                  sra          a2, t6, a1
                  slli         s5, s0, 30
                  sh           t1, 18(a0)
                  slt          zero, t6, s3
                  sh           a1, -16(a0)
                  lh           a7, 56(a0)
                  lhu          t4, -48(a0)
                  slt          s6, s0, s10
                  lb           a1, -57(a0)
                  slt          a3, a6, t3
                  slti         s3, gp, -344
                  srl          s2, a6, s3
                  sb           s11, 53(a0)
                  lbu          t4, -39(a0)
                  sub          s2, t4, a6
                  and          a6, t0, s0
                  lui          a2, 573893
                  sb           a0, 16(a0)
                  slt          s10, a3, s7
                  srai         a5, s0, 30
                  sltu         s4, ra, s4
                  sb           t1, 42(a0) #end riscv_load_store_rand_instr_stream_1
                  la           s10, region_1+794 #start riscv_load_store_rand_instr_stream_9
                  lbu          s0, 484(s10)
                  auipc        gp, 761565
                  lb           t0, -747(s10)
                  lbu          a7, -661(s10)
                  srl          ra, t4, s0
                  sh           t2, -28(s10)
                  srl          a7, s4, t6
                  xori         t2, t6, 1927
                  lb           tp, -623(s10)
                  sw           t3, 1118(s10)
                  lb           a3, -321(s10)
                  srai         s1, sp, 5
                  srai         t5, s9, 3
                  sh           s5, 1056(s10)
                  nop
                  addi         s0, zero, -1585
                  lbu          s3, -498(s10)
                  sb           a1, -295(s10)
                  and          a3, ra, zero
                  lui          t4, 230300
                  auipc        t4, 440550
                  srl          a1, s3, t4
                  or           t2, s10, s9
                  sltiu        s8, s8, -963
                  add          t2, s3, a6
                  sb           s5, -685(s10)
                  sb           sp, 1137(s10)
                  lbu          tp, -365(s10)
                  slti         s4, s2, 83
                  and          t0, s7, s5
                  srai         tp, s4, 4
                  srli         s2, t0, 1
                  nop
                  slt          s5, a0, s0
                  srl          ra, s3, zero
                  lh           s6, -98(s10) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+1727 #start riscv_load_store_rand_instr_stream_11
                  lbu          a5, -1324(sp)
                  lb           s4, -811(sp)
                  auipc        t5, 175776
                  lb           zero, -568(sp)
                  andi         tp, s7, -265
                  xori         s8, s8, -467
                  lhu          s0, -1409(sp)
                  xori         a6, ra, 1808
                  lbu          a6, -977(sp)
                  lb           gp, -538(sp)
                  lui          a7, 1002011
                  sb           tp, -634(sp)
                  add          s5, a3, s4
                  and          s2, a3, a0
                  sh           s9, -1465(sp)
                  lui          a4, 95189
                  andi         s7, s1, 1172
                  srl          a5, s11, s5
                  lb           t5, -716(sp)
                  sb           zero, -649(sp)
                  srai         s0, t2, 20
                  lbu          s11, -1617(sp)
                  slti         s4, s4, 2021
                  lbu          a1, -1009(sp)
                  xori         a2, zero, -827
                  lbu          tp, 148(sp)
                  lbu          t4, -1336(sp)
                  ori          a6, a1, -184
                  srli         t0, a6, 13
                  lbu          s7, -1066(sp)
                  lb           a3, 194(sp)
                  sub          a3, a1, sp
                  lh           s5, -1099(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+539 #start riscv_load_store_rand_instr_stream_8
                  lb           s10, 80(sp)
                  sb           t2, 107(sp)
                  sb           s6, -183(sp)
                  sb           t6, 142(sp)
                  sb           t2, -204(sp)
                  lhu          a1, -41(sp)
                  lui          a1, 204154
                  srli         a0, s4, 8
                  sltiu        t4, a4, -1857
                  sh           t2, 95(sp)
                  lh           t0, 53(sp)
                  lui          s8, 148637
                  xori         s6, t6, -861
                  lb           tp, -251(sp)
                  sltu         a7, t6, s5
                  sb           s8, 68(sp)
                  lbu          gp, -67(sp)
                  addi         tp, a1, 1270
                  lbu          s6, 254(sp)
                  and          gp, s10, t5
                  lbu          s2, -240(sp)
                  srai         s3, s8, 24
                  add          s8, gp, tp
                  andi         s8, s7, 1389
                  sw           t4, -27(sp)
                  lb           a1, -108(sp)
                  lb           s3, -75(sp)
                  lh           tp, -25(sp)
                  lb           s5, 134(sp)
                  sb           s1, -180(sp)
                  lbu          s11, 118(sp)
                  sub          s10, a5, a5
                  andi         s11, t1, -1430
                  lh           a5, -47(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+1080 #start riscv_load_store_rand_instr_stream_2
                  slt          a2, t1, s1
                  add          t2, t5, a5
                  lhu          t5, -2(sp)
                  xor          s0, s0, s6
                  srl          a3, a0, s9
                  lhu          zero, 4(sp)
                  lbu          ra, 13(sp)
                  or           t2, a4, tp
                  lui          t1, 652396
                  sltu         a1, t1, s10
                  lbu          s11, -1(sp)
                  srai         a6, t3, 3
                  lbu          zero, -12(sp)
                  lui          s0, 868691
                  xor          a3, a4, s11
                  lb           a4, 5(sp)
                  lb           s8, -16(sp)
                  srli         a1, s1, 28
                  nop
                  sb           t0, 16(sp)
                  lh           s3, -16(sp)
                  nop
                  sra          t4, t4, zero
                  sltu         gp, t1, t5
                  lb           a6, 11(sp) #end riscv_load_store_rand_instr_stream_2
                  nop
                  sra          ra, a0, t2
                  srl          a2, t1, s2
                  slt          a5, t1, t4
                  slti         a5, s3, -1354
                  srli         t1, t5, 24
                  beq          a1, t6, 17f
                  lui          s11, 994718
                  beq          s11, t6, 13f
                  srli         s8, s4, 5
                  sltiu        t5, s10, 990
                  slti         t0, t5, 1455
                  srai         s4, tp, 12
13:               bne          t2, t4, 22f
                  sub          a3, s3, s0
                  andi         a7, s1, -1181
                  srai         a7, a2, 14
17:               lui          t1, 467838
                  sll          s3, s7, t2
                  xor          t1, s6, s3
                  sub          t0, t3, tp
                  bltu         s8, s2, 37f
22:               nop
                  sltiu        a5, s0, 243
                  slli         s11, s4, 7
                  slti         a4, t5, -571
                  ori          tp, a3, -1807
                  bltu         a7, tp, 39f
                  blt          s3, t3, 38f
                  ori          s11, t0, 1412
                  or           s1, gp, t1
                  srli         gp, a6, 7
                  lui          a3, 112961
                  beq          s3, t0, 40f
                  srli         a2, s9, 0
                  srai         s2, a7, 9
                  bgeu         s11, s2, 44f
37:               nop
38:               sra          a0, a6, s8
39:               slli         s11, a3, 29
40:               slt          t5, a7, a2
                  xor          ra, s6, s9
                  slli         a6, s0, 29
                  slli         a3, t0, 25
44:               or           a4, a6, a0
                  bltu         t5, t0, 50f
                  sltu         t4, ra, t1
                  sub          zero, tp, t0
                  andi         s8, a7, 572
                  ori          s10, a4, -1002
50:               nop
                  or           zero, t1, s2
                  beq          s4, s8, 58f
                  slti         s7, a3, 1845
                  bge          s8, a2, 59f
                  bne          t6, s8, 69f
                  xor          a2, a4, a2
                  or           t5, t2, s3
58:               ori          t5, a3, -1590
59:               srli         s5, t4, 7
                  srai         s11, t4, 13
                  and          s6, t4, sp
                  lui          s7, 146177
                  bltu         sp, a6, 73f
                  srai         ra, s10, 2
                  slt          a5, a5, s3
                  bne          sp, tp, 75f
                  beq          t6, s9, 71f
                  beq          s10, s4, 76f
69:               add          s2, s1, s5
                  blt          s10, gp, 85f
71:               blt          s9, s8, 85f
                  slli         a3, s0, 4
73:               xor          a5, gp, a3
                  and          sp, t5, a0
75:               slt          gp, a3, t5
76:               auipc        s7, 426191
                  addi         t5, gp, -376
                  srai         s3, a1, 19
                  bge          sp, t4, 95f
                  slti         s3, s10, 593
                  bgeu         t0, a6, 82f
82:               sltu         gp, s5, s1
                  bgeu         s0, s8, 96f
                  auipc        gp, 879333
85:               blt          a3, s2, 97f
                  andi         a4, a3, -1276
                  lui          s5, 667909
                  sll          zero, s8, s1
                  nop
                  srl          t0, s0, t6
                  sub          a7, a1, t6
                  sll          a0, a3, a7
                  xori         s1, t2, 2029
                  xor          s5, a4, a0
95:               sltu         s7, t1, t6
96:               xor          t2, a7, t6
97:               srli         s8, a2, 17
                  sra          a3, t2, tp
                  xori         ra, gp, -357
                  bgeu         gp, s4, 113f
                  srli         tp, s11, 22
                  slli         a2, t6, 5
                  slti         ra, a6, 1460
                  and          s6, s1, s9
                  srli         a7, t5, 4
                  add          s8, a2, t2
                  add          a5, s6, zero
                  srli         a5, s7, 19
                  lui          s2, 738599
                  srli         s0, s2, 16
                  blt          t4, a7, 128f
                  addi         gp, zero, -1062
113:              or           a0, a1, sp
                  sub          zero, s10, t6
                  and          s2, s7, s8
                  slt          t1, t3, s8
                  add          a4, a3, t3
                  auipc        s2, 565999
                  addi         t4, s6, 931
                  sra          t2, s6, s4
                  addi         gp, s7, -1568
                  xor          zero, t3, t4
                  and          s0, a3, a6
                  beq          s7, t3, 141f
                  srai         a3, s10, 5
                  srl          a6, s7, t2
                  bgeu         t3, gp, 137f
128:              nop
                  sltu         s5, s2, t0
                  and          a5, tp, s10
                  slt          s10, t1, a4
                  ori          a5, t5, 556
                  srli         t0, s6, 17
                  xori         t0, s0, -1564
                  add          a2, s5, a7
                  sub          a5, s8, t4
137:              srai         a3, t3, 20
                  slti         ra, s2, -558
                  lui          s1, 387516
                  add          s10, t1, a0
141:              lui          s3, 517583
                  beq          s2, s6, 153f
                  sll          t0, s5, a2
                  blt          s6, t2, 156f
                  srli         s8, s4, 18
                  sltiu        a5, a4, 99
                  bge          a7, a4, 158f
                  slti         s8, zero, -1167
                  bne          t4, tp, 160f
                  bge          s9, zero, 156f
                  srl          s11, s3, t3
                  add          tp, a7, a2
153:              xor          zero, t0, s6
                  add          s1, sp, s8
                  srli         s3, t3, 4
156:              andi         t2, sp, 307
                  sra          a2, zero, s1
158:              ori          s1, ra, 1496
                  beq          zero, s7, 172f
160:              sra          s1, s9, t5
                  sltu         s4, a7, t5
                  bne          a6, s7, 178f
                  auipc        tp, 494897
                  blt          a3, a5, 169f
                  slt          s5, sp, a6
                  sub          s8, a1, t4
                  nop
                  slti         tp, s3, 112
169:              or           s8, s7, s1
                  sltu         s3, s7, t2
                  blt          t1, s6, 180f
172:              auipc        zero, 362793
                  and          a7, s11, s9
                  beq          s5, a1, 188f
                  bne          a7, a3, 180f
                  srl          s10, s7, s4
                  xor          zero, a3, s6
178:              sll          tp, t4, s2
                  slli         a1, a4, 27
180:              sltiu        s0, tp, 1554
                  slt          gp, s0, gp
                  auipc        a0, 788639
                  xori         a3, t2, 1426
                  sltiu        s8, s11, 1873
                  and          zero, zero, s3
                  ori          t5, gp, -1570
                  srl          t1, t1, a2
188:              sltiu        s1, t6, -1248
                  and          a1, s10, a1
                  slli         s8, t3, 5
                  bge          s4, a6, 203f
                  srli         s3, a0, 3
                  sll          a3, t0, s9
                  slli         s4, s7, 19
                  beq          t0, tp, 196f
196:              sll          s6, s2, a1
                  addi         t5, s9, 1981
                  blt          s6, t3, 208f
                  addi         zero, a6, -1237
                  sub          s5, t4, t1
                  bne          t6, s9, 209f
                  add          sp, a4, s4
203:              addi         s11, s10, 1943
                  bne          s9, a0, 208f
                  andi         gp, t2, -1882
                  lui          tp, 149209
                  lui          s7, 815827
208:              slti         s3, s8, 2005
209:              sltu         a3, a1, s10
                  nop
                  srli         gp, sp, 4
                  lui          gp, 195140
                  slt          s11, tp, s5
                  srai         zero, a6, 16
                  sll          t0, s6, t1
                  add          gp, t2, t4
                  slt          t0, s7, sp
                  sltiu        tp, s1, 47
                  bne          s3, s3, 232f
                  nop
                  bgeu         t3, a3, 233f
                  add          a1, s4, t3
                  xor          s1, t2, a4
                  bge          s1, a1, 238f
                  bltu         a5, a0, 236f
                  beq          s10, s3, 243f
                  sub          s6, t4, tp
                  ori          t1, zero, -1848
                  addi         a5, s0, 1267
                  sltiu        s10, t4, 379
                  or           s5, s7, a7
232:              bge          gp, sp, 243f
233:              srli         a7, a7, 26
                  sltu         t2, ra, s11
                  sltiu        a7, a1, -1508
236:              addi         zero, a2, 325
                  sra          s5, gp, s9
238:              andi         s8, s7, 224
                  slli         a0, s9, 13
                  srli         t0, a3, 5
                  sltu         zero, t4, s9
                  blt          ra, s11, 254f
243:              xor          tp, a4, s11
                  xori         zero, zero, -1130
                  srai         s11, s3, 15
                  blt          a6, s9, 257f
                  auipc        a6, 1027211
                  srl          s4, s5, s6
                  add          s5, t2, t6
                  and          t5, a7, s11
                  blt          s9, s3, 261f
                  la           a6, region_1+1089 #start riscv_load_store_rand_instr_stream_7
                  sw           s0, -45(a6)
                  sra          sp, ra, t3
                  sb           a3, 188(a6)
                  addi         a5, t5, 1255
                  sb           a0, -50(a6)
                  lhu          s1, -225(a6)
                  sltu         s0, a4, t3
                  lbu          t4, 100(a6)
                  sltu         zero, s8, s11
                  lbu          t1, 194(a6)
                  add          t1, t3, t5
                  sb           tp, -140(a6)
                  slti         t2, s9, 1203
                  sll          s10, t6, a4
                  lb           t1, 204(a6)
                  sll          s1, a1, s4
                  sb           ra, 246(a6)
                  and          ra, t4, a6
                  slt          a4, s7, t5
                  srai         s2, ra, 0
                  nop
                  sw           s10, -129(a6)
                  xori         a5, s11, -1964
                  and          a1, ra, s8
                  auipc        s2, 15446
                  sb           a6, 8(a6)
                  lbu          zero, -209(a6)
                  lbu          t0, 75(a6)
                  sh           tp, 41(a6)
                  and          s11, t3, t0
                  sb           a4, 128(a6) #end riscv_load_store_rand_instr_stream_7
                  bne          a0, tp, 260f
                  or           t5, t1, t2
254:              xori         s1, ra, 1333
                  or           t4, s0, s8
                  and          sp, t1, t2
257:              srl          s1, t3, s2
                  bgeu         gp, a0, 269f
                  add          s0, s8, a7
260:              nop
261:              bgeu         a6, s4, 271f
                  bltu         a4, a4, 271f
                  auipc        t5, 556549
                  bge          s10, t4, 281f
                  and          s10, s1, t2
                  bge          s11, s11, 281f
                  lui          a7, 960183
                  sra          t5, t1, s7
269:              auipc        gp, 777565
                  slli         s1, s8, 12
271:              sltiu        s8, s8, -1939
                  srai         s5, s9, 24
                  andi         a3, t1, -162
                  xor          sp, t4, a3
                  or           s3, s11, t5
                  xor          s7, s8, a0
                  slt          a6, s4, a1
                  slti         a6, tp, -1330
                  srl          sp, s6, zero
                  srl          t4, a1, t4
281:              ori          gp, a6, 1488
                  srl          a3, t5, s11
                  srl          s2, s5, t5
                  srl          gp, t5, a7
                  or           s4, s9, zero
                  slt          a0, a2, s8
                  sra          t0, t4, a3
                  xor          t4, a4, a3
                  andi         a5, s11, -91
                  srai         s2, s5, 8
                  xori         s6, t1, -510
                  or           s0, t0, a2
                  andi         a2, t0, -36
                  bgeu         a3, t1, 301f
                  srai         s8, a2, 11
                  nop
                  andi         tp, tp, 287
                  sll          s10, s11, t4
                  and          a0, s6, s10
                  sltu         s3, a4, a0
301:              slti         t4, s9, 1058
                  la           a1, region_0+302 #start riscv_load_store_rand_instr_stream_4
                  xori         s5, t3, 2029
                  lbu          s6, 611(a1)
                  lbu          a3, 945(a1)
                  lb           s0, 68(a1)
                  lb           gp, 1132(a1)
                  slt          s10, t2, t0
                  sub          gp, t5, a2
                  lh           tp, 1184(a1)
                  andi         zero, a4, 1383
                  slt          zero, s11, s8
                  xor          t4, zero, s9
                  lbu          a3, 217(a1)
                  and          s6, a2, s7
                  slli         zero, s2, 30
                  auipc        s10, 680315
                  lb           t5, 425(a1)
                  sb           s11, 131(a1)
                  lb           a4, 284(a1)
                  sb           t1, 1168(a1)
                  srai         a3, a7, 22
                  slti         s8, s1, -843
                  lb           t2, 404(a1)
                  sltiu        t1, a1, 1516
                  sra          s5, t5, a1
                  lb           a7, 579(a1)
                  slli         s1, s5, 26
                  sb           s1, 895(a1)
                  lui          sp, 41503
                  or           s11, s8, s4
                  sltiu        a7, s8, 1151
                  sb           t3, 1455(a1)
                  lb           s8, 435(a1)
                  sb           t2, 1461(a1)
                  slt          s6, t6, gp
                  lb           tp, 560(a1)
                  lb           t0, 457(a1)
                  sll          s6, s5, ra
                  sb           t5, 231(a1)
                  auipc        s8, 210051
                  lhu          s5, 878(a1)
                  xor          s11, s0, t2
                  lb           gp, 73(a1) #end riscv_load_store_rand_instr_stream_4
                  srli         ra, s6, 8
                  srli         a0, s4, 29
                  andi         a4, t2, 61
                  sltu         t0, t6, s9
                  srai         a2, a2, 11
                  bgeu         t1, t1, 323f
                  and          a7, s4, a5
                  sll          t2, t0, s1
                  sltu         a7, a0, s1
                  or           s5, s0, t3
                  srli         a2, a3, 8
                  sltiu        tp, s0, 840
                  bgeu         s8, s2, 319f
                  or           s8, s2, zero
                  bge          a2, t1, 333f
                  srl          s6, zero, t2
                  slt          s1, t3, s1
319:              nop
                  add          s2, a6, t2
                  bne          s8, a7, 322f
322:              bge          gp, s1, 336f
323:              bge          t6, a3, 328f
                  xor          sp, s10, t2
                  bltu         s11, t1, 333f
                  xor          a3, tp, s2
                  auipc        t0, 472002
328:              beq          s10, t0, 338f
                  sltu         s11, s7, t4
                  or           a5, a3, s4
                  sll          a1, s5, sp
                  xori         s0, gp, 567
333:              bne          a7, s1, 347f
                  ori          s0, s0, -1614
                  sll          s1, s3, s2
336:              slti         s8, tp, 626
                  ori          tp, a1, -357
338:              srai         a7, s9, 27
                  addi         sp, t2, 1392
                  sltu         s3, s6, s5
                  slti         a2, a7, 2005
                  slt          s8, a1, a0
                  sltu         s1, s5, s10
                  sub          a7, t4, a7
                  sra          ra, a3, s4
                  slti         a0, sp, -1741
347:              bltu         s9, a5, 364f
                  blt          gp, a5, 361f
                  bne          t6, s11, 360f
                  slti         a6, s5, -720
                  sub          s3, t4, s2
                  blt          s0, s9, 363f
                  and          sp, t0, a4
                  slti         a6, a3, -118
                  sll          s4, s10, s0
                  addi         s10, s7, -282
                  slti         s5, s6, 362
                  lui          tp, 778886
                  andi         s8, t4, 1695
360:              sltu         t5, a7, s8
361:              slli         sp, s7, 2
                  beq          a2, t1, 377f
363:              sra          t0, a7, a6
364:              beq          a0, t4, 374f
                  sltu         gp, t1, a0
                  bltu         t2, a1, 372f
                  slt          s1, a7, a6
                  slli         s3, s0, 2
                  and          s5, t5, a0
                  slt          s3, a4, s10
                  srai         a2, a4, 3
372:              and          a3, a6, t4
                  bgeu         a4, zero, 384f
374:              or           s3, s1, ra
                  bltu         s9, t0, 382f
                  addi         t0, tp, -14
377:              beq          a7, s11, 387f
                  slli         a7, a2, 25
                  sra          a7, s2, a7
                  beq          a0, s6, 385f
                  or           s8, a2, zero
382:              srai         s4, a5, 25
                  ori          s7, a1, 351
384:              bne          sp, s3, 397f
385:              slli         gp, t3, 2
                  bne          sp, s10, 398f
387:              slli         zero, s10, 21
                  sltu         s8, a1, t4
                  or           t0, tp, s11
                  sll          a3, a4, a5
                  sll          sp, a1, s2
                  srl          s0, t2, s11
                  xori         zero, zero, 177
                  srli         s6, ra, 13
                  sra          zero, a4, a4
                  add          zero, a5, a3
397:              slli         s4, s4, 11
398:              blt          gp, a2, 414f
                  xori         s2, ra, -617
                  addi         s3, a1, -800
                  sll          a1, t3, gp
                  bge          s10, ra, 411f
                  nop
                  and          tp, a7, a7
                  slti         s1, s9, 860
                  bge          a0, s2, 418f
                  bge          t5, a6, 412f
                  bltu         gp, s0, 419f
                  auipc        a5, 1017240
                  slt          t2, s9, t4
411:              bltu         t0, a5, 420f
412:              sll          t5, s2, a2
                  bge          ra, zero, 429f
414:              bltu         a3, a3, 422f
                  ori          s10, a0, 624
                  slt          a2, s0, s4
                  nop
418:              bne          t5, a5, 430f
419:              add          a4, s7, s10
420:              sltiu        a0, sp, 1146
                  sll          s0, s11, s5
422:              sltiu        a0, zero, 61
                  slt          s3, a2, s11
                  slti         a7, s7, 473
                  xor          s5, gp, ra
                  sltiu        s6, s9, 648
                  beq          ra, s10, 431f
                  auipc        s0, 651705
429:              bgeu         s3, s10, 434f
430:              sll          t1, ra, s4
431:              slli         sp, t3, 2
                  slt          ra, s1, s9
                  ori          a0, s10, -97
434:              sub          a4, s9, a3
                  add          s5, s11, t4
                  andi         sp, a0, 847
                  srli         tp, a4, 29
                  beq          a2, t4, 443f
                  srli         s6, s0, 20
                  xor          s8, s6, zero
                  slt          t2, a2, ra
                  srai         ra, s6, 3
443:              or           s10, a1, s2
                  andi         gp, s10, 1604
                  ori          t1, t3, 1894
                  addi         t2, a1, 1657
                  sll          a4, s6, t3
                  slti         a7, s4, -49
                  sra          a4, s6, s10
                  nop
                  and          a2, s0, t3
                  bltu         t6, s7, 464f
                  bne          t1, t6, 465f
                  sub          t0, t2, a2
                  srli         s11, t4, 26
                  or           t1, s0, a5
                  srai         s5, t1, 2
                  xori         s3, s11, 1729
                  addi         a3, s8, 267
                  addi         t5, s8, 867
                  srai         sp, t4, 24
                  bgeu         t4, a2, 471f
                  andi         sp, t2, 1313
464:              nop
465:              srl          a4, a3, t4
                  and          gp, s0, t5
                  beq          zero, ra, 475f
                  xori         s7, s1, -922
                  addi         t5, tp, 1307
                  xori         s2, t2, 1565
471:              sltiu        s2, t6, 1643
                  add          s2, gp, a1
                  or           t1, s5, t6
                  srai         t0, s5, 7
475:              sltu         a6, a5, t0
                  bge          sp, s9, 487f
                  addi         tp, ra, -1562
                  sll          s5, s0, t6
                  lui          a0, 548944
                  sra          a0, a2, t1
                  nop
                  slt          a4, s5, t4
                  sub          s1, a5, s4
                  bne          a6, s3, 499f
                  auipc        s8, 31731
                  sra          t2, t6, a6
487:              sra          a7, gp, t6
                  sltiu        s5, a4, 1978
                  slti         s7, s4, -1602
                  xor          a1, tp, ra
                  slli         ra, a6, 21
                  srai         sp, a3, 18
                  bltu         a3, s11, 502f
                  andi         s10, s0, -491
                  sltiu        gp, s11, -733
                  bltu         s2, ra, 497f
497:              sra          a6, a2, a5
                  sltu         a4, gp, s10
499:              beq          s3, t4, 506f
                  addi         sp, sp, 2024
                  sra          t4, tp, gp
502:              nop
                  xori         s10, tp, 2036
                  nop
                  and          t1, t4, s6
506:              ori          ra, sp, -67
                  slti         a5, t3, -1676
                  bltu         tp, t6, 519f
                  slti         a0, a0, -1107
                  sra          t4, sp, a0
                  sra          s4, tp, s9
                  andi         s0, a4, 1943
                  sra          s7, s8, a1
                  xori         ra, s6, 183
                  beq          a7, s4, 519f
                  xor          tp, a2, a6
                  xor          a5, t0, a2
                  and          gp, s5, t4
519:              bge          s4, s7, 535f
                  ori          a0, a0, 889
                  and          sp, t5, gp
                  bgeu         s2, s6, 536f
                  srai         s5, s8, 7
                  and          a6, t5, ra
                  srai         s3, s7, 1
                  beq          s6, a3, 540f
                  beq          s6, s3, 537f
                  xori         s11, s9, -1584
                  sltiu        tp, t4, 920
                  srl          t5, zero, a3
                  slli         tp, t2, 3
                  srl          a7, gp, t3
                  sltiu        t2, s5, 1776
                  ori          s11, t0, 614
535:              sltu         s0, ra, s4
536:              andi         s5, a1, -412
537:              slti         t5, a7, -2022
                  slti         a3, t3, -26
                  slt          a1, s4, s3
540:              bltu         s7, s1, 545f
                  sltiu        a7, s6, -953
                  auipc        s5, 551752
                  slt          tp, s6, s6
                  ori          a3, t5, 935
545:              addi         t5, a7, -267
                  slt          t4, t5, s8
                  slt          a2, t3, a7
                  or           gp, t4, t1
                  add          t4, s10, t6
                  xor          t4, zero, t1
                  slli         a7, t3, 20
                  slt          t2, s1, a7
                  sll          a5, t4, a2
                  sll          s8, ra, s10
                  sub          zero, gp, a7
                  sra          s6, s5, a2
                  addi         s10, a0, -602
                  and          tp, sp, s9
                  sltu         a0, a3, s9
                  sub          s5, a3, s8
                  or           a7, t1, s9
                  xor          t4, a5, s0
                  bltu         t0, s3, 580f
                  beq          gp, s6, 572f
                  srai         t0, a5, 27
                  addi         t1, a6, 1988
                  add          a5, s2, a6
                  and          a7, t3, sp
                  bge          t3, ra, 580f
                  slt          ra, gp, s8
                  slti         t5, t1, 529
572:              add          ra, t2, a5
                  auipc        s6, 478355
                  ori          ra, s8, -301
                  xori         t1, s0, 196
                  or           a4, a7, zero
                  bne          s2, a2, 588f
                  sra          s0, t5, s7
                  nop
580:              beq          s5, s4, 596f
                  sll          a4, s1, t3
                  lui          ra, 75333
                  bltu         sp, a6, 596f
                  andi         a6, s11, -1161
                  xori         s2, t0, -1049
                  blt          s11, a4, 603f
                  beq          t1, a6, 600f
588:              or           a1, s7, a2
                  andi         t0, a0, -685
                  beq          s10, a7, 596f
                  and          ra, t5, a4
                  slt          s11, zero, s11
                  add          t2, a7, s5
                  bne          t1, a6, 604f
                  beq          sp, t3, 607f
596:              sub          a3, t3, t4
                  sltiu        s3, s5, -284
                  addi         s6, t0, 342
                  slt          t1, a5, s6
600:              slt          s3, tp, s2
                  nop
                  addi         s5, s5, -780
603:              bne          s5, t3, 613f
604:              srl          sp, s1, s6
                  add          gp, t3, s10
                  srai         a6, s10, 12
607:              add          s4, s9, a6
                  beq          a3, a3, 620f
                  bgeu         a3, sp, 620f
                  sltu         s5, s10, a4
                  addi         s4, a5, -83
                  bltu         s5, t6, 616f
613:              and          ra, a7, t5
                  blt          s6, a1, 620f
                  srl          a7, s2, a1
616:              blt          a6, a0, 625f
                  sub          a5, s4, t1
                  xori         s4, t0, -1669
                  sub          a1, a0, a1
620:              slli         a6, t0, 22
                  slt          tp, gp, t6
                  srl          s7, ra, a1
                  andi         t1, zero, 144
                  bge          s1, a0, 638f
625:              andi         t4, t5, 1831
                  slt          s1, s10, s2
                  sll          a6, a7, sp
                  nop
                  blt          t1, t6, 645f
                  bgeu         s0, t4, 640f
                  sll          a1, a4, t3
                  srai         s0, t5, 31
                  sub          gp, s11, t1
                  xori         s6, t4, -840
                  sltiu        s8, a2, 1663
                  srli         s4, a0, 28
                  lui          sp, 479770
638:              bne          t4, a3, 643f
                  nop
640:              sltu         a3, s1, s2
                  ori          a4, sp, 1253
                  slt          s6, s0, s0
643:              srli         t2, s6, 18
                  add          a1, gp, s7
645:              slli         a6, s3, 27
                  blt          t6, s1, 657f
                  nop
                  or           s2, a0, s9
                  and          t0, s6, t6
                  slli         a7, t5, 29
                  addi         ra, s4, 369
                  lui          s4, 296160
                  or           s11, s2, s4
                  bgeu         a0, t0, 670f
                  bgeu         a7, a2, 668f
                  slti         gp, t5, -1365
657:              xori         s3, tp, 1819
                  slti         s7, ra, -2036
                  slti         gp, s7, -200
                  sltiu        s0, s8, 740
                  srl          t0, s5, a3
                  sub          s4, s8, s3
                  ori          s3, t2, 182
                  bltu         s10, t0, 665f
665:              add          s8, s10, s7
                  xori         a5, s1, -517
                  nop
668:              sltu         t2, a2, s10
                  beq          s4, sp, 682f
670:              or           tp, s10, s9
                  sltu         t1, s11, s4
                  srli         t0, s8, 10
                  bge          s10, s0, 687f
                  bltu         a5, t3, 685f
                  slt          gp, t1, tp
                  slt          a1, t5, s5
                  srl          t0, s10, t3
                  bltu         a2, a0, 690f
                  xor          tp, s3, a1
                  bgeu         a5, t3, 695f
                  bgeu         a7, s9, 690f
682:              andi         s0, s11, 1186
                  bne          t2, a1, 694f
                  srli         t2, t3, 30
685:              srai         s2, a6, 14
                  srli         s10, s3, 28
687:              blt          s2, s4, 692f
                  xor          s0, s1, a5
                  sub          s2, sp, t3
690:              beq          a4, s2, 700f
                  bgeu         ra, s10, 696f
692:              sll          t1, gp, s7
                  ori          a7, a7, 920
694:              bltu         ra, a6, 701f
695:              addi         s8, s0, -1900
696:              auipc        tp, 76128
                  or           s1, s9, t3
                  xor          s6, gp, t3
                  sub          s1, sp, s5
700:              sra          s8, t2, s1
701:              bge          s2, ra, 709f
                  or           a1, s11, s1
                  srli         a1, sp, 30
                  andi         sp, a5, 1985
                  srai         a5, s8, 22
                  sll          tp, tp, t5
                  bltu         s10, t6, 724f
                  sra          sp, t5, t4
709:              srai         a1, s9, 8
                  xori         s0, s11, 1474
                  slli         a2, tp, 5
                  beq          s0, a6, 722f
                  ori          tp, t4, 871
                  addi         s0, s6, -1894
                  beq          a0, t3, 727f
                  sltu         t4, zero, s0
                  blt          a3, a5, 734f
                  sra          a3, t1, gp
                  srl          s5, s5, a6
                  andi         s0, a1, -54
                  bgeu         a0, ra, 729f
722:              sll          zero, a6, t5
                  srli         s5, s8, 17
724:              srl          sp, s10, a0
                  lui          s1, 1000335
                  srl          s2, a3, zero
727:              bltu         zero, a3, 731f
                  add          tp, s4, ra
729:              addi         a6, a7, -290
                  slti         s3, zero, 537
731:              srli         sp, s2, 16
                  slli         s11, s7, 31
                  slli         t4, t0, 0
734:              bltu         tp, t3, 747f
                  slti         s6, t0, -623
                  and          s2, a7, t1
                  ori          s3, t3, -1093
                  sll          a5, s11, t1
                  ori          ra, s7, 379
                  sub          a5, t0, s3
                  nop
                  addi         a6, a1, -1777
                  or           s0, s4, s6
                  sll          t2, s5, a3
                  ori          a0, gp, 915
                  sub          a4, s11, s8
747:              and          t1, s11, t2
                  sltiu        s3, s8, -1716
                  sub          ra, s0, ra
                  sll          s4, a2, a0
                  xor          t1, t1, t5
                  nop
                  bltu         a5, t4, 767f
                  bgeu         t0, s2, 765f
                  sltu         sp, s0, t2
                  bne          a5, s9, 773f
                  sub          zero, t2, ra
                  bge          s5, s10, 770f
                  sub          s1, s3, a1
                  srai         tp, t4, 8
                  slli         s1, t6, 31
                  srai         s7, a6, 25
                  auipc        ra, 625145
                  srli         s1, a7, 1
765:              sltiu        s0, s7, 1651
                  blt          t4, a4, 780f
767:              bge          s4, a3, 772f
                  bltu         a7, s5, 779f
                  lui          s3, 384169
770:              slli         a7, ra, 11
                  xor          s0, t1, s0
772:              addi         a2, t3, 1659
773:              sra          tp, s1, s6
                  srl          t1, s9, s6
                  bgeu         t0, s6, 784f
                  beq          s2, t3, 785f
                  xori         a4, a6, -1637
                  bgeu         a5, t2, 790f
779:              andi         zero, sp, -1971
780:              bne          t6, s4, 791f
                  andi         a0, a7, 1304
                  auipc        ra, 517156
                  srl          s1, tp, t3
784:              sltiu        ra, a3, 1350
785:              bge          t0, s9, 795f
                  beq          a0, t0, 796f
                  sltu         s5, t2, s10
                  bge          s7, s7, 805f
                  andi         a2, a6, -689
790:              bltu         tp, t0, 805f
791:              nop
                  ori          a2, gp, -532
                  bltu         a7, s8, 806f
                  sll          s8, a6, a2
795:              bgeu         s7, a0, 807f
796:              and          gp, t0, a6
                  addi         ra, gp, -297
                  srl          sp, t6, s6
                  srai         ra, a0, 4
                  bne          s2, a7, 808f
                  beq          a6, t1, 817f
                  lui          a7, 417860
                  srl          sp, s1, t4
                  slt          s1, s1, zero
805:              slti         s11, ra, -1437
806:              sltiu        s10, s4, 161
807:              bltu         a0, a7, 812f
808:              sub          a7, ra, a4
                  sltu         a1, zero, t1
                  bne          s0, t1, 826f
                  or           a3, t4, s2
812:              slli         t0, t4, 25
                  xor          a3, s8, s0
                  bge          s2, s8, 822f
                  bge          t2, s4, 826f
                  or           a6, s10, a2
817:              bgeu         s1, s4, 823f
                  xori         zero, s4, -671
                  beq          s7, s10, 824f
                  xor          sp, t0, a0
                  bltu         s6, s1, 822f
822:              lui          s4, 55826
823:              xor          tp, a6, s9
824:              sll          s5, s7, a3
                  blt          zero, t5, 832f
826:              slt          s2, s8, a4
                  sltu         t0, a2, a2
                  bge          s2, t6, 838f
                  slt          a5, t3, t2
                  beq          t0, s4, 840f
                  xori         a6, s3, 446
832:              blt          s10, s4, 843f
                  or           s11, t3, t0
                  srai         s0, s2, 23
                  sra          ra, a1, s8
                  andi         gp, s7, 1112
                  bltu         s0, gp, 853f
838:              xor          a1, a2, s8
                  xor          ra, ra, a0
840:              bge          gp, t3, 853f
                  bge          t6, sp, 856f
                  xori         s8, s2, -340
843:              and          t2, a1, s1
                  slti         ra, s8, -9
                  sll          a5, s2, zero
                  sll          s5, s5, a5
                  auipc        a2, 181582
                  and          sp, s4, s3
                  addi         t5, s1, -1005
                  slt          a5, t4, t0
                  xor          s4, a2, s3
                  andi         s4, s5, -1991
853:              andi         s10, ra, -735
                  andi         s6, s7, 1802
                  bltu         a2, t1, 869f
856:              and          s0, t0, s10
                  srai         sp, t3, 18
                  auipc        t1, 696537
                  nop
                  srl          a5, s7, s4
                  xori         s0, a0, -1757
                  srl          zero, s1, a6
                  lui          a3, 391564
                  bne          s0, s10, 875f
                  bge          a2, a7, 882f
                  slli         s5, a5, 8
                  andi         zero, a2, 569
                  bgeu         a3, s0, 874f
869:              xor          a7, t0, a7
                  slt          gp, a3, a5
                  bne          sp, a1, 887f
                  beq          s6, t6, 881f
                  srl          a4, a0, t4
874:              sra          s5, s11, a2
875:              sub          s3, gp, a2
                  srai         t0, tp, 16
                  bgeu         ra, s1, 890f
                  andi         a6, s3, 787
                  xor          ra, t5, s0
                  srai         a4, a1, 13
881:              bne          s11, t1, 882f
882:              add          gp, a0, t6
                  ori          a4, a4, 530
                  sltiu        a6, s7, -1107
                  srl          a6, s11, a0
                  srai         s10, s0, 3
887:              slti         ra, s11, -1488
                  lui          ra, 938739
                  add          gp, a2, t6
890:              sltiu        s4, t1, -699
                  lui          zero, 481639
                  nop
                  xori         s7, a6, 56
                  slt          ra, s8, zero
                  sltu         s7, a7, s4
                  srli         s4, t5, 19
                  xor          tp, s7, a7
                  bltu         s9, sp, 905f
                  srli         t4, tp, 3
                  lui          t5, 812192
                  sub          t5, a5, gp
                  blt          t3, a1, 907f
                  bgeu         t0, a7, 907f
                  lui          a7, 721817
905:              addi         t1, t2, 45
                  addi         s3, a5, 528
907:              sll          t1, a0, t3
                  sub          t5, s1, s6
                  ori          t4, a6, -1990
                  slt          s0, s0, s1
                  bne          a6, a0, 923f
                  sltiu        a2, s6, 1068
                  sll          sp, s0, a1
                  auipc        sp, 425105
                  srai         s2, a5, 18
                  srai         t1, s7, 15
                  slli         s4, s9, 22
                  add          a1, a7, a0
                  xor          gp, t6, s3
                  bge          gp, t6, 931f
                  srl          a5, s3, sp
                  slt          s11, t5, ra
923:              bge          s8, s11, 937f
                  nop
                  bge          a4, a3, 933f
                  andi         s0, s7, -1093
                  xori         s3, tp, -1536
                  bgeu         a5, a2, 940f
                  srli         a3, t2, 18
                  sltu         s2, t2, s1
931:              bltu         t4, s11, 948f
                  and          a6, zero, s7
933:              sub          t0, a2, s4
                  auipc        t2, 945494
                  xori         sp, a7, -1618
                  and          a5, gp, a7
937:              nop
                  xori         t2, s10, -1717
                  slt          ra, a4, t6
940:              srl          t4, s2, a5
                  blt          a1, t1, 951f
                  slli         t2, s1, 4
                  bge          s3, a0, 953f
                  bltu         s4, a2, 956f
                  sub          t1, t3, s3
                  xori         s8, t0, 1458
                  bltu         a1, t0, 952f
948:              slti         zero, a1, -2033
                  blt          t6, a2, 958f
                  sltu         t5, t4, s11
951:              slt          s5, tp, sp
952:              add          s1, a4, t6
953:              slli         a4, a6, 14
                  bne          s1, a5, 962f
                  bltu         a7, s11, 966f
956:              bne          t4, ra, 961f
                  sra          s10, t1, s5
958:              sra          s10, t6, t3
                  add          t4, s1, gp
                  sltiu        t0, gp, -992
961:              nop
962:              srli         s5, s2, 8
                  ori          gp, s10, -868
                  srai         s0, gp, 18
                  auipc        tp, 63990
966:              and          sp, s9, t2
                  srli         s3, s4, 20
                  slt          s10, s5, a2
                  sra          gp, s9, s4
                  bne          s7, t5, 976f
                  andi         ra, t1, 444
                  beq          t2, s5, 977f
                  and          s10, a4, sp
                  slli         t5, a5, 25
                  beq          s6, s11, 990f
976:              ori          s11, a5, 166
977:              nop
                  bge          s8, s11, 991f
                  sltiu        s4, s2, -790
                  beq          t3, s6, 988f
                  xor          sp, a2, s4
                  addi         s5, s9, -457
                  slt          s6, sp, s2
                  auipc        s0, 40783
                  lui          t4, 288808
                  bge          a4, s5, 1002f
                  bge          gp, s6, 999f
988:              sub          a6, t5, a6
                  bge          s3, s6, 1005f
990:              bgeu         s0, s1, 1001f
991:              sll          s8, t4, s0
                  sltiu        t2, s2, 1571
                  slti         s0, t6, -712
                  bltu         a0, s2, 1004f
                  sub          tp, s5, zero
                  xori         s8, s4, 412
                  add          ra, sp, a1
                  slt          zero, zero, sp
999:              sltiu        s0, s1, 358
                  sll          gp, a1, s4
1001:             lui          t5, 882241
1002:             add          a6, s0, s9
                  add          s0, s7, s7
1004:             bgeu         s1, a3, 1009f
1005:             srl          gp, s1, tp
                  ori          s7, s6, -995
                  ori          a6, t3, 2019
                  beq          a7, s4, 1019f
1009:             add          t1, s3, ra
                  slti         zero, s8, 197
                  auipc        s10, 469548
                  sub          a2, a4, a1
                  xor          t1, tp, tp
                  andi         t0, s11, -621
                  sra          t1, t4, s4
                  sll          a7, zero, a7
                  ori          s10, t0, 430
                  nop
1019:             ori          a1, s11, 458
                  or           s11, t4, s5
                  xor          a3, sp, tp
                  bge          t4, s0, 1035f
                  slli         t1, t5, 16
                  nop
                  bgeu         t0, s9, 1032f
                  bgeu         t1, s2, 1038f
                  ori          ra, s5, -657
                  sub          tp, a4, s3
                  bne          a1, a7, 1030f
1030:             sll          a0, s0, t5
                  addi         t5, zero, -551
1032:             beq          s8, s7, 1042f
                  xor          s2, s2, tp
                  bne          s7, s10, 1038f
1035:             srl          t2, s9, a2
                  beq          t6, t3, 1050f
                  sub          ra, s5, s0
1038:             sll          s2, t4, t1
                  sltu         a0, s7, a5
                  sll          t5, s0, a0
                  srli         a6, t5, 22
1042:             sltiu        ra, s5, -609
                  srl          a1, s9, t1
                  bne          a2, a1, 1056f
                  sra          s7, t4, a6
                  sra          s0, t6, s9
                  xor          s4, s10, t0
                  slt          t2, s11, s1
                  lui          a4, 66602
1050:             nop
                  bltu         s11, gp, 1056f
                  and          s2, s1, s1
                  slt          a3, t4, a5
                  sub          s5, s2, s5
                  beq          t4, ra, 1072f
1056:             or           ra, s6, s2
                  andi         s0, a7, -810
                  xor          a3, t6, a5
                  sltiu        a3, a5, -579
                  beq          a7, s6, 1068f
                  add          a5, gp, ra
                  slti         a1, s10, 959
                  slt          s6, s2, tp
                  bgeu         s9, tp, 1075f
                  beq          s2, sp, 1074f
                  add          a0, a3, sp
                  slt          s4, gp, s11
1068:             srl          t2, ra, s2
                  srai         s2, tp, 21
                  sltu         zero, s2, a2
                  srl          s10, t2, s0
1072:             ori          s11, sp, 162
                  andi         a2, a7, -671
1074:             beq          s3, a4, 1085f
1075:             bne          gp, s2, 1085f
                  addi         a1, zero, -1755
                  nop
                  or           a1, ra, s4
                  slti         t0, a7, -391
                  ori          a3, t0, -2021
                  xori         s7, s3, 127
                  and          s5, a6, t5
                  or           s3, t4, s6
                  slti         a7, a6, -2045
1085:             add          s7, a3, a2
                  addi         a4, sp, 280
                  bge          a5, a7, 1101f
                  sra          s5, s9, s5
                  nop
                  blt          s5, a0, 1107f
                  srli         a0, s8, 5
                  or           s7, s1, s2
                  bne          a1, s9, 1102f
                  slli         t2, t4, 30
                  slt          s5, t5, tp
                  bltu         s6, a0, 1101f
                  xori         t0, t5, 1929
                  beq          a4, t2, 1110f
                  or           a7, s1, t3
                  blt          s11, a4, 1113f
1101:             auipc        s6, 846801
1102:             nop
                  xori         s1, s5, 643
                  sub          s6, s10, a0
                  bltu         s3, t1, 1112f
                  sltiu        s10, s4, 464
1107:             xori         t1, s0, 452
                  lui          s11, 888158
                  andi         t2, t5, 682
1110:             srl          gp, a6, gp
                  xori         s6, s2, 1236
1112:             blt          a0, s5, 1122f
1113:             slli         s5, a0, 11
                  or           gp, s1, s0
                  or           s7, s8, t3
                  or           s6, tp, s5
                  add          a2, t1, a3
                  and          s10, a5, s11
                  ori          t4, s2, -336
                  and          s3, a3, s9
                  slt          s11, s6, s11
1122:             blt          a1, zero, 1131f
                  lui          s6, 214349
                  add          a6, a7, a4
                  or           s4, s1, s2
                  sltu         s4, a0, s2
                  slt          s7, t3, t0
                  add          a0, s0, a6
                  sll          s4, sp, a7
                  ori          a5, s9, 1573
1131:             slti         sp, a1, 1036
                  beq          ra, sp, 1143f
                  bltu         a7, a0, 1145f
                  xor          s2, a5, tp
                  bge          a5, t5, 1151f
                  or           s3, zero, s10
                  srai         a2, s7, 15
                  srai         sp, t3, 31
                  bgeu         zero, tp, 1150f
                  add          gp, gp, s2
                  srai         a2, s2, 29
                  sra          t5, t5, t4
1143:             srli         a3, t1, 0
                  sltu         t1, s2, tp
1145:             xori         zero, s1, 716
                  bge          s7, zero, 1155f
                  sub          sp, s10, a4
                  xori         s1, a7, 951
                  srl          s5, t4, s6
1150:             slli         t5, t2, 0
1151:             bge          s6, s11, 1156f
                  sll          s2, s8, a0
                  bgeu         s7, t1, 1154f
1154:             slli         a7, t5, 29
1155:             andi         s2, s9, 1033
1156:             sltu         tp, a3, s11
                  add          s8, a6, t3
                  ori          a0, t6, -663
                  and          t1, s0, s5
                  slli         t5, s11, 17
                  sltiu        s8, tp, -627
                  beq          s5, s1, 1167f
                  beq          s5, s1, 1180f
                  sra          s5, a3, t1
                  bltu         gp, t5, 1173f
                  xori         a6, a5, 851
1167:             sra          s11, s6, t4
                  slli         s7, s6, 7
                  sltu         a3, s11, s7
                  xor          s2, s10, t4
                  auipc        s1, 565495
                  or           sp, a7, sp
1173:             addi         a7, t0, -442
                  beq          a0, gp, 1184f
                  slli         sp, s3, 15
                  nop
                  auipc        a4, 976995
                  srai         a4, a4, 28
                  srai         s11, tp, 14
1180:             blt          s4, a7, 1194f
                  bne          a3, zero, 1192f
                  andi         s3, gp, -887
                  auipc        a3, 599083
1184:             srli         a7, s1, 1
                  ori          a1, a3, -1928
                  add          s7, a1, s7
                  bne          a0, a0, 1197f
                  sltu         s6, t4, s7
                  xori         s7, s1, 1259
                  slli         s11, a2, 13
                  srl          a7, s0, s5
1192:             bltu         a2, s2, 1198f
                  lui          s5, 283082
1194:             xori         s11, t6, -144
                  bne          a0, gp, 1203f
                  xori         s8, t0, 2043
1197:             nop
1198:             bne          s8, s1, 1215f
                  sltiu        a4, s8, -1028
                  beq          s9, a4, 1204f
                  bne          t2, t2, 1214f
                  add          s0, s4, s2
1203:             bltu         t1, t0, 1214f
1204:             srai         s6, sp, 19
                  sll          t2, s0, s4
                  bgeu         s5, a2, 1220f
                  xor          a6, s2, a5
                  ori          a4, a6, -1063
                  sra          s0, gp, s11
                  la           s3, region_1+520 #start riscv_load_store_rand_instr_stream_0
                  sltiu        s10, t4, 1161
                  lbu          a3, -187(s3)
                  sll          sp, t4, s5
                  sltiu        ra, s9, -2006
                  sltu         t5, s1, a2
                  sb           s6, 160(s3)
                  srai         zero, a1, 22
                  lh           sp, 176(s3)
                  lhu          t4, 176(s3)
                  lb           s10, -111(s3)
                  sb           s9, 61(s3)
                  srl          a4, a7, t2
                  lb           a5, -57(s3)
                  lb           sp, -12(s3)
                  lb           a3, -160(s3)
                  slli         t0, s7, 30
                  lh           a6, -62(s3)
                  srai         s4, a5, 26
                  lh           t2, 146(s3)
                  sw           s2, 224(s3)
                  xor          a1, a4, s1
                  lb           gp, 207(s3)
                  sub          sp, s5, s11
                  sb           gp, 91(s3)
                  sw           s11, 88(s3)
                  nop
                  lb           s11, 195(s3)
                  lbu          s2, 83(s3)
                  sb           t5, -211(s3)
                  lbu          sp, 31(s3) #end riscv_load_store_rand_instr_stream_0
                  blt          s6, a5, 1225f
                  slli         s5, tp, 9
                  lui          s5, 743810
                  andi         s3, a3, -1008
1214:             sll          gp, s9, s5
1215:             srai         a5, ra, 28
                  srl          s5, s7, s2
                  and          s4, s3, s2
                  blt          t4, ra, 1230f
                  addi         a0, tp, -634
1220:             add          tp, a6, s2
                  bltu         t3, s11, 1237f
                  sltiu        s4, s5, -218
                  sltu         s4, sp, gp
                  slti         sp, t5, -131
1225:             addi         s1, t6, -1971
                  slt          t5, a6, s5
                  ori          t4, gp, 1806
                  sra          a0, a3, a4
                  sll          a7, t0, a7
1230:             sltu         s8, a2, a1
                  add          s7, t6, s10
                  addi         a1, a2, -177
                  auipc        t5, 687000
                  addi         s4, t3, -45
                  srai         t1, zero, 3
                  auipc        a5, 822364
1237:             ori          s10, s5, 509
                  sltiu        s10, ra, -1064
                  or           s8, s10, s1
                  addi         s1, a5, -1034
                  srli         s4, t4, 19
                  slt          s8, a2, s11
                  srai         t2, zero, 14
                  srli         t0, a1, 1
                  slli         a5, s3, 6
                  slt          s4, gp, a7
                  srl          t4, t0, t1
                  bge          t3, t1, 1258f
                  or           ra, a2, a0
                  bgeu         a4, s0, 1256f
                  bge          sp, zero, 1262f
                  sra          a0, gp, a5
                  srl          s1, t4, a7
                  auipc        t1, 899574
                  nop
1256:             bltu         s7, ra, 1269f
                  slti         a4, s2, 863
1258:             and          s3, a2, ra
                  slt          a0, t4, t0
                  bgeu         a3, zero, 1276f
                  sll          gp, a6, t4
1262:             srl          t1, ra, t0
                  ori          gp, t5, -1405
                  beq          sp, a3, 1278f
                  slti         s11, a2, 1820
                  srl          ra, s11, a1
                  sub          ra, s2, t6
                  sra          s6, t0, s9
1269:             beq          a0, sp, 1274f
                  bge          t6, a3, 1279f
                  srai         t4, s0, 4
                  auipc        a2, 718779
                  slli         s7, sp, 6
1274:             addi         t0, s11, -636
                  add          s10, t2, a0
1276:             bge          a2, a4, 1283f
                  bne          sp, s7, 1290f
1278:             or           s3, a3, a2
1279:             srli         gp, s6, 28
                  sltu         s3, tp, s3
                  sltu         tp, a3, ra
                  sltiu        ra, a2, -1524
1283:             bge          a3, gp, 1295f
                  sltiu        a6, s9, -1262
                  and          s8, s0, s10
                  bgeu         s4, s7, 1291f
                  xor          s4, a3, ra
                  lui          sp, 30559
                  xori         gp, s2, -612
1290:             auipc        a1, 349823
1291:             lui          s3, 185856
                  slli         a7, t0, 16
                  bne          a1, s0, 1305f
                  addi         t2, a5, -1457
1295:             sub          s6, t1, s9
                  ori          s3, a7, -753
                  bltu         t0, gp, 1311f
                  or           s1, s9, t0
                  beq          s11, s9, 1307f
                  slti         gp, a5, 1564
                  sra          s11, gp, t6
                  bltu         s0, t6, 1313f
                  slt          zero, a7, ra
                  addi         t5, s9, 1196
1305:             auipc        s10, 816311
                  bgeu         s3, s11, 1322f
1307:             sltu         tp, a3, s10
                  bgeu         t6, t5, 1323f
                  bltu         a2, s8, 1326f
                  sub          s10, zero, a3
1311:             srli         a4, s8, 29
                  xor          s6, s5, s2
1313:             sltiu        s7, s3, -999
                  blt          a2, s9, 1324f
                  sltiu        s7, a5, 102
                  andi         s1, s6, 579
                  lui          a3, 797469
                  ori          s1, tp, 1291
                  add          s10, a6, tp
                  bge          s3, t4, 1337f
                  slti         s2, gp, 931
1322:             sltu         ra, gp, s8
1323:             nop
1324:             slt          a0, a3, s4
                  slli         s1, s3, 27
1326:             srai         a6, s4, 2
                  srai         s11, s10, 15
                  xor          s6, t0, a6
                  andi         s6, s7, 1664
                  nop
                  xori         s3, a6, -1168
                  auipc        s3, 205520
                  ori          s7, a0, 1316
                  lui          a6, 1018527
                  beq          t2, s3, 1344f
                  addi         s8, t6, 388
1337:             srl          s4, a6, tp
                  sltiu        t1, a0, -470
                  bne          sp, t3, 1347f
                  nop
                  bne          s2, a7, 1351f
                  and          a3, s4, tp
                  bge          s7, s11, 1355f
1344:             addi         s4, s3, 442
                  sra          tp, a5, s6
                  sltiu        s5, t4, -282
1347:             beq          t6, s2, 1358f
                  addi         tp, t2, -406
                  andi         a5, tp, -1301
                  xori         t4, t6, -1837
1351:             auipc        tp, 414241
                  slli         s11, a5, 27
                  sltiu        a5, s10, -1106
                  beq          a2, s2, 1365f
1355:             lui          tp, 452642
                  xor          t2, a0, a7
                  xor          s2, s10, sp
1358:             srai         a1, t4, 9
                  slli         a7, a5, 26
                  sltu         s0, a3, s9
                  srai         a2, t2, 7
                  bltu         s5, a1, 1366f
                  blt          s6, zero, 1364f
1364:             xori         ra, s2, 1913
1365:             ori          a7, s5, 326
1366:             blt          tp, s0, 1371f
                  bne          t4, t1, 1382f
                  bltu         a5, sp, 1373f
                  xori         s11, t1, 870
                  sll          s11, gp, s3
1371:             addi         s3, t3, 819
                  auipc        s3, 647285
1373:             andi         t1, ra, 36
                  bgeu         t1, a4, 1390f
                  bltu         ra, a2, 1384f
                  or           a6, a3, s10
                  sltiu        a4, a7, -590
                  srl          t4, s0, tp
                  slli         ra, s0, 19
                  xor          sp, sp, t2
                  lui          a4, 705646
1382:             srl          s10, s11, a2
                  auipc        s4, 1005432
1384:             nop
                  srai         t2, gp, 18
                  bgeu         a0, t6, 1398f
                  srai         a6, a6, 16
                  add          s3, s2, a4
                  auipc        sp, 488101
1390:             beq          a1, t3, 1401f
                  sra          s8, s6, s8
                  slli         t1, s9, 5
                  bltu         s7, tp, 1407f
                  addi         s7, t3, -1105
                  auipc        t1, 1019564
                  sub          s7, a4, t2
                  srli         s0, gp, 24
1398:             nop
                  slt          s4, s2, t0
                  xor          s0, s8, s6
1401:             ori          zero, a5, 70
                  srai         t0, a5, 23
                  bltu         t2, a5, 1420f
                  addi         sp, s11, 456
                  slt          zero, a2, a4
                  bne          zero, s7, 1418f
1407:             addi         t2, a6, 691
                  sll          s8, s11, s1
                  bltu         t2, a6, 1420f
                  bge          s6, s1, 1415f
                  lui          a2, 770633
                  sltu         a1, s1, tp
                  xori         t5, s6, -100
                  bge          a6, a2, 1421f
1415:             sub          a7, s1, sp
                  auipc        sp, 688246
                  bne          zero, a3, 1428f
1418:             srli         t2, s8, 20
                  slt          s2, t5, a0
1420:             nop
1421:             nop
                  ori          a6, t6, -1694
                  addi         s3, s1, -600
                  bge          tp, s7, 1436f
                  bne          s0, a7, 1435f
                  blt          t2, s0, 1439f
                  sra          zero, s10, t1
1428:             blt          a7, a1, 1438f
                  nop
                  sra          s7, s10, s4
                  srai         s1, t5, 24
                  sll          a0, t0, t1
                  slli         t4, s11, 4
                  blt          s5, t4, 1451f
1435:             sub          t1, a0, s1
1436:             add          a7, sp, s1
                  sltiu        tp, sp, -61
1438:             sltu         s1, s5, s0
1439:             or           a7, s3, a5
                  slli         s6, gp, 16
                  srli         s8, sp, 31
                  andi         s5, t0, -1681
                  sll          s11, a0, t6
                  lui          t0, 644842
                  beq          t0, t1, 1455f
                  slti         s2, s2, 598
                  sll          t0, a2, a3
                  srai         a2, t0, 18
                  or           t0, s8, a3
                  slli         s7, t1, 12
1451:             lui          a0, 449502
                  sub          s2, t2, t0
                  srai         zero, s5, 8
                  or           s0, s7, t1
1455:             beq          t2, s4, 1469f
                  beq          t6, s1, 1464f
                  lui          t0, 492909
                  slt          t5, s9, t4
                  srai         s4, a6, 22
                  bge          t2, a6, 1465f
                  srl          zero, t0, s2
                  ori          a4, s0, -1949
                  srl          t0, a5, a1
1464:             lui          s10, 275310
1465:             add          a0, t4, s3
                  slti         zero, t4, 666
                  srl          s2, s1, s10
                  andi         t2, s2, 1920
1469:             srl          a6, s7, t4
                  or           t1, t3, s7
                  xori         s0, s7, 387
                  ori          sp, a4, -856
                  bgeu         s11, s1, 1486f
                  xor          s4, a7, s2
                  andi         t1, s3, -1388
                  nop
                  beq          s1, gp, 1483f
                  bgeu         a1, s0, 1479f
1479:             xori         s7, t2, 1943
                  sll          s8, a4, s7
                  or           s5, s11, sp
                  and          s11, s11, t5
1483:             bgeu         s3, s4, 1487f
                  andi         t4, ra, 211
                  bltu         a7, a0, 1494f
1486:             sltu         s8, a1, s10
1487:             sltiu        a7, t1, -683
                  sll          s8, t6, sp
                  slli         s4, t3, 1
                  nop
                  bgeu         s9, a1, 1507f
                  or           s10, t4, ra
                  srl          s5, s0, a4
1494:             blt          t4, s7, 1505f
                  slt          s4, t3, s4
                  xori         s7, a4, -378
                  add          ra, s3, t4
                  srl          a6, s7, zero
                  slti         a7, a4, 694
                  srli         s8, a3, 10
                  nop
                  sub          s2, a5, s9
                  addi         t1, a2, 286
                  and          a1, tp, a2
1505:             blt          gp, s10, 1513f
                  xori         a0, s0, -1676
1507:             srl          a3, sp, t6
                  xor          ra, a0, s5
                  blt          gp, a2, 1519f
                  bge          s8, s10, 1519f
                  and          a1, t4, t0
                  bgeu         t4, t4, 1518f
1513:             and          s3, a5, a4
                  and          a0, s2, s0
                  srai         s2, zero, 23
                  srl          s2, s7, s5
                  bge          t3, t6, 1527f
1518:             sub          s3, tp, a0
1519:             add          s5, t0, t5
                  slli         zero, t0, 11
                  beq          zero, s1, 1534f
                  lui          t4, 838850
                  sltiu        a6, a2, -523
                  srl          tp, tp, t5
                  slti         sp, tp, 915
                  auipc        t0, 256052
1527:             sub          s8, s3, s0
                  and          s7, s9, s3
                  add          s2, s0, t0
                  ori          s7, s1, -819
                  nop
                  slt          ra, a3, s11
                  beq          s1, sp, 1544f
1534:             srl          a5, t0, ra
                  sub          t1, zero, s8
                  beq          s0, s1, 1553f
                  slli         zero, a1, 9
                  blt          s10, gp, 1542f
                  bne          s0, a5, 1544f
                  ori          a0, zero, -855
                  sra          a5, s6, t2
1542:             slli         t4, a5, 1
                  or           s4, t2, gp
1544:             slti         a6, tp, -908
                  slt          a4, t0, t1
                  add          ra, t2, s3
                  bltu         zero, a2, 1561f
                  andi         s5, s0, 740
                  lui          s10, 824817
                  sltu         ra, zero, t3
                  auipc        a1, 621627
                  xori         s7, tp, 1918
1553:             slt          s7, s7, t4
                  beq          s4, a4, 1570f
                  bge          s9, t2, 1566f
                  srai         a6, sp, 26
                  bne          a7, sp, 1574f
                  bne          t5, a6, 1565f
                  bge          a5, a4, 1567f
                  and          a2, t3, t5
1561:             srl          a6, t6, t0
                  ori          s7, s10, -1060
                  lui          s6, 510042
                  srai         sp, t3, 27
1565:             sra          a0, t3, t3
1566:             srli         s2, a2, 25
1567:             ori          t5, a4, -243
                  addi         a0, s0, -782
                  and          t2, t1, a6
1570:             or           s8, t4, a3
                  sub          sp, t2, s9
                  bge          s10, a7, 1584f
                  bltu         a1, s7, 1586f
1574:             addi         s0, ra, -1748
                  nop
                  srai         a4, sp, 9
                  srli         s8, a3, 17
                  nop
                  xori         t1, s9, -1250
                  slt          t4, s10, s6
                  sltu         s10, a3, s4
                  xor          ra, s5, gp
                  slli         s8, s6, 19
1584:             sll          sp, zero, t0
                  bltu         t6, sp, 1586f
1586:             lui          a6, 913839
                  lui          sp, 770028
                  sltiu        a6, t1, 825
                  slti         s1, tp, -1759
                  xor          a7, s9, gp
                  and          s8, a3, s7
                  slti         t1, t5, -1898
                  sub          s6, s8, s5
                  ori          s4, t1, 1897
                  add          a1, t1, a4
                  sll          s1, t3, t4
                  bltu         s11, a4, 1613f
                  andi         t0, t5, -948
                  blt          s3, t5, 1609f
                  sll          t4, gp, s7
                  auipc        s8, 658507
                  and          s2, t2, a1
                  add          sp, s2, s6
                  ori          t2, a1, 658
                  bne          s2, a1, 1617f
                  bge          t2, t4, 1614f
                  ori          s2, s2, 1876
                  bge          s9, t6, 1613f
1609:             slti         t0, s4, 1310
                  sra          s0, s11, tp
                  addi         a2, tp, -872
                  sltiu        s5, ra, 347
1613:             srai         a3, s10, 29
1614:             slli         s11, zero, 11
                  bltu         s2, t2, 1626f
                  beq          s2, t3, 1625f
1617:             xori         sp, s1, 43
                  and          a4, zero, a5
                  sub          t2, s0, s9
                  bgeu         a4, a5, 1634f
                  srl          s2, t4, tp
                  sra          s7, t1, zero
                  lui          s0, 426189
                  slli         zero, a6, 5
1625:             xori         t2, s4, -1971
1626:             blt          s9, a1, 1631f
                  or           a1, s1, s9
                  blt          a1, t5, 1639f
                  and          a6, t0, s4
                  srl          t1, tp, a3
1631:             sra          s6, tp, s0
                  auipc        a2, 311582
                  or           t1, s5, s1
1634:             auipc        s5, 939067
                  srai         a3, a6, 27
                  slt          a2, a1, ra
                  xori         t1, a4, -1434
                  lui          a1, 36441
1639:             sll          tp, a2, sp
                  add          ra, a7, t4
                  srl          s8, t5, s5
                  bltu         s5, ra, 1657f
                  addi         t5, s2, 1373
                  slli         a4, s3, 7
                  beq          tp, a1, 1657f
                  sltu         a5, t3, s10
                  slli         s8, a7, 5
                  andi         t0, gp, 640
                  auipc        s0, 319232
                  andi         t1, s0, 1292
                  lui          t4, 683651
                  xori         s1, zero, -1365
                  xori         s8, sp, -1317
                  sll          s0, s5, a0
                  sltiu        t4, a6, 1182
                  nop
1657:             or           s3, a6, t5
                  bne          t6, a7, 1675f
                  ori          t5, a0, -664
                  and          s7, t6, a0
                  blt          a3, t6, 1676f
                  sra          s11, a2, s10
                  add          zero, a4, zero
                  xori         zero, s0, 575
                  bgeu         s8, t0, 1677f
                  bge          a6, s4, 1678f
                  srli         a1, a1, 20
                  slli         s8, ra, 17
                  bne          s5, s4, 1678f
                  ori          zero, zero, -1620
                  srl          tp, a7, t1
                  xori         s11, s6, -1167
                  sub          s2, s5, s0
                  srai         gp, t0, 13
1675:             blt          s5, a7, 1685f
1676:             beq          a2, s0, 1689f
1677:             sltiu        sp, a3, -966
1678:             bgeu         a6, a4, 1694f
                  sub          zero, a6, ra
                  blt          s8, s5, 1685f
                  ori          s2, tp, -1066
                  sltu         s4, a6, t2
                  and          t0, t3, t2
                  or           s11, s9, a4
1685:             bgeu         t1, a7, 1698f
                  nop
                  blt          t6, t5, 1697f
                  sltu         tp, s4, a6
1689:             srai         t4, gp, 18
                  xor          s11, s9, s8
                  sub          s11, t2, s6
                  slli         t2, s4, 20
                  slt          s8, a5, t0
1694:             slti         s2, a1, -1594
                  srli         a2, t6, 19
                  blt          a0, s7, 1710f
1697:             srli         a6, a1, 1
1698:             bltu         tp, s4, 1709f
                  lui          t2, 735368
                  xor          a6, t5, t6
                  beq          s9, a4, 1710f
                  sltiu        a7, ra, 987
                  bltu         t1, s9, 1710f
                  xor          s5, a6, s1
                  bgeu         s4, s7, 1710f
                  and          ra, t5, a4
                  srli         s2, s3, 3
                  blt          tp, s1, 1710f
1709:             bgeu         s6, s9, 1710f
1710:             sra          s5, s6, a4
                  lw           t5, 4(s9)
                  sltu         s1, tp, t6
                  slli         s0, a6, 10
                  sltu         s4, a7, t2
                  addi         s9, s9, 20
                  slti         t1, s11, -1307
2199:             addi x12, x30, 1
2199:             jalr x12, x12, 0
sub_2:            or           s10, a0, s11
                  srl          zero, s4, s2
                  sltu         t1, t1, s9
                  bne          a0, s9, sub_2_stack_p
sub_2_stack_p:    addi         s9, s9, -64
                  slt          t4, s8, s8
                  andi         s3, t1, -898
                  lui          t0, 616799
                  sw           t5, 4(s9)
                  sltiu        a5, a3, 1308
                  srl          s4, a5, t3
                  ori          t4, a7, 1288
                  sll          s10, a0, s0
                  la           s2, region_1+1607 #start riscv_load_store_rand_instr_stream_6
                  lhu          s6, -1(s2)
                  lb           s3, -13(s2)
                  nop
                  lbu          s7, 4(s2)
                  lh           s7, 13(s2)
                  add          a4, s0, zero
                  lbu          a2, 10(s2)
                  lui          sp, 64913
                  sh           s10, 15(s2)
                  nop
                  slli         a7, t0, 14
                  sb           a2, 10(s2)
                  lb           t5, 16(s2)
                  lbu          a4, 4(s2)
                  sh           s9, 9(s2)
                  lbu          tp, -14(s2)
                  sh           a1, 11(s2)
                  slli         s11, s5, 4
                  sll          t4, a6, t3
                  lbu          tp, -9(s2)
                  add          s0, a5, zero
                  lb           a7, 9(s2)
                  lw           s7, -7(s2)
                  lbu          s5, -13(s2)
                  nop
                  add          t5, a2, s1
                  lb           a5, -2(s2)
                  lbu          gp, -8(s2)
                  lb           s3, -14(s2)
                  addi         t5, a0, -676
                  sb           a5, -14(s2)
                  sltiu        s3, gp, -521
                  andi         s4, s10, 749
                  lb           t1, 8(s2)
                  xor          s10, a5, tp
                  addi         sp, s3, 1004
                  lhu          a5, -1(s2)
                  sll          t0, s4, t1
                  lb           gp, 16(s2)
                  lb           a1, 15(s2)
                  lbu          a0, 14(s2)
                  sb           s2, -1(s2)
                  lbu          s8, -7(s2) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+203 #start riscv_load_store_rand_instr_stream_9
                  sb           a0, -2(sp)
                  lbu          a4, 3(sp)
                  lbu          a0, 6(sp)
                  sb           s3, -12(sp)
                  slt          a6, tp, gp
                  sb           s1, 16(sp)
                  sra          t1, zero, zero
                  sll          a4, a4, a2
                  srai         a7, s11, 20
                  nop
                  lb           a6, 11(sp)
                  auipc        tp, 686916
                  lh           s1, -7(sp)
                  lb           a5, 4(sp)
                  slti         a2, s11, 1886
                  sb           s5, -6(sp)
                  srli         t5, s11, 7
                  lh           a4, 1(sp)
                  lui          a0, 22454
                  lbu          s4, 12(sp)
                  lb           s8, 7(sp)
                  srai         a4, a1, 1
                  auipc        a5, 962230
                  lb           s5, -1(sp)
                  add          s4, s6, tp
                  sw           s6, 5(sp)
                  sh           a1, -11(sp)
                  lbu          t4, -5(sp)
                  andi         s8, gp, 0
                  slt          a7, s11, a4
                  lb           tp, -10(sp)
                  srai         s11, s7, 9
                  sltiu        s2, t5, 1357
                  lb           t5, -6(sp) #end riscv_load_store_rand_instr_stream_9
                  la           a6, region_0+1137 #start riscv_load_store_rand_instr_stream_7
                  sltiu        s8, s8, 1231
                  lhu          s2, -7(a6)
                  and          s10, a3, zero
                  sb           t6, -8(a6)
                  sb           s8, -14(a6)
                  addi         s3, t1, 902
                  lb           s10, 14(a6)
                  ori          s7, s1, -21
                  sll          s5, zero, s0
                  lb           zero, -3(a6)
                  srai         a2, s11, 28
                  lb           a0, 14(a6)
                  srli         ra, s6, 9
                  sb           gp, -9(a6)
                  sb           gp, 0(a6)
                  or           a0, t5, t5
                  srl          t4, s3, s5
                  nop
                  lbu          s2, -10(a6)
                  srl          s8, zero, s0
                  addi         zero, a0, -1375
                  lh           a0, 1(a6)
                  ori          s2, s4, -136
                  srli         a3, s1, 5
                  and          s4, s4, t1
                  addi         t0, a6, 1900
                  slt          s8, s7, sp
                  addi         t0, s6, -787
                  sltu         gp, a6, a5
                  lb           sp, 11(a6)
                  lb           s3, 6(a6) #end riscv_load_store_rand_instr_stream_7
                  la           a4, region_1+675 #start riscv_load_store_rand_instr_stream_1
                  auipc        s10, 531945
                  and          a6, t5, a4
                  sb           s3, -6(a4)
                  lh           s7, 85(a4)
                  srai         s3, s7, 8
                  sb           s8, -115(a4)
                  sb           gp, -232(a4)
                  lb           s8, 79(a4)
                  lbu          gp, 150(a4)
                  srl          s10, t0, a2
                  lui          s2, 234176
                  sh           sp, 153(a4)
                  sh           a7, -229(a4)
                  lb           a1, -154(a4)
                  slli         a0, zero, 12
                  auipc        s11, 532054
                  lb           s6, -182(a4)
                  lb           zero, 58(a4)
                  lbu          t2, 162(a4)
                  lbu          s7, 4(a4)
                  lh           s6, -183(a4)
                  lb           s11, 44(a4)
                  lui          s11, 666793
                  addi         a0, s11, -1645
                  lbu          a5, 138(a4)
                  lb           s1, 147(a4)
                  lui          s8, 985303
                  lbu          ra, 108(a4)
                  sh           s10, -3(a4) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_1+438 #start riscv_load_store_rand_instr_stream_5
                  lbu          s10, 35(gp)
                  sltiu        s5, s5, 1281
                  nop
                  lbu          tp, 57(gp)
                  sra          s5, a2, t0
                  sltiu        a7, t6, 1328
                  auipc        s0, 350717
                  slli         a5, t5, 27
                  lb           t1, 11(gp)
                  add          s5, ra, a5
                  sh           a0, 14(gp)
                  add          zero, s1, s5
                  sb           tp, 15(gp)
                  slt          a2, a2, tp
                  lb           a2, -31(gp)
                  sb           a5, -61(gp)
                  sb           s9, -17(gp)
                  lbu          a4, -55(gp)
                  slti         a2, a7, -1556
                  ori          s11, s6, 1021
                  or           s5, ra, s5
                  xori         t2, s0, 1453
                  srli         s0, s10, 0
                  andi         tp, a0, 53
                  slti         t0, s1, -1731
                  andi         a3, t3, 1482
                  lh           s3, 36(gp)
                  or           s11, s7, a2
                  nop
                  lh           tp, 54(gp)
                  ori          s3, t4, -337
                  srli         a0, a4, 27
                  lbu          a5, -17(gp)
                  sb           s7, -23(gp)
                  ori          ra, a7, -1402
                  slti         a2, a0, -25
                  sub          s8, s8, s9
                  and          s10, a4, s0
                  lb           s11, 26(gp)
                  sb           t2, -55(gp)
                  sltu         s10, s4, s5
                  sb           a7, 43(gp)
                  addi         s5, s1, -1624
                  lb           ra, 56(gp)
                  lb           a3, -1(gp)
                  lhu          a0, -32(gp)
                  sb           s11, 36(gp)
                  sub          s10, a1, a2
                  lh           a1, -52(gp) #end riscv_load_store_rand_instr_stream_5
                  la           tp, region_1+569 #start riscv_load_store_rand_instr_stream_3
                  sh           s7, -59(tp)
                  sw           t0, -45(tp)
                  sw           a7, 55(tp)
                  lb           zero, 60(tp)
                  lb           ra, 1(tp)
                  slt          zero, a5, s8
                  lb           t4, 42(tp)
                  lb           gp, 42(tp)
                  srai         t1, s6, 20
                  lui          s11, 516046
                  lbu          a3, -6(tp)
                  slt          s8, s3, t1
                  addi         s5, a6, 73
                  auipc        a5, 235096
                  and          a0, sp, a4
                  sll          t0, a1, s8
                  lbu          gp, -32(tp)
                  lbu          s10, 48(tp)
                  sltu         s4, a2, gp
                  lbu          a4, -16(tp)
                  lbu          a4, 46(tp)
                  srli         t1, s2, 7
                  and          a7, s2, a7
                  lhu          a0, -17(tp)
                  sb           s5, -51(tp)
                  and          gp, s1, sp
                  lbu          s4, 48(tp)
                  sra          t4, s8, a6
                  lb           zero, -52(tp)
                  lbu          a6, -48(tp)
                  lbu          s1, -26(tp)
                  srli         t4, a7, 20
                  sb           t1, -36(tp)
                  lb           s10, 62(tp)
                  lhu          sp, 27(tp)
                  slli         s1, a2, 10
                  srli         a7, ra, 25
                  ori          a5, zero, 1859
                  sltiu        t4, s11, -1210
                  lh           t4, -35(tp)
                  sh           s5, -49(tp)
                  sltiu        a1, t4, -1419
                  addi         t5, t5, -14
                  xor          a5, a7, s1
                  sh           t4, -51(tp)
                  sb           zero, -40(tp)
                  sb           s1, -39(tp)
                  slt          s0, s10, s5
                  lbu          t4, 22(tp)
                  auipc        a3, 802642
                  sltiu        t0, s6, 491
                  sh           s8, 7(tp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1599 #start riscv_load_store_rand_instr_stream_0
                  sb           s2, 15(sp)
                  lb           t1, 4(sp)
                  lbu          s8, -8(sp)
                  lb           t1, 2(sp)
                  lhu          s3, -13(sp)
                  srl          gp, t4, gp
                  and          zero, tp, sp
                  lb           s8, -8(sp)
                  lbu          s2, -12(sp)
                  lhu          s11, -3(sp)
                  lh           a1, 5(sp)
                  lbu          tp, 4(sp)
                  sra          a4, t1, a1
                  sb           s3, 3(sp)
                  auipc        s4, 70792
                  add          a4, s0, s2
                  sb           s2, -11(sp)
                  sb           a3, 4(sp)
                  sb           a3, 10(sp)
                  sh           s7, 9(sp)
                  lh           gp, -5(sp)
                  sll          s10, s5, t4
                  lbu          a2, 9(sp)
                  sb           a4, 12(sp)
                  add          ra, t2, a5
                  auipc        t5, 463692
                  nop
                  lhu          s11, -7(sp)
                  sub          t1, s5, s4
                  sra          a1, s1, sp
                  lbu          s0, 12(sp)
                  lbu          a5, -4(sp)
                  lb           t0, -8(sp)
                  lhu          t1, 3(sp)
                  lh           s4, 11(sp)
                  sh           a4, -7(sp)
                  lbu          t2, -1(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1418 #start riscv_load_store_rand_instr_stream_2
                  lbu          ra, -7(sp)
                  xor          s1, t6, s4
                  lb           ra, 48(sp)
                  lhu          zero, 16(sp)
                  slli         a3, ra, 12
                  lhu          s4, 0(sp)
                  lbu          s8, -27(sp)
                  srli         a0, s9, 10
                  sb           a1, 17(sp)
                  lbu          s11, 29(sp)
                  add          s0, t0, zero
                  ori          a7, s5, -966
                  sb           s10, 32(sp)
                  slti         a7, s2, -1839
                  lb           s4, 3(sp)
                  sb           t3, 54(sp)
                  andi         t0, s9, 737
                  sb           tp, 63(sp)
                  lw           a3, 22(sp)
                  lbu          t1, 10(sp)
                  lb           a4, -47(sp)
                  sb           s6, -43(sp)
                  lh           s10, 64(sp)
                  srl          t4, a2, a2
                  sh           s1, -20(sp)
                  slti         s3, s0, -379
                  lhu          a3, -60(sp)
                  lh           a3, -36(sp)
                  xori         s4, s6, -840
                  sb           t4, 33(sp) #end riscv_load_store_rand_instr_stream_2
                  bgeu         gp, s8, 19f
                  sll          t1, s6, s7
                  andi         s3, s8, -1816
                  xor          s0, a4, a6
                  auipc        s2, 100764
                  add          s11, s8, ra
                  or           sp, zero, s6
                  add          a4, s4, t0
                  blt          t5, a3, 13f
                  sub          t4, s3, t1
                  bltu         t3, s11, 30f
                  addi         zero, a5, -640
                  sltiu        a6, s1, -468
13:               ori          t0, s9, 513
                  and          s4, s4, a0
                  addi         a5, sp, 1268
                  or           a5, t0, a4
                  or           a2, t0, s4
                  sub          s8, s7, s8
19:               slti         a2, s3, 1907
                  srli         t4, s1, 24
                  add          s0, s7, s0
                  nop
                  ori          tp, t5, 374
                  sll          gp, a6, t1
                  xor          s8, s7, s10
                  sll          tp, a4, s11
                  bltu         t0, t5, 33f
                  bge          s8, s1, 45f
                  bge          a1, s5, 38f
30:               or           gp, t1, a4
                  sub          gp, ra, a4
                  addi         t2, s9, -110
33:               slt          a1, tp, a2
                  bltu         a2, s8, 46f
                  lui          a0, 52448
                  and          a7, a5, a5
                  sltiu        a5, s8, 1158
38:               slli         t2, a5, 14
                  slt          a3, a3, s10
                  srl          t5, t1, a0
                  srl          s1, t0, a3
                  blt          t0, ra, 48f
                  srli         gp, t4, 21
                  slli         s4, s4, 1
45:               slti         a3, a6, -1171
46:               andi         s1, a4, -689
                  xori         a4, s2, -698
48:               srai         s2, a4, 18
                  xori         s2, s7, -793
                  addi         a3, t3, 307
                  or           t5, s4, s3
                  slli         t2, s4, 23
                  sltu         a5, a3, s1
                  slli         a2, s2, 20
                  srl          t4, s0, s5
                  nop
                  ori          t0, gp, 1953
                  beq          ra, s5, 72f
                  xori         t5, s11, -495
                  auipc        s7, 586811
                  ori          s3, s5, -591
                  bgeu         s7, a2, 79f
                  bgeu         s1, s7, 70f
                  beq          a3, s10, 69f
                  sll          a7, a1, t2
                  slti         s5, s0, 1396
                  srl          a4, ra, s10
                  slli         ra, t3, 2
69:               ori          t0, a6, 802
70:               andi         a5, s8, 770
                  srli         s2, t2, 3
72:               auipc        t5, 755360
                  sra          a5, t3, s3
                  sra          tp, s11, t0
                  sltiu        s11, s9, -1719
                  sltiu        s2, s0, 748
                  xor          s4, s11, s9
                  srl          s4, a1, s8
79:               nop
                  bge          t2, t0, 94f
                  xori         t4, a6, -171
                  bge          s4, gp, 90f
                  srai         s4, a0, 5
                  slli         a2, s4, 4
                  srl          t4, s6, t2
                  slti         a0, a6, -846
                  xori         a3, t6, -530
                  bne          a2, zero, 103f
                  sra          s2, t4, s1
90:               sra          tp, s0, a2
                  sll          a3, s5, t4
                  bltu         s5, t3, 95f
                  auipc        sp, 927893
94:               srli         s0, a0, 0
95:               and          gp, a2, a4
                  nop
                  add          a4, s1, t3
                  auipc        t5, 19591
                  sll          s2, a4, s10
                  srai         a4, a2, 18
                  nop
                  nop
103:              auipc        a0, 337388
                  addi         s7, tp, -1939
                  srai         s2, a0, 24
                  or           s4, t2, t3
                  slli         s0, t4, 28
                  auipc        a6, 681892
                  xori         s2, s10, 1163
                  sub          ra, s4, t1
                  lui          s0, 754267
                  sll          tp, t6, a0
                  sltu         t4, s5, ra
                  slti         zero, zero, -1315
                  blt          s2, tp, 129f
                  sub          zero, gp, t3
                  bne          s0, a0, 131f
                  and          t0, t2, a5
                  slti         sp, sp, -1659
                  and          a1, s2, s10
                  blt          t5, s6, 131f
                  and          a4, s0, ra
                  bltu         s10, s6, 142f
                  add          ra, gp, s1
                  slt          a1, t6, s6
                  slti         zero, zero, -2040
                  beq          s9, a3, 145f
                  andi         a2, s9, -221
129:              blt          zero, t6, 146f
                  addi         s6, s7, 507
131:              add          a0, t1, t0
                  bge          s0, t4, 133f
133:              lui          a7, 37476
                  bge          t1, s7, 151f
                  slli         s6, s8, 8
                  sltu         a3, s6, s2
                  bgeu         t1, s0, 143f
                  sra          s1, tp, a5
                  srai         s7, s5, 29
                  blt          t2, ra, 153f
                  nop
142:              srai         s5, a5, 24
143:              lui          s2, 849112
                  andi         a2, s7, -817
145:              slt          s10, s0, s4
146:              sltu         a3, a7, a4
                  bge          t0, t0, 153f
                  bne          s4, t5, 150f
                  and          a1, s5, zero
150:              and          a2, a1, s10
151:              nop
                  bge          a1, t4, 167f
153:              beq          t4, a5, 154f
154:              srl          s4, gp, t3
                  sll          s5, t6, t5
                  or           t1, tp, s5
                  auipc        sp, 433138
                  and          t1, s3, t4
                  and          t4, t1, a5
                  lui          t2, 400592
                  bgeu         s6, a4, 175f
                  and          t5, t1, t3
                  lui          s1, 580675
                  addi         s4, s10, -1750
                  sra          tp, s2, s5
                  bltu         t3, t5, 183f
167:              beq          t6, t2, 184f
                  sra          a1, t2, t1
                  sltu         a0, s1, t3
                  xor          s1, a4, s11
                  slli         s6, a5, 3
                  sltu         s10, tp, s8
                  slli         a1, t1, 31
                  beq          a4, t1, 193f
175:              slli         t1, s5, 20
                  xori         sp, a0, 1085
                  or           s8, t1, t3
                  beq          t5, s5, 196f
                  auipc        a4, 384087
                  addi         s3, zero, -342
                  xori         t0, a6, -1469
                  add          zero, s4, s11
183:              bne          s7, a7, 184f
184:              sra          sp, a4, s8
                  srli         a3, a0, 25
                  andi         zero, s5, 778
                  auipc        s6, 143140
                  srli         tp, ra, 10
                  andi         s8, s5, 725
                  addi         a2, sp, -1695
                  sub          sp, tp, ra
                  bne          s6, s4, 209f
193:              add          s0, t0, s4
                  xori         s8, zero, 1533
                  sra          s3, a5, ra
196:              xori         ra, a5, -639
                  addi         sp, s6, -1201
                  ori          a7, t6, 22
                  blt          t5, s4, 201f
                  sll          s11, s9, s0
201:              sltiu        t5, s10, 1717
                  sll          t0, s6, ra
                  blt          tp, a4, 216f
                  bgeu         a5, t5, 218f
                  andi         t0, a1, -743
                  addi         a7, a0, 656
                  blt          s5, s5, 222f
                  xor          gp, t5, s8
209:              blt          s1, t6, 228f
                  slti         t2, s5, 531
                  slti         zero, a0, -223
                  blt          t4, t4, 217f
                  nop
                  sltiu        s7, a3, -539
                  sub          t1, t6, a2
216:              sra          t5, gp, a3
217:              beq          sp, gp, 218f
218:              blt          s6, tp, 230f
                  slti         s2, t2, 1522
                  ori          s5, a5, -1196
                  andi         s5, s4, 1048
222:              xori         t4, s1, 940
                  srl          a3, s6, t3
                  srai         a3, a6, 16
                  srli         s11, s8, 10
                  slli         a6, a7, 19
                  slt          s0, a2, a1
228:              and          s6, zero, a2
                  sra          a6, t0, a3
230:              slt          a2, a0, s2
                  srai         s10, t6, 29
                  sub          s7, ra, a7
                  slli         s11, gp, 31
                  xori         t5, zero, -648
                  andi         a2, a2, -1073
                  bge          a7, t6, 243f
                  sltu         ra, zero, s2
                  xori         s11, gp, -2035
                  sll          s8, ra, s4
                  slli         t1, t3, 8
                  srai         gp, s7, 15
                  auipc        t0, 998023
243:              srli         s4, sp, 31
                  blt          s9, s5, 250f
                  sltiu        ra, s5, -765
                  bgeu         t4, zero, 252f
                  beq          s6, s3, 264f
                  andi         s4, a2, -1908
                  and          s10, s8, t2
250:              bltu         sp, s3, 259f
                  and          zero, s11, a7
252:              slli         s11, s6, 12
                  xor          ra, s6, s8
                  andi         t0, sp, -1100
                  nop
                  or           s1, t3, s0
                  sltiu        a6, t2, 1054
                  andi         a2, s7, -2026
259:              beq          gp, t3, 273f
                  slli         s7, s0, 11
                  auipc        s5, 577462
                  sub          s10, a5, a4
                  beq          s0, s5, 269f
264:              srai         s10, a6, 1
                  slt          s1, s7, s5
                  sll          s8, s11, s10
                  srli         t5, s2, 16
                  sll          s8, t2, t5
269:              slti         t0, t6, -992
                  bltu         sp, s9, 273f
                  sra          ra, a3, zero
                  bne          s10, a6, 282f
273:              lui          tp, 210755
                  xor          t4, s4, s10
                  srl          a1, t4, s7
                  sll          a6, s1, tp
                  lui          t0, 331993
                  blt          t3, s0, 286f
                  slli         a7, sp, 31
                  or           s10, a0, s6
                  ori          sp, s9, 604
282:              bltu         t1, t4, 288f
                  xor          s2, s7, a7
                  slt          t1, s8, s9
                  sub          tp, ra, t0
286:              lui          a7, 672847
                  sra          s10, a1, a1
288:              auipc        s1, 920698
                  xori         zero, zero, 574
                  nop
                  ori          s11, s0, -718
                  srai         t0, s1, 29
                  ori          tp, t5, -1675
                  srl          t2, t3, t4
                  bne          s10, s0, 310f
                  xor          s2, a1, sp
                  xori         s6, s9, 159
                  blt          t4, a6, 303f
                  andi         s8, a4, 485
                  bne          a1, s7, 320f
                  addi         s10, a1, 965
                  bge          a1, s3, 316f
303:              ori          s0, tp, -1243
                  xori         s5, s10, 1831
                  nop
                  slli         a6, s1, 12
                  blt          a1, a5, 320f
                  sltu         s5, s2, s7
                  sub          t5, a2, s8
310:              lui          ra, 115794
                  bgeu         s3, a5, 313f
                  sll          s4, s11, t6
313:              sll          a2, ra, zero
                  ori          a4, a6, -1312
                  bne          s5, t0, 330f
316:              bltu         s2, tp, 324f
                  xor          s6, s1, a7
                  auipc        t4, 216506
                  xor          s2, t6, tp
320:              blt          a7, t5, 334f
                  sltu         ra, s1, s8
                  sub          s6, a4, a4
                  slli         zero, a0, 17
324:              sltu         tp, s3, s1
                  lui          s6, 728086
                  sra          s1, s3, a2
                  srli         a1, s6, 10
                  srli         s11, t0, 6
                  sltiu        s1, t0, 1959
330:              slti         a2, s3, 93
                  srai         a6, s1, 12
                  xori         t0, s7, 87
                  srli         gp, a3, 25
334:              slt          a0, a7, tp
                  ori          s0, zero, -471
                  bge          t4, s7, 341f
                  beq          a2, a1, 343f
                  bne          t6, s2, 343f
                  or           s0, t6, s4
                  blt          t3, s6, 343f
341:              or           s2, sp, s10
                  nop
343:              sra          t5, t1, s10
                  ori          zero, gp, 615
                  lui          t5, 314664
                  beq          s4, zero, 360f
                  sltu         s10, ra, s3
                  ori          s6, t6, 1174
                  bltu         tp, ra, 364f
                  sltu         t2, s4, a5
                  sltu         s5, a1, a2
                  sll          a2, s6, s1
                  or           s6, t6, s2
                  xori         s3, s6, -984
                  beq          a2, a1, 372f
                  srli         s8, t6, 31
                  nop
                  xor          gp, s9, s3
                  xori         gp, a6, -1775
360:              ori          t0, tp, 1584
                  addi         a0, s3, 297
                  blt          t5, a4, 381f
                  sltu         s10, s0, a2
364:              bgeu         s3, gp, 370f
                  bgeu         s3, s0, 379f
                  bne          a5, a5, 383f
                  sltiu        s10, a2, -786
                  bgeu         s8, a5, 382f
                  bltu         t2, t2, 389f
370:              beq          t1, t5, 387f
                  bge          s4, t2, 372f
372:              srli         a2, s1, 5
                  sltiu        s11, ra, -911
                  xori         s6, gp, -1598
                  and          s5, s2, s11
                  slli         t4, a7, 17
                  sub          a7, t0, t0
                  sltiu        s4, ra, 415
379:              or           s7, a7, s1
                  slt          t4, t6, zero
381:              slli         t2, a6, 5
382:              ori          ra, zero, 1095
383:              slti         s10, t6, 614
                  addi         a7, a6, 1993
                  nop
                  bltu         s0, s5, 392f
387:              srai         s1, s8, 0
                  xori         gp, a1, -1807
389:              bne          t6, a2, 396f
                  xor          a1, s11, a6
                  bne          a3, s6, 403f
392:              slli         t2, t2, 12
                  bne          sp, s4, 399f
                  srl          s7, a1, t3
                  lui          s4, 451591
396:              slli         a4, s5, 21
                  andi         t5, s3, -1386
                  addi         t4, s9, 1172
399:              bltu         s6, t3, 417f
                  add          a3, s7, s9
                  srli         a0, t0, 5
                  ori          s0, a7, -563
403:              bne          s5, s11, 413f
                  add          s0, s5, sp
                  srli         gp, a7, 28
                  srai         ra, tp, 12
                  addi         gp, s2, -454
                  sltiu        s2, a1, -256
                  srl          t0, s3, s10
                  add          tp, a0, a1
                  andi         tp, t2, -1376
                  slt          t1, s5, a0
413:              sltu         a7, a7, a0
                  lui          s1, 203120
                  slti         tp, a0, 1108
                  slti         s3, s6, -1542
417:              bge          s7, s11, 436f
                  bltu         s5, t0, 435f
                  xor          t0, a2, ra
                  sra          a3, a5, t2
                  xor          t2, t4, a2
                  or           ra, t4, sp
                  srli         t1, s10, 22
                  slt          s0, t4, a5
                  add          s10, t0, a7
                  lui          s2, 769320
                  and          s8, s7, a4
                  ori          s11, s1, -20
                  slt          a3, s10, t4
                  sltiu        t5, s6, -1272
                  bgeu         gp, a3, 432f
432:              and          s11, s2, s4
                  slt          s8, gp, s1
                  slt          t4, s4, a1
435:              sll          s0, s10, ra
436:              sltiu        ra, s7, -945
                  bgeu         t6, a6, 446f
                  lui          t4, 69623
                  srai         a7, tp, 16
                  srli         tp, s0, 28
                  bne          gp, s4, 460f
                  andi         a6, t4, 1516
                  add          a3, s8, s11
                  and          sp, t5, s1
                  addi         s0, s11, 108
446:              nop
                  bltu         sp, t1, 448f
448:              slt          t5, a4, a3
                  srai         a6, s9, 17
                  xori         s6, s10, 678
                  sll          s4, t1, s0
                  slli         ra, s8, 10
                  nop
                  sltu         a5, a7, a0
                  xor          s3, s6, s5
                  sltu         t4, t4, a0
                  xori         s1, tp, -950
                  blt          s11, sp, 475f
                  bltu         s6, t2, 465f
460:              sll          t0, zero, s8
                  xori         a0, a7, -1328
                  slli         ra, a2, 12
                  xori         a2, ra, 287
                  nop
465:              beq          t3, a4, 482f
                  srli         s1, zero, 18
                  bge          s5, s2, 481f
                  slt          s8, sp, t6
                  sltu         a4, s7, a4
                  xor          a3, s8, ra
                  sll          t4, s7, a6
                  add          s5, a4, a1
                  srl          tp, a6, t1
                  sltiu        t2, s3, -105
475:              add          s6, t5, s7
                  auipc        t4, 714546
                  sll          a6, s8, a5
                  addi         zero, s8, -1429
                  and          s0, a7, t5
                  sll          a5, s1, s6
481:              add          zero, tp, s4
482:              sll          a2, t1, s4
                  bne          t6, t6, 496f
                  srli         a7, s3, 4
                  or           s7, a7, zero
                  lui          a7, 60245
                  addi         ra, gp, -649
                  bne          s9, a2, 494f
                  bne          s8, gp, 498f
                  bltu         tp, t5, 495f
                  xor          ra, s9, s10
                  sltu         a3, a7, t5
                  sltiu        sp, s8, -1087
494:              andi         a5, s1, 1479
495:              lui          s7, 202524
496:              sub          a1, s1, s5
                  xor          s7, s6, sp
498:              lui          t2, 161214
                  nop
                  slt          s10, a6, s9
                  bltu         s9, s7, 503f
                  sra          a0, s6, a2
503:              and          a0, a2, zero
                  bltu         t5, tp, 510f
                  addi         s8, a0, 1293
                  beq          a1, sp, 513f
                  srl          a7, sp, s2
                  srai         s7, t0, 28
                  srli         gp, s0, 12
510:              sltiu        s1, a6, -1501
                  and          s2, s6, s10
                  andi         a2, s5, -92
513:              bne          t1, a7, 527f
                  srli         tp, a0, 7
                  sll          s11, a1, s4
                  bge          a3, s2, 533f
                  slti         a1, sp, 790
                  bltu         s8, s11, 521f
                  sra          s1, t4, a7
                  sltu         s11, t4, s9
521:              xor          a6, s0, t4
                  bgeu         s2, s10, 523f
523:              addi         a3, zero, -584
                  or           a0, gp, t3
                  slli         s8, t0, 13
                  sra          a1, s2, a2
527:              bge          t5, s5, 542f
                  blt          t0, zero, 533f
                  slti         gp, a5, -33
                  beq          s1, s4, 544f
                  slli         a7, a7, 11
                  andi         t4, a5, 905
533:              sltu         a4, t2, s11
                  slli         tp, a0, 30
                  slti         s11, s11, -1640
                  andi         s6, s9, -53
                  sub          s6, t2, a4
                  slti         s8, a7, 278
                  xor          s5, s6, s1
                  xori         ra, s6, 897
                  lui          s4, 812205
542:              andi         s8, t3, 1295
                  addi         s7, a7, -1824
544:              sltu         s6, s8, s4
                  slli         t4, ra, 10
                  addi         ra, s8, 782
                  sltiu        s1, sp, 113
                  slti         s8, a0, -2006
                  sltiu        a4, gp, 894
                  and          a4, t4, t2
                  bge          zero, t6, 569f
                  or           gp, s3, a6
                  xori         tp, s4, -368
                  bge          s2, t1, 569f
                  sltiu        s6, t2, -1388
                  addi         s3, s4, -560
                  beq          s1, a1, 563f
                  sltu         s6, s11, s0
                  xori         ra, t2, 1617
                  bltu         zero, gp, 577f
                  addi         t4, t0, 1681
                  ori          t4, gp, 683
563:              blt          s0, t2, 583f
                  srli         gp, gp, 15
                  srli         s6, a7, 29
                  nop
                  sll          t4, s2, t6
                  nop
569:              srli         s7, t4, 1
                  bne          tp, zero, 582f
                  or           a3, t2, s11
                  srli         a6, zero, 7
                  srli         tp, s5, 21
                  srl          s0, a6, s7
                  srai         ra, a3, 9
                  bltu         s4, t5, 595f
577:              beq          tp, a3, 587f
                  bge          ra, t1, 586f
                  andi         t0, s3, -1316
                  or           ra, tp, s8
                  bne          tp, s1, 595f
582:              andi         s6, s5, 368
583:              xori         a3, s10, -1560
                  bgeu         t1, t3, 598f
                  lui          gp, 67559
586:              sltiu        zero, t0, -762
587:              xori         a7, s6, -993
                  bne          s5, zero, 603f
                  sll          s11, tp, s11
                  beq          tp, s6, 607f
                  auipc        s2, 286482
                  beq          s5, a3, 606f
                  ori          a7, sp, 2015
                  ori          t1, zero, 217
595:              slli         gp, s4, 26
                  xor          t1, a6, a6
                  or           gp, t6, s7
598:              ori          sp, ra, 1344
                  sra          a6, s10, a1
                  blt          t2, s2, 601f
601:              lui          t4, 1015239
                  nop
603:              or           tp, a6, s5
                  xori         t1, s5, 735
                  bgeu         s5, tp, 622f
606:              beq          s1, a7, 619f
607:              srli         a3, a6, 25
                  add          a1, a2, a0
                  bne          s2, a3, 619f
                  beq          t5, zero, 615f
                  auipc        sp, 514835
                  add          ra, t6, t0
                  add          gp, a2, zero
                  bge          t3, a5, 633f
615:              addi         a1, t3, -630
                  auipc        s0, 573581
                  lui          s7, 653846
                  add          s1, s3, a3
619:              srai         a0, a4, 28
                  srai         s0, s10, 27
                  lui          s0, 206939
622:              andi         zero, a1, 71
                  lui          a6, 518314
                  and          a6, s1, s10
                  sltu         s8, t0, s4
                  add          s7, a4, a1
                  slti         a1, t1, 1077
                  srl          s0, s7, gp
                  sra          s7, s8, sp
                  ori          s1, gp, 883
                  bltu         a6, s7, 650f
                  xori         s10, a0, 1013
633:              ori          zero, a4, 1762
                  slt          sp, a6, t0
                  ori          s2, a4, 1861
                  bne          zero, s0, 650f
                  andi         sp, s2, -1691
                  auipc        s1, 537460
                  bgeu         t5, a4, 659f
                  xori         tp, a4, 2036
                  bge          a4, t4, 649f
                  srli         s1, s1, 16
                  add          t5, a2, t0
                  addi         a1, tp, 173
                  bgeu         s5, a3, 662f
                  slt          s2, s7, t6
                  sub          s2, t0, t6
                  xori         t0, t0, -1275
649:              nop
650:              xori         a2, s7, -1613
                  and          s6, s8, t3
                  xori         s6, t6, 1499
                  srli         s5, s6, 11
                  sltiu        s11, t6, 683
                  slli         a1, a7, 27
                  beq          ra, s7, 662f
                  bge          s9, s11, 658f
658:              addi         s1, s4, -620
659:              sll          ra, t1, tp
                  srli         s7, t4, 23
                  nop
662:              addi         a7, s9, -16
                  beq          a4, ra, 675f
                  xori         tp, zero, -689
                  or           t0, a0, a1
                  blt          a7, sp, 671f
                  nop
                  slli         a2, a6, 18
                  sll          s6, s1, s1
                  andi         s8, tp, 1858
671:              slli         s2, a3, 24
                  add          a0, s0, t4
                  srai         a3, a5, 17
                  nop
675:              addi         a2, s11, -728
                  beq          s10, s0, 682f
                  slti         t0, a7, -1250
                  blt          s0, s0, 687f
                  xori         a6, zero, -1766
                  slli         a0, s4, 29
                  add          s0, t1, a0
682:              bltu         a2, a6, 696f
                  add          t5, s3, s8
                  addi         a3, a7, 1649
                  add          a5, t0, a4
                  add          a5, t2, t0
687:              srl          s3, t3, s9
                  blt          t5, t0, 706f
                  ori          s2, a5, 1136
                  bne          t2, a4, 692f
                  andi         s0, a4, -1879
                  add          s8, a7, s9
                  ori          gp, tp, -1386
                  nop
                  blt          s6, s3, sub_2_j3 #branch to jump instr
                  slli         s11, a5, 5
                  sltiu        a7, t6, -83
sub_2_j3:         jal          t5, sub_3 #jump sub_2 -> sub_3
692:              beq          a2, t1, 698f
                  xori         t0, a2, -1817
                  sub          t5, s4, s6
                  lui          sp, 906019
696:              beq          sp, s9, 699f
                  and          s5, a6, a7
698:              beq          t4, s0, 713f
699:              or           tp, s2, gp
                  sltu         a2, t1, s2
                  beq          a5, s11, 707f
                  slt          s2, t4, s3
                  add          s7, t4, t1
                  blt          a2, tp, 721f
                  slt          s10, t0, s8
706:              addi         tp, a5, 1270
707:              bltu         t6, a5, 714f
                  ori          t0, sp, -1530
                  sll          a0, a1, ra
                  srl          s5, s0, s7
                  blt          tp, tp, 723f
                  bgeu         t4, s3, 713f
713:              blt          s2, gp, 722f
714:              sll          s10, s10, t3
                  bltu         s1, gp, 732f
                  slli         s4, t6, 23
                  xor          s5, zero, t1
                  lui          t5, 794214
                  xori         a4, s8, -1568
                  add          s3, gp, t2
721:              bltu         s3, a4, 724f
722:              and          s1, t4, gp
723:              addi         s10, s2, -1536
724:              bgeu         a2, zero, 743f
                  bge          s3, t3, 730f
                  nop
                  addi         a4, t5, 1041
                  sub          t1, t5, t0
                  bge          a1, s8, 735f
730:              ori          tp, s10, -1218
                  slti         s3, ra, 1766
732:              beq          gp, s3, 746f
                  sltiu        a5, s11, 284
                  sub          s4, s2, ra
735:              slt          a5, a3, s2
                  bne          s10, t0, 753f
                  nop
                  sltu         s6, s1, s7
                  auipc        a2, 767381
                  xor          s7, a6, tp
                  lui          a3, 449669
                  or           s3, s4, t5
743:              sub          s6, s5, t2
                  ori          a2, a3, 186
                  sra          tp, zero, t2
746:              bgeu         s5, a2, 754f
                  sltu         s2, t0, tp
                  slli         gp, s9, 12
                  sll          a2, t2, t5
                  or           a4, gp, s5
                  and          s10, s8, zero
                  auipc        s11, 5754
753:              srl          s4, s5, t6
754:              srai         t0, t4, 21
                  sltiu        gp, t5, 2045
                  xori         s7, a4, -1434
                  sra          a5, tp, a2
                  ori          s0, s11, 891
                  and          a5, t2, gp
                  slti         s6, t4, 1987
                  bge          a4, s2, 779f
                  nop
                  srli         zero, a0, 28
                  nop
                  andi         ra, s0, -1414
                  ori          s1, t6, -709
                  andi         ra, ra, 1600
                  blt          s8, s10, 770f
                  andi         t5, s0, -170
770:              add          s3, s3, a3
                  sub          a2, t0, a0
                  sltu         a4, s3, a3
                  beq          a1, s5, 786f
                  xor          a4, gp, s5
                  xor          s3, s2, s6
                  lui          s2, 119708
                  slli         sp, s3, 20
                  xor          a4, s0, t2
779:              bne          gp, t1, 793f
                  sll          a4, a4, s4
                  sltu         t5, s4, s6
                  andi         t2, s2, -22
                  addi         a4, sp, -139
                  sra          t1, a1, t2
                  srl          s8, sp, s7
786:              add          s7, t5, s5
                  srl          s2, s11, t4
                  slli         t5, s2, 22
                  bgeu         s10, s2, 796f
                  or           t5, s10, t1
                  sra          s5, a3, a2
                  add          sp, ra, s5
793:              auipc        s1, 719837
                  bltu         a3, a2, 808f
                  srli         t1, t0, 10
796:              bltu         t0, t2, 815f
                  srli         t1, s4, 22
                  bgeu         s3, gp, 815f
                  auipc        s3, 547235
                  sltiu        s8, t4, -669
                  srai         a0, a4, 9
                  andi         ra, tp, 150
                  and          t4, s5, t5
                  la           a6, region_1+470 #start riscv_load_store_rand_instr_stream_4
                  lui          sp, 1007290
                  xor          s7, ra, t2
                  xori         s10, zero, 1841
                  sb           ra, -251(a6)
                  srli         s3, s0, 7
                  lbu          a4, 55(a6)
                  add          s4, t3, t0
                  lb           a5, 202(a6)
                  lbu          a2, 71(a6)
                  auipc        a0, 476124
                  lb           s8, -97(a6)
                  lbu          ra, -164(a6)
                  lhu          a1, 106(a6)
                  sb           s2, 70(a6)
                  xor          a3, zero, s2
                  sb           s9, -60(a6)
                  auipc        s6, 109934
                  lhu          s0, 200(a6)
                  sb           gp, 79(a6)
                  lbu          s10, -256(a6)
                  lb           s11, 37(a6)
                  lb           t1, -225(a6)
                  lb           a4, 233(a6)
                  lbu          tp, -101(a6)
                  slli         a3, t1, 17
                  sb           s3, 209(a6)
                  addi         a3, a3, 808
                  sb           a3, 10(a6)
                  or           s10, s4, ra
                  lh           t5, 14(a6)
                  sb           s10, -209(a6)
                  lhu          s11, -72(a6)
                  srli         s4, s11, 16
                  lui          s11, 21105
                  sw           s0, 34(a6)
                  lhu          zero, 102(a6)
                  sb           ra, 244(a6)
                  lb           t5, 85(a6)
                  sb           s2, -25(a6)
                  sb           t0, 121(a6)
                  lhu          s3, 248(a6)
                  srai         t1, t6, 13
                  sb           ra, -245(a6)
                  lb           s5, 187(a6) #end riscv_load_store_rand_instr_stream_4
                  srai         ra, a7, 0
                  bltu         t0, t1, 811f
                  ori          s8, s4, 1501
                  xor          sp, s2, s4
808:              xori         s3, a2, -2021
                  sll          a5, s6, s4
                  addi         t1, t5, -498
811:              nop
                  or           tp, s3, a1
                  bgeu         a3, t4, 828f
                  addi         sp, s5, -1329
815:              or           t4, a1, tp
                  bge          s7, sp, 830f
                  srli         sp, s3, 18
                  slt          a1, sp, a2
                  andi         s3, s0, 595
                  slti         a1, s0, -313
                  ori          s0, s5, -1322
                  xor          t4, t4, ra
                  addi         s2, t5, -534
                  xor          s5, s9, a1
                  srli         t2, t2, 13
                  sltu         a7, t0, t0
                  and          sp, t6, t6
828:              slli         a4, t0, 4
                  slli         a1, s5, 7
830:              andi         a6, t6, 409
                  add          s6, ra, s0
                  bge          s9, a3, 838f
                  srli         s3, a1, 11
                  beq          s1, t6, 854f
                  srai         a4, t2, 24
                  blt          s7, s11, 841f
                  bge          s10, a0, 843f
838:              lui          a3, 1021921
                  blt          s6, t2, 856f
                  lui          s6, 348532
841:              srl          a1, a4, s11
                  sltiu        t1, a7, 584
843:              sub          s11, a1, a2
                  sub          ra, a0, s8
                  bgeu         t4, t5, 860f
                  add          t2, t4, t2
                  sub          t2, tp, s6
                  xori         s5, a2, 1887
                  sltiu        s2, sp, 665
                  sltiu        t5, s10, -348
                  and          sp, a4, s7
                  xori         a2, s1, 1227
                  srai         a3, zero, 29
854:              and          zero, zero, t1
                  xori         sp, gp, 691
856:              xor          s4, s8, s10
                  slli         s8, s0, 30
                  srai         s8, a1, 18
                  sub          s3, zero, a7
860:              bge          s1, s10, 861f
861:              add          a6, t3, s5
                  lui          s6, 224210
                  slli         t4, tp, 12
                  bge          a7, sp, 874f
                  add          a2, s3, s2
                  bne          tp, t1, 872f
                  bge          s2, a1, 872f
                  nop
                  or           s2, s11, s5
                  srl          s5, t1, t4
                  sltiu        s11, s0, -1097
872:              sra          s3, s8, s11
                  and          t4, tp, a0
874:              bgeu         ra, s11, 891f
                  auipc        s7, 16782
                  ori          t4, sp, -364
                  slli         s7, a4, 6
                  srli         a7, a1, 10
                  slti         a4, a0, 497
                  srli         a7, t1, 13
                  ori          s2, t2, 1000
                  blt          s3, t5, 899f
                  ori          a0, t1, -1673
                  addi         s6, ra, 1713
                  sra          s1, a1, gp
                  srl          gp, s9, a5
                  ori          tp, s4, -831
                  sltiu        t1, a2, 1148
                  auipc        sp, 980643
                  and          zero, t0, s9
891:              andi         a7, s7, 1218
                  xori         s11, a1, 102
                  and          ra, s11, t1
                  or           a7, a7, t6
                  add          s8, s11, s3
                  bgeu         s10, s1, 915f
                  auipc        a0, 380918
                  bgeu         s4, t5, 904f
899:              beq          a4, s0, 911f
                  or           s11, s6, s4
                  sra          a7, t3, s8
                  bltu         s6, t4, 905f
                  ori          s11, a0, 1107
904:              ori          a5, sp, 851
905:              sub          s4, t0, a2
                  sra          a6, t5, s6
                  sra          t4, a2, a0
                  sll          s4, s8, zero
                  sra          sp, zero, t1
                  slt          s6, a0, s9
911:              and          s7, sp, ra
                  sltu         a7, s8, a7
                  add          t0, a6, s4
                  slti         s7, s10, -167
915:              or           s5, a0, gp
                  or           s2, s6, s6
                  blt          t1, s6, 918f
918:              sra          t0, gp, s7
                  slti         a2, a0, -88
                  or           tp, a6, t3
                  nop
                  xor          sp, a1, t6
                  andi         a6, t0, 69
                  beq          a5, a2, 925f
925:              xor          sp, a5, s0
                  srli         s0, zero, 0
                  add          tp, a4, t3
                  addi         a7, s11, 1768
                  sltiu        t1, s9, -547
                  srli         gp, a5, 8
                  sll          s10, s10, s4
                  bge          a3, a5, 950f
                  ori          s1, t4, 273
                  xor          t1, a4, s3
                  add          s3, t6, a2
                  sltu         a0, t0, sp
                  bne          s11, tp, 956f
                  xori         s4, t0, 830
                  ori          a2, t0, -1762
                  bne          s11, a0, 953f
                  slli         s10, a1, 0
                  slli         t1, a5, 17
                  nop
                  slt          s1, a6, s3
                  xor          a5, gp, s11
                  add          s5, t6, t1
                  bgeu         s10, t3, 967f
                  bne          t2, a2, 962f
                  xor          a5, a6, sp
950:              sub          s7, a1, s9
                  sltiu        s2, a5, -1818
                  beq          t4, s5, 958f
953:              or           t0, gp, s4
                  srai         a1, t2, 15
                  bgeu         s5, sp, 972f
956:              or           s3, a3, s8
                  slli         t5, s9, 21
958:              bgeu         t1, t5, 967f
                  slt          t0, t6, s7
                  addi         a6, t5, 1155
                  beq          s7, s4, 971f
962:              srl          a7, s10, sp
                  bne          t5, s10, 969f
                  sltu         s5, s9, s10
                  nop
                  xori         s4, a5, 1989
967:              sltu         gp, a0, a5
                  sltu         a3, s4, s2
969:              beq          s3, a3, 983f
                  auipc        zero, 900843
971:              andi         gp, zero, 382
972:              sltu         a4, s1, s11
                  beq          s4, sp, 978f
                  srai         s4, ra, 2
                  sll          a0, s11, t3
                  slti         t2, t1, -290
                  lui          s5, 1047925
978:              addi         a1, s6, 47
                  blt          gp, a3, 993f
                  or           a5, s4, a1
                  slti         t2, s11, 63
                  addi         s5, s11, 661
983:              bgeu         t0, t3, 991f
                  xori         t0, t3, 1863
                  lui          s8, 379283
                  ori          a3, gp, -1317
                  xor          a0, t3, s9
                  addi         t5, a5, 664
                  bge          s1, tp, 996f
                  srl          s8, s1, t0
991:              slti         a6, a1, -214
                  srli         s8, t4, 22
993:              sll          s0, s7, t6
                  slli         s2, t4, 22
                  nop
996:              slti         t2, s2, 1461
                  bgeu         t2, s8, 1014f
                  ori          s8, s4, -229
                  bltu         s1, s9, 1013f
                  xor          a4, s7, gp
                  bge          a2, zero, 1003f
                  bgeu         s10, s4, 1017f
1003:             sll          t2, t2, a3
                  sltu         gp, zero, t3
                  sltu         s8, s7, a4
                  srli         s11, a7, 30
                  nop
                  and          s7, s5, a4
                  slt          s0, a1, t3
                  blt          s4, t4, 1025f
                  xori         a2, t3, -1945
                  srai         t1, t1, 22
1013:             sub          s4, t4, s4
1014:             blt          zero, s11, 1020f
                  add          a4, a3, a1
                  bne          s8, a2, 1025f
1017:             add          s7, ra, s5
                  srli         s2, tp, 20
                  addi         s5, t5, -1102
1020:             bne          s10, s10, 1037f
                  xori         a2, t3, -1364
                  slt          s10, ra, s7
                  xor          t2, a5, a5
                  bne          a6, s3, 1043f
1025:             slti         sp, s4, 438
                  nop
                  beq          a4, s10, 1034f
                  sub          a7, a3, t1
                  sub          s2, a6, a5
                  srai         a0, a4, 9
                  andi         s8, a1, -1698
                  sll          s1, s4, t6
                  srai         t4, zero, 21
1034:             bgeu         s8, t6, 1049f
                  slti         a3, t6, 707
                  ori          t2, s3, 897
1037:             sra          a0, gp, sp
                  and          t1, ra, t6
                  sra          t0, s8, s1
                  srli         t5, a6, 6
                  bne          s2, t5, 1047f
                  sll          s0, s0, t4
1043:             srli         s8, s3, 13
                  sltiu        t2, s11, 1631
                  sltu         s6, t3, t2
                  sub          a3, a0, tp
1047:             auipc        ra, 586014
                  nop
1049:             and          s1, s1, tp
                  blt          t2, t4, 1056f
                  xori         a0, s1, 1095
                  slt          gp, t2, s11
                  blt          s7, tp, 1061f
                  bgeu         sp, ra, 1064f
                  sub          tp, a0, s7
1056:             srli         s1, s9, 11
                  add          zero, a3, t5
                  nop
                  addi         a1, a1, 959
                  slt          a2, a1, t1
1061:             srli         s10, a6, 17
                  bltu         s7, a7, 1076f
                  auipc        tp, 772440
1064:             blt          s0, a0, 1078f
                  xori         a4, a3, -1676
                  sll          tp, t4, s8
                  addi         ra, s2, -454
                  sltu         t2, a0, sp
                  blt          a5, s5, 1070f
1070:             sll          s5, gp, s10
                  srai         a4, a6, 12
                  xor          a0, t3, a0
                  bne          a2, a0, 1078f
                  slli         s1, gp, 26
                  sub          s0, s3, s10
1076:             and          a1, s11, s5
                  sltu         s11, t5, s6
1078:             beq          ra, t2, 1092f
                  la           sp, region_1+1500 #start riscv_load_store_rand_instr_stream_8
                  auipc        gp, 950127
                  lb           s0, 1(sp)
                  sll          a5, a7, t5
                  lb           s11, 5(sp)
                  or           s1, s0, zero
                  slt          gp, s5, t2
                  or           tp, t5, gp
                  slt          s6, s3, a3
                  lh           s0, -10(sp)
                  lb           a0, 3(sp)
                  sb           a1, -1(sp)
                  sb           a4, 11(sp)
                  srl          t0, s1, a0
                  nop
                  sh           t0, 2(sp)
                  sltiu        a5, ra, 838
                  lbu          t2, -1(sp)
                  lhu          t5, 12(sp)
                  srli         t1, s2, 19
                  lb           s1, 3(sp)
                  lh           s2, -10(sp)
                  lbu          s3, 15(sp)
                  nop
                  lh           t2, 14(sp)
                  lw           s1, -16(sp)
                  sb           tp, -1(sp)
                  lbu          t5, 1(sp)
                  sh           s1, 2(sp)
                  slt          s3, s8, t1
                  lb           s7, -11(sp)
                  lbu          a2, 11(sp)
                  srai         a0, a4, 14
                  lui          gp, 96012
                  lh           t0, -6(sp)
                  lui          t5, 690327
                  xori         s0, s8, 490
                  lb           zero, 15(sp)
                  lbu          a4, 0(sp)
                  slti         zero, tp, 1021
                  andi         t1, a4, 936
                  sb           tp, 15(sp)
                  srai         a2, zero, 3
                  lbu          s2, 12(sp)
                  or           s11, ra, zero
                  lui          s7, 189311
                  sltu         s5, s0, t5
                  sh           s1, 6(sp)
                  auipc        a4, 938308
                  srl          s7, ra, s10
                  xor          t4, s0, s7
                  sb           sp, -13(sp)
                  lbu          s0, -3(sp)
                  nop
                  xori         tp, t5, -2008
                  lb           s7, -12(sp) #end riscv_load_store_rand_instr_stream_8
                  srli         s5, sp, 23
                  slli         a0, s10, 22
                  slli         t5, s11, 27
                  xori         s4, s3, -444
                  sll          s6, a0, s10
                  bne          s3, s1, 1089f
                  slli         t0, tp, 24
                  bltu         a4, s2, 1087f
1087:             sltiu        zero, s8, 1993
                  bne          t6, tp, 1100f
1089:             xor          s0, s7, tp
                  auipc        s6, 250677
                  ori          s2, s8, -298
1092:             beq          t5, t6, 1106f
                  ori          s6, s4, -345
                  srli         t4, a4, 0
                  bltu         t5, t1, 1098f
                  bge          t2, t1, 1111f
                  bge          ra, t0, 1115f
1098:             auipc        s1, 363444
                  beq          t3, s11, 1112f
1100:             sub          s0, a3, t0
                  andi         s6, a6, 1211
                  sltiu        a1, t6, 1923
                  beq          a2, s9, 1123f
                  bltu         s3, t1, 1121f
                  and          s11, s7, a6
1106:             sra          sp, t0, s6
                  bltu         a0, a0, 1109f
                  addi         s10, a4, 1384
1109:             lui          a1, 793454
                  slt          t4, t2, a0
1111:             beq          a6, s8, 1128f
1112:             sltiu        t2, s2, -621
                  sll          ra, t6, t4
                  and          a3, s9, s10
1115:             ori          s3, s0, 485
                  and          a6, a6, ra
                  or           a3, zero, s8
                  nop
                  sra          t4, gp, a3
                  lui          sp, 1024514
1121:             sra          s4, a0, tp
                  nop
1123:             slti         t4, gp, 1298
                  auipc        s8, 744040
                  and          a5, t0, gp
                  and          s0, a7, s9
                  slt          tp, s11, s8
1128:             bne          t0, a3, 1145f
                  or           t4, a4, t2
                  bgeu         a3, s11, 1136f
                  sltu         t0, s10, a0
                  blt          s9, s3, 1151f
                  and          s2, s1, a4
                  and          s6, s0, s8
                  nop
1136:             bne          a4, s1, 1137f
1137:             sll          s7, zero, t3
                  srl          t1, t0, a2
                  sltu         t4, a1, t2
                  nop
                  slt          t4, sp, s5
                  srai         s1, s11, 30
                  lui          s10, 269262
                  sub          s5, s7, ra
1145:             srl          zero, a3, a3
                  auipc        s11, 144002
                  andi         s7, zero, -959
                  beq          s6, a2, 1155f
                  andi         s4, s2, -877
                  addi         s11, t4, -1095
1151:             srl          a7, a1, t3
                  sra          s8, a4, tp
                  srli         ra, a0, 25
                  xori         s1, s9, 899
1155:             add          ra, s0, sp
                  bgeu         s3, t6, 1168f
                  andi         a3, t0, -327
                  slti         zero, a3, 672
                  and          s5, a7, a7
                  xor          s0, a4, ra
                  sll          s3, s0, t3
                  lui          t1, 456510
                  sltu         s2, a7, t0
                  bltu         t4, gp, 1184f
                  srl          s0, sp, a2
                  sra          zero, s2, ra
                  and          s5, s10, s2
1168:             slli         t0, s0, 12
                  slt          a3, tp, s11
                  nop
                  sll          ra, t3, s0
                  bltu         t2, a4, 1191f
                  sub          s1, gp, a4
                  xori         a3, ra, 78
                  slt          sp, t0, t0
                  add          t2, t6, a5
                  add          a3, tp, s2
                  sltu         a2, a2, t0
                  lui          zero, 10859
                  xor          s5, s7, t5
                  slti         a7, t2, 21
                  bge          t2, gp, 1199f
                  slti         t0, t2, 1972
1184:             xori         a6, s9, 1880
                  srli         sp, s9, 4
                  sltiu        s7, t3, -1212
                  addi         a0, t4, -1710
                  and          s4, s2, s0
                  slti         gp, s0, 380
                  or           sp, s0, t3
1191:             slli         sp, a5, 9
                  bge          a7, tp, 1198f
                  beq          s0, a1, 1196f
                  lui          s3, 513680
                  xor          s11, ra, s4
1196:             ori          s10, s8, -1927
                  and          gp, s5, s2
1198:             srai         s1, ra, 18
1199:             srl          t0, t6, a1
                  sub          s0, s9, s10
                  andi         s10, a3, 1171
                  xori         a7, a3, -1910
                  sltiu        a2, s11, -1313
                  auipc        s3, 269803
                  sltu         zero, t2, a7
                  bge          ra, gp, 1211f
                  add          s6, a5, ra
                  addi         a7, a2, 341
                  sltiu        a7, t6, -805
                  srai         t1, zero, 9
1211:             lui          s1, 499017
                  slli         s11, gp, 29
                  slli         ra, t3, 23
                  sra          zero, s8, s2
                  addi         s6, a3, -143
                  bne          a5, t5, 1217f
1217:             bgeu         s11, a5, 1219f
                  xori         a7, s4, -341
1219:             sub          t0, t3, s4
                  xor          a7, zero, t2
                  andi         sp, s7, 1290
                  andi         tp, a4, -394
                  ori          s5, s9, -960
                  blt          t6, s6, 1243f
                  auipc        ra, 775106
                  slli         a0, s10, 15
                  lui          s2, 848747
                  addi         s7, s5, 1177
                  sll          s8, a5, s9
                  auipc        t0, 602946
                  blt          t4, t4, 1237f
                  srl          t0, a2, s5
                  sltu         s1, a2, zero
                  sltu         a1, s9, s2
                  auipc        s0, 46189
                  addi         a1, s11, -1888
1237:             slti         a4, t0, -233
                  xori         s3, a1, -358
                  bne          t0, s1, 1244f
                  sub          zero, gp, s5
                  and          s11, s4, a6
                  or           s8, a1, s7
1243:             sltu         t1, a4, s4
1244:             sub          t1, a0, a2
                  slli         s0, s7, 16
                  srl          s3, s9, s4
                  slt          a3, tp, s3
                  slti         s6, t3, 279
                  nop
                  beq          a1, s2, 1267f
                  sltu         s10, t2, a6
                  sll          a1, s2, s9
                  sltiu        t2, a5, 394
                  srai         s4, s11, 29
                  sll          s8, sp, s10
                  slti         s8, s6, 169
                  lui          s3, 741329
                  sltu         gp, a5, a5
                  auipc        t4, 581003
                  sub          a5, a3, s4
                  xor          s2, a2, a3
                  bge          t6, t5, 1271f
                  srl          a1, s1, s3
                  xor          s7, t3, t5
                  bltu         s11, ra, 1271f
                  sll          sp, s7, s0
1267:             srl          ra, t1, a4
                  nop
                  nop
                  auipc        s11, 603561
1271:             beq          s2, s4, 1288f
                  add          s6, a5, a7
                  nop
                  xor          s1, t4, a1
                  srli         s8, s4, 26
                  sltiu        t1, s2, -779
                  auipc        s8, 398382
                  sltiu        s6, a6, 1493
                  xor          a4, s0, gp
                  beq          s10, s0, 1290f
                  srli         s11, a0, 3
                  slt          t2, t6, tp
                  slli         t5, s0, 30
                  blt          zero, t6, 1299f
                  bne          s2, t2, 1291f
                  sltiu        s3, t1, -835
                  sll          a5, t4, s10
1288:             xor          a0, a7, t1
                  bne          s0, a6, 1303f
1290:             ori          s0, s3, -1715
1291:             bltu         s3, t3, 1305f
                  slti         a0, s11, 142
                  sub          s10, a6, a0
                  bne          sp, zero, 1307f
                  srl          zero, ra, t1
                  addi         s7, s10, -240
                  sra          zero, t5, s2
                  bne          s8, t0, 1313f
1299:             sra          a3, s0, zero
                  sll          s7, t6, gp
                  ori          tp, s10, 750
                  beq          a0, s4, 1313f
1303:             auipc        s5, 1033209
                  nop
1305:             sub          ra, sp, s6
                  sll          a7, a5, gp
1307:             srai         s11, t5, 3
                  or           a5, t6, s5
                  bgeu         s0, a3, 1313f
                  beq          gp, s9, 1313f
                  srai         gp, s8, 11
                  xor          s5, tp, t4
1313:             sra          s10, gp, s4
                  sltu         s4, a5, s8
                  srl          a6, s9, s5
                  sra          a4, a3, a3
                  ori          a0, s5, 1867
                  lw           t5, 4(s9)
                  andi         ra, t4, 1717
                  addi         s9, s9, 64
                  sltu         t2, a7, s9
                  sra          a3, a6, s8
                  ori          t4, ra, -1147
                  andi         gp, a0, 1303
1759:             addi x22, x30, 1
1759:             jalr x22, x22, 0
sub_10:           lui          s10, 27048
                  bgeu         zero, a1, sub_10_stack_p
sub_10_stack_p:   addi         s9, s9, -36
                  sltu         gp, ra, a1
                  addi         s6, t4, -432
                  sw           t5, 4(s9)
                  sltiu        t0, s9, 1197
                  slti         s5, t6, -1402
                  xori         a1, t1, -1749
                  srl          s3, a7, sp
                  srl          s1, a6, t1
                  ori          s4, t1, 1439
                  srl          a2, s7, a1
                  bgeu         a1, s1, 9f
                  sltiu        t4, t6, -434
                  bltu         s2, s10, 9f
                  sltu         t0, t5, gp
                  addi         ra, s5, 558
                  blt          a5, s4, 9f
                  nop
                  nop
9:                and          a5, t6, s8
                  sltiu        t0, s3, 1711
                  lw           t5, 4(s9)
                  xori         s5, a5, 1708
                  addi         s9, s9, 36
                  sll          t0, s1, s5
                  srli         s4, t5, 28
                  sltu         s5, s2, sp
29:               addi x10, x30, 1
29:               jalr x10, x10, 0
sub_3:            bgeu         s1, a0, sub_3_stack_p
                  slt          t4, t3, t3
                  xori         sp, t0, -266
                  addi         t4, a0, -469
                  sub          tp, gp, a4
                  srai         s0, s0, 2
                  sra          a6, a2, a4
sub_3_stack_p:    addi         s9, s9, -36
                  sw           t5, 4(s9)
                  xori         t1, t0, -429
                  la           sp, region_0+1299 #start riscv_load_store_rand_instr_stream_0
                  lbu          s11, 326(sp)
                  srai         s10, s7, 5
                  xor          a5, a4, a6
                  sw           a2, -423(sp)
                  lb           s11, -126(sp)
                  lb           a3, -129(sp)
                  or           a0, s3, a6
                  sb           a5, -838(sp)
                  lb           gp, -716(sp)
                  sb           ra, -94(sp)
                  or           t2, s2, t0
                  lhu          a0, 485(sp)
                  sb           s0, 634(sp)
                  lb           s2, -909(sp)
                  lh           a3, 517(sp)
                  lbu          a5, -184(sp)
                  slti         a1, t5, 1677
                  sb           t5, -126(sp)
                  sh           s11, -893(sp)
                  sw           t4, 81(sp)
                  lb           a2, -115(sp)
                  xor          a4, s7, sp
                  sll          gp, a5, t6
                  lb           s5, 370(sp)
                  lb           gp, -850(sp)
                  srai         a7, a7, 14
                  lh           a2, -1129(sp)
                  lh           s4, -299(sp)
                  lw           a6, -1295(sp)
                  sub          a5, t5, zero
                  srai         t2, t0, 23
                  sra          s0, s2, s9
                  sb           sp, -923(sp)
                  addi         a0, s2, -914
                  andi         a1, s3, 1729
                  sh           ra, -597(sp)
                  sb           s1, -454(sp)
                  sll          t4, ra, zero
                  lui          t0, 567528
                  sb           t0, -1181(sp)
                  sltiu        tp, ra, -358
                  lhu          ra, 203(sp)
                  sb           t6, -323(sp)
                  sra          a7, a3, s6
                  sb           t2, 494(sp)
                  lbu          zero, -20(sp)
                  sb           s3, -679(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t2, region_0+677 #start riscv_load_store_rand_instr_stream_1
                  sb           t4, 8(t2)
                  sra          sp, gp, s0
                  srai         a2, a0, 1
                  ori          tp, s10, 1798
                  addi         a1, s4, 1842
                  sh           a7, 11(t2)
                  lh           s4, -7(t2)
                  andi         s4, a6, 869
                  lui          t1, 623518
                  sw           s7, 3(t2)
                  sb           sp, -10(t2)
                  andi         a0, s7, -875
                  srli         a2, a2, 29
                  xor          s0, t6, a7
                  lhu          a5, -3(t2)
                  sb           t0, 0(t2)
                  sltiu        s1, a7, 123
                  lb           s4, -6(t2)
                  xori         a7, a5, -949
                  lh           s1, -11(t2)
                  auipc        ra, 158311
                  slt          a7, a3, a7
                  lh           a5, 5(t2)
                  sw           t1, -13(t2)
                  auipc        a5, 502541
                  lb           s5, 1(t2)
                  sb           s4, 14(t2)
                  sltiu        a7, t2, -1419
                  lh           a3, 13(t2)
                  slt          a6, ra, t0
                  lh           s7, 7(t2)
                  lui          gp, 322564
                  lhu          ra, -7(t2)
                  lb           a7, -11(t2)
                  lw           gp, 15(t2)
                  auipc        a4, 414948
                  xori         a7, a3, 458
                  lb           t1, -2(t2)
                  or           tp, s3, t3
                  sh           s8, -15(t2)
                  sb           t2, 2(t2)
                  sh           s11, -3(t2)
                  slti         tp, t6, 235
                  sb           t6, -12(t2)
                  sra          ra, a6, s10
                  sh           s9, -1(t2)
                  sb           t6, -14(t2) #end riscv_load_store_rand_instr_stream_1
                  sltiu        a7, s5, 1127
                  andi         t2, s11, -643
                  ori          s8, s3, 248
                  addi         s2, s5, 1711
                  slti         s10, a5, 745
                  auipc        a3, 461028
                  srli         s10, s4, 23
                  auipc        s11, 101182
                  slt          a1, s9, t6
                  bne          s7, s5, 20f
                  add          a0, a7, s0
                  sltiu        s5, s8, 1269
                  xori         a6, a2, 500
                  srl          t1, t4, t3
                  sll          a7, s0, a0
                  or           t2, t0, t4
                  bne          s1, a7, 36f
                  slti         s8, s9, -1231
                  beq          a0, s6, 36f
                  bgeu         t0, s9, 39f
20:               xori         s2, a5, 1864
                  bge          t2, s10, 38f
                  blt          a5, gp, 41f
                  nop
                  srai         s3, a4, 12
                  slli         t4, a3, 14
                  bge          t4, a1, 33f
                  slli         t5, t5, 4
                  bge          t6, a0, 43f
                  sll          zero, sp, a3
                  xor          t5, a4, a2
                  sub          a0, s7, gp
                  srl          s0, t5, s7
33:               bltu         s3, t6, 43f
                  auipc        sp, 970858
                  sltiu        a1, s11, -1454
36:               andi         s8, zero, -180
                  blt          a4, a3, 38f
38:               bltu         a1, t0, 39f
39:               addi         t2, ra, 303
                  srli         t2, a3, 4
41:               bge          a7, tp, 42f
42:               ori          a4, s3, 574
43:               sub          a5, s7, a5
                  nop
                  xori         t4, s6, -522
                  and          s4, gp, a7
                  lui          t2, 314288
                  bgeu         t6, t4, 53f
                  slli         a6, s5, 7
                  xori         s2, a6, 1522
                  slt          a6, s10, gp
                  ori          s11, tp, -537
53:               and          tp, s1, a5
                  sll          a4, a7, s11
                  sra          s11, t1, gp
                  ori          tp, s1, 547
                  or           a7, a1, s7
                  bne          a2, a3, 68f
                  slti         s6, zero, 776
                  slt          s5, s1, t3
                  bge          s5, s3, 65f
                  ori          a3, s9, -1618
                  xori         s1, a4, 1960
                  xor          s1, sp, a3
65:               srl          s7, s9, s10
                  slli         t2, a0, 6
                  bgeu         t2, s0, 69f
68:               slti         s6, gp, 313
69:               slli         a3, a2, 25
                  slli         a7, a5, 29
                  auipc        t5, 541429
                  srai         t5, a6, 11
                  bne          a6, a4, 92f
                  bge          s1, s6, 94f
                  auipc        t5, 737331
                  andi         s0, a6, -1894
                  nop
                  addi         zero, s7, 822
                  xori         t0, a6, 1268
                  nop
                  add          a7, a6, ra
                  slli         a5, t3, 5
                  bgeu         a3, s8, 89f
                  bge          gp, t3, 101f
                  xori         s2, s4, -538
                  slli         s11, ra, 26
                  sra          a1, s11, s8
                  bge          a1, t5, 105f
89:               andi         s11, a0, -46
                  slli         s5, a6, 0
                  srl          a0, s1, s4
92:               bne          s1, t6, 111f
                  slti         t4, s4, 629
94:               andi         a1, s6, -1424
                  bge          sp, zero, 108f
                  sltiu        s10, a3, -253
                  add          t4, ra, sp
                  srl          a3, s5, s6
                  sltu         s2, a0, s4
                  auipc        ra, 415123
101:              sltu         tp, t5, a4
                  srl          a3, a5, a7
                  nop
                  srl          a6, s9, s1
105:              sltu         s11, t4, s9
                  bltu         s1, s11, 122f
                  bge          s9, s9, 114f
108:              bne          t4, a3, 110f
                  slt          s3, s9, t1
110:              sub          s6, s10, a0
111:              blt          zero, t2, 123f
                  bgeu         t4, t5, 130f
                  xori         t1, a6, -384
114:              bge          a5, s10, 120f
                  andi         s1, s5, 1975
                  or           t2, s9, s8
                  addi         t2, tp, 748
                  lui          t2, 227928
                  xor          a3, t1, s6
120:              andi         s10, gp, -1115
                  xori         sp, sp, -453
122:              srai         s3, s2, 19
123:              addi         t2, t2, -241
                  lui          t0, 561176
                  add          s11, s10, a6
                  lui          s10, 267470
                  sltu         t1, a7, tp
                  sra          gp, s3, a6
                  srl          sp, a7, t6
130:              srai         a4, t2, 16
                  beq          a7, a4, 146f
                  add          ra, s5, a1
                  sltiu        t2, a2, -1126
                  ori          s8, t5, 1623
                  xori         ra, ra, 433
                  srli         a0, s6, 16
                  add          t4, s10, a4
                  ori          t5, s0, -1822
                  lui          s3, 125634
                  srai         a6, t5, 12
                  andi         t5, t2, -1134
                  xor          gp, s2, a7
                  slli         t4, s11, 26
                  slt          s6, a3, s4
                  slli         s4, a0, 24
146:              sll          sp, a4, t6
                  lui          zero, 217132
                  bge          t4, t2, 158f
                  andi         s2, ra, 1034
                  or           t2, t0, s1
                  sub          s5, s0, s1
                  auipc        s0, 210071
                  slt          s7, tp, t1
                  lui          t1, 485659
                  and          s2, t0, s5
                  sltiu        s7, t2, -408
                  xor          s10, t1, ra
158:              bltu         a4, s8, 168f
                  slli         tp, a6, 22
                  slt          s5, t3, sp
                  bgeu         t6, s7, 168f
                  srli         tp, tp, 13
                  sltiu        s3, s5, 840
                  lui          t5, 771539
                  xor          zero, t6, a6
                  bne          ra, gp, 167f
167:              srl          s6, t2, a0
168:              srl          ra, t3, a5
                  bne          t6, sp, 175f
                  beq          tp, a0, 172f
                  bge          s11, s3, 173f
172:              or           s8, s3, s1
173:              add          zero, a1, s3
                  bne          sp, a0, 190f
175:              or           s0, s1, a3
                  slt          a5, a4, ra
                  sltiu        a6, t6, -1086
                  blt          gp, t2, 193f
                  beq          t6, s5, 185f
                  slli         t0, s9, 12
                  srli         s2, t6, 25
                  andi         tp, t3, 932
                  addi         t2, s3, 39
                  nop
185:              auipc        s10, 190273
                  ori          s10, s3, -443
                  sra          tp, a7, zero
                  and          gp, gp, a7
                  nop
190:              addi         a1, t2, -1518
                  and          zero, a6, a3
                  beq          s8, s5, 209f
193:              blt          t3, s3, 200f
                  bltu         tp, ra, 195f
195:              slli         s10, s4, 22
                  add          zero, a0, a1
                  srli         s6, s5, 31
                  xor          t5, a1, a6
                  srai         gp, a0, 12
200:              add          s1, s4, a7
                  addi         a4, t6, 671
                  blt          s4, s5, 220f
                  or           a0, s11, a2
                  auipc        gp, 497801
                  sll          s0, a4, s2
                  bne          a7, s1, 225f
                  beq          s10, sp, 226f
                  bne          a1, a7, 228f
209:              bltu         t5, ra, 226f
                  beq          s3, a1, 230f
                  blt          sp, t1, 228f
                  lui          sp, 866396
                  addi         s6, a3, -1532
                  bltu         t2, s10, 233f
                  blt          a1, s5, 220f
                  addi         s7, s5, 276
                  sltiu        t1, a4, -1878
                  srai         t2, s3, 25
                  nop
220:              bgeu         a4, s7, 221f
221:              ori          s3, t6, 1590
                  lui          t4, 721102
                  bge          a1, s8, 238f
                  addi         s5, ra, 1780
225:              andi         t0, s9, 525
226:              srl          s7, t5, s7
                  bgeu         tp, s9, 240f
228:              sra          tp, a0, s9
                  andi         sp, gp, 1807
230:              srli         s0, s10, 13
                  sll          s5, s9, t3
                  sltu         s4, t0, t5
233:              bgeu         s8, sp, 245f
                  sll          tp, a4, a1
                  srli         s11, a2, 12
                  bgeu         s2, gp, 256f
                  sltu         s4, zero, s8
238:              blt          s11, s10, 249f
                  bgeu         s0, sp, 243f
240:              srl          tp, a0, a5
                  and          ra, s5, a5
                  sra          ra, a3, zero
243:              slt          zero, s11, s5
                  slli         t5, s4, 23
245:              blt          a0, s0, 263f
                  srl          t2, t6, t1
                  sra          t0, s9, t5
                  ori          t1, zero, 1627
249:              slti         s0, s4, 600
                  sub          s8, s7, t4
                  andi         s1, t3, -1304
                  and          sp, a4, a7
                  srli         gp, s5, 1
                  srai         t1, t2, 24
                  xori         a2, t4, -1918
256:              srai         ra, zero, 24
                  srl          t4, s7, s2
                  srli         a4, a4, 7
                  bne          s11, t2, 265f
                  lui          s0, 812054
                  xor          s6, s9, s8
                  srai         s11, s5, 6
263:              sub          s4, t2, tp
                  lui          a3, 331853
265:              srl          a1, s5, tp
                  sll          a5, a2, t4
                  or           s7, s10, s0
                  bltu         s10, a5, 269f
269:              blt          a2, s8, 285f
                  bge          a4, s10, 288f
                  lui          s4, 221926
                  and          s6, a1, a2
                  srli         a2, a2, 20
                  slti         t1, a6, -837
                  bgeu         a7, s6, 277f
                  sll          a3, t5, t5
277:              sltu         tp, s10, gp
                  bltu         s10, a5, 288f
                  sra          s11, s3, a5
                  add          a1, zero, s11
                  slti         a6, s4, 415
                  ori          t0, t1, 1498
                  lui          a3, 448560
                  xori         s6, a1, 1919
285:              add          s11, s0, a0
                  sltu         t2, s1, t1
                  srl          gp, gp, a1
288:              bgeu         t1, s7, 299f
                  sub          s6, a7, a2
                  slli         a2, t3, 30
                  bge          s8, t6, 306f
                  and          s3, a4, s7
                  slli         a7, t0, 3
                  and          t0, tp, t2
                  ori          t1, t2, -558
                  slt          s5, t5, s1
                  ori          sp, tp, -210
                  and          ra, t5, a3
299:              srl          s6, s9, s3
                  nop
                  srli         s1, s6, 30
                  srl          s2, a4, t4
                  sub          t4, t2, a1
                  sltiu        t1, a2, 1896
                  bgeu         s10, a0, 325f
306:              bgeu         a6, s6, 313f
                  xor          s5, s9, tp
                  andi         a1, a3, -880
                  auipc        s3, 1030702
                  slli         s10, tp, 14
                  la           sp, sub_4
                  xori         s4, s6, -593
                  or           s0, s6, s6
                  addi         sp, sp, -561
                  sltu         a2, zero, a3
                  addi         s7, gp, 102
                  or           s3, a6, a7
                  sltiu        a3, a5, 1265
sub_3_j4:         jalr         t5, sp, 562 #jump sub_3 -> sub_4
                  srli         s2, s9, 15
                  beq          s10, t5, 321f
                  slti         a2, sp, 1326
                  add          s11, s5, s6
                  add          s7, a1, s0
                  slli         a4, t0, 15
313:              and          gp, t2, s0
                  nop
                  sltu         zero, a7, t2
                  add          s2, a6, s4
                  sltiu        a7, a4, -1572
                  sltiu        s0, zero, 1528
                  or           s4, t6, s5
                  xori         s6, gp, 1165
321:              xori         zero, s11, -187
                  sra          tp, t2, a4
                  beq          a2, s11, 324f
324:              slli         a1, a4, 15
325:              sra          s4, s7, s10
                  blt          t6, s2, 343f
                  bgeu         sp, s4, 332f
                  srai         zero, s1, 14
                  slt          a4, a3, t5
                  blt          s3, t3, 343f
                  sub          s4, s2, t1
332:              slt          s7, t6, a0
                  ori          t4, a3, 1609
                  sltiu        gp, s1, 1749
                  blt          s5, t1, 343f
                  bge          s1, tp, 343f
                  bltu         s6, a5, 343f
                  nop
                  sltu         ra, a5, s7
                  sltu         s11, t6, a6
                  xor          t1, a7, a5
                  srli         s11, a2, 19
343:              xori         s6, s9, -1531
                  srli         gp, ra, 3
                  srli         a5, ra, 22
                  lw           t5, 4(s9)
                  sll          s2, a4, sp
                  and          ra, a7, s10
                  addi         s9, s9, 36
                  nop
470:              addi x10, x30, 1
470:              jalr x10, x10, 0
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x31, x25, zero
                  csrr x11, 0x300 # MSTATUS
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 31
                  bne x11, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x11, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x11, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x11, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x11, x16, ecall_handler
                  li x16, 0x1
                  beq x11, x16, instr_fault_handler
                  li x16, 0x5
                  beq x11, x16, load_fault_handler
                  li x16, 0x7
                  beq x11, x16, store_fault_handler
                  li x16, 0xc
                  beq x11, x16, pt_fault_handler
                  li x16, 0xd
                  beq x11, x16, pt_fault_handler
                  li x16, 0xf
                  beq x11, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x25, x31, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x31, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x31, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x25, x31, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x25, x31, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x25, x31, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
