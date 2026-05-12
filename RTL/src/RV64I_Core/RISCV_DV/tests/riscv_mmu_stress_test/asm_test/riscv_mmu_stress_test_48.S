.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x9f7a44f0
                  li x1, 0x80000000
                  li x2, 0x7
                  li x3, 0x80000000
                  li x4, 0xb
                  li x5, 0x2b7b59f8
                  li x6, 0x80000000
                  li x7, 0xa6744376
                  li x8, 0x80000000
                  li x9, 0xfb72e022
                  li x10, 0x80000000
                  li x11, 0xa44d920e
                  li x12, 0xfd64d480
                  li x13, 0x80000000
                  li x14, 0xf
                  li x16, 0x7
                  li x17, 0x80000000
                  li x18, 0x8
                  li x19, 0x0
                  li x20, 0x81e47fb3
                  li x21, 0x3
                  li x22, 0xef44f5e3
                  li x23, 0xf7345f6d
                  li x24, 0x80000000
                  li x25, 0x7c01f24d
                  li x27, 0x7
                  li x28, 0x0
                  li x29, 0x8
                  li x30, 0xfe774146
                  li x31, 0x4e4f2027
                  la x26, user_stack_end
main:             la           t2, sub_1
                  slli         s3, t2, 23
                  srai         t3, t1, 28
                  xor          s5, a2, s1
                  srli         s2, s0, 15
                  addi         t2, t2, -649
                  ori          a0, t1, -1501
                  lui          s11, 673831
                  sltiu        t3, s9, 1275
                  xor          t6, t4, s5
