.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 0
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x462437ff
                  li x3, 0x80000000
                  li x4, 0x7
                  li x5, 0xf
                  li x7, 0x0
                  li x8, 0xf2a4b1c2
                  li x9, 0xfaa3eac5
                  li x10, 0xabbfc126
                  li x11, 0x0
                  li x12, 0xf5dd3f57
                  li x13, 0x1
                  li x14, 0xfa477669
                  li x15, 0xb
                  li x16, 0x8
                  li x17, 0xfedaa11f
                  li x18, 0xf2eb5e6d
                  li x19, 0xf4486dce
                  li x20, 0x0
                  li x21, 0xb2b9e390
                  li x23, 0x80000000
                  li x24, 0xf1e3c8ad
                  li x25, 0xfcb0d42c
                  li x26, 0x1802f317
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xf579b163
                  la x6, user_stack_end
main:             lui          sp, 262152
                  la           a6, sub_2
                  slt          ra, ra, s5
                  andi         a1, a1, -806
                  srl          zero, gp, s4
                  addi         a6, a6, -337
                  nop
                  sra          s10, t1, s1
                  xor          s0, t0, t6
main_j3:          jalr         a7, a6, 338 #jump main -> sub_2
                  la           s7, region_0+1407 #start load_store_instr_stream_0
                  la           tp, region_0+787 #start load_store_instr_stream_1
                  sw           s5, -91(tp)
                  sb           a2, -456(tp)
                  la           t6, region_0+1070 #start load_store_instr_stream_2
                  lb           t3, -1036(s7)
                  lbu          s3, -761(s7)
                  lhu          gp, 16(t6)
                  lbu          s1, 1021(tp)
                  sb           t4, -95(tp)
                  sb           s1, 5(t6)
                  sh           s6, -1401(s7)
                  lbu          s11, 242(s7)
                  lh           s9, 12(t6)
                  lb           gp, -146(s7)
                  sb           s4, -164(s7)
                  lbu          s0, 286(tp)
                  sh           a4, 8(t6)
                  lb           ra, 629(tp)
                  lhu          s1, -483(s7)
                  lbu          s5, -722(s7)
                  lbu          t0, 148(s7)
                  lhu          s9, -6(t6)
                  lb           zero, -16(t6)
                  sb           s7, 430(tp) #end load_store_instr_stream_1
                  sb           zero, -16(t6) #end load_store_instr_stream_2
                  lbu          t3, 470(s7) #end load_store_instr_stream_0
                  la           a3, region_1+1275 #start riscv_load_store_rand_instr_stream_0
                  xor          s5, s11, s0
                  sb           a2, -215(a3)
                  lbu          s5, 178(a3)
                  and          s2, gp, sp
                  sltiu        s5, s1, 2029
                  or           s7, s4, s3
                  sw           s8, 249(a3)
                  slli         a4, gp, 21
                  sra          a4, s11, t0
                  sh           ra, 15(a3)
                  lhu          tp, 221(a3)
                  srl          zero, t4, t1
                  and          s0, s5, t6
                  sub          t2, s2, a4
                  lb           t6, 32(a3)
                  slti         s9, ra, 133
                  sltiu        zero, t1, -146
                  sb           ra, 191(a3)
                  slt          a4, s6, s9
                  sb           s7, -238(a3)
                  lui          t5, 369903
                  sub          ra, a0, sp
                  srl          t5, sp, a5
                  xor          s0, s11, a2
                  lui          t5, 1047794
                  sltiu        t6, s4, -1733
                  sb           t4, -21(a3)
                  srl          t6, t1, ra
                  lbu          a2, -186(a3)
                  sb           t3, -237(a3)
                  xori         a6, s2, -1290
                  sb           t2, -153(a3)
                  sub          s10, t4, a3
                  sb           t5, 234(a3)
                  sb           a3, -28(a3)
                  lb           t6, -23(a3)
                  lh           a4, -215(a3)
                  sb           a3, -35(a3)
                  xor          t6, s6, t3
                  lbu          t6, 82(a3)
                  slli         s1, a1, 19
                  ori          s1, s2, 939
                  sb           t2, -198(a3)
                  lb           a7, -80(a3)
                  auipc        s8, 745989
                  lbu          sp, 139(a3)
                  lhu          t2, -151(a3)
                  lbu          a7, 11(a3)
                  lw           gp, -147(a3)
                  srai         s10, zero, 21
                  xori         t6, sp, -1331
                  sw           s8, 97(a3)
                  sb           s2, 221(a3) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+550 #start load_store_instr_stream_1
                  sb           s5, 41(s11)
                  lhu          t3, -58(s11)
                  la           s1, region_0+1797 #start load_store_instr_stream_2
                  la           a0, region_0+1065 #start load_store_instr_stream_4
                  la           sp, region_0+1625 #start load_store_instr_stream_0
                  lhu          s0, 15(sp)
                  lb           ra, -7(s1)
                  lhu          s7, -12(s11)
                  la           s3, region_0+1443 #start load_store_instr_stream_3
                  lbu          s7, 43(a0)
                  sb           s1, -63(s1)
                  lbu          s5, -15(sp)
                  lb           tp, 55(s11)
                  sb           s7, 47(s1)
                  sb           t0, -101(a0)
                  lbu          t2, -227(s3)
                  sb           t6, 8(s11)
                  lb           s10, -254(s3)
                  lbu          s5, -11(s3)
                  sb           s8, -4(s1)
                  sb           zero, -6(sp)
                  lbu          tp, 75(s3)
                  lb           gp, -7(a0)
                  lb           t4, 24(s3)
                  lbu          t2, 10(sp)
                  lb           a2, -13(s3)
                  lh           zero, -249(s3)
                  lbu          a1, 13(sp)
                  sb           s9, 9(s1) #end load_store_instr_stream_2
                  lb           s10, -893(a0)
                  sw           s7, 3(sp)
                  lb           s10, -532(a0) #end load_store_instr_stream_4
                  lbu          s8, -104(s3)
                  lb           s8, 7(sp)
                  lbu          s5, -9(s11)
                  sb           a5, -16(sp)
                  lhu          t6, 255(s3)
                  sh           s7, -245(s3) #end load_store_instr_stream_3
                  sb           gp, -15(s11) #end load_store_instr_stream_1
                  lbu          tp, 2(sp)
                  sb           a1, 12(sp) #end load_store_instr_stream_0
                  la           sp, region_1+472 #start riscv_load_store_hazard_instr_stream_0
                  lb           s9, 16(sp)
                  addi         t6, s0, -1393
                  sb           s5, 9(sp)
                  sb           s8, 9(sp)
                  lb           t3, 9(sp)
                  lb           a6, 9(sp)
                  srli         s0, tp, 4
                  or           tp, a0, a0
                  sltiu        a1, t5, 1795
                  lbu          a0, 9(sp)
                  lb           s2, -13(sp)
                  sb           a7, -13(sp)
                  lbu          t2, -13(sp)
                  lb           s11, -13(sp)
                  sb           t2, -13(sp)
                  lb           t5, -13(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t0, region_0+226 #start riscv_load_store_hazard_instr_stream_1
                  lb           t6, -45(t0)
                  sb           s5, -57(t0)
                  lhu          ra, 34(t0)
                  sb           s1, -21(t0)
                  lw           a0, 54(t0)
                  lb           s0, 54(t0)
                  addi         s11, ra, 1392
                  sb           s1, -21(t0)
                  lbu          s9, 57(t0)
                  sw           s8, 42(t0)
                  lb           zero, -36(t0)
                  srai         s2, s1, 25
                  lbu          a0, -60(t0)
                  lw           a5, 50(t0)
                  add          ra, s2, s3
                  lb           t4, -21(t0)
                  sb           s11, 50(t0)
                  lb           s5, -9(t0)
                  lb           s1, -63(t0)
                  sb           t0, -8(t0)
                  srl          s11, s11, s11
                  sh           t4, -50(t0) #end riscv_load_store_hazard_instr_stream_1
                  addi         zero, s3, 208
                  blt          tp, t4, 6f
                  lui          s8, 440689
                  addi         t4, ra, 1587
                  srli         t6, s5, 2
                  sll          s7, a5, s10
6:                ori          sp, s7, -2017
                  and          gp, a6, s6
                  auipc        t5, 325720
                  ori          t0, s3, 1290
                  la           sp, region_1+1741 #start riscv_load_store_rand_instr_stream_1
                  lbu          s1, -104(sp)
                  lbu          s11, 102(sp)
                  ori          t5, gp, -1205
                  sb           a6, -59(sp)
                  lb           s1, 226(sp)
                  lbu          gp, -155(sp)
                  andi         t5, a3, -1875
                  sb           t0, -186(sp)
                  lhu          a2, -111(sp)
                  andi         s0, zero, -1574
                  lbu          ra, 94(sp)
                  sltu         t0, a6, sp
                  sll          s1, s0, a1
                  lb           s7, -110(sp)
                  sb           zero, 244(sp)
                  lb           s5, -252(sp)
                  lb           s0, -114(sp)
                  srli         s0, t1, 26
                  xor          t5, s9, t5
                  sra          ra, t2, sp
                  and          s0, t5, a0
                  sra          s2, s5, gp
                  lh           a3, -57(sp) #end riscv_load_store_rand_instr_stream_1
                  beq          zero, s9, 26f
                  xor          t6, a7, a2
                  auipc        a7, 975305
                  andi         t2, s2, -633
                  srli         s9, s10, 1
                  beq          s2, s7, 25f
                  srl          ra, gp, s8
                  srli         zero, a7, 12
                  slli         t4, s9, 21
                  sltu         s5, s11, a5
                  bne          s6, a5, 25f
                  sll          t4, zero, t1
                  sltiu        t5, a0, 210
                  srai         s3, zero, 1
                  bne          t5, a2, 40f
25:               srai         a2, s7, 10
26:               ori          a4, t1, -762
                  ori          a3, a1, 1162
                  sub          sp, s11, sp
                  sll          tp, zero, t1
                  addi         s9, ra, 389
                  and          t0, sp, s4
                  bge          gp, s5, 35f
                  bltu         s4, zero, 41f
                  bltu         s11, a0, 48f
35:               sub          s11, s1, s10
                  slti         a7, s7, 1255
                  slt          s10, s3, gp
                  sra          t6, s2, t3
                  nop
40:               blt          t0, s4, 49f
41:               slt          t3, s10, s1
                  srai         a0, ra, 15
                  srl          s2, s6, zero
                  addi         ra, tp, 1067
                  sltu         s5, s0, s2
                  add          t6, sp, s0
                  andi         t6, a0, 277
48:               or           s1, a0, s5
49:               nop
                  bge          t3, a1, 69f
                  sra          s2, s3, zero
                  bne          t6, s11, 63f
                  sll          s11, sp, a4
                  andi         s0, t6, -1885
                  and          t5, t2, s4
                  srli         sp, a3, 4
                  slli         s2, a7, 7
                  la           a1, sub_1
                  addi         a1, a1, -225
                  srl          s0, a2, t3
                  srli         s10, a7, 20
                  xori         s7, a2, -1051
                  auipc        sp, 928560
                  sltiu        a0, s1, 269
                  srli         tp, gp, 21
main_j1:          jalr         a7, a1, 225 #jump main -> sub_1
                  bgeu         t3, t2, 66f
                  sll          s1, s3, tp
                  bge          s3, tp, 63f
                  beq          s8, t3, 77f
                  beq          s7, t0, 70f
                  beq          zero, t0, 66f
                  addi         t5, s10, -774
                  xor          a7, s10, s11
                  auipc        a2, 273772
63:               slti         t0, s1, -621
                  slti         a0, a5, -638
                  andi         a0, s8, -264
66:               ori          gp, s8, 1890
                  srli         a2, s3, 30
                  beq          s5, t3, 72f
69:               sltiu        t0, s8, 1027
70:               add          a5, s7, ra
                  slt          s2, s1, t0
72:               lui          sp, 181198
                  slti         t5, t4, 1455
                  la           t5, sub_2
                  ori          a5, a6, -1941
                  addi         t5, t5, 473
                  slti         s3, a1, -131
                  slli         s9, zero, 30
                  xor          a5, zero, sp
                  sltu         a4, tp, a0
                  slti         s10, s1, 1478
                  lui          s11, 733508
main_j2:          jalr         a7, t5, -472 #jump main -> sub_2
                  srl          t5, a2, t1
                  blt          t5, tp, 92f
                  bne          a0, s0, 95f
77:               auipc        s5, 698578
                  addi         gp, t2, 919
                  sub          zero, s3, s2
                  and          a1, a0, s3
                  xor          s11, s3, t1
                  ori          s11, s8, -180
                  bge          a2, t2, 96f
                  nop
                  slt          s8, zero, ra
                  sltiu        a2, s10, -1022
                  bne          s0, tp, 95f
                  srl          s3, a2, a0
                  bge          t1, s0, 102f
                  and          a6, a4, a4
                  slli         gp, s2, 7
92:               auipc        s11, 840790
                  nop
                  auipc        gp, 383265
95:               sll          s7, a5, t2
96:               sltu         s9, s8, ra
                  auipc        t6, 191375
                  andi         t3, tp, 320
                  sra          t0, t5, s11
                  ori          sp, t3, 835
                  bne          s7, a1, 114f
102:              ori          ra, a0, -1466
                  xori         a7, tp, 1036
                  bne          s2, s6, 114f
                  bltu         s5, t6, 111f
                  bne          s4, s7, 121f
                  slti         s5, tp, 76
                  or           tp, a3, s1
                  add          sp, a5, a2
                  srl          gp, s4, s1
111:              addi         t3, s3, -108
                  bltu         t4, s6, 132f
                  slt          s2, s8, s5
114:              add          t5, sp, t2
                  or           s11, a5, s9
                  slt          ra, s0, a0
                  srai         a1, a2, 5
                  slt          a0, s5, t2
                  slt          a4, t3, a0
                  ori          sp, s2, -469
121:              bge          t3, gp, 140f
                  sll          tp, zero, t5
                  and          s1, a6, gp
                  srai         a5, s10, 3
                  beq          a6, s0, 145f
                  beq          a3, s3, 137f
                  sltiu        t0, s11, -1635
                  nop
                  slti         ra, s2, 1463
                  slli         s2, s4, 24
                  sub          t5, a0, gp
132:              bgeu         t1, a6, 135f
                  addi         tp, s6, -1774
                  bne          a2, t2, 142f
135:              add          s1, a6, t1
                  bge          sp, s8, 141f
137:              xori         t5, a3, -179
                  srl          s2, s9, gp
                  slli         s3, sp, 26
140:              xor          ra, s2, zero
141:              lui          a7, 448844
142:              addi         s1, s4, -936
                  sub          a0, t3, t1
                  sra          s5, a1, s11
145:              bne          t6, t5, 165f
                  sub          t6, a2, s5
                  beq          a4, s0, 164f
                  beq          s8, t3, 155f
                  xor          t3, t3, gp
                  slli         s3, tp, 27
                  srl          a1, a2, s8
                  bne          t2, s4, 159f
                  slt          t5, tp, s7
                  srl          t0, t2, t4
155:              sltu         s3, s9, s5
                  srai         t2, t5, 26
                  addi         s9, t1, 780
                  nop
159:              andi         s7, t4, 499
                  bgeu         s6, a5, 176f
                  bge          zero, a2, 180f
                  sra          s10, s8, s9
                  andi         a3, a0, 487
164:              blt          tp, s4, 170f
165:              sll          t4, t3, s10
                  add          ra, a5, s4
                  bge          a5, s11, 180f
                  addi         a5, t4, -1300
                  add          s0, t5, t0
170:              xori         s2, sp, 1878
                  srl          s11, tp, t6
                  slli         a0, ra, 29
                  xor          a3, s11, t4
                  and          a7, zero, s1
                  srai         a3, s7, 7
176:              andi         a6, t3, 1858
                  srli         t6, s6, 30
                  sltu         t6, t1, s8
                  nop
180:              sltu         ra, a0, tp
                  srai         s11, gp, 21
                  beq          t2, a3, 195f
                  add          s3, t4, a6
                  sltiu        zero, s9, 226
                  bne          t4, ra, 205f
                  sra          s10, a3, s4
                  lui          t6, 915590
                  slli         t3, s3, 26
                  nop
                  andi         s0, t0, 24
                  srli         a0, t0, 7
                  addi         sp, t0, 1791
                  and          a2, a4, s0
                  bge          tp, sp, 207f
195:              slti         zero, a2, -391
                  bgeu         a1, t0, 207f
                  srai         a3, t2, 22
                  srl          s2, sp, t4
                  or           s8, a5, s1
                  and          s5, a2, t1
                  bge          ra, a0, 217f
                  slti         a7, s11, 378
                  slt          t6, zero, a5
                  auipc        s3, 723459
205:              xor          t3, a3, a0
                  slti         s2, zero, -354
207:              srai         t0, a0, 25
                  slli         a6, a7, 15
                  beq          s6, t0, 221f
                  ori          s1, t4, 1136
                  sltu         t6, a0, t5
                  sra          a4, t5, t1
                  nop
                  sll          zero, a0, s3
                  slli         t2, a5, 2
                  srli         s10, sp, 6
217:              and          tp, s10, gp
                  auipc        ra, 249369
                  ori          s10, a7, 1810
                  sub          t5, sp, a3
221:              slt          a1, gp, t5
                  addi         a2, sp, -1051
                  addi         a6, s7, -2037
                  addi         a0, s3, 1435
                  or           s3, a2, tp
                  andi         a2, t5, -1812
                  andi         ra, s8, 1494
                  nop
                  ori          s8, s0, -255
                  or           s8, sp, a5
                  xor          a1, s11, a7
                  ori          sp, a6, 1953
                  and          a4, t5, a4
                  bne          t4, a3, 238f
                  or           a7, s2, s3
                  bgeu         s8, a7, 246f
                  sub          gp, s9, t0
238:              beq          a6, t4, 247f
                  sub          t6, s5, a0
                  sltu         ra, tp, a4
                  or           gp, ra, t1
                  srai         t2, s4, 1
                  srl          zero, t2, s5
                  addi         a2, zero, 1033
                  bge          s0, a3, 247f
246:              bne          t2, t2, 247f
247:              or           t6, sp, a0
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slti         s8, s0, 382
                  bge          a1, s7, sub_2_stack_p
sub_2_stack_p:    addi         t1, t1, -20
                  slt          s9, a1, a2
                  addi         a1, t4, 1493
                  sw           a7, 4(t1)
                  andi         ra, s11, -1535
                  addi         gp, a7, -1118
                  sub          a4, s5, s3
                  srli         gp, s5, 23
                  la           s0, region_1+671 #start load_store_instr_stream_1
                  la           sp, region_1+1426 #start load_store_instr_stream_0
                  la           s1, region_1+252 #start load_store_instr_stream_3
                  lb           gp, -28(s0)
                  lb           a1, -51(s0)
                  lbu          a5, 288(sp)
                  la           s11, region_1+1466 #start load_store_instr_stream_2
                  lh           s7, 16(s1)
                  lb           t6, -1071(s11)
                  sb           s5, -13(s1)
                  lb           s7, -26(s0)
                  lhu          s9, 268(sp)
                  lb           a3, 403(s11)
                  sb           s9, 43(s0)
                  lb           s2, -1123(sp)
                  sh           s10, -4(s1)
                  lb           t0, -429(sp)
                  sb           t5, -725(s11)
                  sb           a6, -148(s11)
                  lbu          a1, -461(s11)
                  lb           s3, 3(s1)
                  sh           s6, 16(s1)
                  lbu          s9, 16(s0)
                  lbu          a7, -885(s11)
                  lb           s5, -28(s0)
                  lb           a0, -313(sp)
                  lh           t5, -42(s11)
                  lbu          a5, 12(s1)
                  lbu          t2, -32(s0)
                  lbu          t3, 13(s1)
                  sh           s11, -380(sp)
                  sh           t3, -4(s1)
                  lbu          s8, -1039(sp)
                  lbu          s10, 523(s11)
                  lbu          a7, 387(s11)
                  sb           s7, -43(s0) #end load_store_instr_stream_1
                  lb           s10, -15(s1)
                  lbu          a0, 144(s11) #end load_store_instr_stream_2
                  sb           t4, -10(s1) #end load_store_instr_stream_3
                  lb           t0, -361(sp) #end load_store_instr_stream_0
                  la           s2, region_0+599 #start riscv_load_store_rand_instr_stream_2
                  andi         t6, sp, 1041
                  add          s7, t6, t3
                  srai         s8, s0, 21
                  lh           a4, -1(s2)
                  sltiu        zero, s3, 1527
                  lui          zero, 960396
                  or           a2, t3, s6
                  lhu          a1, 1(s2)
                  sll          a7, a4, zero
                  srli         a2, s6, 0
                  nop
                  add          ra, s0, s11
                  sb           s7, -11(s2)
                  xori         s9, t4, -1179
                  sb           a6, 16(s2)
                  lb           s9, 10(s2)
                  nop
                  xori         s9, gp, 1779
                  srli         a4, a1, 31
                  sltiu        s7, s3, -545
                  sra          s8, a2, t1
                  sb           s7, -16(s2)
                  sub          s9, t3, a1
                  lw           a6, -15(s2)
                  xor          s5, t1, sp
                  lbu          zero, 16(s2)
                  sll          s9, a4, s0
                  srl          s8, a3, tp
                  srai         t4, s7, 27
                  srli         ra, sp, 11
                  addi         a6, a1, 659
                  slli         s8, a0, 16
                  sltu         a7, s5, a6
                  xori         a6, gp, 263
                  lbu          s10, 10(s2)
                  auipc        s3, 542220
                  sll          s3, t2, a4
                  sll          t2, a4, s2
                  lbu          a1, -15(s2) #end riscv_load_store_rand_instr_stream_2
                  la           t6, region_0+656 #start riscv_load_store_hazard_instr_stream_2
                  sll          s3, a2, gp
                  add          t0, t3, gp
                  lbu          sp, 7(t6)
                  sll          tp, a1, t0
                  sh           t2, 10(t6)
                  lb           t5, 15(t6)
                  lbu          a5, 15(t6)
                  lbu          s9, 15(t6)
                  sh           s2, 4(t6)
                  and          s3, a2, t5
                  lhu          gp, -14(t6)
                  srai         a5, s1, 9
                  sh           a5, -14(t6)
                  lb           gp, 5(t6)
                  lbu          s10, 5(t6) #end riscv_load_store_hazard_instr_stream_2
                  la           s2, region_0+1605 #start riscv_load_store_rand_instr_stream_0
                  nop
                  lbu          gp, 197(s2)
                  lui          a2, 123688
                  lhu          a3, 155(s2)
                  srl          t0, s11, s10
                  lui          ra, 219058
                  ori          s1, s0, -97
                  slti         ra, s8, -67
                  lbu          s5, 244(s2)
                  srli         t2, s0, 17
                  andi         zero, a3, 1037
                  sb           t1, 217(s2)
                  lb           t4, 241(s2)
                  lbu          s9, 162(s2)
                  lhu          s0, -93(s2)
                  lb           s10, -88(s2)
                  lb           s7, -211(s2)
                  lb           a7, -247(s2)
                  lhu          tp, 53(s2)
                  sb           t2, -31(s2)
                  or           t6, a3, sp
                  lhu          s7, 155(s2)
                  addi         s3, s3, 1022
                  ori          s1, s4, 1501
                  xor          t3, s0, s9
                  lh           s5, 231(s2)
                  lh           s10, 205(s2)
                  sra          zero, a4, s0
                  lhu          s7, 171(s2)
                  addi         s9, ra, -1283
                  lb           a7, -123(s2)
                  sltiu        t2, ra, -123
                  lb           a1, -235(s2)
                  lbu          a4, 27(s2)
                  lb           s0, -230(s2) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_0+1069 #start riscv_load_store_hazard_instr_stream_1
                  lhu          a3, -23(t0)
                  lb           s9, -2(t0)
                  lbu          s10, -2(t0)
                  lbu          a5, -40(t0)
                  sltiu        s9, s11, 616
                  lbu          a7, 22(t0)
                  lbu          a5, 22(t0)
                  slt          a2, s3, a5
                  sb           a5, -3(t0)
                  lbu          s1, -3(t0)
                  xori         gp, s2, 1
                  sb           t6, 46(t0)
                  lbu          a2, 46(t0)
                  lbu          a0, 36(t0)
                  lb           gp, -42(t0)
                  xor          s9, s5, a6
                  lhu          t5, 7(t0)
                  sw           gp, 7(t0)
                  sb           a3, 7(t0)
                  sb           sp, 7(t0) #end riscv_load_store_hazard_instr_stream_1
                  la           t4, region_1+976 #start riscv_load_store_hazard_instr_stream_0
                  sb           t5, -83(t4)
                  lb           a1, -194(t4)
                  sh           t6, -110(t4)
                  sb           t3, -239(t4)
                  lbu          ra, -239(t4)
                  lbu          a4, 215(t4)
                  lw           s2, -92(t4)
                  sh           a7, 22(t4)
                  lb           t6, 22(t4)
                  lw           t2, -44(t4)
                  lbu          a4, 121(t4)
                  sh           s9, 228(t4)
                  lb           t5, -79(t4)
                  lbu          t0, 85(t4)
                  and          a5, s7, zero
                  and          a7, s8, gp
                  sb           t1, 138(t4)
                  lb           t2, 175(t4)
                  lhu          s1, 70(t4)
                  sb           a0, 86(t4)
                  lbu          a3, 175(t4) #end riscv_load_store_hazard_instr_stream_0
                  la           t3, region_0+1482 #start load_store_instr_stream_0
                  lb           t4, 503(t3)
                  lbu          t6, 406(t3)
                  la           a2, region_0+1721 #start load_store_instr_stream_1
                  la           ra, region_0+880 #start load_store_instr_stream_2
                  sw           ra, -1186(t3)
                  lbu          s3, 130(a2)
                  lb           a6, 223(t3)
                  sb           s2, -176(ra)
                  lb           sp, -382(ra)
                  lb           a1, -1471(t3)
                  sb           t0, 156(ra)
                  lbu          s9, 92(t3)
                  sw           s5, 247(a2)
                  sb           zero, 75(ra)
                  lbu          a6, 236(a2)
                  sb           a6, 184(a2)
                  sb           t0, -784(ra)
                  lbu          zero, 671(ra)
                  lbu          s9, 146(a2) #end load_store_instr_stream_1
                  sb           sp, -269(ra)
                  lbu          t0, -196(ra)
                  lbu          t2, -795(ra) #end load_store_instr_stream_2
                  sb           zero, 337(t3)
                  lbu          s0, -40(t3)
                  sb           s7, -1378(t3) #end load_store_instr_stream_0
                  la           s9, region_1+1235 #start riscv_load_store_rand_instr_stream_1
                  sb           a0, 5(s9)
                  andi         a6, t0, 748
                  sltu         sp, s10, a5
                  slli         a4, sp, 3
                  lbu          zero, -1235(s9)
                  srli         ra, s1, 23
                  xori         s1, t0, -549
                  sb           a0, 291(s9)
                  lhu          t2, -853(s9)
                  sltiu        t3, s5, -295
                  srai         ra, ra, 19
                  xori         s10, zero, 1859
                  or           a2, s3, s5
                  srli         a3, t1, 29
                  nop
                  sb           a1, 420(s9)
                  lb           sp, -448(s9)
                  auipc        a3, 672900
                  srai         s10, t1, 22
                  add          s2, t1, t3
                  sltiu        s5, a4, -1884
                  lb           a1, -328(s9)
                  sub          ra, s2, s11
                  sb           a6, 371(s9)
                  slli         s11, t5, 12
                  addi         a1, a4, 511
                  andi         a4, s7, -1368
                  sb           zero, -750(s9)
                  lbu          t0, -983(s9)
                  sh           a5, -451(s9)
                  sb           s9, 395(s9)
                  srai         a6, a2, 24
                  lb           a6, -715(s9)
                  lb           s1, -245(s9)
                  and          s8, s10, s7
                  sll          t0, a3, ra
                  xori         a7, t2, 1215
                  lb           s8, -7(s9)
                  xori         s5, s1, -1173
                  lb           t0, -677(s9)
                  lb           s8, -609(s9)
                  auipc        a4, 742061
                  sb           s5, -1081(s9)
                  auipc        t3, 918288
                  xor          s3, t0, t4
                  lhu          s10, 423(s9)
                  srli         sp, s3, 4
                  lbu          a7, -938(s9)
                  lbu          s7, 336(s9)
                  srai         s0, s9, 21
                  or           t5, tp, t2
                  lbu          s5, -422(s9)
                  lbu          a2, 36(s9) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_0+1758 #start load_store_instr_stream_0
                  la           t3, region_0+637 #start load_store_instr_stream_1
                  sb           t6, 1(t3)
                  la           s10, region_0+454 #start load_store_instr_stream_2
                  lb           t2, 38(s5)
                  sw           a5, 902(s10)
                  la           a2, region_0+564 #start load_store_instr_stream_3
                  lb           s8, -46(s5)
                  sw           t2, 84(a2)
                  lb           t5, 234(a2)
                  lb           a4, -44(t3)
                  lbu          s11, -10(t3)
                  lbu          a4, 3(t3)
                  lh           a5, 250(s10)
                  sh           s0, -150(a2)
                  lbu          zero, -57(s5)
                  lw           s8, -21(t3)
                  sb           s1, 83(a2)
                  lb           s7, 137(s10)
                  lh           s1, 202(a2)
                  sb           sp, -19(t3)
                  sb           t4, -234(a2)
                  lbu          a1, 166(a2) #end load_store_instr_stream_3
                  sb           s6, -243(s10)
                  lbu          sp, 1516(s10)
                  lhu          s7, 23(t3) #end load_store_instr_stream_1
                  lbu          s9, 567(s10)
                  sb           s3, 94(s10)
                  sb           s7, 45(s5)
                  lhu          t6, 16(s5)
                  lbu          a3, -18(s5)
                  lb           a5, 355(s10)
                  lw           a3, 18(s5)
                  lbu          s7, 533(s10) #end load_store_instr_stream_2
                  sb           gp, -59(s5) #end load_store_instr_stream_0
                  sub          s8, a7, a7
                  beq          s5, a5, 20f
                  and          t5, s4, a7
                  ori          a1, sp, -1398
                  nop
                  sll          a1, s0, zero
                  sltiu        s5, s8, -1964
                  sltu         sp, t1, s11
                  sra          a4, t6, gp
                  and          zero, gp, t2
                  xor          s1, a1, a2
                  xori         s9, s8, -1079
                  auipc        t5, 330762
                  and          t2, a0, sp
                  srli         t0, s1, 31
                  or           sp, t5, s9
                  bge          a4, t1, 17f
17:               beq          s2, t1, 18f
18:               xori         a7, s2, -786
                  addi         a7, ra, 1962
20:               srai         s11, gp, 28
                  or           t2, s0, t0
                  addi         s7, t0, 1841
                  xor          s9, s9, zero
                  ori          t3, a6, 315
                  addi         s10, t3, 1692
                  sltu         s10, ra, s10
                  slli         a1, a1, 6
                  srl          s10, a6, a2
                  bgeu         t4, sp, 31f
                  and          ra, a0, gp
31:               srli         t4, t0, 18
                  sll          t6, s6, s11
                  lui          s0, 148214
                  auipc        s1, 566758
                  bne          a5, s6, 46f
                  and          s8, zero, t2
                  xor          s10, s9, s3
                  auipc        a5, 516032
                  sltiu        a0, t0, -229
                  slli         a6, s2, 30
                  bltu         t3, s4, 60f
                  slli         s2, a1, 29
                  or           s2, a5, s9
                  srli         t0, s6, 19
                  slt          t3, s2, ra
46:               bltu         t4, s9, 66f
                  lui          s8, 654952
                  sltiu        t3, a1, 920
                  sltiu        t0, s7, -1295
                  andi         a5, s8, -1984
                  slli         s7, tp, 19
                  sltu         s8, t4, t3
                  xori         s10, a4, -1182
                  ori          a5, a5, -1633
                  addi         a2, t6, -164
                  bne          a0, s2, 62f
                  sltiu        t5, s5, -1413
                  slt          t3, s7, t6
                  slt          t6, s7, s7
60:               sll          t4, a5, s0
                  bgeu         a4, ra, 75f
62:               slt          s8, s11, tp
                  nop
                  bne          a1, sp, 70f
                  bge          s8, s8, 77f
66:               bge          t4, t1, 82f
                  and          tp, t0, s10
                  or           s2, a6, s5
                  slt          gp, s9, a5
70:               sub          s11, s10, s2
                  xor          a1, a6, t4
                  bgeu         a2, s6, 78f
                  slli         s9, a4, 29
                  bltu         s5, tp, 94f
75:               sub          sp, sp, t4
                  sltiu        t2, a6, -1182
77:               bne          a5, t6, 89f
78:               add          a4, a1, s5
                  ori          sp, zero, 1998
                  sltiu        a2, s2, -176
                  lui          a7, 422777
82:               sltiu        s5, t4, -351
                  slti         a2, s7, 1017
                  ori          sp, s6, -760
                  sra          a5, t0, a5
                  addi         a1, s0, -458
                  and          s7, s8, t1
                  beq          s0, t2, 108f
89:               bge          s0, t0, 92f
                  xori         zero, s0, 982
                  sll          s9, gp, t1
92:               and          a6, s2, s2
                  lui          a3, 639335
94:               sub          a6, t4, s1
                  srl          a7, s1, s1
                  srai         t3, s3, 29
                  slti         a4, t2, 1696
                  slli         ra, s6, 17
                  nop
                  xori         s8, s0, -2043
                  srl          tp, a7, s2
                  nop
                  add          zero, a1, s5
                  slli         a3, ra, 17
                  bne          a6, a7, 121f
                  sll          s5, a7, t1
                  beq          t0, a2, 124f
108:              andi         s8, s2, 1658
                  srli         a5, s3, 9
                  blt          t3, s7, 114f
                  slti         s3, gp, 185
                  andi         zero, a7, 1347
                  slti         t3, a0, 118
114:              xor          s9, t0, s9
                  srli         s5, t2, 4
                  ori          a3, t3, -1219
                  slti         sp, a5, -1255
                  sra          s0, s4, a3
                  bne          s7, tp, 136f
                  andi         s0, a4, 860
121:              lui          a6, 458451
                  srli         a7, a7, 9
                  slt          t4, a4, t4
124:              blt          s4, tp, 141f
                  sltiu        gp, a6, 419
                  sub          zero, t5, s4
                  beq          gp, s10, 136f
                  and          sp, a5, a2
                  nop
                  bge          a2, a1, 132f
                  lui          s3, 757000
132:              slt          s8, a3, s8
                  sub          sp, gp, a5
                  xori         a7, a5, 217
                  sltu         s5, a2, zero
136:              bge          zero, s8, 137f
137:              beq          t4, s4, 141f
                  and          a4, s11, t3
                  xor          sp, s3, t6
                  srl          a7, t4, a3
141:              srli         t4, t2, 16
                  xori         s0, t2, 1016
                  bne          a1, t3, 159f
                  sub          s7, s1, s2
                  ori          t4, s0, -946
                  sra          s11, t5, t1
                  bge          s10, t3, 164f
                  srai         t6, s8, 14
                  bne          t3, s4, 161f
                  xori         tp, a5, 646
                  sra          s5, t4, zero
                  beq          a3, s11, 162f
                  sll          s3, tp, tp
                  srli         s10, zero, 0
                  lui          s1, 112359
                  bgeu         s3, gp, 168f
                  bltu         a4, s7, 171f
                  auipc        a3, 208159
159:              bgeu         t3, t5, 161f
                  ori          t5, a3, 1352
161:              bne          gp, a6, 163f
162:              andi         a2, t0, 675
163:              addi         sp, a3, 1939
164:              sub          sp, a5, a6
                  beq          a0, s10, 171f
                  bltu         s4, t6, 186f
                  srai         zero, a4, 7
168:              or           a3, a4, s4
                  xor          sp, t2, t2
                  and          gp, s3, a7
171:              sltu         s2, a1, s5
                  add          a4, a1, tp
                  auipc        zero, 167204
                  nop
                  srli         a4, a0, 6
                  addi         ra, t5, -1296
                  and          s9, a4, t6
                  bge          a2, a4, 190f
                  and          s9, s10, sp
                  slt          gp, s9, s4
                  or           s3, s4, s8
                  xori         sp, gp, -1616
                  slt          s7, ra, s5
                  add          gp, a1, sp
                  add          a7, s7, s11
186:              bge          s1, a1, 205f
                  sll          s11, a0, t3
                  blt          t6, zero, 200f
                  sltiu        a3, t4, 428
190:              xor          s8, s7, t4
                  sltiu        s7, s11, 1439
                  beq          s5, a3, 212f
                  beq          t4, a0, 203f
                  sra          t0, tp, s2
                  srli         a6, t3, 0
                  sub          s3, a4, t0
                  bltu         tp, a3, 198f
198:              sltu         sp, t5, s11
                  nop
200:              xori         s8, t2, -1617
                  xori         sp, a1, -1214
                  sltu         s2, t2, s9
203:              xori         zero, a0, 1896
                  bgeu         t5, a0, 213f
205:              lui          a4, 255020
                  bltu         t6, a4, 207f
207:              sltu         s1, s3, s4
                  bltu         s2, t1, 219f
                  slti         a6, a6, -713
                  or           s8, a6, s4
                  bge          a4, s4, 228f
212:              bne          a2, s2, 229f
213:              andi         a1, tp, 79
                  auipc        a7, 622552
                  xor          t2, s4, a7
                  sltiu        t4, a5, -597
                  xori         s0, s7, -881
                  slti         t0, zero, -513
219:              slt          a3, t1, s7
                  nop
                  blt          t4, a0, 227f
                  slli         zero, t6, 6
                  addi         a1, s5, 715
                  ori          s2, s2, -1801
                  or           s7, s8, t5
                  add          s5, tp, a3
227:              bgeu         t0, t1, 246f
228:              bge          t0, a6, 232f
229:              blt          tp, a1, 233f
                  and          zero, s3, s11
                  slt          a6, t0, t0
232:              srai         tp, s7, 23
233:              lui          t0, 1034388
                  bgeu         gp, t5, 237f
                  srl          s1, a1, a1
                  sll          s9, a0, s1
237:              bltu         t2, s10, 254f
                  xori         s2, s11, -1783
                  ori          tp, sp, 1770
                  or           a7, zero, a2
                  srli         a6, s8, 30
                  bne          sp, s0, 259f
                  ori          t0, s6, 1628
                  bltu         a4, s5, 260f
                  add          s5, s8, t0
246:              add          tp, zero, s4
                  slti         s7, s0, 240
                  slt          s1, s3, s5
                  andi         a0, s11, 372
                  srai         s7, a6, 17
                  srai         gp, s11, 17
                  srli         gp, s2, 11
                  slli         zero, tp, 9
254:              lui          a7, 247128
                  slli         s0, t4, 0
                  sltu         s0, a5, s6
                  srli         a3, s11, 31
                  sll          a7, tp, t0
259:              sltiu        t6, s1, -1048
260:              lui          a2, 684679
                  bgeu         s11, s4, 277f
                  bge          gp, s1, 282f
                  bne          t1, s6, 279f
                  bltu         s5, a4, 270f
                  lui          a3, 712349
                  auipc        t2, 69882
                  bne          t6, s0, 268f
268:              sra          s9, gp, s1
                  sra          tp, tp, a1
270:              addi         a1, a4, -265
                  addi         s11, s2, -2009
                  bge          tp, a7, 275f
                  beq          s6, sp, 285f
                  srli         t4, sp, 3
275:              bge          gp, s2, 276f
276:              auipc        s11, 351613
277:              bltu         s6, t6, 293f
                  sltiu        zero, s6, -63
279:              sub          s2, a0, a2
                  srl          a7, s1, s1
                  xori         s0, a3, -914
282:              lui          t5, 307170
                  srli         a4, s0, 26
                  add          a4, a3, s10
285:              sra          s8, s9, a2
                  xori         s11, a2, -886
                  sltu         t2, s5, t4
                  auipc        t5, 62073
                  slli         t3, a3, 22
                  bgeu         s2, gp, 302f
                  addi         s11, t4, 1230
                  add          ra, ra, t0
293:              blt          a1, a6, 305f
                  srl          a1, a2, a6
                  nop
                  ori          a2, s1, -1871
                  xori         t6, t2, 342
                  xor          a6, s2, a6
                  or           a2, s10, t4
                  srl          a3, s4, tp
                  sll          s10, zero, t0
302:              bgeu         s0, s11, 316f
                  bgeu         s5, tp, 304f
304:              slti         t0, a6, -292
305:              sltiu        gp, tp, 1545
                  beq          s5, t1, 310f
                  nop
                  blt          a4, a3, 325f
                  auipc        t5, 583807
310:              slt          a0, t3, s0
                  sltu         t0, t6, zero
                  sltu         t3, gp, a5
                  and          t5, tp, t0
                  and          s8, t3, zero
                  sra          s7, s3, t3
316:              sra          t6, s8, gp
                  sll          a3, a0, s3
                  srli         t0, s10, 28
                  auipc        s1, 450056
                  srl          t6, a0, s4
                  lui          t6, 509236
                  or           a0, a1, s4
                  slti         a2, s6, 659
                  lui          s2, 731132
325:              xor          tp, gp, t1
                  slt          a6, ra, tp
                  nop
                  slti         t3, t4, 1788
                  srli         s1, s10, 31
                  auipc        a4, 673701
                  slli         t5, t3, 11
                  sltu         t4, s8, a5
                  sub          t0, s10, s7
                  srai         s8, t3, 30
                  xori         s10, s4, -42
                  bgeu         t5, s5, 345f
                  lui          a1, 148809
                  bltu         a2, gp, 345f
                  nop
                  bge          a6, s4, 345f
                  sub          t5, a1, tp
                  ori          s2, t1, 586
                  sll          t6, a7, gp
                  addi         zero, s1, -76
345:              slti         a5, s10, -671
                  sub          sp, s7, s10
                  add          s0, s10, a5
                  srai         t5, a5, 14
                  slli         s1, t0, 25
                  sra          s7, a0, zero
                  lui          a3, 428046
                  ori          tp, a5, -207
                  lw           a7, 4(t1)
                  srl          t5, t2, s8
                  addi         t1, t1, 20
                  ori          a6, s9, -1238
                  slli         zero, a6, 19
658:              addi x15, x17, 0
658:              jalr x15, x15, 0
sub_1:            ori          a3, s7, 899
                  beq          s11, t3, sub_1_stack_p
                  andi         s8, s0, 359
                  sll          t6, tp, gp
                  srai         gp, s1, 5
                  and          a2, sp, a1
                  slt          a3, a2, gp
sub_1_stack_p:    addi         t1, t1, -60
                  xori         s0, a5, 582
                  addi         t4, a5, -879
                  ori          s9, ra, -188
                  sw           a7, 4(t1)
                  sll          s10, s5, gp
                  la           t0, region_0+1879 #start load_store_instr_stream_1
                  la           t3, region_0+1176 #start load_store_instr_stream_0
                  lb           tp, -55(t3)
                  sh           s1, 11(t0)
                  lbu          s1, 2(t0)
                  lb           t5, 15(t0)
                  lb           t2, 1(t0)
                  lbu          a2, -1(t3)
                  lb           a0, 12(t0)
                  lbu          sp, -23(t3)
                  lbu          a0, -11(t0)
                  lbu          s0, 10(t0)
                  lbu          t4, 8(t0)
                  lb           a0, 19(t3)
                  lb           gp, -5(t3)
                  sb           a6, -49(t3)
                  lbu          a7, -16(t3)
                  sb           a3, 2(t0) #end load_store_instr_stream_1
                  lh           s9, -58(t3) #end load_store_instr_stream_0
                  la           sp, region_1+1360 #start riscv_load_store_hazard_instr_stream_3
                  sb           a3, 100(sp)
                  lbu          a2, 100(sp)
                  lbu          s1, -56(sp)
                  lb           t5, 54(sp)
                  sb           s7, 227(sp)
                  lhu          a0, -28(sp)
                  sh           s7, -28(sp)
                  lb           s8, -28(sp)
                  lb           t0, 219(sp)
                  sll          a7, a1, t0
                  lb           s0, 16(sp)
                  lb           ra, -190(sp)
                  sb           a2, -225(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           s11, region_0+1642 #start riscv_load_store_rand_instr_stream_0
                  lb           s5, -1457(s11)
                  sw           s8, -458(s11)
                  ori          s8, s11, 1229
                  lh           s8, -1380(s11)
                  ori          gp, t2, -1043
                  sb           s7, 235(s11)
                  lbu          t2, -1262(s11)
                  lhu          s8, -534(s11)
                  srli         tp, a2, 20
                  lbu          tp, -226(s11)
                  slt          a4, sp, s7
                  slli         tp, a6, 20
                  lhu          t6, -134(s11)
                  srai         tp, t3, 17
                  andi         s9, t2, 1579
                  auipc        t3, 112046
                  srai         a0, a2, 31
                  xor          s0, a0, t3
                  sltu         a5, t3, s2
                  ori          t3, s2, 950
                  lh           ra, -1022(s11)
                  lbu          ra, -591(s11)
                  srai         t6, s7, 22
                  lbu          s0, -595(s11)
                  lb           s8, 165(s11)
                  lb           s0, 156(s11)
                  srl          t6, a3, gp
                  lui          zero, 595794
                  sb           s1, -209(s11)
                  andi         a3, a0, 151
                  slt          a0, a6, s3
                  sll          s0, s0, t5
                  sltiu        t6, a2, -862
                  xori         a7, t3, -404
                  lb           s0, -1133(s11)
                  lhu          s10, -1288(s11)
                  lbu          t6, 68(s11)
                  xori         zero, sp, -708
                  sb           ra, -149(s11)
                  lbu          s10, -553(s11)
                  slti         s10, a6, 1964
                  slti         t6, s1, 30
                  or           gp, a5, a2
                  lb           s1, -177(s11)
                  lui          a0, 855725
                  ori          t5, t0, -1929
                  sw           zero, -1194(s11)
                  lb           s0, 49(s11)
                  srli         s10, s4, 28
                  sb           t3, -1457(s11)
                  slti         s3, s6, -1886
                  lb           s1, 105(s11) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_0+316 #start load_store_instr_stream_1
                  sw           gp, -12(t3)
                  la           s1, region_0+582 #start load_store_instr_stream_0
                  lh           s7, -10(t3)
                  sb           a3, 239(s1)
                  sb           a6, 212(s1)
                  sb           s6, -13(t3)
                  sb           a0, -3(t3)
                  sw           a5, -8(t3)
                  lhu          tp, 140(s1)
                  sh           t4, -2(t3)
                  lw           t0, 4(t3)
                  lb           a6, 25(s1)
                  lb           a7, 5(t3)
                  lb           zero, 65(s1)
                  lbu          t6, -249(s1)
                  lb           zero, -15(t3)
                  sh           s11, -12(t3) #end load_store_instr_stream_1
                  sh           s8, 22(s1) #end load_store_instr_stream_0
                  la           a3, region_1+1514 #start riscv_load_store_rand_instr_stream_2
                  sb           ra, -20(a3)
                  lbu          a4, -143(a3)
                  lhu          t3, 152(a3)
                  lbu          s9, 91(a3)
                  lb           t4, -132(a3)
                  sh           sp, -230(a3)
                  and          a6, t5, s2
                  lbu          s7, -205(a3)
                  lhu          gp, -112(a3)
                  ori          t6, t5, 1305
                  ori          s7, a3, 1596
                  sb           s3, 41(a3)
                  slli         a4, sp, 31
                  lh           s9, 208(a3)
                  sb           s8, 235(a3)
                  addi         t3, s3, 788
                  lbu          s2, 153(a3)
                  lbu          s11, 45(a3)
                  srli         s0, s0, 9
                  slt          ra, t6, s5
                  xori         t2, t5, -36
                  lb           a2, -13(a3)
                  sb           sp, 137(a3)
                  sub          t3, s7, tp
                  lb           a6, -232(a3)
                  or           a1, tp, gp
                  lb           a5, -96(a3)
                  lb           ra, 73(a3)
                  sw           s3, 198(a3)
                  xor          s1, a3, t0
                  srli         t2, s7, 28
                  sltu         s10, s7, s3
                  lbu          tp, 151(a3)
                  lb           s11, 39(a3)
                  sh           a3, 50(a3)
                  slti         sp, a6, 991
                  sb           t5, 33(a3) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_1+553 #start riscv_load_store_hazard_instr_stream_2
                  sb           zero, -16(t3)
                  sb           s0, -16(t3)
                  lbu          a0, -16(t3)
                  andi         t0, s7, 654
                  lbu          ra, -16(t3)
                  lh           s0, -13(t3)
                  lw           tp, -13(t3)
                  lhu          sp, -13(t3)
                  lbu          s10, -13(t3)
                  lhu          s3, -13(t3)
                  sw           a1, -13(t3)
                  sw           s5, 15(t3)
                  slti         a4, a0, -1450
                  sb           t4, 15(t3)
                  lh           a2, 15(t3)
                  sh           s8, 15(t3)
                  lw           ra, 15(t3)
                  lw           s9, 15(t3)
                  sb           t5, 15(t3)
                  slti         s8, s7, 936
                  sb           t2, 15(t3) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1900 #start riscv_load_store_hazard_instr_stream_0
                  lb           a6, 10(sp)
                  sh           t0, 10(sp)
                  sb           s8, 10(sp)
                  lui          a5, 925196
                  sb           sp, 10(sp)
                  sh           t2, 10(sp)
                  sh           t2, 10(sp)
                  lb           s10, 10(sp)
                  sb           t5, 10(sp)
                  lh           s1, 10(sp)
                  sb           a6, 10(sp)
                  sh           s10, 10(sp)
                  lb           t5, -9(sp)
                  sb           tp, 7(sp)
                  lb           t0, 7(sp)
                  lb           tp, 7(sp)
                  lb           a4, 7(sp)
                  sb           s6, 7(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t0, region_0+534 #start riscv_load_store_hazard_instr_stream_1
                  lbu          t2, 247(t0)
                  lbu          zero, 247(t0)
                  sb           s4, 247(t0)
                  lb           a1, 247(t0)
                  sltiu        a0, a0, -734
                  sub          t3, t5, a4
                  lb           s3, 247(t0)
                  sb           t4, 247(t0)
                  lb           a6, 99(t0)
                  lb           t3, 99(t0)
                  lhu          s3, -100(t0)
                  lhu          s11, -100(t0)
                  sb           t6, -100(t0)
                  add          ra, s0, s6
                  sltiu        s11, t3, 967
                  lhu          s2, -100(t0)
                  slti         a3, t4, -867
                  and          s11, a4, s8
                  sh           a2, -100(t0) #end riscv_load_store_hazard_instr_stream_1
                  la           gp, region_1+1224 #start load_store_instr_stream_4
                  la           s5, region_1+1796 #start load_store_instr_stream_0
                  lhu          s9, -8(s5)
                  la           tp, region_1+1714 #start load_store_instr_stream_2
                  lbu          t5, -8(tp)
                  sb           a6, 8(gp)
                  sh           s9, 0(s5)
                  lbu          ra, -6(tp)
                  la           s2, region_1+902 #start load_store_instr_stream_1
                  lbu          t5, 8(s2)
                  lbu          a2, -13(gp)
                  lbu          a3, 15(s5)
                  lb           sp, -15(s5)
                  lhu          sp, 0(s2)
                  lb           s11, 0(gp)
                  la           a6, region_1+426 #start load_store_instr_stream_3
                  sb           s5, 3(a6)
                  lbu          s1, 13(tp)
                  sh           s5, -24(tp)
                  sh           a7, 52(gp)
                  lbu          s1, -9(s5)
                  lbu          s9, 7(a6)
                  lb           zero, -10(s5)
                  lbu          t4, -255(gp)
                  sw           a3, -16(s5)
                  lh           s10, 12(a6)
                  sb           zero, -5(tp)
                  sh           t1, -196(gp)
                  lh           s8, 90(gp)
                  lb           a1, 15(s5)
                  sb           tp, -46(gp)
                  lb           a2, -3(a6)
                  lb           t6, -11(s2)
                  lh           s10, 40(tp) #end load_store_instr_stream_2
                  lh           a1, -256(gp)
                  lhu          ra, -8(s2)
                  sh           s11, 16(a6) #end load_store_instr_stream_3
                  lbu          s1, -39(gp) #end load_store_instr_stream_4
                  lbu          a2, -7(s2) #end load_store_instr_stream_1
                  sb           a6, -16(s5)
                  lbu          s7, -16(s5) #end load_store_instr_stream_0
                  la           sp, region_0+240 #start load_store_instr_stream_1
                  sb           a4, -35(sp)
                  lb           gp, 7(sp)
                  la           s1, region_0+815 #start load_store_instr_stream_0
                  lb           a0, -17(sp)
                  lb           a0, -38(sp)
                  lb           a6, 10(s1)
                  lw           a6, 40(sp)
                  sb           a3, 4(s1)
                  lb           a2, -44(sp)
                  sb           s5, -49(sp)
                  sb           s9, 10(s1)
                  lb           a0, 21(sp)
                  lbu          s8, -23(sp)
                  lb           s11, 16(s1)
                  sb           a7, -2(s1)
                  lb           a3, -41(sp) #end load_store_instr_stream_1
                  lbu          t2, -12(s1) #end load_store_instr_stream_0
                  la           s5, region_1+998 #start riscv_load_store_rand_instr_stream_3
                  sb           sp, -120(s5)
                  sh           gp, 160(s5)
                  sh           s6, 80(s5)
                  lbu          t6, -132(s5)
                  nop
                  sb           s7, 65(s5)
                  lb           s3, 179(s5)
                  lb           s8, -43(s5)
                  lh           a6, -40(s5)
                  lbu          s9, -235(s5)
                  andi         gp, s6, 884
                  ori          a7, a2, 1857
                  sh           a0, 242(s5)
                  lb           s8, 76(s5)
                  sb           a3, -94(s5)
                  and          ra, a5, a7
                  sb           tp, 105(s5)
                  lbu          a0, 220(s5)
                  srli         a5, t0, 4
                  lb           sp, 3(s5)
                  sw           s7, 78(s5)
                  slt          zero, t0, a3
                  sb           s3, -253(s5)
                  nop
                  lbu          gp, 73(s5)
                  srai         t3, tp, 27
                  sh           s7, 100(s5)
                  slt          s8, s5, a2
                  and          a2, a1, s8
                  sb           a6, -49(s5) #end riscv_load_store_rand_instr_stream_3
                  srli         sp, ra, 16
                  or           t5, zero, a7
                  and          zero, s10, s9
                  ori          s8, a0, 707
                  slt          sp, t0, t0
                  or           t5, a0, a5
                  sll          s0, t5, s7
                  slti         t2, sp, 413
                  andi         s2, a3, 367
                  bne          ra, t5, 22f
                  add          t0, a5, a5
                  srli         sp, t4, 30
                  xor          s2, s8, a6
                  xori         sp, sp, -722
                  addi         t5, zero, -602
                  auipc        zero, 793637
                  andi         tp, a7, 2016
                  sltu         zero, a2, t4
                  addi         t3, s8, -1592
                  and          gp, a3, t1
                  or           t3, a2, t4
                  auipc        s0, 336858
22:               auipc        t3, 357076
                  slt          t5, s11, a1
                  lui          s1, 136620
                  bge          t1, s10, 35f
                  bge          s3, s5, 28f
                  nop
28:               add          t3, t5, sp
                  sltiu        a5, a6, -481
                  srai         s1, t4, 16
                  sub          t4, s9, a4
                  slt          a1, a3, s4
                  sltiu        ra, a7, 485
                  blt          a3, a6, 45f
35:               bge          t6, s0, 53f
                  blt          a5, a1, 38f
                  and          s8, s10, tp
38:               or           s0, t0, t4
                  srai         s10, a4, 7
                  add          a4, s0, sp
                  xor          sp, s11, a1
                  bgeu         s11, a0, 45f
                  sltu         gp, s3, ra
                  bgeu         sp, zero, 60f
45:               or           s11, t4, s0
                  sltiu        a3, s6, 138
                  sub          t2, gp, s8
                  and          t3, a6, tp
                  blt          s6, t2, 52f
                  bltu         a6, t3, 67f
                  addi         t4, s10, -979
52:               beq          s6, s4, 57f
53:               bgeu         a4, t3, 71f
                  xor          s0, a5, ra
                  bltu         s2, t4, 75f
                  bne          t5, a7, 74f
57:               sll          sp, a4, ra
                  addi         t5, tp, -544
                  bgeu         t6, a2, 62f
60:               bne          t3, t5, 73f
                  lui          sp, 597193
62:               ori          a1, a6, -103
                  addi         s5, s0, 1241
                  srai         a2, a2, 16
                  andi         s11, s0, -1256
                  bge          sp, a4, 72f
67:               slt          s11, t3, a2
                  bge          s3, s0, 75f
                  andi         s3, s6, -254
                  sltiu        s2, a2, -928
71:               bne          sp, zero, 84f
72:               sub          s7, a3, a1
73:               nop
74:               srli         t2, t4, 0
75:               slt          zero, s2, s3
                  xori         t5, gp, 432
                  addi         t2, a6, -982
                  auipc        s2, 313292
                  nop
                  add          t0, a6, t6
                  beq          s1, t0, 94f
                  sltu         t2, t5, s1
                  slt          s0, s9, a0
84:               bltu         zero, t5, 91f
                  xori         a1, s7, 1371
                  sra          a5, s1, t2
                  sub          a5, sp, s2
                  xori         ra, a1, -669
                  xor          s5, a3, t6
                  srai         t5, a7, 0
91:               xor          a0, s6, s11
                  sub          s10, a0, t1
                  addi         t4, a1, -1320
94:               add          a5, ra, s10
                  slli         s5, s4, 8
                  and          a7, sp, t5
                  sltiu        t4, s9, -1043
                  and          a4, s5, t4
                  or           s0, t1, a5
                  xor          t5, t3, a7
                  auipc        zero, 251448
                  xor          gp, s6, s11
                  sub          s10, zero, gp
                  add          a4, s1, s7
                  bgeu         zero, a7, 117f
                  sll          a7, t0, s1
                  srli         a0, s4, 12
                  slti         s3, s3, -1157
                  add          s11, s5, ra
                  and          a0, t5, ra
                  sll          a4, a4, t4
                  auipc        a1, 984396
                  sub          s3, s2, a6
                  auipc        a0, 445990
                  xori         a2, ra, -933
                  srli         s3, s9, 28
117:              beq          a4, s7, 133f
                  sra          t2, a3, t2
                  or           s9, t4, s2
                  sltiu        ra, a3, 1199
                  ori          s10, a6, 877
                  xori         a7, t0, 2019
                  srli         s10, gp, 17
                  beq          s5, s1, 132f
                  sra          s8, t0, s4
                  and          s3, a2, s5
                  or           a6, s1, a6
                  and          a2, s4, s5
                  andi         t4, t4, -344
                  la           sp, region_1+1448 #start riscv_load_store_rand_instr_stream_1
                  sltu         t2, a1, tp
                  add          zero, t3, s9
                  srl          s1, s1, t0
                  lb           ra, 0(sp)
                  sltiu        ra, t0, 971
                  lbu          a2, 9(sp)
                  sltiu        t4, s9, 1470
                  and          a7, s2, t2
                  srli         zero, sp, 30
                  lbu          s1, -4(sp)
                  srli         ra, t3, 29
                  andi         s10, s8, 209
                  srli         t4, a2, 24
                  add          s10, tp, t1
                  sra          s1, s7, t0
                  sltu         s2, a5, a2
                  lb           s10, -6(sp)
                  nop
                  sh           s11, 6(sp)
                  auipc        s3, 340470
                  sll          t2, t5, a7
                  sltu         gp, t2, s9
                  srl          s10, t6, a7
                  sra          a5, t2, a3
                  sb           sp, -5(sp)
                  xori         gp, s10, 304
                  auipc        ra, 157390
                  lb           a2, 12(sp)
                  sw           a0, 4(sp)
                  srai         s11, a4, 11
                  andi         s7, t6, 911
                  and          a7, a4, a0
                  srli         t0, s6, 0
                  lbu          a7, -11(sp)
                  sltiu        s5, a7, 698
                  srli         s7, t6, 22
                  lb           tp, 8(sp) #end riscv_load_store_rand_instr_stream_1
                  lui          s7, 737832
                  xor          tp, s4, s7
132:              and          t0, a7, s7
133:              xori         t2, a3, 520
                  beq          sp, t3, 153f
                  sub          s2, s6, t4
                  srai         t6, s8, 11
                  sra          s0, a0, a0
                  sub          a0, s4, s9
                  slli         s10, a1, 12
                  beq          s4, a5, 156f
                  add          s3, s3, t0
                  sll          a5, t2, a5
                  xori         ra, zero, -1634
                  and          t5, tp, s6
                  lui          a5, 157428
                  blt          t3, s5, 154f
                  slt          a0, a2, a4
                  slli         zero, sp, 5
                  slti         zero, a1, 1982
                  ori          a5, zero, -763
                  bge          t4, s2, 158f
                  andi         a4, a7, -169
153:              slti         s1, s6, 170
154:              auipc        s5, 399711
                  nop
156:              lui          s7, 403846
                  and          sp, s5, s3
158:              bltu         s4, a2, 176f
                  slti         s0, s5, 546
                  andi         a7, a1, -1810
                  sra          s5, s2, a1
                  slti         a6, t1, -1318
                  slli         t3, s5, 23
                  srli         t2, a5, 13
                  bge          s7, a0, 181f
                  xor          a7, ra, t1
                  beq          s8, s11, 175f
                  bge          sp, s5, 187f
                  bltu         a5, t1, 172f
                  bgeu         t6, sp, 173f
                  blt          tp, a5, 179f
172:              lui          t2, 457128
173:              slti         t3, tp, -328
                  and          s9, t0, s0
175:              slti         zero, t6, -1940
176:              andi         t4, gp, -519
                  and          t0, t4, s2
                  sll          a2, t3, gp
179:              ori          s9, t2, -1268
                  bge          a3, ra, 187f
181:              bltu         t6, a3, 198f
                  sub          zero, s4, ra
                  slti         gp, s9, -1272
                  slli         a1, a1, 15
                  ori          s2, t2, 1030
                  lui          a2, 263810
187:              ori          t6, a3, 1663
                  sltu         s0, a0, ra
                  sltiu        a5, tp, 1963
                  ori          tp, s6, 472
                  auipc        s7, 912007
                  or           a0, t2, s9
                  bne          s6, a6, 200f
                  slt          a5, t6, s3
                  srai         sp, a7, 17
                  lui          s3, 776987
                  andi         s3, a4, -1760
198:              nop
                  srl          t0, s11, a0
200:              blt          s2, a0, 213f
                  sub          a4, a6, zero
                  andi         t3, t6, 341
                  slti         a1, ra, -960
                  srl          a7, s7, a2
                  beq          s8, tp, 211f
                  sra          s2, s2, t1
                  srl          s5, s8, s3
                  slli         s0, a0, 21
                  sll          t3, t5, gp
                  bltu         zero, t6, 226f
211:              slt          t4, a3, s7
                  add          gp, a4, a4
213:              sra          a3, a1, s0
                  bgeu         t4, t2, 232f
                  slli         t5, a4, 12
                  andi         s5, t5, -1881
                  or           sp, t4, a7
                  auipc        s1, 1040650
                  sltiu        s3, t6, 1762
                  sltu         s8, t1, gp
                  nop
                  add          a5, gp, t5
                  sll          t6, a3, gp
                  nop
                  bltu         t0, a4, 228f
226:              beq          zero, s5, 237f
                  and          ra, a0, t3
228:              srli         a0, a0, 20
                  sltiu        s10, s0, 332
                  ori          a1, a3, 1295
                  bgeu         s1, s3, 236f
232:              srai         s1, a1, 26
                  sltiu        zero, s5, 1183
                  sltu         s2, s3, s4
                  addi         t2, a5, -1391
236:              addi         a5, s11, -1181
237:              slti         gp, s4, 1914
                  lui          a0, 295274
                  sub          s9, s0, a4
                  bne          sp, t6, 256f
                  xori         s10, a3, -1564
                  nop
                  auipc        t4, 476689
                  sltiu        t2, zero, -328
                  sub          s8, s2, s6
                  andi         s0, a3, -50
                  addi         s9, a5, 447
                  sltu         t3, s0, s9
                  slt          zero, a7, a5
                  sll          a6, s7, a5
                  andi         zero, s11, 12
                  slli         s11, a4, 26
                  srli         s8, a2, 19
                  auipc        s10, 300673
                  lui          t2, 771355
256:              addi         s9, s2, 343
                  blt          s7, a4, 270f
                  auipc        s8, 255489
                  srai         a3, s11, 12
                  xori         s1, s1, -1309
                  sltu         t0, a0, t1
                  xori         s9, s1, -559
                  sltu         t0, a5, ra
                  lui          gp, 544409
                  sra          t4, a4, a3
                  beq          tp, a0, 284f
                  sltiu        s7, a5, -493
                  slt          a1, t1, t5
                  srli         s0, a0, 0
270:              slt          t3, s4, t3
                  bgeu         a4, gp, 283f
                  add          s8, gp, t0
                  srl          sp, ra, s10
                  sub          s1, s8, t4
                  xori         a0, s3, -1460
                  addi         a7, s9, 1225
                  xori         s7, a3, -1094
                  xor          t4, a0, tp
                  bltu         t5, s2, 281f
                  bgeu         s8, s9, 296f
281:              xori         s10, s6, 392
                  add          ra, s3, s5
283:              bgeu         s11, t5, 303f
284:              beq          t2, a7, 300f
                  slti         t0, t3, 474
                  addi         a3, tp, -1142
                  beq          s6, s5, 300f
                  srli         s5, zero, 5
                  or           a4, a3, gp
                  bgeu         s10, sp, 292f
                  srl          s5, t2, a6
292:              blt          gp, s3, 302f
                  sub          a5, a6, t5
                  add          tp, s5, s6
                  bge          s4, zero, 302f
296:              sub          s1, t5, s4
                  lui          a4, 390841
                  sra          a0, ra, t4
                  andi         sp, s4, 1735
300:              bltu         s5, s8, 318f
                  sltu         t2, s11, a5
302:              sll          s3, gp, tp
303:              blt          s0, s5, 316f
                  ori          s2, a1, -1233
                  srai         a4, a3, 1
                  slli         s10, t5, 11
                  sltiu        a6, sp, -176
                  auipc        a1, 778701
                  bgeu         s11, a3, 327f
                  sltiu        a5, a6, 1930
                  bne          s9, a2, 331f
                  bltu         s3, a0, 322f
                  xor          ra, t5, t2
                  auipc        s9, 965657
                  bltu         s8, s11, 320f
316:              slti         a4, zero, 1205
                  addi         s2, a0, 1002
318:              and          t3, s7, t0
                  addi         sp, tp, -1600
320:              bge          s0, t1, 328f
                  slli         s11, a6, 16
322:              sltu         s3, s7, s2
                  srli         s2, t3, 9
                  sll          ra, s1, a3
                  bltu         s5, a4, 343f
                  xor          s8, s9, t0
327:              and          t6, s1, t5
328:              xor          a1, a4, t2
                  bge          a5, a5, 331f
                  and          s5, s4, a5
331:              bgeu         a5, t4, 344f
                  srli         t3, t0, 31
                  add          t5, ra, sp
                  srai         s11, a5, 4
                  slt          s10, ra, s7
                  lui          s8, 833382
                  sll          sp, a6, a1
                  beq          a3, a3, 344f
                  sll          a4, a6, s2
                  nop
                  bne          tp, t4, 349f
                  addi         gp, zero, 30
343:              addi         s5, s2, -1504
344:              srli         a2, s5, 15
                  beq          s2, t3, 363f
                  bltu         s6, s3, 362f
                  blt          a5, s7, 366f
                  sll          zero, s10, zero
349:              lui          a5, 417833
                  sll          a4, t2, s7
                  bne          s0, s10, 358f
                  lui          a5, 308768
                  slli         a1, s11, 4
                  sltiu        zero, s9, 1486
                  or           a5, s11, s11
                  bne          a7, s7, 367f
                  srl          t2, s10, t0
358:              lui          s0, 177953
                  blt          s2, sp, 375f
                  beq          s7, s0, 363f
                  srli         s0, a3, 6
362:              srl          t5, a3, ra
363:              sltu         sp, s3, t4
                  slt          s10, t1, tp
                  auipc        a6, 796129
366:              slli         tp, a2, 28
367:              xori         s11, t2, -208
                  and          t3, s4, s5
                  xori         zero, a1, -1099
                  andi         a1, zero, 1541
                  lui          t0, 150594
                  sub          t3, ra, t1
                  bge          ra, a1, 391f
                  and          a4, s10, t1
375:              sub          a0, tp, s3
                  bltu         a5, t2, 393f
                  and          zero, s11, a2
                  blt          a1, zero, 391f
                  bltu         a5, s10, 381f
                  sltu         t5, a4, s7
381:              bne          a3, s6, 388f
                  srli         a4, t2, 15
                  bltu         s10, tp, 399f
                  srli         zero, t3, 15
                  add          s5, t6, a4
                  slli         t0, t1, 14
                  slt          a2, s0, tp
388:              slli         s10, tp, 15
                  sub          s9, gp, a5
                  add          tp, s9, a7
391:              lui          t5, 122619
                  xori         a4, a7, 602
393:              xor          s8, s4, s1
                  and          t0, ra, t3
                  srli         a1, s2, 10
                  srli         tp, sp, 30
                  beq          tp, t5, 404f
                  ori          a7, t3, 579
399:              andi         sp, s2, 448
                  slt          s7, s1, s4
                  bne          s3, ra, 404f
                  bgeu         s7, s1, 404f
                  slli         zero, t2, 5
404:              ori          s2, a2, -1572
                  lw           a7, 4(t1)
                  sltiu        a6, t3, -1550
                  sll          a4, s0, t6
                  or           s9, a6, t1
                  addi         t1, t1, 60
                  xori         zero, s9, -976
                  slli         a1, t5, 7
                  slt          gp, s8, s7
                  auipc        gp, 461074
                  srl          tp, t0, s11
                  add          t5, s2, sp
761:              addi x14, x17, 0
761:              jalr x14, x14, 0
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x22, x6, zero
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x30, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x30, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x30, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x30, x4, ecall_handler
                  li x4, 0x1
                  beq x30, x4, instr_fault_handler
                  li x4, 0x5
                  beq x30, x4, load_fault_handler
                  li x4, 0x7
                  beq x30, x4, store_fault_handler
                  li x4, 0xc
                  beq x30, x4, pt_fault_handler
                  li x4, 0xd
                  beq x30, x4, pt_fault_handler
                  li x4, 0xf
                  beq x30, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x6, x22, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
