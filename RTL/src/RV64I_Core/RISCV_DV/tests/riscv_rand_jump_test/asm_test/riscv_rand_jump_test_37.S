.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0xf610c48e
                  li x4, 0xd29d38be
                  li x5, 0x80000000
                  li x6, 0xd
                  li x7, 0x3ac98c51
                  li x8, 0xe
                  li x9, 0xfbe4e25f
                  li x10, 0x51024f04
                  li x11, 0xb
                  li x12, 0xf0a3f040
                  li x13, 0x3208e792
                  li x14, 0xf51593bf
                  li x15, 0xfbfd4f2e
                  li x16, 0xf
                  li x18, 0xf2d5ba87
                  li x19, 0xfab2320b
                  li x20, 0xd
                  li x21, 0x61091b4
                  li x22, 0x1
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xa62f3bd6
                  li x28, 0x80000000
                  li x30, 0xd
                  li x31, 0x44913c44
                  la x17, user_stack_end
main:             sltu         sp, s9, a6
                  srl          s4, t1, s9
                  nop
                  la           a4, sub_1
                  slli         t2, t3, 31
                  addi         a4, a4, -208
                  auipc        a5, 1013760
                  sltiu        t3, s10, 673
                  xor          s0, tp, s11
                  lui          gp, 866600
                  xori         t0, t4, 437
                  addi         a6, s7, -407
main_j3:          jalr         tp, a4, 208 #jump main -> sub_1
                  la           s11, sub_3
                  nop
                  addi         s11, s11, -997
                  sll          t5, a6, t0
                  blt          s7, a1, main_j4 #branch to jump instr
                  auipc        a1, 161640
                  slt          a3, s4, t1
                  sltiu        tp, s7, -1900
                  sll          t0, t5, ra
                  xor          s10, s2, s4
                  sub          t3, s5, a2
                  lui          a0, 315012