main_j3:          jalr         ra, t2, 650 #jump main -> sub_1
                  la           a6, region_1+150 #start riscv_load_store_rand_instr_stream_0
                  or           a1, s11, a7
                  andi         s11, t0, -71
                  lb           s3, 46(a6)
                  sub          s5, t1, a0
                  slti         ra, a1, -699
                  srl          a0, t1, s0
                  nop
                  lb           s1, 36(a6)
                  andi         a0, tp, -1202
                  sb           s7, -27(a6)
                  sll          s7, s10, t4
                  add          tp, s7, s10
                  srli         sp, ra, 19
                  sub          t0, t1, a2
                  lbu          s3, 6(a6)
                  nop
                  sltiu        a0, s10, -1175
                  sb           s4, 5(a6)
                  slt          t6, s4, a2
                  lbu          s6, -6(a6)
                  sb           s4, 4(a6)
                  slt          t6, a4, s3
                  lh           t5, 32(a6)
                  or           s8, a1, s11
                  and          a3, s5, s1
                  lb           s5, -60(a6)
                  slt          t4, a0, s10
                  lbu          t3, 13(a6) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_0+640 #start riscv_load_store_hazard_instr_stream_1
                  lhu          a6, -154(a7)
                  lbu          s1, -154(a7)
                  lb           t5, -209(a7)
                  lb           t2, -209(a7)
                  lui          s9, 764966
                  sltu         a3, s8, s6
                  sb           s2, -209(a7)
                  lb           t0, -209(a7)
                  lbu          zero, -209(a7)
                  sh           s5, -88(a7)
                  lbu          s7, -88(a7)
                  sb           s8, -88(a7) #end riscv_load_store_hazard_instr_stream_1
                  la           s8, region_1+509 #start load_store_instr_stream_2
                  la           a7, region_1+1137 #start load_store_instr_stream_1
                  sb           a4, 820(a7)
                  lb           t6, -230(s8)
                  sb           a1, -208(s8)
                  la           tp, region_1+438 #start load_store_instr_stream_0
                  lb           s3, -224(s8)
                  sh           a0, 1020(tp)
                  sb           a6, -117(s8)
                  lb           a4, -565(a7)
                  sw           t2, -905(a7)
                  sb           a0, 310(a7)
                  lb           s4, 1087(tp)
                  lbu          a6, -192(s8)
                  lbu          ra, -28(s8)
                  lbu          s3, -165(s8)
                  lh           zero, -213(s8)
                  lbu          s3, -740(a7)
                  sb           t2, 1340(tp)
                  lb           t3, -1052(a7)
                  lbu          a4, 222(s8)
                  lbu          t3, 596(tp)
                  lbu          t3, 678(a7)
                  lh           s7, 117(a7) #end load_store_instr_stream_1
                  lhu          t3, -167(s8) #end load_store_instr_stream_2
                  sh           a5, 1300(tp) #end load_store_instr_stream_0
                  la           sp, region_1+132 #start riscv_load_store_hazard_instr_stream_2
                  add          tp, s4, s8
                  sb           t4, 30(sp)
                  lhu          s3, 30(sp)
                  sb           a2, -57(sp)
                  sub          t4, a6, a0
                  lbu          t0, -17(sp)
                  xori         t6, s1, -1458
                  lbu          s9, 64(sp)
                  ori          a3, t0, 127
                  lb           s7, 12(sp)
                  slt          tp, s3, a3
                  sh           s1, -28(sp)
                  lhu          s7, -28(sp)
                  sw           t2, -28(sp)
                  lbu          gp, 15(sp)
                  lbu          ra, 15(sp)
                  lb           gp, 15(sp)
                  lbu          a1, -25(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           t5, region_0+448 #start load_store_instr_stream_1
                  la           t4, region_0+837 #start load_store_instr_stream_0
                  sb           t1, -1(t5)
                  lb           s4, 23(t4)
                  sb           t3, -16(t5)
                  sw           a2, -16(t5)
                  lb           s3, 7(t5)
                  lbu          s3, -10(t4)
                  lb           s5, 1101(t4)
                  sh           t4, -14(t5)
                  lb           a2, -804(t4)
                  lw           s6, 12(t5)
                  lb           t6, -536(t4)
                  lb           a3, 15(t5)
                  lbu          s1, -557(t4)
                  sh           a1, 833(t4)
                  lbu          s7, -7(t5)
                  sb           t6, -3(t5) #end load_store_instr_stream_1
                  lbu          a0, -54(t4) #end load_store_instr_stream_0
                  la           ra, region_0+210 #start load_store_instr_stream_1
                  la           s9, region_0+1732 #start load_store_instr_stream_0
                  sh           s10, -646(s9)
                  lb           s1, 169(ra)
                  lbu          tp, 82(ra)
                  lb           t4, -213(s9)
                  lbu          zero, -100(ra)
                  sb           s3, -1121(s9)
                  lb           a3, -106(s9)
                  lbu          t4, 159(ra)
                  sb           a0, -44(ra)
                  lb           a6, 29(s9)
                  lb           a0, -22(s9)
                  sb           a7, -99(ra)
                  lw           t6, -1384(s9)
                  lb           s5, -890(s9)
                  lh           s3, -206(ra)
                  sb           s6, 91(ra)
                  sb           s6, 171(ra) #end load_store_instr_stream_1
                  lbu          a0, -877(s9)
                  lhu          a7, -1094(s9) #end load_store_instr_stream_0
                  la           ra, region_1+280 #start riscv_load_store_rand_instr_stream_1
                  lbu          sp, 207(ra)
                  sw           s1, 240(ra)
                  lb           a0, 91(ra)
                  lb           zero, 247(ra)
                  sltu         s2, ra, a2
                  xori         s11, s1, -585
                  lhu          a1, -110(ra)
                  slti         a3, a2, 637
                  sb           a4, 161(ra)
                  sb           s8, -197(ra)
                  slt          a3, a2, t1
                  and          t1, sp, t6
                  slli         s11, s6, 6
                  lh           t0, 236(ra)
                  sra          a6, s5, t1
                  lb           t6, -139(ra)
                  lbu          s8, -225(ra)
                  nop
                  srli         t2, s4, 26
                  addi         s11, s2, -1066
                  srl          s6, s7, s0
                  and          s4, sp, a5
                  lw           s8, 60(ra)
                  addi         s6, a3, -1321
                  sltiu        a3, a7, 42
                  lbu          gp, 109(ra)
                  sb           a5, -162(ra) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_1+1531 #start riscv_load_store_hazard_instr_stream_0
                  lb           s4, 39(s3)
                  slt          a2, a0, t3
                  lh           a0, 45(s3)
                  lui          a6, 267540
                  lbu          ra, -64(s3)
                  addi         t4, s5, -573
                  lb           zero, -64(s3)
                  sb           a3, -64(s3)
                  lbu          t4, -64(s3)
                  lh           s7, -57(s3)
                  lbu          s5, -57(s3)
                  lhu          gp, -57(s3)
                  sub          t3, a6, s7
                  lb           tp, -59(s3)
                  sh           s7, -59(s3)
                  sw           s10, -59(s3)
                  ori          s1, sp, -1611
                  sb           gp, -59(s3)
                  addi         a7, t1, -501
                  lb           s9, -20(s3)
                  lb           s8, 26(s3) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1213 #start riscv_load_store_rand_instr_stream_2
                  sb           zero, 8(sp)
                  sb           t6, 4(sp)
                  sb           ra, 10(sp)
                  srli         t6, s10, 16
                  lb           s11, -16(sp)
                  auipc        s1, 776001
                  lbu          tp, 5(sp)
                  lb           s11, -8(sp)
                  andi         s8, s7, 1897
                  xor          t0, a1, t1
                  lbu          s4, 1(sp)
                  lh           s2, 9(sp)
                  ori          a1, t6, 30
                  srli         gp, tp, 9
                  srli         t5, ra, 26
                  lhu          zero, -7(sp)
                  sh           s0, -11(sp)
                  lbu          s2, 3(sp)
                  slli         s4, a7, 22
                  slt          t3, t2, s7
                  andi         s4, t0, 1128
                  srli         s8, t5, 16
                  sra          tp, s11, gp
                  or           a4, s11, a0
                  lui          s7, 788960
                  lh           a2, -13(sp)
                  sh           s11, -9(sp)
                  sll          t5, s5, s8
                  slli         a3, a0, 19
                  slli         s1, t2, 3
                  slti         tp, a0, -1130
                  sll          s11, t6, a7
                  lb           s1, -2(sp)
                  lbu          s5, -2(sp)
                  lb           ra, 5(sp)
                  sb           sp, -6(sp)
                  lbu          s9, 12(sp)
                  add          a1, t2, a1
                  lb           t3, 10(sp)
                  lbu          s11, -14(sp)
                  lb           s11, -1(sp)
                  lbu          a6, 8(sp)
                  sb           s4, 6(sp)
                  lb           ra, -9(sp)
                  nop
                  lbu          zero, 0(sp)
                  lhu          a2, -11(sp) #end riscv_load_store_rand_instr_stream_2
                  xor          a0, gp, t0
                  xori         zero, t1, 1679
                  ori          s11, ra, -1938
                  ori          a1, s4, 466
                  ori          s11, t4, 1287
                  bge          t6, s8, 22f
                  srl          t5, tp, t2
                  or           s11, s4, t6
                  slli         s1, s7, 11
                  slt          s7, s10, a3
                  bltu         s4, s6, 19f
                  sltu         t4, s6, s6
                  xori         t3, s8, -922
                  sltiu        t6, gp, -975
                  xor          s6, s2, t1
                  and          t3, s8, t1
                  srai         s7, s11, 26
                  srli         s11, t3, 6
                  sltiu        s7, s11, -1267
19:               add          s8, a2, s7
                  slli         t2, a7, 30
                  bgeu         a2, sp, 33f
22:               bne          t1, s1, 31f
                  slt          t2, s4, t0
                  addi         a4, zero, 1252
                  slti         sp, ra, -475
                  and          t2, a7, s11
                  nop
                  srai         tp, t4, 5
                  bge          t3, s1, 39f
                  andi         s2, tp, 1811
31:               slti         s4, ra, -767
                  bne          s9, zero, 35f
33:               and          a3, s10, a3
                  blt          sp, t5, 53f
35:               or           t0, s11, a5
                  sll          a2, a1, t0
                  srl          s9, t6, t4
                  bge          a4, t6, 55f
39:               add          s11, ra, t3
                  slt          t6, t6, s8
                  srai         s2, s3, 17
                  sltiu        t4, t0, -66
                  ori          s11, t4, 863
                  blt          s11, s4, 64f
                  lui          ra, 1006406
                  sub          t2, a4, a5
                  xori         s8, a3, 299
                  bgeu         a2, s6, 64f
                  sub          tp, t5, s3
                  bltu         a7, a7, 70f
                  and          t0, a4, a2
                  addi         s4, a5, -643
53:               slti         t2, a1, 1126
                  bgeu         a7, s3, 71f
55:               or           a2, a4, s11
                  srl          t5, s6, a2
                  sub          s8, a0, t5
                  srai         a6, a2, 27
                  andi         tp, t3, 471
                  sub          a6, t0, t0
                  auipc        a1, 865201
                  ori          sp, t1, 889
                  xori         s9, a4, -1156
64:               nop
                  or           zero, s11, s9
                  or           s6, t5, a7
                  sub          t1, s0, s11
                  sltu         s2, s11, tp
                  srli         a3, a0, 26
70:               sltu         t4, s3, s4
71:               srl          a4, a6, a7
                  srl          t5, s6, a4
                  ori          t3, a6, -587
                  sltu         a1, a1, s7
                  xor          t6, tp, s8
                  ori          s3, a3, 179
                  andi         s3, a2, -1714
                  sra          zero, s6, s1
                  add          t0, t2, s4
                  slt          zero, t5, gp
                  bge          tp, t4, 90f
                  addi         t5, s9, 1188
                  srli         a6, a2, 1
                  beq          s1, t2, 103f
                  beq          t5, a6, 91f
                  xor          s3, s9, s5
                  addi         t2, s0, 865
                  or           s4, s6, s7
                  slt          gp, t1, s1
90:               or           s1, t4, zero
91:               xor          t4, s10, t3
                  srai         tp, a0, 0
                  beq          ra, s1, 105f
                  bne          a5, s5, 104f
                  blt          t1, t5, 110f
                  auipc        s4, 694653
                  sltiu        t2, a4, -523
                  and          zero, t4, tp
                  andi         s4, a1, 1933
                  auipc        t2, 293435
                  srl          tp, a0, sp
                  auipc        a0, 894884
103:              srai         t1, t4, 23
104:              srai         s7, sp, 8
105:              and          s6, sp, a5
                  sub          tp, a1, t0
                  la           s3, sub_1
                  nop
                  slt          ra, t1, a6
                  addi         s3, s3, 459
                  slt          a4, s1, s0
                  srli         a0, a0, 22
main_j2:          jalr         ra, s3, -459 #jump main -> sub_1
                  slt          s3, s4, s3
                  slt          t4, s2, s1
                  auipc        a4, 313909
                  bne          a6, t4, 128f
110:              sub          s11, t4, a7
                  xori         sp, a3, -794
                  and          s9, t1, t3
                  sra          s9, s7, s7
                  beq          a5, t2, 130f
                  srai         s9, t4, 29
                  sltu         t0, a3, t2
                  srl          t0, t1, a2
                  slli         t3, t5, 31
                  beq          a4, t1, 136f
                  bge          s11, s7, 125f
                  nop
                  sra          s7, s4, t1
                  xor          gp, t0, s1
                  slli         gp, s9, 9
125:              slt          a4, s10, a4
                  nop
                  bne          t0, tp, 143f
128:              sltiu        t2, s3, 943
                  sub          t2, s9, s5
130:              slti         s4, s2, 1056
                  blt          gp, s5, 132f
132:              sra          a2, t3, tp
                  or           gp, a0, s2
                  and          t6, a2, gp
                  nop
136:              bgeu         s11, s8, 139f
                  andi         t2, s8, -524
                  blt          s6, a2, 147f
139:              ori          t1, tp, -115
                  andi         a0, a6, -587
                  add          s6, a2, s3
                  xor          a0, a2, t2
143:              bgeu         s1, a5, 148f
                  xori         t5, s6, -1260
                  and          t2, s5, s7
                  sll          a4, a7, s1
147:              sltu         s5, a3, s0
148:              srl          gp, sp, s1
                  sltiu        t4, a6, 835
                  bltu         t4, s5, 163f
                  andi         zero, a1, 740
                  and          a7, s2, s9
                  andi         s8, t4, 1667
                  andi         s8, s5, 1701
                  xori         s8, t0, 189
                  bgeu         s9, t3, 157f
157:              add          a6, s5, s2
                  xor          s11, a5, a1
                  srl          a4, a1, s6
                  auipc        s2, 947854
                  srli         t5, a7, 23
                  add          t0, t2, t4
163:              or           s2, s3, t1
                  srli         tp, s3, 10
                  ori          s5, s8, 1121
                  srli         t3, tp, 4
                  nop
                  bltu         s1, a2, 176f
                  sltu         a6, a5, sp
                  bge          s8, a7, 182f
                  sll          a4, t1, gp
                  xori         t3, a5, -1251
                  srai         t5, a1, 5
                  xor          a3, s5, a0
                  andi         s11, a7, 901
176:              srl          s5, s3, a0
                  sra          s8, a7, t6
                  andi         t2, s5, -1841
                  lui          zero, 695889
                  add          t3, t3, gp
                  bge          a3, a5, 193f
182:              lui          a7, 372616
                  bne          sp, gp, 188f
                  srai         a4, a6, 3
                  andi         t4, a2, 294
                  lui          a2, 423019
                  srl          s11, a6, t5
188:              bgeu         a5, s8, 207f
                  sub          s6, a5, t3
                  sll          s6, s4, a1
                  xor          a2, t5, tp
                  bgeu         zero, zero, 209f
193:              sltu         s5, t5, a7
                  xori         a3, s9, 1756
                  bne          s5, zero, 211f
                  sltiu        s7, t0, -1870
                  and          t1, s1, t3
                  slti         gp, s5, -1554
                  xori         gp, s6, 1428
                  xori         gp, s9, 279
                  slt          s5, a1, ra
                  addi         tp, s8, -607
                  or           s2, sp, a7
                  slli         s3, s5, 0
                  ori          a6, t2, -1750
                  beq          a3, t2, 223f
207:              slt          a2, zero, a6
                  addi         a1, a4, 1903
209:              nop
                  slt          a6, zero, s1
211:              beq          t0, s11, 220f
                  bge          t2, a1, 227f
                  add          a4, t4, s5
                  ori          t2, a1, 1443
                  sltiu        a3, a6, -1621
                  sub          t6, t6, s1
                  slt          tp, gp, s6
                  or           t5, a5, s7
                  slt          t1, tp, a1
                  slli         s5, s5, 18
                  la           ra, sub_2
                  sltu         a3, t2, s3
                  addi         ra, ra, 450
                  andi         s7, s9, 1157
                  slli         s1, sp, 31
                  sub          t0, a4, a7
main_j1:          jalr         ra, ra, -449 #jump main -> sub_2
                  bgeu         t4, t3, 227f
                  bgeu         s5, t1, 223f
                  sll          a7, a5, s1
220:              auipc        s2, 599762
                  nop
                  nop
223:              or           t1, t0, s1
                  blt          t1, s11, 227f
                  sltiu        s5, a0, -1305
                  nop
227:              slt          zero, s4, a6
                  sra          t5, a4, zero
                  bne          s7, a1, 246f
                  andi         t5, s2, -982
                  sub          gp, a3, a3
                  auipc        t3, 198877
                  ori          t6, s7, -783
                  bgeu         a7, s2, 243f
                  andi         zero, s10, -1454
                  add          t4, sp, s7
                  slt          a3, tp, a1
                  sll          tp, s1, s10
                  bltu         ra, t0, 245f
                  blt          s11, a5, 260f
                  ori          sp, s5, 1956
                  sub          s7, s10, t2
243:              slt          s8, s10, s9
                  bltu         t2, a6, 245f
245:              addi         s5, t0, 1447
246:              bgeu         s0, a1, 259f
                  slt          zero, t4, t3
                  bge          t4, t6, 267f
                  xor          t5, s2, s4
                  ori          a1, s3, 1452
                  add          t4, s11, tp
                  blt          s10, zero, 253f
253:              slli         t3, s0, 14
                  sltiu        s2, a4, -958
                  beq          s3, s4, 274f
                  auipc        t6, 656678
                  sltu         a4, t2, s11
                  and          a4, a7, t2
259:              bltu         a2, t3, 268f
260:              srli         s5, t2, 6
                  addi         t4, s11, 613
                  addi         s9, s3, 339
                  slti         s9, t2, 1631
                  sltu         s9, t4, s10
                  srai         s11, a4, 29
                  and          s4, a7, t5
267:              add          zero, zero, s3
268:              or           tp, t4, s1
                  blt          a5, ra, 285f
                  slti         a1, s10, 1604
                  slti         s11, zero, -1302
                  slli         zero, gp, 19
                  andi         s7, tp, 46
274:              lui          a6, 275069
                  auipc        t5, 360797
                  beq          tp, t2, 285f
                  add          a4, t1, s1
                  sll          s11, s1, s5
                  xori         s7, t5, 1174
                  srli         ra, s4, 1
                  bltu         s5, s3, 301f
                  sra          zero, s2, s5
                  beq          s7, t5, 300f
                  and          a0, s0, s10
285:              sll          tp, t1, t0
                  andi         ra, a0, -180
                  sub          t0, a4, zero
                  srai         a0, tp, 28
                  beq          t0, a4, 297f
                  and          ra, a1, t6
                  srli         t3, s5, 7
                  lui          t6, 480694
                  lui          s1, 358282
                  addi         a7, a5, -221
                  slt          a1, s9, t4
                  xori         a0, t5, -211
297:              andi         zero, s7, 1239
                  slli         sp, a2, 28
                  sub          t5, s0, tp
300:              bgeu         t3, zero, 303f
301:              sra          tp, a4, s6
                  sltiu        a7, a0, 1601
303:              sll          t5, s7, a1
                  srli         zero, a0, 7
                  nop
                  bgeu         a3, a1, 322f
                  bgeu         a3, gp, 317f
                  srl          t2, s2, zero
                  sra          t0, s4, gp
                  auipc        ra, 442059
                  slli         tp, a1, 19
                  sltiu        a6, a5, -1081
                  lui          a2, 942993
                  bge          s0, a2, 333f
                  auipc        a6, 1005858
                  xor          s4, s11, s5
317:              auipc        t1, 324509
                  add          t3, s4, a5
                  sra          s2, a6, s4
                  sll          a1, s1, s1
                  sltiu        a1, tp, 492
322:              xori         s3, tp, -1050
                  add          t5, s2, a2
                  sltiu        t3, s3, 1866
                  slt          s5, a2, a7
                  slti         s4, t0, -672
                  blt          gp, sp, 332f
                  sra          a0, a3, t4
                  sra          a3, s2, t2
                  sra          a1, s1, sp
                  blt          s4, t5, 341f
332:              xor          s2, ra, s8
333:              sll          s9, gp, a0
                  srli         tp, s3, 15
                  blt          s1, a6, 347f
                  auipc        s1, 408365
                  sra          t0, s11, s6
                  ori          s4, a0, 1499
                  xori         s9, ra, -1797
                  srl          s11, a3, s6
341:              slt          a2, t5, a6
                  sub          t4, t6, s4
                  addi         sp, gp, -283
                  srai         t5, a1, 7
                  sra          t2, s3, t6
                  or           a0, t6, t1
347:              sll          a6, a5, s1
                  andi         s9, s5, -143
                  bltu         sp, gp, 366f
                  sra          zero, t4, gp
                  bltu         t2, a5, 361f
                  xori         s11, a3, -171
                  add          ra, t5, a6
                  srai         a2, a7, 29
                  sub          sp, t4, t5
                  beq          s0, a1, 357f
357:              blt          a7, s3, 366f
                  slti         s1, a6, 214
                  and          s4, s2, sp
                  slli         a0, s6, 16
361:              nop
                  bge          sp, s1, 370f
                  or           s3, s6, sp
                  slti         a3, a7, 1166
                  beq          t6, s5, 370f
366:              sltiu        zero, t2, 1287
                  or           a1, s1, a1
                  ori          s1, zero, -1409
                  blt          t2, a7, 370f
370:              or           s3, s11, t2
                  la x8, test_done
                  jalr x0, x8, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            nop
                  addi         s10, s10, -36
                  xor          t3, s9, s4
                  sub          s1, t5, s1
                  srl          s3, a7, t0
                  sw           ra, 4(s10)
                  nop
                  la           a7, region_1+1834 #start load_store_instr_stream_1
                  la           a2, region_1+393 #start load_store_instr_stream_0
                  sb           tp, -4(a2)
                  sb           t4, -1482(a7)
                  lb           t5, 12(a2)
                  sb           s8, 38(a2)
                  sb           a1, -13(a2)
                  lbu          zero, 4(a2)
                  lbu          t4, -523(a7)
                  lbu          s8, 47(a7)
                  lbu          tp, -56(a2)
                  lb           a0, -1696(a7)
                  sw           s0, -162(a7) #end load_store_instr_stream_1
                  lh           a6, -5(a2)
                  lb           t3, -14(a2) #end load_store_instr_stream_0
                  la           a3, region_1+1131 #start riscv_load_store_rand_instr_stream_1
                  sb           a4, -2(a3)
                  sra          a4, s5, s0
                  or           t0, a2, s0
                  sb           s6, -1(a3)
                  sb           s1, -2(a3)
                  lbu          ra, -3(a3)
                  lb           s5, 14(a3)
                  lh           s5, 3(a3)
                  sh           s8, -13(a3)
                  lb           s1, -2(a3)
                  sub          zero, s5, a4
                  lhu          s2, -7(a3)
                  sw           a6, 5(a3)
                  sra          t5, s9, t0
                  and          zero, t2, t5
                  sb           t2, -6(a3)
                  lb           s2, -10(a3)
                  ori          t6, s1, -1182
                  lb           t0, 10(a3)
                  sw           s2, 1(a3)
                  lb           s9, -12(a3)
                  sll          s11, s4, t0
                  lbu          a1, 8(a3)
                  lbu          s9, 4(a3)
                  lhu          s1, -9(a3)
                  sb           a6, 14(a3)
                  or           s9, s7, s10
                  sra          t6, s7, a0
                  lh           s6, -9(a3)
                  sh           sp, 1(a3)
                  srli         a7, a1, 30
                  sra          s3, zero, t1
                  lb           zero, -13(a3)
                  lb           t2, -8(a3)
                  lh           s7, 7(a3)
                  lbu          s5, 10(a3)
                  lb           a1, -2(a3)
                  lbu          sp, -3(a3) #end riscv_load_store_rand_instr_stream_1
                  la           s9, region_1+20 #start riscv_load_store_hazard_instr_stream_1
                  lh           s7, 54(s9)
                  xor          t6, a0, a4
                  lb           a3, 15(s9)
                  sb           a6, 17(s9)
                  sb           zero, 17(s9)
                  lbu          s3, 17(s9)
                  add          t5, t4, ra
                  sb           s5, 17(s9)
                  sltu         t4, a2, a2
                  lb           a6, 17(s9)
                  sb           sp, 17(s9)
                  srli         s4, s9, 14
                  lbu          ra, 17(s9)
                  lbu          a3, 17(s9)
                  sra          tp, a5, a5
                  lb           gp, 17(s9)
                  lbu          a6, 17(s9)
                  slti         t5, tp, -709
                  sb           s9, 17(s9) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+915 #start riscv_load_store_hazard_instr_stream_2
                  sw           s2, 1009(sp)
                  and          s8, s9, a6
                  xori         t6, s5, 1743
                  lw           t3, 1009(sp)
                  sb           sp, 1009(sp)
                  addi         t1, s4, -1135
                  lh           s11, 1009(sp)
                  lb           s1, -316(sp)
                  auipc        s5, 1010935
                  lb           s9, -316(sp)
                  sb           t6, -316(sp)
                  sb           zero, -316(sp)
                  slli         t2, gp, 9
                  lb           a6, -316(sp)
                  lbu          a6, -316(sp)
                  lbu          a4, -316(sp)
                  lbu          s9, -316(sp)
                  sb           a5, -316(sp)
                  andi         s2, s9, -1262
                  add          t4, ra, t0
                  lbu          s7, -316(sp)
                  sb           s11, -316(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a7, region_1+1776 #start load_store_instr_stream_0
                  la           s2, region_1+793 #start load_store_instr_stream_2
                  sb           t5, 911(s2)
                  la           s1, region_1+78 #start load_store_instr_stream_1
                  sb           t1, 1848(s1)
                  sw           a4, -12(a7)
                  lbu          a4, 333(s1)
                  sb           a6, -543(s2)
                  lbu          t4, 1155(s1)
                  lb           a6, -477(s2)
                  sh           s3, -103(s2)
                  lbu          gp, -12(a7)
                  lb           s5, -15(a7)
                  sb           t6, -238(s2)
                  lb           zero, 2(a7)
                  lh           ra, 872(s1)
                  lbu          t4, 12(a7)
                  lh           s7, 1060(s1)
                  sw           s11, -773(s2)
                  sb           t0, -7(a7)
                  lhu          s3, 711(s2)
                  lbu          ra, 223(s1)
                  lh           a0, 6(a7)
                  lhu          tp, -175(s2) #end load_store_instr_stream_2
                  lbu          t2, -15(a7)
                  sb           a5, -3(a7)
                  lh           t4, 236(s1) #end load_store_instr_stream_1
                  lhu          s7, 16(a7) #end load_store_instr_stream_0
                  la           t3, region_0+346 #start load_store_instr_stream_1
                  la           a4, region_0+407 #start load_store_instr_stream_0
                  lb           ra, 222(a4)
                  lb           zero, 168(a4)
                  lhu          s4, 79(a4)
                  la           s3, region_0+1269 #start load_store_instr_stream_2
                  lbu          s6, 0(s3)
                  la           t6, region_0+1458 #start load_store_instr_stream_4
                  lb           s9, 81(t3)
                  sw           s3, -14(t6)
                  lb           s6, -11(t3)
                  sh           t5, 21(a4)
                  lh           zero, 113(a4)
                  lh           sp, -8(t6)
                  sb           zero, 0(s3)
                  lw           t1, 222(t3)
                  lbu          zero, -21(a4)
                  lhu          s9, 4(t6)
                  lhu          t5, 244(t3)
                  sb           s0, -65(t3)
                  la           a0, region_0+248 #start load_store_instr_stream_3
                  lbu          t0, -12(t6)
                  lbu          ra, 78(a4)
                  lbu          s4, 1457(a0)
                  lhu          a6, 256(t3)
                  lb           gp, 2(t6)
                  lhu          zero, 1(s3)
                  lb           ra, 1524(a0)
                  sb           s2, 1(s3)
                  lhu          t0, 1510(a0)
                  lhu          s4, -13(s3) #end load_store_instr_stream_2
                  lb           s5, 117(t3)
                  lbu          t5, 650(a0)
                  lb           ra, -7(t6)
                  sb           sp, -2(t3) #end load_store_instr_stream_1
                  lbu          a2, -175(a0)
                  lb           s11, -11(t6) #end load_store_instr_stream_4
                  lb           s9, -186(a4)
                  lhu          ra, -69(a4)
                  lb           a2, 732(a0) #end load_store_instr_stream_3
                  sb           s7, -174(a4) #end load_store_instr_stream_0
                  la           a2, region_0+1050 #start riscv_load_store_rand_instr_stream_3
                  slli         s11, sp, 31
                  sub          a1, tp, s6
                  lb           s11, 629(a2)
                  lb           a1, 71(a2)
                  srli         s9, t1, 1
                  sb           s6, -707(a2)
                  xori         a6, s5, 1162
                  lhu          s6, -610(a2)
                  lb           s3, -379(a2)
                  sb           sp, -965(a2)
                  lh           s11, 568(a2)
                  lbu          t3, -629(a2)
                  sh           t3, 726(a2)
                  sb           t3, -759(a2)
                  and          ra, t6, a7
                  lb           s9, -225(a2)
                  lb           zero, 240(a2)
                  lb           s8, -97(a2)
                  sltu         s3, t3, a4
                  lh           t6, 408(a2)
                  sh           s11, 166(a2)
                  nop
                  xori         s1, s11, 1105
                  sb           s3, -841(a2)
                  ori          s11, t3, -1791
                  sw           s6, 142(a2)
                  lbu          s6, 464(a2)
                  lb           s7, 23(a2)
                  lb           a3, 94(a2)
                  sh           t1, -976(a2)
                  slti         a1, s4, 1715
                  srli         s9, t3, 5
                  lbu          t6, -435(a2)
                  sb           s9, -518(a2)
                  lb           s6, -129(a2)
                  sub          t5, s11, s6
                  lb           s4, 365(a2)
                  add          t2, a2, t5
                  lb           s9, 309(a2)
                  xori         s5, ra, -990
                  slti         a0, a1, 870
                  and          t3, t6, t1
                  sb           s9, -199(a2)
                  nop
                  srai         t0, t5, 9
                  lbu          s6, 894(a2)
                  ori          a7, t2, -327
                  sra          sp, a0, t1
                  andi         a1, gp, -1874
                  sb           t6, -87(a2) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_0+485 #start riscv_load_store_hazard_instr_stream_3
                  lh           t5, -201(tp)
                  sb           s4, -92(tp)
                  sb           s8, -92(tp)
                  nop
                  sb           a7, -92(tp)
                  lbu          zero, -92(tp)
                  sb           a6, -92(tp)
                  auipc        t4, 347479
                  lb           ra, 46(tp)
                  lbu          t5, 46(tp)
                  lb           gp, 46(tp)
                  slti         zero, t0, 559
                  or           gp, s7, s11
                  sb           s4, 46(tp)
                  lbu          s3, 46(tp)
                  sb           ra, 64(tp)
                  lb           a3, 64(tp)
                  slt          s8, s8, s7
                  xori         a3, s11, -291
                  lbu          a1, 64(tp)
                  sb           t3, 64(tp)
                  sb           t1, -245(tp)
                  lhu          zero, -245(tp)
                  lui          s7, 139557
                  lb           s2, 46(tp)
                  sb           a2, 204(tp)
                  lbu          a3, -3(tp) #end riscv_load_store_hazard_instr_stream_3
                  la           s4, region_0+1704 #start riscv_load_store_rand_instr_stream_2
                  xor          t4, t2, s4
                  lhu          s8, -522(s4)
                  srli         s8, a5, 24
                  sb           tp, -489(s4)
                  and          s2, t0, s1
                  lh           t2, -1664(s4)
                  sub          a0, s3, t0
                  sub          t3, t5, s1
                  sb           s3, -133(s4)
                  sltu         s8, sp, a1
                  lb           a2, 271(s4)
                  xor          s8, gp, s6
                  or           s7, s3, tp
                  sb           t0, -842(s4)
                  sb           s6, -1627(s4)
                  auipc        t6, 379934
                  srl          t2, s1, t1
                  slt          t1, a0, a6
                  sb           s11, -1469(s4)
                  slti         s8, a3, -1669
                  sra          t6, s9, t0
                  slti         t4, t0, -860
                  srai         t5, t0, 25
                  sw           t5, -624(s4)
                  lb           t2, -321(s4)
                  lbu          s5, -341(s4)
                  sh           a3, -1048(s4)
                  lbu          t1, -947(s4)
                  sb           a2, 141(s4)
                  lb           t4, 43(s4)
                  lhu          a2, -1394(s4)
                  lui          t2, 513220
                  xor          s8, a7, s10
                  lb           a2, -1454(s4)
                  lb           a0, 255(s4)
                  lbu          t6, -133(s4)
                  srli         a2, s7, 9
                  lbu          ra, -927(s4)
                  slt          t5, s11, s1
                  sltu         s11, s1, s6
                  lbu          a2, -885(s4)
                  xor          s2, a6, s6
                  xor          s2, a6, s6
                  lbu          a0, 165(s4)
                  sub          a1, s4, a0
                  or           t2, s3, t6
                  lui          t0, 945153
                  lui          s1, 140697
                  lb           a6, -837(s4)
                  lb           a1, 0(s4)
                  lbu          s7, 47(s4)
                  xori         a3, a3, -1861
                  sb           s1, -29(s4)
                  andi         a7, s2, 1896
                  nop
                  sb           t1, 89(s4)
                  lhu          s5, -1554(s4) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+699 #start riscv_load_store_hazard_instr_stream_0
                  sb           s4, -96(sp)
                  auipc        a3, 822838
                  slt          a3, a7, t1
                  sb           a4, -140(sp)
                  lh           s8, 245(sp)
                  lhu          a6, 245(sp)
                  andi         s7, s5, -1734
                  srai         t6, sp, 21
                  lhu          a4, 245(sp)
                  lh           t2, 245(sp)
                  lhu          s5, 245(sp)
                  lw           a1, 245(sp)
                  or           tp, t6, s1
                  sb           t4, 245(sp)
                  sra          s6, s7, t1
                  add          a7, t4, s2
                  lb           t6, 245(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a1, region_0+1413 #start load_store_instr_stream_1
                  la           a2, region_0+241 #start load_store_instr_stream_0
                  la           a4, region_0+1535 #start load_store_instr_stream_2
                  lb           ra, -1166(a1)
                  sb           ra, -1380(a1)
                  lhu          s8, -497(a1)
                  sh           a6, -61(a2)
                  sb           s0, -41(a4)
                  lh           t5, 541(a1)
                  lbu          s8, -84(a4)
                  sb           a6, 154(a4)
                  lhu          zero, 789(a2)
                  sb           a3, -140(a1)
                  lb           t4, 666(a2)
                  sb           s4, -89(a4)
                  lhu          a7, 919(a2)
                  sb           s2, -1112(a1)
                  lbu          s7, 843(a2)
                  lhu          gp, 245(a4) #end load_store_instr_stream_2
                  sb           zero, 10(a1) #end load_store_instr_stream_1
                  sb           s7, 562(a2) #end load_store_instr_stream_0
                  bne          a3, t1, 1f
1:                bltu         s7, ra, 2f
2:                beq          s10, s11, 20f
                  sra          t0, s5, a1
                  auipc        a2, 891721
                  bgeu         s9, ra, 19f
                  bgeu         gp, a3, 12f
                  nop
                  xor          tp, s3, t3
                  xor          sp, a6, s0
                  or           s1, s1, s4
                  bgeu         s4, s5, 13f
12:               srl          tp, a5, tp
13:               lui          s2, 18596
                  sltu         zero, s11, t2
                  addi         t5, ra, -448
                  bltu         t1, t2, 33f
                  ori          s11, zero, -1015
                  xori         t1, t5, -1843
19:               auipc        a1, 466385
20:               sltu         zero, s3, a6
                  sub          zero, a4, a5
                  srl          s6, zero, s5
                  xor          s11, s0, a6
                  andi         ra, s6, 1035
                  blt          s1, sp, 38f
                  or           a3, t4, s0
                  and          s1, s1, a2
                  blt          s9, t6, 38f
                  and          t1, s5, a2
                  bge          tp, s0, 40f
                  sra          s9, s8, t0
                  bne          t1, a0, 35f
33:               bge          t4, s7, 43f
                  nop
35:               srl          t4, s2, s9
                  slti         s7, a0, 1062
                  la           s6, region_0+1959 #start riscv_load_store_rand_instr_stream_0
                  sh           a7, 19(s6)
                  lui          ra, 293889
                  sb           s3, 19(s6)
                  addi         ra, s8, 1434
                  lbu          s3, 38(s6)
                  sb           a1, -44(s6)
                  srli         s3, a5, 30
                  lbu          a6, -28(s6)
                  sh           t1, 5(s6)
                  lbu          a7, -56(s6)
                  lh           s11, 7(s6)
                  srli         a6, zero, 5
                  lbu          a6, 16(s6)
                  sra          s9, s4, t4
                  lui          s1, 894921
                  xori         a0, s2, 609
                  sb           s8, -28(s6)
                  lb           s8, -8(s6)
                  auipc        t2, 507658
                  xor          sp, a6, s11
                  lbu          a4, -9(s6)
                  sb           s1, -57(s6)
                  or           s9, s2, a0
                  sb           s6, 34(s6)
                  sb           a2, -32(s6)
                  sh           s4, -35(s6)
                  lbu          s5, -40(s6)
                  srli         s7, a6, 4
                  srl          t3, a2, s6
                  sltiu        a1, s4, 635
                  srai         t4, s9, 19
                  lw           t2, 13(s6)
                  lb           a4, -47(s6)
                  or           t0, t1, s7
                  ori          a3, sp, 1060
                  sb           a4, 38(s6)
                  sra          a2, s0, s8
                  sb           t6, -42(s6)
                  sra          a4, tp, t3
                  slti         tp, t3, -371
                  sw           a1, -3(s6)
                  sb           t5, 2(s6)
                  sll          a2, ra, s9
                  andi         a2, s1, 415
                  lhu          s7, -21(s6)
                  lb           s1, 36(s6)
                  and          t4, s9, s4
                  lbu          t3, -30(s6) #end riscv_load_store_rand_instr_stream_0
                  srl          sp, s8, a7
38:               srl          sp, t2, sp
                  ori          sp, s7, -410
40:               srli         t3, t1, 23
                  lui          ra, 101045
                  sra          s4, zero, a1
43:               auipc        t4, 985048
                  xori         a0, s6, 844
                  auipc        t4, 1039000
                  sltiu        t0, a1, -803
                  and          s5, s11, s4
                  ori          tp, s3, -217
                  or           s7, s0, t3
                  or           ra, t2, t0
                  addi         s11, a6, 1750
                  bgeu         s5, s11, 69f
                  slt          t1, a7, tp
                  add          sp, a1, a1
                  sub          t4, a1, t0
                  add          a3, ra, t1
                  bgeu         a5, a6, 65f
                  beq          s2, t4, 68f
                  srai         s3, s6, 1
                  srl          ra, a4, a7
                  srl          s9, sp, a7
                  lui          s4, 411986
                  addi         t0, a2, -1480
                  bltu         gp, s4, 69f
65:               sll          gp, s6, t2
                  bge          a2, s0, 72f
                  bltu         t6, gp, 87f
68:               and          s2, a2, t3
69:               sub          t4, s8, tp
                  auipc        s1, 898834
                  andi         s2, a7, -1528
72:               lui          s8, 327491
                  add          a2, s3, a2
                  sra          a3, tp, a5
                  bne          t4, s11, 87f
                  slti         a6, t3, -1458
                  slt          t0, a6, t5
                  xor          a3, a6, a3
                  ori          s3, s7, 1493
                  auipc        s4, 636437
                  sub          s5, s2, a0
                  srai         t5, a7, 9
                  bltu         s11, a1, 90f
                  slt          t4, s5, s5
                  sra          zero, s4, s3
                  slli         t6, a1, 21
87:               xor          sp, t3, tp
                  sub          t0, a2, s2
                  bgeu         a6, t2, 105f
90:               sll          t2, s1, tp
                  slt          a7, s4, gp
                  add          t5, a6, s11
                  beq          s7, t6, 95f
                  addi         s3, gp, -1646
95:               sub          a3, s3, t0
                  xori         a3, zero, -806
                  sub          s7, s5, zero
                  blt          a2, a2, 116f
                  slt          t1, s5, t6
                  sra          ra, s7, ra
                  slli         a6, zero, 24
                  xor          s4, s1, a0
                  or           s5, s11, zero
                  slti         ra, s10, 976
105:              or           s4, a4, tp
                  slt          a4, zero, ra
                  slt          zero, s10, s0
                  bgeu         a4, a7, 115f
                  bltu         a7, t5, 113f
                  or           s4, t2, t2
                  beq          a0, s8, 119f
                  ori          s2, zero, -1617
113:              and          s4, t1, s9
                  xor          s5, s3, t4
115:              bge          gp, a1, 124f
116:              srai         sp, s5, 31
                  bgeu         s10, t3, 133f
                  sll          a7, t5, a3
119:              bltu         zero, a5, 132f
                  blt          s3, s4, 124f
                  xor          s8, t3, s9
                  xori         t5, a7, -1783
                  blt          s6, a7, 137f
124:              add          gp, t5, t2
                  sltu         s8, s5, tp
                  sltiu        zero, t6, 390
                  sll          a1, s10, a4
                  add          s3, s1, a0
                  or           gp, s0, s8
                  and          t5, t6, a4
                  bne          a7, s7, 133f
132:              nop
133:              srl          a6, t4, s10
                  addi         a7, s2, -711
                  blt          s3, a1, 145f
                  add          s3, s5, ra
137:              slt          a4, s8, s1
                  bltu         s11, s2, 145f
                  slti         t2, a2, -990
                  andi         a3, a2, 1885
                  sltu         a3, t2, a6
                  bgeu         t1, a0, 149f
                  slli         s8, a6, 25
                  and          a6, a3, a5
145:              slt          s7, s4, s1
                  addi         s9, t1, 1908
                  add          a2, zero, t5
                  andi         zero, t2, -954
149:              sltiu        t1, gp, 128
                  nop
                  srai         s11, s11, 19
                  sltiu        s11, t4, -1989
                  sra          a7, ra, s1
                  xori         sp, a5, 502
                  srl          s9, a2, t1
                  auipc        a4, 869208
                  srli         t2, t4, 26
                  sra          s8, a3, a0
                  andi         a3, a6, 2017
                  add          s1, s2, sp
                  srai         s5, t5, 6
                  srl          sp, a3, a2
                  beq          ra, s3, 171f
                  slti         s3, zero, -1877
                  srli         a3, s2, 7
                  srli         t1, ra, 19
                  sltiu        s6, t3, -587
                  srl          a6, t2, zero
                  lui          a6, 1001550
                  auipc        a6, 903374
171:              bgeu         t1, sp, 188f
                  add          a3, t5, t0
                  slti         a1, s5, -758
                  slti         t1, gp, 1382
                  or           s8, zero, s4
                  srli         t1, a1, 21
                  andi         a6, tp, 1902
                  and          s9, a1, a1
                  slti         t1, a3, -266
                  bge          s10, s5, 184f
                  xori         a7, s1, -797
                  auipc        s5, 1001866
                  or           t2, a0, a2
184:              bltu         a5, a2, 189f
                  and          a1, tp, t6
                  sltiu        sp, a6, -821
                  srl          t2, s6, s5
188:              bne          t6, tp, 198f
189:              srai         t4, a4, 28
                  slli         tp, a4, 12
                  addi         sp, ra, 1741
                  xor          t1, s9, s4
                  sltu         s4, t4, ra
                  beq          s1, s9, 196f
                  srai         a6, t3, 13
196:              sra          ra, a5, t6
                  slt          a2, s7, s3
198:              beq          s7, s8, 216f
                  nop
                  xor          s6, s11, a7
                  xori         s9, s5, -325
                  slti         s6, t4, 1936
                  srai         a3, s4, 1
                  and          t0, s1, s0
                  bne          s6, t3, 206f
206:              addi         s3, a6, -1132
                  sub          s8, s7, t0
                  sll          t2, ra, a4
                  nop
                  lui          a2, 711027
                  beq          s1, gp, 229f
                  addi         tp, t1, -1471
                  slli         s8, a2, 5
                  srl          a4, a0, a2
                  bltu         a1, s8, 223f
216:              lui          gp, 848475
                  sltiu        s3, a4, -1979
                  add          s4, t4, s11
                  blt          s0, s5, 223f
                  sll          zero, t4, t3
                  blt          a2, t5, 241f
                  sltu         s2, t1, s10
223:              beq          s1, gp, 239f
                  bge          t1, a7, 234f
                  bge          ra, ra, 228f
                  sltu         t4, s2, s4
                  or           s8, s11, s3
228:              slt          s8, a1, t3
229:              slli         t5, sp, 14
                  slli         s2, s1, 30
                  bne          tp, t4, 243f
                  slt          s9, t0, s7
                  addi         t2, s0, -621
234:              slt          s9, a1, t1
                  srai         t1, t1, 8
                  blt          s11, t1, 253f
                  sub          t1, s7, t6
                  sub          tp, a5, s1
239:              srai         s5, a5, 26
                  slti         s1, s0, 796
241:              srli         s8, zero, 23
                  sltu         s11, a7, a0
243:              srl          a0, ra, gp
                  blt          t6, s5, 260f
                  lui          a3, 219831
                  sltu         zero, a5, a1
                  sub          s3, zero, t5
                  slt          t6, s8, t0
                  bge          a0, zero, 262f
                  sltu         s11, s10, s0
                  addi         s6, s7, -1368
                  sra          a4, a3, s7
253:              lui          s2, 510787
                  lui          a2, 15410
                  slti         zero, s3, 444
                  sltu         t6, s4, a7
                  srai         a7, a0, 21
                  and          s1, zero, s5
                  bge          s3, s11, 265f
260:              slt          s3, a4, gp
                  addi         s3, t6, 26
262:              or           a7, a0, zero
                  auipc        sp, 764850
                  sra          t6, a4, t6
265:              srai         tp, a4, 17
                  sra          zero, s0, s8
                  xor          a7, t6, t6
                  slli         t5, t4, 25
                  bge          sp, s5, 279f
                  or           a1, zero, s10
                  xor          s11, a1, t4
                  andi         a4, s1, -871
                  slti         t5, s7, -1629
                  addi         t1, a2, -1746
                  beq          s1, ra, 281f
                  nop
                  lui          s8, 337982
                  srl          t3, gp, a5
279:              sll          gp, s4, a7
                  nop
281:              bltu         s5, a4, 282f
282:              lui          t2, 842848
                  addi         s6, a1, 986
                  sll          a2, a5, a0
                  blt          s8, s4, 294f
                  bltu         s0, a5, 299f
                  slli         s11, t4, 27
                  bltu         s4, zero, 295f
                  auipc        s2, 432429
                  slli         s8, a1, 11
                  nop
                  srl          sp, sp, a7
                  srli         a2, a4, 23
294:              or           s4, a3, a7
295:              slli         s8, tp, 21
                  sll          a4, zero, a2
                  slt          s8, s2, s8
                  bne          t0, s10, 306f
299:              auipc        a3, 104791
                  auipc        s9, 72481
                  blt          t2, s8, 305f
                  blt          s1, tp, 306f
                  auipc        gp, 672454
                  bge          t1, gp, 316f
305:              slti         s5, t6, -705
306:              srai         a7, s8, 8
                  bge          a3, s1, 310f
                  and          a3, sp, t6
                  sra          t5, zero, ra
310:              add          s9, t4, s10
                  srai         s1, a7, 15
                  addi         a2, t1, -1721
                  andi         a4, ra, -2039
                  srai         s2, t6, 27
                  or           sp, a1, t1
316:              sltiu        a2, a5, -1372
                  add          a0, s7, t3
                  slt          tp, a4, tp
                  xori         zero, t4, 789
                  slli         a2, s4, 3
                  slt          t5, a4, a2
                  srli         t4, a1, 28
                  bge          a2, s1, 333f
                  srli         tp, s4, 30
                  srli         s4, s2, 9
                  sll          s4, a6, s8
                  bgeu         s4, s3, 347f
                  beq          gp, a6, 346f
                  srai         s5, s7, 5
                  ori          s6, a2, -922
                  bgeu         zero, gp, 333f
                  beq          s0, t3, 333f
333:              xor          a0, t3, s6
                  lui          s9, 1015810
                  srli         s1, t0, 29
                  or           t3, s10, s7
                  andi         a0, s1, -371
                  add          sp, ra, a0
                  slti         a6, t2, -1983
                  srl          a2, s11, t1
                  bgeu         t4, t0, 355f
                  bgeu         s9, t0, 347f
                  bne          s1, a7, 351f
                  bgeu         a0, s1, 354f
                  blt          t3, t3, 362f
346:              beq          a5, t2, 362f
347:              and          tp, gp, s11
                  nop
                  beq          t5, s5, 365f
                  andi         t4, a4, 1052
351:              sltu         s11, s0, s11
                  addi         t0, t5, 1183
                  ori          s4, s7, 167
354:              ori          t0, a5, -749
355:              lui          s11, 130347
                  sltu         a2, t5, s3
                  or           a7, ra, tp
                  addi         t6, a4, -1529
                  ori          a2, t4, 1663
                  sltiu        s8, s3, -1528
                  slli         s1, s8, 24
362:              sub          t4, s1, tp
                  sltiu        s1, s3, 216
                  nop
365:              bge          a3, a0, 375f
                  sub          sp, zero, a2
                  bne          s4, a6, 376f
                  lui          a4, 75749
                  slti         a6, s5, 1481
                  srli         a3, t4, 30
                  bge          t3, t4, 377f
                  xori         ra, gp, -1906
                  srl          s5, s6, s4
                  bne          ra, t4, 380f
375:              bne          s9, s3, 377f
376:              srai         tp, s3, 2
377:              bne          t6, s3, 395f
                  sltu         a7, s6, t5
                  bne          a5, s10, 392f
380:              beq          a1, a5, 393f
                  srl          s8, t1, a2
                  srli         t2, gp, 23
                  or           s2, s2, s10
                  sll          t2, zero, ra
                  and          s7, ra, t4
                  sll          s11, t3, s6
                  sltiu        s9, s11, 467
                  sltiu        s2, s7, -1709
                  nop
                  addi         t6, s4, -750
                  xori         s5, a6, -1602
392:              bge          s0, s1, 409f
393:              andi         s7, a0, 2001
                  xor          s6, s6, s6
395:              lui          tp, 949237
                  srai         ra, s4, 31
                  sltiu        t2, a4, -40
                  sra          s2, sp, a4
                  xori         zero, t3, -1562
                  nop
                  sltiu        s3, s10, -983
                  auipc        t6, 737468
                  nop
                  and          zero, a7, a1
                  slti         a1, ra, 533
                  blt          s2, a4, 407f
407:              or           a7, a2, s9
                  lui          s3, 634389
409:              sub          a1, t5, zero
                  sll          t0, a4, s1
                  bltu         a6, s7, 421f
                  bne          tp, t6, 419f
                  beq          s7, a5, 414f
414:              sll          a2, s9, s3
                  sll          t4, s9, a1
                  bge          ra, tp, 426f
                  xor          ra, s0, t2
                  and          s8, t3, a4
419:              srl          t6, t3, t3
                  lui          s4, 638407
421:              ori          t6, s0, 996
                  nop
                  add          s6, sp, a3
                  or           s7, s3, a7
                  andi         a7, s7, 675
426:              nop
                  blt          a2, s7, 433f
                  blt          ra, zero, 437f
                  slti         t1, a2, -1062
                  sltu         gp, t1, t5
                  srl          s6, gp, s9
                  sltiu        a4, t1, 1016
433:              andi         a3, tp, 1011
                  bltu         s6, s8, 447f
                  bgeu         a7, a1, 437f
                  srai         t2, s1, 15
437:              bne          a1, s6, 449f
                  srli         tp, s0, 16
                  sll          t4, tp, t1
                  bltu         a4, s2, 444f
                  sltu         a4, s6, t0
                  lui          t5, 823992
                  srli         gp, s11, 21
444:              andi         a4, zero, -1984
                  slli         s11, s2, 17
                  bltu         s9, t1, 456f
447:              sltiu        tp, s0, 33
                  sltiu        s4, s1, -1030
449:              andi         t2, s3, 358
                  bne          t5, s10, 458f
                  beq          ra, t3, 467f
                  slt          t5, s7, a7
                  add          s1, s11, s10
                  and          tp, s1, s5
                  sltiu        s3, s4, -995
456:              add          s7, t1, s9
                  addi         s6, s5, 258
458:              and          a6, t4, a1
                  sltiu        t2, a6, 1610
                  sll          zero, zero, s5
                  blt          a0, t1, 467f
                  sltiu        gp, tp, 1793
                  srl          a3, s0, s3
                  srai         s4, t6, 31
                  sltiu        s3, a7, -1692
                  and          ra, s0, s6
467:              auipc        zero, 78176
                  sub          a6, t1, a5
                  auipc        s2, 264221
                  lw           ra, 4(s10)
                  sub          a7, sp, s10
                  xori         t5, s8, -937
                  sll          s9, s5, a1
                  ori          t5, a7, -810
                  srai         s9, s6, 28
                  addi         s10, s10, 36
                  lui          a6, 676467
                  add          a0, sp, s0
                  ori          s6, s6, -909
878:              addi x13, x1, 1
878:              jalr x13, x13, 0
sub_2:            addi         s10, s10, -64
                  addi         s6, s5, 1080
                  sw           ra, 4(s10)
                  slli         s9, ra, 16
                  andi         t3, a7, -801
                  la           sp, region_0+1342 #start riscv_load_store_rand_instr_stream_0
                  add          t3, s3, s5
                  lb           s11, 14(sp)
                  lb           s4, 0(sp)
                  srai         t0, s10, 13
                  sltu         tp, t5, zero
                  addi         s6, t4, -841
                  srai         s9, a4, 23
                  sb           s4, -3(sp)
                  sh           a2, -12(sp)
                  addi         t6, t2, 689
                  sb           s6, -11(sp)
                  sra          s1, s6, a2
                  lbu          gp, -11(sp)
                  srai         s9, a3, 30
                  addi         s6, s11, -1210
                  sra          t2, a5, a1
                  auipc        tp, 225201
                  srai         t2, s7, 15
                  and          a6, zero, a2
                  ori          a4, a1, 1290
                  sb           t3, -6(sp)
                  sltiu        gp, t4, 1733
                  slt          t4, t5, tp
                  lbu          a0, -4(sp)
                  lui          t6, 208542
                  lbu          zero, 13(sp)
                  add          s3, t6, ra
                  lh           a0, -16(sp)
                  sub          t5, t5, s4
                  andi         s4, a7, 1695
                  lh           t1, 16(sp)
                  sra          t1, s2, a3
                  sh           t5, 2(sp)
                  sll          ra, t4, s4
                  slt          s8, s8, a2
                  sh           ra, -10(sp)
                  lbu          a6, 9(sp)
                  lh           a1, -2(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1202 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a2, -1056(sp)
                  sb           s4, -1056(sp)
                  nop
                  sh           sp, -1056(sp)
                  sltiu        a6, sp, -1320
                  lb           ra, -1056(sp)
                  xor          s6, s2, t4
                  lbu          s7, -1056(sp)
                  lbu          a3, -472(sp)
                  lbu          s5, -472(sp)
                  lbu          a7, -21(sp)
                  lb           t4, -21(sp)
                  addi         s2, s2, -994
                  sb           a2, -21(sp)
                  lbu          a1, -556(sp)
                  lb           a4, -556(sp)
                  xor          a1, a3, s1
                  ori          t2, a3, 1303
                  sh           sp, -556(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t0, region_0+126 #start load_store_instr_stream_1
                  la           gp, region_0+1790 #start load_store_instr_stream_2
                  sb           t3, -5(t0)
                  la           s8, region_0+1104 #start load_store_instr_stream_0
                  lw           ra, 50(gp)
                  lh           s2, 162(s8)
                  lh           s5, -10(t0)
                  lbu          a1, 1(gp)
                  lb           tp, -9(t0)
                  sb           sp, 51(gp)
                  lb           s2, 38(s8)
                  lbu          a6, -99(s8)
                  lbu          s7, -112(s8)
                  lb           t1, 0(t0)
                  sb           a0, -62(gp)
                  lb           a3, 9(gp)
                  lb           s3, 8(t0)
                  sb           zero, 231(s8)
                  lbu          s3, 48(gp)
                  lb           a2, -117(s8)
                  lb           s4, -37(s8)
                  lhu          s5, 16(t0) #end load_store_instr_stream_1
                  lb           t2, -51(gp)
                  lbu          s4, 48(gp) #end load_store_instr_stream_2
                  lb           t6, -103(s8) #end load_store_instr_stream_0
                  sub          a2, tp, t0
                  bgeu         t6, s1, 2f
2:                ori          ra, a4, -1991
                  sub          s7, s3, a7
                  sra          a3, t6, a5
                  bltu         s3, a3, 15f
                  srli         t3, t0, 8
                  sltiu        s11, s5, 989
                  beq          s6, s4, 12f
                  sll          t6, s8, s10
                  xor          t0, zero, s0
                  or           s7, a4, a3
12:               sra          tp, t2, a4
                  bltu         s5, s4, 17f
                  auipc        s11, 996525
15:               add          s1, a2, sp
                  xori         s6, s5, -1881
17:               slt          a2, s5, a6
                  auipc        s5, 445805
                  sltiu        t1, a4, -1178
                  sub          t2, gp, ra
                  add          a2, sp, s4
                  xori         t4, s5, -1356
                  beq          a3, s6, 36f
                  sll          t6, t6, s3
                  or           t1, s9, s2
                  ori          a4, t4, -1032
                  sub          s3, t4, a6
                  bne          a0, a7, 31f
                  bltu         a5, a1, 32f
                  beq          s3, t2, 50f
31:               or           s11, gp, s10
32:               srl          a1, sp, a7
                  sltu         a1, a6, t3
                  slti         t0, a0, 597
                  lui          t2, 936149
36:               slt          a1, s3, sp
                  sltu         s7, a0, a0
                  sra          s4, s6, s1
                  bge          t6, zero, 58f
                  andi         s8, tp, 1429
                  slt          a1, s8, t3
                  slt          a6, t5, s9
                  bne          s1, a6, 49f
                  bne          sp, t4, 48f
                  sub          s3, gp, a3
                  xori         a6, s6, -1123
                  auipc        s9, 213660
48:               sra          gp, a5, t1
49:               addi         t3, s7, 707
50:               bge          s10, s3, 51f
51:               sltu         a4, t3, t2
                  bltu         a6, a5, 53f
53:               xori         t5, a7, -878
                  sltiu        t2, ra, 650
                  ori          a7, a4, 1627
                  or           s4, gp, sp
                  slt          s1, a1, a2
58:               slli         s1, zero, 6
                  slt          s2, s8, t0
                  sub          a6, s10, t1
                  add          s7, s6, t1
                  ori          sp, t1, 93
                  auipc        s9, 1045308
                  and          a4, s7, t0
                  sub          zero, t6, t4
                  nop
                  xori         gp, t1, -1039
                  or           a2, a6, t0
                  or           a2, a1, t2
                  sltiu        s6, s3, -1946
                  auipc        gp, 78764
                  srai         t1, t2, 20
                  auipc        a0, 497221
                  sltu         tp, t3, a4
                  lui          a2, 374320
                  auipc        s7, 1017948
                  sub          a3, a6, s1
                  slti         t0, s2, 1723
                  addi         s3, a0, 1196
                  srli         tp, t0, 18
                  nop
                  sub          s8, t1, a5
                  or           sp, s7, t3
                  slti         s1, a4, -1972
                  lui          ra, 118637
                  blt          a7, s3, 92f
                  bge          t6, ra, 104f
                  sub          t2, t5, a6
                  slli         t6, tp, 28
                  slt          s1, t4, t6
                  beq          s11, t4, 96f
92:               blt          t5, s6, 100f
                  addi         t3, gp, 1332
                  sltiu        a2, tp, -343
                  blt          a1, a1, 105f
96:               slli         s11, s10, 7
                  srl          a4, zero, ra
                  srli         t4, s5, 5
                  xor          a1, s1, zero
100:              bltu         s4, t0, 119f
                  slli         t4, a0, 7
                  sll          a3, t0, t4
                  sra          a7, sp, s5
104:              blt          a5, t0, 106f
105:              beq          t2, t0, 119f
106:              nop
                  add          s9, s7, t3
                  srl          gp, s7, ra
                  lui          a6, 539871
                  ori          t6, s4, -283
                  xori         t1, tp, 205
                  slti         s9, ra, 1429
                  nop
                  andi         a4, t2, 666
                  addi         a2, t1, -1465
                  bgeu         s6, ra, 130f
                  lui          s1, 595968
                  slt          zero, s7, a2
119:              nop
                  sltu         a3, s5, a3
                  ori          gp, t4, -722
                  add          a6, a5, a6
                  xori         a2, a7, 291
                  bltu         t3, s3, 133f
                  sll          t4, a4, s7
                  xor          a3, tp, t1
                  xori         s7, s3, 620
                  bge          t4, s3, 141f
                  slli         s4, a3, 30
130:              sltiu        s8, s8, 5
                  ori          s6, zero, -1749
                  slti         a1, gp, -704
133:              add          a1, s8, t4
                  blt          a1, a4, 147f
                  sltu         a2, t3, tp
                  xor          t5, a6, a7
                  sra          sp, zero, s10
                  srli         s5, tp, 10
                  slt          s5, t6, a0
                  beq          s10, t0, 146f
141:              auipc        a0, 952275
                  ori          a0, s1, -1704
                  slt          s5, tp, zero
                  sltu         sp, t2, s10
                  slti         s3, ra, 157
146:              nop
147:              addi         zero, s11, 540
                  xor          t0, t1, s0
                  bne          s4, a7, 157f
                  xori         t0, a2, 1053
                  slti         s7, s11, 1676
                  addi         s1, s2, -775
                  bgeu         s7, t3, 158f
                  sub          s4, gp, s3
                  sltiu        s5, t1, 1093
                  and          s8, a6, t3
157:              xor          s5, sp, t6
158:              sltiu        gp, s8, 613
                  srl          a7, t0, t0
                  slli         sp, t5, 3
                  srl          tp, s3, t6
                  lw           ra, 4(s10)
                  xori         a3, ra, -215
                  and          t1, s2, tp
                  sll          t6, tp, t0
                  addi         s10, s10, 64
                  ori          a4, a5, -687
                  slt          t3, t4, a1
                  andi         a4, gp, 221
                  xor          t6, s1, s11
                  or           s7, sp, tp
                  xori         a4, s5, -446
262:              addi x14, x1, 1
262:              jalr x14, x14, 0
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
.word 0x8167a0c7, 0x2bbdfb32, 0x9e0f98ff, 0x58f653a2, 0xf6c33480, 0x2e682723, 0x1a6648e9, 0x7746b1a8
.word 0x1f12e0b6, 0x742928bb, 0x3244c546, 0x4ce4a1e1, 0xe407d097, 0x41ea7c6c, 0x19e92f94, 0x0e9a6811
.word 0x86809617, 0x83511425, 0x9bd867be, 0x70b66d4a, 0x2bc72bd8, 0x55b78525, 0xeb82152b, 0xeee6caf3
.word 0x0ae5a3e8, 0xe766d5a6, 0x63baad6b, 0x6c7e3ad3, 0xc5b5c2df, 0xc3a98189, 0x14763cd5, 0x3f57198f
.word 0xa33453d7, 0x03c224f3, 0xec0733ac, 0x814b72dc, 0x4618b23f, 0xa4bbdbc2, 0x962e905d, 0x93386f5d
.word 0xefdcd0c3, 0x881f153d, 0x88983952, 0x78af0694, 0xfb85a1de, 0xb2e8d8ee, 0x4db3697f, 0x8df384cc
.word 0xac27a8d1, 0xd3d0b101, 0xc6ffb363, 0x2e750c12, 0xa5de560c, 0xe80344d7, 0xe2271e63, 0x9c65cc73
.word 0x8bb94d13, 0x498288f8, 0x9e1ce2a9, 0xca439096, 0x7ae14c90, 0x04d2fbae, 0xd962baa8, 0xb1ea4ed5
.word 0xbe65ffe3, 0xbc9aa5a3, 0x2518b7a1, 0x283fb27d, 0x7dddc05d, 0xf047b0c0, 0xebc26805, 0x93d8ab8f
.word 0x7fab7f90, 0xb1d5d4d8, 0x4cb8f772, 0xd6971a0c, 0x6553b1ce, 0x7fcdebbf, 0x637f2c1c, 0x84ffb56d
.word 0x23cb3501, 0x2947759c, 0x16fa3260, 0xf48d6539, 0x37371eb8, 0xa642b16e, 0xf6613f97, 0xf33fe335
.word 0xd8743306, 0x92967d2f, 0xe23956aa, 0xc6ef23d8, 0xe9140076, 0x409df853, 0x4b085419, 0x755a5fa1
.word 0x44f24772, 0xf4bd45e9, 0xd2a72997, 0xb0bcbae6, 0x31010a62, 0x8a777454, 0x879bea40, 0x7723fb65
.word 0xcf6429d1, 0xc8feae09, 0x60458690, 0x7287a8c4, 0x58f3bb9b, 0xc0ad6765, 0x291419ed, 0x291ef49c
.word 0xb6708e7f, 0x81fe730b, 0xd2cea6d5, 0xe76b8adc, 0xd0f4a970, 0xdce9eb51, 0xec228b0e, 0x67aaf9f2
.word 0xf113ea68, 0xf354cee2, 0xc32d7dae, 0x1ef4e4ee, 0x444ed677, 0xca554125, 0xbf67fbac, 0x4941e280
.word 0xd81f0252, 0x4baa0e7e, 0x78a3e178, 0x7a47f14a, 0xb6947412, 0xa00ea335, 0x4a6835a2, 0xb1d53fd6
.word 0xb62bdcf9, 0xb517fbdf, 0x46778093, 0x2b15b7f8, 0x6731d41f, 0x6d7396f9, 0x743dbc9d, 0x26827614
.word 0x06ac7a90, 0xee442eac, 0xd5bca94f, 0x616ec7dc, 0x74be6b81, 0x91dc101a, 0x0624ff84, 0x1220ee89
.word 0xe0b6a323, 0xf1aa1643, 0x5543a268, 0xf1c212c4, 0x872fcf2c, 0x1b26e2f0, 0xcad69bb2, 0x8745f507
.word 0x81279637, 0xae2b4d7d, 0x508fb759, 0x48c4beed, 0x9c34d742, 0x613e7806, 0xb4e29f1e, 0xb9543f25
.word 0xa4e38b2a, 0x74e346b0, 0x281ed792, 0x32300707, 0xde2aac09, 0xfb4b380a, 0x2d04ab70, 0x4d084122
.word 0x7195efe2, 0xc7f45aaa, 0x03a31619, 0x68158963, 0xc8e4b574, 0xd91114df, 0xddf735ae, 0x8ed3f33e
.word 0x94b62927, 0xe6ed7711, 0xafa3c869, 0xe3925857, 0x5f43bf35, 0xd87cdc84, 0x9e0a7171, 0x7fb21a40
.word 0xea7af63c, 0xa91346f9, 0xe7e792ac, 0x46c09f10, 0xe417315c, 0xba75e05b, 0x5fa4702f, 0xec817d91
.word 0x8947bc7a, 0x0d9e1cdb, 0x928a08cf, 0x16252f79, 0x4f04e3cd, 0x375e8fac, 0x4a5f5b90, 0xc339c316
.word 0xba2e6cb5, 0x9992b3bd, 0x421e4f77, 0x69412f18, 0xa398b8b5, 0x660df9a2, 0xf696d401, 0x19bf2bf4
.word 0xbb9fab49, 0x35cbbe55, 0x46728029, 0x2f26eed5, 0x6dd53ac4, 0xbd7bc4a5, 0x5864f1a3, 0x94b7d1a2
.word 0x27c3a0e5, 0x768bb6e4, 0x657b6a71, 0x74d21068, 0x6ae85cf4, 0x80f17660, 0x73b7f479, 0x8ad6281a
.word 0x33837927, 0x09b2cec1, 0x6e4e2947, 0xcf209c62, 0xa77037e0, 0xe38f1d76, 0x22c6fafd, 0x02a0bd4e
.word 0xb020f600, 0x87f4abe4, 0x681260d2, 0x4dc2d803, 0xa5b6c18c, 0x49b4bd67, 0xc9f063f7, 0xc5f5cc4e
.word 0x6eb0f6cd, 0xeaff9d6e, 0x6ab795a4, 0xfc5d36ef, 0xd5a76995, 0xa1a82749, 0x3dc7a56a, 0x6169ec52
.word 0xd40ec70c, 0xc0526205, 0x3a68cf9b, 0xf262e7f8, 0x3a8cd4f1, 0xa400aa3d, 0x37f2d5bf, 0x66d086d4
.word 0x7e80bb5a, 0x8a9cb10f, 0xeabe9e41, 0x58d5e8ba, 0x6d72a38f, 0x9f6f01f6, 0x51af04d6, 0xedbc251d
.word 0xd860cc65, 0x3c3cf6de, 0x7c87f204, 0x16f04870, 0xf672b27a, 0xed8ca5ca, 0xd7268b52, 0xd8690989
.word 0x39595f1d, 0xbd29d417, 0x3b7a9a60, 0x47cd4fd6, 0xafca68e3, 0xc4751248, 0x8f8ee80b, 0x65573198
.word 0xc42f1d82, 0x2470aade, 0x6e6fc93d, 0x6c8f11af, 0xf1cbede5, 0xbe162c17, 0x43ad6d29, 0x7542b77d
.word 0x02b89d49, 0x79eb6269, 0x1bb161be, 0xac93b947, 0xef41069e, 0x3e26af1f, 0x65c7655e, 0x2e2ff56e
.word 0x04c50077, 0x960e5a3c, 0xc3402c2c, 0x7f6b108f, 0xb209b91c, 0x0671c8a4, 0x595c4dc3, 0xfd26fa79
.word 0xcf22150b, 0xc88a2969, 0x017af27e, 0x14536bad, 0xe6580374, 0xfa379d8e, 0xfc56e692, 0x4330eac3
.word 0xff5e8b8d, 0xe60d41c3, 0xe992ec5b, 0x40400f9d, 0x90dafbb1, 0xa05db883, 0x72fb448a, 0x7c08041e
.word 0xc661196f, 0xce19a691, 0x15633423, 0x5d34e87b, 0x31b90382, 0x402a1674, 0x2d4ad515, 0x84d208ca
.word 0xe134dafe, 0x373a6c85, 0xbc4a1af3, 0x400ef4a7, 0xdf37597d, 0x9a9fd168, 0x851277a5, 0x90da5162
.word 0xefd6e3f4, 0x3d1ced91, 0xcccc16e8, 0xb5f8fbcb, 0x11d0067d, 0x2a7f89c1, 0x2e55ee3f, 0x1349a37f
.word 0xd6999c46, 0x17b2b338, 0x36d40b65, 0x749672d1, 0x5e1239c9, 0xdd1ba410, 0x1a66286d, 0x603eda1d
.word 0x9f3f1004, 0x894d3551, 0x5a514343, 0xf61d64df, 0x25c75615, 0x416c2e7c, 0x9e0c0849, 0xc363c292
.word 0x215b59bf, 0xa9e9adac, 0xb1ec4bcb, 0x4e3dbf11, 0xc7a365b8, 0x8e9501ef, 0xa21bb2cb, 0xff4f6a2d
.word 0xf30c4208, 0x3968fb62, 0x561c55f5, 0x14ac72e9, 0xef4edc12, 0xa2f3b975, 0x08235286, 0xd17495f3
.word 0x7185cc6a, 0x38d2af28, 0x6b44f263, 0x4f808b8c, 0x7f5ed690, 0x402b1be1, 0xf27101e5, 0x3b31efb2
.word 0x070bd9b0, 0xe7cdce94, 0x452ec992, 0x92c15d20, 0x8419418b, 0x84f82c48, 0x39df7638, 0xe3444423
.word 0x79127ce8, 0xbdb048dd, 0x08bfbb25, 0x0113fe56, 0x296cf500, 0x34157fbf, 0x24eb37ee, 0xed410a66
.word 0xfaa77153, 0xcbfd8695, 0x6e8ab49a, 0x0373f13c, 0xa97621fc, 0xf19e11b8, 0xa708f493, 0x0e628ddc
.word 0xbb030db8, 0x2a18819a, 0xdda081d0, 0xf0befe4e, 0x219e5844, 0x8f37ae6a, 0x4edd70fe, 0xee8cd282
.word 0x32f119a8, 0xc28ce3a4, 0x3e9cef21, 0xf0304825, 0x5d638ac5, 0xb6553793, 0xb618ee06, 0x5bcc55e4
.word 0x0845c15c, 0x15b3c45b, 0x45486d5e, 0x19b558f3, 0x2012ba84, 0x8b13abc8, 0xd283f10d, 0xb09c1449
.word 0x301d2bd3, 0x9b6d84e4, 0x6c067630, 0x21556b54, 0xacb7c6c6, 0x4a950668, 0x62198819, 0x9e1d654f
.word 0xb432d956, 0xa7c5e0e2, 0x7d7ee9b1, 0x09cbe3d8, 0x5ccd10b1, 0x4924c603, 0x85f6f5f4, 0x1533252a
.word 0x1e4c1e79, 0xca20bd13, 0x9e22ccbd, 0xf63e08e4, 0x512c9b8a, 0xb0624651, 0xb1c3b065, 0x1e19d967
.word 0xc655272b, 0xe7611068, 0xd032b9a8, 0x84c2fc43, 0x01e9e3b1, 0xa6aac9d1, 0x11183a5e, 0x99898676
.word 0xdae646b5, 0xb53865c3, 0x734dc35d, 0xa451232f, 0x8011d856, 0xa39fc864, 0xa67e7364, 0xc83daa0e
.word 0xe191d990, 0xc7987de4, 0xfae02aef, 0x7cf9017a, 0x7d8dc272, 0x0cd9a121, 0x23a7c536, 0xdd564640
.word 0xf164baae, 0xe77cfd51, 0xa4142093, 0x69fb0a22, 0xfec421ce, 0xae4d3332, 0x8175d57b, 0xabd17c21
.word 0xed337c2c, 0x53f5231f, 0x2584819e, 0xe0a35c69
.section .region_1,"aw",@progbits;
region_1:
.word 0x2cc63cf9, 0xb23dfc00, 0xe9f11640, 0x57859328, 0x8daa9266, 0xd44c141d, 0xfd5289f9, 0xa0f1b1bd
.word 0x2a3acd73, 0xcbe4ccdc, 0x3b56eab0, 0x4b6efa29, 0x66cc4633, 0xbadf19f0, 0x83fe7fc0, 0xc15f09c9
.word 0xb4cb1bf2, 0x31c6a458, 0xb91c0c76, 0x4a244781, 0x870ee96e, 0x0ac6bee7, 0xefc57036, 0x68abdf14
.word 0xd8b2048b, 0x4340360b, 0x3b7d69bc, 0xc255ab32, 0x28794e23, 0x6dd872da, 0x8e8ee27d, 0xdd061914
.word 0xba1469c9, 0x6e4000a3, 0xdb0d61d5, 0xc4d85d4f, 0x567487be, 0xfaa0c134, 0x2b3668ad, 0x6f7b1e4f
.word 0x613339d7, 0x06fd06ea, 0x1abd0b85, 0xdd86e053, 0x5fd1506b, 0x0f69ff02, 0xb1a86f79, 0x8cc33778
.word 0xde691639, 0xd29db78a, 0x56bb5e9f, 0x6d0b9edb, 0x6414abe6, 0x2acea943, 0x8042c291, 0x6d449f95
.word 0xe6d700ad, 0x3c771f70, 0x0d983b05, 0x3dbb9621, 0x5660e980, 0xad10e532, 0xadb53e30, 0xd8331d9f
.word 0xdbd81fb2, 0x5b479ee7, 0xafd77a56, 0x6ab62a42, 0x3c7add99, 0x4d3f0e18, 0x47f61afa, 0x853a39d2
.word 0x5b98bf43, 0xad0f3e5e, 0x56f0fde0, 0xbebef733, 0xfd802d0f, 0x20ec2195, 0x2494dc03, 0x6de3b1be
.word 0x2020b7d4, 0xfaa56a2a, 0x94515bc2, 0x96c21ada, 0x9139d46a, 0x7289e987, 0xb96a8899, 0xbb0b09b3
.word 0x6749f13d, 0x1a3b5419, 0xcebd214a, 0x0c0b68c0, 0x21207018, 0xc048f1f3, 0x585a5be2, 0x5757ef62
.word 0x4684f4aa, 0x60cafdeb, 0xc90a568c, 0x5d095f3e, 0x0720f0e6, 0x1194f1b8, 0x122e46e6, 0xb02a22b3
.word 0x7dfeba92, 0x1cce33f1, 0x6c8fb494, 0x513dae41, 0x26e1302b, 0x4b1ae514, 0x3941296c, 0xe7afa743
.word 0x3bfb8953, 0x330700a4, 0x092cbd6a, 0xe370ac3b, 0x0af1cf56, 0x619ef423, 0x93912766, 0xda6fb330
.word 0x689937ab, 0x829f6d09, 0x71d224fd, 0x6e13ee65, 0xd49b4566, 0x04191509, 0x03ed025b, 0x8995146b
.word 0x2bed97e4, 0xf02d9624, 0x82dc547a, 0xd9e22500, 0xc2ae1163, 0x8c74dc27, 0x08efaa4d, 0x1419517d
.word 0xe62e08f1, 0x24ef3359, 0x966bc86b, 0x94369f25, 0x796efb33, 0xd390d795, 0xc435a2dd, 0xccfb7c31
.word 0x391c0d0c, 0xd1472e7f, 0x2c43ffcd, 0x43fe3f2c, 0x0aa6ba8f, 0x122fa649, 0xab6a66ec, 0xd49b1dd0
.word 0x878fe8c8, 0x0ec670f8, 0x85c8ec90, 0x4663306f, 0x1b9e087c, 0x37a675a1, 0xf133f38b, 0xea82d71a
.word 0x7c81b2d6, 0xe2deae03, 0x64cfb4f0, 0xb6dc90bc, 0xeb738f26, 0x6cf91a7e, 0x48cbd723, 0xbd41cb81
.word 0x14be226a, 0x5e4c4b43, 0xbc227b7a, 0x7ce5b4c6, 0xfedd817e, 0xca72db54, 0xd9ddd304, 0x2ec4b61f
.word 0xf514e197, 0x0e744149, 0x6001c5dc, 0x430fad44, 0x69dbf520, 0x727f28e6, 0x2c802b2e, 0x20a7b4fb
.word 0x1631bffb, 0xa3be79c2, 0xffbbf498, 0xc1154fb4, 0x962c9747, 0x1cfa16b1, 0xce4039f1, 0x39687d91
.word 0x088a4bd3, 0x550b9828, 0xe1c367b5, 0xe3b74034, 0xcb6bbfb6, 0x1b82191a, 0xc4418c30, 0x4f7fcb89
.word 0x5b999cb2, 0x7a6a278e, 0x465fed84, 0x1c58833c, 0xeb056ae7, 0xeae218bd, 0x490f1072, 0xd855d24e
.word 0x24386c49, 0x06e461d1, 0xc8a9dd1a, 0xde5dd688, 0xe1b6e4c1, 0x402db02a, 0x4fb7f1d5, 0xb6b3c780
.word 0xd7f2c7fc, 0x00e4fb55, 0xa5bba783, 0xccb0f6a7, 0xd307b7e1, 0x7e81c6e8, 0x7a91e3ba, 0x73e721b3
.word 0x4c55f956, 0x23aa2a6f, 0xccb63bc4, 0x69287f4b, 0x20e8f2be, 0xfccfa3c6, 0x39b25fd5, 0x25977067
.word 0x791e5882, 0x1e3b4e8a, 0x92d33cad, 0x8f0eb634, 0xfaa30423, 0x5c930701, 0x1cd8bf30, 0x7d0a759e
.word 0x28c28f18, 0x95ea4cde, 0x226030f4, 0xed4ab023, 0xb0a766e5, 0xc1674157, 0xfc68b9e7, 0x89388211
.word 0x815a11c3, 0x428ada8c, 0x09917b98, 0x7f2f5f2f, 0xf5e208eb, 0xd6e6cc49, 0x1c77bea6, 0xa8aa575b
.word 0x8bb703cd, 0xc423ca9d, 0x78533295, 0x7a459600, 0xe1f3aefe, 0x5bc846a7, 0x664b59a6, 0x4e8ef0f4
.word 0xb3992a30, 0x68060f6b, 0x18acb3dc, 0xe73b70c5, 0x167e3dc6, 0x2a05d72e, 0x68e4b72d, 0xafdeb520
.word 0x689f28b2, 0x30abe33a, 0x190e307d, 0x908f038e, 0x85651c97, 0x46346a9d, 0x71edc898, 0x211074bc
.word 0x572b85f7, 0xeaed26e1, 0xc1f5e6ef, 0x341fd20e, 0x575425a8, 0x919d2b89, 0xc3936ea9, 0x7c1f95f0
.word 0xb2acdc8d, 0xc543ba0f, 0x3001aaf5, 0x54971688, 0x16a9abfa, 0x9d4f01f8, 0xcaf5c9be, 0xbd88e3f2
.word 0xedca4beb, 0x25abc18c, 0xc25dfcc1, 0xfc944a55, 0x78ddd9cf, 0x51adfb7c, 0xe6d2884a, 0x60797d3f
.word 0x279ed43e, 0x4f84cd83, 0xe6ebd9a4, 0x12a3ef30, 0x09ec66f3, 0x0f8176fc, 0x47da2809, 0xb69186a9
.word 0x157459fa, 0xd2357ec8, 0x3a0e7479, 0x857ed5ab, 0x73eaad82, 0xf2e18898, 0xef458b8b, 0xced651bf
.word 0x749d2939, 0x38dd225d, 0x5121d093, 0x12cc7fab, 0x06d20299, 0x57cb4c75, 0x7d1deeb5, 0xf1fc1962
.word 0xd47d81b7, 0x1b7dcf90, 0xdbbaa597, 0x26c03eb8, 0x710743f1, 0xc7fdec25, 0x1c043862, 0xdf17f99f
.word 0xd35091e1, 0x785652be, 0x31c82c98, 0xb3af7ce6, 0xb7eb441c, 0x5e39bb99, 0x144d263a, 0x656af26f
.word 0x7e36d80b, 0x3ca48745, 0xae4e014b, 0x13f7f75f, 0xe51c3716, 0x0b435192, 0x9c49f11f, 0x6ebdee6a
.word 0x8f746e6d, 0x613e1f8f, 0x1b0e573a, 0xe52420e1, 0x0a814c27, 0x60652bf0, 0x644a8693, 0xc1f53329
.word 0x2b863e7c, 0xb4708cfa, 0x105c4973, 0x9e2b93f1, 0xa74e6dea, 0x3715ccb4, 0x6f17abc4, 0xec21bd4f
.word 0x37591994, 0xeded32fd, 0x378da52a, 0x3970d5e8, 0x03a65bae, 0x19ce1a75, 0xd6e8b5e5, 0x0d35b25d
.word 0xc7840a2f, 0xeedbcca3, 0x9bbaf998, 0x1f48d158, 0x42f69a20, 0x05ce6b69, 0xb0d80ffa, 0x5f04a6d7
.word 0x41dfa595, 0x7dc41e6e, 0xfd396055, 0xdba0b24b, 0xc843d1ca, 0xdf9dcbd9, 0x2d14ca30, 0x0ac5739b
.word 0xad11a052, 0x9fa670b3, 0x16b5203d, 0x4eba696c, 0x618bb526, 0x807680b6, 0xa4ba7702, 0x7e6ee0a3
.word 0x6015ccf6, 0x1f199180, 0xe0c65577, 0x5107abe5, 0x8a892012, 0x60c06338, 0x9d53f6fc, 0x6b632b58
.word 0xcb4dcfca, 0xb8ce35a4, 0x420b5fb2, 0x67927685, 0x380c798e, 0xf8497c16, 0x67b98f86, 0x11561e2f
.word 0xb4d8dffd, 0x6586d01a, 0xdc4bb3bd, 0x56a2554d, 0x3c3c035c, 0x79e699ec, 0xc3a0c785, 0x419c232c
.word 0x63575944, 0xc6f5c27e, 0xce091975, 0xb5638e66, 0x7bae93d9, 0x7bc433f0, 0x3f8804e9, 0x2343bcc9
.word 0xafe5d4b5, 0xabcc4ef9, 0x681ff294, 0x793e218d, 0xda40eafa, 0xeb520d49, 0x391b0242, 0xb0ae10bf
.word 0x2dc992ed, 0xc9ee0a9e, 0xdab7e16a, 0x6edeac3e, 0x7f955dcf, 0xe7688736, 0x043e2621, 0x816d89da
.word 0x90e1ee5e, 0xf4ba8b88, 0x5d48bed4, 0x8eebc77b, 0x46ca94a0, 0x4047f52e, 0x11b50691, 0x238ec58b
.word 0xfb72c3a4, 0xe3cd14d5, 0xbba873c0, 0xa8c62dd4, 0x2821a2e1, 0xf7808f86, 0x9824628a, 0xb4e783fc
.word 0xf6079848, 0xb0f9031c, 0xd03c2be3, 0xc856fa21, 0x32a07e62, 0xb8d7e1f2, 0x3af654ce, 0x432b066d
.word 0x5104ffc8, 0xceee771b, 0x684fa13c, 0xaec207b9, 0x0e438dd5, 0x27d06c44, 0x32c5d487, 0x1a637714
.word 0x75f21757, 0x0307c773, 0x949a6369, 0x9f3aeaa3, 0xf0e3ef69, 0x7a7056d0, 0x9d3b9565, 0x2b273441
.word 0x11f3c809, 0xfe3dd640, 0x71333877, 0xad1b8c30, 0x28deebfd, 0xca142127, 0xafae0297, 0x9b25efa7
.word 0x59d32e00, 0x4fb01839, 0x29d19c9c, 0xa595ba7d
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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_2:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_3:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_4:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_5:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_6:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_7:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_8:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_9:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_10:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_11:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_12:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_13:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_14:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_15:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x15, x26, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x7, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x7, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x7, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x7, x18, ecall_handler
                  li x18, 0x1
                  beq x7, x18, instr_fault_handler
                  li x18, 0x5
                  beq x7, x18, load_fault_handler
                  li x18, 0x7
                  beq x7, x18, store_fault_handler
                  li x18, 0xc
                  beq x7, x18, pt_fault_handler
                  li x18, 0xd
                  beq x7, x18, pt_fault_handler
                  li x18, 0xf
                  beq x7, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x26, x15, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x15, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x15, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x26, x15, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x26, x15, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x26, x15, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
