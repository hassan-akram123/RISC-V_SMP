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
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x477a9c2d
                  li x2, 0xf92b1c87
                  li x3, 0x7e90aaf6
                  li x4, 0xd
                  li x5, 0x0
                  li x6, 0xf86bc0f6
                  li x7, 0x0
                  li x8, 0xf72afd38
                  li x9, 0xf7e866ab
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x1
                  li x13, 0x0
                  li x14, 0x3469d1ff
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0x6
                  li x18, 0x4
                  li x19, 0xb6973978
                  li x20, 0xf6d58bd2
                  li x21, 0xf0386ae9
                  li x23, 0x300403d5
                  li x24, 0x3def9d5
                  li x25, 0xf7869868
                  li x26, 0x0
                  li x28, 0x80000000
                  li x29, 0xfdcaae97
                  li x30, 0xfeadb12b
                  li x31, 0x0
                  la x22, user_stack_end
main:             sltu         sp, t4, s11
                  slt          sp, t6, s3
                  slti         a5, t0, -1445
                  lui          t2, 970091
                  la           s1, sub_2
                  slti         t2, a0, -1869
                  addi         s1, s1, 93
                  sll          a0, s10, s2
                  blt          t1, s9, main_j3 #branch to jump instr
                  xori         a4, a1, -1906
                  andi         a3, t4, -1254
                  sra          s8, a4, t5