main_j4:          jalr         tp, s11, 997 #jump main -> sub_3
                  la           sp, region_0+1428 #start riscv_load_store_rand_instr_stream_0
                  lh           s6, 6(sp)
                  lbu          s9, -13(sp)
                  and          s4, s3, t0
                  xori         t5, t1, 1619
                  lui          t3, 242587
                  sb           s3, -6(sp)
                  and          s11, s5, s3
                  sltiu        zero, s1, 568
                  sb           s9, 12(sp)
                  lbu          a5, 0(sp)
                  sll          ra, a1, s8
                  nop
                  add          s10, s1, a4
                  lbu          s2, -1(sp)
                  add          s4, t3, t6
                  lb           s9, -1(sp)
                  srl          s8, t6, s10
                  lbu          t6, -3(sp)
                  and          s0, a4, s2
                  sra          a3, t1, s0
                  lh           a5, 14(sp)
                  lbu          a2, 11(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          s0, a1, 5f
                  ori          s1, s3, 1515
                  sra          s0, s1, t1
                  sltiu        sp, tp, 732
                  sltu         s5, a0, s7
5:                bge          a0, a6, 9f
                  andi         s10, s7, -1541
                  and          t1, gp, s2
                  add          s5, a2, a6
9:                slt          a4, t3, s10
                  nop
                  srai         t6, s10, 2
                  srl          zero, s9, s8
                  slt          a0, s1, a2
                  bge          t1, t3, 19f
                  bne          tp, s3, 26f
                  srl          s6, t3, t2
                  sub          a4, gp, s10
                  slt          a2, s2, t0
19:               slli         t5, ra, 4
                  lui          t6, 809401
                  sub          tp, t2, t3
                  sra          s4, s9, ra
                  sub          s6, sp, zero
                  sltiu        t0, t4, 143
                  ori          t1, s0, 345
26:               blt          s10, s11, 28f
                  xor          s1, t0, zero
28:               xor          ra, a7, ra
                  sra          s8, a3, t2
                  xori         s0, t6, -1451
                  slli         a0, s4, 2
                  ori          s7, a2, -716
                  sltiu        sp, a2, 1628
                  bgeu         a3, a7, 40f
                  slti         s7, s0, -179
                  lui          a3, 606125
                  xori         t6, a7, -1958
                  lui          s4, 835230
                  beq          s4, a5, 56f
40:               bne          a5, ra, 47f
                  xori         s4, a6, -722
                  slli         zero, s7, 20
                  auipc        gp, 535962
                  ori          a6, s11, -1295
                  slti         s6, t6, 298
                  bge          t5, s4, 52f
47:               slti         t2, a1, 134
                  bge          a4, a4, 67f
                  srli         t1, sp, 3
                  slti         t1, t5, -197
                  bltu         s8, s6, 68f
52:               bge          t1, a0, 61f
                  beq          t5, a6, 65f
                  ori          t5, s9, -981
                  add          s6, s8, s7
56:               blt          sp, a4, 57f
57:               sltu         sp, s5, t1
                  la           a2, sub_4
                  srli         s7, ra, 26
                  addi         a2, a2, 534
                  sltiu        t5, a6, -1824
                  bge          tp, s2, main_j1 #branch to jump instr
                  addi         s9, t1, 31
                  sltu         s5, a0, t3
                  slli         a3, a0, 9
main_j1:          jalr         tp, a2, -533 #jump main -> sub_4
                  sltiu        t2, a3, 1786
                  or           s0, t1, tp
                  beq          s5, ra, 64f
61:               sub          a1, s7, a3
                  slt          tp, s1, s8
                  sub          ra, t5, a6
64:               bltu         s5, a7, 77f
65:               ori          t0, t1, -961
                  nop
67:               nop
68:               sltu         sp, s8, s5
                  bltu         zero, s4, 88f
                  srli         s11, ra, 23
                  xor          t3, zero, t4
                  auipc        a0, 674611
                  blt          a2, s7, 92f
                  srl          t2, zero, a4
                  sltiu        a5, s3, 1334
                  srli         t6, a3, 15
77:               xori         s0, s6, -1116
                  bge          zero, t6, 94f
                  sltiu        a4, gp, 1163
                  auipc        s9, 339371
                  auipc        s5, 864602
                  bge          s8, s0, 102f
                  sub          a5, tp, s2
                  bne          a5, s4, 90f
                  sll          s0, a2, t6
                  slli         s10, a6, 9
                  bgeu         a1, s6, 100f
88:               slt          a1, s0, t5
                  bge          s2, a3, 108f
90:               ori          t3, s11, -60
                  sub          a3, s9, s7
92:               bgeu         s9, s5, 101f
                  bltu         s3, t5, 105f
94:               andi         s0, t3, -1123
                  xori         s1, s6, 1642
                  slti         zero, s7, -1466
                  sltiu        a6, t0, -429
                  ori          sp, s0, -1305
                  slli         t6, a4, 20
100:              andi         tp, s8, 1321
101:              slli         s1, s3, 2
102:              slti         t5, s3, 1964
                  srl          a2, s2, s5
                  slti         s4, a7, 1906
105:              beq          t2, t3, 117f
                  slti         s2, s11, -948
                  or           a3, a0, s8
108:              blt          s10, t0, 125f
                  srai         sp, zero, 16
                  srai         a5, s11, 12
                  addi         t5, t3, -1212
                  ori          a1, s0, 387
                  beq          s0, sp, 130f
                  add          sp, t0, s1
                  bge          s1, a5, 123f
                  beq          s2, a4, 125f
117:              and          s0, a6, sp
                  ori          s8, t3, 181
                  bltu         t1, s4, 139f
                  sll          a4, s0, a6
                  srli         t3, t3, 7
                  sll          s8, a3, a1
123:              xori         a5, s8, -611
                  sll          s10, t2, t4
125:              srai         t0, a6, 14
                  bne          a0, s3, 134f
                  blt          t1, s0, 140f
                  add          t1, s7, s9
                  xor          s11, t2, gp
130:              or           a3, t4, a1
                  beq          t5, t0, 137f
                  sra          s6, t4, s8
                  ori          a0, gp, 1303
134:              blt          s7, t3, 139f
                  or           s7, zero, s6
                  and          s7, s10, t1
137:              sltiu        a4, t6, -1011
                  bge          t0, t0, 157f
139:              ori          a3, a3, 1757
140:              sltiu        s9, t6, 566
                  blt          s0, s10, 158f
                  bgeu         a3, a1, 154f
                  blt          a1, s3, 152f
                  sll          t6, tp, a1
                  xori         t2, a5, 1856
                  blt          s11, t5, 165f
                  bge          t5, a7, 153f
                  slli         s1, t2, 6
                  slt          a2, s11, s9
                  blt          s2, s4, 156f
                  bge          t4, s8, 155f
152:              sltiu        s8, t2, 1449
153:              slt          t0, gp, t6
154:              sll          tp, a1, s6
155:              andi         a4, t1, -558
156:              bgeu         s4, t3, 167f
157:              nop
158:              bne          a5, s2, 171f
                  andi         a2, a6, 270
                  and          a5, ra, s7
                  sltu         t3, t3, s10
                  bgeu         tp, a1, 164f
                  slti         s4, t1, 1371
164:              sltu         s0, s4, zero
165:              add          s11, tp, zero
                  beq          a7, ra, 183f
167:              bge          a5, sp, 172f
                  xor          s4, a0, s9
                  bgeu         a6, a6, 173f
                  bgeu         t2, a4, 189f
171:              bge          ra, a1, 172f
172:              bltu         t1, gp, 179f
173:              srai         a0, s5, 26
                  add          s1, t3, s10
                  beq          s4, s3, 192f
                  ori          tp, t2, -485
                  auipc        a3, 413238
                  and          a2, s4, s8
179:              andi         sp, gp, -409
                  add          ra, t0, sp
                  bge          a3, s2, 190f
                  and          t6, t3, t1
183:              bltu         a2, t3, 195f
                  bne          t6, s0, 203f
                  srl          s10, gp, s5
                  slli         a3, s2, 9
                  sltu         s8, s7, t4
                  srai         zero, s1, 23
189:              sltu         s9, t4, a4
190:              sub          tp, s0, t3
                  bgeu         s5, t5, 207f
192:              sub          s8, s5, a7
                  xori         a0, t4, 1140
                  lui          s10, 91865
195:              addi         a3, t5, -1688
                  nop
                  or           a4, ra, s4
                  slti         t2, t6, 1650
                  andi         s5, s3, 1281
                  or           t6, s6, a2
                  xori         t0, s0, -536
                  srl          s10, a2, t6
203:              sra          s5, s6, s2
                  xori         t0, s3, -520
                  auipc        s11, 383054
                  sra          zero, s2, a1
207:              blt          s5, t6, 224f
                  bne          gp, t1, 217f
                  lui          t3, 919288
                  slt          s6, a6, a0
                  addi         sp, a2, 1966
                  bge          a7, s7, 224f
                  sra          sp, gp, t6
                  srai         s2, a5, 17
                  xor          t1, s9, ra
                  sll          s10, t4, s4
217:              sra          ra, s3, s3
                  slti         s9, s5, -1879
                  srai         s8, ra, 11
                  bgeu         s8, s8, 237f
                  blt          a4, s6, 227f
                  xori         a1, t1, -385
                  auipc        a5, 102594
224:              xor          s4, a3, a4
                  sub          s8, s10, tp
                  bge          s3, t2, 239f
227:              bgeu         a2, s4, 239f
                  bgeu         a6, a2, 247f
                  sra          t2, s2, t1
                  andi         s9, s11, -1627
                  slti         t0, t4, -686
                  srai         s6, s7, 9
                  la           sp, sub_2
                  xori         ra, zero, 78
                  add          s4, s1, a0
                  nop
                  andi         a1, ra, -975
                  addi         sp, sp, 730
                  sltiu        t1, a6, 1670
                  nop
                  srl          a0, t3, a6
main_j2:          jalr         tp, sp, -730 #jump main -> sub_2
                  sub          a3, s11, t3
                  slti         s1, a0, 1791
                  slti         a1, a0, 1941
                  add          a5, s6, t6
                  blt          s9, s2, 247f
                  bne          s0, a7, 247f
                  bgeu         t0, a7, 240f
237:              add          zero, s7, a3
                  slli         zero, s3, 7
239:              bgeu         a6, a4, 245f
240:              addi         t0, a1, -1889
                  bgeu         a5, t2, 247f
                  auipc        gp, 264464
                  sra          gp, s2, a6
                  xori         s2, s6, 1677
245:              or           s8, a2, t4
                  srl          s10, sp, a1
247:              and          s9, s6, a2
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            xori         s10, tp, 1532
                  sltu         t3, s0, s6
                  bne          ra, s3, sub_4_stack_p
                  sltiu        a2, ra, -283
sub_4_stack_p:    addi         a7, a7, -64
                  and          s0, t3, a7
                  sra          t0, a6, s7
                  slt          t3, a4, a3
                  sw           tp, 4(a7)
                  sltu         ra, s1, zero
                  la           a6, region_1+267 #start riscv_load_store_rand_instr_stream_0
                  and          t0, tp, s8
                  lb           s1, 406(a6)
                  addi         a5, a3, -1747
                  sw           t3, 469(a6)
                  sub          t2, gp, t5
                  lb           ra, 368(a6)
                  lb           s7, 702(a6)
                  ori          s11, s9, -1504
                  sltu         a0, tp, gp
                  lh           ra, 1155(a6)
                  srli         s1, s6, 12
                  slli         t3, gp, 28
                  sh           s1, 275(a6)
                  addi         sp, a7, -1167
                  sh           t1, 331(a6)
                  lui          s8, 760654
                  lb           a5, 1594(a6)
                  lb           tp, 36(a6)
                  lbu          t5, 314(a6)
                  sb           s2, -231(a6)
                  xor          a0, s6, s11
                  xor          t1, s7, a4
                  slt          tp, a3, s2
                  lb           t1, 1469(a6)
                  sra          s5, a7, s9
                  slt          sp, s4, a7
                  sra          s5, s9, t2
                  sw           t6, 389(a6)
                  lh           s0, 203(a6)
                  addi         tp, s9, -1770
                  lbu          a3, -117(a6)
                  lbu          s5, 1287(a6)
                  lw           s9, 1521(a6)
                  nop
                  lbu          a2, 398(a6)
                  lh           s0, 917(a6)
                  slt          tp, s9, ra
                  xori         s11, s7, -1823
                  auipc        a4, 757604
                  lh           s11, 495(a6)
                  or           zero, s6, s3
                  lhu          zero, 1393(a6)
                  lui          s9, 813856
                  andi         s9, s8, -140
                  auipc        tp, 567234
                  and          a3, a6, tp
                  lbu          a1, 788(a6) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+1727 #start riscv_load_store_rand_instr_stream_1
                  sb           s11, -208(s11)
                  lb           s4, -63(s11)
                  auipc        a3, 863808
                  slt          ra, a6, a0
                  or           s9, s0, a4
                  sltu         tp, s6, t4
                  sh           t5, 179(s11)
                  sb           t4, 164(s11)
                  sll          s5, s9, sp
                  slt          t0, a2, a5
                  or           s5, t5, s9
                  sra          s7, s1, s10
                  sltiu        s0, s6, 820
                  slti         s7, a0, 111
                  slli         a4, s10, 13
                  sh           a2, -145(s11)
                  srl          s9, s3, t6
                  srl          zero, gp, s5
                  srli         ra, a2, 7
                  lh           a0, 187(s11)
                  addi         gp, t5, 303
                  xor          t2, tp, s9
                  lbu          ra, -57(s11)
                  add          a1, s10, t1
                  srli         a3, a1, 13
                  sb           a4, -44(s11)
                  auipc        gp, 146330
                  sw           zero, 5(s11)
                  ori          t5, t1, -1544
                  addi         zero, sp, -89
                  and          s7, s4, s7
                  lw           a0, -155(s11) #end riscv_load_store_rand_instr_stream_1
                  auipc        a0, 931922
                  add          s11, zero, s6
                  ori          a0, s2, 308
                  bltu         a6, s5, 21f
                  bne          t2, s9, 9f
                  bgeu         t0, t2, 25f
                  xor          s5, s3, sp
                  sltu         a4, a4, gp
                  sltiu        t2, s1, 1063
9:                addi         s6, s1, -424
                  xori         s8, a4, 1577
                  sll          a5, t0, a1
                  sltu         a5, s2, t6
                  bltu         s11, s4, 19f
                  andi         t0, zero, -23
                  xor          a4, a0, t3
                  addi         gp, s2, 1523
                  bgeu         s1, s11, 19f
                  lui          s8, 587677
19:               slt          t3, s4, s10
                  and          ra, t5, s4
21:               nop
                  sltiu        a6, t5, 1341
                  beq          a2, s8, 36f
                  slt          a0, a6, a7
25:               auipc        s10, 310091
                  slt          t1, a7, t2
                  auipc        s10, 72956
                  xori         t2, tp, 1446
                  andi         a6, s0, 1471
                  andi         a6, t5, -896
                  ori          t6, tp, 1752
                  sll          a3, t4, a6
                  sltiu        a0, gp, 1178
                  addi         t5, s5, -314
                  srl          gp, a3, ra
36:               sub          t6, s5, a0
                  sll          s8, ra, gp
                  srli         s2, t4, 21
                  sltiu        a4, s7, -1205
                  bgeu         t6, s8, 59f
                  beq          t6, a5, 54f
                  bgeu         a0, s1, 61f
                  sra          s5, a6, s2
                  slli         a4, s6, 21
                  sltu         a1, s1, t6
                  auipc        sp, 321322
                  addi         s9, s8, 1470
                  slti         zero, s7, 1285
                  or           s6, a3, s1
                  sll          a4, s1, a2
                  blt          a6, s8, 62f
                  srli         s1, a5, 12
                  bltu         s10, t5, 57f
54:               or           s2, ra, s0
                  xor          t6, t3, s0
                  sltu         a3, a5, s6
57:               beq          zero, s8, 72f
                  sltu         a1, s2, s2
59:               sll          s2, s6, a7
                  or           a3, zero, t4
61:               xori         s9, a4, -1192
62:               or           a4, ra, a0
                  add          t6, t5, s9
                  sltu         zero, a7, a4
                  blt          a5, s2, 80f
                  add          tp, s11, a5
                  add          a5, t6, t4
                  bge          s8, a4, 72f
                  bltu         a0, t6, 75f
                  slti         s4, s0, 541
                  auipc        s0, 608018
72:               sltiu        s2, s11, -1331
                  srli         s1, s11, 19
                  sltu         s2, ra, sp
75:               nop
                  sll          sp, gp, a2
                  xor          sp, a0, s7
                  bltu         s0, sp, 95f
                  addi         zero, t1, 820
80:               sra          t2, s3, t6
                  and          gp, s4, t6
                  slli         gp, a4, 13
                  slti         a0, a1, -1288
                  sub          s8, s1, a0
                  add          a4, s9, s5
                  xori         tp, a7, -826
                  slti         s9, t4, 353
                  slti         s0, a4, -1
                  addi         s8, s6, -719
                  srli         t2, s8, 10
                  bge          s4, a1, 95f
                  sub          t3, s0, s9
                  slli         ra, a4, 0
                  sltiu        ra, s10, 223
95:               or           zero, s11, sp
                  slt          s9, t3, sp
                  sra          ra, t1, s8
                  sll          s6, s6, t5
                  sra          s1, s10, zero
                  slt          ra, s1, t5
                  bltu         a3, a4, 107f
                  sra          s11, s7, s4
                  xori         s9, ra, -44
                  beq          s7, s0, 124f
                  lui          zero, 79504
                  slli         s1, a0, 14
107:              blt          t6, t2, 111f
                  addi         a0, s1, -1260
                  srai         s2, t0, 3
                  sub          s1, s5, gp
111:              nop
                  beq          t0, a1, 119f
                  bltu         s11, ra, 115f
                  srai         t2, s10, 13
115:              sll          a1, zero, t0
                  sltiu        s9, s6, 1779
                  ori          s4, s10, -1800
                  srl          tp, s5, s8
119:              sll          a0, a5, t5
                  sub          t6, gp, tp
                  bge          a1, s4, 127f
                  bge          ra, t2, 128f
                  slli         s0, a5, 23
124:              sra          s11, sp, a5
                  ori          a6, a3, 789
                  srai         s8, s1, 13
127:              sra          gp, t6, a4
128:              bge          t5, s7, 143f
                  sra          a2, s1, a6
                  bne          tp, gp, 136f
                  sll          s0, s10, a3
                  bne          a2, s7, 142f
                  srli         a5, a6, 12
                  blt          a4, s2, 149f
                  slli         s11, a1, 18
136:              andi         t6, tp, -494
                  srli         t6, s8, 5
                  and          s5, a7, s0
                  or           s9, t4, sp
                  auipc        s7, 691212
                  bne          t6, gp, 152f
142:              addi         a6, zero, -1792
143:              srai         s0, s3, 26
                  lui          s9, 36072
                  bne          t1, s11, 147f
                  bne          s1, s4, 152f
147:              lui          t0, 853817
                  sub          t5, s0, a3
149:              andi         zero, a4, 670
                  or           s9, s0, s8
                  add          tp, t0, s2
152:              slli         t2, t2, 26
                  sltu         tp, t2, a1
                  addi         t1, s11, -1566
                  auipc        ra, 233416
                  sll          zero, zero, s5
                  srai         t6, sp, 10
                  slli         s0, gp, 17
                  and          a5, a3, ra
                  andi         sp, t3, -1537
                  andi         zero, t5, 268
                  andi         a6, t5, 1124
                  sll          s9, t0, a2
                  auipc        t0, 955827
                  sll          s11, a4, a5
                  xori         t5, s3, -914
                  beq          a3, s9, 178f
                  add          t3, s9, s11
                  srai         t0, a0, 24
                  xor          t1, t3, zero
                  slli         gp, s7, 22
                  bgeu         t0, s7, 179f
                  srai         gp, s2, 13
                  sub          t2, s6, t6
                  auipc        tp, 66740
                  sltu         t5, s6, s0
                  addi         s9, s11, 714
178:              sltu         s1, a5, a1
179:              lui          a4, 353063
                  srli         a6, a2, 7
                  beq          t4, s10, 196f
                  slt          t0, t4, tp
                  xori         s11, t3, -978
                  or           s7, t5, a0
                  beq          s8, s4, 205f
                  or           a4, s9, zero
                  bge          s0, a2, 193f
                  nop
                  srai         s11, s11, 18
                  bne          s0, s7, 201f
                  bgeu         a5, a6, 195f
                  xori         t5, s7, 1288
193:              srli         s7, t5, 5
                  xor          tp, sp, s2
195:              slti         t2, a4, 2025
196:              add          a5, s0, t6
                  bltu         a7, a0, 212f
                  bne          t2, s4, 217f
                  slti         ra, a4, 958
                  addi         ra, t4, -825
201:              srai         t5, s0, 7
                  bne          t0, t5, 221f
                  andi         zero, t2, -976
                  xor          a0, s0, a6
205:              bge          s11, s7, 222f
                  srli         sp, s0, 9
                  addi         zero, sp, -1035
                  bge          t4, s0, 221f
                  lui          zero, 101041
                  slli         s6, a2, 25
                  sub          s1, t6, a2
212:              srli         gp, a5, 23
                  bltu         t2, t3, 233f
                  sltu         t3, a5, a1
                  slt          t1, s10, gp
                  add          ra, gp, a1
217:              blt          a4, a5, 235f
                  bgeu         a4, t4, 222f
                  bne          a2, s5, 225f
                  ori          sp, gp, -981
221:              bltu         a4, s3, 234f
222:              xor          a2, s4, a0
                  lui          sp, 250330
                  and          t1, t2, tp
225:              srl          t0, a4, t4
                  sltu         a0, s4, s5
                  bltu         t6, a1, 233f
                  bltu         s6, a5, 230f
                  srl          sp, tp, t1
230:              sltu         a0, s9, t1
                  bge          t1, t3, 246f
                  ori          s8, t5, 1624
233:              beq          ra, s10, 235f
234:              addi         t0, tp, 1656
235:              or           s9, a6, s10
                  addi         a5, a2, -422
                  nop
                  blt          s0, t3, 240f
                  srai         a1, t1, 26
240:              slti         a0, a7, 1356
                  bgeu         s11, a3, 247f
                  or           s11, s7, zero
                  and          ra, s6, s6
                  sub          t1, s1, t0
                  bgeu         a0, t0, 250f
246:              sltiu        t5, a4, 939
247:              beq          ra, t2, 262f
                  bgeu         a1, a0, 254f
                  sltiu        s8, a2, -2001
250:              slt          s0, gp, sp
                  and          s5, t0, zero
                  lui          t1, 500870
                  add          s4, s6, s0
254:              slli         a1, s9, 25
                  slti         s8, s8, -705
                  srl          a1, gp, a7
                  lui          t6, 424456
                  blt          a7, t6, 262f
                  auipc        s1, 966620
                  sll          s7, zero, a0
                  srai         s1, s11, 10
262:              srl          zero, sp, zero
                  sra          t2, a7, s8
                  xor          s5, s10, s0
                  or           gp, s8, t4
                  or           a0, zero, ra
                  bge          a7, s8, 271f
                  bltu         s3, a3, 278f
                  slti         s5, tp, 747
                  blt          t1, gp, 281f
271:              srli         s10, t6, 28
                  add          a5, s1, t3
                  sltu         tp, s4, s10
                  auipc        s8, 389626
                  ori          t2, s7, -1910
                  bge          a1, a3, 290f
                  bltu         t6, s2, 290f
278:              ori          s5, a5, -625
                  andi         a3, t0, -38
                  add          a6, sp, s4
281:              and          s4, s0, a1
                  slti         a6, t0, -630
                  xori         a3, tp, 22
                  bltu         s2, s8, 290f
                  sra          s8, s10, s9
                  sra          s11, s7, a7
                  nop
                  blt          a1, zero, 290f
                  sll          t3, s9, s2
290:              ori          a6, a2, -1577
                  lw           tp, 4(a7)
                  addi         a7, a7, 64
                  xor          t0, t2, t5
                  slt          t3, gp, a3
                  sltu         s4, tp, s0
                  sra          a4, a4, t5
                  xori         a5, a5, 1378
389:              addi x25, x4, 1
389:              jalr x25, x25, 0
sub_3:            addi         a7, a7, -56
                  srai         s1, s1, 19
                  sw           tp, 4(a7)
                  slli         t5, s3, 29
                  sll          t6, t2, a1
                  xor          s2, s4, t1
                  sll          t6, s1, s9
                  or           zero, s0, zero
                  bgeu         s0, s6, 18f
                  slli         s11, s1, 30
                  srli         s10, t0, 11
                  srl          zero, a2, s6
                  srl          sp, sp, a2
                  sub          s7, s10, sp
                  bne          a1, t3, 21f
                  bge          zero, a0, 21f
                  addi         s10, s2, -1087
                  bne          t1, a4, 17f
                  srli         a6, t2, 22
                  lui          s8, 642996
                  andi         t5, a2, -1506
                  addi         t6, s3, -1408
                  srai         s8, a7, 31
                  slli         a2, t4, 20
17:               bgeu         s4, a7, 21f
18:               sub          t5, ra, t2
                  sltiu        s8, a2, 1310
                  addi         s10, tp, -244
21:               andi         a0, t2, 509
                  sll          a6, s11, s5
                  sra          t5, a1, s3
                  lw           tp, 4(a7)
                  addi         a7, a7, 56
                  andi         t0, t0, -79
                  auipc        a0, 79036
                  sub          t2, ra, s8
                  lui          t2, 898079
                  sub          s4, t5, s5
                  sltiu        ra, s0, 1838
                  slli         ra, gp, 4
40:               addi x14, x4, 1
40:               jalr x14, x14, 0
sub_6:            sll          s6, a4, gp
                  ori          a3, a0, -1027
                  sltu         a2, s8, s4
                  nop
                  xori         s8, a3, -1225
                  bne          s3, tp, sub_6_stack_p
                  lui          ra, 776653
sub_6_stack_p:    addi         a7, a7, -12
                  sw           tp, 4(a7)
                  srl          a3, a1, t0
                  sll          s8, t2, s0
                  srli         a0, a4, 27
                  la           s11, region_0+834 #start riscv_load_store_rand_instr_stream_1
                  lb           t3, 151(s11)
                  lh           a6, 204(s11)
                  lb           gp, 147(s11)
                  sb           a1, -165(s11)
                  sb           tp, -25(s11)
                  lh           s0, -96(s11)
                  sb           a0, 33(s11)
                  lbu          s9, -247(s11)
                  slti         a1, zero, 278
                  lbu          a5, -103(s11)
                  srli         a6, a6, 22
                  sub          s2, t1, s0
                  srai         a3, s3, 16
                  ori          sp, s4, -133
                  lh           a1, -120(s11)
                  sra          ra, a4, gp
                  lh           t2, 190(s11)
                  lb           s5, 31(s11)
                  andi         tp, s1, -1549
                  and          t6, s4, s2
                  lbu          a2, 57(s11)
                  xor          a0, a2, t2
                  sw           t4, -154(s11)
                  or           s0, s0, zero
                  and          zero, s7, gp
                  lui          t5, 515351
                  auipc        s2, 699916
                  sra          t6, s3, a1
                  sh           s7, -244(s11) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+762 #start riscv_load_store_rand_instr_stream_0
                  nop
                  sll          a3, a2, a1
                  sll          a1, t3, a5
                  sh           t5, 788(sp)
                  sb           ra, -687(sp)
                  sh           s1, 914(sp)
                  slt          s0, t4, s4
                  sll          s8, sp, a2
                  sub          t3, s2, a2
                  lhu          zero, -346(sp)
                  sb           tp, -215(sp)
                  slli         t3, s7, 6
                  slti         tp, a2, 1893
                  sra          s4, ra, s11
                  slti         s4, s11, 1730
                  addi         s5, a6, -1007
                  lh           t3, -650(sp)
                  sltu         a6, tp, ra
                  slt          t3, tp, s2
                  xor          s2, t1, t2
                  addi         t5, tp, -494
                  slt          s5, a5, s9
                  sub          a4, s4, t2
                  lb           a3, -674(sp)
                  sub          s9, a2, a3
                  lhu          s1, 624(sp)
                  lhu          t1, -496(sp)
                  and          a1, t2, s4
                  sh           a2, -298(sp)
                  lb           t3, 24(sp)
                  sltiu        a4, t6, -1776
                  sll          a5, s4, s5
                  lh           s6, -388(sp)
                  slti         t5, s2, 2025
                  srl          s11, tp, s7
                  srli         t5, a3, 24
                  andi         s0, a4, 1880
                  auipc        a2, 1029554
                  sb           t0, 648(sp)
                  or           t2, s4, a0
                  slt          s1, sp, s2
                  add          a4, a4, a6
                  lbu          a6, 701(sp) #end riscv_load_store_rand_instr_stream_0
                  add          t0, t3, s1
                  nop
                  xor          s8, s7, s8
                  blt          s1, t4, 8f
                  blt          t1, a2, 13f
                  bgeu         a2, a1, 14f
                  or           t1, s6, s10
                  and          a0, a6, s8
8:                bge          ra, t6, 14f
                  blt          a7, s2, 16f
                  bge          t6, tp, 17f
                  xor          a6, s0, a4
                  bgeu         a2, ra, 20f
13:               sub          t3, a4, a7
14:               andi         a3, zero, 1725
                  srai         gp, a7, 4
16:               slti         s6, s1, 1684
17:               srli         a1, s3, 25
                  sra          s6, t6, ra
                  bgeu         tp, t2, 39f
20:               bne          s2, t3, 38f
                  slli         a2, ra, 12
                  sub          t1, s8, t3
                  slti         s8, a2, -756
                  ori          s10, ra, -756
                  sll          s9, s10, a0
                  srli         s4, t1, 19
                  bltu         tp, t4, 47f
                  srli         t0, t3, 8
                  andi         gp, a4, -1328
                  nop
                  slti         a5, a7, -914
                  sub          s8, s8, a4
                  add          s11, sp, t4
                  nop
                  srl          sp, s9, gp
                  srai         t2, s11, 5
                  addi         a2, t1, 693
38:               or           t0, s3, s6
39:               srli         s9, s10, 23
                  ori          s5, t3, 1270
                  xori         a2, s1, 170
                  slti         tp, a0, 497
                  bne          t5, s2, 51f
                  bge          a6, a6, 48f
                  sltu         t1, zero, gp
                  auipc        zero, 675103
47:               xor          s1, t0, zero
48:               xor          a5, s11, a0
                  sltiu        t5, t2, -328
                  bgeu         zero, s8, 67f
51:               addi         a6, a4, 1056
                  bgeu         s2, s5, 71f
                  addi         t1, t4, 1782
                  addi         s11, s4, -456
                  sltiu        a2, s6, 1862
                  slli         s10, a7, 26
                  srl          sp, s6, s8
                  srli         s6, ra, 8
                  srl          s8, t0, t3
                  xor          gp, a6, a1
                  and          s0, s0, a2
                  ori          s4, s7, 1074
                  xori         s5, a5, 564
                  auipc        zero, 200486
                  sltiu        ra, t1, 1696
                  add          s4, s5, s2
67:               or           gp, ra, t6
                  srl          t6, s11, a5
                  blt          ra, a4, 85f
                  slti         s11, s8, 656
71:               slti         tp, a0, 1145
                  sra          s8, s11, a2
                  srai         a4, s1, 15
                  blt          a1, s5, 89f
                  sltu         t3, ra, s7
                  or           t3, sp, s6
                  srai         s9, a6, 12
                  bge          t0, s10, 95f
                  xor          a3, s1, s7
                  bltu         ra, t1, 99f
                  srl          s8, t6, t5
                  slti         a2, s3, 655
                  addi         gp, s8, 1443
                  sll          gp, s2, s4
85:               xori         a1, s4, 726
                  nop
                  srl          s4, t6, a3
                  srl          gp, t4, s2
89:               sra          t5, zero, s9
                  add          zero, t5, zero
                  srl          s10, s11, t2
                  sub          sp, t6, a4
                  srli         sp, a0, 17
                  bgeu         a5, s10, 104f
95:               addi         s8, sp, -42
                  bge          a1, s3, 98f
                  andi         t6, s0, -744
98:               or           s10, ra, s10
99:               blt          a5, a7, 117f
                  srli         t5, a3, 25
                  bgeu         a4, zero, 112f
                  slli         s11, t2, 1
                  and          s10, s5, s8
104:              sra          a2, a7, a7
                  xori         a3, t3, -305
                  xori         a6, zero, 243
                  auipc        s8, 443257
                  lui          s5, 460842
                  add          t3, a1, s5
                  sltu         ra, t5, t6
                  ori          s5, s0, -1170
112:              bge          tp, a5, 119f
                  blt          a2, ra, 115f
                  add          s5, t3, a6
115:              xor          a2, s10, s9
                  addi         s9, s0, -404
117:              xor          ra, s10, t3
                  beq          a3, t3, 125f
119:              add          t0, t0, t3
                  srai         s0, s8, 30
                  lui          a1, 559820
                  bgeu         s3, t6, 142f
                  sltiu        s6, a0, -217
                  sra          a1, s2, t0
125:              ori          a6, s1, 992
                  sub          sp, s9, zero
                  bltu         s2, t4, 132f
                  slli         s9, s6, 30
                  bne          s3, gp, 145f
                  beq          t6, zero, 144f
                  add          tp, s10, t4
132:              auipc        s11, 388674
                  nop
                  bltu         t4, s5, 147f
                  blt          a5, a5, 137f
                  sra          t2, a6, zero
137:              slli         a6, a4, 2
                  ori          s7, s0, -98
                  srli         a3, s11, 25
                  bltu         s10, zero, 155f
                  xori         s8, a6, -1428
142:              beq          s6, s4, 155f
                  sltu         s0, t1, t2
144:              addi         a2, s3, 1221
145:              and          t0, t4, t4
                  ori          a2, ra, 1479
147:              lui          a4, 712338
                  sub          t1, gp, s1
                  and          sp, a7, a1
                  lui          t3, 70302
                  sll          t6, a5, zero
                  sll          s2, a5, s10
                  blt          zero, t6, 173f
                  and          s6, s4, gp
155:              beq          t1, t1, 169f
                  slt          gp, t6, s10
                  or           a2, s11, s11
                  or           a0, s11, s8
                  xori         a5, tp, -831
                  sltu         s1, s5, t0
                  bne          t5, s5, 179f
                  ori          s8, s2, -630
                  xor          a0, s3, a5
                  beq          tp, s2, 168f
                  blt          sp, a4, 185f
                  bgeu         a0, t3, 182f
                  xori         a5, s10, -1133
168:              and          s2, tp, a7
169:              beq          tp, s3, 177f
                  bgeu         s6, s11, 187f
                  auipc        a2, 1043738
                  addi         s8, gp, -1936
173:              xori         tp, s2, 610
                  sub          s9, t3, a7
                  bltu         ra, s1, 182f
                  slti         t3, a6, 242
177:              sub          s4, sp, s8
                  bltu         ra, t6, 185f
179:              and          t6, s10, s9
                  add          gp, t4, s1
                  xor          s2, s0, t6
182:              andi         a5, t4, -1990
                  sub          a6, s6, s6
                  auipc        sp, 211202
185:              srl          s8, s2, t1
                  slli         ra, ra, 26
187:              nop
                  addi         gp, s1, -1808
                  bltu         a0, s3, 197f
                  slt          a3, s0, tp
                  sltu         t3, s4, tp
                  bge          ra, s2, 197f
                  srli         s6, s1, 5
                  srai         t5, a5, 19
                  blt          a1, a4, 204f
                  nop
197:              slli         t0, zero, 5
                  lui          t0, 666618
                  sub          t2, t4, s0
                  srai         a4, t1, 13
                  srai         s0, a6, 9
                  add          s4, s2, s9
                  sra          s4, t3, s8
204:              lui          t1, 534995
                  xori         s4, t0, -934
                  bltu         t6, s9, 225f
                  srai         a3, s10, 2
                  srai         s2, gp, 22
                  sra          s8, a5, s0
                  beq          t6, s1, 219f
                  slt          s9, ra, a2
                  ori          a3, s2, 837
                  srai         tp, sp, 20
                  andi         a4, s3, 753
                  bne          a3, a4, 226f
                  slti         a1, s3, -1085
                  xori         s6, a7, -1289
                  lui          gp, 719455
219:              bge          s7, a2, 225f
                  sltiu        a4, a2, 115
                  auipc        s9, 37825
                  addi         t0, a2, -1377
                  slli         t1, s7, 14
                  addi         t6, s2, 1925
225:              sltu         s8, tp, s2
226:              lui          t3, 775775
                  and          s2, tp, gp
                  beq          s1, t4, 248f
                  slti         a6, t6, -165
                  sra          gp, s3, a3
                  xor          s2, t3, a5
                  or           t6, ra, a2
                  sltiu        t3, s8, -530
                  srli         s1, a4, 29
                  add          s8, t4, a0
                  auipc        t6, 195196
                  beq          s8, s2, 239f
                  xor          s6, s5, s6
239:              add          gp, t6, t1
                  add          t3, a6, a0
                  bne          s0, ra, 251f
                  bne          a3, a1, 258f
                  slt          a6, s2, a0
                  sltiu        gp, a0, -1345
                  addi         s1, a5, 1054
                  sltiu        t5, s4, -541
                  srl          s0, s0, t6
248:              xor          a6, t1, a4
                  auipc        s0, 1002672
                  auipc        a4, 232675
251:              auipc        s8, 374513
                  sltu         t2, t3, s6
                  srl          s4, a5, t0
                  auipc        s1, 715830
                  ori          s11, ra, -2028
                  blt          ra, s7, 263f
                  addi         a3, s3, -1160
258:              sll          a0, zero, s7
                  slt          a4, s2, s1
                  xor          a3, s8, s2
                  sltu         s1, s1, sp
                  srli         s2, t3, 23
263:              and          t5, a0, s1
                  add          a1, s2, s4
                  slti         a4, t4, 0
                  srl          sp, a7, s1
                  srl          s10, a5, s9
                  blt          t4, s4, 286f
                  or           t1, s9, a3
                  sra          s1, s7, gp
                  bge          s7, a5, 288f
                  bgeu         a0, t3, 277f
                  beq          ra, s7, 280f
                  slti         s6, s1, -611
                  bne          s7, s3, 294f
                  auipc        s9, 653055
277:              sra          a3, a2, t3
                  slli         t5, t5, 22
                  bltu         t3, t5, 297f
280:              add          s5, s6, t4
                  xor          t3, t6, ra
                  xori         a3, s3, 1734
                  andi         t3, s0, -1636
                  andi         tp, a3, 708
                  nop
286:              beq          a6, tp, 297f
                  slt          gp, t6, t5
288:              xor          ra, a0, tp
                  srl          s0, s6, zero
                  or           a4, a1, zero
                  srai         t0, ra, 28
                  sltu         s2, s2, gp
                  srl          a5, s4, sp
294:              bgeu         s0, t4, 297f
                  blt          s8, s1, 297f
                  xor          s0, s9, sp
297:              sub          s9, ra, t4
                  sub          s10, s1, a5
                  lui          s7, 1001726
                  xor          t5, s11, t3
                  lw           tp, 4(a7)
                  addi         a7, a7, 12
                  ori          a6, s5, -1084
                  sra          s7, t4, s6
                  addi         zero, a7, -250
                  srai         t5, a0, 28
                  xor          s0, a1, gp
                  lui          ra, 206939
395:              addi x25, x4, 0
395:              jalr x25, x25, 0
sub_5:            and          s0, t0, a4
                  xor          s2, a7, a0
                  addi         a7, a7, -24
                  ori          s6, s0, 1649
                  sltu         t1, gp, a2
                  add          a2, t4, s5
                  srli         s10, s4, 14
                  addi         s2, a2, -963
                  sw           tp, 4(a7)
                  andi         s7, s10, 1927
                  slt          t6, a4, a1
                  sub          zero, gp, s11
                  slli         s1, a3, 7
                  srli         s10, s6, 4
                  srli         s6, s4, 27
                  andi         a4, a4, -570
                  sll          s6, t5, t4
                  la           gp, sub_7
                  addi         gp, gp, 280
                  add          a2, s5, zero
                  slti         a0, t3, 1535
                  sll          tp, s5, a3
                  srl          s5, s10, t4
                  ori          t3, t6, 594
sub_5_j6:         jalr         tp, gp, -280 #jump sub_5 -> sub_7
                  sll          s8, a1, s5
                  srl          s1, s2, sp
                  la           s2, sub_6
                  sltiu        t0, s11, -275
                  add          t1, t5, a4
                  addi         s2, s2, 232
                  and          s6, s1, s3
                  andi         a6, sp, 111
sub_5_j7:         jalr         tp, s2, -231 #jump sub_5 -> sub_6
                  addi         s8, a6, -2005
                  or           s11, t4, zero
                  blt          s7, ra, sub_5_j8 #branch to jump instr
                  slt          a0, t1, s1
                  lui          a4, 885458
                  or           gp, tp, s4
                  ori          t5, t0, 1157
                  srl          s4, s11, s2
                  slli         tp, s0, 14
                  sltiu        zero, s1, 1569
sub_5_j8:         jal          tp, sub_8 #jump sub_5 -> sub_8
                  xori         a1, s2, 797
                  xor          s10, a6, a1
                  srli         a6, s2, 12
                  bgeu         s0, s4, sub_5_j9 #branch to jump instr
                  sltu         t0, gp, a5
                  slt          t6, a7, t0
sub_5_j9:         jal          tp, sub_9 #jump sub_5 -> sub_9
                  sltu         t1, a5, a6
                  sltiu        t6, t6, -223
                  sltu         a6, s6, s6
                  la           s10, sub_7
                  slti         t2, a7, 1909
                  slt          a0, t2, a7
                  addi         s10, s10, 196
                  nop
                  srli         ra, sp, 16
                  ori          gp, t6, 380
                  bge          s11, a7, sub_5_j10 #branch to jump instr
                  and          s2, sp, s4
                  srl          a3, a4, t6
sub_5_j10:        jalr         tp, s10, -196 #jump sub_5 -> sub_7
                  slt          a3, s11, s2
                  or           t6, a3, s1
                  sub          t1, s6, a3
                  beq          a0, ra, 8f
                  auipc        a6, 1029175
                  or           zero, sp, t6
                  ori          s10, gp, 988
                  ori          s6, tp, -1009
8:                sra          a5, gp, s1
                  lw           tp, 4(a7)
                  xor          t5, gp, a5
                  ori          s2, s5, 1808
                  sltiu        s2, a7, 851
                  srai         a1, a7, 22
                  addi         a7, a7, 24
                  xor          gp, t4, s6
                  ori          s7, t0, 626
                  srl          gp, t1, s3
                  andi         a1, t4, 96
                  sll          a1, a7, t1
                  andi         a0, s3, 1439
87:               addi x28, x4, 0
87:               jalr x28, x28, 0
sub_8:            addi         a7, a7, -20
                  sub          ra, a1, t5
                  andi         gp, s5, 1206
                  or           s9, s4, tp
                  lui          gp, 240202
                  sw           tp, 4(a7)
                  nop
                  sll          a0, zero, s9
                  bltu         s9, gp, 3f
                  srl          a0, s0, a0
3:                auipc        s0, 850350
                  ori          s7, s0, 1854
                  xori         a3, a0, 162
                  auipc        t2, 675497
                  srli         t3, t5, 21
                  andi         t6, s6, 775
                  slt          t1, s5, s2
                  srl          a6, s2, a5
                  nop
                  or           t2, t5, s8
                  or           s2, s8, s6
                  lw           tp, 4(a7)
                  andi         s6, s6, -84
                  addi         a7, a7, 20
                  sll          t5, sp, a4
25:               addi x25, x4, 1
25:               jalr x25, x25, 0
sub_1:            slt          s6, ra, s3
                  xori         t1, a7, 169
                  addi         a7, a7, -12
                  sltiu        s11, s3, -1843
                  srl          a0, s7, s9
                  srai         a2, a1, 28
                  srli         a1, a3, 20
                  sw           tp, 4(a7)
                  slli         s4, t3, 0
                  or           s2, t2, a2
                  add          t3, a0, t2
                  and          t6, a3, a1
                  and          t0, zero, a1
                  bgeu         gp, s4, 16f
                  or           t1, gp, gp
                  slti         s7, a1, 1950
                  and          t6, zero, s3
                  or           t5, s9, tp
                  bltu         gp, t2, 17f
                  sltu         s6, ra, s11
                  ori          s4, a4, 1208
                  nop
                  sltu         a0, s4, s4
                  slti         s4, s7, 260
                  la           a6, region_0+690 #start riscv_load_store_rand_instr_stream_0
                  sb           ra, -15(a6)
                  slt          ra, t1, zero
                  lb           s0, -4(a6)
                  ori          s1, s8, 569
                  addi         a1, a1, 446
                  xori         a1, a5, -692
                  sb           s0, 7(a6)
                  lb           a0, 15(a6)
                  sh           a7, -12(a6)
                  sub          s7, t5, zero
                  sb           t3, 13(a6)
                  lb           a1, 4(a6)
                  auipc        s4, 1038045
                  sb           a1, -16(a6)
                  lb           s0, -15(a6)
                  lbu          s7, -15(a6)
                  sb           s6, -15(a6)
                  lh           tp, 12(a6)
                  or           a5, s3, t6
                  or           s11, t5, t5
                  lb           a2, 5(a6)
                  auipc        s1, 614972
                  lhu          ra, 14(a6)
                  sb           t3, 12(a6)
                  srai         t6, s6, 6
                  auipc        t2, 867966
                  sb           t4, 4(a6)
                  srli         s7, t4, 22
                  sb           t4, 5(a6)
                  addi         a5, ra, 1087
                  sh           t0, -8(a6)
                  sll          t6, a3, t2
                  lbu          gp, -5(a6)
                  lhu          t6, 0(a6)
                  lbu          a5, 13(a6)
                  or           s9, s5, s1
                  lb           s1, -11(a6)
                  srli         a5, s6, 5
                  lh           a1, -12(a6)
                  lb           sp, 8(a6)
                  lbu          s11, 1(a6) #end riscv_load_store_rand_instr_stream_0
                  sltiu        sp, s2, -73
                  xor          t3, a3, tp
                  slli         zero, a1, 6
                  srli         a1, ra, 17
16:               addi         s0, s3, 481
17:               blt          t1, s0, 26f
                  xor          sp, sp, s0
                  add          s1, ra, s4
                  slti         tp, s7, -470
                  bgeu         a3, t2, 36f
                  slti         a0, a5, 1424
                  srl          a4, sp, sp
                  slli         s4, zero, 2
                  srai         t3, s10, 27
26:               srl          gp, a7, ra
                  srli         t2, a0, 13
                  xori         ra, zero, 1263
                  blt          zero, s9, 46f
                  sltiu        s5, a0, -514
                  lui          s1, 46881
                  auipc        zero, 959891
                  srai         s7, s3, 31
                  addi         s5, t3, -463
                  auipc        s0, 46012
36:               sltu         s8, s3, s6
                  sra          s4, a0, s6
                  xor          a4, s11, s4
                  ori          a0, sp, 134
                  and          t1, s7, s3
                  srli         t0, s3, 31
                  bgeu         s5, s6, 61f
                  sub          a3, s3, s2
                  sll          s6, t4, gp
                  bgeu         t2, sp, 49f
46:               add          s8, a2, a7
                  srai         t1, t3, 4
                  or           tp, s3, gp
49:               auipc        t1, 273947
                  bne          a5, a5, 57f
                  beq          a7, s0, 62f
                  sll          t1, s0, s11
                  sub          a4, t5, s10
                  sub          tp, a3, a3
                  sltiu        t5, t3, -1524
                  andi         s10, t0, 1213
57:               addi         a3, a4, -510
                  sltu         t1, s1, t2
                  xori         s2, ra, -383
                  xori         a0, zero, 1372
61:               or           a2, s11, s11
62:               bge          s7, t5, 79f
                  andi         s8, t0, -1712
                  lui          tp, 475406
                  nop
                  ori          a0, s0, 897
                  slt          a1, a2, sp
                  auipc        a5, 925211
                  or           s5, t0, s7
                  sra          gp, gp, s4
                  andi         s5, s5, 1505
                  xor          s1, zero, s8
                  addi         s7, s9, -217
                  bgeu         s3, a3, 84f
                  blt          zero, s9, 91f
                  sub          s11, zero, a3
                  sltu         s7, gp, ra
                  slli         s1, s1, 9
79:               sltiu        t1, s1, -1740
                  blt          s1, s5, 96f
                  andi         a3, ra, -1714
                  bne          ra, a0, 99f
                  xor          t2, s10, a3
84:               nop
                  bltu         s9, zero, 87f
                  bne          t6, ra, 89f
87:               xori         tp, zero, 338
                  nop
89:               srai         s2, t3, 30
                  slli         a3, s6, 7
91:               or           t5, a6, gp
                  sltu         s4, ra, sp
                  sltiu        t6, t2, -503
                  slli         s9, a4, 21
                  xor          s10, a4, s10
96:               bltu         t4, a7, 113f
                  sub          a2, a0, gp
                  bne          a3, a7, 100f
99:               beq          s1, t5, 106f
100:              sll          ra, a4, s5
                  xori         s4, t2, 1254
                  addi         tp, ra, -1416
                  add          gp, zero, t4
                  sra          t1, s6, a3
                  and          t2, sp, a0
106:              sra          s1, t0, a5
                  srli         s7, t5, 9
                  nop
                  srli         t2, t0, 17
                  srl          ra, t5, t5
                  sra          a4, t5, s10
                  bge          a6, s6, 129f
113:              xor          s4, tp, t0
                  and          s7, s4, s11
                  slt          s0, t0, s11
                  srl          tp, s6, s0
                  bge          sp, s7, 136f
                  srl          t2, t4, s2
                  sra          a2, t1, tp
                  sub          s6, s4, t3
                  ori          t0, gp, -541
                  blt          s7, tp, 136f
                  bne          t3, a7, 128f
                  add          t1, t5, t3
                  sra          s10, a2, t3
                  auipc        s4, 383604
                  slti         ra, a5, 1331
128:              andi         t2, t2, 148
129:              slli         t2, a2, 13
                  add          s9, s3, s11
                  auipc        a6, 824263
                  and          t5, a7, a0
                  addi         ra, s7, 915
                  srl          s11, t2, t6
                  srl          t6, s9, s11
136:              bgeu         ra, s0, 150f
                  add          s11, s11, t0
                  sra          t6, a2, s11
                  srai         t1, a2, 8
                  auipc        s0, 585718
                  xori         t3, zero, -2010
                  bge          s2, t1, 152f
                  xori         s8, s6, -1761
                  blt          a5, s10, 155f
                  slt          a2, ra, t3
                  lui          t5, 737012
                  beq          a1, s7, 152f
                  bgeu         s10, a7, 152f
                  and          s11, a4, s8
150:              sltu         s4, s0, ra
                  sltiu        t3, s10, 786
152:              sll          s2, s5, s6
                  or           t2, a0, a1
                  ori          a2, s11, -1864
155:              lui          s7, 891618
                  bge          a3, t0, 171f
                  srai         t2, a1, 24
                  sltiu        zero, s9, 32
                  add          a6, t0, a7
                  sll          gp, gp, s4
                  xori         s10, a3, 1009
                  beq          t6, t0, 166f
                  ori          a1, s9, -1770
                  srl          gp, s11, gp
                  sll          t0, s4, t4
166:              xori         t3, s8, 1103
                  sra          a0, s5, a6
                  srai         s1, t5, 6
                  slt          t0, s1, s7
                  sub          t0, a0, gp
171:              nop
                  slt          tp, s0, tp
                  addi         t5, a4, -411
                  sltu         a2, s3, a2
                  blt          a5, a0, 178f
                  srl          t2, s9, s9
                  srai         t3, a4, 14
178:              slli         s5, ra, 18
                  srai         s10, s5, 15
                  slti         a1, a1, -29
                  blt          sp, a6, 191f
                  slti         zero, a4, -91
                  bgeu         s4, s5, 192f
                  xori         s8, t2, -628
                  lui          s2, 1025842
                  blt          t5, a6, 200f
                  beq          s4, s4, 202f
                  auipc        s4, 737105
                  srl          a6, ra, t1
                  ori          sp, a3, 1176
191:              sra          s6, a3, a2
192:              srli         a4, ra, 13
                  slti         t3, t1, 1030
                  slli         gp, s4, 10
                  and          s6, s11, a6
                  lui          s6, 294042
                  bgeu         a3, s10, 210f
                  xori         a6, a5, 293
                  addi         tp, a6, 1749
200:              srl          ra, sp, s4
                  beq          a7, t0, 210f
202:              srai         t1, a6, 16
                  nop
                  add          a0, s1, s6
                  slti         t3, t0, -8
                  sll          a5, s4, a4
                  sub          zero, s11, a6
                  sra          gp, tp, t2
                  nop
210:              addi         s1, s4, -1165
                  slt          s5, s0, s10
                  lw           tp, 4(a7)
                  srai         s11, tp, 28
                  addi         a7, a7, 12
                  sub          s7, a1, a4
                  slti         t6, t4, 145
                  slt          sp, s6, a5
272:              addi x12, x4, 1
272:              jalr x12, x12, 0
sub_2:            sll          s2, s0, a4
                  bge          t2, s5, sub_2_stack_p
sub_2_stack_p:    addi         a7, a7, -64
                  sltu         s9, a2, t1
                  sub          ra, a2, s10
                  sw           tp, 4(a7)
                  slti         t0, t6, 1263
                  sltiu        tp, zero, -1147
                  slti         a4, sp, 1654
                  or           s8, a2, a4
                  lui          a0, 15677
                  la           t3, sub_5
                  addi         t3, t3, -1015
                  bge          s4, t3, sub_2_j5 #branch to jump instr
                  sll          a1, t1, t3
                  srai         gp, s11, 14
sub_2_j5:         jalr         tp, t3, 1015 #jump sub_2 -> sub_5
                  bne          s3, a0, 16f
                  or           s0, a6, sp
                  auipc        t1, 835441
                  bgeu         a2, s10, 11f
                  andi         s9, a5, 1018
                  sll          s7, s6, a2
                  bge          t1, gp, 12f
                  addi         a0, s10, 634
                  beq          a3, t5, 12f
                  sll          t1, s2, s5
                  sub          t0, t4, s4
11:               and          sp, s6, ra
12:               or           s9, s0, a0
                  sltu         t5, t5, a0
                  slt          s1, tp, a2
                  bltu         s4, t3, 29f
16:               beq          s6, t4, 21f
                  sltiu        s1, s2, -1912
                  sltiu        s6, t0, 1074
                  sltu         s0, s9, t0
                  beq          s1, a3, 24f
21:               bgeu         t5, a4, 41f
                  andi         t2, t0, 763
                  auipc        a2, 533549
24:               slt          gp, s10, s5
                  addi         t3, s2, -99
                  xori         a3, t3, 218
                  blt          s5, a3, 42f
                  blt          tp, s7, 43f
29:               auipc        s10, 540087
                  add          t2, zero, s10
                  nop
                  xori         s2, s5, -657
                  auipc        s10, 434687
                  or           t1, s4, t1
                  andi         t0, a6, 678
                  bgeu         tp, a6, 51f
                  sll          ra, t4, s0
                  srai         t5, zero, 17
                  sub          gp, s3, a6
                  slli         gp, ra, 5
41:               beq          t3, a6, 47f
42:               beq          gp, sp, 51f
43:               slt          t5, a2, a3
                  slli         s1, s10, 23
                  bge          zero, t6, 51f
                  srl          ra, a6, s1
47:               sub          t5, t3, ra
                  beq          zero, t0, 51f
                  bne          t4, s3, 51f
                  srl          t6, t2, a4
51:               lui          a6, 420228
                  lw           tp, 4(a7)
                  lui          s7, 792508
                  nop
                  addi         a7, a7, 64
                  and          s9, s6, t5
74:               addi x12, x4, 0
74:               jalr x12, x12, 0
sub_7:            xori         t2, a1, 1151
                  addi         a7, a7, -28
                  sw           tp, 4(a7)
                  ori          a0, sp, -1940
                  and          t0, a5, a4
                  auipc        s0, 131135
                  la           s6, region_1+1951 #start riscv_load_store_rand_instr_stream_0
                  lb           ra, 18(s6)
                  lh           s4, 23(s6)
                  slli         a6, t6, 29
                  sb           a2, 14(s6)
                  sb           s2, -53(s6)
                  sb           a5, -5(s6)
                  sh           t2, 9(s6)
                  lbu          a4, 16(s6)
                  ori          t6, ra, 1959
                  andi         zero, s2, -1018
                  sb           a6, -33(s6)
                  auipc        a3, 947733
                  lbu          t1, -4(s6)
                  lbu          s2, -32(s6)
                  slt          s5, a6, t2
                  lbu          a6, -57(s6)
                  lbu          t2, -20(s6)
                  and          a1, a3, t5
                  lb           s0, 2(s6)
                  sh           a3, -39(s6)
                  lbu          tp, 8(s6)
                  auipc        zero, 210741
                  sub          t0, s5, t2
                  lw           s11, -19(s6)
                  sb           s7, -7(s6)
                  sb           a3, -52(s6)
                  lb           s10, 40(s6)
                  auipc        a4, 499307
                  sb           a6, -9(s6)
                  lhu          t0, -25(s6)
                  lbu          a5, -56(s6)
                  auipc        s4, 639824
                  lh           a6, 35(s6)
                  sb           a6, -38(s6) #end riscv_load_store_rand_instr_stream_0
                  nop
                  addi         t5, s11, -1629
                  and          a0, zero, sp
                  addi         zero, t2, 581
                  slt          a0, t1, t2
                  sra          a5, s7, s4
                  srli         t2, s8, 28
                  xori         a6, s1, 1461
                  srli         s1, s9, 12
                  srl          a3, s3, s3
                  sltu         sp, t1, s2
                  xor          s4, t5, s5
                  beq          a5, t0, 28f
                  bltu         s9, s0, 30f
                  bne          s11, a7, 18f
                  xor          t5, s4, a4
                  or           s8, zero, a6
                  sltiu        t1, s7, -1762
18:               bltu         t2, a0, 29f
                  and          t0, s4, t4
                  sub          t3, a4, t1
                  sll          t2, a4, s1
                  xori         s0, s8, -254
                  xori         s6, s9, 146
                  slt          s0, s7, t4
                  srl          s6, s6, s4
                  srai         s2, a7, 18
                  and          gp, t2, s7
28:               srli         a1, t5, 11
29:               slt          s6, zero, s8
30:               xor          s6, a0, t0
                  sub          a3, s10, sp
                  lui          zero, 913107
                  or           s2, zero, a3
                  srli         sp, a1, 0
                  and          a5, a6, t4
                  bltu         zero, t6, 42f
                  bgeu         t6, t1, 49f
                  srli         sp, a4, 31
                  addi         t1, s7, -1061
                  auipc        a0, 1011564
                  lui          s8, 638620
42:               beq          a1, zero, 52f
                  bltu         s9, a7, 57f
                  blt          tp, a0, 62f
                  or           s6, a7, s7
                  sltu         t6, a6, s3
                  blt          s3, t2, 60f
                  or           a3, a2, s3
49:               bltu         a5, s11, 60f
                  srai         t0, s0, 8
                  bne          s8, ra, 66f
52:               and          sp, a1, t4
                  auipc        ra, 852817
                  blt          s0, s8, 69f
                  bltu         t3, sp, 59f
                  xori         s5, t4, 1317
57:               sltu         t1, sp, t2
                  srai         s5, s3, 6
59:               nop
60:               or           a4, t5, a7
                  srai         t6, zero, 26
62:               slti         s11, t2, 1887
                  auipc        a6, 925893
                  slli         s5, s9, 25
                  xori         t1, t6, 968
66:               slli         a3, t5, 2
                  srai         s2, t2, 27
                  lui          t1, 802640
69:               beq          s2, s3, 73f
                  lui          a2, 895382
                  slli         gp, s11, 4
                  srli         a4, t3, 31
73:               sltiu        t0, s4, 1577
                  beq          s8, s2, 90f
                  slti         s11, tp, 363
                  srai         t1, t2, 21
                  addi         s5, s9, 1319
                  andi         sp, s4, 1842
                  bne          a1, a7, 97f
                  ori          s11, s9, 1509
                  srl          a0, s7, t4
                  ori          s2, a4, 1960
                  addi         s11, s1, -170
                  and          s6, zero, a4
                  sltu         s8, gp, a3
                  slt          t0, a4, s1
                  addi         s4, t0, -371
                  slt          s0, gp, a2
                  add          a1, a0, s8
90:               sltiu        s8, s4, 1652
                  sltu         a0, s4, t5
                  sll          a4, a7, a5
                  and          a3, a6, a4
                  srli         ra, s7, 18
                  xori         a5, t1, -1460
                  srai         sp, a7, 21
97:               or           s5, a4, a2
                  srli         s0, sp, 23
                  srli         s8, a4, 18
                  nop
                  sra          s1, a3, tp
                  and          t5, t2, s11
                  auipc        s6, 665106
                  sltiu        s8, a5, 280
                  addi         a6, t0, -1324
                  xor          a2, t1, a3
                  sra          a0, gp, s10
                  slt          s1, s1, s11
                  slli         s0, s2, 2
                  xor          s4, sp, t2
                  or           t5, t0, t2
                  xori         a3, s3, 1010
                  bgeu         t1, a0, 124f
                  auipc        s10, 903897
                  slt          t3, t2, gp
                  ori          a3, t4, 1357
                  sltiu        s8, s0, -1764
                  bge          a5, s9, 121f
                  srl          s4, a5, t5
                  add          s6, s4, t5
121:              srli         t3, zero, 29
                  sltu         a1, gp, tp
                  beq          t3, t3, 126f
124:              add          a3, s10, s0
                  sra          s1, a3, tp
126:              add          a5, s8, s5
                  lw           tp, 4(a7)
                  slt          s7, s10, a7
                  or           s6, a2, a3
                  slli         s7, t6, 11
                  or           t0, s11, a7
                  addi         a7, a7, 28
                  slti         s2, a6, 247
175:              addi x4, x4, 1
175:              jalr x4, x4, 0
sub_9:            beq          s6, t6, sub_9_stack_p
                  srai         s5, a7, 20
                  xor          a2, t1, t2
                  or           a5, s7, a3
                  and          zero, zero, a0
                  sub          s6, s10, sp
                  or           s10, s8, s9
sub_9_stack_p:    addi         a7, a7, -8
                  srli         t0, a1, 14
                  sw           tp, 4(a7)
                  add          t5, t3, t0
                  srai         ra, a5, 22
                  la           a5, region_0+1876 #start riscv_load_store_rand_instr_stream_26
                  slti         a0, s4, -1354
                  or           gp, a1, sp
                  lh           sp, 82(a5)
                  lhu          s4, -236(a5)
                  lbu          a6, -97(a5)
                  sltiu        s11, t2, -874
                  ori          s11, t3, 1557
                  lbu          s11, -171(a5)
                  lbu          zero, 27(a5)
                  lb           s1, 96(a5)
                  or           t5, s4, a1
                  lb           s8, -253(a5)
                  lbu          a6, 30(a5)
                  xori         a4, ra, -3
                  lbu          a0, 31(a5)
                  sb           s11, 48(a5)
                  sll          t3, t4, a0
                  xor          zero, t0, tp
                  lbu          s1, -27(a5)
                  addi         t0, ra, 560
                  sub          s1, a2, s11
                  sb           s8, -143(a5)
                  slt          s5, t3, s8
                  lui          a6, 483984
                  sb           t2, -90(a5)
                  lw           s9, -116(a5)
                  lhu          a2, -212(a5)
                  sb           s1, -221(a5)
                  and          sp, t1, sp
                  slti         ra, a5, -1711
                  sra          gp, t5, sp
                  srai         gp, a1, 24
                  or           s0, zero, s10
                  auipc        a3, 191494
                  or           s2, s3, a4
                  lb           sp, -249(a5)
                  sb           t5, 50(a5)
                  xor          t2, a2, t4
                  lh           s2, 110(a5)
                  srai         s7, s5, 26
                  auipc        t5, 662552
                  srl          a0, sp, sp
                  andi         a0, s6, 659
                  add          a2, a6, s2
                  srli         zero, zero, 28
                  lbu          a1, -138(a5)
                  lb           t3, 51(a5)
                  lh           t1, -110(a5)
                  sltu         a6, t3, a2
                  sb           gp, 9(a5)
                  sub          s11, t3, t6
                  sltiu        a3, t5, -924
                  lbu          a4, -27(a5)
                  lhu          ra, -228(a5) #end riscv_load_store_rand_instr_stream_26
                  la           t5, region_0+215 #start riscv_load_store_rand_instr_stream_16
                  sll          t6, a1, s7
                  sb           t6, 232(t5)
                  lbu          a2, 833(t5)
                  srai         sp, s10, 3
                  sltu         s2, a6, a5
                  addi         s11, s8, -1848
                  sb           s7, 1549(t5)
                  lbu          s10, 1600(t5)
                  lbu          a0, 993(t5)
                  sll          t2, t6, a3
                  lbu          a1, 692(t5)
                  srli         t0, gp, 28
                  ori          t2, s2, 75
                  addi         t2, a6, 1295
                  sb           a2, 836(t5)
                  auipc        tp, 243051
                  sltiu        a4, sp, 523
                  sb           s1, 1288(t5)
                  sb           t2, 1500(t5)
                  lbu          a5, 834(t5)
                  sw           a5, 293(t5)
                  xor          a5, t3, s1
                  xor          s4, a1, t6
                  sll          a0, t3, s4
                  lbu          gp, 943(t5)
                  lbu          s2, 62(t5)
                  srl          a0, gp, t6
                  sltiu        s8, s5, -1815
                  sltiu        t6, sp, 38
                  lbu          sp, 1318(t5)
                  ori          s0, t0, 1036
                  lh           s11, 1365(t5)
                  auipc        a1, 1036626
                  sb           a7, 882(t5)
                  sltu         s5, s0, a6
                  lbu          t6, -34(t5)
                  srli         a5, a4, 5
                  lb           tp, 1360(t5)
                  sb           a3, 64(t5)
                  lb           s9, 1335(t5)
                  lb           s10, 280(t5)
                  srl          zero, tp, s1
                  lbu          s10, 108(t5)
                  nop
                  lbu          a4, -94(t5)
                  sb           t6, 425(t5)
                  lbu          s7, 691(t5)
                  addi         t0, s9, -667
                  lhu          t3, 19(t5)
                  sw           a6, 1053(t5)
                  xori         s9, s7, 518
                  lb           gp, 408(t5)
                  srai         s1, zero, 22
                  sltiu        sp, s11, 1758
                  lhu          s1, -181(t5) #end riscv_load_store_rand_instr_stream_16
                  la           a0, region_0+1633 #start riscv_load_store_rand_instr_stream_7
                  sra          a6, s6, s5
                  sh           t0, -9(a0)
                  srl          t6, s7, t0
                  sltiu        s0, s7, -1955
                  lbu          a3, -4(a0)
                  sh           zero, 11(a0)
                  sb           sp, 8(a0)
                  sh           s11, 11(a0)
                  lb           s7, 2(a0)
                  nop
                  lb           ra, 5(a0)
                  and          s7, t0, s3
                  lb           s8, -4(a0)
                  add          a4, s2, a3
                  srl          a5, zero, t5
                  sh           s3, 5(a0)
                  lh           s10, 5(a0)
                  lbu          s6, 14(a0)
                  sh           sp, -3(a0)
                  sw           s7, -1(a0)
                  lh           a5, -7(a0)
                  sh           a0, 7(a0)
                  xor          a3, t1, s1
                  sh           s5, 3(a0)
                  lb           s11, 10(a0)
                  lh           gp, 13(a0)
                  lb           zero, -2(a0)
                  add          t2, a0, tp
                  sb           ra, 0(a0)
                  lhu          a2, 15(a0)
                  lhu          a6, 9(a0)
                  sb           a3, -13(a0)
                  lb           t0, -2(a0)
                  sh           s11, 13(a0)
                  lb           t0, -14(a0)
                  srl          s9, t1, t4
                  lb           s4, 8(a0) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+202 #start riscv_load_store_rand_instr_stream_12
                  and          s8, a1, s6
                  lb           s9, 693(sp)
                  sb           a0, 76(sp)
                  sb           s2, 1360(sp)
                  srli         s4, s1, 21
                  lbu          s0, 1286(sp)
                  sltiu        t0, a0, 111
                  sb           t1, 1149(sp)
                  or           a1, a0, a0
                  lb           a4, 1617(sp)
                  slli         s9, s10, 23
                  srl          s6, tp, s10
                  slt          t5, s3, tp
                  sra          s0, a5, a4
                  slt          ra, s1, a2
                  lbu          t2, 1455(sp)
                  lh           t2, 494(sp)
                  sb           t0, -185(sp)
                  lbu          t1, 1747(sp)
                  nop
                  ori          s7, s4, -486
                  slt          t6, gp, a0
                  slli         s11, s5, 25
                  lbu          t2, 1580(sp)
                  add          a2, a2, s8
                  sra          a1, t5, t3
                  srli         a5, a6, 29
                  sra          gp, t1, a3
                  lb           s5, -65(sp)
                  lbu          t1, 1361(sp)
                  ori          s8, t2, 882
                  addi         ra, t0, -303
                  lb           a5, 1299(sp)
                  add          t2, t3, ra
                  lb           gp, 1285(sp) #end riscv_load_store_rand_instr_stream_12
                  la           s5, region_0+1139 #start riscv_load_store_rand_instr_stream_1
                  lbu          s8, 4(s5)
                  xor          s9, s3, a2
                  lb           s6, -6(s5)
                  lb           s2, -16(s5)
                  sltu         t6, s11, t2
                  lh           s6, -13(s5)
                  lb           s2, -4(s5)
                  sb           t0, -8(s5)
                  andi         s1, sp, -1532
                  sb           a5, -16(s5)
                  addi         sp, s8, 1801
                  lh           a5, 3(s5)
                  ori          s11, s7, 377
                  sll          s10, t2, a7
                  lb           tp, 8(s5)
                  lbu          s8, 6(s5)
                  lbu          s6, 16(s5)
                  and          a1, s8, a5
                  auipc        a3, 437945
                  lbu          s4, -7(s5)
                  sb           t6, 0(s5)
                  sb           sp, 1(s5)
                  sub          s4, t1, s9
                  slti         sp, s5, -1760
                  sb           a3, 12(s5)
                  and          a4, t6, a5
                  srli         sp, s2, 25
                  sw           a2, -7(s5)
                  slti         tp, s7, 351
                  lbu          s4, 0(s5)
                  lbu          s7, -2(s5)
                  lb           a0, -7(s5)
                  sh           a5, 5(s5)
                  sltu         t5, s6, s10
                  sb           s10, -15(s5)
                  lb           s1, -16(s5)
                  sb           t5, 2(s5)
                  addi         s10, a6, 670
                  slli         s4, t1, 19
                  and          gp, s7, ra
                  srl          t1, s2, ra
                  sll          t1, s2, a5
                  xori         s9, t0, -1450
                  sra          a1, t4, a0
                  slli         ra, s3, 8
                  lbu          s6, -2(s5) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1000 #start riscv_load_store_rand_instr_stream_22
                  slt          t3, a5, gp
                  sra          a5, a5, s0
                  sb           zero, 141(sp)
                  lb           zero, -126(sp)
                  srai         t5, a3, 22
                  lbu          s1, -201(sp)
                  sw           t4, -76(sp)
                  xori         s1, s1, 640
                  slli         a6, a0, 6
                  lui          gp, 576347
                  andi         s11, t0, -994
                  lhu          t2, -198(sp)
                  lbu          a0, -201(sp)
                  nop
                  lw           s6, 204(sp)
                  sh           s11, -82(sp)
                  lb           a6, 237(sp)
                  slti         s0, tp, 1349
                  lbu          t1, -121(sp)
                  lbu          a1, 136(sp)
                  lb           s1, -229(sp)
                  lbu          t2, -134(sp)
                  addi         t1, s10, 590
                  or           t2, s10, s8
                  sb           a5, -205(sp)
                  srli         s0, s8, 24
                  lw           gp, -48(sp)
                  lh           s9, -202(sp)
                  lb           a1, 55(sp)
                  and          s11, s0, t0
                  sh           sp, -94(sp)
                  ori          s11, sp, 1170
                  add          s9, s6, t0
                  sltiu        s5, zero, 57
                  lh           s6, 178(sp)
                  slli         a6, s9, 26
                  sw           a2, -164(sp)
                  lb           a6, -150(sp)
                  sra          s9, s8, s8
                  sb           s2, -37(sp)
                  lbu          s1, -71(sp)
                  lw           t3, -204(sp)
                  lh           s9, -60(sp)
                  auipc        s1, 531562
                  srl          t0, tp, s2
                  lb           a3, 125(sp) #end riscv_load_store_rand_instr_stream_22
                  la           ra, region_1+1518 #start riscv_load_store_rand_instr_stream_9
                  lbu          t0, -3(ra)
                  xori         s8, a4, 2036
                  nop
                  sh           a3, 28(ra)
                  lui          a3, 835279
                  sll          gp, s8, s4
                  lb           a1, -8(ra)
                  sb           s8, 51(ra)
                  sh           s3, -48(ra)
                  lb           zero, -52(ra)
                  lui          s4, 945838
                  add          t6, tp, s7
                  lh           s4, -2(ra)
                  lb           t3, 55(ra)
                  lbu          s0, 57(ra)
                  addi         a5, s10, 975
                  sb           sp, -1(ra)
                  lb           a4, 37(ra)
                  lh           s7, -4(ra)
                  lbu          a2, -58(ra)
                  sb           s4, -3(ra)
                  lui          t0, 260007
                  lb           gp, 57(ra)
                  xori         s9, a5, -703
                  sb           t2, -23(ra)
                  ori          a4, s10, -1138
                  lb           t2, 0(ra)
                  andi         sp, s7, 895
                  lb           gp, -27(ra)
                  lbu          s11, 11(ra)
                  sb           s0, 61(ra)
                  sltu         s8, t2, t1
                  ori          t0, t1, -648
                  sb           a4, -53(ra) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+435 #start riscv_load_store_rand_instr_stream_27
                  lbu          t1, 38(sp)
                  lb           s4, -10(sp)
                  lb           s8, -36(sp)
                  nop
                  lh           s6, 1(sp)
                  lhu          s1, -19(sp)
                  xor          a0, t6, s6
                  sltiu        s10, a2, 1997
                  add          ra, sp, a5
                  and          ra, a1, sp
                  sb           s8, -47(sp)
                  slli         a0, a5, 18
                  and          a2, a5, t4
                  add          a1, t4, s1
                  xori         a4, s0, 638
                  sb           a4, -64(sp)
                  or           t5, a6, s6
                  addi         a6, t0, -1476
                  auipc        a4, 74259
                  or           t2, t2, a1
                  sltu         ra, a1, a3
                  addi         a2, s7, 17
                  sub          t3, t1, s0
                  lb           a2, 55(sp)
                  sh           s5, -53(sp)
                  sub          a6, s9, s9
                  lb           ra, 18(sp)
                  lhu          ra, -49(sp)
                  sb           a6, -2(sp)
                  lbu          s6, -56(sp)
                  sb           a2, -64(sp)
                  slt          s7, t6, gp
                  sb           t6, -12(sp)
                  sw           a2, 29(sp)
                  ori          t0, t2, 119
                  sltiu        s4, a4, -337
                  sb           s8, 19(sp)
                  lhu          s2, 45(sp)
                  sb           s6, 18(sp)
                  sltu         t5, gp, s5
                  nop
                  add          a1, s11, a3
                  sb           t0, 3(sp)
                  lbu          s0, -46(sp)
                  lb           s4, -35(sp)
                  addi         t2, a7, 354
                  sb           ra, 42(sp)
                  sb           t6, -60(sp)
                  lbu          a4, 30(sp)
                  lh           a5, 15(sp) #end riscv_load_store_rand_instr_stream_27
                  la           sp, region_1+772 #start riscv_load_store_rand_instr_stream_13
                  slti         gp, a0, 880
                  sb           s10, 252(sp)
                  or           a2, a1, s5
                  sltiu        s1, s4, -29
                  lbu          s1, 776(sp)
                  lbu          zero, 337(sp)
                  lb           t0, -569(sp)
                  xor          a5, s1, s4
                  auipc        tp, 487774
                  slli         zero, s3, 25
                  sra          a3, s5, a0
                  slt          s6, a3, t3
                  sll          t2, a4, a1
                  lb           s5, 271(sp)
                  lbu          s6, 404(sp)
                  nop
                  slt          t6, t4, s5
                  srl          s0, a0, tp
                  lbu          t3, 253(sp)
                  lb           s6, 64(sp)
                  auipc        s7, 89535
                  andi         s4, a7, -210
                  lb           zero, 1071(sp)
                  srl          t5, s0, s0
                  lbu          t0, 356(sp)
                  sb           a1, -383(sp)
                  sw           s6, 708(sp)
                  sb           t4, -102(sp)
                  sh           zero, -450(sp)
                  add          t0, t3, t0
                  sb           a3, -208(sp)
                  slt          t0, s0, a7
                  lh           s9, 766(sp)
                  lh           s0, 430(sp)
                  lbu          s4, 687(sp)
                  sra          s0, tp, a5
                  sw           s4, -100(sp) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+818 #start riscv_load_store_rand_instr_stream_10
                  sb           a2, 15(sp)
                  sb           t5, 8(sp)
                  lbu          s8, 2(sp)
                  lui          s2, 771410
                  sb           a7, -5(sp)
                  srli         a4, a0, 13
                  sh           a0, 2(sp)
                  ori          s5, a3, 1027
                  sb           zero, -9(sp)
                  sw           a4, 10(sp)
                  slt          a4, sp, s2
                  sb           zero, -11(sp)
                  srli         s4, s6, 20
                  slli         t1, s0, 13
                  lbu          a1, -9(sp)
                  lb           a1, -3(sp)
                  lbu          t6, 6(sp)
                  sb           a6, 12(sp)
                  addi         a3, tp, -1708
                  slti         a6, a3, 202
                  sra          s7, s0, a3
                  lbu          a6, -11(sp)
                  slti         a3, a7, 1651
                  slti         s7, s6, 1547
                  sb           s8, 7(sp)
                  lw           t0, -10(sp)
                  and          s11, a0, s1
                  lbu          a1, 1(sp)
                  lbu          s1, -13(sp)
                  add          s9, s8, a5
                  lbu          s7, 4(sp)
                  sb           t0, -5(sp)
                  lbu          a6, 5(sp)
                  srli         s1, a7, 28
                  sb           t0, 7(sp)
                  lw           s6, 14(sp)
                  lbu          t6, -10(sp)
                  lhu          zero, -14(sp)
                  or           a1, s4, a3
                  andi         a5, tp, 1099
                  lhu          t1, 16(sp)
                  srli         tp, t3, 21
                  sh           t1, 0(sp)
                  sb           ra, -13(sp)
                  and          t5, a0, s9
                  ori          s0, s4, -415
                  lb           s8, -3(sp) #end riscv_load_store_rand_instr_stream_10
                  la           a6, region_0+1704 #start riscv_load_store_rand_instr_stream_25
                  srli         s1, s10, 26
                  lbu          a3, 148(a6)
                  and          s9, s7, a3
                  sll          t1, s4, s5
                  or           s8, s2, a7
                  lb           t1, -1338(a6)
                  sltiu        s8, s4, 706
                  lbu          s10, -1265(a6)
                  lbu          s5, -1053(a6)
                  xor          s5, a0, t6
                  srai         ra, t0, 17
                  sb           s11, 260(a6)
                  sra          ra, s4, s6
                  slli         s0, s9, 31
                  srai         s4, t6, 16
                  and          s11, s8, a0
                  sll          s6, s7, t4
                  sltiu        s1, a0, -1711
                  ori          s2, t4, 1436
                  lw           t0, -488(a6)
                  lb           sp, -77(a6)
                  lb           s0, 237(a6)
                  lh           s7, -1146(a6)
                  lbu          s2, 114(a6)
                  slli         s10, s2, 24
                  srl          s10, a1, zero
                  ori          s0, sp, -188
                  ori          zero, t4, -1919
                  srai         s8, s8, 5
                  sub          s11, sp, t4
                  xori         s1, s11, -845
                  xor          t6, zero, s9
                  sb           s2, -1031(a6)
                  addi         s1, s9, 1563
                  sltiu        t2, t1, 427
                  srl          t6, a7, t0
                  lbu          t1, -385(a6) #end riscv_load_store_rand_instr_stream_25
                  la           sp, region_0+334 #start riscv_load_store_rand_instr_stream_2
                  lbu          a3, 373(sp)
                  and          t2, s3, gp
                  sb           t4, 483(sp)
                  addi         a6, s1, 686
                  srai         s6, t3, 27
                  sb           zero, 309(sp)
                  srli         t0, a6, 20
                  lb           s7, 822(sp)
                  xor          zero, s8, zero
                  lb           tp, 1147(sp)
                  auipc        a3, 901400
                  auipc        a3, 240027
                  xori         a6, t1, 1000
                  andi         s9, t4, -22
                  slti         s11, s0, 1340
                  xor          s5, s11, t6
                  slt          a5, s2, a5
                  lh           s2, 1000(sp)
                  lh           a5, 1052(sp)
                  slt          tp, t0, t0
                  sub          t3, t6, a5
                  auipc        ra, 362173
                  ori          s2, a4, -1236
                  lh           s5, 1296(sp)
                  lhu          a0, 1626(sp)
                  add          s10, sp, s2
                  lb           a6, 859(sp)
                  lui          a3, 45043
                  sltiu        a6, t2, -249
                  add          gp, t3, s6
                  lhu          a3, 1216(sp)
                  sra          t2, t0, s10
                  lbu          t5, 1543(sp)
                  lb           t6, 381(sp)
                  srai         t3, t6, 14
                  lhu          s11, 212(sp)
                  auipc        a5, 60587
                  sb           s4, 653(sp)
                  or           a4, a7, a5
                  add          t6, s0, s10
                  lbu          a5, 1593(sp)
                  slt          t6, s9, s0
                  sub          t0, t6, t2
                  slt          t6, s2, ra
                  slt          a5, a2, t0
                  lb           s8, 901(sp)
                  lb           s6, 332(sp)
                  lb           s1, 1098(sp)
                  or           a1, s7, a4
                  lb           s9, 1368(sp)
                  lbu          a0, 269(sp)
                  lhu          t5, 1658(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1890 #start riscv_load_store_rand_instr_stream_4
                  or           s4, t1, s4
                  sh           ra, -104(sp)
                  auipc        a6, 691761
                  auipc        t3, 727100
                  xor          a2, a6, a3
                  srl          t0, s5, s6
                  lb           s5, -116(sp)
                  sh           a0, -1584(sp)
                  srl          s7, zero, s9
                  sra          t6, a1, s10
                  lb           zero, 93(sp)
                  lh           a3, -42(sp)
                  sb           tp, -852(sp)
                  lbu          gp, -1850(sp)
                  sb           s7, -1458(sp)
                  sb           a4, -249(sp)
                  sb           a4, -1421(sp)
                  lb           s6, -621(sp)
                  sh           t6, -224(sp)
                  sb           t4, -511(sp)
                  lbu          a2, -251(sp)
                  lb           t0, 78(sp)
                  srai         s9, s11, 10
                  lbu          a1, -1465(sp)
                  sb           s10, -1757(sp)
                  slli         a0, s8, 6
                  lb           s5, -1107(sp)
                  lw           t6, -1222(sp)
                  srli         s10, t3, 27
                  srl          s2, t3, gp
                  sb           s5, -539(sp)
                  sh           t6, -8(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_0+484 #start riscv_load_store_rand_instr_stream_17
                  srai         gp, tp, 2
                  andi         s10, a1, -633
                  addi         gp, t6, 1366
                  lb           t3, 724(a0)
                  sltu         s9, gp, t0
                  lhu          a1, 592(a0)
                  addi         s11, t4, -1115
                  lbu          t0, 169(a0)
                  xor          sp, a2, t0
                  and          a5, a0, s8
                  lh           a4, 102(a0)
                  srai         ra, t2, 21
                  xori         s10, s2, 1681
                  sb           sp, 305(a0)
                  sltu         s0, t3, a3
                  sltu         t2, t4, s6
                  sb           a0, 317(a0)
                  addi         t6, t5, -167
                  slli         tp, zero, 18
                  and          a5, s9, t4
                  lh           t5, 562(a0)
                  sb           tp, 367(a0)
                  lb           s1, 421(a0)
                  ori          ra, s6, 903
                  lb           s8, 1070(a0)
                  sb           a7, 1065(a0)
                  lb           s2, 1082(a0)
                  sltiu        s9, t1, -675
                  sb           a0, 809(a0) #end riscv_load_store_rand_instr_stream_17
                  la           s8, region_0+1024 #start riscv_load_store_rand_instr_stream_21
                  sll          s9, a7, a3
                  sub          t1, a4, s0
                  slt          a5, s1, s10
                  srai         a1, t2, 31
                  addi         s11, sp, -1342
                  lh           s9, 322(s8)
                  lb           a1, -35(s8)
                  srli         s1, t3, 20
                  sh           s6, -974(s8)
                  lbu          a5, 327(s8)
                  srai         s0, a3, 28
                  sltu         t6, s0, t0
                  srli         s4, s6, 15
                  sb           s2, 893(s8)
                  lbu          tp, 4(s8)
                  lbu          t2, 322(s8)
                  sltu         zero, a3, s9
                  lui          a2, 136821
                  sub          t2, a7, a3
                  and          tp, tp, s2
                  srai         tp, a6, 27
                  srli         t0, sp, 14
                  slli         t1, t4, 11
                  add          gp, s10, a7
                  lh           s6, 926(s8)
                  sb           zero, 111(s8)
                  sltu         a1, s3, a5
                  nop
                  sh           a1, -386(s8)
                  sll          s4, ra, a1
                  sltu         t6, sp, a0
                  lbu          t1, 719(s8)
                  lhu          t6, 452(s8)
                  xor          t0, s4, a3
                  and          s5, t6, a7
                  lb           t6, -151(s8)
                  lb           t3, -33(s8)
                  lhu          s2, -982(s8)
                  sltiu        a4, s6, 490
                  srli         s7, t6, 11
                  slti         s5, a5, 1888
                  lb           a1, 461(s8)
                  slti         ra, s3, -1502
                  lb           t5, -383(s8) #end riscv_load_store_rand_instr_stream_21
                  la           sp, region_1+1830 #start riscv_load_store_rand_instr_stream_11
                  sb           s9, 23(sp)
                  lbu          gp, 28(sp)
                  sb           gp, 57(sp)
                  sb           a4, -19(sp)
                  srl          s4, s4, tp
                  lhu          t6, 4(sp)
                  nop
                  sll          a5, t6, a5
                  lbu          ra, -58(sp)
                  lbu          a4, 16(sp)
                  lb           t6, 64(sp)
                  srli         t2, t1, 29
                  slli         s4, t0, 15
                  lbu          s5, -37(sp)
                  lhu          t2, -2(sp)
                  srl          s1, t2, t3
                  lh           t5, 6(sp)
                  addi         s11, t4, -1840
                  lbu          s2, 41(sp)
                  or           a5, sp, a2
                  srl          s4, s3, s8
                  or           a0, ra, t4
                  lb           a6, 61(sp)
                  addi         t5, gp, -189
                  lbu          s10, -34(sp)
                  addi         t5, s0, -1950
                  sltiu        ra, t6, -1602
                  sltu         ra, a1, t2
                  srai         s9, t3, 20
                  lbu          a1, -11(sp)
                  slt          a3, a2, t4
                  sb           sp, 3(sp)
                  lui          s5, 885714
                  lb           s1, -51(sp)
                  lb           s5, -47(sp)
                  sltu         s0, a4, s6
                  sb           a6, 7(sp)
                  lb           zero, -21(sp)
                  ori          s9, t0, -863
                  sll          gp, s5, s0
                  lh           s7, 64(sp) #end riscv_load_store_rand_instr_stream_11
                  la           t1, region_0+1314 #start riscv_load_store_rand_instr_stream_19
                  lbu          a6, 14(t1)
                  lb           s2, -1(t1)
                  and          s7, s3, s8
                  lbu          s1, 14(t1)
                  lh           s8, -14(t1)
                  sltu         t0, gp, s11
                  lh           t6, 10(t1)
                  addi         a6, t5, -152
                  slti         t6, a0, 326
                  xori         tp, zero, -1111
                  sub          ra, s3, a1
                  sltu         s8, a0, a4
                  lb           a4, 3(t1)
                  and          s8, s7, s7
                  lb           sp, 5(t1)
                  lb           a5, -4(t1)
                  lhu          a2, 0(t1)
                  lbu          a3, 13(t1)
                  sltiu        gp, a6, 1511
                  xori         s8, s8, 883
                  or           ra, s6, t6
                  sub          a5, s4, s3
                  slti         s4, a7, 482
                  sb           a3, -11(t1)
                  sra          a4, s0, s7
                  lb           s8, -2(t1)
                  lb           sp, -11(t1)
                  sb           t1, -5(t1)
                  lb           s2, -11(t1)
                  srli         gp, a7, 27
                  sltu         ra, s3, a0
                  nop
                  or           a3, t3, a7
                  lh           s2, 14(t1)
                  lbu          a4, 11(t1)
                  ori          s2, sp, -975
                  lbu          gp, -16(t1)
                  sb           a6, -13(t1)
                  slli         sp, sp, 19
                  lbu          t3, -1(t1)
                  lbu          t5, 12(t1)
                  lb           s7, -5(t1)
                  lbu          s8, 11(t1)
                  sltiu        s2, t2, 399
                  lh           a0, 10(t1)
                  sb           tp, -11(t1)
                  xori         gp, a2, -625
                  srl          t6, a7, s10
                  auipc        s5, 90617
                  lhu          s9, -8(t1)
                  srai         s8, s3, 19
                  lbu          s6, -15(t1)
                  sh           s3, -8(t1)
                  sw           t1, 2(t1) #end riscv_load_store_rand_instr_stream_19
                  la           sp, region_1+564 #start riscv_load_store_rand_instr_stream_14
                  ori          s5, s2, -1660
                  sb           a1, 183(sp)
                  lb           s1, 387(sp)
                  sra          s1, ra, a2
                  sltiu        t6, a1, -372
                  lb           a6, -487(sp)
                  sb           t5, 1281(sp)
                  lb           gp, 566(sp)
                  lbu          tp, 1015(sp)
                  srli         tp, s10, 28
                  nop
                  and          a6, a6, a1
                  lb           a3, -103(sp)
                  lbu          a4, 1011(sp)
                  sb           s3, -9(sp)
                  srli         s11, a1, 29
                  srli         s4, t2, 31
                  sltu         a6, gp, a0
                  sb           s9, -211(sp)
                  lbu          s1, 651(sp)
                  lb           a0, 309(sp)
                  slti         s7, tp, -646
                  sub          s1, s9, gp
                  nop
                  andi         ra, s6, 905
                  sh           tp, -388(sp)
                  add          s0, t3, a1
                  addi         t6, a7, -1686
                  andi         s7, a0, -1279
                  addi         a6, s1, -481
                  lb           t1, 244(sp)
                  sltu         s5, s6, a6
                  sb           s6, 667(sp)
                  sb           a1, 865(sp)
                  sra          ra, s6, s3
                  lh           t0, -206(sp)
                  sra          s0, sp, a7
                  andi         a2, a5, 2003
                  auipc        a0, 586325
                  and          s7, s10, s9
                  lhu          a2, 378(sp) #end riscv_load_store_rand_instr_stream_14
                  la           s9, region_1+1774 #start riscv_load_store_rand_instr_stream_20
                  lui          t0, 855961
                  sub          t6, s6, s3
                  lb           s2, -861(s9)
                  ori          s0, a4, -714
                  lb           tp, 223(s9)
                  lbu          ra, -1213(s9)
                  xori         t1, t1, 1640
                  addi         t6, s3, 1455
                  or           t6, a0, a4
                  srl          zero, s7, tp
                  sltu         sp, s9, tp
                  sra          a5, gp, s8
                  xori         a2, a3, 1527
                  sb           t1, -399(s9)
                  or           ra, s10, zero
                  andi         zero, s0, -1050
                  lb           gp, -433(s9)
                  andi         gp, t6, -852
                  slt          a4, s11, s1
                  add          s4, s6, t2
                  sra          s2, a0, a4
                  addi         s11, ra, -433
                  srai         s6, t1, 20
                  xor          s10, a5, t6
                  lhu          s10, -1098(s9)
                  lb           ra, -179(s9)
                  sltu         s8, t2, s8
                  ori          t0, s4, 196
                  nop
                  or           a2, s4, t5
                  sub          zero, s4, gp
                  sh           a1, -224(s9)
                  lbu          sp, -328(s9)
                  lui          s11, 246484
                  lhu          s0, -1532(s9)
                  sb           t1, -78(s9)
                  sra          s0, t3, s5
                  sb           gp, -557(s9)
                  lh           s8, -996(s9)
                  lbu          s10, -218(s9) #end riscv_load_store_rand_instr_stream_20
                  la           s2, region_1+1238 #start riscv_load_store_rand_instr_stream_6
                  lb           a0, -239(s2)
                  lui          a3, 584905
                  sra          a1, a5, a3
                  lh           s11, -170(s2)
                  lh           s4, -256(s2)
                  srai         s8, t1, 3
                  sltiu        a3, gp, -1276
                  lh           a4, -46(s2)
                  sb           t1, -77(s2)
                  sll          ra, a1, a3
                  sll          s9, a2, t6
                  auipc        s1, 911368
                  lbu          sp, 197(s2)
                  xor          s11, s6, zero
                  auipc        sp, 330546
                  sra          sp, a2, a2
                  sltiu        t0, a5, 1889
                  lh           sp, 172(s2)
                  auipc        s6, 784673
                  srl          s1, s4, a5
                  sra          zero, a7, tp
                  add          t2, a1, s11
                  sll          t3, ra, s4
                  slt          gp, zero, gp
                  lhu          sp, -256(s2)
                  sb           sp, 56(s2)
                  lb           a0, -63(s2) #end riscv_load_store_rand_instr_stream_6
                  sltiu        t1, s3, 1311
                  bge          a4, s4, 18f
                  or           s4, s6, a2
                  bne          s3, t3, 7f
                  xori         s2, t1, 1115
                  srli         a3, zero, 27
                  ori          s4, s10, 1947
7:                xori         t5, t0, -680
                  xor          t3, a5, a1
                  sra          gp, s3, a2
                  srl          gp, a1, s11
                  xori         a2, tp, 86
                  ori          s7, s11, 895
                  slti         s8, a5, 1451
                  auipc        a4, 4935
                  sll          t2, sp, s7
                  blt          tp, t0, 24f
                  addi         t5, a1, 1792
18:               addi         zero, a4, 2043
                  ori          s10, s0, -1711
                  addi         ra, a0, -188
                  and          a6, a3, a4
                  sltu         s10, a6, a5
                  sub          s11, ra, a0
24:               sltiu        zero, s3, -1557
                  addi         s5, a3, 991
                  addi         s11, t5, 1642
                  xori         sp, s6, 1722
                  sub          s7, t3, s1
                  bltu         a2, s2, 35f
                  slti         s11, s6, -639
                  bge          tp, t1, 40f
                  bgeu         zero, s5, 34f
                  bge          s4, s7, 51f
34:               sll          s9, t1, s2
35:               sltiu        t2, a0, -54
                  slti         a1, a6, 481
                  add          t6, s7, s9
                  lui          s10, 367671
                  and          a4, a6, a1
40:               slli         gp, s6, 22
                  addi         s7, s11, 2019
                  addi         tp, a6, -1434
                  nop
                  andi         gp, a7, 1404
                  bltu         s7, a4, 59f
                  srli         s6, s4, 16
                  xori         t6, t0, 1713
                  bne          ra, s9, 58f
                  sra          s5, t4, t0
                  addi         t2, s9, 1611
51:               srli         s8, s8, 17
                  srli         s5, s1, 23
                  addi         t2, a1, 158
                  sra          t5, gp, s6
                  slt          a3, a2, tp
                  and          t0, a4, a4
                  ori          s8, t1, 807
58:               add          zero, t4, s2
59:               bne          t2, s4, 79f
                  xori         s1, s1, -14
                  andi         s2, s2, 1918
                  sltu         s5, t5, gp
                  srl          a2, t3, t5
                  sltu         a6, t1, zero
                  or           gp, s0, s2
                  bltu         t0, zero, 69f
                  srli         s10, s3, 20
                  slli         a2, t6, 3
69:               addi         t6, s10, -496
                  srli         s10, s7, 20
                  bltu         a1, s7, 89f
                  add          ra, a4, t4
                  addi         s1, s9, -381
                  bgeu         t6, sp, 79f
                  lui          tp, 645721
                  addi         t5, t5, -863
                  slti         s8, a1, -1337
                  srli         s9, s4, 23
79:               add          s11, a0, s1
                  la           sp, region_0+1542 #start riscv_load_store_rand_instr_stream_5
                  and          s1, t6, tp
                  nop
                  srai         s5, a2, 20
                  slt          a0, a6, s1
                  lhu          t3, 8(sp)
                  lbu          s11, -16(sp)
                  sltiu        s10, s6, 718
                  srli         t2, a6, 23
                  sltiu        s6, t5, 826
                  add          s11, s2, t4
                  sw           t0, 2(sp)
                  srli         s4, ra, 0
                  slli         a1, s7, 21
                  sltiu        a2, sp, -1500
                  lb           t5, -1(sp)
                  and          t5, s3, s7
                  sh           s0, -14(sp)
                  sltu         a5, s4, t5
                  sh           t5, 14(sp)
                  sb           a6, -13(sp)
                  slt          tp, s5, tp
                  sh           a4, -10(sp)
                  sll          t1, a3, a0
                  srai         ra, t5, 19
                  lbu          s4, 5(sp)
                  xor          s7, s3, s10
                  srai         s0, t6, 8
                  srai         s5, s11, 7
                  lbu          s11, 3(sp) #end riscv_load_store_rand_instr_stream_5
                  xor          a6, s4, s5
                  and          gp, a0, s2
                  beq          a2, a4, 102f
                  srai         s6, s3, 0
                  andi         s7, a6, -1038
                  bge          a0, gp, 88f
                  beq          s2, s10, 98f
                  blt          s4, a1, 92f
88:               lui          a3, 785569
89:               xor          a2, s6, a0
                  xori         s5, a6, 1875
                  beq          zero, t6, 99f
92:               blt          s7, s7, 99f
                  beq          t4, s5, 100f
                  auipc        a1, 773163
                  blt          a1, s1, 114f
                  lui          a4, 231986
                  sub          s1, a1, t6
98:               sub          s0, gp, s9
99:               sll          tp, s7, s2
100:              sll          s7, t0, t5
                  sltiu        t1, t0, 1659
102:              srl          sp, s6, s1
                  add          zero, a1, sp
                  sub          t2, tp, t6
                  srai         a2, s3, 9
                  srai         t6, s5, 12
                  auipc        a4, 795982
                  sltu         s10, s5, tp
                  srl          t6, tp, a7
                  add          zero, s1, gp
                  and          tp, gp, t0
                  add          a6, s2, a1
                  auipc        a2, 279715
114:              bgeu         a2, s0, 121f
                  sltu         t2, s7, t3
                  sll          t6, s9, a0
                  sra          s0, a3, s5
                  sltu         zero, a0, s8
                  blt          a2, s1, 136f
                  blt          s5, s0, 130f
121:              add          t2, t5, t1
                  xor          t2, s4, gp
                  bltu         t6, a3, 140f
                  xor          s0, t2, s9
                  blt          s1, s7, 139f
                  bne          s2, t4, 144f
                  srai         zero, tp, 17
                  srli         a6, s10, 1
                  andi         t2, a2, -1796
130:              blt          a0, a2, 147f
                  sra          a0, t3, a5
                  auipc        a0, 748817
                  andi         a4, s3, -104
                  bltu         t0, zero, 136f
                  slli         s9, s9, 17
136:              srli         a2, s10, 22
                  srli         a0, s5, 24
                  blt          t2, s6, 153f
139:              bne          a1, t0, 148f
140:              or           a4, t2, s6
                  add          t1, s7, t1
                  xori         s9, zero, -766
                  auipc        zero, 1033258
144:              sltiu        t0, s7, 1499
                  ori          s9, a7, -1432
                  sll          s1, s6, t2
147:              or           s4, t5, ra
148:              srli         t2, s0, 26
                  beq          s10, s5, 166f
                  nop
                  xor          s11, s10, s6
                  xori         a4, a7, 663
153:              auipc        s4, 163501
                  slli         ra, s7, 7
                  ori          t6, s9, -1610
                  bne          a6, a3, 176f
                  xori         s2, a1, -1952
                  addi         t2, a4, -1713
                  or           a1, t2, a1
                  auipc        a1, 119744
                  sub          t3, s3, s3
                  slli         gp, gp, 2
                  slt          a5, t1, a3
                  nop
                  srli         t2, t1, 16
166:              sra          s11, gp, a0
                  sltu         s11, a7, a2
                  xori         t2, s6, -44
                  bne          s3, sp, 187f
                  bge          a3, s6, 173f
                  auipc        s0, 772773
                  srai         a1, a6, 3
173:              andi         a2, t1, 2005
                  srli         t1, sp, 30
                  ori          tp, a4, -1113
176:              addi         a5, s4, 865
                  blt          a5, t5, 185f
                  bltu         a4, s7, 180f
                  nop
180:              bltu         s0, a2, 199f
                  slti         s5, a3, 212
                  blt          s9, a7, 192f
                  bne          gp, zero, 201f
                  nop
185:              bge          s6, sp, 188f
                  lui          t6, 913795
187:              nop
188:              srli         s10, s8, 18
                  andi         a1, tp, -1556
                  slti         a6, s3, -1698
                  bne          t5, a6, 205f
192:              bgeu         a5, s5, 209f
                  xori         t0, s6, -889
                  xori         s1, s6, -1020
                  beq          s0, ra, 197f
                  bgeu         a1, t5, 208f
197:              sltiu        s7, t3, 1726
                  and          a0, s7, s1
199:              bltu         s6, a3, 204f
                  sub          a3, s1, sp
201:              sltiu        t2, a5, 1877
                  sll          s4, a0, s8
                  bne          tp, t6, 211f
204:              blt          s7, s8, 209f
205:              sra          s10, s2, t1
                  bgeu         s11, s5, 224f
                  srai         gp, s0, 3
208:              bltu         t6, a4, 228f
209:              nop
                  beq          s3, a6, 216f
211:              slti         s9, t2, -194
                  slt          s1, s9, s11
                  auipc        ra, 349052
                  sub          sp, s9, tp
                  sll          s4, a1, s6
216:              add          s4, t2, ra
                  sll          s10, s7, s11
                  bgeu         s6, s6, 222f
                  nop
                  la           gp, region_1+263 #start riscv_load_store_rand_instr_stream_23
                  addi         s11, ra, 413
                  lb           zero, 1(gp)
                  sltiu        t2, zero, 1769
                  lh           s9, 7(gp)
                  srai         s0, ra, 12
                  slti         t3, a4, -2047
                  sltiu        s1, a2, 1480
                  lb           s8, 14(gp)
                  lb           t0, -8(gp)
                  lh           t1, 7(gp)
                  xor          s9, t6, a7
                  add          t2, a3, s10
                  sb           s1, -11(gp)
                  xori         t1, a6, -243
                  xori         ra, s10, -1110
                  xor          sp, s5, a3
                  auipc        t6, 755025
                  sb           s11, -12(gp)
                  xori         zero, s6, -848
                  lbu          t5, 14(gp)
                  sb           s3, -5(gp)
                  lbu          a1, 6(gp)
                  xor          sp, t3, t4
                  or           a6, t0, a2
                  sh           s2, -13(gp)
                  and          t3, sp, s7
                  lbu          a1, -11(gp)
                  lw           t6, 5(gp) #end riscv_load_store_rand_instr_stream_23
                  srl          s7, s1, t5
                  slli         s0, a2, 30
222:              blt          s3, zero, 239f
                  srli         s10, s3, 21
224:              bgeu         a3, a6, 239f
                  add          a0, s1, a6
                  sra          t2, s0, s3
                  nop
228:              bgeu         s7, s11, 245f
                  xori         a6, sp, 1320
                  sra          t1, ra, s4
                  nop
                  slti         t3, t6, -146
                  sll          s7, a2, t1
                  sltu         s6, t2, s4
                  add          tp, s10, sp
                  or           zero, a5, s3
                  sltiu        zero, s8, -1554
                  bltu         t0, s7, 245f
239:              sll          a2, s0, s2
                  sll          s9, a7, t6
                  sub          t2, a1, a4
                  xori         tp, a1, -1637
                  xori         a0, a2, 1355
                  slli         s10, s11, 11
245:              xor          s5, a7, s6
                  slti         s1, t4, -103
                  slt          a6, s2, a1
                  srl          t3, t2, a2
                  sltiu        ra, s2, 1942
                  slli         s0, a2, 8
                  blt          a3, t2, 265f
                  bne          s10, a1, 259f
                  add          s4, zero, s1
                  beq          s2, s5, 261f
                  bltu         t2, s6, 265f
                  srl          a2, a7, a0
                  xori         s11, a5, -1010
                  xor          a5, t5, ra
259:              bne          a6, a4, 269f
                  and          gp, s5, t3
261:              sltu         t0, zero, s11
                  srai         a6, t1, 21
                  add          a2, s6, s5
                  bgeu         a1, a4, 266f
265:              sltu         tp, t0, ra
266:              and          s7, ra, s11
                  auipc        s2, 147434
                  bge          s9, s1, 286f
269:              bge          a4, s6, 277f
                  andi         s0, sp, 679
                  bltu         t5, a5, 273f
                  sltu         t1, t5, s9
273:              auipc        s10, 315673
                  nop
                  sltiu        t5, s3, 1047
                  blt          tp, t0, 283f
277:              and          s6, a0, sp
                  srl          t6, a4, a1
                  slt          a2, s10, t4
                  andi         a3, t5, 1178
                  addi         t3, s6, 661
                  auipc        t0, 607284
283:              bge          sp, s2, 292f
                  sll          s0, a7, s2
                  srl          s9, a3, s7
286:              slt          s10, s1, a0
                  srl          s4, t2, tp
                  xori         t1, s0, 1192
                  nop
                  slt          a0, s8, zero
                  sltu         t2, a7, s8
292:              srai         s5, t0, 23
                  addi         s8, s4, 398
                  or           gp, s6, t0
                  slti         t0, s2, 1330
                  bgeu         t0, s9, 314f
                  bge          t1, a6, 300f
                  slt          zero, s10, t2
                  and          ra, a4, s6
300:              xori         sp, s6, 1563
                  beq          s8, s8, 311f
                  bge          s8, s5, 317f
                  sub          a6, a2, a1
                  sra          t2, a5, s1
                  and          s5, s7, a4
                  bgeu         tp, s5, 313f
                  nop
                  and          s5, s2, s0
                  bne          ra, s7, 321f
                  sub          s10, s0, a5
311:              srai         t6, a2, 28
                  bne          a2, a0, 317f
313:              andi         a6, zero, -860
314:              srli         s6, s5, 0
                  sltu         s8, s3, sp
                  and          s6, s3, a4
317:              sub          a5, s10, a5
                  bne          s7, t1, 332f
                  sltu         s5, a5, t3
                  or           s2, s5, s0
321:              slt          s11, a2, t5
                  bne          sp, a1, 339f
                  slt          a1, s11, s2
                  lui          gp, 534673
                  blt          s7, s10, 329f
                  sra          t0, s11, a0
                  sltiu        s6, s3, -1936
                  bgeu         t4, t5, 333f
329:              lui          s2, 287149
                  bne          t0, s9, 337f
                  slti         a5, s6, -680
332:              addi         s10, s1, -1914
333:              srl          a4, s7, t6
                  lui          tp, 67795
                  slti         a6, s7, 1262
                  addi         s11, t6, 923
337:              and          s11, s10, t1
                  and          a6, gp, s7
339:              sra          a0, a0, a5
                  la           s5, region_1+1492 #start riscv_load_store_rand_instr_stream_0
                  sra          a5, t4, gp
                  lhu          s9, -148(s5)
                  sb           t6, 106(s5)
                  sub          s2, t3, s3
                  lbu          a1, -75(s5)
                  lb           sp, -221(s5)
                  lbu          s4, 29(s5)
                  sb           a2, -176(s5)
                  srl          sp, s4, a4
                  slli         t2, a1, 1
                  srli         s0, s3, 30
                  nop
                  lh           s9, -204(s5)
                  sltu         t2, s4, t0
                  lb           t5, -15(s5)
                  slti         s2, a2, 1909
                  slli         s2, s10, 17
                  lbu          gp, 198(s5)
                  lbu          a1, 212(s5)
                  andi         s4, t2, -1999
                  lh           a6, -12(s5)
                  lb           s6, 207(s5)
                  srai         s11, s9, 25
                  sll          a2, s8, s0
                  sra          t0, zero, t3
                  lui          s11, 947439
                  lb           s4, 47(s5)
                  nop
                  lbu          a0, -190(s5)
                  lw           s1, -20(s5)
                  andi         a6, s4, -1410
                  xori         s11, t2, -1555
                  slt          sp, s1, a0
                  xor          gp, a6, t4
                  lbu          s10, 227(s5)
                  or           s10, a2, a1
                  andi         a4, s0, -1061
                  sltiu        s8, t4, -629
                  lbu          sp, 226(s5)
                  srl          t1, t5, t6
                  nop
                  auipc        a6, 888137
                  sb           t2, -159(s5)
                  lhu          s6, 190(s5)
                  sub          s4, zero, tp
                  xori         s7, s5, -1031
                  srli         s9, t1, 5
                  sh           s2, -178(s5)
                  sb           a6, 198(s5) #end riscv_load_store_rand_instr_stream_0
                  addi         a4, s3, 543
                  sub          s11, s0, a0
                  andi         s4, s1, -1774
                  sltiu        t3, a6, -45
                  xori         s11, gp, -295
                  beq          a3, ra, 365f
                  xori         s10, t4, 1314
                  sll          s5, t5, a6
                  andi         a3, gp, 987
                  add          s8, t6, t2
                  bgeu         t0, a4, 358f
                  andi         ra, s0, 1356
                  srl          t6, s10, tp
                  blt          s2, s1, 371f
                  xori         t5, s6, -1506
                  ori          s7, a7, -1456
                  slti         zero, t3, 1910
                  sll          a0, a6, a0
358:              bltu         sp, t6, 364f
                  xor          tp, t6, tp
                  bgeu         s10, a4, 377f
                  bge          s1, s0, 375f
                  addi         zero, t4, 970
                  blt          s3, s8, 380f
364:              bltu         a0, a0, 367f
365:              srli         s5, t3, 9
                  bltu         s1, ra, 386f
367:              xor          s10, a2, t2
                  andi         s11, s7, 755
                  sltu         tp, s11, tp
                  add          ra, s5, s10
371:              sltu         t0, a1, tp
                  or           s5, s1, s11
                  bltu         a1, t1, 390f
                  andi         s5, zero, 531
375:              sll          t5, a0, s4
                  blt          s3, a3, 395f
377:              andi         s9, t0, -1133
                  auipc        t1, 45988
                  and          s11, sp, s9
380:              andi         s4, s6, 1281
                  add          s5, t4, s7
                  auipc        a4, 718374
                  bgeu         s0, s6, 390f
                  srai         s0, a7, 22
                  ori          t5, ra, -315
386:              sltiu        a2, s3, -691
                  lui          a5, 623002
                  and          s5, t1, a2
                  xori         s0, s8, -1082
390:              bge          gp, sp, 398f
                  add          a3, s7, zero
                  and          t5, s0, s5
                  bgeu         s1, s6, 407f
                  bgeu         s4, s10, 398f
395:              addi         s9, a7, -1079
                  addi         tp, s6, -1928
                  and          s11, a6, a7
398:              srai         a1, t0, 10
                  sub          a5, t1, t5
                  add          t2, a0, a0
                  sra          zero, a5, s4
                  srli         s7, s5, 28
                  lui          a5, 954072
                  bltu         a6, a7, 406f
                  bgeu         a5, s8, 410f
406:              andi         a4, t3, -773
407:              slli         a0, s6, 12
                  srl          s10, ra, sp
                  bne          s0, s11, 416f
410:              sub          t2, gp, gp
                  bne          s0, s2, 428f
                  slti         s4, t4, -11
                  sltu         a3, s10, s6
                  sll          t6, t5, a5
                  bne          s3, t6, 422f
416:              bge          sp, s6, 433f
                  xori         gp, s3, 143
                  beq          t5, t6, 421f
                  bgeu         s0, s11, 436f
                  sub          s6, a7, s8
421:              lui          s1, 582480
422:              slti         sp, zero, -1978
                  slt          s1, sp, s5
                  blt          sp, s8, 436f
                  lui          a1, 220886
                  sub          a6, tp, a7
                  and          t0, t3, s9
428:              addi         ra, a5, 118
                  and          a6, s5, t1
                  lui          a5, 42392
                  andi         t0, tp, -1798
                  addi         t5, s5, -459
433:              bne          a4, t3, 452f
                  and          s5, s10, a7
                  bge          s5, s8, 437f
436:              bge          s9, s10, 446f
437:              srai         t3, a1, 21
                  sltiu        sp, s11, -607
                  bgeu         a7, s6, 459f
                  sra          gp, t2, s2
                  and          zero, a6, a6
                  add          a1, a4, t4
                  bgeu         t2, s6, 461f
                  sll          s4, s10, tp
                  add          zero, t0, gp
446:              sra          gp, t2, a4
                  bgeu         s5, t0, 465f
                  xor          t2, t1, t2
                  xori         t2, s2, -59
                  srai         ra, t1, 3
                  sltu         s2, a6, a5
452:              bgeu         s3, a4, 455f
                  sll          t0, a6, s1
                  slt          t1, s2, a1
455:              bge          t5, t2, 460f
                  bgeu         t1, t6, 464f
                  srl          t5, s5, a6
                  sll          a0, ra, a3
459:              slt          sp, ra, t6
460:              ori          s10, s6, -600
461:              srai         t3, t3, 19
                  sltu         zero, a4, s4
                  xori         s6, a2, -874
464:              slti         s8, t6, -276
465:              sll          zero, s2, s4
                  beq          s11, tp, 476f
                  andi         s4, t1, 647
                  add          s5, s2, s0
                  srai         a3, s1, 26
                  xor          a4, s1, t5
                  sltu         s1, a7, t0
                  srli         s7, gp, 17
                  srl          ra, s4, s11
                  auipc        zero, 355327
                  bltu         s5, a6, 489f
476:              ori          t2, t2, -1900
                  srl          ra, zero, s9
                  nop
                  add          t2, s10, s7
                  srai         a4, t5, 14
                  add          s0, t1, sp
                  or           s6, a3, t2
                  blt          t1, s9, 489f
                  or           ra, t1, a0
                  blt          t5, a5, 502f
                  blt          a2, zero, 501f
                  bltu         a7, a6, 507f
                  lui          sp, 459370
489:              andi         sp, t4, 962
                  nop
                  auipc        s2, 204814
                  addi         t1, zero, -301
                  sra          s7, s1, ra
                  slli         t2, s8, 21
                  or           a3, a2, tp
                  and          gp, a6, s10
                  xor          t5, t0, t5
                  slt          a5, t2, a7
                  slli         sp, s0, 25
                  xori         s10, s11, 1481
501:              auipc        s2, 570662
502:              lui          s8, 406747
                  addi         zero, sp, -1832
                  xori         t1, a6, 1741
                  add          s4, t0, a3
                  or           s11, ra, a5
507:              slti         gp, s5, -1620
                  beq          s8, t5, 517f
                  sll          t0, s10, t2
                  auipc        t2, 418006
                  srl          t6, a3, s3
                  ori          s0, s1, -660
                  blt          a3, zero, 531f
                  bne          s9, t5, 524f
                  nop
                  blt          s0, s4, 524f
517:              andi         s0, s0, 1622
                  addi         zero, t2, 151
                  or           s9, a3, gp
                  lui          a5, 1020103
                  or           a0, a3, s8
                  sltiu        s8, t2, -971
                  sub          gp, a1, t5
524:              and          s8, s9, s2
                  sltu         a6, a6, s1
                  srli         a3, s0, 26
                  addi         s2, a0, -499
                  xori         zero, s9, -799
                  or           s2, a5, t5
                  srli         t1, s9, 12
531:              or           s9, t0, a0
                  xori         s9, t3, 2008
                  and          a6, s6, t6
                  sra          t0, a5, a2
                  xori         t5, s11, 571
                  sltu         s11, a4, t5
                  lui          tp, 58311
                  and          s10, s2, zero
                  or           sp, s3, t2
                  bge          t3, a3, 558f
                  xor          s4, gp, s3
                  sra          zero, t6, s2
                  and          tp, a7, s3
                  srl          s0, a1, a1
                  add          s0, zero, t4
                  addi         a0, s3, 1200
                  sub          a3, a7, tp
                  or           s9, s9, t5
                  slli         s1, t4, 27
                  srli         t2, sp, 22
                  and          t3, a3, zero
                  nop
                  xori         t0, t3, 193
                  srli         t2, t5, 28
                  xor          a3, t3, s7
                  sll          s4, s9, a0
                  bltu         zero, t6, 574f
558:              bltu         s5, a5, 565f
                  sltiu        s9, a5, -982
                  beq          s8, s2, 565f
                  bge          sp, zero, 580f
                  andi         a5, t5, -609
                  andi         a5, s2, 303
                  bne          t1, s8, 573f
565:              sltu         t6, a7, s3
                  and          t2, s10, t6
                  bne          zero, t0, 574f
                  slt          ra, s11, a7
                  nop
                  sub          t3, a4, zero
                  srli         t5, s6, 10
                  ori          sp, s5, 1063
573:              blt          tp, s5, 579f
574:              auipc        t6, 613802
                  srli         s5, t6, 11
                  bne          s3, ra, 596f
                  srai         s2, a1, 26
                  srl          t1, s11, sp
579:              beq          zero, a5, 597f
580:              or           gp, zero, s4
                  nop
                  andi         t0, s2, -1165
                  srai         s11, s0, 18
                  sltu         s0, s3, a0
                  slli         sp, a0, 2
                  or           ra, t4, a4
                  sltiu        s10, s0, 1489
                  blt          a7, zero, 593f
                  add          s11, a4, sp
                  or           s6, ra, ra
                  xori         t5, a1, -1603
                  srai         a0, t6, 13
593:              sltu         a5, s6, s3
                  and          t0, zero, tp
                  ori          a2, s7, 582
596:              sltu         t6, s0, s11
597:              beq          a3, t5, 601f
                  xori         a5, s4, 173
                  blt          a3, t0, 613f
                  bne          s3, s6, 608f
601:              bge          t5, s9, 604f
                  xori         tp, s3, -101
                  srai         a0, a2, 9
604:              add          s5, a5, a7
                  xori         t6, s10, 1129
                  sltu         a3, s4, t5
                  auipc        sp, 658488
608:              or           sp, s8, s1
                  srl          t3, s1, ra
                  xor          t2, s5, s11
                  bge          ra, a3, 629f
                  or           a6, t0, s5
613:              slti         t3, s2, -429
                  srl          a1, a0, s6
                  beq          s6, s5, 632f
                  srai         a2, zero, 3
                  ori          t3, a0, -1620
                  sltiu        s4, s0, 705
                  slt          a3, a0, s8
                  sltu         a5, s0, gp
                  nop
                  slt          t2, a2, s9
                  sra          s11, t0, t0
                  slti         s1, tp, -1838
                  slti         t6, t6, -1736
                  srl          s9, s0, a7
                  auipc        s1, 890234
                  sltu         s10, t3, a1
629:              auipc        zero, 884963
                  slli         s9, a2, 6
                  blt          gp, tp, 648f
632:              or           t5, tp, a2
                  slt          a1, tp, a1
                  blt          s7, t3, 649f
                  beq          s10, t5, 637f
                  sll          t6, s5, a0
637:              and          s4, t3, a4
                  sub          s2, s7, a4
                  beq          a4, a7, 649f
                  blt          s2, s9, 647f
                  nop
                  blt          tp, s7, 656f
                  auipc        sp, 523786
                  ori          sp, a6, -1700
                  auipc        s0, 1022521
                  slli         s2, s6, 23
647:              ori          s4, s5, 398
648:              sltu         ra, s5, sp
649:              slti         a2, t3, -1526
                  srli         s10, zero, 5
                  andi         s10, s1, 1525
                  slt          s1, a0, a5
                  slli         s2, s8, 24
                  xor          sp, s6, s1
                  ori          a6, s8, -1769
656:              beq          s9, a5, 658f
                  sra          tp, ra, s10
658:              sra          t1, t4, tp
                  srl          t3, a4, sp
                  sltiu        a3, s4, 489
                  auipc        s7, 569414
                  slli         t0, s4, 2
                  sll          a6, s5, s7
                  xori         tp, a4, 1253
                  andi         gp, s9, 1662
                  bge          s1, a1, 678f
                  sltiu        s11, a1, -898
                  andi         t5, t0, 1675
                  sub          s6, a3, s10
                  sub          tp, s11, t4
                  and          t5, t1, a6
                  srli         sp, a3, 13
                  sub          a0, s4, a2
                  slti         t6, sp, -180
                  bltu         ra, a3, 695f
                  and          a3, t3, s11
                  addi         s7, t0, 373
678:              bne          s6, a0, 695f
                  sll          a3, s1, s7
                  xor          s11, a0, t1
                  slti         s5, a6, -1097
                  xor          t0, tp, t2
                  sll          a4, s3, s11
                  beq          tp, t2, 687f
                  or           s8, zero, s5
                  addi         ra, t2, -508
687:              srli         a6, t1, 26
                  ori          s9, s0, -996
                  srli         t0, t5, 15
                  bge          s3, s3, 692f
                  srl          a1, t4, s11
692:              sra          s10, a2, s11
                  bne          s8, s5, 711f
                  or           sp, a1, s9
695:              slt          s2, s4, s0
                  bne          t5, tp, 702f
                  slli         ra, s0, 27
                  ori          zero, s7, 274
                  srai         s10, s3, 28
                  sltiu        tp, t5, 588
                  lui          s6, 316668
702:              xor          t3, t5, a5
                  auipc        s4, 224590
                  andi         a3, s1, 1568
                  blt          t6, t6, 719f
                  bge          s6, zero, 726f
                  sll          t2, sp, a5
                  sub          t2, a7, a2
                  auipc        t6, 478738
                  bne          s0, t3, 728f
711:              addi         t5, t2, 2026
                  sltu         a1, t2, a3
                  bge          t2, s10, 728f
                  lui          t6, 691457
                  xori         a4, a7, 278
                  slti         tp, a7, 1965
                  addi         t6, a5, -1725
                  xori         s2, a7, 1547
719:              or           s2, a4, a2
                  bne          t5, s10, 740f
                  bgeu         t5, a5, 726f
                  addi         s1, s1, -1781
                  xor          ra, t3, zero
                  beq          s1, s6, 732f
                  blt          t4, s10, 742f
726:              add          ra, s1, s9
                  andi         s10, t5, 1562
728:              addi         a6, s4, -1897
                  nop
                  xor          t0, a6, s1
                  andi         ra, ra, 1410
732:              and          s11, a6, t3
                  bge          a5, gp, 741f
                  bne          a2, s9, 739f
                  srai         t3, s6, 30
                  slli         t0, tp, 4
                  slti         a4, s8, -906
                  bltu         t0, a1, 742f
739:              blt          t1, s10, 757f
740:              sltiu        a1, t6, 366
741:              slt          t3, tp, sp
742:              bge          s9, zero, 759f
                  bne          s8, zero, 753f
                  bltu         a4, gp, 751f
                  slt          a0, gp, s2
                  sltiu        a2, a6, 1012
                  auipc        t2, 708225
                  ori          s5, t0, -1447
                  srl          t5, s2, a0
                  lui          gp, 29590
751:              beq          tp, sp, 761f
                  bge          s11, t0, 764f
753:              slti         a6, s1, 1566
                  sub          zero, s4, a1
                  slti         s11, s3, 1299
                  srai         a0, s6, 26
757:              nop
                  bgeu         s2, a2, 775f
759:              add          s1, gp, s3
                  slt          t1, a2, a1
761:              xori         zero, t2, -1157
                  bge          t4, a1, 769f
                  xori         t6, s6, -330
764:              srli         a0, s4, 13
                  or           s4, s7, s10
                  slli         t3, a5, 12
                  sll          a0, t5, s9
                  sltiu        s10, a2, -1778
769:              sltiu        s0, s2, 1448
                  add          s6, s4, a2
                  sll          s2, t2, t2
                  bne          ra, s7, 775f
                  or           t2, zero, a1
                  beq          a6, tp, 793f
775:              or           t2, tp, a4
                  sltu         a0, a7, t4
                  srli         a1, ra, 21
                  xori         a0, s3, 368
                  xori         s8, t0, -1027
                  slli         t3, s6, 23
                  and          s8, sp, s8
                  ori          t6, a4, -1724
                  sub          t3, t6, t1
                  srai         s1, a6, 19
                  add          ra, a2, s8
                  srl          zero, a0, t1
                  srl          s1, s6, s6
                  bltu         t6, a4, 791f
                  blt          s4, s10, 798f
                  bge          a6, s2, 792f
791:              srli         ra, gp, 29
792:              beq          zero, t2, 809f
793:              srai         gp, s2, 25
                  srli         s6, s8, 17
                  lui          s9, 860437
                  or           sp, a7, a6
                  slli         t3, s0, 31
798:              bne          t5, t4, 812f
                  ori          a3, s5, -1249
                  bgeu         a7, tp, 807f
                  bltu         s4, a6, 821f
                  bne          a5, a5, 819f
                  slt          gp, a3, s9
                  bge          s0, a4, 812f
                  sltu         s1, t0, sp
                  bgeu         a7, s4, 809f
807:              srl          s1, zero, a7
                  bgeu         a5, a6, 826f
809:              andi         s4, s4, 1464
                  add          s10, t4, a5
                  blt          s2, t0, 828f
812:              slti         sp, a1, -787
                  ori          a4, s9, -1573
                  srl          zero, s10, ra
                  slli         a2, s3, 15
                  xor          s6, a0, s11
                  sltiu        s9, s6, 2004
                  bltu         t6, zero, 835f
819:              srli         t5, a0, 25
                  sub          a1, s6, t2
821:              bltu         s0, a1, 828f
                  blt          t0, a5, 832f
                  slti         a5, ra, 1959
                  xori         t6, sp, -1562
                  bne          a1, t2, 839f
826:              or           ra, s6, s0
                  srl          a6, zero, a6
828:              sra          t6, tp, gp
                  bge          s2, t2, 847f
                  srl          s9, s7, a0
                  bltu         s2, t2, 838f
832:              beq          s5, t6, 851f
                  srai         s10, ra, 15
                  sll          s9, s5, s4
835:              sltiu        s10, s5, -221
                  xori         s7, t1, -212
                  sll          a6, s2, a0
838:              sltu         s1, t2, t6
839:              auipc        t5, 16896
                  xori         a2, t4, 604
                  beq          t1, s7, 843f
                  slt          t1, t4, a7
843:              xori         t0, a5, 925
                  bne          t3, s1, 859f
                  sra          a5, t4, gp
                  slli         zero, s10, 23
847:              lui          s1, 498433
                  addi         s6, a1, -1994
                  slli         s11, t6, 31
                  sra          s5, a0, zero
851:              lui          t1, 852726
                  srl          a5, s5, a0
                  sll          tp, s4, t6
                  blt          t6, a6, 856f
                  lui          sp, 702914
856:              nop
                  auipc        a4, 16199
                  auipc        a5, 105524
859:              bltu         s3, t5, 866f
                  sltiu        t5, s0, 295
                  ori          a3, a1, -665
                  srl          gp, s7, s5
                  xori         zero, t3, 402
                  srl          t1, gp, s9
                  bgeu         t4, a7, 875f
866:              xor          s7, t1, a0
                  slti         t1, s0, 522
                  lui          s4, 752442
                  nop
                  sltu         t2, t0, a5
                  bltu         sp, a0, 875f
                  bltu         a1, s2, 892f
                  bltu         s10, a2, 887f
                  xori         a0, t1, 163
875:              srl          s5, t1, s4
                  slli         zero, t3, 29
                  auipc        s1, 150163
                  bltu         a3, t4, 886f
                  la           s10, region_1+302 #start riscv_load_store_rand_instr_stream_18
                  sb           s7, -5(s10)
                  lbu          a1, 10(s10)
                  and          t3, s4, s3
                  ori          gp, s11, -1264
                  sll          a0, s0, s4
                  lbu          t5, -14(s10)
                  ori          s11, t5, 1895
                  lb           t5, -9(s10)
                  lb           s5, -7(s10)
                  srai         ra, a6, 28
                  sb           t6, 1(s10)
                  sll          gp, s10, s4
                  addi         t3, s11, -1628
                  sub          t2, ra, s2
                  lbu          a1, 6(s10)
                  auipc        s2, 738616
                  lb           t1, 9(s10)
                  sb           a2, -14(s10)
                  addi         t0, t5, 1526
                  or           s7, s6, t6
                  sb           s10, 4(s10)
                  lb           s5, 10(s10)
                  sb           s1, 1(s10)
                  lh           s2, -12(s10)
                  sb           a5, 11(s10)
                  xor          s5, t5, s3
                  srai         s1, t5, 3
                  xor          s1, t5, s2
                  sb           a0, -1(s10)
                  slti         tp, a7, -479
                  srl          a2, s0, t1
                  slli         t0, s5, 16
                  lb           s9, -2(s10)
                  lh           s9, -2(s10)
                  lb           s6, 0(s10)
                  or           a5, sp, s4
                  slli         ra, a4, 29
                  lbu          sp, 16(s10)
                  sra          tp, s11, s1
                  slt          sp, s8, s6
                  lh           a5, -4(s10)
                  slt          a4, a5, s1
                  lbu          s8, -6(s10) #end riscv_load_store_rand_instr_stream_18
                  and          t1, t4, s0
                  addi         s1, s4, 737
                  bne          s7, s2, 886f
                  add          t1, t3, zero
                  beq          a5, s0, 888f
                  add          s1, s0, a7
                  srli         s1, t4, 27
886:              slli         a2, t1, 5
887:              add          s10, a3, zero
888:              slli         s8, tp, 6
                  add          s6, t2, a0
                  andi         s8, zero, 158
                  bltu         a1, a5, 908f
892:              slt          tp, a3, s5
                  addi         tp, s11, 200
                  sltu         a1, tp, a6
                  srli         gp, a2, 27
                  slt          t2, s9, a4
                  slti         s7, s0, -425
                  bgeu         s4, a5, 904f
                  bltu         a1, t6, 917f
                  sub          t5, a3, s2
                  sltu         t6, t3, ra
                  auipc        s4, 30560
                  bge          s3, s2, 915f
904:              auipc        t1, 4584
                  slti         gp, s2, 346
                  srli         zero, s1, 0
                  sra          s7, a2, a7
908:              bne          a3, s11, 917f
                  sltu         a2, a3, s0
                  add          s8, t0, a2
                  bne          t6, t5, 914f
                  or           s1, s8, a0
                  auipc        s5, 423726
914:              slt          s1, s5, t4
915:              bgeu         a4, ra, 924f
                  lui          s2, 872782
917:              srli         s2, s3, 28
                  addi         a1, s11, -696
                  and          a6, a6, t0
                  sltu         zero, s9, s4
                  sub          gp, a5, a4
                  sltu         a3, a3, a7
                  bgeu         tp, zero, 925f
924:              bgeu         s7, a5, 929f
925:              ori          a2, a1, 956
                  add          a4, s9, sp
                  ori          s0, s10, -868
                  bltu         a5, zero, 948f
929:              nop
                  bne          t4, s3, 948f
                  andi         s11, a5, -2018
                  add          a2, s10, gp
                  add          t5, s8, s0
                  lui          s1, 265543
                  bgeu         sp, s0, 938f
                  add          s11, a1, t0
                  sra          s11, s3, a4
938:              or           a4, s3, t2
                  auipc        t6, 615182
                  slti         sp, ra, -63
                  sltu         t1, t1, gp
                  andi         zero, s2, 23
                  add          sp, a3, t4
                  lui          s2, 957715
                  add          a0, s8, a7
                  bne          a7, s10, 949f
                  xori         zero, a2, -1199
948:              xor          s4, s3, s1
949:              sub          t5, a2, s8
                  xor          t3, s1, s1
                  sltu         a5, s1, t1
                  slti         s4, t1, 97
                  xor          a6, t2, a7
                  and          t6, a4, t5
                  bne          s7, t2, 969f
                  bge          a0, s10, 974f
                  auipc        s11, 8801
                  blt          t6, s5, 966f
                  sll          t3, zero, s3
                  beq          a3, t4, 967f
                  sra          t5, t1, a3
                  xori         s4, s3, 1910
                  bgeu         s2, s10, 968f
                  bge          t1, a3, 974f
                  nop
966:              auipc        a4, 48112
967:              bgeu         s10, s1, 974f
968:              sltu         gp, t1, s9
969:              bge          t0, t4, 976f
                  beq          a6, s11, 987f
                  and          zero, t5, s10
                  slt          sp, s11, a3
                  bgeu         ra, zero, 983f
974:              sub          t1, sp, s3
                  srai         a0, s2, 31
976:              xor          s1, a2, ra
                  and          a1, s0, s0
                  add          t0, tp, s10
                  srai         t1, ra, 14
                  bge          s5, s7, 997f
                  srli         a5, a7, 27
                  and          s7, t2, t1
983:              sll          s5, s10, gp
                  xori         t2, s7, -789
                  addi         s5, s3, -1666
                  xori         zero, a3, -1013
987:              xor          a5, a4, s6
                  slti         a5, s7, 787
                  and          s1, t3, zero
                  beq          s2, a3, 992f
                  ori          sp, s4, 1406
992:              slli         s10, t4, 23
                  nop
                  bge          s1, a2, 1009f
                  addi         t2, a4, 1037
                  sra          t3, a4, ra
997:              sra          s11, a1, tp
                  slt          t5, t5, a7
                  addi         t1, s9, 336
                  sub          a3, s1, t3
                  addi         s10, s6, 986
                  or           s6, ra, s10
                  bgeu         s8, a7, 1020f
                  srl          a0, s5, s9
                  slli         a0, t3, 21
                  lui          tp, 222181
                  or           s8, a2, s0
                  beq          s1, t1, 1014f
1009:             blt          s4, s4, 1028f
                  slli         t2, s7, 5
                  slti         s0, s3, 1921
                  add          s0, t0, s11
                  blt          s7, a7, 1025f
1014:             slt          s11, a7, sp
                  slt          a4, s5, s11
                  sltiu        s2, sp, -389
                  bgeu         s9, s6, 1034f
                  or           a5, s0, t2
                  xor          s5, a6, tp
1020:             ori          s1, t4, 578
                  srai         tp, a4, 22
                  slti         s2, s5, -343
                  sra          a6, a7, ra
                  bltu         tp, s8, 1028f
1025:             xor          tp, s10, sp
                  bgeu         t0, sp, 1044f
                  auipc        a5, 573134
1028:             slti         a2, gp, 622
                  bltu         s9, s4, 1043f
                  nop
                  xori         a5, s11, -838
                  slli         s6, s6, 20
                  slt          s2, s8, t5
1034:             ori          ra, a4, -708
                  nop
                  bgeu         a2, s8, 1056f
                  or           tp, ra, s0
                  ori          s0, t1, 1908
                  blt          ra, s6, 1047f
                  bgeu         s11, s3, 1060f
                  sra          a1, s7, t3
                  beq          a1, a7, 1052f
1043:             sltu         zero, s0, s3
1044:             bgeu         s2, a7, 1047f
                  lui          s10, 626026
                  or           t1, sp, a2
1047:             sll          a6, s10, a2
                  andi         t6, a6, 535
                  beq          t1, t2, 1066f
                  add          a4, s1, zero
                  slt          s4, zero, a5
1052:             srl          s1, a3, gp
                  auipc        a2, 283914
                  xori         s6, s3, -146
                  lui          s11, 959200
1056:             blt          s10, a1, 1075f
                  auipc        a4, 945194
                  bgeu         tp, tp, 1065f
                  slti         a4, ra, -1086
1060:             bge          a0, a3, 1067f
                  sltu         s0, s10, a5
                  slli         a2, a2, 19
                  xori         a2, t0, 1280
                  andi         s8, s11, -275
1065:             sltu         s7, a0, s5
1066:             sll          a1, t3, zero
1067:             sra          s1, t1, a3
                  slli         a6, tp, 7
                  blt          t0, s3, 1079f
                  nop
                  slli         t3, s4, 16
                  beq          a4, s3, 1089f
                  srl          s7, t6, t2
                  beq          t3, s11, 1092f
1075:             add          a0, s0, a7
                  nop
                  sub          a2, s3, t6
                  beq          a1, s8, 1087f
1079:             sltiu        t0, gp, 150
                  bne          gp, a7, 1085f
                  lui          t0, 657063
                  sll          a2, s1, gp
                  add          t1, t4, ra
                  andi         s4, t0, 1597
1085:             auipc        tp, 952689
                  add          s4, s8, sp
1087:             slti         t1, a7, -1391
                  auipc        s1, 959739
1089:             addi         s2, t5, 1281
                  srai         s1, t3, 3
                  sra          a5, a4, a4
1092:             add          a0, s10, a1
                  lui          sp, 571874
                  or           a4, a3, s3
                  xori         a0, s5, 452
                  srli         zero, s10, 8
                  addi         s0, s9, -1973
                  auipc        s5, 878175
                  xori         a0, tp, 514
                  srl          s11, t1, s9
                  addi         s8, a3, -1590
                  srl          s6, sp, a4
                  srai         s10, t0, 15
                  sra          ra, s1, s0
                  or           a6, a4, zero
                  lui          a4, 156284
                  blt          a0, a4, 1111f
                  andi         s8, s11, -958
                  beq          a4, tp, 1126f
                  ori          a5, gp, -838
1111:             sub          t2, a7, gp
                  sra          s1, gp, a6
                  or           t2, t6, a7
                  and          t1, t5, s8
                  sra          ra, t1, a0
                  andi         s9, t3, 1789
                  nop
                  bgeu         t5, s2, 1132f
                  sra          t3, a5, a6
                  lui          sp, 1046788
                  and          sp, t3, s4
                  sub          a3, s10, s1
                  auipc        tp, 1003008
                  andi         a2, s4, 813
                  xori         s10, s5, -1559
1126:             or           sp, t6, t0
                  slli         t0, a0, 27
                  lui          sp, 877
                  andi         t5, sp, -833
                  or           t2, t0, s2
                  sra          t0, a4, zero
1132:             srli         s11, a4, 16
                  auipc        a2, 241491
                  xori         s2, s2, 1776
                  srai         ra, t5, 21
                  auipc        t1, 190897
                  slli         s10, s4, 12
                  slli         s8, s11, 22
                  slti         a0, ra, -699
                  bne          gp, gp, 1154f
                  and          t0, s2, s0
                  bgeu         a6, s8, 1144f
                  srl          a2, a2, s10
1144:             and          a1, s8, a2
                  srai         t2, s10, 5
                  slt          s5, s3, t6
                  lui          s10, 424840
                  ori          zero, a7, 1842
                  xor          t0, tp, t1
                  addi         t3, sp, -907
                  srl          a2, s6, a3
                  xor          t0, a6, s8
                  lui          ra, 171159
1154:             andi         a2, s2, 646
                  xor          t5, a1, t6
                  slti         zero, s11, -1325
                  auipc        s1, 742252
                  srai         gp, a3, 19
                  xor          s10, t6, tp
                  xori         a0, s11, -1779
                  and          s10, sp, s0
                  xori         a0, a4, 257
                  sltu         t3, a0, t1
                  addi         a1, t1, 230
                  or           t6, s5, t3
                  auipc        a3, 44420
                  slt          s4, t4, s8
                  sll          t3, s7, s10
                  and          t0, s11, s10
                  add          s10, s4, s4
                  bltu         s10, s5, 1186f
                  add          t5, s9, s5
                  sll          s5, a0, s10
                  add          s5, t1, s0
                  addi         s2, a6, 997
                  add          s1, a0, s3
                  sltu         s5, a3, sp
                  add          tp, zero, a5
                  and          s4, t0, t6
                  bne          s1, t3, 1183f
                  sra          ra, s0, t6
                  lui          a5, 729531
1183:             slti         s9, s3, -1211
                  or           a3, a6, a6
                  srli         t1, s5, 26
1186:             slti         a3, s10, -704
                  and          s10, a5, s0
                  slt          s1, s7, a6
                  bge          s1, sp, 1197f
                  bltu         s5, t5, 1207f
                  lui          s6, 401915
                  sra          t2, t1, s7
                  and          t0, a6, s0
                  sltu         t6, s6, a6
                  add          t1, gp, t6
                  xor          a3, t4, s10
1197:             bltu         a4, tp, 1202f
                  slli         a6, s7, 5
                  sltu         ra, a6, s3
                  addi         s8, s11, -323
                  slli         t3, s11, 30
1202:             sltiu        s9, s5, 1949
                  nop
                  nop
                  srli         s9, tp, 7
                  sltu         s0, t1, t5
1207:             xor          zero, t2, t5
                  xori         s8, a4, 1548
                  xor          s9, tp, s0
                  bge          s11, sp, 1216f
                  bne          a0, a5, 1218f
                  slli         s7, s2, 30
                  sub          t1, s8, s10
                  xor          a5, t3, s2
                  ori          s8, s4, -1569
1216:             sra          sp, tp, t5
                  bne          sp, a2, 1219f
1218:             addi         gp, t1, 633
1219:             nop
                  slt          t5, zero, a2
                  xori         a0, a3, -1843
                  sltu         t3, t3, a1
                  beq          s6, s5, 1243f
                  bgeu         s5, s10, 1232f
                  nop
                  sra          s4, t0, a7
                  xor          a6, a1, tp
                  slli         gp, a7, 20
                  srai         s11, s8, 21
                  blt          a6, gp, 1242f
                  srai         s11, t4, 17
1232:             lui          ra, 306080
                  auipc        a6, 64153
                  bne          ra, t1, 1252f
                  sra          a4, t6, sp
                  auipc        gp, 995366
                  add          s0, s1, a0
                  addi         s11, s11, 1127
                  bge          s0, a3, 1257f
                  bge          s1, a3, 1242f
                  sltiu        t3, t4, -1306
1242:             slti         t5, s8, 1479
1243:             bne          t2, t3, 1253f
                  sub          t0, tp, a6
                  lui          s9, 657618
                  sltu         ra, a0, s5
                  lui          zero, 679255
                  nop
                  ori          zero, a0, 425
                  or           s2, a0, a1
                  ori          ra, s6, -1028
1252:             and          s2, s6, s4
1253:             sub          a3, a6, a2
                  add          s9, s0, sp
                  srai         t0, sp, 4
                  slti         s5, a6, 104
1257:             ori          t2, s1, 871
                  sub          s4, a5, a1
                  blt          a5, t2, 1276f
                  bne          s7, sp, 1263f
                  bge          a1, a2, 1276f
                  bne          t0, s5, 1276f
1263:             slli         t0, s4, 4
                  sltiu        s0, s9, -666
                  blt          s1, t6, 1270f
                  bne          t2, a0, 1275f
                  or           t2, gp, a7
                  and          t1, t2, s1
                  sub          zero, a7, t3
1270:             slti         a4, s9, -1813
                  auipc        a5, 259505
                  sltiu        t0, s2, 94
                  slli         sp, a3, 13
                  sltu         a4, a4, s0
1275:             srli         a5, s5, 8
1276:             slti         a6, s9, -1392
                  nop
                  bltu         sp, a4, 1296f
                  sltiu        t5, zero, 364
                  xor          t5, a4, s1
                  lui          s5, 438207
                  add          s1, tp, s11
                  bge          t5, s11, 1287f
                  bgeu         s5, t3, 1286f
                  bltu         gp, s9, 1303f
1286:             blt          a7, s4, 1300f
1287:             lui          t1, 532667
                  bge          a3, a0, 1295f
                  or           s2, a4, s7
                  srai         gp, s1, 4
                  bgeu         t3, s6, 1308f
                  lui          gp, 969500
                  addi         t1, ra, 1966
                  blt          ra, t6, 1301f
1295:             blt          a3, s9, 1314f
1296:             sra          zero, s6, s0
                  bne          tp, a0, 1305f
                  addi         s0, a0, -1524
                  bgeu         s7, a5, 1311f
1300:             bgeu         s7, s1, 1308f
1301:             slli         a2, t2, 23
                  sltiu        t3, t0, 222
1303:             sra          s0, s2, a3
                  sra          a2, s1, ra
1305:             sltu         s11, t3, sp
                  and          tp, t6, t4
                  andi         s9, a6, -687
1308:             srai         a4, tp, 2
                  andi         s2, a1, 422
                  srai         s1, s8, 7
1311:             srai         s7, a5, 28
                  xor          t5, a0, a0
                  auipc        t5, 876545
1314:             sltiu        t3, a1, -1201
                  bgeu         a0, t1, 1335f
                  beq          s7, s6, 1319f
                  xori         a3, t4, 1134
                  blt          s7, s1, 1323f
1319:             xori         a2, t4, 474
                  addi         a5, ra, -35
                  slli         a5, t5, 17
                  blt          sp, zero, 1328f
1323:             auipc        s6, 1823
                  sltu         tp, s8, a4
                  xori         s0, s5, -1395
                  lui          s7, 767524
                  blt          a2, s6, 1344f
1328:             auipc        sp, 999870
                  nop
                  sltiu        tp, a6, -1680
                  sltu         s10, t6, zero
                  srl          t2, a4, t5
                  srl          s7, a7, t3
                  bltu         t3, s4, 1352f
1335:             bge          t1, s2, 1352f
                  ori          a2, t5, -1963
                  sltiu        t6, gp, -1266
                  and          a3, t6, s1
                  lui          a3, 412870
                  sra          a2, t5, t1
                  lui          a5, 463287
                  xor          s6, t5, s1
                  add          s9, t0, t2
1344:             auipc        s4, 497133
                  bltu         t5, s0, 1355f
                  srli         a6, s10, 6
                  srl          s2, s10, s9
                  bge          t2, t1, 1355f
                  bgeu         s9, s2, 1369f
                  sra          s2, s6, t5
                  or           ra, s9, s11
1352:             srl          a6, t2, a7
                  ori          zero, zero, -1265
                  add          t2, s3, s2
1355:             bgeu         t2, t4, 1367f
                  sub          s8, t5, t1
                  blt          s7, gp, 1371f
                  ori          s2, s3, -401
                  xori         s4, s11, 571
                  lui          t1, 1042132
                  srl          s0, t1, s8
                  xori         t2, s10, -1295
                  xor          a5, a7, zero
                  srli         s11, t5, 1
                  blt          t1, t2, 1367f
                  bge          s11, a4, 1371f
1367:             auipc        t0, 837408
                  sra          gp, a5, t6
1369:             addi         s9, t3, 1697
                  slli         t3, s6, 19
1371:             nop
                  sltu         t1, ra, t5
                  add          a0, s1, sp
                  add          t2, s0, gp
                  slti         s9, s7, 1046
                  srai         a6, s0, 11
                  ori          a0, sp, 656
                  sltu         s2, s1, sp
                  lui          a6, 123358
                  bltu         gp, ra, 1397f
                  sltu         s5, s0, s3
                  auipc        s5, 203636
                  bltu         s7, ra, 1386f
                  lui          zero, 175434
                  nop
1386:             beq          t6, s4, 1403f
                  slli         s9, a6, 26
                  beq          s3, a4, 1398f
                  srli         t1, s0, 22
                  bltu         t0, sp, 1410f
                  srai         a4, a6, 29
                  beq          s9, s8, 1410f
                  andi         t6, t2, -1557
                  andi         s10, a2, 38
                  addi         a3, ra, -354
                  ori          sp, t4, -75
1397:             srl          t0, s2, a0
1398:             srl          a4, t5, s6
                  bgeu         s0, s3, 1417f
                  add          t1, t5, t2
                  nop
                  auipc        s6, 869934
1403:             bge          t6, s11, 1413f
                  auipc        sp, 175194
                  slli         t2, s8, 29
                  bltu         s7, zero, 1413f
                  auipc        a2, 46820
                  bltu         a4, s0, 1427f
                  sll          s11, a0, t2
1410:             bgeu         a1, t3, 1416f
                  add          s5, s8, t5
                  slli         s1, s10, 22
1413:             lui          s4, 786585
                  blt          s1, a7, 1434f
                  blt          t5, s6, 1422f
1416:             bne          a6, gp, 1433f
1417:             blt          s11, a3, 1425f
                  slti         s2, a7, -816
                  blt          t1, t6, 1427f
                  sll          s5, a2, a3
                  nop
1422:             sltu         zero, s4, gp
                  bgeu         ra, a3, 1426f
                  sltiu        tp, a5, -1539
1425:             xor          s4, s0, t0
1426:             slli         t0, tp, 16
1427:             and          s5, sp, t6
                  andi         t0, s11, -814
                  and          s0, s10, s3
                  sra          s7, s0, t3
                  srl          s10, s5, a3
                  auipc        a2, 661203
1433:             sll          s11, t2, t3
1434:             or           a0, tp, t0
                  slt          t0, s8, a1
                  blt          s6, t6, 1445f
                  xor          s10, s2, zero
                  andi         s6, a2, 1058
                  ori          t6, a7, -415
                  sll          s0, gp, t3
                  srli         tp, s5, 29
                  and          s8, a3, a6
                  sra          s6, a2, t5
                  srli         s11, a3, 29
1445:             sltiu        sp, zero, -744
                  sra          t3, t4, t1
                  bge          a2, s2, 1451f
                  add          s11, t5, zero
                  sltiu        s2, s0, 1316
                  sltu         s4, s9, gp
1451:             andi         a3, s9, -1787
                  bgeu         s11, s9, 1469f
                  slli         a3, a6, 13
                  nop
                  blt          s4, s8, 1469f
                  auipc        t3, 479949
                  srl          s10, a4, t1
                  srli         s7, s4, 24
                  sltu         a1, a4, s10
                  nop
                  sub          s4, tp, s10
                  sll          s4, t6, t5
                  srl          t2, s7, sp
                  lui          a0, 536858
                  srai         s8, a7, 19
                  addi         a1, a5, 1654
                  lui          sp, 551444
                  sra          s8, a4, s6
1469:             bne          s10, a5, 1476f
                  slt          tp, s0, a7
                  sra          t0, s9, t0
                  sll          gp, s6, t2
                  slli         t0, t4, 9
                  or           t1, a2, a7
                  sltiu        a3, t3, -1932
1476:             nop
                  slti         a0, s6, -68
                  bge          gp, zero, 1480f
                  sra          t6, a1, s4
1480:             and          s10, a6, ra
                  ori          a6, t2, 1019
                  auipc        t1, 553517
                  auipc        s9, 388932
                  blt          sp, gp, 1502f
                  beq          t0, s2, 1500f
                  nop
                  auipc        t3, 533939
                  slti         s11, s3, -2
                  sra          s9, t3, t5
                  bgeu         s0, t6, 1495f
                  nop
                  sltu         a2, s7, s7
                  and          gp, s4, s3
                  srl          a3, s7, t6
1495:             slti         ra, s10, 918
                  slti         a6, s6, -687
                  add          s0, s0, a5
                  bge          a4, s5, 1516f
                  sltu         a2, t3, a1
1500:             lui          a5, 441221
                  srli         a0, tp, 19
1502:             srl          a5, s4, a0
                  blt          s4, s3, 1513f
                  ori          s8, s4, -1047
                  add          s10, a4, sp
                  sltiu        t0, t3, -729
                  blt          a5, a7, 1527f
                  slt          s7, s0, a4
                  srai         s5, t0, 10
                  srai         s11, t1, 21
                  bne          s10, t5, 1513f
                  sltu         gp, s8, s8
1513:             or           t1, t6, t2
                  bltu         s7, a7, 1516f
                  bge          t5, t4, 1529f
1516:             srai         s2, s6, 7
                  and          ra, s10, s2
                  add          zero, a2, s11
                  and          a3, sp, t4
                  srl          s5, s11, zero
                  srli         a2, s9, 29
                  slli         tp, s6, 2
                  slti         t0, a5, 1395
                  sra          t0, s4, s7
                  srl          ra, t4, t2
                  nop
1527:             and          tp, gp, s6
                  slti         t3, t4, 1043
1529:             sra          a5, a6, ra
                  bltu         a0, a1, 1550f
                  andi         a3, s6, -682
                  srli         s11, s10, 24
                  srai         s0, t4, 17
                  blt          a7, s8, 1539f
                  xor          t6, a2, t0
                  srli         s11, a6, 31
                  bge          s8, t4, 1545f
                  andi         s4, t0, 903
1539:             srl          s9, s9, sp
                  srl          s10, t6, t1
                  sll          s8, gp, zero
                  blt          t6, a0, 1549f
                  srl          s4, s1, ra
                  sltiu        zero, t5, -1357
1545:             sub          t0, a4, t5
                  sra          s6, s7, s0
                  sub          s8, s0, t5
                  srl          t3, s9, s4
1549:             lui          tp, 969008
1550:             auipc        s9, 87726
                  blt          s4, t4, 1559f
                  sra          t0, s2, t3
                  sra          a6, s5, tp
                  bltu         a2, gp, 1571f
                  blt          a2, s5, 1558f
                  xori         s8, a3, -72
                  sra          s5, t4, t6
1558:             andi         s8, a0, -1746
1559:             srl          t0, a5, t0
                  or           s4, a0, sp
                  sltu         t0, a4, s3
                  srl          gp, zero, a7
                  auipc        s6, 1007264
                  slti         t1, zero, 1366
                  bltu         t4, s7, 1572f
                  ori          a0, s2, 451
                  bge          t2, t3, 1582f
                  lui          s4, 205098
                  xori         tp, a1, -1376
                  sll          s0, a5, a0
1571:             srl          t2, sp, s3
1572:             srl          a2, a4, s5
                  bne          a1, s3, 1578f
                  bltu         a6, a3, 1583f
                  addi         s10, sp, 1157
                  nop
                  xor          s5, ra, s2
1578:             addi         s1, zero, 1114
                  bne          a5, s8, 1597f
                  sub          s1, tp, s5
                  nop
1582:             slli         zero, gp, 8
1583:             xor          s1, a5, ra
                  slti         t0, a5, -512
                  nop
                  slt          t3, s8, s10
                  bgeu         s0, a3, 1604f
                  and          tp, a0, a6
                  slti         sp, t2, 1911
                  bge          s6, a2, 1594f
                  srl          sp, s11, a2
                  sra          s11, t2, s9
                  sra          sp, zero, a5
1594:             srai         t3, a3, 19
                  beq          s4, ra, 1612f
                  sltu         gp, t3, s2
1597:             nop
                  auipc        s4, 815455
                  auipc        s2, 315999
                  bne          s0, s9, 1610f
                  bgeu         a2, a1, 1619f
                  sll          s5, a3, t0
                  xori         ra, tp, -1621
1604:             srai         ra, a2, 0
                  or           t3, a5, tp
                  sra          s6, t0, tp
                  blt          a1, a3, 1626f
                  addi         a5, t0, -2004
                  or           t2, t3, s4
                  la           s7, sub_10
                  sub          s9, a7, s10
                  addi         s7, s7, 204
                  sltiu        a4, t5, 734
                  blt          t5, a6, sub_9_j11 #branch to jump instr
                  sltu         tp, t5, s11
                  sll          s4, s7, a0
                  andi         t0, a5, 658
                  add          s6, t6, t1
                  sll          t1, a7, t1
                  lui          s8, 421129
sub_9_j11:        jalr         tp, s7, -204 #jump sub_9 -> sub_10
1610:             xor          t6, zero, s0
                  slti         a1, a4, -1618
1612:             ori          a4, a4, 627
                  xor          s8, t2, s5
                  bne          s11, a0, 1620f
                  sub          s9, s3, s1
                  sub          s8, sp, s6
                  xori         a6, a7, -747
                  srl          s2, s3, s11
1619:             beq          tp, a2, 1626f
1620:             srai         a5, t4, 14
                  slli         sp, t2, 14
                  and          gp, s10, s6
                  beq          tp, s1, 1637f
                  sra          t0, s5, a3
                  bge          a7, s7, 1628f
1626:             addi         t6, tp, -1255
                  bge          s9, t0, 1639f
1628:             nop
                  slti         a4, s7, 1147
                  bne          a0, ra, 1647f
                  nop
                  add          sp, t2, a2
                  or           s5, s11, a1
                  auipc        a2, 1037070
                  and          s1, s2, sp
                  sltiu        t3, ra, -94
1637:             addi         s4, s2, -1861
                  addi         a0, s5, 190
1639:             srai         t1, t0, 18
                  addi         s4, s1, -897
                  slt          a5, a2, zero
                  sltiu        ra, a0, 1397
                  lui          a1, 971136
                  sub          t1, s2, s11
                  addi         a6, a1, 1389
                  auipc        a5, 233159
1647:             auipc        a0, 494849
                  bltu         t2, sp, 1662f
                  srli         s5, gp, 20
                  slt          t5, a6, a2
                  lui          s2, 909740
                  add          t2, s1, ra
                  bge          s0, t6, 1671f
                  ori          s5, t1, -171
                  srai         t2, a6, 1
                  srli         s2, t2, 5
                  sltu         t1, s8, a5
                  bne          gp, t3, 1665f
                  srl          gp, a0, s5
                  sll          t3, t0, t3
                  add          s11, tp, a1
1662:             addi         ra, t6, -1009
                  slt          s6, s10, s1
                  sub          a6, t4, gp
1665:             andi         a6, gp, -1539
                  bltu         a3, s1, 1672f
                  bge          t6, s1, 1670f
                  slt          t3, zero, gp
                  srli         a2, t5, 20
1670:             srai         s4, t1, 4
1671:             bne          a6, a5, 1679f
1672:             ori          ra, s2, 704
                  srl          s9, a4, t6
                  slli         a5, a2, 19
                  andi         a6, tp, 1369
                  srl          s0, s3, a1
                  bne          s6, sp, 1692f
                  srli         tp, a4, 12
1679:             srai         s4, a2, 28
                  slti         a2, a4, 1574
                  add          gp, t3, a2
                  lui          tp, 920175
                  bne          s9, s7, 1686f
                  slti         a5, s10, 1626
                  srl          s5, a7, s2
1686:             auipc        s8, 540873
                  beq          tp, s10, 1704f
                  andi         s1, zero, -1889
                  xor          s5, a2, a6
                  bne          s1, s0, 1697f
                  slt          s0, t3, zero
1692:             slt          t1, t0, a6
                  sll          s4, t3, tp
                  srli         a0, s9, 10
                  and          a2, a4, t4
                  and          a0, s0, s5
1697:             slt          a2, s1, t2
                  ori          s10, a5, 1284
                  add          a2, a1, t2
                  sub          a5, a1, gp
                  sll          s4, s9, t2
                  lui          a2, 30837
                  la           sp, region_1+1984 #start riscv_load_store_rand_instr_stream_24
                  sb           s2, -27(sp)
                  srli         a3, a6, 14
                  slli         ra, t0, 24
                  lb           t3, -14(sp)
                  auipc        ra, 214709
                  lh           a5, -74(sp)
                  lhu          a0, 2(sp)
                  sb           s9, -6(sp)
                  or           s0, s3, zero
                  lbu          a0, -119(sp)
                  srl          s1, s9, s0
                  lbu          t2, -115(sp)
                  lui          a5, 443433
                  lh           gp, -34(sp)
                  sb           s4, 9(sp)
                  lb           s11, -41(sp)
                  sw           t2, -108(sp)
                  auipc        s1, 961913
                  nop
                  lbu          t2, -65(sp)
                  sb           t4, -85(sp)
                  sw           s5, -40(sp)
                  lhu          a5, -142(sp)
                  xori         t3, s0, -1450
                  sll          gp, t0, s8
                  lhu          zero, 6(sp)
                  sh           ra, -22(sp)
                  sb           a1, -83(sp)
                  auipc        s5, 352319
                  sll          a4, a0, s11
                  srl          t5, s1, s0
                  xori         t6, s2, -936
                  lh           s8, -18(sp)
                  lb           s11, -27(sp)
                  lb           s2, -123(sp) #end riscv_load_store_rand_instr_stream_24
                  add          s10, ra, t2
1704:             sra          sp, t4, s7
                  slti         a6, zero, 1799
                  nop
                  slti         s0, a0, -766
                  xor          gp, t3, a2
                  and          s10, t5, s3
                  add          s8, tp, a4
                  auipc        a4, 597846
                  srl          s9, a2, a5
                  srl          ra, t2, s5
                  sra          tp, a5, ra
                  srl          s2, a2, s8
                  srl          t0, s11, s5
                  auipc        ra, 384255
                  auipc        s8, 51837
                  srli         a4, s2, 12
                  sub          t0, a7, s2
                  nop
                  bne          s8, a0, 1734f
                  srai         zero, t1, 16
                  slti         s5, t0, -1843
                  sltu         t3, s11, t0
                  beq          tp, zero, 1743f
                  bne          s1, gp, 1745f
                  nop
                  sltu         a4, s11, zero
                  srl          gp, tp, s10
                  and          s11, tp, a1
                  and          t6, s11, a1
                  bltu         t0, a5, 1743f
1734:             xor          a1, s1, s8
                  srl          s1, a1, s0
                  add          a0, s5, s1
                  bltu         gp, s5, 1744f
                  auipc        t0, 598127
                  sltiu        a4, gp, 1365
                  sra          a1, t3, zero
                  blt          t5, t5, 1745f
                  srl          s10, t0, s1
1743:             srli         s0, a2, 9
1744:             slt          s7, t1, a3
1745:             lui          s1, 679991
                  slti         sp, a1, -1111
                  addi         sp, a7, 888
                  sltu         a0, ra, tp
                  nop
                  and          t3, a3, a1
                  or           a6, s8, t3
                  slti         t0, s2, 974
                  sltu         s8, s8, a4
                  andi         gp, t5, 1137
                  srli         ra, a5, 21
                  auipc        sp, 106774
                  slt          t6, a5, s7
                  bge          s1, a1, 1763f
                  addi         a6, s6, 722
                  and          a6, a5, s11
                  sra          sp, t4, sp
                  sltiu        s9, s7, 663
1763:             sll          s5, s8, a0
                  bge          s0, tp, 1769f
                  blt          s5, s10, 1785f
                  bge          s7, t3, 1776f
                  nop
                  andi         sp, s3, 884
1769:             xor          s10, t1, gp
                  add          a2, s5, t4
                  beq          a7, tp, 1788f
                  or           gp, s10, s7
                  srli         sp, t1, 26
                  blt          gp, s5, 1792f
                  sll          s5, t4, s3
1776:             auipc        s5, 188387
                  sll          s4, a0, s0
                  sll          s1, s3, s6
                  bge          s1, a4, 1781f
                  lui          sp, 764952
1781:             sra          ra, sp, s4
                  ori          s0, t0, 101
                  sll          a1, s6, s0
                  slti         s10, gp, -373
1785:             nop
                  bne          t5, s0, 1788f
                  sltu         s4, s1, a1
1788:             sltiu        s1, s3, -1683
                  srl          s7, t1, t1
                  srl          a3, t0, s4
                  addi         a6, t6, -1778
1792:             beq          zero, t5, 1800f
                  slti         s10, ra, -1771
                  and          s2, s4, a2
                  sub          s1, s0, a5
                  addi         s5, s9, -1213
                  sltu         s5, a0, s3
                  nop
                  lui          t1, 858479
1800:             slt          tp, ra, t4
                  bne          tp, s10, 1810f
                  lui          t5, 383917
                  srl          s0, s4, zero
                  beq          gp, s8, 1818f
                  sltiu        zero, s11, 418
                  slt          s1, t0, a5
                  or           t6, a4, a6
                  sltiu        s5, s9, 1183
                  add          s9, s2, a2
1810:             sll          a3, t4, s5
                  beq          s1, a5, 1828f
                  sll          s2, t0, a2
                  lui          s0, 195220
                  sra          s9, t1, a1
                  xor          a2, a3, s9
                  and          t0, t0, t5
                  beq          a5, s2, 1837f
1818:             and          a0, gp, a6
                  bltu         a6, a3, 1838f
                  srl          a0, s0, a2
                  lui          s8, 769859
                  slt          s7, a2, s0
                  sra          s2, a3, s11
                  xori         a2, s8, -1994
                  bne          s2, t3, 1842f
                  srai         tp, a2, 22
                  sub          s9, t1, s6
1828:             addi         s9, a0, -798
                  sra          s9, t2, a1
                  blt          s5, a0, 1835f
                  slti         t0, sp, 314
                  sltu         s6, s3, a3
                  blt          tp, t6, 1839f
                  sra          a6, s7, s1
1835:             bge          t4, a7, 1849f
                  slt          t2, s11, s8
1837:             sltu         a4, s10, s11
1838:             sltu         sp, tp, tp
1839:             bge          zero, s8, 1849f
                  slli         ra, s6, 14
                  nop
1842:             xor          a6, s9, s10
                  sltiu        gp, tp, 1361
                  blt          t0, t1, 1851f
                  slli         tp, s9, 2
                  andi         t5, s7, -1997
                  slti         zero, t6, -1556
                  bltu         s2, a0, 1866f
1849:             or           s6, s8, t1
                  ori          s10, s4, -1449
1851:             xori         tp, s2, 712
                  beq          t1, tp, 1866f
                  srli         s8, a2, 10
                  or           s11, a6, zero
                  srli         sp, a4, 9
                  xori         gp, zero, -787
                  bltu         s7, s7, 1859f
                  slt          t5, s3, tp
1859:             slt          a1, a6, s11
                  xori         tp, s7, -1307
                  add          zero, t0, s0
                  or           a6, s0, t6
                  slti         s7, sp, -1929
                  slti         s1, t0, -727
                  sltu         s5, a0, s10
1866:             andi         a6, t4, 2031
                  bne          gp, s5, 1879f
                  bgeu         t4, s3, 1875f
                  add          a5, s8, t1
                  sll          s4, s10, s4
                  blt          a0, s6, 1876f
                  sub          t3, a7, t2
                  xori         t0, zero, -1060
                  bne          a6, tp, 1882f
1875:             sltu         a2, a4, t3
1876:             or           zero, t0, s5
                  sra          s1, s4, s8
                  slti         s5, s8, -938
1879:             addi         a0, a0, 166
                  srli         s4, s9, 25
                  auipc        a5, 86555
1882:             sub          a3, t5, zero
                  auipc        s6, 975233
                  srai         s11, t5, 21
                  sll          sp, a7, t2
                  sltiu        a5, s4, 664
                  bltu         tp, t2, 1907f
                  la           sp, region_0+1317 #start riscv_load_store_rand_instr_stream_15
                  sltu         s1, a5, a6
                  lbu          s7, 1(sp)
                  sb           s8, -145(sp)
                  lbu          a3, -86(sp)
                  sll          s7, zero, s7
                  sltiu        s4, zero, 1082
                  and          s6, t0, a3
                  andi         s5, ra, -1703
                  lh           a4, -113(sp)
                  lbu          t2, -254(sp)
                  sltu         t3, t3, a2
                  lh           t3, -231(sp)
                  addi         s6, s11, 574
                  andi         s1, s0, 1805
                  sb           s6, 7(sp)
                  ori          s2, zero, -926
                  sb           a0, 59(sp)
                  sll          tp, s6, a3
                  xori         s11, t4, -78
                  sb           s8, -212(sp)
                  sltu         a4, t1, s4
                  slli         s8, s6, 10
                  lhu          zero, 107(sp)
                  sh           s4, -105(sp)
                  lh           gp, 5(sp)
                  slli         t5, t1, 16
                  sb           s8, -240(sp)
                  xor          s0, a5, a3
                  andi         a6, s9, -1344
                  lh           a1, -83(sp)
                  auipc        a4, 880968
                  lb           s2, 210(sp)
                  sra          t5, t6, a6
                  lw           s0, 43(sp)
                  lb           s11, 101(sp)
                  ori          a6, s11, -1867
                  slli         ra, t4, 20
                  add          a1, t2, t6
                  sb           a1, -127(sp) #end riscv_load_store_rand_instr_stream_15
                  bne          t5, a3, 1898f
                  slli         gp, t6, 26
                  srli         a3, t3, 20
                  slti         s10, gp, 833
                  slli         t0, t0, 8
                  blt          t5, a4, 1896f
                  srai         sp, s6, 31
                  auipc        s8, 849773
1896:             srl          a2, sp, a6
                  sub          tp, a1, s1
1898:             and          s2, a2, a6
                  lui          a1, 402660
                  slti         t0, s1, 1786
                  sub          a1, a7, s2
                  slt          t0, s10, a6
                  slti         s0, s8, -353
                  srli         s9, s6, 10
                  addi         a3, a4, 1957
                  addi         a4, a1, -1509
1907:             blt          a7, a0, 1925f
                  bge          t0, t0, 1915f
                  blt          a7, a2, 1928f
                  sltiu        a3, a2, -283
                  bge          a3, a6, 1928f
                  add          tp, t6, s4
                  sll          t1, s2, a0
                  xori         s4, sp, 351
1915:             bne          s2, a6, 1917f
                  bne          gp, s8, 1919f
1917:             slt          a6, a5, a7
                  srli         a0, s1, 2
1919:             srli         t0, s6, 21
                  sll          s1, s6, t4
                  addi         t5, s3, 1779
                  sltiu        s11, a1, -1462
                  blt          t5, ra, 1927f
                  nop
1925:             srl          a3, t0, t4
                  beq          a6, t0, 1946f
1927:             slli         t5, zero, 18
1928:             bge          s8, s2, 1946f
                  andi         t5, s8, 612
                  bne          s7, s10, 1947f
                  slt          s4, ra, t1
                  srai         s4, sp, 6
                  lui          a3, 337722
                  slt          a6, t4, a3
                  add          zero, t5, a6
                  slli         s10, s6, 25
                  srai         t2, s10, 14
                  auipc        s8, 355412
                  bltu         t4, sp, 1948f
                  blt          a1, gp, 1948f
                  slt          s2, s4, tp
                  auipc        t3, 964252
                  add          a5, s2, s0
                  sub          s6, ra, s6
                  addi         s6, t1, -620
1946:             slt          a5, s0, a5
1947:             bltu         s1, t5, 1964f
1948:             srli         s10, a2, 11
                  ori          a3, s2, -94
                  addi         s0, s8, -460
                  la           sp, region_1+1658 #start riscv_load_store_rand_instr_stream_3
                  lbu          t0, -49(sp)
                  sltu         s11, s10, t6
                  lh           t2, -24(sp)
                  lb           tp, 93(sp)
                  nop
                  sb           t6, -183(sp)
                  ori          t1, t2, -1463
                  sll          t5, a4, t5
                  lb           s9, -47(sp)
                  slt          s2, a2, a2
                  lb           a1, 133(sp)
                  sb           s4, 23(sp)
                  srli         ra, a2, 22
                  lb           a4, -207(sp)
                  lhu          a6, 142(sp)
                  lb           tp, -185(sp)
                  lb           t6, 141(sp)
                  lbu          a6, -154(sp)
                  add          s4, t5, ra
                  slt          a6, t3, a6
                  addi         a4, t4, 247
                  srai         t2, a0, 22
                  sb           t5, 219(sp)
                  lbu          s11, 188(sp)
                  lhu          s5, 72(sp)
                  ori          zero, t5, 1840
                  lb           s5, -129(sp)
                  lh           s2, 204(sp)
                  auipc        s0, 330524
                  slt          s8, s3, t5
                  sub          t6, s7, s2
                  lbu          s9, 235(sp)
                  sh           a0, -90(sp)
                  lw           t5, 10(sp)
                  lb           a4, 100(sp)
                  and          a0, t4, t0
                  lb           t6, -220(sp)
                  lbu          ra, 243(sp)
                  sll          gp, s1, s1
                  andi         t1, a4, -90
                  slti         t6, a4, 1038
                  xor          s5, t1, a5
                  lb           a5, 13(sp)
                  and          tp, s2, t0
                  lhu          zero, 172(sp)
                  lbu          s5, -158(sp)
                  srl          s1, s6, s9
                  srl          s1, s8, s10
                  sb           a0, -11(sp)
                  add          s6, s9, s1
                  lhu          t6, 126(sp) #end riscv_load_store_rand_instr_stream_3
                  sub          s2, a7, a3
                  sll          s7, s3, gp
                  sll          s10, s4, s1
                  bltu         t0, s3, 1969f
                  srl          s4, a2, s0
                  slti         a2, s11, 1756
                  sltu         a1, tp, s4
                  lui          a1, 991287
                  auipc        t3, 1035560
                  xori         a6, s0, 1086
                  slli         s11, s1, 1
                  slli         s11, t6, 18
                  slt          tp, s2, s11
1964:             add          gp, a5, a7
                  sub          s8, t6, t5
                  sltiu        sp, t6, -117
                  xori         s9, s5, 426
                  slt          t1, t0, s7
1969:             blt          s9, gp, 1986f
                  sll          a6, a0, gp
                  beq          s2, a6, 1988f
                  sll          s8, t0, s9
                  srli         s4, s4, 14
                  blt          s1, s4, 1982f
                  bne          s4, t1, 1989f
                  auipc        s7, 805750
                  sub          t0, t2, zero
                  srli         s2, t5, 15
                  slti         t0, s11, 1958
                  nop
                  beq          s11, s11, 1991f
1982:             bne          a2, t5, 1987f
                  addi         s9, sp, 90
                  addi         s10, zero, 1293
                  sub          gp, a5, s6
1986:             sltiu        s1, tp, -736
1987:             ori          s0, s8, -1210
1988:             sll          s7, t5, s8
1989:             sra          s7, s7, a2
                  blt          s3, s8, 2008f
1991:             sltiu        gp, t4, 1206
                  sltiu        gp, s1, -1711
                  and          gp, t0, a0
                  bne          s8, t1, 2011f
                  bge          a6, t1, 1998f
                  andi         a0, s8, -1334
                  addi         t1, s1, -96
1998:             and          a3, s10, s1
                  srl          s10, a3, s8
                  slt          s7, t1, s10
                  addi         a5, a7, 1646
                  or           s8, s7, t2
                  ori          s4, t2, -1837
                  nop
                  sra          s7, a0, s1
                  nop
                  andi         s11, s0, 1977
2008:             slti         s10, a4, 445
                  auipc        sp, 226245
                  sra          t1, a6, s5
2011:             srl          a4, a2, a2
                  nop
                  addi         a5, sp, -118
                  sltiu        s2, s0, 1771
                  blt          t0, sp, 2033f
                  xor          s6, s5, gp
                  sub          tp, s6, a0
                  sra          s6, s4, a7
                  nop
                  srli         s4, s2, 15
                  sltiu        a3, s11, -1123
                  andi         s5, t6, -771
                  slt          ra, s3, tp
                  sra          s6, t4, zero
                  srli         gp, ra, 10
                  slt          s1, zero, s11
                  ori          ra, a5, -1744
                  sltiu        s10, s6, 252
                  bltu         tp, a1, 2031f
                  srai         a2, a1, 4
2031:             and          a1, s7, a4
                  lui          s2, 1013456
2033:             srli         a2, a4, 21
                  or           a3, sp, tp
                  slli         s0, a7, 10
                  xori         tp, t0, 1530
                  addi         s9, a5, -40
                  slt          s5, a0, t5
                  add          s1, s1, t5
                  addi         s4, s2, -637
                  bne          s4, a3, 2049f
                  sub          ra, s1, t5
                  lui          s6, 629397
                  bltu         t0, a7, 2050f
                  srai         s5, t6, 30
                  and          t1, s6, s6
                  lui          a2, 193364
                  xori         s0, t4, -1457
2049:             sltu         t0, a0, s7
2050:             nop
                  lui          s5, 280279
                  sltu         zero, s2, t0
                  beq          s5, t2, 2055f
                  sra          a6, a4, a0
2055:             slt          gp, a1, tp
                  bne          s1, t4, 2063f
                  slti         s9, s2, 182
                  beq          s3, s1, 2078f
                  or           s2, t1, a2
                  bne          a0, s10, 2077f
                  bltu         gp, a3, 2064f
                  srai         s10, sp, 22
2063:             sra          s4, t0, t1
2064:             srli         s2, s10, 16
                  nop
                  xori         s0, sp, 1124
                  add          t2, a0, zero
                  add          sp, t5, gp
                  add          zero, s3, s2
                  xori         ra, a1, 1937
                  sltiu        gp, s6, -467
                  ori          a0, s1, -323
                  bgeu         tp, gp, 2080f
                  or           zero, t0, zero
                  addi         s0, t6, 851
                  add          a0, a4, s0
2077:             blt          s7, s10, 2097f
2078:             lui          s9, 64319
                  auipc        a4, 630895
2080:             srl          s0, s3, a4
                  auipc        t6, 1046575
                  add          sp, a1, t0
                  and          s2, t1, a1
                  srli         t0, s8, 21
                  slti         s2, s6, 772
                  slli         s0, s3, 25
                  nop
                  addi         a3, s11, -518
                  xori         s6, sp, -56
                  xori         t1, tp, 1014
                  sltu         s4, s2, s9
                  srai         a0, s8, 9
                  sra          s2, zero, t5
                  beq          s2, s7, 2104f
                  ori          a2, t2, 813
                  xor          s5, t0, s6
2097:             bgeu         s0, ra, 2109f
                  srli         a3, s11, 7
                  bltu         a6, t2, 2106f
                  lui          s6, 881949
                  lui          a4, 449712
                  add          a6, s0, s5
                  sub          s9, t6, a7
2104:             xori         ra, a1, -1829
                  srli         s8, s4, 11
2106:             slli         ra, t1, 8
                  addi         t5, t3, -990
                  bne          s9, s8, 2127f
2109:             bne          s4, t2, 2124f
                  andi         s6, sp, -1416
                  auipc        s0, 892928
                  nop
                  xor          s1, tp, s7
                  srli         a6, gp, 20
                  bge          s0, s2, 2124f
                  bgeu         t1, gp, 2130f
                  lui          a2, 176902
                  nop
                  slt          a5, a0, s5
                  slti         t1, t2, 1665
                  bgeu         s10, s11, 2125f
                  add          s7, t2, t4
                  xor          t5, s10, s2
2124:             slli         s7, s8, 15
2125:             andi         s6, t5, -1702
                  slt          a5, a5, a6
2127:             xori         t5, a5, 1009
                  xori         s1, a1, -2028
                  slli         t5, a3, 17
2130:             srai         a2, s9, 6
                  sltiu        s11, t1, -1320
                  bgeu         s2, a0, 2150f
                  sltu         s8, ra, s4
                  slti         a3, a6, 1053
                  lui          s11, 169503
                  slti         t3, a5, -1931
                  blt          s3, s10, 2142f
                  bltu         s10, t5, 2155f
                  srl          t6, s6, t6
                  sltiu        t0, s6, -840
                  auipc        sp, 624232
2142:             auipc        t0, 533246
                  and          s11, tp, a7
                  bgeu         zero, s11, 2162f
                  bge          a7, t5, 2152f
                  slti         t6, s4, -373
                  slt          a0, a7, s3
                  and          a3, gp, a6
                  slti         t3, s4, 1083
2150:             sltu         a2, s0, a0
                  bne          t1, t3, 2166f
2152:             bgeu         tp, s7, 2159f
                  beq          zero, t1, 2160f
                  or           s6, t0, a1
2155:             xori         s4, gp, -1908
                  sltiu        s0, gp, -261
                  and          a2, s7, a2
                  bgeu         s10, t2, 2178f
2159:             ori          t3, t4, 1868
2160:             auipc        s1, 315487
                  and          s6, t0, s9
2162:             nop
                  beq          t0, s8, 2169f
                  xori         s2, a1, -619
                  nop
2166:             and          s8, zero, s11
                  and          a6, s1, tp
                  sll          a5, t4, s5
2169:             bgeu         t1, ra, 2172f
                  bltu         s0, s1, 2184f
                  and          s4, s9, a2
2172:             sub          s9, t4, s1
                  addi         zero, a6, 103
                  srli         tp, a6, 1
                  sll          a0, s7, a1
                  andi         tp, s1, 1519
                  srli         a2, a7, 23
2178:             bltu         s0, t0, 2188f
                  auipc        tp, 237758
                  bge          a5, s3, 2197f
                  auipc        t3, 494614
                  auipc        s11, 759239
                  bltu         a5, a6, 2203f
2184:             bgeu         s1, t2, 2198f
                  bgeu         t4, s10, 2203f
                  slti         t1, s4, 794
                  xori         s0, gp, -1477
2188:             srl          t2, gp, t3
                  bgeu         s5, s0, 2193f
                  sra          t3, ra, s0
                  bne          s11, sp, 2199f
                  slli         s9, a7, 6
2193:             or           s10, a5, a3
                  andi         s2, zero, -1483
                  srl          t0, gp, a1
                  beq          s2, t5, 2198f
2197:             slti         s9, s3, -1190
2198:             blt          t4, s10, 2217f
2199:             xori         t1, a1, -707
                  add          t5, s4, s3
                  xori         t2, s8, -138
                  andi         sp, zero, 309
2203:             or           t5, s9, zero
                  slt          a6, s5, t4
                  add          t1, a4, s5
                  xor          a3, a2, ra
                  xor          s11, s8, a7
                  sll          t5, t5, a6
                  addi         a0, a6, 1855
                  bltu         t0, t0, 2218f
                  sll          a1, sp, a1
                  auipc        s5, 582209
                  bne          t0, t3, 2216f
                  sltiu        t2, ra, -500
                  auipc        s11, 235057
2216:             sll          a4, s1, t2
2217:             sub          a3, s8, s6
2218:             and          t5, a2, gp
                  slli         a1, s3, 17
                  addi         s4, s3, -458
                  xor          a0, s3, t0
                  srai         a5, a6, 22
                  bltu         t3, t2, 2235f
                  blt          tp, a6, 2229f
                  sra          s1, a2, a1
                  bne          t3, s8, 2235f
                  and          s5, s7, t6
                  add          a6, t6, tp
2229:             andi         s5, t2, 1123
                  add          a0, t6, a3
                  bltu         a7, t0, 2241f
                  xori         t3, a3, 867
                  bne          s1, t1, 2250f
                  sra          s1, sp, a5
2235:             lui          s9, 721761
                  addi         s7, s0, 704
                  sll          a0, a5, a5
                  xor          a1, t5, s0
                  add          s2, s0, s6
                  add          a5, a0, s8
2241:             xori         a2, s2, -2003
                  slt          a3, sp, a0
                  bgeu         a0, s1, 2260f
                  slli         zero, s6, 18
                  xori         s11, s6, -767
                  ori          a1, a5, 1955
                  auipc        ra, 445212
                  ori          t1, s8, -621
                  slt          s6, s10, s6
2250:             slli         s4, s4, 8
                  add          zero, a3, t5
                  xori         gp, t6, -1241
                  sll          s2, s11, t2
                  beq          ra, a2, 2256f
                  and          a3, s6, tp
2256:             xori         s4, a7, -1231
                  srai         s6, t5, 1
                  srai         s10, s10, 4
                  sra          t3, s6, t1
2260:             beq          a2, s3, 2278f
                  ori          s5, a3, 294
                  bltu         s7, t2, 2267f
                  nop
                  slti         a0, s11, 896
                  bge          t0, s1, 2273f
                  bne          s3, t5, 2284f
2267:             bge          s5, t6, 2271f
                  blt          t0, a2, 2275f
                  sltu         s9, tp, t6
                  and          t6, s2, sp
2271:             bge          a4, t3, 2281f
                  srli         s6, tp, 1
2273:             bltu         t3, zero, 2279f
                  lui          s11, 197501
2275:             auipc        ra, 379911
                  auipc        a2, 442638
                  addi         s9, s3, 1171
2278:             bge          t3, t5, 2286f
2279:             slt          a1, gp, s2
                  addi         a4, sp, 726
2281:             srli         a6, s11, 19
                  andi         a5, sp, -1198
                  and          s6, a3, t5
2284:             xor          a5, sp, ra
                  sub          gp, gp, s10
2286:             auipc        a6, 701119
                  bne          s7, t4, 2289f
                  bne          t6, t5, 2307f
2289:             slli         ra, zero, 11
                  andi         s9, s4, -1902
                  slli         a4, gp, 14
                  bge          t3, s4, 2312f
                  xor          a1, s3, zero
                  srl          s2, t3, a2
                  srai         t1, s1, 0
                  sll          ra, t2, s0
                  srai         s4, t1, 1
                  andi         sp, tp, 1634
                  bgeu         s4, a3, 2309f
                  sub          s4, s0, sp
                  bltu         s2, s2, 2318f
                  bne          tp, s5, 2304f
                  bgeu         s9, a3, 2308f
2304:             and          s8, s11, a3
                  bgeu         tp, s2, 2325f
                  nop
2307:             add          s7, a5, t4
2308:             sll          ra, s8, a0
2309:             srai         a0, t4, 19
                  xori         s7, a1, 200
                  bne          s7, a4, 2318f
2312:             add          a6, t5, t0
                  xor          s6, s8, t0
                  sll          sp, s8, ra
                  slli         a2, a4, 24
                  sub          t2, a7, sp
                  srl          t6, zero, a0
2318:             xor          a1, s0, s9
                  srli         zero, zero, 8
                  sra          s8, s4, a4
                  and          s7, a7, a1
                  slt          s1, gp, s10
                  ori          sp, a4, 1475
                  ori          s2, s3, -266
2325:             bgeu         t3, t6, 2339f
                  slt          s2, s4, s6
                  srai         a2, t1, 23
                  and          tp, t1, a5
                  add          a1, a3, zero
                  sra          a4, a0, s1
                  xor          a4, s6, s8
                  ori          ra, ra, 1205
                  xori         t6, t5, 1534
                  bge          a3, a1, 2351f
                  addi         a3, t4, -432
                  bltu         s9, s3, 2354f
                  ori          s8, a4, -854
                  blt          a6, sp, 2341f
2339:             nop
                  sra          a5, t2, s7
2341:             beq          a3, s8, 2358f
                  slt          a5, s10, ra
                  slli         t6, a3, 19
                  slli         s4, s5, 0
                  auipc        a1, 388271
                  addi         gp, s7, 564
                  srl          s7, t1, t1
                  lui          ra, 860306
                  xori         ra, sp, 1186
                  slti         a3, a5, 1602
2351:             auipc        t0, 300044
                  add          tp, a0, a3
                  and          t3, s6, gp
2354:             slt          t3, s5, t0
                  bge          a5, s2, 2364f
                  slli         t0, s10, 31
                  xor          t3, a6, t2
2358:             bne          s7, t4, 2361f
                  andi         t3, s10, 1793
                  srli         s0, a4, 27
2361:             slti         ra, a6, -889
                  auipc        s9, 321577
                  srl          s11, s10, s10
2364:             sltu         s0, s10, a2
                  srai         ra, sp, 23
                  beq          t2, s6, 2380f
                  auipc        t1, 91857
                  bge          s10, a3, 2383f
                  and          s5, s10, s7
                  srl          s11, t6, t5
                  sub          a3, a7, a4
                  slti         t6, t5, 1506
                  lui          t1, 812654
                  beq          s3, sp, 2392f
                  la           sp, region_0+100 #start riscv_load_store_rand_instr_stream_8
                  ori          a4, s5, -887
                  lbu          s8, 1258(sp)
                  ori          s10, a3, 749
                  xori         a4, a6, 424
                  andi         s5, a6, -483
                  sra          s7, s10, s3
                  lbu          t6, 350(sp)
                  lb           s6, 1051(sp)
                  sltiu        s10, t4, -1054
                  lbu          s7, 19(sp)
                  xori         s2, s1, 1114
                  srli         a4, a3, 29
                  lb           s9, 1511(sp)
                  xori         ra, s9, 99
                  sra          s5, a4, a7
                  auipc        s8, 508558
                  andi         gp, a5, -1065
                  lhu          t2, 964(sp)
                  sb           a4, 217(sp)
                  lw           s11, 984(sp)
                  add          s4, t2, ra
                  lb           t6, 1599(sp)
                  andi         t5, t3, 1208
                  lui          gp, 268449
                  lbu          t6, 1601(sp)
                  lh           a2, 1156(sp)
                  nop
                  lb           s1, 1272(sp)
                  sb           s4, 1045(sp)
                  ori          a1, s1, -865
                  and          gp, s0, s9
                  sh           a6, 786(sp)
                  lb           s1, 1177(sp)
                  xor          zero, s3, s4
                  lhu          ra, 1528(sp)
                  sb           sp, 7(sp)
                  auipc        s9, 19294
                  lb           t3, 559(sp)
                  addi         t1, t2, -1996
                  lui          t2, 806416
                  lh           s0, 628(sp)
                  nop
                  lh           t3, 1824(sp) #end riscv_load_store_rand_instr_stream_8
                  srli         a5, s11, 7
                  sll          a5, a4, s2
                  xori         s0, s10, 1707
                  add          t3, s11, s4
                  srl          s2, t2, sp
2380:             blt          t3, ra, 2385f
                  slt          s10, gp, t4
                  andi         s6, t5, 1754
2383:             bne          t5, s2, 2400f
                  lui          t6, 739677
2385:             andi         s8, s10, 1494
                  slli         s1, t0, 22
                  nop
                  bltu         s9, s7, 2400f
                  sltu         sp, s0, t3
                  srli         t3, zero, 1
                  bltu         a7, s8, 2398f
2392:             sub          gp, t2, s4
                  ori          s7, t4, 1331
                  add          tp, a2, s8
                  sub          ra, a1, t3
                  slti         a5, s8, 255
                  xori         s11, zero, -847
2398:             slt          t6, ra, s3
                  srl          sp, s1, a6
2400:             lui          s2, 649228
                  beq          sp, t3, 2420f
                  srl          t3, gp, s7
                  nop
                  srli         t5, s2, 16
                  srai         s0, t1, 0
                  nop
                  blt          t2, s8, 2425f
                  addi         t2, t5, 84
                  lui          s8, 514369
                  sub          t5, s5, s3
                  lui          s11, 1007397
                  or           s7, a7, sp
                  slli         a5, a5, 29
                  and          a0, s3, a0
                  auipc        tp, 396943
                  or           zero, s3, sp
                  bltu         s5, s9, 2424f
                  andi         t3, a0, -95
                  nop
2420:             ori          a5, gp, -882
                  andi         s6, s11, 799
                  sll          zero, t5, s9
                  and          s4, a1, t3
2424:             sub          a6, s0, t3
2425:             add          gp, s10, a4
                  sub          s6, s9, s11
                  add          a5, s9, gp
                  bne          t3, a4, 2445f
                  nop
                  andi         s2, t2, 1753
                  xor          a6, t1, a4
                  bgeu         t4, s11, 2437f
                  sub          s11, t2, t1
                  srai         t6, a0, 14
                  srai         a2, a3, 2
                  auipc        s5, 109246
2437:             sub          a1, s2, s9
                  srai         t6, a3, 25
                  or           s0, t4, gp
                  andi         s7, a4, 307
                  xor          s10, a0, t6
                  xor          s0, s4, t0
                  lui          s4, 1048071
                  sltiu        sp, a7, 297
2445:             andi         s8, s6, 812
                  and          a5, t2, s1
                  lui          s7, 951830
                  sll          s7, s6, t1
                  srai         a6, s10, 20
                  bne          a2, s8, 2453f
                  srai         t0, ra, 23
                  slt          s1, s7, t0
2453:             sll          t2, zero, a7
                  srl          s4, a7, s2
                  sll          s11, a2, s10
                  add          a2, s10, s3
                  slt          a1, a0, s11
                  slli         s1, sp, 29
                  xori         ra, s0, 1460
                  sltiu        s10, a2, 977
                  sub          t5, s8, s11
                  beq          a1, t2, 2469f
                  sll          s1, a2, s2
                  srli         t6, gp, 9
                  sltiu        s1, s8, -1318
                  xor          t6, s7, a0
                  slti         s8, t6, 1449
                  sra          s6, s9, a4
2469:             sll          t3, t0, s10
                  beq          t2, t4, 2479f
                  blt          t1, s0, 2486f
                  sub          s9, t4, t4
                  nop
                  srai         t3, gp, 25
                  sra          sp, sp, t2
                  and          a4, t5, s3
                  bltu         s4, sp, 2497f
                  srl          a0, a0, s1
2479:             bltu         gp, s1, 2497f
                  sub          a1, a0, zero
                  and          a1, t2, a6
                  sra          zero, s0, t1
                  xori         gp, t6, -254
                  sltiu        a2, s10, -1499
                  slti         t5, tp, -1836
2486:             xor          s2, s3, a4
                  addi         a2, s8, -252
                  xori         gp, a0, 1000
                  or           a2, s4, s5
                  xor          a0, ra, ra
                  xor          t1, s9, s8
                  addi         a3, a1, -338
                  bge          t6, t5, 2503f
                  or           tp, s3, s2
                  xor          s8, s10, a0
                  xori         s8, s10, -1837
2497:             andi         s11, sp, -1876
                  bge          t2, a2, 2502f
                  xor          a0, a6, t1
                  xori         t0, s4, 211
                  bge          s6, s11, 2506f
2502:             bne          s1, s0, 2505f
2503:             or           a3, t6, a5
                  bgeu         s11, a3, 2521f
2505:             bgeu         t1, s9, 2511f
2506:             blt          t0, a6, 2520f
                  and          zero, s2, s3
                  sltu         a4, t0, s5
                  sltu         a2, s6, s3
                  andi         s10, t2, 1593
2511:             bltu         t1, a6, 2519f
                  auipc        a5, 242312
                  sra          sp, t1, s2
                  sub          s0, ra, s2
                  xor          tp, a4, a3
                  slli         a0, a0, 7
                  slli         s11, gp, 27
                  srl          s9, t0, s2
2519:             bltu         s1, t1, 2526f
2520:             bltu         s1, t0, 2537f
2521:             bne          s11, s2, 2538f
                  bltu         t2, zero, 2536f
                  blt          s8, t0, 2543f
                  slti         s11, a3, 1729
                  sra          s5, t5, s11
2526:             andi         t6, sp, 768
                  slli         t2, zero, 6
                  or           t2, t2, zero
                  srai         t3, s10, 16
                  nop
                  srl          t6, a6, s3
                  nop
                  or           t1, tp, t1
                  sra          a6, a7, s9
                  xor          a0, a3, ra
2536:             slt          t1, t5, a4
2537:             sll          sp, a7, s4
2538:             srli         tp, s5, 1
                  lui          s5, 46053
                  slti         a1, s8, 170
                  sltiu        s7, a7, -1122
                  slt          a1, a4, s6
2543:             lui          a3, 653792
                  sll          t2, ra, s11
                  slti         a5, s11, 918
                  and          s9, a0, s9
                  andi         sp, tp, -1556
                  nop
                  beq          gp, sp, 2567f
                  lui          ra, 315064
                  lui          a2, 511999
                  sltu         a6, s3, s0
                  and          s7, a5, t3
                  bne          s2, a3, 2564f
                  bne          t0, s1, 2557f
                  bge          a1, s11, 2568f
2557:             slli         s8, s6, 26
                  beq          t5, a0, 2560f
                  bne          a4, t0, 2567f
2560:             beq          s0, s10, 2568f
                  bne          s7, s1, 2569f
                  slli         s11, t3, 14
                  bltu         tp, a2, 2566f
2564:             xor          s10, gp, t1
                  sll          tp, t4, t1
2566:             srl          t3, s9, sp
2567:             sltiu        s2, sp, -594
2568:             slt          s8, s11, a7
2569:             sub          sp, t5, a6
                  sll          a5, a1, s10
                  slli         a3, a4, 2
                  nop
                  blt          t5, s2, 2590f
                  sll          gp, a3, a1
                  sltu         a6, t4, s0
                  slli         s0, tp, 9
                  sll          s6, s1, t3
                  srli         t0, a1, 18
                  sra          s4, s5, s6
                  slti         a1, sp, 1415
                  lui          a6, 789820
                  srl          t5, s11, a2
                  andi         sp, s7, 598
                  ori          s2, zero, 1421
                  srai         a5, t2, 7
                  slli         ra, s6, 11
                  slt          t5, t4, a6
                  auipc        t3, 192201
                  blt          a0, t0, 2596f
2590:             beq          a6, s11, 2593f
                  xori         tp, tp, 966
                  xori         t5, s0, 1316
2593:             blt          s5, s6, 2603f
                  sltu         a0, a0, t3
                  slt          s8, a2, s0
2596:             or           a3, t5, t4
                  srli         t2, s4, 24
                  andi         a3, a5, 1254
                  sltu         gp, s6, t6
                  andi         t5, a6, 287
                  sltu         tp, a1, s6
                  andi         t0, t1, 2005
2603:             ori          s7, s9, 2040
                  bne          a4, t3, 2623f
                  xori         t6, ra, 1923
                  addi         gp, t3, -1433
                  srl          s6, t2, s0
                  lui          s4, 577133
                  xori         t5, tp, -1459
                  xori         zero, t3, -1298
                  sll          s5, zero, s5
                  slli         s5, a7, 2
                  beq          t2, t1, 2625f
                  ori          s10, tp, -943
                  blt          s3, s3, 2620f
                  and          sp, t1, a7
                  xori         s2, s4, -1469
                  sltiu        a2, s0, 1113
                  nop
2620:             srli         t1, t1, 7
                  add          t0, s0, a3
                  blt          gp, s4, 2636f
2623:             auipc        a6, 53598
                  srli         gp, a5, 19
2625:             sltu         t1, sp, s1
                  blt          s10, s2, 2644f
                  addi         s11, t4, -1755
                  bne          sp, a3, 2638f
                  or           s11, ra, zero
                  bgeu         zero, t6, 2636f
                  bgeu         s3, t1, 2646f
                  beq          gp, s7, 2650f
                  sltu         s10, s7, a5
                  sra          sp, ra, s10
                  bgeu         tp, s3, 2642f
2636:             blt          sp, a7, 2640f
                  xori         s1, a1, 1080
2638:             auipc        s7, 626561
                  andi         t3, t3, -1320
2640:             xor          s0, tp, t2
                  xori         s8, tp, -1534
2642:             blt          ra, s0, 2644f
                  addi         tp, s10, 538
2644:             ori          t3, a6, 2035
                  sltu         a5, gp, s3
2646:             beq          s11, s8, 2663f
                  blt          s8, s9, 2656f
                  beq          s5, a2, 2653f
                  sub          a5, t2, s9
2650:             slli         t1, s9, 18
                  ori          tp, ra, 1327
                  bge          t6, s7, 2666f
2653:             beq          t2, tp, 2660f
                  bgeu         gp, a1, 2656f
                  xori         t2, t3, -1694
2656:             slli         s8, a3, 28
                  srl          ra, t0, a2
                  addi         s5, t2, 2006
                  sra          a1, ra, s4
2660:             sll          tp, a1, a3
                  sub          s0, tp, a0
                  sll          t0, t4, a2
2663:             nop
                  add          a2, s11, sp
                  sltiu        a2, s5, 606
2666:             srai         a1, tp, 30
                  blt          s1, s7, 2684f
                  slti         s8, s2, -591
                  bltu         t0, s4, 2686f
                  bgeu         gp, s1, 2690f
                  andi         s1, gp, -134
                  sltiu        zero, tp, -278
                  srl          a6, tp, t4
                  auipc        s4, 676271
                  sll          t5, s6, ra
                  bltu         s1, a4, 2694f
                  slt          s9, t2, t5
                  or           s7, s11, t6
                  and          s10, s4, s7
                  bge          a2, gp, 2700f
                  blt          s7, ra, 2691f
                  beq          tp, a3, 2699f
                  xor          a4, gp, s11
2684:             xori         tp, t2, 1193
                  sltiu        s11, a2, -340
2686:             addi         s5, a3, 366
                  add          s0, t4, zero
                  sltu         s5, s10, t0
                  ori          t0, t1, -62
2690:             slti         t1, s6, 535
2691:             srai         tp, a2, 12
                  andi         a5, zero, -50
                  sltiu        s11, s4, -669
2694:             sub          s4, s4, s2
                  slti         t5, t1, 400
                  bge          a1, s2, 2702f
                  ori          zero, a7, -2006
                  sra          s5, s3, s0
2699:             nop
2700:             add          t2, a5, a0
                  beq          s9, t6, 2711f
2702:             slti         s6, a5, -1791
                  slli         s11, t1, 14
                  or           gp, s3, zero
                  and          s2, s7, a0
                  nop
                  blt          s10, s0, 2719f
                  srl          tp, s9, sp
                  xori         s6, s5, -1988
                  sltiu        tp, gp, -503
2711:             blt          a2, a5, 2725f
                  srai         a5, t2, 30
                  sltiu        s4, a6, 1158
                  srai         s9, s1, 23
                  xori         s4, gp, -1243
                  lui          s1, 866674
                  and          t2, t4, t3
                  xor          a5, s0, s0
2719:             sub          gp, a7, tp
                  sll          s6, s3, s5
                  auipc        s0, 246101
                  sra          s8, a4, s9
                  xor          a0, s8, s3
                  and          sp, a4, s10
2725:             srl          s2, t3, s0
                  srl          a4, a0, s10
                  sra          s4, t2, a7
                  sll          s4, t2, s8
                  sll          sp, s3, s1
                  sltu         a6, s7, s4
                  sra          ra, t5, s1
                  srli         s2, gp, 3
                  or           t1, zero, t5
                  srai         s6, s5, 7
                  blt          t6, t4, 2744f
                  sra          s6, s11, a5
                  bgeu         s6, t3, 2739f
                  srl          zero, t3, a1
2739:             bge          a3, t5, 2742f
                  bltu         a0, t4, 2757f
                  andi         s10, a5, 1428
2742:             addi         t6, a7, 1374
                  addi         s2, s4, 195
2744:             lui          ra, 564202
                  blt          s0, a0, 2763f
                  bge          t2, s10, 2749f
                  srli         a3, a6, 14
                  sll          s10, zero, t2
2749:             beq          s3, t5, 2769f
                  nop
                  srl          t0, s9, s9
                  slt          s10, t1, s2
                  slli         t3, t0, 19
                  sra          s4, t5, tp
                  srli         a1, a2, 23
                  addi         a6, s8, 698
2757:             srli         s10, t2, 9
                  slti         sp, t3, 1507
                  srl          a1, sp, t1
                  sltiu        s0, s10, 510
                  or           s4, sp, a3
                  slli         s2, a6, 3
2763:             bge          ra, t6, 2782f
                  srl          s11, gp, a2
                  xor          t0, s10, s0
                  blt          s5, s9, 2771f
                  add          a3, s6, t6
                  slli         t6, gp, 6
2769:             xor          s0, a1, a2
                  add          t2, t3, s9
2771:             or           s6, zero, s2
                  add          a4, s5, ra
                  sltu         a4, a6, s0
                  srl          sp, t4, t5
                  beq          a7, t1, 2792f
                  bltu         t1, a5, 2778f
                  sll          s10, s1, t6
2778:             slti         a4, a2, -101
                  slli         a4, s3, 30
                  sltu         s7, a7, a2
                  xori         sp, s11, -1155
2782:             bgeu         s3, gp, 2789f
                  auipc        a5, 499078
                  add          s5, a0, s2
                  bne          a4, a5, 2789f
                  andi         s4, ra, 1381
                  srli         a2, s9, 0
                  sub          s6, a4, s3
2789:             nop
                  slti         tp, s4, -1954
                  ori          s1, a3, 1600
2792:             lui          a2, 936937
                  bge          t6, t2, 2801f
                  ori          t0, ra, -301
                  sub          t0, s7, t4
                  xori         ra, a2, -309
                  auipc        a0, 267079
                  or           s10, a2, t3
                  or           ra, t5, s8
                  slti         a3, a4, -92
2801:             sra          t2, s7, s6
                  slli         s7, s10, 12
                  srai         s11, a6, 28
                  beq          s0, s1, 2809f
                  bgeu         t0, t6, 2820f
                  lui          s6, 439656
                  sra          t3, a7, s1
                  sub          t3, a5, s1
2809:             ori          s1, gp, 280
                  srli         a5, s6, 3
                  bne          t3, s11, 2825f
                  bne          t1, t1, 2819f
                  nop
                  lui          gp, 268073
                  andi         zero, sp, 474
                  bne          s6, a4, 2824f
                  auipc        gp, 1035632
                  sra          s6, t2, s3
2819:             slti         s10, ra, -1511
2820:             and          s11, ra, s5
                  bltu         a6, a4, 2838f
                  sltiu        s6, s1, -1219
                  andi         s2, s0, 1346
2824:             srai         s8, a5, 25
2825:             or           zero, tp, sp
                  bltu         s0, t5, 2844f
                  xor          a5, s10, s4
                  nop
                  srai         gp, a2, 25
                  slli         a5, s8, 18
                  and          s5, a0, s6
                  srli         t5, s9, 7
                  srai         s8, s10, 8
                  andi         s2, a7, 1929
                  bge          a2, t5, 2842f
                  ori          t1, sp, -1996
                  andi         t6, t4, 69
2838:             or           s10, a4, s5
                  sltu         s1, ra, s2
                  ori          zero, a6, 1198
                  xori         gp, s10, -1349
2842:             xori         s4, sp, -1879
                  sltu         s1, t3, a0
2844:             sub          sp, t5, zero
                  sra          sp, s1, s2
                  sltu         s0, s0, t1
                  lui          t6, 307149
                  bne          s11, a1, 2866f
                  ori          s8, a2, -1101
                  lui          ra, 702913
                  sll          s7, ra, a2
                  srai         t3, a2, 30
                  xori         a3, s2, -1001
                  srl          a5, s8, a7
                  bgeu         t5, s10, 2875f
                  add          s2, a6, a1
                  auipc        tp, 466579
                  auipc        s8, 269282
                  and          s11, t2, s6
                  sub          a1, a1, sp
                  sra          a6, s11, t4
                  bne          tp, s0, 2869f
                  ori          s11, a3, -1408
                  bgeu         sp, s5, 2869f
                  auipc        t0, 1008018
2866:             sll          ra, s9, t2
                  sltu         a1, s3, s5
                  bne          s2, a6, 2878f
2869:             beq          t2, s4, 2887f
                  add          t3, zero, t0
                  xori         t3, t5, -273
                  sra          t5, a4, s3
                  nop
                  and          s10, a1, a3
2875:             add          s7, t5, s11
                  add          s0, gp, sp
                  nop
2878:             bne          ra, s5, 2883f
                  addi         t0, t1, -179
                  or           a1, s5, s1
                  sub          s2, s2, s7
                  xor          s7, s3, s1
2883:             slti         s8, s0, 544
                  and          s0, s9, s4
                  srli         s11, t6, 18
                  srai         gp, a4, 1
2887:             sra          a0, s2, a4
                  beq          s4, zero, 2894f
                  lui          t5, 549089
                  ori          s2, t4, -511
                  lui          s8, 253620
                  andi         s9, gp, -287
                  bge          t3, a5, 2911f
2894:             sub          a4, tp, s9
                  ori          s2, tp, -758
                  ori          t1, s5, 887
                  bge          s0, a3, 2906f
                  addi         s9, zero, -94
                  blt          a0, a7, 2916f
                  slti         t1, t6, 839
                  auipc        sp, 60455
                  srai         a6, zero, 29
                  andi         t2, s10, 448
                  sll          t6, a6, s7
                  nop
2906:             andi         s2, a1, 985
                  auipc        a4, 969975
                  add          a3, a6, a3
                  and          ra, gp, s2
                  srai         a2, t1, 5
2911:             beq          s4, s5, 2928f
                  ori          s9, t6, 635
                  srli         s5, a7, 24
                  slt          ra, a1, ra
                  or           s10, t1, a1
2916:             srai         t0, t1, 8
                  sltu         s0, s7, t2
                  sltiu        s8, a6, 917
                  sub          a5, s6, s1
                  srl          s5, a4, t0
                  slti         a5, s10, -880
                  sltu         t6, s4, t6
                  sra          t2, s9, zero
                  sub          a3, s8, a0
                  andi         ra, a3, -776
                  xor          tp, s3, s0
                  sll          a4, t6, a5
2928:             or           s10, a6, t2
                  sltiu        s10, a4, 776
                  add          t2, ra, a7
                  ori          s6, s6, 811
                  bge          s2, s2, 2934f
                  and          t2, s2, a0
2934:             add          t3, a4, t3
                  srli         t1, s9, 30
                  auipc        a2, 398433
                  nop
                  auipc        s1, 844968
                  slt          a2, t0, a5
                  sll          sp, s5, sp
                  and          t1, s3, a5
                  bgeu         a1, s9, 2946f
                  ori          t3, t6, 681
                  bge          s6, s6, 2961f
                  blt          zero, sp, 2953f
2946:             srli         gp, t0, 24
                  lui          t3, 794015
                  andi         gp, a6, -909
                  bne          a4, a3, 2956f
                  sra          t5, s7, s0
                  bne          t6, a6, 2954f
                  srai         t6, s7, 26
2953:             sll          s5, t5, s10
2954:             sltu         t5, s0, a5
                  xori         s2, s11, -1411
2956:             or           a1, a4, t1
                  sltiu        a6, s1, -37
                  srai         gp, t0, 10
                  srl          s6, s8, a0
                  auipc        s2, 90677
2961:             bge          sp, s7, 2978f
                  srai         t6, s5, 23
                  sra          s11, s3, a7
                  andi         s0, s0, -1020
                  bltu         t3, s0, 2973f
                  addi         a3, s3, 2028
                  sll          t3, a4, tp
                  beq          t3, a7, 2978f
                  and          a3, t6, s11
                  sub          a2, s1, t6
                  auipc        t0, 423796
                  sll          a1, s7, t5
2973:             addi         t2, s8, 362
                  sll          s9, a3, a7
                  bltu         s3, s6, 2994f
                  slt          s4, s11, s6
                  and          s10, s5, s0
2978:             sltiu        s9, ra, -1019
                  nop
                  srl          s1, s8, s7
                  slti         a6, t5, -1934
                  add          a1, s4, t3
                  nop
                  nop
                  sub          ra, s11, t4
                  sub          a3, s0, t3
                  sub          s6, a1, a4
                  slt          sp, t3, t3
                  bgeu         t2, a1, 3007f
                  or           s10, tp, s6
                  bgeu         a6, a2, 3006f
                  lui          s6, 709155
                  srli         t5, a4, 1
2994:             sub          a1, a2, s10
                  nop
                  sltu         s10, a5, s4
                  or           t3, t0, t1
                  sub          a0, zero, s3
                  andi         t1, a5, 1355
                  srai         sp, a7, 1
                  andi         s4, a5, -1411
                  sra          zero, s9, tp
                  xori         a4, s6, 805
                  ori          s2, s9, 1015
                  xori         t1, a7, 1854
3006:             srli         a4, s3, 1
3007:             srli         a1, t6, 19
                  and          a5, t1, s2
                  sltiu        a3, t4, 505
                  srai         gp, sp, 10
                  bne          sp, s9, 3014f
                  srai         t3, s2, 20
                  add          s2, t6, s0
3014:             bne          s8, ra, 3034f
                  auipc        s9, 77676
                  nop
                  blt          t1, a0, 3019f
                  srli         s9, s5, 16
3019:             srli         a1, a6, 26
                  beq          s3, t0, 3034f
                  add          a6, ra, a4
                  addi         s4, a7, -903
                  sub          s9, t1, a0
                  or           s4, s2, ra
                  add          a2, s8, t0
                  and          s11, t3, t6
                  srli         s2, s1, 3
                  sll          t0, s1, gp
                  or           s11, s9, a1
                  xori         a1, s0, -1165
                  nop
                  sll          t2, a4, a1
                  srl          a6, a4, s10
3034:             srl          s8, s9, s10
                  bltu         a6, s3, 3049f
                  and          zero, s9, t3
                  blt          a0, a6, 3049f
                  slt          s8, s2, s4
                  or           s2, a2, gp
                  sltiu        a3, a4, 619
                  bne          a2, t0, 3061f
                  sub          a4, tp, s6
                  sll          s8, s0, a3
                  add          t2, s0, gp
                  sub          gp, s8, t4
                  addi         gp, a0, 1318
                  xor          a2, s11, s4
                  lui          s7, 374285
3049:             srl          s0, a6, sp
                  slli         t3, s0, 9
                  blt          s5, ra, 3058f
                  srli         s10, s4, 0
                  srl          a5, s0, s8
                  bltu         a3, a1, 3063f
                  beq          a3, s1, 3057f
                  auipc        sp, 209492
3057:             sra          s6, s5, s5
3058:             bne          ra, s9, 3073f
                  add          s2, t6, a3
                  slti         a2, a0, -1120
3061:             slti         t5, a4, -1660
                  nop
3063:             srl          s7, t6, a3
                  sltu         t2, a6, a6
                  slt          t3, a1, s3
                  srli         tp, ra, 24
                  sll          a2, sp, t1
                  andi         a2, a1, 789
                  srai         s11, a5, 9
                  beq          t4, s1, 3087f
                  or           s0, a3, s10
                  slti         t3, s0, 1946
3073:             srai         a1, s7, 31
                  lui          s0, 138735
                  ori          t3, ra, 1674
                  beq          s2, a5, 3083f
                  slti         t5, t4, -791
                  xor          s1, a6, s1
                  xori         s9, s3, -1799
                  bltu         s3, s7, 3087f
                  bltu         a0, a1, 3085f
                  blt          s7, s0, 3087f
3083:             ori          s0, t4, 1900
                  bgeu         s11, s11, 3098f
3085:             slli         a4, tp, 14
                  sll          s9, a4, s8
3087:             sub          a0, s4, a0
                  bne          gp, s11, 3096f
                  nop
                  slli         s4, zero, 27
                  sll          a5, s6, a6
                  andi         s11, t0, 1562
                  sltu         s0, s0, t1
                  sra          tp, zero, t3
                  bgeu         t3, tp, 3105f
3096:             bltu         t0, t6, 3114f
                  andi         s11, a0, -794
3098:             srli         a6, t5, 29
                  blt          a0, a3, 3118f
                  xori         a6, ra, -1977
                  addi         s0, s4, 357
                  sll          a1, a6, t0
                  sub          s1, s10, a4
                  or           s10, t5, zero
3105:             srli         a1, t6, 19
                  srli         a6, zero, 14
                  blt          t1, a2, 3110f
                  srli         s6, tp, 13
                  xor          a1, s2, s1
3110:             sra          s0, t2, a1
                  xori         sp, t4, 2046
                  blt          ra, s9, 3119f
                  bltu         sp, s5, 3121f
3114:             beq          s10, t1, 3132f
                  srai         s7, s4, 19
                  bgeu         gp, tp, 3121f
                  lui          s6, 1011542
3118:             srli         t0, gp, 3
3119:             beq          a1, s4, 3121f
                  blt          sp, t4, 3126f
3121:             sll          s9, s10, t2
                  and          s0, a3, s2
                  srai         tp, s4, 28
                  lui          tp, 542417
                  and          t0, a0, s3
3126:             srli         t5, s8, 1
                  add          zero, t1, t4
                  srl          t1, t4, t3
                  srl          a1, ra, zero
                  slli         a5, ra, 30
                  xori         s4, t0, 1102
3132:             sub          s10, gp, s0
                  andi         s7, s2, 1586
                  sltu         s8, a2, s6
                  lui          s4, 8868
                  slt          s2, tp, t1
                  srl          s6, a2, t5
                  andi         a6, ra, 1814
                  blt          a3, s6, 3157f
                  sltu         s6, t5, a1
                  slli         s11, s11, 29
                  bge          t0, t2, 3162f
                  xor          s10, s0, s3
                  ori          a4, tp, -2028
                  srl          s5, s4, s10
                  bltu         ra, s8, 3149f
                  srli         s9, s10, 6
                  ori          s5, s6, -1968
3149:             ori          t0, t4, 879
                  srli         s0, s9, 10
                  slti         t0, s7, 396
                  or           t3, ra, t1
                  slli         s4, a2, 8
                  beq          s8, s0, 3168f
                  beq          zero, s0, 3172f
                  sub          a1, s6, s3
3157:             beq          s11, s4, 3174f
                  add          ra, s6, a2
                  and          a2, sp, t5
                  add          zero, a3, s4
                  add          s4, gp, s4
3162:             and          a5, t6, s7
                  sll          a1, t0, s3
                  ori          s8, a4, -543
                  srli         a4, t4, 29
                  andi         s1, s3, 99
                  bgeu         ra, a6, 3184f
3168:             or           s1, a4, s3
                  srli         a3, ra, 2
                  or           t0, a2, s11
                  ori          t2, sp, -444
3172:             ori          a0, a3, 1300
                  ori          s11, t6, -1884
3174:             srl          s7, a0, s5
                  sra          t3, tp, a1
                  bge          t2, t3, 3196f
                  and          s6, s7, t4
                  ori          s5, s1, 376
                  srli         a5, s4, 2
                  andi         s8, a3, -2031
                  beq          tp, s9, 3191f
                  blt          t6, s0, 3194f
                  ori          s8, a4, -1327
3184:             sltu         t3, s3, s5
                  srli         a5, s1, 29
                  or           a4, tp, a1
                  bne          t6, s5, 3204f
                  sra          t0, gp, s3
                  nop
                  ori          s1, s6, 903
3191:             sltiu        a2, s3, -883
                  nop
                  srli         ra, a1, 7
3194:             xor          t1, gp, s5
                  bge          tp, s8, 3209f
3196:             srli         s9, s8, 10
                  addi         s7, s7, 2044
                  xori         s6, s1, -288
                  sub          gp, t5, s4
                  blt          t5, s2, 3210f
                  nop
                  slli         t6, t2, 0
                  ori          s4, s2, 177
3204:             sltu         a6, s8, s11
                  nop
                  bgeu         a2, t6, 3223f
                  bge          t1, a3, 3214f
                  sltiu        sp, s3, -1366
3209:             srli         a1, sp, 30
3210:             slli         t6, a6, 18
                  sra          tp, a2, s9
                  and          s4, s3, a4
                  nop
3214:             bgeu         t5, s1, 3234f
                  sll          sp, s0, a1
                  sltiu        a3, s10, -1332
                  sltu         s11, a1, zero
                  auipc        t6, 414019
                  slti         gp, s7, -1006
                  xori         s4, s6, 719
                  xor          a2, s9, s6
                  add          a1, s3, a4
3223:             or           sp, s5, t5
                  bltu         s2, a0, 3230f
                  bne          s0, s5, 3237f
                  slti         s7, gp, -588
                  xor          t0, t2, s1
                  bne          s11, a0, 3233f
                  bgeu         a5, t2, 3246f
3230:             auipc        a0, 445882
                  bne          a4, a7, 3233f
                  sltu         t6, a1, s10
3233:             ori          a4, s9, 1917
3234:             bne          a7, s6, 3249f
                  auipc        a2, 452062
                  xor          s4, t2, tp
3237:             sltiu        a5, sp, 1327
                  beq          a4, zero, 3240f
                  bgeu         t5, s7, 3257f
3240:             srai         s2, s3, 25
                  sltiu        s5, s8, 1779
                  or           ra, gp, s9
                  sll          s10, t2, s7
                  srli         a0, s9, 14
                  nop
3246:             lui          a2, 324727
                  beq          s6, a2, 3265f
                  xor          zero, s0, s9
3249:             bltu         a2, t4, 3257f
                  lui          zero, 618775
                  sra          a5, t1, t0
                  nop
                  or           t2, t5, s3
                  ori          tp, t1, 441
                  slt          t0, s5, a4
                  add          s0, t5, t0
3257:             bge          s9, a1, 3275f
                  or           a5, tp, t5
                  bne          a1, a1, 3262f
                  sltiu        t1, s8, -707
                  bltu         s0, t2, 3269f
3262:             blt          s5, t0, 3281f
                  add          a4, s7, s9
                  blt          s7, a5, 3281f
3265:             addi         s0, s11, -282
                  andi         s2, s2, -224
                  sll          a0, t3, t0
                  slt          s2, a3, tp
3269:             and          s7, s4, s2
                  xori         zero, a3, 1932
                  slli         s7, s4, 19
                  blt          s2, sp, 3286f
                  bne          s8, t4, 3280f
                  bgeu         s7, gp, 3279f
3275:             lui          s11, 845804
                  auipc        zero, 831238
                  xor          a1, a2, s10
                  or           t2, s1, t6
3279:             sll          s10, t3, t0
3280:             or           a5, ra, t2
3281:             bne          t1, s7, 3301f
                  bge          s10, a3, 3285f
                  auipc        t2, 100709
                  slti         s9, t1, -379
3285:             slt          t5, t6, s8
3286:             slt          a5, t1, a2
                  sll          s5, a4, a6
                  and          tp, a7, a0
                  auipc        t1, 150884
                  sub          t5, a6, s6
                  add          a5, t1, a5
                  or           t3, a3, gp
                  srl          t1, s0, a2
                  srl          s0, sp, a5
                  slti         a3, s1, -226
                  addi         t0, t3, -256
                  slt          a5, a7, tp
                  blt          s2, t3, 3307f
                  srai         s6, a0, 31
                  sub          t2, sp, t3
3301:             slt          gp, t0, a6
                  ori          s11, t1, 880
                  slli         tp, s11, 4
                  add          s5, a2, t1
                  sltu         a4, s6, t0
                  sltu         s6, t5, a6
3307:             sltu         a5, a0, a5
                  srai         sp, tp, 22
                  xori         s6, t3, -2017
                  sll          t6, a1, s0
                  auipc        a3, 747152
                  srai         s2, s9, 27
                  andi         s0, a0, -908
                  bge          sp, s7, 3324f
                  bltu         s6, t0, 3322f
                  beq          a0, a1, 3320f
                  xor          s7, t5, a2
                  and          s11, ra, a3
                  nop
3320:             xori         a3, a5, -2029
                  srai         t0, t6, 2
3322:             sltu         s5, t2, s4
                  and          a0, a0, a1
3324:             slt          s10, s11, a2
                  srl          s10, s9, t4
                  lui          s0, 347196
                  sltu         s0, t3, t2
                  xori         s10, t3, 595
                  bge          s8, zero, 3346f
                  bge          t6, a5, 3333f
                  blt          a1, s6, 3338f
                  slti         zero, a5, -1789
3333:             sltiu        a4, s1, 775
                  sltu         t2, s1, s7
                  bne          s3, sp, 3338f
                  bge          a2, a6, 3353f
                  slti         a2, t6, -512
3338:             ori          s9, ra, 987
                  sltu         sp, gp, ra
                  sltu         s6, t5, s4
                  add          a2, s4, a6
                  slt          a6, t4, tp
                  or           s0, s9, tp
                  slli         s10, t0, 19
                  sltu         t0, a0, s9
3346:             slli         t2, s11, 7
                  andi         s5, a4, -1994
                  bltu         s10, a4, 3362f
                  ori          a2, t5, 1736
                  sltiu        ra, s4, -1527
                  sltu         s1, s2, s5
                  bgeu         s5, a6, 3362f
3353:             sll          s4, a4, s3
                  slti         s8, s1, 1177
                  and          s10, a1, t5
                  xor          s7, s1, t6
                  xor          zero, a7, s6
                  slt          a4, s2, a6
                  xori         a5, s1, -375
                  bgeu         s1, sp, 3380f
                  sra          s7, s8, tp
3362:             slli         a0, s3, 25
                  sltu         s11, t4, s0
                  sltiu        s7, s3, 1791
                  beq          s0, s9, 3373f
                  bge          ra, s9, 3380f
                  beq          ra, a3, 3382f
                  bltu         t6, a4, 3378f
                  slli         a6, a2, 14
                  sub          s7, gp, a5
                  add          tp, a3, a3
                  sll          a5, a3, s7
3373:             nop
                  srai         t6, tp, 17
                  sltiu        a5, a6, -1080
                  or           s4, a3, t4
                  ori          t1, t6, 1852
3378:             nop
                  bgeu         s2, s3, 3397f
3380:             slli         t1, a4, 16
                  slt          gp, s10, s7
3382:             or           s7, gp, s6
                  blt          s5, s7, 3385f
                  beq          s8, s0, 3388f
3385:             sltiu        s2, a6, -134
                  bltu         a1, a0, 3406f
                  bge          t4, a0, 3406f
3388:             srai         t5, tp, 4
                  bgeu         t1, t2, 3406f
                  slt          ra, t3, a5
                  srl          a6, a5, s9
                  beq          s3, zero, 3399f
                  nop
                  sub          t5, s2, a3
                  slt          s8, s0, a7
                  blt          s5, ra, 3404f
3397:             ori          t5, sp, -920
                  slti         tp, s9, 1951
3399:             add          t3, s5, a2
                  andi         t1, t3, -972
                  slli         a0, s8, 9
                  sll          t5, s5, tp
                  xor          s11, s2, a6
3404:             bgeu         s2, a5, 3421f
                  addi         zero, a5, -1350
3406:             andi         sp, sp, 680
                  addi         s11, t6, 895
                  add          a1, a0, t2
                  xor          a5, a1, sp
                  beq          s3, ra, 3419f
                  sltiu        s2, t3, 595
                  sll          ra, t3, s2
                  srli         a0, s3, 28
                  sll          s11, s2, s6
                  bge          t2, sp, 3421f
                  blt          a0, a4, 3434f
                  blt          t0, t4, 3424f
                  blt          a1, s5, 3423f
3419:             sra          s10, a2, s4
                  srl          s4, s3, s0
3421:             or           s8, s5, s4
                  bne          t4, s5, 3427f
3423:             or           a5, a5, s3
3424:             srai         t5, t1, 14
                  sra          s9, t5, tp
                  sra          t2, s9, s4
3427:             bltu         a7, a4, 3439f
                  ori          s5, s4, -513
                  xori         s8, a0, 1465
                  sub          tp, tp, a4
                  srl          t1, a6, t3
                  or           s11, s4, s11
                  slti         a2, a2, -1550
3434:             sub          s1, t0, a4
                  andi         t5, a3, 1698
                  lui          a6, 12150
                  and          a4, s11, s10
                  bge          s6, s2, 3456f
3439:             lui          s8, 385127
                  beq          a4, t2, 3442f
                  sll          t6, s0, tp
3442:             and          a3, t6, s2
                  slti         s6, a4, 693
                  xori         s5, t0, 1031
                  or           s6, a0, a2
                  nop
                  ori          a5, a2, 1737
                  blt          s11, s7, 3463f
                  srl          zero, tp, tp
                  srai         zero, s9, 28
                  srai         a3, t5, 10
                  nop
                  lui          gp, 976731
                  bltu         a4, sp, 3457f
                  bne          ra, s4, 3459f
3456:             bne          t5, a0, 3470f
3457:             xori         zero, sp, -671
                  nop
3459:             slti         t0, sp, 1476
                  slt          a6, t2, ra
                  bge          a5, gp, 3468f
                  and          s7, s4, s7
3463:             ori          s5, a5, 1985
                  sltiu        s6, s4, 789
                  sub          a5, s2, a5
                  or           a1, s2, t3
                  slti         s8, s2, -1972
3468:             srli         t2, t6, 28
                  or           s7, s6, t0
3470:             slti         t6, a4, 2037
                  bltu         a3, a4, 3489f
                  add          t5, s10, a0
                  auipc        t3, 406937
                  srl          s6, gp, s5
                  and          s1, s6, a7
                  srl          s4, t3, s4
                  xori         t3, t5, -226
                  lui          t5, 701677
                  slti         t3, a6, -841
                  bltu         t6, a3, 3497f
                  bge          t4, a6, 3483f
                  slti         s2, t4, 32
3483:             sra          s9, t4, s8
                  sub          a0, sp, a3
                  slli         t6, a6, 22
                  bltu         s4, ra, 3504f
                  lui          zero, 27213
                  bne          s8, s4, 3502f
3489:             add          s6, t1, t4
                  bltu         t6, a3, 3492f
                  bge          a5, a6, 3498f
3492:             srli         s8, t1, 23
                  sll          t0, gp, s9
                  beq          t0, a0, 3504f
                  sub          a1, s4, s3
                  add          s10, a0, a7
3497:             blt          s0, t1, 3503f
3498:             andi         s6, a0, 1342
                  auipc        t5, 388017
                  sra          t3, s9, t3
                  addi         a2, ra, 272
3502:             sltu         t0, s4, s5
3503:             srai         t6, s10, 30
3504:             lui          a3, 665807
                  xori         s1, s7, 887
                  bgeu         t2, s2, 3511f
                  auipc        t3, 229070
                  beq          ra, s3, 3528f
                  nop
                  xor          s9, s8, s6
3511:             srai         a5, sp, 19
                  bgeu         s9, s11, 3519f
                  andi         s4, a0, -1809
                  bltu         a2, t4, 3526f
                  xor          s4, a3, t1
                  srl          s8, t4, s7
                  beq          a6, a5, 3520f
                  sub          t5, s0, s2
3519:             lui          ra, 523080
3520:             or           sp, a1, a3
                  ori          s1, t5, -1813
                  add          s2, a3, s5
                  srl          sp, a0, t3
                  addi         a4, a0, -1062
                  slli         s9, s10, 31
3526:             bgeu         s7, a2, 3535f
                  lui          sp, 418406
3528:             or           s7, s7, t3
                  sub          t0, s1, a1
                  bltu         t4, s5, 3548f
                  or           s6, ra, a1
                  sltu         s2, s3, s6
                  xori         a4, ra, -970
                  bltu         a7, t2, 3551f
3535:             or           s2, sp, s11
                  xor          a5, s2, s0
                  srl          s10, a1, s10
                  xori         a5, s8, 13
                  srai         gp, a6, 22
                  srai         s7, t3, 17
                  add          s10, t6, a3
                  slt          ra, s9, s1
                  srl          t0, s5, a5
                  bgeu         s7, a7, 3552f
                  xor          t2, s3, s0
                  or           s6, ra, s3
                  srl          t5, ra, a6
3548:             sub          a5, sp, t5
                  beq          a0, s6, 3565f
                  sltu         gp, s4, a4
3551:             sltiu        s4, zero, 303
3552:             bge          s11, t3, 3557f
                  xori         s6, t4, 1073
                  bltu         s11, t3, 3562f
                  bltu         t4, s3, 3565f
                  ori          s11, t3, -1144
3557:             and          tp, a7, a5
                  bne          s9, t2, 3565f
                  sll          s10, s7, s0
                  sltu         a2, s0, gp
                  blt          a7, a6, 3565f
3562:             srli         t6, a3, 16
                  sra          s11, a3, s8
                  sll          a1, s0, s5
3565:             andi         a4, a1, -2011
                  srl          s11, s0, s0
                  sra          t2, a3, gp
                  slli         s7, s2, 1
                  lw           tp, 4(a7)
                  slli         a4, s1, 7
                  srai         t2, a1, 2
                  addi         a7, a7, 8
                  xori         a4, gp, 1068
                  slti         a0, ra, 1200
                  slt          s6, s9, s7
                  auipc        gp, 239034
                  lui          zero, 206515
4785:             addi x3, x4, 1
4785:             jalr x3, x3, 0
sub_10:           bltu         s10, s6, sub_10_stack_p
                  xor          s9, s6, a1
                  sub          a5, t0, a4
                  srl          ra, s5, s1
sub_10_stack_p:   addi         a7, a7, -8
                  slt          a0, s10, s0
                  sw           tp, 4(a7)
                  sltu         s4, s7, s1
                  srai         s4, s5, 20
                  srai         s1, gp, 2
                  la           t1, region_1+738 #start riscv_load_store_rand_instr_stream_0
                  lh           s6, -6(t1)
                  sltiu        s5, s0, -51
                  lh           zero, -8(t1)
                  sub          t0, a5, a1
                  addi         a3, t2, 728
                  andi         t3, zero, 1000
                  nop
                  sltu         a2, t0, a0
                  sub          a2, s1, a6
                  sb           a3, -13(t1)
                  slli         s6, s11, 26
                  sh           s3, -4(t1)
                  sb           gp, 8(t1)
                  srl          s1, s7, t3
                  xor          s2, s7, s2
                  lbu          a6, 3(t1)
                  slli         a3, a3, 17
                  ori          a3, s2, 1272
                  slli         a0, s11, 25
                  lbu          tp, 7(t1)
                  lbu          s2, 2(t1)
                  auipc        s4, 146399
                  sltiu        t3, t6, -2008
                  slti         s7, ra, -72
                  sltiu        sp, s9, -1694
                  lbu          a6, 15(t1)
                  xori         t3, t2, -56
                  andi         a0, t2, -201
                  sb           a0, -5(t1)
                  lbu          a2, -15(t1)
                  lh           zero, 2(t1) #end riscv_load_store_rand_instr_stream_0
                  bltu         s7, t1, 12f
                  addi         t0, s1, 1214
                  slti         s5, t3, -189
                  auipc        a1, 890380
                  bgeu         a0, s0, 5f
5:                sltiu        s9, s1, 1696
                  addi         t6, a1, 1597
                  sll          s11, s2, t5
                  or           zero, a3, s11
                  sra          a4, s7, a5
                  andi         a2, s8, 1654
                  srai         gp, s10, 4
12:               lui          a0, 976197
                  sra          t5, s11, t5
                  ori          t5, s10, -520
                  bge          s2, gp, 33f
                  beq          s7, s6, 26f
                  lui          zero, 240894
                  bne          gp, ra, 21f
                  slli         s0, s4, 25
                  srl          s11, s1, s3
21:               sra          s4, s2, t1
                  nop
                  bge          s4, s6, 37f
                  srli         s4, s11, 10
                  sltiu        s5, s2, -376
26:               bgeu         ra, s1, 45f
                  add          s10, s10, t1
                  slt          s9, zero, s0
                  sll          ra, s6, t3
                  and          s2, s11, a4
                  bge          tp, s6, 48f
                  bne          s7, a4, 39f
33:               bne          a6, s4, 39f
                  sltiu        t1, s0, 181
                  bne          s3, zero, 41f
                  addi         a5, s8, -1198
37:               sltu         t2, t6, gp
                  lui          s9, 258426
39:               sltiu        ra, a6, -1782
                  bne          s11, s10, 55f
41:               sub          a2, s4, s0
                  sltu         s9, a0, a7
                  sra          t2, ra, a6
                  and          s10, s11, t5
45:               srli         tp, s2, 8
                  auipc        a5, 711157
                  sltu         a4, s5, s1
48:               add          t6, s7, a3
                  ori          t3, t4, -432
                  lui          s1, 615104
                  ori          s8, a2, -1808
                  andi         s1, a6, -1777
                  bgeu         sp, s7, 68f
                  nop
55:               slti         s9, s2, -1842
                  sll          s1, t4, a4
                  sltiu        s5, s3, 253
                  slt          s0, t3, tp
                  slti         zero, s0, -191
                  bne          s2, t4, 72f
                  and          ra, s10, s8
                  nop
                  slli         s9, a0, 18
                  sra          s10, a2, t0
                  nop
                  blt          s2, a7, 83f
                  sltu         s1, s4, a1
68:               and          sp, tp, t4
                  sltu         t0, t3, s7
                  sub          s11, s2, t4
                  andi         t3, t6, -787
72:               nop
                  or           s7, t1, s6
                  beq          tp, zero, 90f
                  bne          tp, s3, 83f
                  sra          s8, s4, s2
                  andi         s10, a6, -1143
                  srai         a2, s6, 18
                  sll          a6, s1, t3
                  slli         s0, s6, 13
                  addi         gp, s11, -476
                  blt          a4, s6, 89f
83:               xori         s11, t0, -1038
                  xori         s2, a4, -1891
                  srli         s5, s3, 30
                  sub          a1, ra, s10
                  bgeu         s5, s9, 96f
                  sltu         s2, a3, t1
89:               slli         gp, a4, 23
90:               slt          t5, s0, t1
                  bltu         s9, a1, 94f
                  sra          s0, t4, s7
                  slli         a1, zero, 1
94:               slti         gp, s2, -821
                  slt          a2, sp, tp
96:               srli         s4, s2, 9
                  sll          s5, s0, s2
                  and          a3, a1, t5
                  sra          s0, a3, a1
                  add          s9, s4, a2
                  xori         a3, zero, 231
                  sltiu        a5, s11, 1616
                  or           s11, s2, a0
                  bge          a3, a1, 106f
                  srli         t0, s7, 4
106:              lui          t5, 681931
                  sltu         t1, tp, gp
                  bgeu         a6, a4, 114f
                  beq          t1, a7, 113f
                  srl          s8, s4, tp
                  and          tp, sp, s6
                  slt          a3, a3, a7
113:              srli         s2, gp, 24
114:              bge          zero, t4, 115f
115:              sltu         a0, s4, a4
                  srl          t6, a3, a6
                  bltu         tp, t5, 129f
                  ori          t1, t0, -1250
                  slli         a5, s8, 7
                  srl          s2, s4, a2
                  slti         zero, a1, -1999
                  bgeu         tp, s1, 133f
                  srli         s7, s4, 21
                  sll          gp, s0, t3
                  xori         tp, t6, -1116
                  bge          t0, a2, 142f
                  xor          zero, s7, ra
                  xori         s2, a5, -1592
129:              or           t0, a6, t5
                  slti         t5, a2, 1908
                  beq          gp, s1, 147f
                  bltu         s11, a2, 135f
133:              andi         s0, s7, -141
                  andi         s5, s11, 1135
135:              add          t1, a2, t0
                  blt          a2, s0, 155f
                  srl          zero, t6, a0
                  addi         t6, a1, 1934
                  bltu         a2, t4, 156f
                  andi         s5, s4, 1764
                  srai         s7, s3, 11
142:              xor          a5, a5, s8
                  andi         s6, s6, -295
                  slli         s7, a3, 21
                  srli         s10, t4, 18
                  sll          sp, sp, a2
147:              sra          t2, s7, a1
                  slti         s4, s7, -1462
                  nop
                  andi         a6, t0, 1900
                  sll          a4, t0, a3
                  bltu         a7, sp, 154f
                  xor          a4, t5, s7
154:              slti         sp, s10, 547
155:              xori         s9, s4, 358
156:              slli         s4, s8, 30
                  xor          t2, s1, gp
                  andi         t1, a5, 1211
                  sra          t5, t0, zero
                  lw           tp, 4(a7)
                  andi         s2, a5, 824
                  ori          s0, s10, 79
                  addi         a7, a7, 8
                  sub          s11, a7, s8
                  addi         a2, s11, 1037
208:              addi x28, x4, 0
208:              jalr x28, x28, 0
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
mmode_intr_vector_1:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x29, x17, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x20, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x20, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x20, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x20, x8, ecall_handler
                  li x8, 0x1
                  beq x20, x8, instr_fault_handler
                  li x8, 0x5
                  beq x20, x8, load_fault_handler
                  li x8, 0x7
                  beq x20, x8, store_fault_handler
                  li x8, 0xc
                  beq x20, x8, pt_fault_handler
                  li x8, 0xd
                  beq x20, x8, pt_fault_handler
                  li x8, 0xf
                  beq x20, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x17, x29, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x29, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x29, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x17, x29, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x17, x29, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x17, x29, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
