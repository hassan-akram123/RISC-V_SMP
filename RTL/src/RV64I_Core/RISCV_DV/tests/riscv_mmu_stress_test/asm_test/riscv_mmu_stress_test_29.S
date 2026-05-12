.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 1
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x8
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xf40a27b2
                  li x5, 0xf
                  li x6, 0x80000000
                  li x7, 0xf32058af
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x31475e0d
                  li x13, 0xb
                  li x14, 0x5626f10a
                  li x15, 0x6
                  li x16, 0x7e36e350
                  li x18, 0x8069376
                  li x19, 0x1
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xfa4bf801
                  li x24, 0xf3076270
                  li x25, 0x4
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x9
                  li x31, 0x0
                  la x17, user_stack_end
main:             la           sp, region_1+1006 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s5, 744(sp)
                  sub          a6, s8, gp
                  lbu          zero, -739(sp)
                  sb           s7, -887(sp)
                  sb           a7, -130(sp)
                  srl          a2, a4, tp
                  sltu         s6, t0, a7
                  lhu          t5, -130(sp)
                  lbu          t6, 69(sp)
                  lbu          s3, -762(sp)
                  sb           a3, 215(sp)
                  lbu          zero, -244(sp)
                  and          t4, a1, s1
                  sll          a5, s8, t1
                  lh           s7, 338(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           ra, region_1+411 #start load_store_instr_stream_1
                  la           s6, region_1+273 #start load_store_instr_stream_2
                  la           t6, region_1+402 #start load_store_instr_stream_0
                  sb           s1, 48(ra)
                  sb           s8, -30(ra)
                  lbu          s2, -57(ra)
                  lbu          s5, -16(s6)
                  lh           s9, -44(t6)
                  sb           gp, 225(t6)
                  lhu          s0, 142(t6)
                  lb           s1, 63(ra)
                  lbu          t0, 173(t6)
                  sb           zero, 0(s6)
                  sb           a1, -15(s6)
                  la           s8, region_1+1370 #start load_store_instr_stream_3
                  sb           a3, -74(t6)
                  lb           gp, -2(s6)
                  sb           a7, 1(s8)
                  lbu          a1, 58(ra)
                  lb           s10, 28(ra)
                  sb           tp, 4(s8)
                  lbu          a1, 8(s8)
                  lb           t4, -4(s6)
                  lbu          t2, -9(s8)
                  sb           s2, 127(t6)
                  lh           a4, 59(ra)
                  lb           a5, -2(s6)
                  lhu          s3, 14(s8) #end load_store_instr_stream_3
                  lw           sp, -7(ra) #end load_store_instr_stream_1
                  lb           a1, 0(s6) #end load_store_instr_stream_2
                  sh           t6, -34(t6) #end load_store_instr_stream_0
                  la           sp, region_0+206 #start riscv_load_store_hazard_instr_stream_0
                  xor          s10, s3, a6
                  sh           a5, 62(sp)
                  sb           s2, 62(sp)
                  lw           s10, 62(sp)
                  sw           t5, 62(sp)
                  lw           t5, 62(sp)
                  sw           sp, 62(sp)
                  lbu          a0, 62(sp)
                  lhu          t0, 62(sp)
                  lw           s3, 62(sp)
                  lbu          a5, 62(sp)
                  lhu          s5, 62(sp)
                  slti         t2, s10, 1511
                  sw           s2, 62(sp)
                  lbu          a2, 62(sp)
                  lbu          s10, 62(sp)
                  sb           s6, 62(sp)
                  sub          t6, t1, zero
                  lhu          zero, 62(sp)
                  xor          t6, a2, sp
                  sltu         a3, t2, sp
                  lhu          t6, 62(sp)
                  lbu          t3, 62(sp)
                  lbu          s2, 62(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1532 #start riscv_load_store_rand_instr_stream_1
                  lbu          s1, -15(sp)
                  lb           t6, -6(sp)
                  nop
                  lui          s9, 73947
                  lb           a4, -6(sp)
                  lb           a1, -11(sp)
                  srai         s1, t3, 5
                  lb           a6, 1(sp)
                  lb           ra, 10(sp)
                  lui          t1, 437508
                  sra          a4, zero, s7
                  lb           t1, -12(sp)
                  sub          s1, zero, s9
                  and          s2, s10, a0
                  lui          gp, 329191
                  lb           t5, 15(sp)
                  sb           t1, -11(sp)
                  slt          s10, s11, t0
                  or           s7, t3, s1
                  sh           t4, -2(sp)
                  lb           s6, -4(sp)
                  lh           s7, -2(sp)
                  lbu          s11, 0(sp)
                  sb           s1, 1(sp)
                  lb           s0, 7(sp)
                  sb           s11, -11(sp)
                  srai         ra, t2, 25
                  lb           s2, 7(sp)
                  sub          s2, s7, tp
                  lb           s7, 1(sp)
                  sw           s3, 0(sp)
                  lb           s2, 10(sp)
                  lbu          a6, -12(sp)
                  lbu          s1, -4(sp)
                  sb           s5, 7(sp)
                  lb           s8, 1(sp)
                  lw           s5, 4(sp)
                  sb           s10, -5(sp)
                  srli         a2, s0, 0
                  auipc        s1, 740955
                  xori         t0, a7, 1257
                  lbu          t3, -5(sp)
                  lb           t2, 12(sp)
                  lbu          s9, 13(sp)
                  sb           tp, -7(sp) #end riscv_load_store_rand_instr_stream_1
                  la           ra, region_0+920 #start riscv_load_store_rand_instr_stream_0
                  sll          s3, s5, s5
                  sh           zero, -526(ra)
                  lh           t2, -116(ra)
                  srl          t4, a6, t4
                  lbu          s1, 1013(ra)
                  lbu          s0, 699(ra)
                  srai         s1, t3, 12
                  sltiu        t1, a6, -516
                  or           t3, s5, a4
                  srl          s7, s4, s1
                  sra          t5, a1, s3
                  lui          s5, 715033
                  lh           a1, -728(ra)
                  lb           t5, 167(ra)
                  slti         s6, s0, 354
                  sh           a0, 626(ra)
                  lhu          s8, -656(ra)
                  sub          a6, t0, a3
                  sub          sp, s0, t4
                  ori          s11, s6, 1844
                  slli         a6, s7, 2
                  lui          t2, 710943
                  nop
                  sll          t6, s5, t4
                  sh           a0, -756(ra)
                  slti         gp, t3, 235
                  srl          a4, s8, a1
                  lb           sp, -853(ra)
                  slli         s1, s5, 0
                  sw           s0, 1056(ra)
                  lbu          a3, 885(ra)
                  lbu          zero, -554(ra)
                  xori         a2, s8, -530
                  xor          t5, t2, a1
                  sltiu        sp, t1, -612
                  sra          t6, s9, t1
                  slli         s1, a0, 28
                  slti         t3, s7, 674
                  sub          t1, a5, s0
                  slt          s3, a6, t3
                  lh           a1, -246(ra) #end riscv_load_store_rand_instr_stream_0
                  blt          a6, s0, 5f
                  auipc        a2, 150591
                  ori          a1, s6, -305
                  nop
                  beq          a1, s9, 11f
5:                srli         s0, t2, 9
                  bgeu         s9, s9, 15f
                  sra          s1, a5, ra
                  bne          a0, tp, 14f
                  xori         ra, a2, 1300
                  sll          gp, a1, t0
11:               srai         s1, a0, 12
                  sra          t6, t5, s1
                  bge          t5, s6, 23f
14:               bltu         a6, a1, 15f
15:               blt          s5, a0, 29f
                  nop
                  add          t4, s1, zero
                  sra          a6, a0, s10
                  sll          s10, s7, s5
                  sltiu        t6, s2, -1526
                  lui          a0, 27402
                  nop
23:               sltu         a4, gp, a2
                  sll          s1, s9, s1
                  ori          a5, ra, -1356
                  or           a3, s4, s7
                  or           s8, t3, s11
                  nop
29:               auipc        t1, 185895
                  nop
                  slti         s3, a6, -1213
                  sra          a1, t0, a1
                  xori         ra, a0, 1807
                  ori          t1, a7, 869
                  sll          a4, s10, t2
                  blt          a7, s5, 40f
                  beq          sp, a3, 39f
                  beq          a4, s8, 45f
39:               or           t0, s2, t6
40:               sltu         t0, s4, s7
                  sltiu        s8, a5, -1617
                  addi         s8, zero, 1483
                  la           t2, sub_1
                  sltu         t4, s5, s5
                  sll          gp, tp, a7
                  addi         t2, t2, 71
                  bge          tp, s4, main_j1 #branch to jump instr
                  sub          t6, s6, s8
                  auipc        a5, 576290
                  andi         gp, s0, -1051
                  sltu         zero, a3, s5
                  or           a5, t5, s2
main_j1:          jalr         t5, t2, -70 #jump main -> sub_1
                  sra          t3, s10, ra
                  addi         s7, s0, -871
45:               bge          s3, a2, 46f
46:               slti         gp, s7, -804
                  addi         s8, tp, 161
                  bne          zero, s10, 50f
                  bge          a6, s11, 59f
50:               auipc        t1, 796074
                  or           t5, s7, s7
                  beq          t2, t5, 68f
                  nop
                  ori          zero, t3, 1629
                  sra          a0, a4, s7
                  andi         t0, t1, -548
                  bgeu         a3, t5, 77f
                  beq          a6, tp, 59f
59:               andi         s8, s8, 1235
                  slli         s2, t3, 7
                  blt          gp, s8, 62f
62:               and          s1, s8, a1
                  srai         a5, s7, 3
                  sra          t1, a2, t6
                  xori         a3, t0, 572
                  bltu         s3, a4, 81f
                  ori          t1, gp, 1981
68:               bne          tp, a5, 69f
69:               srai         a5, t2, 27
                  bne          s7, a6, 83f
                  sra          a2, a7, s1
                  slli         a4, s7, 9
                  sra          s8, s3, a5
                  add          t5, a4, a5
                  bgeu         a4, s0, 84f
                  andi         t6, s4, -112
77:               beq          s10, s1, 87f
                  sltu         t6, t0, a3
                  blt          s0, a6, 81f
                  bne          t6, a2, 86f
81:               sra          a3, t2, tp
                  auipc        a2, 728080
83:               auipc        sp, 973746
84:               addi         t6, a2, -422
                  addi         t3, s3, 507
86:               slli         s7, s11, 0
87:               slli         s3, t2, 5
                  or           t0, ra, t1
                  sltu         t3, t5, t5
                  andi         t3, t5, -628
                  sltiu        zero, t0, -1257
                  blt          t1, t3, 103f
                  xori         sp, a0, -960
                  addi         s2, s9, -1112
                  bne          t4, s7, 103f
                  sra          s3, s3, a6
                  bgeu         s11, s8, 113f
                  sra          t2, zero, a5
                  beq          s8, t5, 103f
                  slli         s6, a5, 8
                  xori         s2, s7, -1009
                  sub          sp, s4, s10
103:              srli         s10, s7, 6
                  nop
                  sll          a4, s2, t6
                  bltu         t6, tp, 117f
                  blt          s4, t3, 120f
                  xori         a4, s1, 826
                  srl          t6, t1, a4
                  srl          t4, t0, s11
                  ori          t3, a6, 1207
                  xor          s9, a2, a7
113:              bge          t1, t3, 115f
                  auipc        t5, 426466
115:              auipc        a1, 961527
                  bge          s8, a2, 117f
117:              lui          t1, 325538
                  sra          t6, a6, s6
                  andi         s10, t2, 102
120:              srai         s10, t3, 28
                  nop
                  bgeu         s10, a5, 124f
                  sltiu        a3, s8, 1558
124:              lui          zero, 544447
                  bge          t6, s2, 129f
                  andi         t5, t4, -259
                  bne          a2, a4, 128f
128:              sll          t2, tp, s0
129:              andi         a1, gp, -1274
                  la           a3, region_0+249 #start load_store_instr_stream_1
                  la           ra, region_0+848 #start load_store_instr_stream_0
                  la           a1, region_0+701 #start load_store_instr_stream_2
                  lbu          a4, -253(a1)
                  sw           s7, 120(ra)
                  sb           t2, 1(a3)
                  sw           t4, -205(a1)
                  lbu          t2, -69(ra)
                  sb           s6, -61(a1)
                  sh           t0, 13(a3)
                  lbu          a2, 186(a1)
                  sb           s1, 171(ra)
                  lbu          s3, -150(ra)
                  lh           t6, -15(a3)
                  lbu          zero, 12(a1)
                  lbu          s8, 253(ra)
                  lh           a2, 210(ra)
                  sh           s5, 94(ra)
                  sb           s1, 14(a3)
                  sb           a2, -116(a1)
                  sb           s2, -146(a1)
                  sh           a0, -195(a1)
                  sb           sp, 232(ra)
                  lb           s0, 92(a1) #end load_store_instr_stream_2
                  lb           s0, -218(ra)
                  lb           s2, -6(a3) #end load_store_instr_stream_1
                  sb           a1, -145(ra) #end load_store_instr_stream_0
                  andi         t1, a5, 354
                  xori         t6, s1, -1925
                  blt          a6, sp, 136f
                  bltu         s5, t5, 143f
                  blt          ra, sp, 147f
                  auipc        s6, 882929
136:              andi         s2, t4, -427
                  srli         sp, t0, 23
                  slt          t0, a2, t6
                  slli         t3, t2, 8
                  xori         s2, s0, 1373
                  and          zero, s8, t5
                  blt          a0, s9, 162f
143:              srl          sp, t3, s11
                  bne          s2, a7, 149f
                  slli         s2, t4, 15
                  srai         a6, t5, 17
147:              addi         s3, sp, 1615
                  and          t2, a2, s1
149:              srai         zero, t1, 29
                  slt          a2, s6, s5
                  srai         a0, t4, 14
                  slt          s1, t0, ra
                  slti         s0, a7, 1958
                  srl          s1, zero, s3
                  add          a5, gp, s5
                  xor          a0, t4, a0
                  srli         a6, t4, 29
                  slti         s5, t6, 1685
                  sltiu        sp, a5, -1407
                  lui          gp, 362424
                  bne          sp, t6, 162f
162:              ori          t3, s9, 635
                  srl          s6, s9, s5
                  nop
                  andi         t4, s4, 1052
                  bne          t2, s8, 173f
                  addi         t1, s9, 673
                  xor          t2, t0, tp
                  sltiu        t1, t3, -750
                  sltu         gp, sp, t4
                  ori          a1, zero, -595
                  add          t5, s9, s8
173:              bltu         t2, tp, 174f
174:              ori          t5, t4, -1136
                  addi         a6, t0, 2001
                  nop
                  blt          a0, a2, 179f
                  andi         s3, s2, 1263
179:              sra          ra, a7, a2
                  ori          s6, s3, -1378
                  bgeu         s7, a7, 191f
                  add          a1, s8, s8
                  blt          s11, gp, 196f
                  srai         a4, s5, 23
                  slt          gp, a3, a4
                  lui          t0, 82696
                  srl          t4, s8, a5
                  and          s1, a1, ra
                  bgeu         s7, s7, 197f
                  andi         s10, tp, 932
191:              xor          a2, a0, gp
                  ori          a3, a2, -614
                  addi         s9, gp, 1247
                  sltiu        a4, s1, -2019
                  sub          zero, a2, t6
196:              add          t4, a4, s11
197:              bne          gp, s1, 206f
                  nop
                  ori          gp, s11, 1989
                  add          t4, t0, gp
                  sll          t0, t0, t3
                  srl          a0, a0, a6
                  blt          a2, s10, 214f
                  sub          a3, a1, s1
                  srl          s2, s0, t4
206:              andi         a6, t6, 712
                  lui          t0, 838685
                  xori         t4, t3, -705
                  sub          a1, t0, s2
                  and          s3, s4, a0
                  beq          s2, s10, 221f
                  bge          s8, s7, 213f
213:              andi         s9, s7, 1321
214:              bne          a5, a3, 230f
                  bltu         a7, t5, 230f
                  lui          t1, 97964
                  andi         s3, t4, 1225
                  bne          s7, s6, 232f
                  beq          s8, a6, 228f
                  sltu         t3, s7, t0
221:              bge          a7, s2, 228f
                  blt          s8, a6, 228f
                  or           s11, t0, a5
                  srli         t3, s2, 20
                  srai         s1, t1, 3
                  bltu         a3, a7, 235f
                  slli         s6, t1, 28
228:              and          s1, a3, s7
                  sltiu        t1, a5, 882
230:              addi         s11, ra, -830
                  slli         t0, t5, 12
232:              srl          a4, s6, tp
                  or           a2, t1, t0
                  bge          s7, t2, 235f
235:              xor          gp, a7, tp
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a7, a7, -36
                  srli         s9, a4, 21
                  sw           t5, 4(a7)
                  slt          t3, t3, tp
                  and          a4, a2, tp
                  sltiu        t6, s11, 1878
                  or           t1, ra, a6
                  addi         s7, s0, 2
                  nop
                  la           s1, region_0+620 #start load_store_instr_stream_0
                  la           a3, region_0+1734 #start load_store_instr_stream_2
                  la           s10, region_0+1397 #start load_store_instr_stream_1
                  sh           a1, 221(s10)
                  lb           t4, -124(s1)
                  lw           s5, -120(s1)
                  lbu          a2, 20(a3)
                  lhu          t6, -54(s1)
                  sb           a0, -146(s10)
                  lh           a1, 38(a3)
                  lbu          t3, -28(s10)
                  lbu          sp, -235(s10)
                  lhu          ra, -46(s1)
                  lbu          a4, -59(a3)
                  lb           t1, 239(s10)
                  sb           s4, -61(a3)
                  lb           a0, 122(s10)
                  sb           t0, 127(s1)
                  lhu          zero, 227(s10)
                  lw           a6, 6(a3) #end load_store_instr_stream_2
                  sh           t6, 107(s10)
                  sb           s1, 209(s10) #end load_store_instr_stream_1
                  lw           t1, -224(s1)
                  lbu          zero, 35(s1)
                  lb           s2, 5(s1)
                  lhu          s7, 220(s1) #end load_store_instr_stream_0
                  la           sp, region_1+464 #start riscv_load_store_hazard_instr_stream_2
                  lbu          zero, -39(sp)
                  lb           a6, -39(sp)
                  lbu          s9, -27(sp)
                  sb           s4, -11(sp)
                  lbu          t2, -11(sp)
                  sb           zero, -11(sp)
                  lbu          s10, -11(sp)
                  sw           a2, 8(sp)
                  sb           t1, 8(sp)
                  lhu          a6, 8(sp)
                  lb           s5, 8(sp)
                  lb           s6, 8(sp)
                  lb           s1, 7(sp)
                  auipc        a0, 122661
                  lui          s11, 385126
                  sh           ra, -58(sp)
                  lbu          s5, -43(sp)
                  lbu          t3, -45(sp)
                  lh           s9, -40(sp)
                  lhu          t3, -62(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+126 #start riscv_load_store_rand_instr_stream_1
                  nop
                  auipc        a2, 305842
                  nop
                  auipc        s1, 1030026
                  xor          s1, s1, t1
                  slli         a2, a7, 15
                  srai         s1, s5, 29
                  srli         t5, t0, 13
                  and          s7, s5, s2
                  ori          a5, t3, 2037
                  lhu          s3, 48(sp)
                  sh           zero, 38(sp)
                  lb           s3, 14(sp)
                  sra          t3, a5, a2
                  lbu          t1, -13(sp)
                  srai         s7, a0, 3
                  srl          s2, t2, t3
                  sb           t1, 51(sp)
                  sltu         t0, s6, s6
                  lbu          s11, 49(sp)
                  srai         a0, s7, 21
                  or           s7, tp, t3
                  slt          t3, t1, s1
                  srai         t3, s8, 12
                  ori          s1, a1, 1227
                  lb           t3, -37(sp)
                  lui          s9, 833583
                  or           t4, s3, t1
                  lb           a4, 48(sp)
                  ori          t5, sp, 437
                  nop
                  andi         s9, s10, 77
                  sb           s1, 15(sp)
                  srl          s9, t2, s11
                  xor          a0, s9, t6
                  lbu          zero, 54(sp)
                  andi         a4, t5, 2010
                  addi         s5, t0, -407
                  lh           s1, 0(sp)
                  sh           t3, 54(sp)
                  sb           s9, 33(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t6, region_0+826 #start riscv_load_store_hazard_instr_stream_4
                  sb           t4, 176(t6)
                  lui          a5, 738223
                  lbu          s0, -29(t6)
                  lb           a0, -29(t6)
                  lb           t3, 222(t6)
                  sb           t3, 159(t6)
                  addi         t4, tp, 210
                  sb           zero, 159(t6)
                  lb           zero, 159(t6)
                  sb           tp, 159(t6)
                  sub          a0, t6, a2
                  xori         s0, t5, 191
                  sb           zero, 159(t6)
                  lb           s5, 159(t6)
                  lb           a5, 159(t6)
                  lbu          s2, 159(t6) #end riscv_load_store_hazard_instr_stream_4
                  la           a0, region_1+1469 #start load_store_instr_stream_1
                  la           t6, region_1+1067 #start load_store_instr_stream_0
                  la           sp, region_1+1821 #start load_store_instr_stream_3
                  lb           s2, -49(sp)
                  sh           a5, 7(t6)
                  lb           t2, -57(sp)
                  lb           t1, -22(sp)
                  lb           t5, -4(a0)
                  la           s3, region_1+432 #start load_store_instr_stream_2
                  lbu          zero, -12(t6)
                  lb           s5, 0(a0)
                  sb           a2, -46(sp)
                  lbu          s9, 12(t6)
                  lhu          s5, -130(s3)
                  lhu          t5, 1444(s3)
                  sb           s8, 2(sp)
                  sb           s11, 24(sp)
                  lb           gp, 1381(s3)
                  lbu          t0, 8(t6)
                  lb           s10, 1009(s3)
                  lhu          a3, 1142(s3)
                  sh           zero, -11(t6)
                  lbu          s9, -359(s3)
                  sb           s6, -10(sp)
                  lw           t3, 11(a0)
                  lb           a4, 13(t6)
                  lbu          s10, 794(s3)
                  lb           t5, 37(sp) #end load_store_instr_stream_3
                  lbu          t0, -14(a0)
                  sb           t0, 1183(s3)
                  lbu          a4, 511(s3) #end load_store_instr_stream_2
                  lb           gp, 10(t6)
                  lb           t2, -10(t6)
                  lbu          a6, 12(t6)
                  lbu          s10, -2(a0) #end load_store_instr_stream_1
                  lh           t2, -3(t6) #end load_store_instr_stream_0
                  la           sp, region_0+1242 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a4, -7(sp)
                  lbu          t4, 25(sp)
                  lbu          s2, 53(sp)
                  sb           sp, 53(sp)
                  slli         ra, gp, 5
                  lb           s3, 53(sp)
                  nop
                  andi         t0, s5, -1398
                  lb           t4, 53(sp)
                  lbu          s9, 53(sp)
                  sb           s4, 53(sp)
                  lb           s5, 53(sp)
                  sb           t6, 53(sp)
                  or           t2, a6, t0
                  lbu          t1, 53(sp)
                  lb           s9, 53(sp)
                  xor          s2, s11, s0
                  xor          a0, s11, a0
                  lb           zero, 53(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t3, region_0+65 #start riscv_load_store_rand_instr_stream_5
                  sb           sp, 86(t3)
                  sb           t0, 226(t3)
                  andi         t5, s9, -753
                  lui          gp, 736073
                  sltu         t6, s0, t0
                  srai         a1, s3, 11
                  lbu          t4, -36(t3)
                  sb           s1, -64(t3)
                  lhu          a6, 107(t3)
                  sb           s8, 164(t3)
                  andi         a4, s5, 1564
                  sltiu        s7, s7, -505
                  ori          s3, t3, -967
                  sb           s7, 156(t3)
                  sb           a1, 58(t3)
                  sb           s3, -4(t3)
                  lb           a1, 82(t3)
                  sb           t0, 29(t3)
                  sra          gp, t1, a3
                  lb           t4, 100(t3)
                  lh           sp, 169(t3)
                  and          s9, a5, s1
                  auipc        a6, 279080
                  lb           s10, 33(t3) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1477 #start riscv_load_store_rand_instr_stream_4
                  sll          s1, a3, t0
                  lbu          t6, -1(sp)
                  sltiu        a0, a3, -1119
                  sub          t4, a3, a7
                  lhu          t4, 1(sp)
                  lbu          a1, 16(sp)
                  sra          s7, t2, a6
                  slti         a0, a7, -841
                  xori         s6, tp, -1657
                  sb           ra, 4(sp)
                  lb           s1, 2(sp)
                  sh           gp, -3(sp)
                  addi         s8, a2, 304
                  slti         zero, t5, -1508
                  nop
                  lbu          a3, 10(sp)
                  sll          t3, s0, tp
                  sb           s7, -4(sp)
                  sub          s3, t6, s0
                  sra          s9, a7, t0
                  lb           s2, 13(sp)
                  sll          s5, a5, t3
                  lh           a6, -1(sp)
                  lbu          zero, -8(sp)
                  sra          a5, zero, s4
                  srli         s10, s10, 14
                  lhu          s2, 13(sp)
                  andi         a1, s7, -1448
                  lb           a0, -12(sp)
                  sb           s5, 2(sp)
                  add          s0, s2, s0
                  lui          s11, 326273
                  slli         t5, a1, 23
                  lb           t2, 16(sp)
                  sw           s10, 3(sp)
                  lbu          t6, 12(sp)
                  sb           t2, 0(sp)
                  and          s3, t1, t5
                  srli         s0, ra, 30
                  addi         s11, gp, 1226
                  srai         t5, t2, 24
                  sra          s8, s11, a3
                  lhu          s7, 13(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+360 #start riscv_load_store_hazard_instr_stream_3
                  lh           a2, -12(sp)
                  sll          t4, s9, t6
                  sw           a5, -4(sp)
                  sw           zero, -4(sp)
                  lbu          s8, -7(sp)
                  lbu          t2, -7(sp)
                  srli         a5, a2, 12
                  lb           a5, -7(sp)
                  sb           s0, -7(sp)
                  lb           a5, -7(sp)
                  lbu          zero, 2(sp)
                  lbu          t1, 2(sp)
                  lh           s10, 2(sp)
                  lh           t4, 2(sp)
                  lbu          gp, 2(sp)
                  sb           s1, 15(sp)
                  sub          t6, s1, s2
                  sb           t2, 5(sp)
                  lhu          s5, -10(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t1, region_1+1822 #start load_store_instr_stream_1
                  la           s9, region_1+1792 #start load_store_instr_stream_0
                  sb           a3, -15(t1)
                  sb           t5, 28(s9)
                  lbu          t3, 13(t1)
                  lb           a1, -10(t1)
                  lbu          s1, -55(s9)
                  sb           t2, 15(t1)
                  sb           s2, -1(t1)
                  lhu          s7, -4(t1)
                  sb           gp, -3(t1)
                  sb           ra, -49(s9)
                  sh           t5, -8(t1) #end load_store_instr_stream_1
                  lbu          s10, -1(s9)
                  lbu          s10, -52(s9) #end load_store_instr_stream_0
                  la           s7, region_0+1107 #start riscv_load_store_rand_instr_stream_0
                  and          s0, s8, t1
                  lh           s1, -223(s7)
                  lbu          s1, 106(s7)
                  xori         s10, a0, -480
                  lh           a0, -191(s7)
                  andi         a4, gp, 381
                  lbu          t4, -135(s7)
                  sh           t2, 73(s7)
                  lbu          s5, -86(s7)
                  xor          s3, a4, t1
                  andi         t0, ra, -48
                  addi         zero, ra, -670
                  sb           a3, 59(s7)
                  lb           t4, 72(s7)
                  srli         a1, a6, 22
                  sra          s8, a1, s2
                  lhu          sp, 243(s7)
                  lb           s1, -197(s7)
                  or           t0, gp, a2
                  lw           s2, 201(s7)
                  lbu          t0, 212(s7)
                  lhu          sp, 157(s7)
                  sh           a3, 9(s7)
                  lb           s8, 88(s7)
                  lui          a2, 78214
                  lb           t0, 191(s7)
                  sb           tp, 140(s7) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_1+341 #start load_store_instr_stream_3
                  la           s7, region_1+121 #start load_store_instr_stream_1
                  sh           ra, -35(s7)
                  lbu          a5, -14(gp)
                  lh           t3, -9(gp)
                  la           t5, region_1+1984 #start load_store_instr_stream_2
                  lbu          s6, 5(gp)
                  la           s2, region_1+209 #start load_store_instr_stream_0
                  sb           s3, 1617(s2)
                  sb           t6, -19(t5)
                  sb           s7, 490(s2)
                  lb           s3, 960(s7)
                  sb           s8, 1444(s7)
                  sh           a0, 1727(s2)
                  lbu          s1, 15(t5)
                  lhu          s3, -11(gp)
                  lb           s6, -90(s7)
                  lh           t0, 617(s2)
                  lh           s6, 899(s2)
                  sh           a1, 1293(s7)
                  sb           s3, -13(t5)
                  lhu          ra, -22(t5)
                  sb           s11, 88(s7)
                  lb           t2, -7(gp)
                  lbu          ra, -33(t5) #end load_store_instr_stream_2
                  lbu          a6, 1(gp)
                  lbu          a2, 804(s7) #end load_store_instr_stream_1
                  lb           s10, 16(gp)
                  lbu          ra, 1100(s2)
                  sb           t0, 1029(s2)
                  lb           zero, -16(gp) #end load_store_instr_stream_3
                  sh           s10, 997(s2) #end load_store_instr_stream_0
                  la           sp, region_1+16 #start riscv_load_store_hazard_instr_stream_5
                  lhu          a1, 4(sp)
                  lb           s6, 44(sp)
                  lbu          a0, 44(sp)
                  sb           t3, 57(sp)
                  lw           s8, 8(sp)
                  srai         s6, s4, 1
                  lb           t3, 46(sp)
                  lb           a6, 3(sp)
                  sb           s9, 3(sp)
                  add          t6, s3, t1
                  lb           t2, 3(sp)
                  lb           gp, 63(sp)
                  add          s11, s0, zero
                  sb           s9, 63(sp)
                  sb           zero, 63(sp)
                  lbu          t6, 63(sp)
                  lb           s7, 33(sp)
                  lb           s9, -5(sp)
                  sb           s8, -5(sp)
                  lb           t4, 27(sp)
                  lb           a2, 27(sp)
                  lb           s5, 1(sp) #end riscv_load_store_hazard_instr_stream_5
                  la           t1, region_0+826 #start load_store_instr_stream_2
                  la           s9, region_0+436 #start load_store_instr_stream_0
                  la           gp, region_0+123 #start load_store_instr_stream_1
                  la           t3, region_0+133 #start load_store_instr_stream_3
                  lbu          t4, -19(t1)
                  lbu          a1, -38(gp)
                  lbu          t6, 20(t3)
                  sh           a6, -58(t1)
                  sb           sp, 252(gp)
                  lb           s1, -14(t3)
                  sw           t1, 44(s9)
                  sh           s3, -20(s9)
                  lbu          a3, 184(s9)
                  sb           gp, 29(t3)
                  sb           s5, -17(t3)
                  lbu          t0, 215(gp)
                  lb           ra, 9(t1)
                  sw           s6, 104(s9)
                  lh           t4, -39(t3)
                  lbu          a6, -72(gp)
                  sb           s9, -55(s9)
                  lbu          t0, 47(t3)
                  lb           t0, -1(t1)
                  sh           s10, 31(t3)
                  sw           t2, 241(gp) #end load_store_instr_stream_1
                  lbu          s8, -61(t3)
                  sb           a5, -25(t1)
                  lbu          s7, 22(t3) #end load_store_instr_stream_3
                  lb           t2, 106(s9)
                  lbu          s5, -51(t1) #end load_store_instr_stream_2
                  sh           a6, -88(s9) #end load_store_instr_stream_0
                  la           sp, region_1+1280 #start riscv_load_store_rand_instr_stream_3
                  lb           a6, -46(sp)
                  lui          s2, 239576
                  srli         t3, s1, 2
                  lbu          s5, 53(sp)
                  sb           a6, -51(sp)
                  sb           s5, -10(sp)
                  sltu         t2, t0, gp
                  addi         t5, s7, -579
                  sh           a2, -22(sp)
                  and          a1, ra, s6
                  sll          a5, tp, t1
                  auipc        t0, 604309
                  sb           s4, 5(sp)
                  andi         s1, a6, 1082
                  nop
                  lb           zero, 57(sp)
                  slli         s6, a4, 8
                  sltiu        s5, s1, 1360
                  add          gp, s9, gp
                  sb           s0, 31(sp)
                  sltiu        a5, a3, 1174
                  sb           a1, -56(sp)
                  sh           sp, -20(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1631 #start riscv_load_store_hazard_instr_stream_0
                  lh           s6, 5(sp)
                  sub          s6, t2, t2
                  lb           s3, 5(sp)
                  lb           s10, -14(sp)
                  lbu          t0, -14(sp)
                  lb           zero, -14(sp)
                  sll          t5, s6, t5
                  sb           tp, 2(sp)
                  lb           s2, 2(sp)
                  sb           s11, 2(sp)
                  lb           a3, 5(sp)
                  lbu          a6, 12(sp)
                  addi         t1, s3, 679
                  lhu          s10, 11(sp)
                  lbu          a4, 11(sp)
                  sll          t4, t3, a4
                  lhu          s9, 11(sp)
                  lbu          s1, 11(sp)
                  lbu          gp, 11(sp) #end riscv_load_store_hazard_instr_stream_0
                  xor          s5, a1, s2
                  srl          s1, a7, s9
                  srli         s3, s10, 3
                  lui          gp, 188879
                  bne          a3, s3, 8f
                  bgeu         s10, s5, 12f
                  addi         s7, s7, -498
                  auipc        s7, 894435
8:                srli         a6, t1, 1
                  bne          sp, gp, 24f
                  blt          a5, t0, 17f
                  bltu         s6, t2, 17f
12:               sll          sp, a2, s1
                  andi         s11, ra, 1601
                  sll          s1, a3, s2
                  beq          a5, a2, 16f
16:               bne          tp, s4, 29f
17:               slli         t1, gp, 2
                  beq          a1, sp, 29f
                  srl          t6, s7, t2
                  blt          t1, sp, 25f
                  bne          zero, tp, 36f
                  beq          s1, s2, 41f
                  sltu         a6, s1, a3
24:               sub          a5, s2, s6
25:               addi         ra, s9, -349
                  ori          zero, zero, -741
                  srl          a6, a6, t6
                  srl          a1, t4, tp
29:               bge          s6, s1, 42f
                  andi         zero, s9, -710
                  bgeu         t1, a2, 47f
                  sra          a1, a7, a5
                  addi         s0, s7, 585
                  add          s11, a0, t0
                  xor          s5, t4, s3
36:               nop
                  slli         t0, a7, 29
                  slt          gp, s7, a3
                  and          s3, s11, s11
                  sra          s3, s7, a3
41:               sra          zero, t3, t5
42:               sltu         t6, s2, t0
                  xori         s9, t0, -344
                  nop
                  add          a5, s6, a5
                  sltu         a0, tp, t6
47:               sltiu        s8, a6, 743
                  srl          s6, t6, s10
                  sub          s0, a3, s3
                  auipc        s0, 480185
                  slli         s6, s1, 14
                  and          s7, ra, a1
                  nop
                  sub          a3, t5, gp
                  auipc        s9, 12628
                  xor          s0, t3, s0
                  beq          t3, t6, 59f
                  sltu         s10, t1, t3
59:               bne          t4, sp, 60f
60:               ori          s11, t4, 714
                  blt          sp, s8, 77f
                  xori         a3, a1, 1360
                  sltu         a2, s9, s2
                  addi         t1, a3, -560
                  or           s2, a0, t3
                  slli         t3, gp, 14
                  srli         zero, t5, 3
                  bge          t5, a5, 83f
                  bltu         s6, t0, 77f
                  addi         s11, a0, -767
                  sub          s6, t3, s6
                  add          t6, s5, a5
                  slti         s6, sp, -1752
                  lui          t5, 17072
                  sra          s2, s3, a6
                  xori         gp, a4, -1857
77:               or           t4, a6, s4
                  xori         a4, s7, -875
                  slli         t2, t1, 19
                  nop
                  sll          s7, a3, a1
                  andi         a1, s11, 821
83:               bltu         t3, s1, 95f
                  sltu         gp, a2, a4
                  srai         s2, s6, 10
                  sub          t2, s2, a0
                  bne          s3, a0, 91f
                  addi         a1, a1, -60
                  slt          a1, s9, gp
                  srai         sp, t6, 6
91:               addi         sp, t0, 1866
                  slli         t1, s3, 5
                  or           s3, s3, zero
                  bge          t0, s6, 101f
95:               ori          s3, t5, -35
                  slt          sp, s7, a7
                  bgeu         s10, s0, 105f
                  ori          s10, s6, 1243
                  sll          t2, zero, a3
                  sltiu        sp, s10, 1093
101:              sll          sp, a4, s10
                  bge          a0, s10, 109f
                  bge          t4, a6, 108f
                  or           s5, a2, s4
105:              auipc        s10, 32840
                  bne          t2, s3, 122f
                  blt          s10, a0, 120f
108:              slli         t1, t5, 10
109:              bgeu         tp, a3, 123f
                  add          t4, tp, s6
                  slti         s10, s6, -514
                  addi         t3, a7, 595
                  slti         a6, s6, 1997
                  or           sp, t5, s9
                  auipc        s8, 920496
                  xor          s9, a6, s7
                  blt          a5, s0, 130f
                  sra          s1, a4, a0
                  srl          sp, s5, s5
120:              ori          t0, t0, -327
                  add          sp, s5, t3
122:              addi         t3, t4, 172
123:              slti         sp, s8, 706
                  and          a3, s0, tp
                  slti         a0, s3, -1901
                  blt          a7, a7, 131f
                  sub          t6, s10, s10
                  slt          t4, t4, t3
                  slti         s1, s1, -862
130:              bne          t6, a5, 133f
131:              sra          a0, t0, s3
                  sra          t0, tp, t2
133:              slli         a1, s2, 5
                  xor          s1, s4, zero
                  bge          a5, s9, 149f
                  sra          t4, a4, t3
                  srai         s7, zero, 28
                  bge          s6, a2, 145f
                  andi         a2, zero, -1274
                  sltu         s11, t0, s7
                  sll          s2, s7, t4
                  sub          gp, sp, sp
                  andi         s3, s6, 1023
                  sub          s10, a0, s4
145:              slt          s9, s11, a1
                  srl          s6, s8, a0
                  sub          t6, s9, ra
                  auipc        a2, 15051
149:              srl          t6, s0, t6
                  and          s11, s9, zero
                  or           s5, t4, tp
                  srl          ra, a0, sp
                  add          s11, s2, s1
                  slli         t2, t5, 31
                  slt          a0, t5, gp
                  sltiu        a4, a7, -334
                  addi         t6, a7, 695
                  slti         t5, t2, 118
                  auipc        a2, 469346
                  nop
                  beq          t1, s3, 177f
                  sll          gp, t4, a3
                  sltu         t6, s3, s1
                  bgeu         t1, s2, 171f
                  xor          t6, s5, t2
                  bge          a0, gp, 173f
                  sub          a5, a4, t6
                  sltu         s10, zero, t0
                  la           s10, region_0+227 #start load_store_instr_stream_1
                  lw           a0, -11(s10)
                  la           ra, region_0+239 #start load_store_instr_stream_0
                  lh           s3, 1425(ra)
                  lbu          t4, 1126(ra)
                  lbu          t6, 30(s10)
                  lb           zero, -14(s10)
                  lbu          s9, 32(ra)
                  sb           t1, 876(ra)
                  lh           s6, -59(s10)
                  sb           s0, -28(s10)
                  sw           t3, -183(ra)
                  sb           s8, 20(s10) #end load_store_instr_stream_1
                  lb           t0, 430(ra) #end load_store_instr_stream_0
                  sll          a3, t2, a3
                  srai         s2, ra, 23
171:              addi         zero, a1, 570
                  bge          a7, a1, 188f
173:              bltu         s1, a1, 186f
                  sltiu        t4, a5, -617
                  auipc        t0, 28793
                  bgeu         a5, a6, 178f
177:              xori         t4, s5, -864
178:              xor          s11, t1, s7
                  and          gp, sp, a5
                  sltiu        zero, ra, -1302
                  bltu         s0, s0, 182f
182:              slt          a6, t6, s9
                  nop
                  slt          t2, s4, gp
                  sltu         s7, s8, s7
186:              blt          gp, s0, 201f
                  nop
188:              bne          s0, s0, 203f
                  sub          s8, s4, s2
                  lui          ra, 34777
                  slti         s0, a2, -1089
                  slli         s9, ra, 24
                  blt          s3, a0, 209f
                  xori         s6, s4, 1738
                  bgeu         s11, s7, 200f
                  beq          s11, s3, 209f
                  bne          s0, a2, 203f
                  blt          t5, a2, 202f
                  bne          ra, s4, 212f
200:              sub          t6, zero, t5
201:              addi         s5, s1, 812
202:              sll          a0, t4, a6
203:              bltu         s7, s5, 208f
                  xori         s1, gp, -1643
                  nop
                  auipc        a0, 946080
                  addi         a0, s4, -325
208:              slt          s3, s1, t6
209:              slti         a4, s10, 950
                  sltiu        s2, a3, 916
                  bge          a1, s11, 230f
212:              xori         t0, s2, 501
                  bgeu         s1, s11, 220f
                  bltu         s6, t4, 217f
                  and          ra, a6, a2
                  addi         s9, s6, -1622
217:              xor          a1, a6, a4
                  beq          a0, t1, 226f
                  bltu         a7, t1, 220f
220:              srl          t0, gp, s9
                  sub          s0, sp, a7
                  srl          a4, t1, s8
                  sltu         s11, t4, s9
                  nop
                  or           a6, sp, s10
226:              sll          a2, gp, t6
                  sll          a5, t2, a7
                  sub          s1, zero, s8
                  bltu         s9, t3, 234f
230:              sub          s11, a0, s1
                  bgeu         gp, s11, 235f
                  beq          t5, s6, 240f
                  ori          s0, s2, 1146
234:              xor          a5, tp, t6
235:              bge          tp, t1, 250f
                  bgeu         a3, a1, 249f
                  add          s2, t5, t0
                  blt          s9, a1, 249f
                  slli         zero, a2, 13
240:              srai         t1, s1, 15
                  nop
                  sra          s8, s10, t3
                  beq          t6, a3, 255f
                  add          t1, t1, a3
                  bne          t6, t4, 258f
                  auipc        s10, 455435
                  slli         t5, zero, 3
                  bne          a7, t6, 263f
249:              sltiu        a6, gp, 1881
250:              srli         a5, s10, 31
                  andi         t1, t3, -595
                  xori         t1, a1, 1809
                  bltu         s8, t3, 264f
                  addi         zero, s9, 461
255:              andi         a1, a3, 1167
                  sub          s6, s8, a6
                  sub          ra, a6, a1
258:              slt          s6, t2, s7
                  sra          s3, s5, s9
                  srai         zero, s8, 10
                  addi         ra, s7, 667
                  lui          gp, 691137
263:              blt          s6, s1, 270f
264:              blt          sp, t4, 269f
                  addi         t0, zero, 732
                  xor          t4, t0, t4
                  bge          s4, t1, 283f
                  bge          t3, s7, 273f
269:              bne          a0, gp, 272f
270:              or           s10, zero, t4
                  srai         a1, s2, 26
272:              srli         a5, s6, 22
273:              sltiu        a1, t4, 1217
                  sltu         sp, tp, t4
                  lui          s8, 874143
                  and          t4, t2, t3
                  bltu         a4, t5, 292f
                  auipc        t5, 725127
                  and          s1, a5, a7
                  srai         s7, s6, 7
                  auipc        s9, 838509
                  auipc        t6, 566174
283:              lui          a0, 823165
                  add          s0, s0, s3
                  la           sp, region_1+1203 #start riscv_load_store_rand_instr_stream_2
                  slt          a3, s10, s2
                  sll          t0, a2, a3
                  lh           s5, 9(sp)
                  lui          s9, 42268
                  sltiu        a2, s1, 1236
                  addi         t4, a4, -1949
                  sb           gp, -10(sp)
                  srl          a3, zero, t3
                  sub          ra, t6, s6
                  lbu          s11, -3(sp)
                  srai         t6, a6, 28
                  addi         a5, s10, -1416
                  sra          s9, s6, s2
                  sra          s2, t0, s10
                  sb           t3, 6(sp)
                  srl          t4, t3, t0
                  lbu          a6, -14(sp)
                  srli         t3, tp, 8
                  nop
                  sh           t6, -13(sp)
                  ori          s0, s9, 664
                  sb           sp, 2(sp)
                  ori          ra, s8, -1795
                  lb           s6, -16(sp)
                  lb           a1, 10(sp)
                  sra          t5, t6, gp
                  xor          t2, a3, s3
                  lui          s2, 156241
                  lbu          a6, -14(sp)
                  lb           zero, 11(sp)
                  or           t1, sp, t1
                  slti         s0, s10, 218
                  sb           s4, 1(sp)
                  sb           sp, -14(sp)
                  addi         a0, s9, 1290
                  lb           s5, -15(sp)
                  srli         a3, a4, 21
                  lhu          ra, 7(sp)
                  lb           a4, 2(sp)
                  slli         a5, s9, 25
                  addi         t5, t4, -1431
                  sb           t3, -8(sp)
                  lhu          s10, 11(sp)
                  nop
                  sb           zero, -8(sp)
                  sltiu        s1, t2, 17
                  sub          s6, a4, a3
                  sll          t2, t1, t0
                  sltu         t4, zero, s1
                  lh           s8, 5(sp) #end riscv_load_store_rand_instr_stream_2
                  slt          a1, a3, t3
                  add          t2, zero, tp
                  bltu         gp, s10, 291f
                  ori          t0, s10, -1795
                  slt          a6, ra, tp
                  srai         s10, t4, 18
291:              and          s3, s8, s5
292:              slli         s0, s10, 26
                  bltu         t0, a4, 301f
                  blt          s11, a6, 310f
                  xor          s6, s6, ra
                  and          s10, t2, s8
                  srli         a2, sp, 23
                  sra          ra, t5, t1
                  ori          ra, t1, 423
                  xor          s1, a7, a5
301:              slti         t3, s5, 504
                  andi         a2, t3, -1012
                  bge          t2, s11, 315f
                  bgeu         t5, a1, 309f
                  or           t5, s11, t2
                  ori          s5, a0, -164
                  addi         s8, s1, -1316
                  bgeu         s11, s9, 315f
309:              sltu         t1, t4, a5
310:              sll          sp, t6, t4
                  or           s7, s0, s4
                  blt          t2, s0, 325f
                  srai         s8, a6, 17
                  blt          zero, s4, 321f
315:              andi         a0, ra, -1816
                  srli         s11, s4, 30
                  blt          s1, t3, 330f
                  andi         t3, t6, -953
                  ori          s5, a1, -738
                  addi         a4, s9, 486
321:              sra          t0, s0, gp
                  beq          s9, a7, 328f
                  lui          t6, 209079
                  sub          t5, ra, s3
325:              sra          s6, a1, s7
                  sll          s7, s7, s6
                  sub          s6, sp, t4
328:              sltiu        a4, t6, -1319
                  xori         t5, a7, -583
330:              bltu         s1, zero, 343f
                  andi         s6, t2, -1025
                  slti         s6, t4, 230
                  beq          s6, ra, 340f
                  and          a5, s5, zero
                  bge          a1, t0, 351f
                  bltu         zero, t0, 338f
                  bltu         tp, t5, 338f
338:              add          t3, s11, s0
                  srli         a4, sp, 11
340:              blt          t6, a0, 344f
                  sltu         s3, s1, tp
                  sra          a4, s8, sp
343:              srai         sp, s2, 21
344:              sltiu        sp, a6, -1558
                  xor          t0, s8, s9
                  andi         a3, s11, 1976
                  srl          a0, a3, t1
                  srli         s2, s11, 8
                  add          s7, s6, zero
                  bltu         s0, a2, 358f
351:              xor          a0, a2, a4
                  xor          t0, t2, t5
                  sub          t6, a6, s9
                  bne          a7, a1, 355f
355:              addi         a6, tp, -905
                  ori          a4, s8, 941
                  add          t4, a5, a2
358:              bne          gp, t1, 377f
                  bge          a3, sp, 374f
                  bltu         t3, sp, 374f
                  sltiu        a6, a0, 867
                  beq          sp, s7, 369f
                  sub          gp, s10, sp
                  srli         ra, a7, 13
                  sltu         s7, s5, a4
                  ori          s1, s6, 1861
                  xori         s3, s11, -1167
                  andi         s5, tp, 1878
369:              bltu         tp, s6, 385f
                  andi         t5, s3, -1236
                  nop
                  andi         a5, gp, -1700
                  srl          s9, s2, zero
374:              sltu         zero, a0, t5
                  bge          s11, a3, 394f
                  sltiu        t1, zero, 631
377:              sra          a3, t4, s5
                  addi         t6, sp, 566
                  slt          a2, t1, s0
                  andi         a3, s5, 1261
                  or           zero, s2, ra
                  or           s2, a7, sp
                  andi         a4, s3, -1341
                  lui          s5, 199964
385:              or           s6, s5, t3
                  bge          s2, s10, 401f
                  andi         t6, ra, 353
                  slli         s1, gp, 12
                  andi         t6, zero, 1096
                  bne          a4, s6, 403f
                  and          a5, t4, tp
                  ori          s6, s6, 1526
                  sra          a1, s2, t2
394:              xor          a3, s2, a2
                  beq          s8, a1, 402f
                  lui          s1, 648733
                  xori         s2, s11, 12
                  blt          a1, s8, 404f
                  ori          s2, sp, -931
                  slli         ra, a6, 31
401:              slt          a5, s8, s11
402:              bltu         s9, t0, 415f
403:              slt          a4, s10, a2
404:              srai         s3, s7, 31
                  bltu         a4, a0, 412f
                  lui          s10, 664442
                  srai         t6, s2, 14
                  sltu         t2, sp, ra
                  bgeu         t1, s4, 411f
                  blt          s9, s7, 426f
411:              addi         t1, t4, -378
412:              ori          a3, s8, 925
                  sltiu        s5, sp, 1358
                  lui          t0, 370707
415:              sll          s11, t6, t2
                  bge          a2, t2, 424f
                  auipc        s6, 55092
                  bgeu         a4, t6, 422f
                  ori          a0, ra, 1271
                  srai         s7, t6, 16
                  auipc        a6, 232665
422:              sll          t5, t0, s0
                  or           t1, t6, a6
424:              xori         s3, s0, -2011
                  srli         t3, t5, 20
426:              slti         s8, ra, -771
                  andi         s3, s0, 716
                  sltu         s9, t2, a0
                  bgeu         a2, a3, 443f
                  lui          s11, 130872
                  slti         sp, a7, -1257
                  add          t5, t1, t1
                  bltu         a2, t0, 436f
                  nop
                  slt          s8, s8, s10
436:              addi         gp, a4, -1341
                  bgeu         ra, s5, 450f
                  sltiu        s11, s6, 1168
                  sub          s7, a3, a7
                  ori          t1, zero, -1577
                  blt          zero, t2, 453f
                  bne          s7, zero, 457f
443:              bge          a5, s11, 454f
                  sub          s5, s1, a3
                  sltiu        t1, zero, -1061
                  bgeu         s11, t1, 454f
                  add          t0, ra, s0
                  sltu         a6, a7, t3
                  sra          t1, t5, s1
450:              sltiu        s10, a7, -1517
                  bne          s1, a4, 456f
                  xor          s5, t6, t5
453:              sra          s10, s3, s5
454:              ori          t4, s4, -1470
                  bne          s8, s1, 460f
456:              bltu         zero, a6, 472f
457:              srl          t4, s11, s9
                  srli         a1, a7, 17
                  srl          sp, ra, s7
460:              sra          s10, a3, a3
                  xori         t4, gp, 485
                  xor          a1, s3, a7
                  add          s2, s1, a6
                  sub          a0, s4, s5
                  srli         t6, s7, 0
                  slli         s8, s4, 8
                  sll          ra, s0, t4
                  bne          a3, t1, 483f
                  or           s10, a1, a7
                  srai         t6, a4, 27
                  bge          t0, t5, 484f
472:              and          s11, t3, a4
                  or           zero, t4, t5
                  bge          t0, s10, 479f
                  lui          t6, 558678
                  and          t6, s3, s6
                  xor          t6, s5, ra
                  auipc        s2, 472948
479:              sub          a3, a6, s5
                  beq          s0, s6, 484f
                  ori          s8, s6, -1398
                  nop
483:              srli         s0, s4, 16
484:              srli         zero, a1, 17
                  bne          t1, t2, 492f
                  sltu         ra, s0, s7
                  ori          s1, s11, 1996
                  add          ra, s5, s4
                  ori          s7, s1, -1232
                  nop
                  andi         a2, a0, 1625
492:              bltu         gp, s7, 493f
493:              add          s7, a6, s11
                  add          a2, sp, a6
                  xor          a0, s2, t2
                  slti         a0, t3, 1447
                  bltu         s0, zero, 498f
498:              ori          a3, s9, -1383
                  srli         t6, s2, 26
                  sll          s3, a5, gp
                  sub          a3, s11, t2
                  srai         s3, a5, 19
                  add          a4, t1, s10
                  and          a3, s7, t0
                  slli         a6, s7, 29
                  andi         s1, a7, -1508
                  xor          a1, s8, s5
                  bge          t1, s4, 515f
                  beq          t4, tp, 514f
                  beq          t1, s4, 523f
                  srli         t0, a6, 1
                  blt          s4, a1, 517f
                  bgeu         a5, t2, 525f
514:              bltu         t0, s7, 527f
515:              andi         s2, t2, -1536
                  srl          s0, s3, s3
517:              ori          s5, a4, -583
                  sll          s2, tp, a2
                  slt          s0, a5, a5
                  sltiu        a5, gp, -1603
                  xor          a5, s7, sp
                  beq          s3, a3, 538f
523:              srai         s2, t6, 11
                  slt          a4, ra, t4
525:              andi         s9, s5, 79
                  slt          t3, a3, t1
527:              andi         t4, ra, -185
                  blt          t2, gp, 544f
                  sll          s9, gp, t2
                  bgeu         t2, a0, 543f
                  srli         s3, a7, 15
                  addi         a2, s9, -294
                  addi         s5, t0, 1105
                  srli         a2, a3, 4
                  or           s10, a5, t2
                  slt          a6, a5, t1
                  addi         t5, s6, 383
538:              beq          a5, s2, 557f
                  sltu         s1, tp, t3
                  slt          a5, a0, a5
                  or           t0, s6, s1
                  auipc        s9, 512003
543:              bgeu         tp, s2, 547f
544:              sltu         t3, t0, s6
                  bgeu         ra, t1, 553f
                  addi         t1, s3, -680
547:              sltu         s11, s0, a0
                  srli         s8, a7, 8
                  sltu         a0, a7, tp
                  slt          s8, s8, t0
                  slti         s3, a6, 1012
                  xor          s6, sp, s11
553:              nop
                  sltu         t0, a7, s0
                  and          a4, s9, tp
                  beq          a4, ra, 571f
557:              andi         s2, t5, 1089
                  andi         gp, s5, -1609
                  blt          a7, s8, 567f
                  sll          gp, a5, a7
                  srai         s10, ra, 25
                  auipc        s1, 196181
                  slli         s10, s1, 26
                  or           s9, s4, s8
                  xor          t1, s7, s3
                  srai         s6, a0, 5
567:              sll          a2, s5, sp
                  slli         s0, zero, 25
                  blt          s1, a3, 570f
570:              slti         s10, s7, -339
571:              srli         sp, s4, 22
                  auipc        s9, 689674
                  xor          t3, t5, s7
                  slti         t5, s11, 397
                  sll          t4, sp, s10
                  srli         s9, s6, 24
                  andi         s7, t0, 1485
                  slli         t2, s8, 29
                  slti         s3, s6, 602
                  auipc        t1, 453346
                  slt          zero, t3, a4
                  sll          t5, s9, gp
                  sll          t6, t2, a7
                  sll          s11, tp, a2
                  and          s11, s7, s2
                  bgeu         s8, s5, 601f
                  sll          t5, gp, a1
                  or           s7, s2, s4
                  sltu         t1, s0, a0
                  andi         a3, s5, -1913
                  srli         sp, t3, 24
                  andi         s10, s10, 384
                  lui          s3, 62527
                  sltu         sp, zero, a6
                  bgeu         s1, s10, 610f
                  bge          s7, t2, 600f
                  sltu         sp, sp, t0
                  or           s3, a6, zero
                  bge          t6, t5, 601f
600:              ori          t3, a6, -805
601:              ori          t2, a4, -372
                  slt          a4, a7, s11
                  ori          a5, s3, 219
                  auipc        s8, 300289
                  addi         s8, a4, -1348
                  bne          ra, a1, 613f
                  srl          a1, s2, a3
                  slt          s10, s1, s11
                  sra          s11, a0, tp
610:              slti         a2, a6, 885
                  add          t0, s5, s6
                  slli         s10, a2, 29
613:              sub          t3, tp, s1
                  srl          s0, t1, a3
                  add          sp, t6, a3
                  srai         t4, a3, 28
                  slli         s7, ra, 14
                  sltu         s8, ra, a2
                  sra          s7, t5, tp
                  srl          s5, s2, t5
                  slli         s0, t3, 6
                  bge          a4, s6, 623f
623:              xor          ra, ra, s3
                  slt          a2, s0, s10
                  bltu         s4, sp, 628f
                  bge          ra, t4, 633f
                  slli         sp, t4, 13
628:              or           t0, t2, a5
                  ori          gp, s5, -846
                  bne          a3, t0, 641f
                  sltu         a2, s5, t2
                  auipc        t3, 277426
633:              nop
                  sll          gp, a5, s10
                  bgeu         a5, s2, 651f
                  and          s3, s3, s5
                  or           s9, tp, s10
                  slt          t0, s9, a5
                  srai         s10, a1, 25
                  xor          s6, a5, s8
641:              beq          s11, a4, 646f
                  andi         s9, s10, 1934
                  sub          t5, a4, a0
                  xor          a5, a3, s0
                  and          sp, s4, s10
646:              srl          s5, sp, s4
                  slti         t3, s8, 283
                  andi         t3, s8, 1301
                  srai         t5, a4, 20
                  ori          s11, s5, -979
651:              srl          a4, s4, t2
                  sll          s7, t0, s8
                  add          t6, s3, a0
                  nop
                  sub          s11, a3, s11
                  bne          s2, a5, 670f
                  bgeu         s10, s2, 663f
                  nop
                  xor          s5, sp, s1
                  auipc        t3, 254508
                  bgeu         s2, t6, 674f
                  addi         s2, a0, 354
663:              or           t2, t0, tp
                  srai         a1, s3, 19
                  srl          s2, a3, s2
                  auipc        a4, 821922
                  slti         ra, a7, -121
                  sltiu        t6, t3, 1087
                  blt          t6, gp, 676f
670:              blt          gp, s0, 675f
                  slt          s10, a3, a7
                  blt          ra, s1, 687f
                  addi         a6, gp, 1763
674:              srl          a5, s4, a2
675:              blt          t2, s1, 678f
676:              sltu         s9, s4, t6
                  addi         s5, t3, -530
678:              sub          t4, a4, s11
                  auipc        s2, 714502
                  bgeu         ra, t3, 689f
                  auipc        s2, 828098
                  nop
                  beq          t4, s4, 689f
                  blt          s6, a4, 689f
                  bltu         t4, tp, 687f
                  slt          s8, tp, gp
687:              sll          s1, t3, s1
                  nop
689:              slt          t6, s6, a6
                  andi         t4, a1, 788
                  lw           t5, 4(a7)
                  sub          s8, a1, a7
                  andi         s0, t2, 1877
                  sltu         s5, s0, gp
                  andi         t2, s11, 309
                  addi         a7, a7, 36
                  sub          t3, gp, a4
1196:             addi x1, x30, 0
1196:             jalr x1, x1, 0
sub_1:            sltu         a0, s11, s9
                  sub          a1, s5, t1
                  and          a0, zero, a1
                  addi         a7, a7, -36
                  slti         s2, s10, -1185
                  xori         s9, s5, -694
                  slt          s8, a7, s8
                  slli         t4, s1, 1
                  sw           t5, 4(a7)
                  srai         s2, s3, 11
                  add          gp, s9, a6
                  la           a5, sub_2
                  xori         t6, a2, 190
                  ori          a4, a1, 1217
                  xor          t2, a4, s8
                  addi         a5, a5, -745
                  auipc        s11, 143165
                  srli         t5, s4, 11
sub_1_j2:         jalr         t5, a5, 745 #jump sub_1 -> sub_2
                  slt          gp, zero, s9
                  andi         a6, t0, -883
                  bltu         s10, a5, 11f
                  sltu         t6, s6, s10
                  nop
                  xori         s11, a7, -587
                  xori         a3, a2, 897
                  bge          s3, s10, 25f
                  sra          s7, s4, zero
                  or           s10, s10, s4
                  andi         zero, t2, 1811
11:               bge          a7, s3, 12f
12:               sra          a5, tp, a2
                  slt          gp, a0, gp
                  sll          t0, tp, t5
                  sra          a1, s1, s11
                  xor          s7, s2, s0
                  nop
                  blt          s9, a7, 38f
                  bge          zero, a0, 20f
20:               sltu         s10, s5, a0
                  andi         s3, sp, 1015
                  sra          s5, s9, a1
                  slti         s7, t5, -197
                  blt          sp, s0, 37f
25:               sub          s6, s8, ra
                  andi         a3, s10, -1017
                  lui          a4, 631716
                  and          s8, s2, t0
                  bge          t5, gp, 39f
                  srai         a5, a5, 1
                  add          a4, sp, tp
                  slti         t5, t6, 1961
                  bne          t1, s2, 46f
                  srl          a2, s9, s3
                  nop
                  slti         s11, tp, -1422
37:               auipc        s11, 679162
38:               slli         s9, s0, 23
39:               sltiu        t6, a0, -1458
                  nop
                  bne          s2, s9, 58f
                  sltiu        s0, a5, 1539
                  auipc        a0, 766761
                  addi         t5, a4, 1373
                  or           t4, s7, t6
46:               beq          gp, s0, 58f
                  slli         a0, s7, 27
                  xori         t2, s0, 1033
                  beq          a1, s2, 66f
                  srai         t0, t4, 15
                  xor          t6, s4, s6
                  slt          a5, a2, a0
                  sltu         t6, sp, s3
                  sll          ra, zero, s3
                  or           s1, s10, s3
                  blt          t4, zero, 67f
                  sltu         t4, s10, a4
58:               beq          s6, s0, 63f
                  bge          zero, s1, 69f
                  bge          a1, sp, 69f
                  add          a4, a6, a3
                  bge          t2, s7, 66f
63:               bltu         a4, s4, 73f
                  bltu         s7, t0, 71f
                  add          a6, ra, t0
66:               or           ra, sp, s6
67:               bge          s8, a4, 73f
                  nop
69:               andi         s5, a3, -1488
                  sub          s8, s0, t0
71:               bgeu         gp, a1, 73f
                  andi         t6, s3, 329
73:               slti         s3, ra, -274
                  add          zero, s2, a7
                  sltiu        a1, a6, 413
                  slt          t0, s10, s10
                  lw           t5, 4(a7)
                  nop
                  and          s3, t0, a3
                  slt          a3, a6, ra
                  addi         a7, a7, 36
                  and          a2, t1, a6
102:              addi x29, x30, 1
102:              jalr x29, x29, 0
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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  add x20, x17, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x8, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x8, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x8, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x8, x6, ecall_handler
                  li x6, 0x1
                  beq x8, x6, instr_fault_handler
                  li x6, 0x5
                  beq x8, x6, load_fault_handler
                  li x6, 0x7
                  beq x8, x6, store_fault_handler
                  li x6, 0xc
                  beq x8, x6, pt_fault_handler
                  li x6, 0xd
                  beq x8, x6, pt_fault_handler
                  li x6, 0xf
                  beq x8, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x17, x20, zero
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
                  add x17, x20, zero
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
                  add x17, x20, zero
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
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x17, x20, zero
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
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x17, x20, zero
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
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x17, x20, zero
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