main_j3:          jalr         a5, s1, -92 #jump main -> sub_2
                  la           s0, region_1+652 #start riscv_load_store_rand_instr_stream_1
                  add          a1, ra, t1
                  ori          s5, s6, -1146
                  auipc        s1, 155352
                  slli         a5, a3, 23
                  and          t4, s11, s9
                  xori         a6, gp, -524
                  ori          s9, s4, 1149
                  sb           a3, 649(s0)
                  sra          sp, t3, t0
                  xori         s5, sp, -1982
                  nop
                  lb           t6, 79(s0)
                  add          t5, s5, s11
                  sub          t4, zero, s0
                  srai         s2, s3, 18
                  srl          s10, a3, s3
                  lh           s7, -520(s0)
                  sltiu        tp, zero, 1680
                  add          s10, s7, t2
                  and          a3, s3, s1
                  lh           t4, -152(s0)
                  srli         a2, s2, 24
                  slti         a1, a6, -755
                  lui          t4, 820988
                  sll          a3, s9, t1
                  and          s7, s6, t1
                  lh           gp, 50(s0)
                  lbu          t2, -337(s0)
                  slt          s10, tp, a3
                  xori         t5, s4, 1684
                  sb           t0, -354(s0)
                  sltu         a4, gp, a0
                  lb           s7, -175(s0)
                  sub          s1, t2, s3
                  lb           tp, 616(s0)
                  srli         s7, s11, 23
                  lbu          a3, 633(s0) #end riscv_load_store_rand_instr_stream_1
                  la           s4, region_0+1239 #start load_store_instr_stream_2
                  la           a2, region_0+104 #start load_store_instr_stream_1
                  la           s9, region_0+66 #start load_store_instr_stream_3
                  lb           tp, 15(a2)
                  lb           t6, 0(s4)
                  lbu          gp, 179(s9)
                  sb           zero, 1(a2)
                  la           a0, region_0+1827 #start load_store_instr_stream_0
                  lb           a7, 1(s4)
                  lbu          t4, 111(s9)
                  sb           sp, -6(a2)
                  lhu          a1, 7(s4)
                  sw           sp, 38(s9)
                  lb           tp, 40(a0)
                  lbu          s3, -14(s4)
                  lbu          t0, 177(s9)
                  sb           s9, 12(a0)
                  lbu          a3, -5(a2)
                  lb           a3, 4(s4)
                  lhu          s0, 21(a0)
                  lb           a7, 53(s9)
                  sb           a6, 4(s4)
                  lbu          a7, -16(s4)
                  lhu          t5, -10(a2)
                  lb           ra, 6(s4)
                  lb           t5, -4(a0)
                  lb           a5, 0(s4) #end load_store_instr_stream_2
                  lh           zero, -8(a2)
                  lb           a1, 252(s9)
                  sb           ra, 177(s9) #end load_store_instr_stream_3
                  lb           t4, -41(a0)
                  lb           t6, -14(a2) #end load_store_instr_stream_1
                  lbu          t4, -18(a0) #end load_store_instr_stream_0
                  la           sp, region_1+1272 #start riscv_load_store_hazard_instr_stream_0
                  lhu          gp, 6(sp)
                  addi         t1, t6, -1035
                  lhu          s2, -8(sp)
                  lw           t0, -8(sp)
                  lb           a5, 10(sp)
                  lbu          s10, 16(sp)
                  lbu          s5, 16(sp)
                  lb           t2, 10(sp)
                  lhu          s8, 10(sp)
                  lbu          a2, -15(sp)
                  lbu          t1, -15(sp)
                  lbu          s7, -7(sp)
                  sb           s9, -7(sp)
                  lbu          s4, -3(sp)
                  lbu          a1, -3(sp)
                  sb           s2, 1(sp)
                  lbu          s5, 1(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+488 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s10, 981(sp)
                  lhu          s10, 692(sp)
                  lw           a1, 692(sp)
                  andi         s1, s0, 135
                  sb           s5, 692(sp)
                  lb           t4, 758(sp)
                  lb           s5, -479(sp)
                  lb           a5, 228(sp)
                  lh           t0, 64(sp)
                  sh           s11, -144(sp)
                  sh           sp, 146(sp)
                  lb           a0, 489(sp)
                  sb           s7, 886(sp)
                  andi         t5, s6, 212
                  lh           t1, 1124(sp)
                  lw           ra, 1124(sp)
                  lb           s0, 1142(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           s5, region_0+246 #start load_store_instr_stream_3
                  la           t2, region_0+729 #start load_store_instr_stream_2
                  sh           a6, 141(t2)
                  la           t1, region_0+267 #start load_store_instr_stream_0
                  la           tp, region_0+283 #start load_store_instr_stream_1
                  lbu          sp, -25(t2)
                  lbu          a7, -59(tp)
                  lbu          zero, -26(tp)
                  lh           s0, 15(t1)
                  sb           a3, -18(tp)
                  lbu          a1, -150(t2)
                  sh           a7, -13(tp)
                  la           a2, region_0+1921 #start load_store_instr_stream_4
                  sh           s9, -11(t1)
                  sh           tp, 143(t2)
                  lb           a3, -271(a2)
                  sb           s7, -974(a2)
                  sb           s0, -999(a2)
                  lhu          s0, 15(t1)
                  lbu          t6, -1066(a2)
                  sb           t3, 805(s5)
                  sb           s1, 7(tp)
                  lh           sp, 684(s5)
                  lbu          a5, 700(s5)
                  sb           sp, -99(t2)
                  sh           a2, 1550(s5)
                  lb           s4, -18(tp) #end load_store_instr_stream_1
                  lb           t4, 3(t1)
                  lb           a7, 116(t2)
                  lh           s4, -1707(a2) #end load_store_instr_stream_4
                  lw           s3, 166(s5) #end load_store_instr_stream_3
                  lb           a5, 186(t2) #end load_store_instr_stream_2
                  lb           zero, -16(t1) #end load_store_instr_stream_0
                  la           sp, region_0+1280 #start riscv_load_store_rand_instr_stream_0
                  lb           t5, -3(sp)
                  lb           s0, -9(sp)
                  lb           s9, -9(sp)
                  xori         s4, t5, -435
                  srl          a0, s11, s1
                  xori         t1, a2, -939
                  addi         t5, s4, 1604
                  lbu          s9, 5(sp)
                  slli         tp, zero, 3
                  ori          s8, a5, -1205
                  lw           t6, 4(sp)
                  or           s9, s7, s8
                  xori         s5, a7, 933
                  lb           a5, 13(sp)
                  lb           tp, -13(sp)
                  sltiu        s7, s11, 497
                  lh           a1, 14(sp)
                  lh           tp, -16(sp)
                  sh           s10, 14(sp)
                  lb           ra, 7(sp)
                  srli         tp, ra, 13
                  sh           s8, 2(sp)
                  sb           t4, 16(sp)
                  sb           s6, -15(sp)
                  sb           s6, 1(sp)
                  auipc        t0, 26889
                  sb           t0, 10(sp)
                  lbu          s3, -16(sp)
                  add          t6, a1, s1
                  sb           s4, -9(sp)
                  lhu          s9, 0(sp)
                  sll          t4, s10, a7
                  nop
                  lw           a7, 16(sp)
                  lbu          a1, -4(sp)
                  sb           s1, -1(sp)
                  lui          t5, 827706
                  and          s9, a1, t4
                  lbu          s7, 3(sp)
                  srai         a7, a7, 16
                  nop
                  slti         s9, gp, 1328
                  sb           a0, 1(sp)
                  lbu          s1, -11(sp)
                  slti         a7, t2, -1914
                  slli         a0, a2, 4
                  sh           s0, 10(sp)
                  sw           s1, 16(sp)
                  sb           t3, -9(sp) #end riscv_load_store_rand_instr_stream_0
                  sll          a2, s11, gp
                  auipc        s4, 109659
                  bltu         s0, s11, 22f
                  slt          gp, t4, a4
                  slt          t6, a1, t4
                  blt          s8, a7, 18f
                  srai         zero, s6, 12
                  blt          a3, gp, 16f
                  bne          s0, t0, 14f
                  andi         a5, a1, 1339
                  beq          t4, t2, 12f
                  lui          s9, 54409
12:               srl          t6, a4, s3
                  sub          sp, s7, s10
14:               andi         a4, a5, 509
                  bltu         s5, a4, 26f
16:               and          a1, s11, t4
                  bgeu         s6, s2, 22f
18:               beq          t3, s10, 33f
                  slti         s5, s0, -1108
                  sltu         a2, s11, zero
                  la           s2, sub_1
                  addi         s5, t2, 1687
                  addi         s2, s2, -259
                  bgeu         a5, t5, main_j2 #branch to jump instr
                  sra          t2, zero, a0
                  sub          tp, a2, t6
                  srl          a6, zero, s2
main_j2:          jalr         a5, s2, 259 #jump main -> sub_1
                  xor          t6, a7, t1
                  bltu         t4, t3, 34f
22:               blt          s9, s4, 34f
                  sll          t1, ra, a0
                  bltu         a2, t6, 29f
                  andi         a2, t4, -1481
26:               srli         t4, a7, 23
                  lui          s8, 629513
                  srli         t1, t4, 5
29:               sub          s7, a3, a0
                  srl          s5, s2, t4
                  bne          a6, gp, 50f
                  blt          t1, t1, 36f
33:               sub          t2, ra, a7
34:               sll          s7, t1, a3
                  bgeu         tp, s9, 46f
36:               sltiu        s10, a5, -449
                  slt          a2, t5, t4
                  beq          zero, a2, 53f
                  add          t0, s9, a2
                  slli         s4, zero, 17
                  bge          ra, t6, 48f
                  andi         t4, s11, 1382
                  slt          a2, t3, s0
                  srl          t4, s11, t6
                  bge          zero, t4, 50f
46:               add          s0, s7, tp
                  sltiu        a2, t3, -1740
48:               nop
                  sra          gp, s5, a0
50:               and          a3, t3, a4
                  sltu         s2, a7, t6
                  sra          a2, s10, t0
53:               ori          a1, a1, 898
                  xor          s7, t2, s9
                  add          s7, ra, s11
                  and          sp, a7, t6
                  slli         s7, s8, 20
                  bge          s3, a0, 68f
                  lui          s7, 376613
                  bge          s4, s7, 71f
                  addi         s0, a1, -1758
                  addi         s1, t3, 1613
                  andi         s4, a0, -2018
                  sra          t1, s11, s3
                  beq          a2, t6, 69f
                  nop
                  xori         s3, sp, -1808
68:               bltu         s3, a0, 71f
69:               add          t1, a4, s6
                  xori         s7, s1, 215
71:               ori          s5, t0, 271
                  slli         a7, t3, 8
                  auipc        tp, 520557
                  slt          s7, s11, t3
                  beq          t6, t3, 82f
                  srai         s0, s3, 2
                  srai         t4, s0, 17
                  auipc        tp, 681322
                  srai         a7, s6, 27
                  and          s1, s3, s4
                  andi         a0, s4, 1172
82:               srai         a0, a4, 21
                  slli         gp, a7, 2
                  blt          t6, t5, 89f
                  andi         a2, s9, 1773
                  sll          a4, s11, tp
                  bgeu         s2, t6, 104f
                  sub          t2, s8, a6
89:               lui          tp, 876856
                  beq          s2, t2, 106f
                  addi         s5, s4, 2001
                  sub          s1, sp, a7
                  addi         t2, s1, 1336
                  srai         a2, a7, 29
                  beq          s11, t0, 105f
                  lui          zero, 66542
                  addi         s10, s6, -752
                  blt          a0, s7, 115f
                  add          a0, s6, t4
                  lui          a1, 371844
                  sltiu        s1, a7, 1197
                  srl          t2, a5, s9
                  bgeu         s8, t6, 110f
104:              addi         s3, a7, -759
105:              nop
106:              srli         s3, s7, 8
                  auipc        a5, 41414
                  xor          gp, s3, a5
                  sltiu        s4, s6, -1868
110:              slti         zero, a4, -1510
                  sltu         a7, gp, s7
                  beq          s2, gp, 131f
                  sltiu        t0, a6, -1023
                  nop
115:              slt          a5, a2, s2
                  srl          a0, a3, t1
                  xori         a7, a3, -1518
                  andi         tp, a7, -334
                  slli         s10, s5, 6
                  or           gp, a6, s10
                  and          s1, t1, s1
                  blt          s11, t3, 127f
                  sub          s9, a2, s2
                  bne          s11, ra, 128f
                  and          a3, a3, s9
                  bne          s6, a3, 143f
127:              srai         s1, a7, 21
128:              srai         s2, s9, 26
                  addi         zero, a3, 1940
                  bne          a1, a2, 147f
131:              bltu         t3, s2, 136f
                  srai         s0, s6, 29
                  blt          s0, a3, 138f
                  nop
                  bne          t6, gp, 139f
136:              sltu         a1, s10, ra
                  slli         a4, s8, 5
138:              bgeu         s6, s8, 148f
139:              addi         s0, a1, -1716
                  and          a3, s8, s4
                  sltiu        a6, s11, -676
                  xor          s2, s3, s7
143:              nop
                  blt          zero, t0, 151f
                  andi         s3, s0, 1891
                  sub          t0, t2, s9
147:              andi         s3, s2, 1211
148:              bne          s1, a7, 167f
                  or           s0, s7, tp
                  bgeu         tp, a2, 155f
151:              xori         s10, t5, 869
                  xor          ra, sp, a4
                  xor          s9, s7, s1
                  la           s2, sub_2
                  sltu         a5, s1, s8
                  addi         s2, s2, 225
                  nop
                  srl          s3, t1, s9
                  auipc        s1, 837391
                  and          a2, a2, a4
                  bltu         s8, sp, main_j1 #branch to jump instr
                  srli         t1, a6, 19
                  add          t4, s5, a6
                  nop
main_j1:          jalr         a5, s2, -224 #jump main -> sub_2
                  bltu         ra, s1, 168f
                  addi         t2, gp, 759
155:              sltu         s8, s10, t0
                  srli         s3, t3, 28
                  xor          s10, t4, s1
                  beq          zero, s10, 165f
                  bne          t3, t4, 172f
                  sra          ra, a7, a0
                  and          ra, s9, t4
                  lui          s1, 255730
                  bne          a0, t0, 168f
                  blt          gp, s0, 177f
165:              add          s4, s0, s2
                  auipc        tp, 277632
167:              sra          s4, s5, s11
168:              auipc        zero, 57223
                  sll          gp, a3, a6
                  or           t5, t2, s1
                  slti         tp, a0, 7
172:              xori         s5, s6, 163
                  blt          s5, t5, 185f
                  ori          s4, t0, -1662
                  sltiu        gp, s0, -360
                  bgeu         s7, a4, 195f
177:              srli         s8, t2, 28
                  srli         sp, a1, 4
                  xori         s7, gp, -1642
                  sltu         sp, s1, s8
                  sltiu        t4, s5, 134
                  bltu         s6, s3, 193f
                  bne          s4, a0, 193f
                  srli         a6, ra, 23
185:              sra          ra, s1, s11
                  sltu         t4, ra, a5
                  bne          s10, t4, 207f
                  and          s8, a3, tp
                  bltu         zero, t1, 194f
                  slti         a7, a1, -1345
                  bge          ra, s2, 197f
                  xor          ra, s5, t6
193:              ori          zero, a6, 1968
194:              slli         t4, a7, 23
195:              sltiu        ra, t4, -1784
                  srl          ra, gp, a6
197:              auipc        t6, 704937
                  and          t0, s2, s7
                  xor          s3, t4, s7
                  sra          a1, t6, a5
                  andi         ra, t3, 531
                  srai         a1, s11, 13
                  andi         t5, s6, -1054
                  sltu         gp, s1, s1
                  sltiu        t5, a2, -1711
                  slt          gp, s6, s10
207:              auipc        s1, 507801
                  srl          a4, zero, s1
                  xor          t1, a6, a3
                  nop
                  and          a7, s5, a1
                  addi         t1, t5, 558
                  bge          a0, a4, 220f
                  srai         s10, a2, 11
                  ori          a7, t6, 513
                  sltiu        s2, a6, -508
                  xor          a7, gp, t4
                  sub          s3, s0, t3
                  andi         s9, ra, 866
220:              xori         a1, s7, 1881
                  bne          a3, s4, 236f
                  and          a5, t4, a6
                  sltiu        a4, a3, -1646
                  or           tp, s2, a4
                  beq          zero, t6, 227f
                  bgeu         s3, t1, 229f
227:              or           gp, a6, t1
                  slti         s0, a4, -115
229:              slt          t2, t0, s2
                  srli         a0, s8, 29
                  sub          ra, a4, t2
                  lui          s8, 293154
                  srl          a7, t5, s8
                  or           a4, gp, t3
                  xori         s2, t2, 670
236:              bne          s8, s5, 245f
                  add          a1, s4, s9
                  sll          a6, s6, s3
                  andi         s2, a4, -516
                  srli         a4, s0, 5
                  xor          a4, s5, gp
                  slt          s10, s1, s2
                  bltu         s1, s10, 254f
                  slti         s4, t5, 151
245:              sltiu        a3, t4, -1303
                  or           sp, a4, s11
                  andi         t5, a7, -1949
                  auipc        s0, 926127
                  ori          sp, a6, -192
                  xori         t2, t0, 1276
                  sltiu        s7, s11, -171
                  slti         ra, s0, 499
                  addi         a7, a2, -1074
254:              or           s0, ra, a7
                  srli         sp, a4, 25
                  lui          s10, 77434
                  bge          zero, t3, 268f
                  andi         s0, s0, 1791
                  sra          t1, s10, tp
                  or           s8, a2, t5
                  or           s2, ra, s5
                  slt          a2, t3, gp
                  bne          a4, sp, 279f
                  sll          s5, ra, t6
                  sltiu        a1, a4, 228
                  xori         t1, t2, -10
                  slti         a7, a2, -1402
268:              xori         gp, s2, -1237
                  sra          a2, ra, zero
                  bne          s11, s5, 283f
                  srli         s4, sp, 18
                  lui          a3, 53088
                  srl          s4, sp, s8
                  beq          s4, s2, 284f
                  auipc        s7, 433923
                  sra          s0, s11, a4
                  and          s1, a3, s0
                  slt          s2, s4, s1
279:              auipc        a7, 370692
                  sll          t6, t5, t0
                  beq          s11, s5, 291f
                  srl          a3, s5, tp
283:              nop
284:              srli         ra, a0, 18
                  ori          s9, sp, -1795
                  bne          a0, s0, 291f
                  addi         s5, t5, -2021
                  andi         s3, a1, 1943
                  sltiu        s4, a5, -580
                  auipc        t2, 992170
291:              auipc        t6, 982836
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bge          a7, a4, sub_1_stack_p
                  slt          s4, a5, a4
sub_1_stack_p:    addi         s6, s6, -32
                  sw           a5, 4(s6)
                  ori          s8, s9, 1749
                  sub          a3, t6, s2
                  srai         s9, t0, 3
                  ori          s8, t4, -1054
                  la           t4, region_0+1795 #start riscv_load_store_hazard_instr_stream_3
                  lbu          s2, -8(t4)
                  sb           a4, -14(t4)
                  sh           t2, 11(t4)
                  sh           s4, 11(t4)
                  sh           a2, 11(t4)
                  add          zero, ra, zero
                  sb           s5, 16(t4)
                  lb           s7, 16(t4)
                  sb           t0, 16(t4)
                  sb           ra, 16(t4)
                  lb           s8, 16(t4)
                  sb           s8, -8(t4)
                  lb           a2, 8(t4)
                  lb           s5, 8(t4)
                  lb           t6, 8(t4)
                  lb           sp, 8(t4)
                  sh           a6, -15(t4)
                  sh           s2, -15(t4)
                  sh           a7, -15(t4) #end riscv_load_store_hazard_instr_stream_3
                  la           t2, region_0+823 #start load_store_instr_stream_2
                  la           s9, region_0+433 #start load_store_instr_stream_1
                  la           t5, region_0+1903 #start load_store_instr_stream_0
                  lb           a0, 20(t2)
                  lbu          s3, -42(t2)
                  lb           s8, 46(t2)
                  lb           zero, 1022(s9)
                  sb           t5, 6(t5)
                  sb           s9, -16(t2)
                  la           a7, region_0+1290 #start load_store_instr_stream_3
                  sh           s11, 13(t2)
                  lbu          t1, -151(a7)
                  lbu          s5, -163(s9)
                  sh           tp, -82(a7)
                  lbu          ra, 1282(s9)
                  lb           gp, -45(t2)
                  lbu          s7, 1(t5)
                  lw           a4, 5(t2)
                  sb           a4, 16(t5)
                  lb           s5, -2(t5)
                  lb           a1, 36(t2)
                  sh           ra, -236(a7)
                  sb           a1, -235(a7)
                  lbu          s7, 314(s9)
                  sb           tp, -186(a7)
                  lbu          a1, 860(s9)
                  lbu          t6, -104(a7)
                  lbu          a6, -27(t2) #end load_store_instr_stream_2
                  lb           s8, -1(t5)
                  lhu          ra, 132(a7)
                  sb           s5, 25(s9) #end load_store_instr_stream_1
                  sb           t0, -155(a7)
                  lbu          s1, -188(a7)
                  sb           s11, 14(t5)
                  lb           s2, 16(t5)
                  lbu          s10, -1(a7) #end load_store_instr_stream_3
                  lhu          a0, -1(t5) #end load_store_instr_stream_0
                  la           t4, region_1+376 #start load_store_instr_stream_1
                  la           a7, region_1+1773 #start load_store_instr_stream_3
                  sb           t1, 153(t4)
                  la           s5, region_1+1407 #start load_store_instr_stream_4
                  la           a3, region_1+1625 #start load_store_instr_stream_2
                  lb           s2, -2(a3)
                  sb           t6, -1472(a7)
                  la           t6, region_1+1511 #start load_store_instr_stream_0
                  sb           t5, -430(a7)
                  sb           ra, 188(t4)
                  sb           t2, -180(s5)
                  lb           t2, 220(t4)
                  sb           sp, 1(a3)
                  lhu          ra, -1(t6)
                  sb           s10, 14(a3)
                  sb           s8, -33(t4)
                  lbu          a4, 59(t4)
                  sw           t1, 101(s5)
                  sh           s6, -212(t4)
                  lhu          tp, -5(t6)
                  lb           a0, -1374(a7)
                  sw           t6, -224(t4)
                  lb           t5, 16(t6)
                  lbu          t2, -892(a7)
                  sw           a2, 32(t4)
                  sb           a3, -8(a3)
                  lb           a4, 154(s5)
                  sw           a6, 1(t6)
                  lb           s9, -106(s5)
                  lb           s1, -8(a3)
                  sb           a1, 12(t6)
                  lh           a1, 7(a3)
                  sb           a6, 253(s5)
                  lb           t2, -1196(a7)
                  lh           a2, 11(t6)
                  sb           s2, 10(a3)
                  lh           s4, -891(a7)
                  lbu          a0, -251(t4)
                  sw           sp, 61(s5)
                  sb           a3, -1710(a7)
                  lbu          tp, 59(s5)
                  sb           t0, 225(s5) #end load_store_instr_stream_4
                  lb           a1, 209(t4) #end load_store_instr_stream_1
                  lb           t5, 6(a3) #end load_store_instr_stream_2
                  sw           s1, -125(a7) #end load_store_instr_stream_3
                  lhu          s1, 15(t6) #end load_store_instr_stream_0
                  la           s5, region_0+614 #start load_store_instr_stream_1
                  la           tp, region_0+1474 #start load_store_instr_stream_0
                  lbu          s3, 1(tp)
                  la           s4, region_0+1617 #start load_store_instr_stream_2
                  lbu          s8, 59(s5)
                  lb           a5, 4(s4)
                  lbu          a7, 98(s5)
                  lb           t5, -4(s4)
                  sh           s0, 0(tp)
                  lb           a6, -8(s4)
                  lbu          gp, 69(s5)
                  sb           t5, -6(s4)
                  sb           s10, -245(s5)
                  lhu          s1, -11(s4)
                  lb           a2, -1(tp)
                  sb           a3, 249(s5)
                  sb           tp, -16(s4)
                  lb           a5, -8(s4)
                  lb           t6, -12(s4)
                  lhu          a1, 12(tp)
                  sb           s0, 253(s5)
                  lb           s8, -8(s4) #end load_store_instr_stream_2
                  sh           gp, 6(tp)
                  lh           sp, -52(s5)
                  lbu          t0, -11(tp)
                  lw           s7, -106(s5) #end load_store_instr_stream_1
                  sw           s11, -2(tp) #end load_store_instr_stream_0
                  la           a4, region_0+1533 #start load_store_instr_stream_0
                  la           gp, region_0+1510 #start load_store_instr_stream_1
                  la           a7, region_0+152 #start load_store_instr_stream_2
                  sb           t4, 105(gp)
                  lb           t5, 9(a4)
                  lhu          a0, 166(gp)
                  sb           s0, 8(a4)
                  lb           s1, -6(a4)
                  lbu          s3, -31(a7)
                  lbu          sp, 5(a7)
                  lh           a3, -11(a4)
                  lbu          a0, -1(a7)
                  lb           t0, -107(gp)
                  sh           ra, 64(a7)
                  sb           ra, -88(gp)
                  sb           s1, -5(a4)
                  lbu          a5, -240(gp)
                  lhu          s8, -82(gp)
                  lhu          a5, 28(a7)
                  sb           t2, 8(a4)
                  sw           t1, 64(a7)
                  sb           a3, 60(a7)
                  sb           a1, 23(gp)
                  sh           a7, 34(gp)
                  lbu          a0, -14(a4)
                  sw           ra, -122(gp)
                  sh           a5, -38(a7) #end load_store_instr_stream_2
                  lb           t6, -10(a4)
                  sb           a2, -33(gp) #end load_store_instr_stream_1
                  lh           s2, -1(a4)
                  lw           ra, -5(a4) #end load_store_instr_stream_0
                  la           a5, region_0+197 #start riscv_load_store_rand_instr_stream_3
                  srli         tp, t4, 24
                  lbu          s3, 4(a5)
                  lb           a1, 8(a5)
                  lb           t6, 8(a5)
                  ori          tp, s10, -816
                  xori         a6, gp, 1662
                  sb           a3, 6(a5)
                  lb           s5, -5(a5)
                  lh           t0, 1(a5)
                  ori          a4, a0, 1738
                  sh           s3, -11(a5)
                  lbu          a4, 4(a5)
                  lhu          a4, 3(a5)
                  sltiu        gp, s2, 1311
                  sltu         ra, a3, t0
                  sub          s8, a7, tp
                  sltiu        t5, s11, 268
                  srai         a2, a2, 18
                  lb           a6, -11(a5)
                  lbu          a4, 5(a5)
                  srai         t6, a7, 17
                  sub          t2, s10, t2
                  sb           s0, -2(a5)
                  sra          a3, s10, ra
                  lhu          gp, -7(a5)
                  sb           s6, 15(a5)
                  addi         a7, s9, -1415
                  sw           t0, 11(a5)
                  lbu          t4, -5(a5)
                  lbu          s0, 2(a5)
                  lb           a0, 7(a5)
                  sb           a5, -7(a5)
                  slli         s2, t4, 24
                  slt          s9, a2, a1
                  xor          s4, ra, a5
                  xori         a0, s11, -2043
                  add          s8, a5, s6
                  xor          t2, gp, t1
                  sb           tp, 10(a5)
                  lb           sp, -9(a5)
                  sb           a0, -13(a5)
                  lb           s1, -10(a5)
                  lui          s7, 770875
                  nop
                  sb           s10, -8(a5) #end riscv_load_store_rand_instr_stream_3
                  la           s0, region_0+1970 #start riscv_load_store_rand_instr_stream_0
                  lbu          a6, -6(s0)
                  sh           s11, 16(s0)
                  lbu          s3, -14(s0)
                  xori         s5, t1, 1344
                  lbu          s5, 3(s0)
                  sb           s3, 9(s0)
                  lb           s3, 7(s0)
                  slli         a6, ra, 18
                  lh           s5, -12(s0)
                  nop
                  lb           t6, 11(s0)
                  sb           tp, -15(s0)
                  lhu          s10, 14(s0)
                  sb           gp, -12(s0)
                  lb           a4, -6(s0)
                  and          zero, a3, s6
                  lb           sp, 1(s0)
                  lbu          a6, -14(s0)
                  srl          a3, a1, a6
                  lb           t6, 5(s0)
                  and          s4, a5, s0
                  lhu          t5, 16(s0)
                  sw           t4, -2(s0)
                  srli         tp, t5, 0
                  sra          s4, zero, t5
                  addi         t6, zero, -974
                  sll          t0, t6, t1
                  sltiu        a0, a7, -669
                  lbu          s8, -13(s0)
                  ori          gp, t6, 1718
                  lhu          t1, 4(s0)
                  lhu          s10, 12(s0)
                  lui          t5, 296449
                  lbu          s2, -16(s0)
                  slli         s3, t6, 22
                  lbu          gp, -11(s0)
                  slti         t1, s9, -77
                  sub          a3, s6, s5
                  lui          a4, 375559
                  slli         a0, s6, 27
                  lb           s8, 13(s0)
                  lb           zero, -12(s0)
                  lb           a3, 7(s0)
                  slli         a4, t3, 15
                  sb           zero, 10(s0) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_0+17 #start riscv_load_store_rand_instr_stream_1
                  slli         zero, zero, 18
                  lb           s0, 1900(t5)
                  auipc        gp, 413947
                  lbu          a2, 132(t5)
                  lhu          t1, 1871(t5)
                  sh           s1, 111(t5)
                  srli         t2, a1, 13
                  lb           s5, 376(t5)
                  sub          t2, a6, s1
                  lbu          s2, 516(t5)
                  sub          t4, a7, a4
                  sltiu        a7, s5, -695
                  add          t2, s4, a7
                  lbu          a4, 740(t5)
                  sltiu        s1, t0, 630
                  srai         a3, s3, 14
                  lbu          t6, 923(t5)
                  lbu          zero, 0(t5)
                  lui          s1, 879178
                  sra          s4, s0, zero
                  lbu          t2, 694(t5)
                  xori         a7, t2, 535
                  lb           a1, 1538(t5)
                  add          zero, s6, s11
                  and          s3, s9, a5
                  slt          a7, s10, s2
                  sb           s6, 1056(t5)
                  lb           t0, 402(t5)
                  srai         gp, sp, 21
                  lb           s5, 1485(t5)
                  lb           a4, 590(t5)
                  srli         s8, t6, 3
                  lbu          gp, 448(t5)
                  auipc        s1, 455270
                  andi         a2, a5, 954
                  add          a0, a4, s9
                  addi         s0, s2, 1107
                  sra          a1, tp, t6
                  lhu          a5, 433(t5)
                  xor          s5, a5, t1
                  sll          a4, s4, s11
                  add          t1, a5, t3
                  lb           s5, 1254(t5)
                  lbu          t2, 1171(t5)
                  lb           s1, 1545(t5)
                  sh           s9, 1497(t5)
                  lb           gp, 972(t5)
                  lbu          a7, 1490(t5)
                  sb           a7, 780(t5) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_0+269 #start riscv_load_store_hazard_instr_stream_0
                  lb           s5, -12(s0)
                  lbu          t4, -12(s0)
                  ori          gp, tp, 1388
                  lbu          s5, -12(s0)
                  lb           t6, 12(s0)
                  slt          s9, s0, t6
                  sub          tp, t0, a3
                  sb           s2, -6(s0)
                  sb           t3, -6(s0)
                  lbu          t1, -6(s0)
                  or           a4, s4, s11
                  lbu          t0, -10(s0)
                  sub          s5, a7, t0
                  xori         a5, a0, -335
                  sb           t4, -10(s0)
                  lbu          s9, -10(s0) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1437 #start riscv_load_store_hazard_instr_stream_1
                  sb           s5, -210(sp)
                  sb           t2, -210(sp)
                  xori         s10, a0, -648
                  sb           t0, -187(sp)
                  lh           tp, 175(sp)
                  lbu          t2, 174(sp)
                  lbu          t2, -195(sp)
                  sh           t5, -191(sp)
                  lh           s2, -191(sp)
                  sh           t5, 223(sp)
                  sh           s1, 99(sp)
                  lb           a7, -130(sp)
                  sb           t2, 153(sp)
                  addi         s8, tp, 475
                  lh           a5, -121(sp)
                  sb           sp, -121(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+282 #start riscv_load_store_rand_instr_stream_2
                  lb           s10, -30(sp)
                  lb           a7, 55(sp)
                  lbu          a1, 20(sp)
                  lb           a6, -53(sp)
                  sb           s4, 49(sp)
                  lh           ra, 40(sp)
                  sb           t0, -45(sp)
                  lbu          s0, 17(sp)
                  addi         a1, a2, -1242
                  add          t5, a2, s10
                  lh           a7, 26(sp)
                  slt          s2, s0, s6
                  ori          a1, ra, -224
                  sb           t0, -55(sp)
                  lhu          s9, -32(sp)
                  sra          s1, s0, s6
                  sh           s0, -40(sp)
                  lbu          t5, -17(sp)
                  sb           sp, 37(sp)
                  sltu         t2, s1, zero
                  slli         s1, zero, 18
                  srl          s3, a0, a6
                  lb           t5, 61(sp)
                  or           t1, s4, s11
                  lbu          t6, 53(sp)
                  and          t6, s1, t5
                  lb           s3, -30(sp)
                  sll          s3, a5, a3
                  ori          s3, s2, 1595
                  or           t2, a0, a4
                  srai         s1, a0, 9
                  lbu          a5, 23(sp)
                  andi         s8, s5, 1834
                  lb           s1, -47(sp)
                  slli         gp, a4, 8
                  sll          gp, s11, s10
                  lbu          s1, -28(sp)
                  ori          a1, tp, -1312
                  lb           t1, 9(sp)
                  lhu          s5, -18(sp)
                  sra          s3, s5, zero
                  sb           zero, -51(sp)
                  lbu          s9, -19(sp)
                  lb           a3, 14(sp)
                  sb           zero, -13(sp) #end riscv_load_store_rand_instr_stream_2
                  srai         a6, a5, 7
                  sub          s4, t0, s5
                  srli         a5, a6, 26
                  xori         sp, t5, -663
                  and          t0, a1, s5
                  add          gp, t6, a6
                  sltiu        a0, s2, 155
                  srl          a4, t6, a6
                  bge          sp, s4, 19f
                  andi         t5, s3, 823
                  srl          a7, s2, t0
                  bgeu         a2, s0, 23f
                  or           s8, t3, t2
                  bge          s10, t5, 31f
                  bgeu         sp, s11, 28f
                  xori         s7, s8, 1173
                  srli         a7, a7, 16
                  blt          s8, a5, 35f
                  slli         sp, gp, 11
19:               auipc        t2, 98234
                  addi         a0, t6, 1515
                  xor          a2, s10, s7
                  slt          t4, s6, t2
23:               sltu         t1, t3, s0
                  xori         s7, s8, -1396
                  slt          ra, tp, a5
                  sra          a4, a1, t0
                  and          t5, a7, t1
28:               and          s7, s3, s3
                  bgeu         s10, s7, 45f
                  and          a3, tp, a7
31:               andi         s3, a5, 1613
                  bltu         t0, t0, 47f
                  xor          a3, a4, t5
                  xori         a6, a0, 549
35:               srl          t5, s7, t4
                  xor          s1, t0, s2
                  sub          a2, ra, a4
                  or           s0, a0, sp
                  beq          t3, gp, 59f
                  slti         a0, a7, 730
                  srai         zero, s1, 24
                  and          sp, t0, tp
                  nop
                  andi         a6, s10, 927
45:               beq          a5, t1, 48f
                  srai         s3, sp, 3
47:               andi         a5, t0, 927
48:               xor          a4, t5, s9
                  slli         zero, tp, 28
                  ori          s5, s10, 2021
                  bgeu         t0, a6, 64f
                  and          sp, a0, s6
                  and          t5, a1, t5
                  ori          s8, t3, 974
                  lui          s3, 1036691
                  nop
                  lui          s10, 607810
                  srl          zero, s11, s3
59:               slt          s3, s4, s9
                  bne          s9, gp, 68f
                  ori          sp, ra, 369
                  sll          s5, s5, gp
                  bne          a4, t2, 81f
64:               bltu         s0, s3, 80f
                  sra          s10, gp, t0
                  srl          t6, ra, s0
                  bge          s0, t4, 69f
68:               ori          t1, a3, -407
69:               sll          a4, s4, zero
                  sltu         sp, s9, tp
                  sltu         s1, a6, s10
                  bltu         tp, a7, 83f
                  andi         zero, a1, -761
                  sub          s4, a1, sp
                  blt          s7, s2, 88f
                  and          gp, s6, s3
                  slti         s1, s6, 819
                  la           sp, region_0+1282 #start riscv_load_store_hazard_instr_stream_2
                  lh           ra, -1236(sp)
                  add          t6, s5, t5
                  sb           t5, -1236(sp)
                  sb           s1, -821(sp)
                  lb           t4, -821(sp)
                  lbu          s5, -821(sp)
                  lh           t2, 654(sp)
                  lbu          s9, -1005(sp)
                  lb           a0, -1005(sp)
                  lbu          t1, -1005(sp)
                  lbu          s2, -1005(sp)
                  lbu          s10, -1005(sp) #end riscv_load_store_hazard_instr_stream_2
                  srai         t2, a4, 13
                  blt          gp, s4, 90f
80:               slli         a5, s3, 21
81:               or           zero, t2, ra
                  slli         gp, s1, 11
83:               srl          zero, a5, s1
                  sra          sp, s11, a1
                  lui          s5, 390638
                  andi         a2, zero, 515
                  sub          t2, s9, a4
88:               nop
                  slli         a4, a1, 8
90:               beq          a5, s8, 99f
                  addi         s8, a1, 1630
                  ori          a3, s9, 1168
                  blt          ra, s2, 94f
94:               addi         ra, a7, 1864
                  bltu         a4, ra, 104f
                  lui          a0, 151957
                  nop
                  xor          s2, t2, sp
99:               andi         a3, a4, -649
                  srli         a6, s0, 18
                  sub          zero, zero, a4
                  slli         a6, a3, 28
                  andi         s5, a0, 1361
104:              sll          s4, t6, tp
                  bltu         a5, t0, 106f
106:              and          t1, t1, s7
                  slti         s5, t0, 1361
                  slt          s9, s5, gp
                  andi         s4, tp, -1427
                  slli         sp, t3, 31
                  lui          s0, 10707
                  and          a1, s9, t2
                  andi         t2, t0, -1557
                  sltiu        a1, a5, -1312
                  bne          a3, s8, 121f
                  addi         a4, a4, -1270
                  slt          zero, s1, zero
                  auipc        s1, 753900
                  srli         a7, s11, 19
                  bge          a7, t6, 128f
121:              addi         s5, s10, 2020
                  sltu         s0, t2, sp
                  sll          a5, sp, s6
                  andi         s9, s1, -1559
                  srl          s0, t3, s4
                  srai         s8, s5, 18
                  bgeu         t4, s7, 147f
128:              beq          a7, t0, 130f
                  srai         a3, s11, 31
130:              andi         s0, ra, 1908
                  xor          s2, a6, t0
                  slli         zero, s8, 19
                  or           s9, a3, zero
                  xori         a2, s11, -344
                  bltu         s11, s3, 138f
                  ori          tp, s4, 1640
                  add          s0, s3, a6
138:              addi         s4, zero, -1
                  blt          s1, sp, 154f
                  srli         gp, a3, 12
                  and          tp, s7, a4
                  sltu         a4, a7, t4
                  slti         tp, a4, -1082
                  sltu         zero, s3, t4
                  srli         a0, s0, 29
                  srl          t6, t1, s8
147:              blt          t2, s6, 156f
                  lui          gp, 536655
                  beq          ra, s1, 169f
                  add          t0, a0, s6
                  andi         a7, s3, -930
                  sltiu        a2, a1, 698
                  sltiu        a5, a4, -519
154:              srli         a6, a3, 8
                  xori         a3, a6, -1448
156:              lui          a1, 299172
                  blt          s5, a1, 172f
                  srl          s1, t6, s6
                  andi         t5, zero, -1249
                  nop
                  auipc        s9, 468844
                  srl          s7, s11, s1
                  bgeu         a0, ra, 171f
                  sltiu        t4, t5, 2032
                  bne          s9, s2, 180f
                  slti         s8, a4, -1373
                  bltu         t5, tp, 178f
                  srai         s2, t0, 22
169:              srli         a0, s3, 0
                  addi         t1, a5, -1348
171:              add          s1, a4, s2
172:              sub          tp, sp, ra
                  add          t2, s4, ra
                  bge          a3, s3, 187f
                  beq          a4, s7, 190f
                  slli         zero, t2, 31
                  sll          tp, s7, a0
178:              xor          a1, s8, a5
                  sltiu        a5, s7, -269
180:              srai         ra, s11, 4
                  bltu         s0, t4, 199f
                  bltu         s3, a2, 195f
                  srai         s4, s10, 11
                  slli         a7, a6, 2
                  sltu         t6, s10, s10
                  sub          t2, s5, s0
187:              bge          s6, a2, 202f
                  addi         a3, a6, 1955
                  or           gp, s7, a4
190:              bge          s9, a0, 210f
                  andi         t0, t5, -1299
                  and          s0, t5, a7
                  auipc        s1, 471868
                  sub          gp, s0, t1
195:              ori          ra, t5, 898
                  srli         s4, sp, 5
                  sub          s1, t5, gp
                  bltu         t0, s8, 201f
199:              slti         t5, t1, -1984
                  slli         s8, a6, 25
201:              nop
202:              sll          t0, s3, t2
                  srli         a1, s3, 26
                  srai         s9, a5, 27
                  sltu         a2, s6, ra
                  sub          s0, a1, a6
                  blt          s8, a2, 225f
                  andi         t2, s2, -492
                  bne          a3, s6, 227f
210:              slti         t1, t0, 849
                  sll          t0, s3, s2
                  slt          s10, ra, a1
                  add          t4, a0, s0
                  add          s0, s0, s7
                  srl          s7, t0, t3
                  addi         t2, s7, -622
                  slti         a5, t0, 1454
                  sll          s1, s6, t2
                  slti         sp, t2, -1451
                  beq          a4, t6, 222f
                  bge          s1, s9, 224f
222:              and          s2, s4, a4
                  slt          a3, t0, s5
224:              slli         zero, s6, 2
225:              sltu         tp, t3, s6
                  bltu         s8, t0, 235f
227:              auipc        sp, 933870
                  srli         s9, s3, 13
                  srli         s7, t4, 20
                  srai         a6, t1, 2
                  beq          zero, a5, 251f
                  srai         a1, t6, 26
                  addi         t6, s4, -817
                  addi         s10, s11, 1756
235:              add          t4, s10, t3
                  srai         t1, a6, 15
                  sll          s0, s9, t6
                  bltu         s3, a1, 249f
                  lui          t1, 868885
                  slli         s4, s3, 24
                  sra          t4, a0, s0
                  bge          zero, s1, 250f
                  or           t0, s4, a0
                  srl          tp, s3, ra
                  beq          a4, a6, 265f
                  srli         s10, zero, 4
                  srl          s0, a6, gp
                  sub          gp, s8, s5
249:              slt          t5, gp, t6
250:              ori          s9, s5, 1227
251:              bltu         zero, s8, 260f
                  lui          t6, 781790
                  auipc        s8, 849760
                  srai         gp, t5, 11
                  beq          s4, s3, 267f
                  slt          a4, s3, t0
                  xori         t1, s0, 789
                  bgeu         a5, t6, 274f
                  add          a7, a4, a0
260:              beq          a5, s1, 261f
261:              bge          s9, a4, 275f
                  srai         s3, t3, 28
                  or           s2, zero, ra
                  beq          gp, s4, 270f
265:              andi         tp, ra, -390
                  beq          s6, s2, 268f
267:              bgeu         a3, s9, 283f
268:              srl          s4, s5, s1
                  xori         s5, a0, 1165
270:              bge          t2, a2, 271f
271:              xor          t0, s10, a6
                  sub          s8, s0, t5
                  blt          s4, a0, 284f
274:              add          s0, t4, a0
275:              and          a2, zero, a7
                  sll          s8, tp, a1
                  slli         s3, a6, 20
                  slli         a7, t2, 21
                  sll          s3, a5, t3
                  sra          sp, t3, s11
                  sltu         a2, t4, a4
                  sra          s3, s7, t3
283:              and          a4, t0, t4
284:              add          a4, s9, t3
                  sll          s0, s4, a3
                  srl          s9, a6, t2
                  bge          s10, s3, 296f
                  bne          a1, t3, 290f
                  blt          a5, s5, 290f
290:              srai         zero, gp, 14
                  srai         s1, a5, 18
                  sra          a3, s8, gp
                  auipc        s2, 227614
                  andi         s2, t2, -1760
                  auipc        s9, 928939
296:              srl          zero, t3, a6
                  andi         a7, tp, -1668
                  bltu         a3, s11, 300f
                  sra          sp, gp, s5
300:              blt          a2, s0, 318f
                  slti         t4, zero, 1519
                  srl          t0, a0, t1
                  blt          a1, s4, 314f
                  bltu         s0, a1, 320f
                  bne          s10, s2, 306f
306:              sub          t6, t2, tp
                  slti         t1, s0, -1817
                  addi         s10, s2, 1655
                  and          a5, tp, a2
                  and          s10, gp, a1
                  auipc        ra, 585057
                  or           s3, a7, t4
                  xori         a2, s5, -239
314:              bne          sp, t1, 326f
                  and          s9, s10, a0
                  nop
                  and          tp, tp, s5
318:              xor          a3, gp, s10
                  bgeu         gp, t3, 328f
320:              srli         a3, a0, 18
                  andi         t4, s11, -1694
                  and          s2, s3, sp
                  bltu         t2, zero, 338f
                  sltiu        s5, s11, 1869
                  slti         s4, a2, -894
326:              or           s4, a5, s0
                  sll          a3, a4, t5
328:              sub          s4, tp, s4
                  bne          s10, t0, 342f
                  sll          s2, zero, t5
                  bgeu         s4, a2, 351f
                  xori         s7, sp, 562
                  slli         s0, t2, 1
                  slt          t5, s8, tp
                  srli         sp, sp, 14
                  add          a5, s11, s3
                  beq          s6, s11, 346f
338:              srai         a7, t3, 23
                  sltu         a6, gp, a4
                  srai         s8, s6, 2
                  beq          a6, a0, 359f
342:              slt          tp, zero, t1
                  sra          s7, t0, t5
                  or           a0, s11, t2
                  xor          s7, tp, a6
346:              sra          a5, t3, a5
                  sll          t4, s7, s10
                  bgeu         s9, a4, 351f
                  bne          zero, t3, 357f
                  bgeu         gp, s7, 365f
351:              sub          a4, a0, s4
                  srl          t0, t4, s0
                  xor          t5, s5, s2
                  slti         s1, zero, -613
                  slt          sp, s0, a5
                  addi         t6, a0, -1620
357:              sltiu        zero, s0, -537
                  bgeu         a7, a1, 366f
359:              or           s3, t4, sp
                  bltu         s8, a1, 376f
                  blt          t4, a4, 364f
                  srli         s5, sp, 29
                  xor          s5, s10, s8
364:              sltu         s10, ra, s7
365:              xori         s3, t5, 423
366:              lui          t1, 813011
                  and          a7, s3, s8
                  srli         s10, a7, 14
                  sub          s3, t5, s10
                  xori         s4, s9, 1690
                  xori         tp, t0, 1540
                  bltu         s5, t2, 392f
                  andi         s2, sp, -1159
                  slti         a2, t1, -1296
                  xor          a5, s1, sp
376:              beq          t3, a6, 389f
                  andi         a7, t1, -1668
                  xor          t2, s11, s1
                  ori          a7, t2, 355
                  bltu         t6, zero, 400f
                  sub          s10, tp, a6
                  bgeu         s1, t3, 388f
                  xori         s10, a2, -123
                  addi         a0, s7, -925
                  addi         s0, a1, 407
                  slt          a1, a4, s8
                  blt          sp, a3, 405f
388:              sra          a3, t5, s2
389:              srl          a0, s1, tp
                  andi         tp, gp, -835
                  slt          zero, s8, a6
392:              srli         t4, t0, 11
                  or           s2, t6, a0
                  lui          t6, 384233
                  xor          a0, s7, s10
                  slli         t4, s0, 7
                  sra          a0, s4, t5
                  nop
                  and          t4, t3, s1
400:              add          gp, s11, a3
                  sra          s5, s6, t1
                  sll          a1, zero, tp
                  sltu         t1, s6, a6
                  slli         s9, sp, 15
405:              slli         s0, t2, 13
                  or           a7, s1, ra
                  addi         s4, s6, 1836
                  andi         a4, s2, -1531
                  sltu         s3, s10, s1
                  nop
                  sll          t1, a4, a7
                  slti         s1, a1, -1936
                  blt          a2, s8, 427f
                  srli         t0, zero, 4
                  ori          a1, gp, -1942
                  sltu         t0, t1, s0
                  ori          a1, s9, -42
                  sub          a3, s7, a3
                  bltu         a7, t5, 428f
                  nop
                  xor          s9, s4, ra
                  bltu         a1, s6, 433f
                  andi         s10, zero, -1807
                  bne          s6, s6, 435f
                  addi         s10, a6, -1413
                  nop
427:              andi         s10, a0, 1221
428:              srai         s1, zero, 16
                  sra          s1, s4, a7
                  xori         s0, s0, -1634
                  add          a5, a7, t4
                  srai         s8, s8, 20
433:              bge          s6, a7, 448f
                  sltiu        t5, a3, -1718
435:              sll          t6, a3, s5
                  bgeu         s0, sp, 439f
                  sub          a3, a0, a5
                  sub          s4, s1, a0
439:              andi         gp, a5, -1061
                  sub          t5, a6, t3
                  srai         t6, s8, 2
                  slti         s10, t6, -280
                  sra          ra, gp, t1
                  sltiu        t2, s0, -947
                  addi         s5, gp, 879
                  slt          ra, s8, tp
                  add          s2, s0, s0
448:              and          s2, gp, s2
                  srl          s3, s7, s5
                  xori         s8, a5, -742
                  beq          s4, s8, 462f
                  bne          s9, t5, 470f
                  bge          a1, a5, 456f
                  blt          s9, s8, 474f
                  and          sp, s8, a1
456:              sltu         a3, ra, s0
                  xor          s0, s11, a2
                  srli         t1, t1, 3
                  andi         t6, s6, -1515
                  andi         s1, ra, 617
                  sub          s10, s11, s6
462:              or           s9, gp, t1
                  slli         s4, a2, 13
                  bltu         gp, s5, 475f
                  bltu         s8, s0, 466f
466:              bgeu         s6, t5, 482f
                  addi         s9, t3, 1459
                  blt          s2, zero, 483f
                  or           a0, a2, s1
470:              xor          t4, s3, s1
                  sra          s0, t5, s2
                  sltu         a3, a6, s3
                  addi         s3, s8, -1312
474:              slt          t5, a6, a5
475:              or           s4, t1, s2
                  srl          t2, s2, t4
                  lui          a2, 2595
                  bne          zero, s6, 480f
                  auipc        s4, 848401
480:              bne          a6, tp, 486f
                  bltu         t0, a4, 491f
482:              sll          s4, a1, a0
483:              ori          t2, t5, 642
                  bgeu         s2, sp, 491f
                  bltu         s0, s10, 491f
486:              srli         a1, t3, 4
                  sltiu        s1, gp, -1276
                  bne          s9, s5, 491f
                  srli         t6, t1, 29
                  xori         s1, a1, -253
491:              add          s1, a6, t2
                  lw           a5, 4(s6)
                  ori          a7, s1, -1379
                  addi         s6, s6, 32
                  andi         a3, s10, 1373
                  add          s9, s2, s3
901:              addi x12, x15, 0
901:              jalr x12, x12, 0
sub_2:            blt          s9, s3, sub_2_stack_p
                  sltiu        s0, t0, 1137
                  sll          a1, a6, s11
sub_2_stack_p:    addi         s6, s6, -16
                  sltiu        a0, a2, 396
                  sw           a5, 4(s6)
                  srl          s7, s1, t0
                  la           t5, region_1+284 #start riscv_load_store_rand_instr_stream_1
                  slt          s8, gp, t5
                  sb           t1, -15(t5)
                  sh           t1, -14(t5)
                  sh           t5, 10(t5)
                  nop
                  sb           s11, -13(t5)
                  sra          a4, a6, a5
                  xori         t1, gp, 845
                  lb           a2, -7(t5)
                  lui          a2, 983255
                  andi         s1, s11, 1766
                  sb           a1, -12(t5)
                  and          gp, t0, a2
                  nop
                  add          a3, s8, ra
                  lhu          s10, 14(t5)
                  srl          s9, t2, s9
                  srli         a7, s2, 18
                  slti         sp, zero, -2012
                  sltiu        a2, ra, -263
                  lbu          s10, 15(t5)
                  sb           s0, 1(t5)
                  xor          sp, a1, s9
                  xor          a0, t4, a4
                  lw           s1, 4(t5)
                  xori         s1, tp, 359
                  sb           s8, -13(t5)
                  sh           a5, -14(t5)
                  auipc        s10, 15528
                  xor          s4, s10, a1
                  sh           t3, -14(t5)
                  add          s10, s9, s0
                  sub          s9, t4, t0
                  sra          ra, s0, a6
                  auipc        s8, 165996
                  ori          sp, a1, 91
                  sb           sp, -11(t5)
                  xor          t6, s1, s10
                  sh           s7, 8(t5) #end riscv_load_store_rand_instr_stream_1
                  la           s8, region_1+502 #start load_store_instr_stream_0
                  sb           s2, 11(s8)
                  la           s3, region_1+631 #start load_store_instr_stream_2
                  lb           a7, 30(s3)
                  la           s10, region_1+5 #start load_store_instr_stream_1
                  sb           t4, -13(s8)
                  lb           a4, -27(s3)
                  sb           a6, 110(s10)
                  sh           tp, -43(s3)
                  lbu          a7, -26(s3)
                  lb           tp, -15(s8)
                  lbu          s9, 89(s10)
                  sb           t2, 58(s3)
                  sh           t1, 11(s3)
                  lbu          gp, -47(s3)
                  lhu          a4, -10(s8)
                  lb           gp, 228(s10)
                  lhu          zero, 14(s8)
                  lb           t6, 228(s10)
                  lb           s7, 72(s10) #end load_store_instr_stream_1
                  lh           s0, 3(s3)
                  sb           tp, -11(s8)
                  lbu          t5, -9(s8)
                  lh           t5, 0(s8)
                  lhu          a5, 19(s3) #end load_store_instr_stream_2
                  lb           a0, 5(s8) #end load_store_instr_stream_0
                  la           a6, region_1+1780 #start load_store_instr_stream_1
                  la           ra, region_1+1111 #start load_store_instr_stream_0
                  sb           s3, 13(a6)
                  lb           sp, -45(ra)
                  lbu          a3, -9(a6)
                  sb           s2, 52(ra)
                  lbu          t0, -14(a6)
                  lb           s1, -56(ra)
                  sb           a5, -10(a6)
                  lh           gp, -57(ra)
                  sb           a2, -61(ra)
                  lb           s2, 12(ra)
                  lbu          a1, -9(a6) #end load_store_instr_stream_1
                  lh           t2, 31(ra)
                  lbu          a7, 14(ra)
                  sb           a6, -38(ra) #end load_store_instr_stream_0
                  la           sp, region_1+1492 #start riscv_load_store_hazard_instr_stream_1
                  lb           a4, 364(sp)
                  auipc        t5, 726988
                  lbu          s2, 364(sp)
                  lb           a4, -1111(sp)
                  lb           a2, -1111(sp)
                  sb           t0, -1111(sp)
                  lb           s7, -1111(sp)
                  lbu          a4, -1111(sp)
                  sb           sp, -1111(sp)
                  sb           t5, -1111(sp)
                  lb           t5, 158(sp)
                  lh           a5, -854(sp)
                  sub          a1, t6, a0
                  srl          a7, s6, a5
                  lh           a2, -1132(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+828 #start riscv_load_store_rand_instr_stream_0
                  lhu          s5, 0(sp)
                  sra          s4, s2, s11
                  lw           s8, 4(sp)
                  and          a6, a6, a1
                  sh           s1, 14(sp)
                  sw           t6, 16(sp)
                  sltiu        s0, s3, 498
                  slt          ra, gp, a6
                  lbu          s5, 2(sp)
                  lhu          a7, 14(sp)
                  sb           a6, -3(sp)
                  or           ra, a6, t5
                  sltu         t1, t0, t3
                  sub          a5, a0, a1
                  andi         s9, t0, 1147
                  lbu          s10, 7(sp)
                  slt          a1, gp, gp
                  sb           s10, -12(sp)
                  slt          s4, t5, a4
                  sh           s7, -12(sp)
                  lb           s0, 7(sp)
                  sltiu        s5, ra, -1519
                  slli         s2, a3, 8
                  lhu          a6, 2(sp)
                  ori          s1, sp, -1122
                  lbu          a6, -9(sp)
                  nop
                  srai         a6, t3, 30
                  nop
                  srl          ra, t4, a3
                  lhu          a5, 12(sp)
                  srl          a7, t5, zero
                  lb           a3, 10(sp)
                  ori          s3, a1, 1537
                  auipc        gp, 185346
                  lb           a2, -2(sp)
                  lh           s9, -4(sp)
                  lb           t4, 9(sp)
                  or           t5, t3, s8
                  lb           s9, 13(sp)
                  lhu          a0, 16(sp) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_0+30 #start riscv_load_store_hazard_instr_stream_0
                  lw           sp, 6(gp)
                  lhu          a5, 6(gp)
                  slti         t2, t3, -534
                  sltiu        zero, a6, 1632
                  lhu          t0, 0(gp)
                  sb           t5, -9(gp)
                  sb           t2, -9(gp)
                  lh           a2, -2(gp)
                  lb           zero, 13(gp)
                  lbu          s9, 13(gp)
                  sll          s10, t5, t4
                  lbu          a4, 9(gp)
                  lhu          t2, 16(gp)
                  sb           t5, 16(gp)
                  lb           t2, 16(gp)
                  lb           s3, 16(gp)
                  sb           t2, 13(gp)
                  ori          s2, s2, -1900
                  sltiu        a5, s2, 152
                  sra          s8, s6, s1
                  lw           s0, -2(gp)
                  sw           a4, -2(gp)
                  sw           s1, 2(gp)
                  lh           tp, -16(gp)
                  lhu          a3, -16(gp)
                  and          s0, t4, tp
                  sb           a4, -3(gp) #end riscv_load_store_hazard_instr_stream_0
                  ori          sp, a2, 979
                  blt          s10, a6, 14f
                  srli         a4, s6, 22
                  bge          ra, a5, 19f
                  addi         a6, s6, 1462
                  slti         s0, s3, -1005
                  sltiu        zero, tp, 303
                  slt          t4, ra, s0
                  nop
                  and          a2, s11, t3
                  bltu         a2, sp, 15f
                  sra          a7, gp, t6
                  lui          a0, 476477
                  slt          t1, a0, s7
14:               auipc        s2, 578943
15:               and          s3, s8, zero
                  add          ra, s6, a7
                  bne          a3, s10, 28f
                  auipc        sp, 474700
19:               bgeu         s5, s4, 38f
                  sra          a1, s8, s3
                  nop
                  auipc        s9, 87333
                  srl          t6, t6, sp
                  beq          s5, s11, 40f
                  srl          sp, t1, a6
                  sra          s10, t0, s3
                  slti         s10, a2, 1663
28:               sltiu        a1, s4, -569
                  nop
                  slli         s8, t2, 10
                  slt          s4, t2, s4
                  nop
                  bne          s10, gp, 45f
                  bne          t4, t1, 44f
                  sub          zero, s4, s11
                  lui          s7, 726018
                  xori         s10, t3, 2016
38:               nop
                  bgeu         s3, s0, 50f
40:               sra          sp, t4, a1
                  bltu         t4, s9, 51f
                  andi         ra, a1, 79
                  sll          s2, tp, a6
44:               sltiu        t5, gp, 1617
45:               srai         t1, a1, 5
                  lui          t6, 37013
                  auipc        s1, 778265
                  sra          s0, a4, zero
                  bgeu         s2, s10, 61f
50:               bge          s2, t5, 65f
51:               bltu         a6, t5, 70f
                  xor          a3, t4, t2
                  bge          s3, gp, 66f
                  srl          s10, t0, s4
                  slti         a3, t5, -234
                  and          s5, t6, t2
                  addi         sp, t4, -1046
                  sub          t6, gp, ra
                  sra          t5, a3, s5
                  ori          s8, s8, -545
61:               beq          s3, t5, 68f
                  sll          a5, t4, t3
                  add          s8, t2, ra
                  xor          zero, sp, t0
65:               slt          a7, s7, a1
66:               slti         t0, s2, -368
                  nop
68:               sltu         t1, s1, t3
                  sltiu        s4, t3, -817
70:               sltu         s10, s1, zero
                  auipc        a1, 242952
                  bne          s1, s9, 79f
                  sra          a4, t1, s5
                  slti         t6, a5, -1999
                  sltu         a5, s10, a0
                  ori          a3, t1, 950
                  nop
                  slt          s8, a6, t6
79:               srai         s3, t3, 5
                  nop
                  auipc        a1, 881771
                  lui          s10, 664889
                  slti         t2, a4, 1707
                  addi         tp, sp, -1266
                  addi         t1, t1, -1809
                  add          s5, s10, a1
                  sll          a1, s1, t2
                  bge          s10, a2, 90f
                  sra          a5, s3, zero
90:               auipc        s9, 388144
                  lui          t4, 463704
                  slli         s2, a1, 15
                  sll          gp, t1, zero
                  xori         s2, s1, 518
                  slt          t2, t2, a4
                  auipc        s1, 182324
                  lui          a4, 705269
                  bne          a7, s7, 101f
                  lui          a4, 393876
                  slt          s8, a6, t2
101:              bgeu         s7, t2, 117f
                  srli         s2, s2, 29
                  sltu         a7, s0, a3
                  bne          a7, t4, 118f
                  srl          a2, s2, s1
                  sltiu        s1, a2, 1557
                  sltiu        s8, s0, 682
                  sltiu        t2, a2, 667
                  add          a6, a5, s9
                  sub          s5, sp, s5
                  sll          s9, s6, s7
                  or           s8, t3, t5
                  bne          t4, a4, 115f
                  sra          zero, s7, a1
115:              srli         s0, a6, 26
                  sll          a0, s0, t4
117:              add          t6, s6, sp
118:              nop
                  bltu         a4, t1, 123f
                  or           s3, a2, a1
                  slti         t2, ra, -286
                  andi         t1, ra, -690
123:              or           s4, a2, s1
                  lui          s4, 969527
                  sltu         s1, a5, a5
                  xori         t1, a2, 1764
                  sra          t5, s6, t1
                  bgeu         a3, s7, 145f
                  srli         s2, a3, 27
                  slti         a3, s2, -1881
                  srai         sp, s9, 2
                  bge          s2, a3, 136f
                  slli         t2, a7, 4
                  bne          a0, t3, 142f
                  slli         a5, gp, 11
136:              sll          s10, sp, a7
                  srl          a7, t4, s5
                  ori          s8, sp, -899
                  addi         s8, s2, 1296
                  slti         s5, sp, 1807
                  and          a0, a5, a0
142:              xori         t5, s6, -1736
                  ori          t6, s5, 10
                  srl          ra, s4, a5
145:              xor          gp, t2, s10
                  add          a4, s9, s2
                  sra          s3, t3, s4
                  xori         s1, a6, 535
                  nop
                  beq          s3, t2, 163f
                  sra          t6, a1, t1
                  srai         zero, s6, 25
                  slti         s4, a5, 1942
                  beq          ra, a3, 167f
                  add          ra, t5, s0
                  sub          s5, s3, a4
                  bge          a5, s4, 166f
                  sra          zero, s8, s6
                  sltu         zero, a1, t3
                  bne          s10, ra, 171f
                  ori          s5, s5, -523
                  addi         t6, t1, 1540
163:              lui          a3, 16273
                  sltiu        t1, t4, 1053
                  sra          t2, s8, t6
166:              bne          s4, t5, 181f
167:              nop
                  srai         a6, s0, 15
                  beq          s1, s9, 182f
                  beq          t2, a7, 172f
171:              or           a2, t3, s4
172:              lui          a6, 345218
                  auipc        gp, 118258
                  add          s4, t0, s4
                  or           s8, t1, t6
                  srai         s9, s9, 16
                  and          gp, s6, t3
                  ori          tp, s8, -857
                  slli         a3, a4, 24
                  bne          s6, ra, 195f
181:              sltu         s10, s3, zero
182:              lui          t1, 570764
                  bltu         a4, s4, 187f
                  slti         s1, s7, -1107
                  addi         t0, a0, 500
                  sltu         s0, s9, a4
187:              andi         t4, s7, 2035
                  xori         s4, a2, -1769
                  sll          s2, s8, t1
                  lui          gp, 1013853
                  lui          t2, 73996
                  beq          s3, s5, 211f
                  xori         a3, s10, -569
                  sltu         s3, a1, t3
195:              bge          a1, s0, 211f
                  ori          t5, tp, -1349
                  srai         s5, a4, 15
                  srai         a3, t2, 0
                  sltu         s5, s9, ra
                  srli         a7, ra, 4
                  slt          tp, a5, s6
                  blt          s5, s11, 204f
                  blt          a6, s2, 213f
204:              addi         a4, t5, 202
                  bge          s2, tp, 213f
                  add          zero, t0, t4
                  xori         s1, a6, 1172
                  bltu         a0, s10, 213f
                  bgeu         s11, a4, 212f
                  sll          gp, s6, s6
211:              ori          a0, s7, 814
212:              slt          t1, s11, s10
213:              ori          zero, s8, 192
                  xor          tp, a3, a0
                  xori         s5, s5, 623
                  slt          a7, t6, t2
                  sra          t0, t1, t0
                  slt          zero, s0, a4
                  auipc        sp, 23428
                  ori          t5, t6, 1857
                  lw           a5, 4(s6)
                  xori         a2, s2, -1873
                  addi         s6, s6, 16
                  and          s9, s5, t4
                  srl          zero, a2, a2
401:              addi x12, x15, 1
401:              jalr x12, x12, 0
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
.word 0x3292f477, 0xec40d696, 0x2e05ebed, 0x7c062739, 0xfcb17131, 0x27bc51cd, 0x5ad792be, 0xe8fcabc6
.word 0xc04c44c2, 0x400dbeea, 0xd7156f22, 0xc3b1f0c9, 0x5a0e6689, 0x1f06a59d, 0x08716746, 0xea5e5a51
.word 0xdefba9f5, 0x46746c5a, 0xcdac8281, 0x7bb8aeb4, 0x367e5791, 0x2ff44343, 0x4d4effa4, 0xb13d5ef2
.word 0x8c15615b, 0xc8802808, 0x801cf402, 0x0c6708bd, 0xf0282a3c, 0x7071b31d, 0xc2bdcfca, 0xa3b73a60
.word 0xb3caff94, 0xacd2f399, 0xa2c5778f, 0x0adb79d1, 0x36eabfe0, 0x58564699, 0x69bf8f62, 0x39284355
.word 0x3ecada0f, 0x86a990ac, 0x3a6ccc40, 0x26a84cfd, 0x82155cc2, 0x5cb3aa3e, 0x3c5ae018, 0x6dee7b82
.word 0x6bb58635, 0xfb8bb161, 0xc2c31f89, 0x4a729a9f, 0xde4b2839, 0xf48e07c5, 0x5ed7ec87, 0xa765ad44
.word 0x035d67f6, 0x15c0ca0b, 0x2dcaa4e4, 0x39386db9, 0xd4b166fa, 0xd76c9792, 0x302ed0aa, 0xf1f57930
.word 0x5d960bd5, 0x255dabba, 0x89b4b28e, 0x4f869272, 0x48e0adb1, 0x77ad4eab, 0x02da3b7e, 0xa7e4ac83
.word 0x37a78f5d, 0x54418cde, 0x80b63dd6, 0xc779aa3f, 0x78b21bbb, 0x44cee70d, 0xcc00463f, 0xda36481e
.word 0x3eb79bdc, 0xb3ce9fb4, 0x79f3547c, 0xa6d8c2c0, 0x7a6facbb, 0x85f18269, 0xffa193a0, 0x049e12b3
.word 0x3b4e5d09, 0x6405ab2e, 0x7ed02444, 0x19301392, 0x27d9fdb3, 0x12ec9cad, 0x6810f296, 0x5137614c
.word 0x13307550, 0xc70f76a5, 0x1e710a5b, 0x6f79ae6c, 0x113d8e52, 0x0eacd2fe, 0x5d2ee0ac, 0x3b58206b
.word 0xf341909e, 0xeb3aa74e, 0x4a2b73bc, 0xcb00a999, 0x61727d9d, 0x86a50eac, 0xddc64ac5, 0x9605f792
.word 0xdd0d7b8e, 0xa1abb5cc, 0xe8c00a8b, 0x2ae97300, 0x3d79b78f, 0x153d2613, 0xe4a97207, 0xe70d1a7f
.word 0xc58f00e2, 0x9d80ca4f, 0xe7d0366a, 0x726107a7, 0xcd28ac54, 0x03b0d80f, 0xf7e71cfd, 0x8f38f1d9
.word 0x39ae3ca6, 0x7293261d, 0x44108ad4, 0x1bcbf1fe, 0x941a0f52, 0x16966c9f, 0x465ddb27, 0x4cf6c489
.word 0x0b71a334, 0x541c844b, 0x15716dd8, 0x8de411ef, 0x30f1fe97, 0xedb8adf4, 0xc34d1454, 0x8404742b
.word 0x11e85d71, 0x2de2a985, 0x1d0f1c43, 0xeed02560, 0x656c6380, 0x3d19d05b, 0x0678369c, 0x01b3d26e
.word 0xbb76e177, 0x811daa12, 0xd8dc138c, 0xfff6b5f4, 0x9bb66810, 0x2efb842b, 0xfb13e0a2, 0x42c686a0
.word 0xe2e39b7c, 0x3f53cdf9, 0x3175bbe7, 0xc29bab57, 0x40cd4bb6, 0x1f7c2d5c, 0x96e08653, 0xd73c8f38
.word 0x474872c2, 0x41e4c4ee, 0x89699ad1, 0x4967ef44, 0x67c1ddb8, 0xc860f0da, 0x5f24ac21, 0xfc68164b
.word 0xf11c49fd, 0x3bbde9b4, 0x7a6c6871, 0x9f3989a0, 0x77783e10, 0xc31666a4, 0x2db4449f, 0x4da6391c
.word 0x4966b518, 0x7c272209, 0x7eea2595, 0x0899b6ed, 0x2a755fce, 0xe070c703, 0x64df32df, 0xcf20e092
.word 0xe75c117d, 0xd257f1a3, 0xcf4b7b2d, 0x1d26c84c, 0xe3f4f5cd, 0x2612ebbe, 0x386fda05, 0x19e738b7
.word 0x822a8aff, 0x46f2c116, 0x30bb647f, 0x99977053, 0xb46af64c, 0xbfd96381, 0xa053df8b, 0x500d5cca
.word 0x67ee9065, 0xaeeb31a3, 0x5cfd224e, 0x145f9104, 0x0648465f, 0x6654ebc1, 0x7342f233, 0xea55a1a5
.word 0x1ad93963, 0xa4ef7bcb, 0x6b91608a, 0x385d6522, 0x2ee6e1d8, 0x1a96fe5a, 0xadb08a54, 0xb4a9938d
.word 0x8c0df5f5, 0xefcc0d2f, 0xb8dac17f, 0x7b182d21, 0x58b9e808, 0xb2223e2e, 0xa5559720, 0x9f8626bf
.word 0x474c472f, 0x3ba33417, 0x729a2784, 0xbc75310f, 0x68386178, 0x945b846f, 0x41e6a6fe, 0xd54321a4
.word 0x1215fbcc, 0x452f3edd, 0x7ed685af, 0x48718fa4, 0xdb284b10, 0x00bd2d95, 0x294156b7, 0xb117e14c
.word 0xc9480284, 0xc5651933, 0xd09a7ce7, 0xf956cd1b, 0xafb1ff71, 0x5d9f28c3, 0xbefdd51a, 0x4dee065f
.word 0xb52f6ec9, 0x137ba9b4, 0xd093c3bc, 0x28901a60, 0x100a84f3, 0xe8a3e38d, 0x13f97f41, 0xf1f90277
.word 0x0dfd0ee0, 0x94ff09ee, 0x14ec6017, 0xd21d9f1a, 0xaf28cc36, 0x70bd292b, 0xa6c6311a, 0x2f94a022
.word 0x021c2339, 0x35526662, 0xe2f3e1cc, 0x1210b029, 0x3737bb78, 0x010ba428, 0x04137354, 0xa243855b
.word 0x72023b43, 0x8b70eb3c, 0x510d7d8e, 0x6f57f840, 0xfe8c6e5d, 0x6f9f8581, 0xebe6c138, 0x7960415a
.word 0xa62f7134, 0x8ebf4d34, 0x641cbeac, 0x63443828, 0x56a2b4d6, 0x1a48d26d, 0x3f96662c, 0x20c7e47c
.word 0xf7b44786, 0x37448c01, 0xa6e46c15, 0x19dc1e02, 0x628c60b0, 0x0a79737b, 0x887b3b70, 0x351edb3b
.word 0xfd3fcc30, 0x5aa795d3, 0x7f1cc76a, 0x6da4f4e5, 0x1bd9520b, 0x6c90c757, 0xe9765f8f, 0x3f76a5e8
.word 0x67ed1c61, 0x0ace4f49, 0xe36dd30f, 0x3f87a3a6, 0x05bcf973, 0xcfc7de24, 0x615bf92b, 0xa587ab81
.word 0x28689358, 0xcf959342, 0x505031c9, 0xb58ad255, 0x523478a7, 0x62249748, 0x11c5a117, 0x7e3710ca
.word 0x4c4ae45a, 0xa893f1c1, 0xbef3a062, 0x78fb31c9, 0xcfaf2c2d, 0xe96937d9, 0x8573d95c, 0xe9a25ebc
.word 0xda2631bb, 0x22891b7a, 0xc5280a9b, 0x6c5eaf48, 0xe44371c1, 0x360a1eb3, 0x500d9d8a, 0xff5047d1
.word 0x624a31b2, 0x5ed09148, 0x840d6868, 0x962ce42f, 0x73d0ad0b, 0xab9131ec, 0x3db034b8, 0xfb1b0a8b
.word 0x116f51c9, 0xb8a4f079, 0x58d3cde9, 0x7f0136fd, 0x8e09b5a1, 0xb2aa0690, 0x7d01c062, 0xd24f5de6
.word 0x6d6e6ccb, 0xa1eb77e5, 0x4880d1c1, 0x7c0af8ce, 0x8df6a1e5, 0x5443a9cc, 0x42b7df1a, 0x21a8d1f3
.word 0x1991fb75, 0xa3f1be20, 0x28a7e5ab, 0xd6f95520, 0x5a4d287b, 0xc5547031, 0xe4ebcd62, 0xec879380
.word 0x1a595bbf, 0x70d8ca0a, 0x152b7c1f, 0x65cd3ce9, 0x1fd0dde6, 0x426879c3, 0x57faf60f, 0x46e41a5a
.word 0x8741ac03, 0x4a6c79c7, 0x7cacb9d1, 0x78a8981a, 0xbe8cdd10, 0x2b31ccde, 0x155c1c0b, 0x5ab79f3a
.word 0xc96b1c90, 0x7505a88f, 0x8ce0c843, 0xcd97cc3d, 0x18f66b62, 0x3fea0748, 0xe99356b3, 0x5b0df240
.word 0x1aabf31b, 0x91a2997d, 0xe0c8bebc, 0x17754c6d, 0x824966ae, 0x3987c70e, 0x04593741, 0x6d7628ea
.word 0xb34a9ad9, 0xf7b5dd2e, 0xfe47b427, 0xc1734b6b, 0x5deea5bc, 0xc7b418a7, 0xb6168dbe, 0x08c873dc
.word 0x5378560f, 0xd342de10, 0x01a2252d, 0x1cb4152b, 0xdcf81e23, 0xce347389, 0x8f6cd1a4, 0xd6bc6c20
.word 0xaeb3626b, 0x76a02af7, 0x130d3e32, 0x72803a98, 0xeee42bfd, 0x7ffa167d, 0x1409c870, 0x5a8330eb
.word 0x07693cef, 0x26b3d77e, 0xed012d14, 0xe2899003, 0xe14b1cbf, 0x1346c970, 0x7bbc2ef6, 0x0d241bf3
.word 0xc99c2935, 0x21dd180f, 0xd8966e59, 0xbe279ae2, 0x8c47fb49, 0x089be463, 0xe378015c, 0xfb7a0331
.word 0xddec4855, 0x8accfec3, 0x7d66a33f, 0x5623a0ce, 0xe270822f, 0xe81a0fec, 0xae4caf03, 0x52931037
.word 0x7baca0cc, 0xb33b7184, 0x0504d67c, 0x31c0c95a, 0x2c2c1ea0, 0x62767e72, 0xfd3e7b41, 0x9262f059
.word 0x1e60e5c1, 0x4c038f74, 0x05207179, 0x854a96d2, 0xcd16bcbf, 0x75194797, 0x2083d9aa, 0x7d1f1041
.word 0x76edf40c, 0xa0f14b4a, 0xd6e551e8, 0xeab3acf5, 0x6bb20a2f, 0xb5fa79fa, 0x99ff17f8, 0xdb1980c7
.word 0x8cb393af, 0x2ba3cf6c, 0xae9cac6c, 0x186d463d, 0x8f9a1f59, 0x2e4192d3, 0x72285611, 0x0984647f
.word 0x997d549a, 0xbea327fb, 0x57470d55, 0xc57a97cd, 0x22b49145, 0xc4d7a7d8, 0x58f028e8, 0x7b5047ff
.word 0xb7ecacf1, 0x49a63a63, 0xe2528b18, 0x76758d76
.section .region_1,"aw",@progbits;
region_1:
.word 0x4d5673fa, 0xa2feb8d5, 0x5f2caf8e, 0x27ecb80f, 0x3526f1cf, 0x204aaed8, 0x1ddab260, 0xb0332dd8
.word 0x25a3cc86, 0xcb4e6a96, 0x9db4b4d8, 0xc4aea350, 0x25f18efd, 0x5b665099, 0x806b2c82, 0x8e24077f
.word 0xfa31144f, 0x4d46dc74, 0x38cba629, 0xae64749e, 0x670039de, 0x428afbf8, 0xe3f5256d, 0xd3069a93
.word 0x871148d9, 0xd1144eea, 0xbf213a02, 0x857ec8f5, 0x4711b474, 0xfc496b99, 0x96eb8faa, 0xac79ede8
.word 0xc60e6d91, 0x8416e68c, 0x5ec8534b, 0xb22830fd, 0x9cd5fdf9, 0xcd5a6052, 0x34e69a00, 0x1bf5ab7e
.word 0xec25aaaf, 0x843e769b, 0xa60e80f9, 0xe476f9d3, 0xd4424743, 0x8af56f74, 0xb622a515, 0x94e294db
.word 0x7630a9b4, 0xdebf68e6, 0x56f9e26a, 0x11847a89, 0x43ea1e8d, 0xb14f232f, 0x50936d57, 0xa034002b
.word 0x793594b5, 0x1208de2b, 0x163373c6, 0xff76cf4d, 0xeaa276e2, 0x6ed4c4d0, 0x10e3fd9f, 0xc780b0ec
.word 0x27ceb363, 0xea392ccf, 0x1f74f222, 0x8aecca88, 0x182a0ce0, 0x3960e472, 0xbe87066f, 0x79bb5858
.word 0x4e04e85d, 0x46061975, 0x216ac4cb, 0x169b916b, 0x02f6ab18, 0x9dd67abf, 0x9f6af85a, 0x044c0327
.word 0xc0eb5b42, 0x683e7d86, 0x552d6bfc, 0xe6f63b93, 0x43e27f73, 0xae9b1092, 0xc1d4e645, 0xbfcd696d
.word 0x4776e29f, 0x5693cbf4, 0x3c872ed8, 0x2e67f171, 0x7332133c, 0x115a1a48, 0x7adffbc9, 0x846babc5
.word 0xf3794483, 0x592ebad7, 0xc3bcf4ae, 0x1c8087a9, 0x2b72b870, 0xc15f20c1, 0x7bc5d3b5, 0x4c60eb4b
.word 0xf1d756ba, 0x2fc7cf80, 0x10a87a5d, 0x8d27f306, 0xf9660b92, 0xef43dba1, 0x4d13c6fe, 0xde4c9378
.word 0x234b9c92, 0x8f2eecff, 0x5b7bc871, 0x77f62482, 0x98e41aa8, 0x45288b48, 0x792104e1, 0x476e1179
.word 0x13f395f1, 0x8d242f78, 0xd535f0b8, 0xa9d531fd, 0x72701a19, 0xdfecc34d, 0xce6e6634, 0x54da7026
.word 0x73e0edb1, 0x395fa588, 0x6158f375, 0x06c845f5, 0x1269f327, 0x5e9c9d80, 0x390f9ada, 0x5a2b85e7
.word 0xba4ed59a, 0x49a4e7b4, 0x0b345c89, 0x42a57342, 0x356f2c73, 0xc3b74e47, 0x3eafb87a, 0x870bdab2
.word 0xd2682a4e, 0xb5c439e9, 0x645fd0ef, 0xeeaf6c8c, 0x685321af, 0x0f8cd4b9, 0xfd5a92ad, 0xd1c5bbb5
.word 0x3cd2e524, 0x55e64875, 0x0b70e120, 0xe0e5b597, 0x81ba1cce, 0x8dddfbff, 0x743a6ba7, 0xa34fa4e2
.word 0x56035272, 0x63ee6fd3, 0x2c5dd0a7, 0xa5ea33aa, 0xee6656a5, 0x2d17a804, 0xbcd31f2b, 0x78eb8a39
.word 0x9db955f2, 0x38b2f502, 0x51a13756, 0x131cfaa6, 0x3b128295, 0x77802060, 0x05987aec, 0x396b41d2
.word 0xc396cd6b, 0x6192a851, 0x5999513d, 0x0808cf09, 0x0d4eafef, 0x8ec10997, 0x4cd31dcd, 0xfb1cd64e
.word 0x79b4d47d, 0x5ccc2ab8, 0xb91e09c1, 0xc4851b2c, 0x2c95482f, 0xbcab6f3a, 0x2a08d6c7, 0xe27382db
.word 0xc0f084ff, 0xdd1c0e63, 0x8b18237a, 0x9eec48ba, 0x1ea1a781, 0xb83a327e, 0x48f18cc5, 0xea7a7358
.word 0x037d9f4f, 0x1b991f6b, 0x48984b2b, 0xf3c87df9, 0x6abba337, 0xc159092e, 0x44d2c6bd, 0x7bfe9244
.word 0x2a39195e, 0x98d3ea6f, 0xf390c406, 0x41c00078, 0xa356fc67, 0xe22444ea, 0x83a0d4af, 0xb8953f37
.word 0x48d0967a, 0x43286ade, 0x4a0d89b8, 0xb90e15fb, 0xfbbd64b2, 0xc1b8c4d3, 0x7f620673, 0xe44ece7b
.word 0x5b0f2db4, 0x58981c17, 0x005e7da0, 0x4d19aade, 0x5e9884c1, 0x736d2ee5, 0xc3fd030c, 0xbe545dc9
.word 0x42fa605f, 0x532d6bea, 0x2215072a, 0x95778b32, 0x07f715a3, 0xbe3df1c4, 0xc69180fc, 0x96795cdc
.word 0x8ca3bf10, 0x8d32c1e9, 0xc5f172a5, 0xb364d495, 0xe70a469c, 0x84469a5d, 0x5eed42b1, 0x2b8681d2
.word 0x717ea881, 0x1f01711f, 0xd58cff6e, 0x82511318, 0x1c94f945, 0x13532833, 0xb5060343, 0x582b6521
.word 0xea52587d, 0x6c35cf2b, 0xa3b92e32, 0x1d3b1da8, 0x4d53c30b, 0x2ed6953a, 0x634b6796, 0x6eaf399c
.word 0xd9fc8723, 0xfbcee02a, 0x7d8374c6, 0xb9936327, 0x886ca5fc, 0x81001c9c, 0x4fff6d9f, 0xa8af8735
.word 0x6905a972, 0x8c412a44, 0xb8ffc867, 0x27fb8c81, 0xd2f72879, 0xdfacca63, 0xae2f89e0, 0x1f23e404
.word 0x4b1f24a2, 0xe4ed29d0, 0x6b1b8098, 0x32e35b4e, 0x53f52271, 0x6667218b, 0xbb1fbb3c, 0xce431fb0
.word 0x2122d7a3, 0x95952b50, 0xc33c93a7, 0x8fd47f42, 0x457e13c3, 0x5758494d, 0x7869593e, 0xa47b7b7d
.word 0x34b4731c, 0x1ce98ed3, 0xf33f9062, 0x56f651f2, 0xf41e617d, 0x5ecaf37d, 0x654cc1d8, 0xafdc245a
.word 0x62e9f98d, 0xfb90c0e2, 0xdff6abab, 0xef46a7d5, 0xb6219eb4, 0x7dddb9f6, 0xec8e4e6d, 0x5096d39c
.word 0xcd2f337a, 0x4add4467, 0x3ca9233f, 0x14c71ec3, 0x0556cd67, 0xabf43991, 0x32cddeff, 0x003d5a14
.word 0x69fbabc6, 0x5b709fe7, 0xec9b7c3b, 0x1ec6143d, 0x8f94da13, 0x776be2c4, 0x94cea926, 0xc0ff9208
.word 0xc12f5818, 0x8465c7dd, 0x0b9ebaa7, 0x8d37b4b5, 0x3751285c, 0x733e4705, 0x716412b9, 0xff61c408
.word 0x93d8830c, 0xccda90bc, 0xfa6800dd, 0x797e4920, 0xeed688cd, 0x87471143, 0x7fa483a1, 0xb265d721
.word 0x63447b48, 0x1038a409, 0x39099b01, 0x0882e849, 0x8bb7f180, 0xd0ec8681, 0xbb73455f, 0x0a7f0d28
.word 0x277143e9, 0xafcaba39, 0xafdc92f3, 0x77e7019c, 0xbcffb391, 0xa518762f, 0x8f152709, 0x54957134
.word 0x869034e2, 0xfff0a9f7, 0x6fe5b084, 0x8da937b0, 0xc5ffa777, 0xeead5313, 0xee6bc76e, 0xd3a90e6b
.word 0x7db0710d, 0x5423f52c, 0x96f5cfaa, 0xc2d3d2c9, 0x935053d4, 0xb7c47198, 0xb0465072, 0x5922ea71
.word 0x9875b483, 0x12faaa33, 0x69858cfa, 0x64b2baa4, 0xfcbe8a11, 0x8406beda, 0xa2f6105c, 0xbb604daf
.word 0x28b138ac, 0x55d29b82, 0xe094e8bb, 0x578c44dd, 0xa058d4c4, 0x388bb76a, 0x00585dc9, 0xbafb9d16
.word 0x52bce52e, 0xe8cabb42, 0x1b2a7423, 0x561b3780, 0xc2d6d1fa, 0xdd05e42b, 0xbc14d44d, 0x853e2ec5
.word 0xb6d287fc, 0x3dca4916, 0x565d4daf, 0x4cbc9e70, 0x5241e050, 0x1ff7bfe8, 0x6d136a3f, 0x47c6321c
.word 0x34809fba, 0x1181c514, 0xd15972de, 0x6adc10ae, 0x856a5c9e, 0xb0e6cecd, 0x33d9d5d5, 0xae3856f0
.word 0x4b0331e6, 0xb4ef58d9, 0xee91dd4f, 0xb6bcddab, 0x5e381f14, 0x266b12cd, 0x651d84c5, 0x849fd5cd
.word 0x040012ff, 0x0a64ea82, 0xa4b54c63, 0xe320b92b, 0x6ec6cad9, 0x2bcf665f, 0x25051daf, 0x3b3ca936
.word 0x30e0075b, 0x1c5728cf, 0xc3b0143d, 0x61bbd879, 0x569f936a, 0x49c94e81, 0x97566a62, 0xd9ac1c58
.word 0xa41395d5, 0x28dcb5c0, 0xaaf9c545, 0x99e5dc4a, 0x132d0b55, 0x4dca2518, 0x9b9c4c06, 0x2d6e868a
.word 0x1ba5d4cc, 0x5386d4ca, 0x97217b6f, 0x575e07e6, 0x9ab720ce, 0x2ef15dc2, 0x1c03ac18, 0xf2a39cda
.word 0x5fcbf923, 0xb6fe2324, 0x16b90629, 0xc949954d, 0x21da5272, 0x4af671b3, 0xebbc87e5, 0x4b08f1fd
.word 0xe7cabcde, 0xc2fd1d82, 0xa60a13f5, 0x1f1053bd, 0xb01cd087, 0x5abea0c6, 0x2c47b562, 0x0f3e741b
.word 0xa31a8c5b, 0xdf3b251b, 0x6e95bdad, 0x71175c63, 0xc558271f, 0x320c8b31, 0xe76c91bc, 0x04a7456a
.word 0x2929f7b1, 0x1414e979, 0xf68ce528, 0x11dc8396, 0x8bd50bb3, 0xaf9038a1, 0x0306287d, 0x56224d51
.word 0x83f8e22c, 0x2b1034c4, 0x563b3185, 0x1c977347, 0x2a35de76, 0xbe11b2cf, 0x9222cf6d, 0x71a09608
.word 0xb55c9145, 0xbd8cdfa4, 0x87c21a3b, 0x1de5de16
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x27, x22, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x13, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x13, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x13, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x13, x16, ecall_handler
                  li x16, 0x1
                  beq x13, x16, instr_fault_handler
                  li x16, 0x5
                  beq x13, x16, load_fault_handler
                  li x16, 0x7
                  beq x13, x16, store_fault_handler
                  li x16, 0xc
                  beq x13, x16, pt_fault_handler
                  li x16, 0xd
                  beq x13, x16, pt_fault_handler
                  li x16, 0xf
                  beq x13, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x22, x27, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x27, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x27, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x22, x27, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x22, x27, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x22, x27, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
