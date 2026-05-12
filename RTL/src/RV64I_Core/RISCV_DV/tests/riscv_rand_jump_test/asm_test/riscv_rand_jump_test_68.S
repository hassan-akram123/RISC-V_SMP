.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xa
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x5, 0xfad8a361
                  li x6, 0x5
                  li x7, 0x7
                  li x8, 0xf2ef538c
                  li x9, 0xb
                  li x11, 0xf9899a73
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0xff5f9ba5
                  li x15, 0x80000000
                  li x16, 0x3
                  li x17, 0x4
                  li x18, 0x0
                  li x19, 0xffc530aa
                  li x20, 0x0
                  li x21, 0xf30ab7eb
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0xe55eba1a
                  li x25, 0x80000000
                  li x26, 0xb8a7dd50
                  li x27, 0xb
                  li x28, 0x80000000
                  li x29, 0xc
                  li x30, 0x80000000
                  li x31, 0xc
                  la x10, user_stack_end
main:             la           a2, region_1+75 #start riscv_load_store_rand_instr_stream_10
                  lbu          ra, 1430(a2)
                  lhu          a1, 991(a2)
                  lh           t2, -15(a2)
                  sll          t1, s0, s9
                  lh           gp, 947(a2)
                  sb           a4, -9(a2)
                  lh           s0, 483(a2)
                  lw           t6, 109(a2)
                  add          t2, t2, a3
                  lh           s0, 801(a2)
                  sb           a5, 1077(a2)
                  lbu          ra, 1108(a2)
                  nop
                  auipc        s5, 401886
                  lbu          t5, 336(a2)
                  sltu         s1, s11, a1
                  xori         s0, t0, 1505
                  lui          t5, 57650
                  lbu          s5, 825(a2)
                  sb           a2, 428(a2)
                  sltu         a3, a3, a6
                  lb           ra, 343(a2)
                  andi         s11, t5, -1532
                  sb           s4, 1251(a2)
                  slli         s2, s11, 5
                  srli         t3, s8, 28
                  sb           t4, 952(a2)
                  sh           t0, 217(a2)
                  lbu          t5, 1646(a2) #end riscv_load_store_rand_instr_stream_10
                  la           t2, region_1+9 #start riscv_load_store_rand_instr_stream_3
                  add          s5, s4, a4
                  lb           s3, 227(t2)
                  lh           s3, 57(t2)
                  lbu          s3, 78(t2)
                  sub          s1, t1, a7
                  lhu          s10, 99(t2)
                  lui          s0, 687764
                  lbu          a6, 8(t2)
                  lbu          s11, 179(t2)
                  lb           t5, 141(t2)
                  lbu          s4, 164(t2)
                  slt          ra, a6, sp
                  sw           a1, 123(t2)
                  addi         a6, s9, 788
                  lbu          t1, 127(t2)
                  and          s1, s3, t2
                  sll          a1, s8, a5
                  ori          ra, s7, 45
                  sb           a7, 88(t2)
                  slt          s0, t6, gp
                  addi         a2, s3, 925
                  lh           s4, 147(t2)
                  add          s8, a3, s9
                  lb           s2, 104(t2)
                  lw           s5, 159(t2)
                  slti         a2, a0, 1130
                  lh           s0, 21(t2)
                  lhu          s1, 85(t2)
                  lw           gp, 3(t2)
                  and          a1, s5, t1
                  lbu          ra, 156(t2)
                  andi         s4, s0, -1576
                  slli         s7, t6, 2
                  srl          a4, ra, s4
                  slti         s5, a1, -1285
                  sb           t2, 80(t2)
                  lh           s10, 181(t2)
                  sw           a7, 47(t2)
                  lbu          t1, 175(t2)
                  lbu          s5, 72(t2)
                  lhu          ra, 95(t2)
                  slli         s0, a4, 25
                  srl          s2, t4, zero
                  srli         s7, s10, 0
                  lui          s10, 509545
                  sb           a6, 140(t2)
                  sb           t4, 212(t2)
                  srli         a1, t6, 22
                  lbu          t0, 223(t2) #end riscv_load_store_rand_instr_stream_3
                  la           a5, region_1+625 #start riscv_load_store_rand_instr_stream_9
                  andi         s0, t4, -780
                  srli         t4, a2, 12
                  sub          s3, s10, a4
                  sll          a4, s5, t5
                  srl          t0, s1, a2
                  sh           a3, 593(a5)
                  lb           a6, 1092(a5)
                  sra          s1, s1, s11
                  lh           s11, 87(a5)
                  sw           gp, 11(a5)
                  lb           a6, -574(a5)
                  lb           gp, -68(a5)
                  sltiu        a1, a5, 1237
                  lui          s5, 141825
                  addi         zero, a6, -1518
                  lw           zero, 271(a5)
                  lbu          a4, 636(a5)
                  sb           a0, 280(a5)
                  sb           t3, 707(a5)
                  or           s1, t2, t4
                  lh           gp, 271(a5)
                  sb           s7, -283(a5) #end riscv_load_store_rand_instr_stream_9
                  la           t1, region_1+592 #start riscv_load_store_rand_instr_stream_8
                  sra          a4, s1, sp
                  lh           s0, 14(t1)
                  addi         t3, t6, 251
                  xor          s7, s6, t4
                  or           a3, gp, s11
                  sb           a0, -47(t1)
                  lb           s10, -54(t1)
                  sb           s10, -45(t1)
                  lhu          a4, -58(t1)
                  slt          s6, s3, sp
                  lbu          s1, -43(t1)
                  sll          gp, s9, ra
                  srai         s5, s4, 28
                  lbu          s2, 57(t1)
                  srai         s2, s11, 12
                  sb           a2, -27(t1)
                  sll          t4, s4, t0
                  sb           s5, -21(t1)
                  lbu          s4, -37(t1)
                  sb           t6, 22(t1)
                  srli         a7, s2, 4
                  xori         s7, s2, 82
                  slli         s5, s0, 26
                  xor          a2, ra, t2
                  sltu         a7, s10, s1
                  srai         t3, s5, 7
                  lb           gp, 7(t1)
                  xori         t0, ra, 1982
                  lb           ra, 0(t1) #end riscv_load_store_rand_instr_stream_8
                  la           t3, region_1+637 #start riscv_load_store_rand_instr_stream_6
                  lb           s0, -132(t3)
                  sltiu        s1, a7, 729
                  lbu          a5, -226(t3)
                  xori         s10, s5, 842
                  sll          s9, t2, gp
                  sub          s1, a1, t4
                  srl          a2, t6, t5
                  sb           a4, 10(t3)
                  lhu          t1, 73(t3)
                  sltiu        s2, gp, -1368
                  xor          s1, t3, a0
                  lw           t6, -189(t3)
                  lbu          s5, 117(t3)
                  sltiu        t0, a3, 1644
                  addi         s9, s5, -136
                  slti         s11, t3, -257
                  sh           t6, 153(t3)
                  add          s10, s7, s7
                  andi         gp, s5, -1632
                  lb           t4, 127(t3)
                  add          s11, t2, s11
                  sb           a3, -148(t3)
                  lbu          gp, 137(t3)
                  lh           s2, -175(t3)
                  lb           s1, -254(t3)
                  sh           s4, 35(t3)
                  nop
                  lbu          s4, 136(t3)
                  sltu         s3, sp, s5
                  srli         a7, zero, 8
                  lw           s11, 183(t3)
                  sra          s9, s4, a6
                  slti         t2, a5, 1098
                  or           t5, s8, a1
                  and          t6, t4, a1
                  srl          s3, s4, t6
                  lui          a3, 197012
                  sb           t0, 9(t3)
                  sb           t2, -104(t3)
                  lb           t5, -73(t3)
                  sh           t4, 237(t3)
                  sh           s2, -111(t3)
                  lbu          s1, 196(t3)
                  nop
                  slti         a3, s5, -808
                  lb           s11, -12(t3)
                  lbu          gp, 222(t3)
                  lbu          t0, -136(t3) #end riscv_load_store_rand_instr_stream_6
                  la           s0, region_0+1138 #start riscv_load_store_rand_instr_stream_1
                  xor          a7, a0, a0
                  sb           t1, 43(s0)
                  lbu          t1, 23(s0)
                  lbu          a3, -255(s0)
                  slti         s4, sp, -968
                  srl          t2, a2, s5
                  sltiu        s1, t3, -932
                  lh           s3, 172(s0)
                  lbu          a6, -15(s0)
                  lb           s5, 36(s0)
                  sltu         s1, s6, sp
                  xori         ra, s9, -1947
                  lb           t6, -189(s0)
                  srl          s8, a4, t2
                  lb           a3, -239(s0)
                  lb           a1, -49(s0)
                  add          t1, t3, s7
                  xori         t5, ra, -1236
                  lb           t0, -103(s0)
                  lbu          s1, 137(s0)
                  sh           s3, -186(s0)
                  lh           t4, 52(s0)
                  slli         s10, s0, 2
                  slt          s1, a5, t1
                  sltu         ra, t0, t2
                  lbu          s5, -171(s0)
                  lbu          s1, 29(s0)
                  lw           s4, -150(s0)
                  lbu          s7, -194(s0)
                  xori         a2, s11, 1387
                  sll          gp, s3, a4
                  sra          s8, s3, s4
                  lbu          t3, -64(s0)
                  lbu          a1, 169(s0)
                  lhu          t0, -194(s0)
                  lb           ra, -212(s0)
                  lh           s2, -166(s0)
                  lh           s10, 48(s0)
                  lbu          a7, 20(s0)
                  lb           s5, -201(s0)
                  sw           zero, -190(s0)
                  sb           s3, -251(s0)
                  xor          s3, ra, gp
                  lh           s2, -52(s0)
                  sra          t1, t3, a6
                  sb           s5, 73(s0)
                  sh           s8, 136(s0) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_0+1601 #start riscv_load_store_rand_instr_stream_7
                  lh           s8, -497(a1)
                  srai         t5, s8, 15
                  srli         t2, tp, 17
                  srl          s10, s2, s10
                  srli         a2, s2, 24
                  sh           t3, 207(a1)
                  lbu          t3, 38(a1)
                  sb           tp, -210(a1)
                  lb           a2, -569(a1)
                  slti         s4, a6, -251
                  lbu          gp, 166(a1)
                  slli         s6, t3, 18
                  srli         s4, zero, 8
                  lbu          s3, -946(a1)
                  lbu          a3, -675(a1)
                  sw           a5, -1409(a1)
                  auipc        s9, 698719
                  srai         a7, s9, 11
                  lbu          s11, -1184(a1)
                  sll          s5, s11, a4
                  lh           s5, -953(a1)
                  ori          s11, s5, 1617
                  lb           t4, -362(a1)
                  srai         a2, sp, 22
                  sb           a7, -283(a1)
                  sh           a6, -373(a1)
                  sb           s6, 117(a1)
                  lb           s2, -952(a1)
                  sb           t6, -1556(a1)
                  lhu          ra, -539(a1)
                  andi         a2, s8, -230
                  lb           s3, -410(a1) #end riscv_load_store_rand_instr_stream_7
                  sltiu        t0, a0, 932
                  slli         s0, a5, 25
                  sub          s6, t2, s0
                  srl          s8, s7, t1
                  bge          s3, s4, 20f
                  nop
                  srai         ra, a1, 4
                  slt          t6, a0, a7
                  andi         zero, s0, -1264
                  sra          s0, s2, s7
                  sltu         gp, a2, s11
                  andi         s8, s3, -1313
                  bge          a1, a6, 15f
                  blt          s1, t4, 32f
                  beq          gp, s0, 23f
15:               nop
                  slt          a3, a1, a6
                  sltiu        a5, s0, 4
                  bne          zero, a1, 34f
                  bltu         s6, s11, 33f
20:               slti         s3, t0, -789
                  slti         s0, s4, -262
                  slti         s4, t0, -1802
23:               or           a2, a0, t1
                  xori         a7, t6, 52
                  sub          s8, a4, s7
                  srl          t3, a6, tp
                  slti         t6, a7, -2019
                  srl          s0, s2, sp
                  lui          zero, 353023
                  andi         s9, zero, -1452
                  slti         a1, t5, -1778
32:               xor          t3, a2, s2
33:               nop
34:               beq          t0, a2, 50f
                  sll          t3, a4, s3
                  sll          t4, t6, gp
                  slli         a2, s6, 7
                  bge          t0, a4, 40f
                  sub          ra, t2, s0
40:               sra          t0, s4, s5
                  srai         t5, gp, 1
                  beq          t1, a3, 54f
                  add          a2, s6, tp
                  xori         ra, s10, -1688
                  xor          t2, t3, t2
                  srli         a4, s7, 22
                  slti         a7, a5, 287
                  ori          s10, a6, -831
                  add          a1, s4, t3
50:               srai         t5, a1, 8
                  sltu         a5, s1, s2
                  auipc        a5, 222461
                  sltu         a3, tp, t1
54:               addi         s4, tp, -1688
                  blt          a0, gp, 68f
                  srai         a3, sp, 9
                  ori          s4, a4, 1828
                  srli         s0, s1, 2
                  xori         gp, s4, -1548
                  sub          t6, tp, t0
                  andi         a5, a2, -521
                  addi         s11, t1, -1005
                  bgeu         s0, s4, 64f
64:               bltu         s10, t3, 71f
                  slli         t0, t4, 11
                  ori          zero, a4, -570
                  srl          t2, sp, t6
68:               blt          t2, s10, 80f
                  slli         s6, a7, 30
                  sltu         t5, zero, a4
71:               addi         s9, s0, 223
                  nop
                  lui          s11, 94825
                  sra          s3, s11, a0
                  sltu         s4, sp, a0
                  srli         a6, s1, 12
                  sra          t1, sp, s9
                  and          t0, sp, a5
                  sub          a1, a1, t2
80:               andi         a1, s6, -1292
                  add          a5, s0, t6
                  add          s10, t6, s10
                  auipc        ra, 705135
                  sub          t0, a1, s11
                  sltiu        s11, a4, 670
                  beq          ra, t1, 92f
                  xori         gp, a4, -1026
                  nop
                  xor          t4, t4, s1
                  srli         s10, a3, 0
                  nop
92:               sll          s1, s6, t3
                  auipc        s6, 730307
                  srli         a5, s8, 27
                  or           a7, a2, s10
                  slti         t2, t1, -1634
                  sltu         s11, t3, gp
                  xori         s8, s7, -443
                  bltu         t0, a5, 117f
                  nop
                  bgeu         s5, s3, 105f
                  srli         s1, t3, 0
                  ori          t1, s10, -1912
                  sub          a4, a5, a4
105:              ori          s5, s2, -1601
                  and          a3, a3, s5
                  slli         ra, a3, 1
                  bne          t1, s8, 122f
                  add          s2, a4, s6
                  sltiu        t5, t0, 1512
                  bne          s4, gp, 113f
                  slt          t4, s11, gp
113:              or           s5, sp, s2
                  bne          a0, a2, 126f
                  addi         a6, gp, -1795
                  bltu         t4, zero, 129f
117:              sub          t5, s4, sp
                  bne          s6, a5, 123f
                  sltiu        s4, t6, 1410
                  or           s10, t6, t5
                  lui          t3, 1011685
122:              slti         t1, a2, -2014
123:              andi         ra, tp, -1069
                  andi         t5, a4, 223
                  nop
126:              srai         s3, t4, 24
                  sltu         a2, ra, s11
                  srli         gp, sp, 15
129:              bltu         s0, zero, 134f
                  sll          a4, s4, t2
                  srli         s7, s9, 10
                  srli         zero, s10, 6
                  bne          a3, a4, 153f
134:              xor          a1, s6, zero
                  or           gp, t3, t4
                  sltu         t4, t2, s5
                  sra          t3, a0, t5
                  andi         a2, s3, 1350
                  ori          a3, gp, -1709
                  srli         s5, t1, 20
                  srl          s0, zero, s8
                  bltu         t5, t5, 157f
                  blt          ra, s0, 152f
                  bne          s7, a4, 155f
                  add          s11, a2, a1
                  and          s0, a6, a6
                  nop
                  srl          a3, ra, s9
                  slt          a3, t2, s9
                  and          a7, s0, ra
                  andi         s4, s10, 1282
152:              bgeu         s8, a2, 171f
153:              xor          t1, t6, s1
                  slli         s0, s5, 18
155:              and          s2, gp, s9
                  or           s5, t0, s3
157:              srl          s1, zero, t1
                  nop
                  addi         t2, a2, 881
                  add          t5, a0, a3
                  sltiu        zero, sp, 835
                  xor          s11, t2, s10
                  sltu         a3, s3, tp
                  bne          s4, a0, 181f
                  srli         s2, s2, 16
                  andi         zero, a4, 2040
                  lui          a4, 292406
                  slt          ra, a6, a0
                  srai         zero, s0, 5
                  xori         s10, a7, -551
171:              and          t3, a1, zero
                  and          t6, a7, a3
                  sltu         t5, t4, a1
                  slti         a4, s5, -1710
                  and          s0, t1, a7
                  bltu         s7, s10, 184f
                  slt          s4, ra, t4
                  auipc        s9, 911761
                  blt          t4, s2, 182f
                  andi         a7, t1, -22
181:              or           s2, t2, gp
182:              auipc        t1, 392246
                  srli         s1, t2, 9
184:              sltiu        t4, t5, -1855
                  or           s7, s3, t5
                  sub          s2, s1, sp
                  add          a5, zero, s9
                  slti         a7, t6, -1619
                  or           a4, s2, t4
                  xor          s6, t3, t6
                  sra          a7, s4, s8
                  beq          a7, s3, 203f
                  srai         s11, a4, 10
                  slli         s11, a4, 7
                  sra          a5, a4, s2
                  slti         s9, s5, -1115
                  sll          zero, t2, t1
                  sra          t1, zero, t0
                  bne          s10, s0, 201f
                  addi         a6, s9, -1847
201:              bgeu         t0, ra, 220f
                  xori         a4, s4, 56
203:              bne          s10, gp, 204f
204:              auipc        a6, 224495
                  ori          ra, s3, 876
                  sra          zero, s6, s7
                  sll          s2, a1, s1
                  beq          t5, a1, 222f
                  slt          t2, zero, gp
                  xori         a3, s10, 186
                  slli         a2, sp, 5
                  lui          s10, 244400
                  bgeu         t6, zero, 226f
                  slti         s8, t1, 1965
                  srli         a3, s5, 13
                  bge          a4, gp, 232f
                  andi         s1, s5, 715
                  sltiu        ra, tp, 1724
                  sltiu        a1, s10, -144
220:              bltu         s11, s7, 229f
                  sltiu        s7, ra, -1972
222:              beq          a7, t4, 225f
                  add          s10, s7, s11
                  xori         s7, s1, -1013
225:              bgeu         t3, sp, 240f
226:              bltu         t2, a2, 231f
                  blt          s6, s0, 231f
                  slti         a1, s1, 1540
229:              nop
                  bge          t3, s4, 249f
231:              xori         t3, ra, 526
232:              andi         a6, gp, -650
                  bge          t3, a0, 250f
                  srai         t5, s6, 9
                  slli         t1, t0, 0
                  sub          a5, t6, s11
                  addi         a2, a5, -1538
                  srl          t5, t5, t4
                  slt          s2, s3, a2
240:              lui          zero, 735487
                  sub          s8, t1, t3
                  slti         s3, tp, -1747
                  andi         t0, zero, 588
                  or           s5, s5, s1
                  sltiu        a2, t6, -820
                  slt          t6, tp, tp
                  beq          s6, s0, 259f
                  bne          zero, a6, 264f
249:              add          gp, s10, gp
250:              xor          s2, a5, s8
                  slli         s2, a3, 11
                  beq          s0, ra, 258f
                  slti         t5, t5, 498
                  nop
                  or           a4, a3, t5
                  bgeu         s9, s0, 274f
                  bltu         t1, a6, 269f
258:              sltiu        s6, ra, -342
259:              slti         t3, s11, -832
                  sll          a1, s6, t6
                  srli         t6, s10, 31
                  srai         s7, t6, 5
                  add          t2, ra, s5
264:              or           a1, s11, a4
                  bgeu         s6, s4, 274f
                  add          ra, a1, ra
                  blt          a5, t4, 287f
                  ori          t5, t2, -532
269:              sub          t3, t5, t2
                  srli         zero, s6, 12
                  slt          s9, a6, t1
                  xor          s9, a6, a4
                  beq          t0, s1, 275f
274:              sltu         s4, a2, a4
275:              sub          a4, s2, t1
                  sub          t4, t5, s9
                  srl          s8, s2, a6
                  bltu         t6, s0, 286f
                  blt          t6, s5, 284f
                  lui          gp, 231047
                  slli         s3, ra, 2
                  ori          s8, s5, 596
                  sub          t4, zero, t2
284:              bltu         s6, sp, 291f
                  bltu         s5, t6, 299f
286:              lui          s7, 129497
287:              xori         zero, a0, -966
                  andi         s7, s1, -510
                  blt          t2, s8, 302f
                  bne          s3, t3, 306f
291:              bgeu         s8, gp, 303f
                  and          s7, a4, a7
                  bne          t3, a5, 296f
                  xori         a5, s10, 640
                  slli         a2, s5, 0
296:              sra          a6, a4, a0
                  sub          a6, t5, a0
                  addi         s7, t6, -1084
299:              or           s6, a5, s3
                  xor          zero, s4, a1
                  bgeu         s9, gp, 305f
302:              andi         t4, a5, 136
303:              srai         s11, a4, 31
                  blt          s2, s4, 323f
305:              slt          s6, s3, t0
306:              bge          s7, a2, 319f
                  sra          ra, a0, t0
                  bltu         t4, a2, 327f
                  nop
                  auipc        s6, 704872
                  or           t4, t3, t1
                  auipc        s7, 75879
                  slti         s7, a7, 1971
                  srl          s11, s1, t2
                  ori          t0, s4, 1174
                  andi         gp, s4, -1031
                  add          s8, t2, t2
                  bge          a1, a2, 324f
319:              srl          s2, s8, s1
                  sub          s1, t0, s7
                  la           s4, sub_1
                  andi         ra, s0, -596
                  sltu         s1, s5, s8
                  addi         s4, s4, 483
                  andi         s3, t4, -605
                  blt          t1, zero, main_j1 #branch to jump instr
                  and          s2, a2, a4
                  and          t0, s10, t2
                  xori         s2, s5, 925
main_j1:          jalr         a5, s4, -483 #jump main -> sub_1
                  blt          s10, t2, 328f
                  sltu         a7, s2, tp
                  andi         s6, a4, 1374
323:              sll          s0, gp, t2
324:              sub          t5, a2, t3
                  slti         a2, a4, 1715
                  srai         t3, a4, 0
327:              slli         s8, t2, 7
328:              srai         s1, s0, 0
                  nop
                  ori          t4, s2, 833
                  blt          s0, tp, 336f
                  ori          s5, s11, -56
                  bne          t1, sp, 334f
334:              bne          gp, a0, 346f
                  beq          s10, s10, 351f
336:              andi         s10, a5, 930
                  andi         a5, sp, 22
                  blt          s10, tp, 351f
                  srli         gp, s3, 30
                  sltu         s11, a6, a1
                  sltiu        t2, a0, 2014
                  srli         t1, s0, 4
                  sltiu        t0, s7, 645
                  lui          t0, 49005
                  srli         s3, s5, 17
346:              sub          t0, s1, s7
                  slti         t1, a7, 979
                  srli         t1, s10, 22
                  srli         t1, tp, 5
                  srli         t6, a2, 1
351:              addi         t1, s11, -207
                  sra          s6, s2, s10
                  sll          s5, s2, s10
                  beq          s9, a3, 357f
                  sltu         t6, t6, s3
                  ori          s5, s11, -942
357:              bge          zero, a2, 371f
                  slti         s9, a6, -1083
                  blt          s1, a6, 371f
                  auipc        zero, 120622
                  nop
                  slti         a7, a4, 1282
                  xori         zero, a5, 1991
                  and          s4, a5, s8
                  beq          s9, a7, 377f
                  blt          t5, s0, 375f
                  lui          s5, 688162
                  bltu         ra, s3, 385f
                  srl          s11, s4, s3
                  ori          s5, a7, -790
371:              lui          s6, 548161
                  bltu         s8, s6, 386f
                  bgeu         s5, a4, 375f
                  blt          t2, t2, 394f
375:              bltu         tp, gp, 382f
                  bne          t3, t0, 394f
377:              bge          s10, t2, 386f
                  slti         t4, s11, -1767
                  lui          t6, 746308
                  xor          s4, a6, t0
                  bltu         a1, s2, 397f
382:              andi         a4, s3, 1788
                  bltu         tp, gp, 398f
                  and          a5, a2, a4
385:              blt          a1, s0, 390f
386:              or           s0, a2, a3
                  andi         ra, t3, -1734
                  nop
                  srl          s1, s6, a3
390:              bltu         a2, s0, 401f
                  xor          ra, t5, a5
                  lui          t2, 943964
                  add          s4, tp, a3
394:              sub          s11, t5, tp
                  ori          a2, a5, -1657
                  addi         a7, s8, -1346
397:              lui          t1, 943032
398:              bge          s7, zero, 414f
                  sll          a2, gp, s5
                  and          a1, sp, s6
401:              addi         a6, s5, -758
                  bne          s7, s11, 404f
                  slli         t1, a1, 9
404:              add          t1, s1, a1
                  nop
                  andi         s10, a3, 1946
                  sltu         a7, t2, s4
                  srli         gp, a3, 10
                  sltiu        t1, t1, 791
                  srli         t1, t6, 14
                  addi         a5, s5, -1925
                  ori          gp, s1, 1924
                  lui          s9, 428381
414:              sltiu        a4, zero, -1391
                  srl          s10, a7, t2
                  slt          t6, s9, a5
                  la           s8, region_0+288 #start riscv_load_store_rand_instr_stream_5
                  sb           s11, -8(s8)
                  addi         t5, s0, 781
                  slti         t5, a1, -1467
                  lh           a3, -14(s8)
                  sh           t4, -4(s8)
                  lb           t2, -8(s8)
                  sb           t6, 1(s8)
                  lb           s1, -14(s8)
                  ori          s3, s0, -419
                  lw           s9, -8(s8)
                  lbu          a6, -13(s8)
                  lh           t6, 8(s8)
                  lbu          s11, 5(s8)
                  sb           a1, 11(s8)
                  addi         a2, s3, -169
                  lbu          s9, 9(s8)
                  lb           a4, 16(s8)
                  sw           s2, 4(s8)
                  sh           s5, -2(s8)
                  lb           a5, 8(s8)
                  sb           zero, -13(s8)
                  and          a6, s1, t2
                  lb           t6, 7(s8)
                  lb           s1, -7(s8)
                  sb           s2, -5(s8)
                  lbu          t4, -15(s8)
                  lb           s1, -10(s8)
                  nop
                  srai         a2, a2, 10
                  srli         s7, t1, 21
                  lw           t3, 4(s8)
                  add          s10, t5, t0
                  lb           t0, 11(s8)
                  sub          s4, s6, a6
                  sub          s2, a6, s0
                  xor          a6, ra, a5
                  lh           t5, -2(s8)
                  lb           s10, 6(s8)
                  lb           t5, -11(s8)
                  lb           t6, -14(s8)
                  add          s4, s7, ra
                  ori          ra, t6, -1507
                  srai         s1, tp, 6
                  sb           s9, 9(s8) #end riscv_load_store_rand_instr_stream_5
                  sra          a3, s9, a0
                  sub          s6, s11, tp
                  bge          t5, s4, 422f
                  blt          t3, s9, 425f
                  andi         s8, s6, 693
422:              addi         gp, a2, 863
                  srli         a4, s4, 23
                  bltu         a2, t2, 442f
425:              sltu         a1, a6, a0
                  andi         t3, t5, 2047
                  la           s11, region_1+1423 #start riscv_load_store_rand_instr_stream_4
                  sltiu        s4, tp, 21
                  sb           s8, 441(s11)
                  lui          a1, 1002669
                  srli         a5, a0, 23
                  lui          s7, 972162
                  lb           a7, -1385(s11)
                  nop
                  sll          t4, t0, a0
                  xor          s3, t4, t1
                  lb           s3, -158(s11)
                  xor          t6, t0, a3
                  slt          ra, s10, s3
                  addi         s5, s11, -1060
                  lb           t2, -906(s11)
                  lui          t0, 304195
                  srai         s1, a5, 4
                  sltu         a5, t2, a6
                  slt          t3, s4, a4
                  srai         s10, a7, 2
                  nop
                  lb           t4, -694(s11)
                  lui          t6, 673509
                  sb           s9, 358(s11)
                  sb           s11, -60(s11)
                  srai         a2, s8, 6
                  sb           tp, 351(s11)
                  ori          s8, a4, -36
                  nop
                  lbu          s9, 189(s11)
                  sltu         a7, s9, a2
                  slli         s7, s7, 11
                  lw           a2, 389(s11)
                  slli         t2, a2, 5
                  lbu          s7, -804(s11)
                  lbu          a3, -251(s11)
                  srai         t0, a1, 14
                  sh           s7, -901(s11) #end riscv_load_store_rand_instr_stream_4
                  srli         a1, s2, 26
                  slti         s3, t0, -1472
                  addi         s8, ra, -39
                  lui          s8, 466104
                  srli         ra, s5, 6
                  bne          s8, a4, 444f
                  xor          a6, s9, s10
                  xor          t2, s1, s5
                  beq          s11, a0, 436f
436:              xori         s1, t3, -719
                  beq          t4, s3, 444f
                  sll          s5, t6, zero
                  add          zero, ra, s2
                  la           t4, sub_1
                  sll          s11, s9, t5
                  addi         t4, t4, -532
                  sll          s0, tp, t0
                  sll          s7, a7, sp
                  slti         a4, t3, 703
                  add          s9, s6, a5
                  bge          s8, s6, main_j2 #branch to jump instr
                  srl          t1, a5, a5
main_j2:          jalr         a5, t4, 533 #jump main -> sub_1
                  xor          t4, s4, s9
                  slti         s3, s1, -1311
442:              slt          a3, s5, sp
                  slti         t6, t6, 697
444:              xori         a4, s5, 1101
                  andi         s8, s9, 311
                  andi         a2, t4, -1473
                  srai         t1, t6, 21
                  slli         s2, sp, 12
                  srli         s2, t3, 28
                  slli         a6, t5, 9
                  slt          s2, a5, tp
                  ori          s2, a7, -883
                  lui          gp, 232746
                  lui          t3, 72211
                  sltiu        a4, t2, -1730
                  and          t4, t1, s3
                  auipc        s2, 640701
                  add          a2, s6, s9
                  sltu         a4, t3, a4
                  srl          ra, s2, t2
                  xori         ra, s6, -1051
                  srl          t0, a1, t5
                  and          s0, s9, zero
                  xor          a4, s8, s2
                  bge          tp, a6, 481f
                  slti         t0, t3, -915
                  slt          t3, s5, a2
                  sltu         a6, tp, t2
                  slt          a5, s3, a0
                  sra          s10, a7, s9
                  srai         t2, ra, 26
                  lui          s4, 528111
                  bne          a4, tp, 489f
                  or           a6, t5, a3
                  slti         s10, sp, -84
                  blt          s10, s11, 491f
                  srai         a3, a0, 0
                  slli         zero, t3, 4
                  sub          t5, s1, s4
                  beq          s8, a3, 491f
481:              or           s3, a7, s7
                  ori          t2, s5, -1378
                  sltiu        s2, t4, -1545
                  or           t6, a5, a4
                  bne          a2, a0, 489f
                  ori          t5, sp, 1581
                  xor          a5, a0, ra
                  slli         s9, t0, 18
489:              xori         s5, t6, -478
                  bge          t1, a2, 492f
491:              blt          a4, a1, 494f
492:              add          s9, a6, a5
                  auipc        s9, 249731
494:              slti         s2, t4, -1393
                  and          s11, t0, a0
                  lui          s6, 266806
                  bge          t6, sp, 502f
                  or           s3, ra, a6
                  blt          s5, s5, 502f
                  add          t3, a7, t3
                  sra          s6, t5, t1
502:              srl          ra, tp, a1
                  lui          s1, 763617
                  sltu         s7, ra, t1
                  sltiu        t3, s3, -585
                  nop
                  bgeu         s3, a6, 520f
                  bgeu         t0, s1, 528f
                  sub          a3, a3, sp
                  blt          a3, a3, 518f
                  xor          zero, s9, t0
                  slli         s5, a2, 22
                  auipc        t6, 988759
                  or           a3, t5, a7
                  slti         a7, a1, 467
                  andi         s9, zero, 2042
                  and          t3, t3, sp
518:              andi         t2, t6, 1960
                  slli         s9, t0, 21
520:              sub          s1, a4, a4
                  slli         a1, a2, 8
                  sub          s4, sp, s4
                  sll          s11, t1, s4
                  xori         a4, s1, 339
                  bgeu         tp, s4, 544f
                  beq          t4, a3, 538f
                  srl          s6, s7, s0
528:              beq          a1, t1, 541f
                  slti         s0, s2, 582
                  add          s8, t1, gp
                  slti         s2, gp, -1010
                  andi         ra, t1, 1234
                  slt          t2, t6, s6
                  sltiu        s8, zero, -334
                  bltu         sp, t5, 554f
                  slti         a3, a1, -1627
                  slt          s11, gp, t2
538:              bne          s10, sp, 552f
                  sll          t4, t2, a3
                  xori         a5, a1, -1928
541:              andi         s6, t2, 1309
                  sra          a6, t5, tp
                  xor          s4, a3, zero
544:              and          a2, s9, t1
                  sra          a2, s11, t1
                  ori          t3, a2, -923
                  slti         s4, a0, 880
                  bge          t6, s0, 562f
                  xor          a5, t2, s11
                  bgeu         a3, s2, 567f
                  andi         t4, s11, -179
552:              or           a7, a3, s4
                  addi         s3, s2, 804
554:              nop
                  srl          s10, s11, a7
                  slt          t1, s10, s0
                  sltu         t3, zero, t6
                  sll          s6, s8, s8
                  slli         s2, s0, 22
                  sltu         a4, a4, a1
                  bge          s6, s9, 573f
562:              srli         s6, s11, 31
                  bne          s0, t0, 569f
                  sltu         a7, s8, a6
                  slti         a6, s9, -1817
                  andi         a6, s11, 1281
567:              addi         s9, t6, 91
                  xor          s5, s0, t3
569:              nop
                  srl          t2, a0, t3
                  sll          t3, t4, s0
                  blt          s1, t3, 574f
573:              srl          s0, a7, t4
574:              srli         gp, s7, 10
                  srai         t2, t2, 27
                  xor          a1, sp, a4
                  add          t0, sp, a4
                  sll          a5, zero, t2
                  sltiu        s3, s0, 1166
                  andi         a1, s11, -1036
                  xori         t1, t1, -1245
                  sltiu        s5, a3, 315
                  bgeu         s1, gp, 592f
                  bge          a4, t2, 593f
                  ori          s11, zero, -1435
                  andi         a2, t1, -17
                  nop
                  blt          s10, a0, 604f
                  sra          ra, ra, s1
                  nop
                  sltu         s7, a7, t2
592:              lui          t0, 415599
593:              bltu         sp, t6, 609f
                  addi         t3, gp, 924
                  or           t6, a2, s4
                  srl          t5, s7, a4
                  sltiu        zero, a0, -1335
                  nop
                  slli         s11, s4, 7
                  andi         s11, t1, -1088
                  srl          s9, a1, ra
                  add          s6, s0, a2
                  lui          t6, 877264
604:              slli         a2, t1, 6
                  sra          t3, s3, t0
                  sub          a5, s4, zero
                  bgeu         a6, s8, 623f
                  or           a2, t3, gp
609:              xori         t2, s0, -1104
                  lui          t1, 647127
                  addi         s4, s0, 1493
                  slt          t0, s6, a7
                  beq          a1, sp, 625f
                  sra          s0, s7, s8
                  bltu         a4, t2, 620f
                  slt          s5, s2, s2
                  nop
                  xori         t4, t4, 1196
                  andi         t5, a2, 506
620:              bltu         a0, gp, 636f
                  slt          s5, s1, s9
                  slt          a5, s0, a4
623:              addi         t5, tp, -1510
                  ori          s10, sp, 622
625:              bge          zero, a0, 629f
                  andi         a6, a4, 168
                  andi         a4, s1, 764
                  sra          a5, a2, zero
629:              bltu         s6, s9, 632f
                  ori          t6, t3, 1201
                  blt          s8, s10, 644f
632:              ori          s5, a4, -588
                  bne          t3, s10, 636f
                  ori          t5, a5, -1501
                  bne          t6, s2, 644f
636:              bgeu         a2, sp, 653f
                  addi         t5, s0, -64
                  srl          s2, t2, s9
                  blt          s11, t3, 653f
                  and          s4, t3, s4
                  sra          t6, s4, t4
                  xor          a3, s1, gp
                  lui          gp, 380368
644:              xori         a2, s0, 691
                  lui          t4, 87625
                  srli         s1, a6, 22
                  slti         t3, a3, -351
                  sltu         s4, a4, t0
                  add          s11, t3, s1
                  ori          s3, s10, -204
                  bltu         s11, a0, 671f
                  sra          t2, gp, a4
653:              xori         a3, a4, -1329
                  beq          a5, a7, 665f
                  addi         t0, t6, -98
                  add          s5, a0, a7
                  bltu         s2, t1, 669f
                  nop
                  ori          s6, s9, 1656
                  sll          s7, t1, tp
                  sra          t0, a7, a6
                  srai         t0, a4, 10
                  sub          s10, t4, a0
                  srai         a1, s1, 4
665:              slli         zero, t4, 24
                  addi         a1, a3, 1779
                  xori         t3, s3, -1829
                  sltiu        s1, s2, 828
669:              addi         s8, a2, 1967
                  nop
671:              or           s3, a4, a5
                  add          gp, t2, s2
                  bltu         a4, s1, 675f
                  and          t6, s1, a4
675:              addi         t5, s11, -587
                  bge          s11, s9, 688f
                  sub          s9, s1, zero
                  blt          s1, s10, 693f
                  nop
                  bgeu         ra, t3, 694f
                  sub          s8, s8, a0
                  blt          a7, sp, 695f
                  sltiu        s9, s8, -1655
                  lui          s9, 650833
                  xori         t5, s5, -1134
                  bltu         s9, tp, 705f
                  nop
688:              srli         t1, s5, 20
                  add          a4, s7, s4
                  xor          s7, s1, a6
                  sra          s9, t5, sp
                  bge          t6, s2, 701f
693:              ori          s0, t0, 1487
694:              auipc        a1, 970545
695:              nop
                  andi         t4, t6, 790
                  auipc        s10, 273175
                  add          a6, sp, tp
                  srli         s10, a3, 24
                  and          ra, s3, s3
701:              auipc        gp, 534412
                  bne          t0, s10, 707f
                  bltu         sp, s7, 722f
                  slti         s11, tp, 1255
705:              xori         s7, t2, 360
                  srli         s1, gp, 14
707:              ori          gp, a3, -1707
                  addi         gp, s1, 911
                  bge          a4, a7, 716f
                  slti         t0, t6, 2017
                  bltu         zero, s6, 719f
                  srl          s2, s4, t0
                  ori          gp, s11, -1674
                  sll          a1, sp, t6
                  xori         s4, s0, -1347
716:              slti         s3, s3, 1102
                  or           s7, t2, s5
                  andi         a6, zero, -486
719:              xori         ra, s3, 1045
                  sra          a4, zero, t3
                  auipc        t2, 175707
722:              srli         t2, a4, 0
                  bgeu         a0, t2, 725f
                  sra          s10, s9, s1
725:              ori          gp, s10, 684
                  srai         a5, a0, 2
                  andi         a4, t2, 1017
                  slt          s5, ra, s2
                  nop
                  xori         t4, t0, -262
                  bge          sp, a5, 749f
                  sltu         zero, zero, a3
                  xor          gp, s6, s11
                  addi         a1, a0, -442
                  srai         t0, s3, 2
                  auipc        t2, 800426
                  sltu         s6, gp, tp
                  xor          s5, a6, t0
                  srai         a6, s3, 1
                  auipc        s6, 861795
                  sub          t6, s0, s5
                  sra          s7, s7, tp
                  bgeu         s9, tp, 744f
744:              sra          gp, s8, t0
                  addi         a7, s2, 1717
                  bltu         tp, a1, 752f
                  nop
                  sub          a6, s0, t0
749:              bltu         tp, t2, 758f
                  beq          t3, a0, 764f
                  slt          s6, s10, s1
752:              beq          t2, gp, 763f
                  and          t5, t3, tp
                  sltu         s5, zero, t3
                  ori          t6, s9, -399
                  srli         s5, s4, 23
                  or           a4, t4, tp
758:              srai         a6, a3, 6
                  srai         s7, s0, 0
                  sll          s1, s10, a1
                  sltiu        t4, s1, -1963
                  srli         a7, s0, 11
763:              nop
764:              sll          s5, s10, a4
                  bne          s2, t2, 778f
                  lui          ra, 1029437
                  sltu         s4, s10, s5
                  slli         a7, sp, 20
                  and          t3, sp, s4
                  ori          a4, s5, -685
                  ori          s0, t4, 715
                  nop
                  andi         zero, s10, 1619
                  sll          t1, t6, t5
                  addi         s6, a5, 668
                  sub          zero, t5, t2
                  slli         s0, a2, 0
778:              xor          a6, gp, s2
                  addi         t5, s4, 1842
                  addi         s11, s0, -634
                  or           gp, s0, t5
                  srl          s9, a1, s2
                  srli         s7, t1, 14
                  bgeu         s11, t5, 799f
                  sll          zero, t6, a4
                  xor          a1, tp, ra
                  bgeu         a1, a4, 788f
788:              and          s1, t1, s9
                  xori         s10, ra, 1924
                  bge          tp, t6, 802f
                  bgeu         t2, a3, 809f
                  blt          tp, s0, 797f
                  addi         s9, t4, 1195
                  slt          s6, tp, tp
                  addi         s10, s6, 1563
                  srli         gp, t2, 15
797:              add          a7, sp, s10
                  slt          t3, s10, s9
799:              srai         gp, s4, 7
                  sra          t3, s0, a7
                  sltu         a2, a5, t0
802:              add          s11, gp, t6
                  sra          a7, s5, zero
                  bgeu         s0, s7, 816f
                  srli         s9, s0, 28
                  nop
                  nop
                  slt          a4, zero, tp
809:              add          s8, a2, s9
                  srai         gp, a1, 0
                  sltu         a2, a6, sp
                  sra          t2, a6, s11
                  xori         s3, s8, 1457
                  xori         a6, t1, 890
                  sltu         a7, a1, a3
816:              sltu         t1, a2, s8
                  andi         a5, gp, 670
                  add          gp, a1, s3
                  sub          a4, ra, t1
                  andi         a2, zero, -414
                  bltu         gp, s5, 828f
                  xor          t6, a3, s0
                  add          s10, s6, s7
                  srai         gp, sp, 31
                  xor          s5, a1, a1
                  sub          s5, s7, t5
                  auipc        zero, 17745
828:              xori         zero, sp, -1409
                  srl          t4, t2, tp
                  sltiu        t5, a2, -53
                  add          ra, a1, t3
                  lui          a6, 801765
                  sltiu        a3, s5, -905
                  bge          t5, s0, 847f
                  sltiu        t2, s1, 1487
                  srl          zero, a6, zero
                  sub          a7, a1, t0
                  la           s0, region_1+1003 #start riscv_load_store_rand_instr_stream_2
                  addi         a1, s6, 103
                  and          s5, a4, a4
                  addi         s2, a1, 1275
                  lh           s5, -225(s0)
                  srli         s3, t1, 9
                  lb           s10, -127(s0)
                  xor          s5, a1, a3
                  lbu          a6, 219(s0)
                  xori         gp, a0, 1215
                  nop
                  sb           s0, -146(s0)
                  srai         a2, tp, 6
                  sb           a7, -90(s0)
                  srli         s9, a0, 8
                  sw           s4, -147(s0)
                  srai         a2, t6, 22
                  lb           s11, 170(s0)
                  add          s11, s2, s10
                  or           t4, zero, s0
                  sh           s11, 123(s0)
                  lb           s1, 26(s0)
                  sb           a3, -144(s0)
                  lb           t4, -248(s0) #end riscv_load_store_rand_instr_stream_2
                  auipc        s9, 363938
                  andi         s2, s9, 1175
                  andi         s2, a0, -1881
                  blt          gp, s8, 844f
                  sra          s11, s3, t3
                  sra          s2, s8, s9
844:              bltu         gp, s4, 847f
                  nop
                  bgeu         s9, ra, 862f
847:              sub          t3, a7, a5
                  sub          a5, a2, s8
                  auipc        a5, 890610
                  lui          s4, 166614
                  addi         s6, a7, 1423
                  sra          s5, a1, s9
                  bge          zero, t6, 872f
                  slli         t2, t0, 13
                  slt          zero, t5, sp
                  sltiu        s4, a3, 718
                  sltiu        t3, s7, -925
                  srli         t6, tp, 17
                  auipc        a7, 646311
                  lui          t2, 447512
                  srl          s10, s8, s11
862:              srli         s3, t5, 0
                  ori          ra, s8, -1597
                  bge          t4, s11, 870f
                  xor          a7, t1, t6
                  bge          s8, s10, 882f
                  sltiu        s5, s3, 1241
                  sltiu        t6, s3, 1698
                  beq          t2, a6, 871f
870:              bne          a6, s0, 875f
871:              slli         s8, s9, 14
872:              and          s10, tp, s3
                  srl          t6, a5, s9
                  sra          t2, s5, a1
875:              lui          a2, 559475
                  bltu         s11, zero, 895f
                  or           s0, t2, a1
                  bne          s6, a7, 887f
                  sub          a3, s5, tp
                  and          a5, t4, a1
                  srai         t4, t6, 15
882:              xor          t3, s11, zero
                  bne          s10, s2, 903f
                  beq          a1, a7, 892f
                  slti         a1, a4, 1237
                  bgeu         t5, s7, 900f
887:              andi         s8, tp, -1327
                  sltiu        a2, t5, -1747
                  slli         t1, s6, 26
                  auipc        t2, 257941
                  srl          gp, t4, tp
892:              lui          t5, 772324
                  srl          s7, t3, s5
                  sub          t3, s7, s3
895:              slti         t2, a6, -1379
                  andi         t4, s1, -1922
                  beq          t6, s7, 899f
                  sll          a2, s9, s5
899:              bne          s6, ra, 915f
900:              slli         s10, s4, 31
                  srai         t0, s1, 28
                  bltu         tp, a5, 914f
903:              sltiu        s9, t5, 1152
                  srli         a3, t4, 30
                  xor          s10, s5, t3
                  nop
                  bgeu         a1, gp, 924f
                  sll          s3, s3, a2
                  nop
                  andi         t3, s11, 385
                  bgeu         s11, t1, 915f
                  bltu         a3, a5, 924f
                  sra          a5, t2, s3
914:              xori         t2, a2, 1800
915:              sra          a1, t2, s10
                  slt          a2, s1, s0
                  nop
                  bgeu         t0, t1, 936f
                  sra          s1, gp, a5
                  srli         s9, a3, 9
                  bge          a3, s2, 937f
                  sra          t4, t4, s10
                  sub          zero, gp, ra
924:              nop
                  bgeu         t0, t1, 942f
                  sltiu        s11, t2, -457
                  sra          s4, a6, s6
                  or           t5, a0, t4
                  slti         s6, a4, -1527
                  slt          s6, a1, gp
                  sub          zero, s6, a7
                  sra          t3, t2, gp
                  bge          a1, sp, 942f
                  srli         s2, t1, 28
                  sll          t2, s7, zero
936:              sltu         t4, t6, a5
937:              xori         s0, a7, -839
                  xori         zero, s9, 2038
                  sll          t3, s6, t3
                  xor          s6, ra, a0
                  sll          ra, t6, s0
942:              auipc        s7, 521
                  bne          s0, t4, 951f
                  slli         s4, a3, 20
                  sra          s10, a3, t1
                  addi         a1, s4, 1237
                  slt          ra, s9, s5
                  slti         a3, a0, -1874
                  ori          t5, a4, 1297
                  sub          zero, t2, s0
951:              slti         s2, s11, 450
                  and          s3, tp, s11
                  xori         t0, t6, -884
                  sra          gp, a5, a6
                  addi         s0, t0, -296
                  or           s4, t2, s3
                  blt          t2, zero, 973f
                  auipc        t1, 191037
                  srli         t2, s4, 4
                  xor          s9, a1, s4
                  and          ra, a0, a3
                  srli         t2, s0, 19
                  xor          s7, s10, sp
                  xori         gp, a7, 606
                  nop
                  lui          s3, 1040380
                  xor          a3, sp, tp
                  slt          s0, a5, s11
                  slli         t2, a1, 25
                  bgeu         a6, s10, 973f
                  srl          s7, a6, t5
                  andi         t2, a6, -1120
973:              bge          a3, t5, 978f
                  xor          s11, tp, t0
                  srai         a7, s0, 4
                  srl          t1, a1, t5
                  slti         t4, t4, 383
978:              bgeu         s0, s8, 997f
                  and          s8, t5, t0
                  sltu         s8, t2, t0
                  xori         s10, a0, 970
                  sltu         a1, s3, a6
                  nop
                  addi         a1, s6, 1983
                  sra          s9, t0, s9
                  sub          a6, a5, zero
                  bge          a1, zero, 1002f
                  srli         s5, tp, 13
                  bltu         t6, a6, 994f
                  sll          s11, a2, a7
                  srai         s5, s7, 29
                  bltu         s3, sp, 1012f
                  sltu         a6, s10, s11
994:              lui          t2, 818912
                  sub          ra, ra, gp
                  bltu         t4, a7, 1002f
997:              andi         s5, t3, 2033
                  ori          s0, zero, 437
                  srl          s3, gp, s9
                  bge          a0, s9, 1003f
                  bltu         a1, t6, 1012f
1002:             bne          s4, s6, 1004f
1003:             slti         s0, s5, 470
1004:             or           s10, s11, a5
                  bgeu         gp, a0, 1006f
1006:             andi         s0, t2, -140
                  slti         s1, s8, 101
                  or           t4, a3, s0
                  sll          a3, tp, a6
                  addi         s7, s7, 1756
                  and          t5, a0, a3
1012:             xori         s0, a0, -1
                  xor          t2, s2, s9
                  xori         t0, sp, 1981
                  sll          t1, s4, t3
                  beq          t6, tp, 1029f
                  xori         a1, a4, 533
                  srai         s10, t3, 0
                  bne          s8, ra, 1032f
                  ori          a7, a2, 1415
                  slti         s3, a7, 32
                  or           gp, ra, t1
                  slti         s8, t0, -866
                  nop
                  andi         t5, s9, 401
                  slli         s9, s9, 17
                  srai         s11, a3, 6
                  xori         s9, a7, 482
1029:             xor          a5, s0, t4
                  ori          s8, a3, 1349
                  bgeu         a1, a0, 1035f
1032:             bgeu         s0, s2, 1048f
                  ori          s4, a6, -597
                  sra          t1, zero, a2
1035:             bne          a5, t6, 1047f
                  and          s10, s4, a4
                  add          s6, a3, s0
                  slt          zero, a6, s0
                  bgeu         t4, a2, 1041f
                  srai         a1, s10, 9
1041:             lui          t6, 766436
                  or           s10, a4, a5
                  sll          t2, a2, a6
                  xori         a5, s7, 1555
                  bge          s9, ra, 1054f
                  slti         s5, a7, 659
1047:             bne          s2, a6, 1054f
1048:             beq          a2, t1, 1062f
                  bltu         s9, a2, 1068f
                  or           a4, a7, s0
                  ori          a7, zero, 1100
                  srli         s10, s7, 25
                  andi         t0, a5, 775
1054:             sub          s3, t5, s1
                  sltiu        s4, t4, 400
                  slti         t1, s1, 385
                  lui          t3, 109787
                  bltu         a1, s9, 1072f
                  nop
                  xori         s9, t2, -1711
                  bge          s3, s10, 1073f
1062:             sub          s8, s6, t5
                  xori         ra, ra, -119
                  bltu         sp, a1, 1069f
                  slti         a3, s1, 338
                  sub          ra, t6, ra
                  addi         a7, tp, -1322
1068:             xori         s7, t0, 1820
1069:             nop
                  xori         s6, gp, -189
                  sra          a7, a5, s5
1072:             add          a1, t1, zero
1073:             slli         t3, a2, 25
                  srli         t1, s0, 19
                  blt          t5, s7, 1094f
                  sra          s4, t6, s4
                  bgeu         ra, tp, 1079f
                  sub          s11, t4, a3
1079:             slti         a7, t4, -451
                  blt          a3, s8, 1081f
1081:             sltiu        s8, a1, -112
                  bne          s7, s11, 1101f
                  or           s10, s1, t1
                  beq          s6, a4, 1101f
                  add          s4, t4, s5
                  slti         t6, s3, -822
                  addi         ra, s2, -198
                  sltiu        s3, sp, 51
                  bgeu         s4, a4, 1104f
                  sltiu        s3, a5, -1393
                  xori         a1, a5, -1262
                  beq          t3, t0, 1104f
                  srl          a1, a3, s0
1094:             sra          t4, a1, a2
                  beq          gp, s4, 1113f
                  and          t2, a3, s2
                  srl          s7, a1, a3
                  bltu         s5, a3, 1114f
                  sra          a2, gp, a6
                  andi         s7, s6, -561
1101:             or           s0, gp, s4
                  bge          a1, t5, 1104f
                  blt          a7, s8, 1114f
1104:             lui          s9, 708817
                  sub          a4, s7, a3
                  auipc        s1, 638969
                  sltiu        t5, s8, 1235
                  srl          a4, gp, t2
                  sltu         s0, s11, a5
                  sra          s1, a7, gp
                  sra          s6, s4, a4
                  slt          s4, t3, t1
1113:             sltiu        t1, s8, 792
1114:             bgeu         s0, gp, 1117f
                  srl          s7, s11, t2
                  andi         s11, a2, -248
1117:             bge          t6, t0, 1131f
                  srli         t3, a4, 5
                  bgeu         s6, s8, 1128f
                  bge          t5, a2, 1129f
                  lui          t6, 355165
                  nop
                  ori          s6, t5, -28
                  add          ra, t2, s5
                  sltiu        s3, a6, 1646
                  lui          gp, 905373
                  srai         s6, t1, 6
1128:             bne          t1, sp, 1135f
1129:             sltu         s8, s4, s10
                  nop
1131:             slli         gp, a6, 13
                  sltu         t2, a5, s9
                  beq          s11, s6, 1149f
                  slti         s9, gp, -965
1135:             bge          s10, a4, 1148f
                  sra          a6, s6, s1
                  srl          s2, s10, t2
                  bltu         t3, gp, 1141f
                  srli         s0, s9, 18
                  addi         a5, s7, 1580
1141:             srai         a3, s5, 11
                  add          a6, s11, s9
                  ori          t1, sp, -767
                  srl          s5, zero, a6
                  andi         s0, s3, 1560
                  andi         s2, a3, -222
                  srl          a7, t1, zero
1148:             lui          a7, 749822
1149:             andi         s11, a1, 1594
                  andi         s10, a3, -1824
                  sll          t6, a3, t1
                  slti         s5, s2, -980
                  sub          s1, a1, s7
                  slt          s2, t2, t4
                  slli         s1, s8, 16
                  beq          s6, t6, 1176f
                  srai         t4, a0, 20
                  addi         zero, t4, 1631
                  bge          s1, a7, 1163f
                  sra          s10, s7, s5
                  ori          t2, a2, -2014
                  nop
1163:             addi         a3, ra, -615
                  bltu         t0, a6, 1178f
                  bge          a6, t5, 1178f
                  srli         s3, s4, 23
                  addi         s2, a6, -1865
                  xori         t4, t3, 556
                  bne          t0, s5, 1181f
                  nop
                  andi         t3, s5, -21
                  srl          t3, t2, a4
                  add          t0, a3, a7
                  slt          s4, t2, a7
                  lui          a6, 605148
1176:             srli         s11, a1, 20
                  la           t2, region_0+180 #start riscv_load_store_rand_instr_stream_0
                  lbu          t3, -36(t2)
                  xor          a6, a0, tp
                  ori          s10, s0, -1736
                  lhu          s11, 18(t2)
                  slt          s11, a2, t4
                  slli         a4, t6, 14
                  xor          s5, ra, s4
                  sb           s6, -3(t2)
                  sltiu        t3, gp, -940
                  sltiu        a5, s0, -1645
                  lb           a1, 39(t2)
                  sh           s9, -22(t2)
                  sub          t4, s1, s5
                  sb           t4, -19(t2)
                  slli         t0, zero, 12
                  lbu          s9, 29(t2)
                  slti         s1, ra, -1917
                  sub          t4, a5, t5
                  lbu          t0, -19(t2)
                  sh           s10, -22(t2)
                  lb           s5, -29(t2)
                  lbu          s7, 5(t2)
                  sb           zero, -9(t2)
                  lbu          s8, 37(t2)
                  sra          a2, gp, zero
                  sb           t3, -27(t2)
                  lbu          s1, -4(t2)
                  sb           gp, -5(t2)
                  lui          a4, 625115
                  sltu         gp, t2, s6
                  sub          s8, ra, a0
                  sb           s2, 62(t2)
                  lui          a5, 102464
                  ori          ra, s8, 24
                  lb           t1, -34(t2)
                  lbu          gp, 14(t2)
                  sb           a6, 61(t2)
                  sll          t0, s7, gp
                  lbu          s1, 47(t2)
                  slti         s2, s6, 582
                  srai         a2, s10, 23
                  lbu          a7, 28(t2) #end riscv_load_store_rand_instr_stream_0
                  srl          s6, s11, s7
1178:             srl          t1, s9, s6
                  srl          s11, ra, t5
                  nop
1181:             sub          s7, tp, s10
                  sltu         s1, s8, s0
                  slt          t5, t1, gp
                  bge          a6, t2, 1192f
                  bltu         t4, t3, 1190f
                  xori         gp, a7, -1782
                  slti         s8, t6, -824
                  sltiu        zero, s10, 1073
                  and          s4, zero, a3
1190:             nop
                  auipc        a4, 691680
1192:             bge          s6, a0, 1204f
                  andi         a2, a6, -1558
                  sltiu        a7, s7, 1494
                  slli         t1, a1, 31
                  bgeu         s3, a0, 1202f
                  bgeu         s7, t0, 1213f
                  or           ra, s2, t6
                  beq          s6, s3, 1213f
                  srli         s9, a3, 11
                  slt          s7, s0, s2
1202:             lui          a7, 952439
                  srli         ra, a6, 29
1204:             slli         a6, s7, 19
                  xori         a4, t5, -1842
                  beq          s8, t5, 1211f
                  beq          a7, sp, 1220f
                  xori         s6, s6, 1789
                  sltu         s3, ra, s4
                  lui          s1, 238611
1211:             andi         t4, gp, 1932
                  beq          tp, t3, 1213f
1213:             ori          a6, a1, 1020
                  auipc        s7, 536140
                  sra          zero, ra, s8
                  beq          a0, s0, 1233f
                  xori         t1, t2, 1148
                  sltiu        zero, a7, -1473
                  bgeu         a3, s9, 1222f
1220:             slti         a2, t1, -933
                  sra          gp, a1, a3
1222:             lui          t5, 908396
                  slli         ra, ra, 16
                  bgeu         s2, s4, 1228f
                  slli         a6, s1, 25
                  srl          zero, s3, a0
                  sltu         t1, a2, s3
1228:             add          a1, sp, zero
                  srai         zero, a4, 8
                  auipc        ra, 803038
                  and          gp, a1, gp
                  blt          gp, t2, 1240f
1233:             sltu         t0, s9, t2
                  lui          s0, 656976
                  slli         s7, a0, 14
                  bge          s10, s9, 1245f
                  sub          t0, zero, a5
                  sub          s1, s2, t4
                  andi         s4, a6, 1013
1240:             bltu         a1, s0, 1256f
                  sltu         t1, s3, s10
                  srl          t5, s6, a7
                  bge          s5, a7, 1252f
                  srli         s5, t0, 10
1245:             bltu         ra, gp, 1257f
                  auipc        s2, 793731
                  and          s5, t1, a7
                  slti         s8, t6, 766
                  sltiu        t6, s2, -233
                  and          s5, s1, t3
                  srai         s2, s10, 25
1252:             slt          s4, a0, ra
                  add          s0, t5, s3
                  xori         a6, sp, -862
                  andi         s0, a5, 1417
1256:             addi         s0, s3, -543
1257:             xori         a4, sp, -2038
                  srl          s0, s7, t6
                  addi         s5, gp, 221
                  sltu         a4, s10, a4
                  bge          sp, a5, 1277f
                  slli         s1, t1, 10
                  srl          t3, s8, t4
                  slli         ra, ra, 0
                  xor          s7, s9, a4
                  sra          a4, t6, s7
                  andi         s3, a6, -648
                  andi         s0, s11, -215
                  ori          s7, s0, -999
                  srl          s11, a5, t6
                  slti         s5, a1, -1510
                  blt          s1, s1, 1285f
                  sltu         t6, a0, s6
                  bgeu         s2, s3, 1293f
                  bgeu         t2, ra, 1277f
                  blt          t4, s3, 1279f
1277:             srli         t6, zero, 12
                  or           ra, t6, s8
1279:             xor          s6, gp, a5
                  add          a7, a5, s9
                  sltiu        s0, s9, 929
                  auipc        ra, 967169
                  srl          t6, a1, tp
                  addi         t0, t6, -657
1285:             bne          t4, a2, 1291f
                  slt          a7, t3, s1
                  add          a5, tp, a3
                  blt          a5, s6, 1300f
                  bne          t1, t4, 1309f
                  srli         a4, s3, 10
1291:             bge          s4, t1, 1305f
                  srl          t6, a0, a2
1293:             bgeu         s2, s11, 1308f
                  slt          a2, s7, a4
                  beq          t0, s7, 1307f
                  srai         s11, t4, 7
                  bgeu         a5, a5, 1304f
                  sub          a2, s7, a4
                  sltu         s5, sp, t3
1300:             andi         t1, a3, -793
                  lui          s6, 529158
                  bne          s1, s10, 1320f
                  lui          s9, 933131
1304:             srl          a5, a3, ra
1305:             bne          a1, tp, 1316f
                  bltu         t2, t2, 1308f
1307:             andi         s1, a6, 715
1308:             auipc        a1, 249759
1309:             srl          s10, s2, t1
                  sltiu        s7, s11, -523
                  slti         s7, t6, -186
                  xori         a4, a5, 596
                  xori         s2, t6, -91
                  slli         s4, s3, 19
                  sub          gp, a0, s9
1316:             auipc        s5, 758499
                  nop
                  add          s8, t2, tp
                  sll          gp, s1, s10
1320:             lui          s9, 620848
                  sub          t1, t4, s4
                  sltiu        zero, t3, -626
                  sltiu        s5, a3, -652
                  sltu         a5, t2, t6
                  sltiu        t3, t2, 56
                  and          s2, a1, zero
                  xor          s4, a3, t2
                  ori          a3, s11, -1659
                  xor          s9, sp, a4
                  lui          s5, 154666
                  srl          s5, a7, a0
                  xor          t1, zero, s5
                  xor          t5, s0, s2
                  slti         s11, s0, -1517
                  and          s9, a3, s4
                  blt          s7, a7, 1355f
                  add          t6, sp, s0
                  sra          a7, s8, t6
                  and          s6, sp, gp
                  srai         t5, t5, 13
                  xor          t1, a3, ra
                  sra          s7, a3, t1
                  ori          a1, sp, -693
                  and          s9, t2, t1
                  bge          s3, t3, 1350f
                  bgeu         s4, s8, 1362f
                  or           a6, a5, a2
                  srai         a5, a7, 14
                  nop
1350:             sltiu        s5, s2, 1930
                  srli         ra, a1, 13
                  sltiu        t1, tp, 1475
                  bgeu         t2, a4, 1366f
                  blt          zero, a4, 1368f
1355:             beq          a6, a5, 1369f
                  slli         t0, a7, 28
                  ori          s5, a7, 158
                  addi         s7, t1, -1018
                  srai         s3, ra, 28
                  srl          a1, a5, gp
                  bltu         tp, s0, 1368f
1362:             andi         s1, t4, 164
                  nop
                  bltu         sp, a5, 1380f
                  sltu         a7, s2, s7
1366:             xor          ra, s6, s8
                  bltu         t4, t4, 1384f
1368:             srli         s11, s0, 23
1369:             bne          s6, sp, 1389f
                  srl          s6, a5, t6
                  sltiu        a3, gp, 1064
                  slli         s1, a1, 7
                  and          s6, s4, a1
                  or           s1, t5, s1
                  or           s11, t4, sp
                  slti         a3, zero, -1014
                  slli         zero, s9, 18
                  bne          s5, t5, 1390f
                  srai         s5, t4, 29
1380:             addi         a5, s1, -1907
                  xor          s5, a2, s2
                  auipc        s6, 85800
                  sltiu        a4, t6, 275
1384:             sub          s6, zero, s11
                  xori         s2, t5, 1196
                  sll          s1, a2, a0
                  sltu         a3, s4, t0
                  srai         s6, s10, 26
1389:             bne          s0, s11, 1404f
1390:             bgeu         s1, s7, 1408f
                  or           zero, s10, a6
                  sll          a5, a2, s10
                  or           gp, t2, a4
                  srl          s3, s6, sp
                  ori          t3, t1, -846
                  bge          t1, ra, 1405f
                  srli         a3, a3, 4
                  slli         s1, t0, 12
                  bne          s9, ra, 1402f
                  slli         t3, a4, 30
                  slti         gp, s2, 454
1402:             slti         a7, t0, 1007
                  sra          zero, t5, s2
1404:             auipc        a1, 151765
1405:             sra          a5, t0, gp
                  xori         s9, sp, 355
                  sltiu        s3, s3, 715
1408:             srai         a2, s4, 11
                  sltiu        s10, s6, 284
                  auipc        t0, 28267
                  slti         a3, t0, 2037
                  sub          s9, s0, s0
                  srl          ra, t5, s2
                  lui          t1, 641397
                  add          ra, s9, s10
                  xor          t1, tp, sp
                  or           gp, sp, t6
                  slli         ra, ra, 25
                  sltu         a1, a7, t2
                  srli         t5, a0, 1
                  srl          a2, a2, s8
                  sub          t4, t5, a4
                  and          s7, a4, t0
                  slt          s11, s6, a6
                  slli         s5, t2, 9
                  bne          s2, s1, 1435f
                  lui          gp, 444303
                  auipc        t0, 575570
                  lui          s6, 574522
                  nop
                  sll          s0, ra, s4
                  sltu         t1, t0, t2
                  sll          a3, s8, s1
                  blt          s8, t3, 1435f
1435:             srli         a7, s11, 18
                  and          s6, a0, zero
                  bge          s2, a4, 1446f
                  sltiu        s10, s5, 955
                  srai         a1, sp, 27
                  bgeu         s3, s0, 1442f
                  and          s10, a2, a4
1442:             beq          a4, s4, 1444f
                  bne          ra, a1, 1446f
1444:             xori         s11, s2, 342
                  andi         s0, s7, -477
1446:             sll          a3, t3, a5
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            blt          a3, a3, sub_4_stack_p
                  sra          a6, s11, s10
sub_4_stack_p:    addi         a0, a0, -28
                  slt          ra, s3, t4
                  sw           a5, 4(a0)
                  xori         a3, gp, -794
                  la           s8, region_0+1342 #start riscv_load_store_rand_instr_stream_10
                  lb           a6, -14(s8)
                  sb           a0, 3(s8)
                  sra          s7, a3, zero
                  ori          a3, s10, 743
                  lb           zero, 11(s8)
                  xor          t4, s11, a1
                  lb           t6, 14(s8)
                  sb           t0, 7(s8)
                  lhu          t0, -12(s8)
                  nop
                  nop
                  andi         s9, s9, -1712
                  slli         zero, s4, 16
                  srl          gp, a6, t1
                  sltu         t6, s0, a6
                  nop
                  lb           s5, 9(s8)
                  sb           t0, 13(s8)
                  lb           t6, -7(s8)
                  add          t2, s1, s3
                  slti         s5, s8, -1777
                  addi         ra, s1, 1423
                  ori          a2, t2, -1395
                  lb           a2, -5(s8)
                  auipc        a6, 541977
                  srli         s9, s0, 16
                  lb           a2, -8(s8)
                  lui          t0, 777508
                  srai         s11, t6, 14
                  lh           t6, -2(s8)
                  lb           s3, 7(s8)
                  slti         gp, s1, -497
                  lb           gp, -9(s8)
                  sll          t4, s8, s3
                  lui          ra, 353244
                  lb           gp, 4(s8) #end riscv_load_store_rand_instr_stream_10
                  la           s10, region_0+1834 #start riscv_load_store_rand_instr_stream_5
                  lb           s6, -14(s10)
                  sb           tp, 10(s10)
                  sll          ra, a3, a2
                  lhu          ra, -14(s10)
                  lh           ra, 8(s10)
                  sltiu        a6, a1, 1203
                  srl          s7, t5, s2
                  lb           t5, -1(s10)
                  lbu          s11, 12(s10)
                  sh           t0, 0(s10)
                  lb           t0, 11(s10)
                  sb           s11, -4(s10)
                  sltiu        s0, s2, 1077
                  add          gp, t2, ra
                  sw           s6, -14(s10)
                  lb           a2, -1(s10)
                  sw           t5, -14(s10)
                  sw           s8, -2(s10)
                  lhu          s5, -8(s10)
                  lbu          t2, 11(s10)
                  add          a7, a6, zero
                  lbu          zero, -6(s10)
                  lbu          s1, 12(s10)
                  slt          t4, s6, ra
                  lb           gp, 8(s10)
                  nop
                  lbu          s5, -9(s10)
                  sll          a5, s9, t4
                  sb           a0, 7(s10)
                  sub          a6, t2, s10
                  sh           s1, -10(s10)
                  sll          s6, gp, a0
                  sh           a0, 6(s10)
                  lbu          t6, 9(s10)
                  xor          s1, a6, a2
                  slt          a1, a2, zero
                  lbu          s4, 15(s10)
                  addi         t0, a0, -1185
                  lbu          s0, -15(s10)
                  sh           a3, -4(s10)
                  lbu          zero, -4(s10) #end riscv_load_store_rand_instr_stream_5
                  la           s3, region_0+444 #start riscv_load_store_rand_instr_stream_0
                  sltu         gp, t1, zero
                  lb           t0, -6(s3)
                  lb           s8, 5(s3)
                  lhu          a3, -14(s3)
                  slt          a3, sp, ra
                  slti         t2, t3, 993
                  sll          a4, t3, a6
                  or           zero, s8, s3
                  ori          s6, s11, 990
                  andi         t5, sp, -949
                  auipc        s11, 138398
                  sub          t6, a5, s1
                  lbu          gp, 3(s3)
                  lui          gp, 229899
                  lhu          s1, 12(s3)
                  and          s0, t3, s0
                  slli         a1, s9, 17
                  sb           zero, 7(s3)
                  sb           ra, -3(s3)
                  lbu          a6, -15(s3)
                  nop
                  slli         a7, s9, 19
                  slti         a1, s10, 59
                  lh           a1, -2(s3)
                  lui          a7, 8000
                  sh           s3, -16(s3)
                  sb           gp, -2(s3)
                  sb           s7, 8(s3)
                  lhu          ra, 6(s3)
                  lbu          t1, -13(s3)
                  slli         s5, s5, 1
                  srl          t6, sp, s8
                  auipc        zero, 360347
                  sb           a6, 9(s3)
                  xori         t1, a6, -836
                  xor          s9, a0, s0
                  sll          a4, s7, s8
                  sll          s7, s1, a7
                  sltu         zero, a7, s4
                  lbu          s10, -12(s3)
                  nop
                  sb           a4, -3(s3)
                  slt          zero, s11, t4
                  lhu          t0, 6(s3)
                  lbu          a1, 10(s3)
                  srai         t2, t1, 19
                  sb           t4, 3(s3)
                  add          s10, s4, tp
                  lbu          a6, -14(s3) #end riscv_load_store_rand_instr_stream_0
                  la           s1, region_1+1561 #start riscv_load_store_rand_instr_stream_13
                  lbu          s10, 12(s1)
                  add          s8, s6, zero
                  lhu          gp, 53(s1)
                  sh           t2, -27(s1)
                  addi         t5, s7, -1017
                  lbu          ra, -24(s1)
                  lhu          t1, 19(s1)
                  sb           zero, 36(s1)
                  lbu          s2, 30(s1)
                  sb           a4, 40(s1)
                  sb           t0, 1(s1)
                  sw           t2, -29(s1)
                  sra          s11, s3, t3
                  lhu          a4, -15(s1)
                  sb           t2, 20(s1)
                  and          t3, s4, s0
                  lbu          t2, 31(s1)
                  sltu         s4, a5, t5
                  sra          t3, gp, ra
                  srl          t3, a5, t1
                  sb           t2, 56(s1)
                  sb           s3, 16(s1)
                  nop
                  sb           t5, 55(s1)
                  lbu          s5, 38(s1)
                  lbu          s8, 26(s1)
                  sb           s4, -44(s1)
                  sub          s0, s2, s0
                  srli         a4, t3, 30
                  lb           s6, 64(s1)
                  lbu          a4, 6(s1)
                  lh           a2, 5(s1)
                  srl          zero, a3, ra
                  sw           t0, -49(s1)
                  slt          gp, s2, s1
                  lb           t0, -8(s1)
                  lbu          t6, -60(s1)
                  srli         t5, s2, 12
                  addi         zero, t1, 1899
                  slli         ra, s9, 27
                  sb           sp, -10(s1) #end riscv_load_store_rand_instr_stream_13
                  la           a5, region_1+1927 #start riscv_load_store_rand_instr_stream_6
                  and          s10, s1, s0
                  sll          s3, s6, a4
                  lbu          a6, -1854(a5)
                  ori          t0, a6, -338
                  srai         s2, s3, 21
                  srl          t5, t5, s0
                  sb           a1, -454(a5)
                  nop
                  sw           s2, -635(a5)
                  lui          ra, 107101
                  lbu          s4, -264(a5)
                  lb           t2, -1660(a5)
                  sw           gp, -407(a5)
                  sltu         zero, a2, a3
                  srl          t0, s8, a5
                  nop
                  lh           s0, -541(a5)
                  xori         a6, a3, 1844
                  sb           s10, -1798(a5)
                  or           t3, t2, a6
                  or           a4, a1, t4
                  lhu          s1, -129(a5)
                  sltiu        t1, s3, 1894
                  srl          s4, t2, t3
                  andi         t2, sp, -1593
                  auipc        t5, 696708
                  sltiu        t2, a0, 1681
                  sb           a3, -845(a5)
                  xor          s11, s6, s3
                  sb           t0, -1622(a5)
                  lbu          a2, -324(a5)
                  lb           s9, -786(a5)
                  lui          s8, 837936
                  sw           s8, -1135(a5)
                  slli         s7, s5, 5
                  lh           s2, -1079(a5)
                  sb           s1, -1600(a5)
                  lbu          a2, -1921(a5)
                  lbu          s3, -195(a5)
                  or           a7, a2, s3
                  srai         s6, sp, 12
                  slli         ra, a7, 10
                  lb           s11, -1109(a5)
                  lb           a4, -725(a5)
                  lbu          a3, -1010(a5) #end riscv_load_store_rand_instr_stream_6
                  la           s6, region_1+1600 #start riscv_load_store_rand_instr_stream_9
                  ori          a3, s9, 493
                  sb           a7, 33(s6)
                  sb           t1, 61(s6)
                  sb           a7, 26(s6)
                  lh           t1, -32(s6)
                  nop
                  sb           a5, -29(s6)
                  lbu          a3, -33(s6)
                  lbu          a6, -28(s6)
                  auipc        s3, 35690
                  sltu         a7, a4, a0
                  lh           t2, -32(s6)
                  sh           s8, 38(s6)
                  and          s7, a5, ra
                  lb           a4, 59(s6)
                  slti         s3, s10, 862
                  lhu          s4, 2(s6)
                  lbu          gp, -55(s6)
                  lb           a7, 53(s6)
                  lb           a2, 21(s6)
                  lbu          t6, 51(s6)
                  lb           a3, 19(s6)
                  lbu          gp, 6(s6)
                  lbu          a6, -7(s6)
                  lbu          t5, 54(s6)
                  sltiu        a7, s6, 96
                  lbu          t5, -27(s6)
                  xori         t2, a5, -659
                  lh           s8, 28(s6)
                  lh           s7, -12(s6)
                  xor          t1, a7, s0
                  xori         t2, s7, 1373
                  sb           s8, 42(s6)
                  or           a1, a5, s7
                  lui          gp, 27900
                  slli         t5, ra, 10
                  sb           s4, 8(s6)
                  lh           s1, 2(s6)
                  sh           a0, -2(s6)
                  xori         s8, s8, 1503
                  lbu          s9, -28(s6)
                  sb           a1, -45(s6)
                  lbu          a2, -48(s6) #end riscv_load_store_rand_instr_stream_9
                  la           s4, region_0+847 #start riscv_load_store_rand_instr_stream_1
                  andi         t5, t0, 316
                  sltiu        t4, s6, -1914
                  slti         s9, a7, -1773
                  sh           a5, 7(s4)
                  sh           a5, -17(s4)
                  lui          a6, 546713
                  xori         s8, t4, 140
                  sltiu        gp, a3, -1186
                  lbu          t3, -41(s4)
                  srl          s9, s3, s0
                  lbu          t6, -26(s4)
                  sb           a5, 14(s4)
                  or           t1, zero, tp
                  lw           s11, 21(s4)
                  andi         s6, s11, 1518
                  srli         s9, s4, 19
                  xori         ra, tp, -21
                  lw           a7, -51(s4)
                  sb           a1, 50(s4)
                  lb           t6, 4(s4)
                  slli         gp, sp, 4
                  lhu          s6, 55(s4)
                  lb           a5, -40(s4)
                  sltu         t4, a5, t2
                  nop
                  lbu          a7, -32(s4)
                  sb           gp, -16(s4)
                  auipc        a3, 543810
                  auipc        t5, 13729
                  lb           s6, 63(s4)
                  nop
                  auipc        s6, 574956
                  lbu          gp, -24(s4)
                  srl          ra, s4, a3
                  lui          t3, 663243
                  lbu          s7, -10(s4)
                  lbu          s6, -21(s4)
                  ori          s5, tp, -118
                  xori         a7, s1, 685
                  sb           s8, 5(s4)
                  sltiu        s10, s4, -597
                  lbu          a6, 9(s4)
                  sb           a3, 46(s4)
                  and          s1, s9, a2
                  sw           s1, -11(s4)
                  slt          t5, a3, tp
                  slli         t4, s11, 11
                  lb           zero, -17(s4)
                  slt          t4, a4, a2
                  xori         zero, zero, 1674
                  addi         s9, t4, 698
                  sra          a3, s7, t5
                  lhu          t0, -7(s4)
                  lb           gp, 26(s4)
                  sh           tp, 5(s4) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_0+1673 #start riscv_load_store_rand_instr_stream_11
                  lbu          s5, -758(gp)
                  sh           t4, -193(gp)
                  sb           s0, 60(gp)
                  sh           s4, -971(gp)
                  sltiu        s0, s5, -48
                  lhu          t2, -939(gp)
                  sub          zero, s9, s1
                  srai         s6, sp, 15
                  sb           t5, -726(gp)
                  lb           a1, -1269(gp)
                  lb           s4, -316(gp)
                  lb           s7, -239(gp)
                  lb           a6, -393(gp)
                  add          t6, a2, s2
                  lbu          s2, -1618(gp)
                  ori          s10, t1, 605
                  ori          t4, a0, 1597
                  lb           t2, -484(gp)
                  ori          s11, sp, -455
                  xor          a6, tp, s5
                  sw           a7, -1289(gp)
                  or           t4, s3, s8
                  lbu          s11, 69(gp)
                  lb           t2, -812(gp)
                  lbu          t4, -1454(gp)
                  slt          s0, s9, sp
                  sb           s7, -1440(gp)
                  lh           s1, -1351(gp)
                  or           t0, s5, tp
                  sh           a2, -371(gp) #end riscv_load_store_rand_instr_stream_11
                  la           s11, region_0+1186 #start riscv_load_store_rand_instr_stream_2
                  xor          t4, t2, a6
                  sb           a4, -499(s11)
                  sub          t6, t5, s1
                  lbu          t0, 747(s11)
                  srli         s8, gp, 9
                  lb           t0, -591(s11)
                  slti         s7, gp, 1066
                  srai         s9, s1, 20
                  or           ra, t3, s3
                  andi         a7, s2, -1603
                  or           t1, s10, tp
                  srl          ra, t5, s8
                  srli         a3, a4, 2
                  ori          s10, gp, -1977
                  slli         zero, a1, 28
                  lhu          t1, -436(s11)
                  lbu          ra, -465(s11)
                  sb           t6, 708(s11)
                  sltu         a1, sp, s0
                  nop
                  xori         s5, s5, -556
                  andi         s7, t2, -548
                  sb           s3, -760(s11)
                  sltu         t3, s3, s1
                  slli         a7, s7, 4
                  or           t0, s9, t6
                  sll          a2, s3, t0
                  sra          t1, a2, zero
                  ori          t2, a5, 823
                  lui          s7, 713817
                  lh           s0, 496(s11)
                  sb           s2, -602(s11)
                  lbu          s3, 186(s11)
                  auipc        gp, 148651
                  andi         a4, t0, 1840
                  lb           a4, 201(s11)
                  slti         t2, s2, -1625
                  lui          s1, 712440
                  add          t4, gp, s3
                  sb           s11, 485(s11)
                  andi         a3, s8, -952
                  slli         t1, s8, 14
                  lb           s3, 627(s11) #end riscv_load_store_rand_instr_stream_2
                  la           s11, region_1+1634 #start riscv_load_store_rand_instr_stream_8
                  sra          t1, s6, t1
                  sh           s8, 4(s11)
                  sltu         a1, t0, t6
                  lb           s2, 14(s11)
                  or           ra, s10, s10
                  lb           a3, 35(s11)
                  ori          s8, gp, 737
                  ori          t6, a1, -25
                  addi         a2, s6, -1721
                  lb           t0, 44(s11)
                  xor          t1, s11, t0
                  slli         t6, a5, 10
                  addi         t5, zero, -1964
                  lbu          t5, 7(s11)
                  add          t1, tp, s7
                  sltu         gp, t5, s6
                  srli         gp, s11, 21
                  add          t6, a4, a2
                  sra          a7, s10, s1
                  lh           t3, -46(s11)
                  sltu         s4, a5, zero
                  sub          s9, s3, s6
                  lui          s10, 984241
                  lb           s4, 20(s11)
                  or           s1, t0, a5
                  srli         s6, gp, 27
                  add          s0, s9, t4
                  auipc        s8, 669359
                  and          s1, s6, t2
                  lb           t6, 64(s11)
                  andi         s8, s3, -1487
                  lbu          t5, 3(s11)
                  slti         s5, a6, 2026
                  lh           t4, -2(s11) #end riscv_load_store_rand_instr_stream_8
                  bge          s10, s2, 5f
                  auipc        s0, 143504
                  sub          t4, s2, gp
                  addi         a5, s8, -480
                  blt          a3, t1, 6f
5:                xori         s10, t6, 1560
6:                blt          a2, tp, 26f
                  sltu         s5, zero, gp
                  slli         a7, a5, 2
                  and          a6, t3, a5
                  srl          t5, s11, s7
                  auipc        s2, 608770
                  and          t5, a5, sp
                  srl          s8, t0, s3
                  srl          a1, s9, s6
                  sll          t1, s3, a2
                  bne          t5, a2, 21f
                  bne          t2, s9, 26f
                  xor          s9, a5, t1
                  blt          t6, s7, 26f
                  srl          t6, t0, s4
21:               addi         a2, t2, -432
                  xor          a7, s3, s9
                  slli         s4, t5, 20
                  slti         s5, t6, -908
                  bgeu         t3, sp, 32f
26:               beq          s4, s1, 39f
                  sub          s8, s4, s9
                  srai         s2, t5, 18
                  or           s11, s6, s6
                  xor          a7, ra, s2
                  sub          ra, s7, zero
32:               beq          t0, s0, 40f
                  addi         s2, a0, -1573
                  blt          a1, a1, 51f
                  slt          s5, a7, t1
                  bgeu         s10, a6, 56f
                  sll          s4, s8, a3
                  srai         a1, tp, 18
39:               srli         a7, s8, 8
40:               srai         s11, s10, 5
                  bgeu         t4, t1, 51f
                  bgeu         s5, zero, 61f
                  bgeu         sp, t1, 50f
                  srli         s4, s3, 30
                  bgeu         sp, a6, 51f
                  andi         s6, s2, -1595
                  xori         s4, s8, 1815
                  xori         s6, t6, 1943
                  srl          zero, s7, s2
50:               srai         t6, s11, 10
51:               sltu         a5, a6, t6
                  slli         s0, a4, 10
                  bge          a6, s10, 60f
                  sra          s7, t5, sp
                  sll          s7, t1, zero
56:               add          s5, zero, s6
                  andi         t0, ra, 1387
                  and          t1, s4, t6
                  add          t3, a7, s3
60:               lui          t2, 502230
61:               xori         t3, zero, -1252
                  and          s6, a4, t3
                  and          s8, a6, t2
                  and          a5, a0, t2
                  bge          s0, s7, 85f
                  sra          s8, s10, s10
                  bne          s5, s1, 83f
                  auipc        s5, 514613
                  sll          t1, ra, s9
                  bgeu         t2, a6, 77f
                  sltiu        a1, tp, -144
                  or           t2, s0, a2
                  sltiu        s1, a2, -31
                  addi         s4, sp, 130
                  xor          s8, s1, t6
                  sltu         t2, s5, ra
77:               bne          t2, t6, 81f
                  xor          a5, s2, t4
                  nop
                  slti         s11, s11, 901
81:               andi         ra, s11, 540
                  addi         t1, t2, -727
83:               srli         s3, t6, 18
                  xor          s4, s2, zero
85:               sll          gp, s6, t4
                  nop
                  xori         t1, s9, 88
                  slli         t0, s8, 27
                  and          t1, t1, a6
                  sub          s4, a6, t0
                  sub          s2, s6, sp
                  lui          t0, 483455
                  and          s0, s2, s8
                  slli         zero, a0, 12
                  or           zero, s6, zero
                  xor          s6, gp, zero
                  bgeu         t0, a7, 98f
98:               bge          s8, s10, 107f
                  auipc        t5, 668615
                  slli         t4, sp, 18
                  bge          a2, zero, 107f
                  slli         s6, s7, 15
                  add          s9, a1, a7
                  sltu         a5, s5, ra
                  lui          s4, 316617
                  sltu         t3, tp, s8
107:              xor          a3, s6, t6
                  lui          s10, 592127
                  bne          sp, s9, 127f
                  lui          a1, 279234
                  sltu         s8, s5, a5
                  slli         s10, s10, 9
                  srli         s1, t0, 10
                  ori          s10, s1, -1955
                  sll          a5, t2, t5
                  blt          s8, s3, 125f
                  lui          s11, 558946
                  sra          s0, s1, s0
                  sra          t6, s9, a7
                  add          s5, s4, t6
                  add          s8, a0, s6
                  bne          a1, s8, 131f
                  auipc        a1, 714455
                  lui          s0, 857258
125:              slli         s10, a7, 18
                  bltu         tp, s7, 136f
127:              slli         t4, t0, 8
                  bge          s6, s10, 139f
                  ori          s11, t4, 1222
                  sra          a7, s1, t0
131:              xor          s1, s1, t0
                  slli         zero, a6, 17
                  srli         s10, sp, 13
                  xori         zero, t5, 1294
                  srl          s6, ra, t2
136:              sub          gp, s1, t1
                  add          s0, s9, a6
                  andi         zero, s5, 789
139:              sltiu        s1, s10, 395
                  bge          gp, gp, 141f
141:              slti         t5, s9, -282
                  sltu         s5, a1, s10
                  addi         t1, t1, -168
                  and          s1, s5, t1
                  sll          t2, sp, s10
                  sra          s2, s5, a1
                  srai         t1, t5, 24
                  bge          tp, t1, 165f
                  srai         a5, s5, 18
                  bge          s6, a5, 159f
                  slti         s8, s0, -276
                  sltu         s9, sp, t3
                  andi         s9, s6, 1082
                  srl          t0, zero, sp
                  addi         s10, a2, 1491
                  slt          s9, tp, s10
                  xori         t5, gp, -237
                  bgeu         s1, gp, 174f
159:              srai         a3, s3, 8
                  sll          ra, gp, s4
                  slli         a7, s0, 24
                  blt          a1, t2, 172f
                  andi         s6, s5, -1963
                  or           t3, s7, s0
165:              beq          s5, t3, 172f
                  xor          a2, a4, s11
                  slt          s10, a3, s6
                  or           ra, a7, a3
                  bltu         s4, s8, 171f
                  ori          t2, s10, 738
171:              bge          a2, a2, 182f
172:              bne          s8, a1, 181f
                  sltiu        a1, sp, 39
174:              srai         t0, s11, 9
                  xori         ra, t3, 1229
                  sra          ra, s0, s8
                  bne          s4, a2, 178f
178:              add          gp, t4, t5
                  sra          t4, s0, a1
                  slli         a2, s5, 8
181:              bltu         s3, a0, 191f
182:              auipc        s10, 683544
                  add          s2, a5, zero
                  beq          a7, s10, 204f
                  bgeu         a7, a3, 203f
                  nop
                  auipc        gp, 448855
                  auipc        a1, 273356
                  sll          a7, s3, ra
                  beq          s6, a5, 207f
191:              xori         s3, t1, 185
                  srai         s0, s8, 4
                  srai         t0, t3, 11
                  and          s7, s9, a7
                  auipc        ra, 741953
                  sll          a5, t2, a1
                  slli         t4, s8, 7
                  slti         t4, a7, 1811
                  sub          t4, t4, t1
                  sltiu        s3, s7, -1323
                  add          s11, s11, zero
                  slti         t5, t4, -1991
203:              beq          zero, t2, 210f
204:              slli         s0, s10, 17
                  slt          s7, s10, a0
                  slti         t4, s7, -1981
207:              xor          t2, sp, a7
                  bgeu         s5, sp, 228f
                  sll          a1, s4, gp
210:              sltiu        a6, s1, -1590
                  sltiu        s4, t1, 98
                  bge          a7, s0, 231f
                  addi         t4, s4, 881
                  bne          a6, t4, 221f
                  xor          t6, s7, s2
                  beq          s10, t1, 229f
                  srli         s0, s5, 27
                  add          a3, ra, s0
                  bne          zero, a5, 225f
                  xori         zero, s11, 93
221:              bge          s3, s6, 230f
                  addi         s5, a5, 335
                  or           s10, s0, sp
                  slt          s3, t0, a1
225:              ori          t1, t4, -600
                  add          t5, s7, a4
                  sub          a4, t5, gp
228:              beq          ra, t4, 245f
229:              srl          a7, t1, s6
230:              xor          gp, a0, t3
231:              bgeu         s1, tp, 237f
                  srl          t5, a1, t3
                  bgeu         s9, s6, 241f
                  srli         t6, t4, 1
                  bgeu         s10, t5, 255f
                  auipc        s11, 864155
237:              andi         a4, s8, -102
                  bltu         s5, s10, 239f
239:              slli         a4, s10, 18
                  sltu         a6, a0, a1
241:              andi         s11, a2, -1792
                  sub          s6, t5, a0
                  bne          t4, s7, 247f
                  auipc        s4, 737231
245:              beq          t1, ra, 250f
                  bltu         t4, t1, 253f
247:              slti         s6, a5, -1597
                  sub          s11, t5, t2
                  slt          t5, t4, a6
250:              andi         t4, s11, 616
                  auipc        s4, 318222
                  add          t4, s6, t5
253:              bgeu         t4, tp, 258f
                  sltu         t3, s6, a6
255:              bge          a7, gp, 262f
                  srli         t2, a2, 22
                  ori          gp, t5, -795
258:              andi         t1, t5, 948
                  slt          t5, a2, tp
                  srli         t0, s0, 8
                  sltu         t4, t3, t4
262:              blt          a7, s11, 271f
                  or           s4, s11, a5
                  andi         s3, a3, 1848
                  sra          zero, t6, zero
                  sll          s2, t6, a3
                  auipc        s11, 402985
                  blt          zero, a3, 275f
                  nop
                  or           t2, a4, t2
271:              slli         zero, gp, 20
                  bge          s7, s7, 279f
                  beq          a1, s8, 284f
                  ori          s10, s4, 720
275:              srl          s5, a0, a6
                  slli         a3, sp, 27
                  addi         s9, s10, 1759
                  blt          a3, a1, 287f
279:              or           s0, s10, s4
                  sra          a7, tp, s10
                  andi         s9, a5, 1054
                  sltu         t5, sp, a1
                  srl          a7, a2, t6
284:              andi         s5, a7, -1547
                  nop
                  srai         s2, s9, 1
287:              addi         zero, t5, 169
                  auipc        a4, 665779
                  xori         t5, gp, 1598
                  srai         t3, t3, 10
                  addi         t1, a3, -1635
                  srli         a5, t3, 3
                  xor          s8, tp, s11
                  or           a4, a5, a5
                  slt          s6, s10, s11
                  slt          s9, t5, sp
                  ori          gp, t5, 955
                  sub          a3, s6, tp
                  sltiu        s11, a7, -1535
                  bge          s8, s8, 320f
                  xor          t2, s10, a3
                  andi         s1, s3, 1604
                  xori         zero, a1, -980
                  bgeu         s9, t4, 310f
                  sra          t6, s6, a0
                  slti         s10, s11, -533
                  or           t2, sp, t3
                  sra          t4, t4, t3
                  sub          s2, s4, t4
310:              sra          t4, s6, s6
                  sll          a3, a6, t3
                  addi         t3, s11, 1648
                  slt          s7, s6, a3
                  sra          s1, a0, a0
                  addi         a4, s1, 1227
                  bgeu         zero, t0, 325f
                  bne          s3, s3, 323f
                  bgeu         s10, t3, 336f
                  xori         ra, t6, -1188
320:              blt          t0, t4, 329f
                  sltiu        s3, t3, 125
                  srai         a6, s10, 4
323:              andi         t0, s3, 81
                  sltiu        s8, s0, 489
325:              sll          t4, zero, s9
                  ori          a3, t4, -637
                  bltu         s11, ra, 344f
                  sll          t3, a2, t3
329:              srl          s1, s10, s1
                  bltu         a4, s4, 335f
                  xori         s8, s1, 1432
                  bgeu         s10, s5, 337f
                  bgeu         a6, tp, 350f
                  bltu         t4, s11, 335f
335:              srl          a7, s9, zero
336:              or           gp, sp, a0
337:              auipc        a4, 1000428
                  bge          zero, s8, 340f
                  nop
340:              bltu         s1, s9, 360f
                  bltu         t6, t1, 345f
                  bltu         ra, gp, 349f
                  sltiu        s7, t6, 1008
344:              xor          s4, s1, s4
345:              ori          s1, t6, -1354
                  bltu         tp, s9, 354f
                  auipc        s10, 673757
                  lui          zero, 358815
349:              bltu         s10, a6, 368f
350:              bgeu         s7, s2, 357f
                  bne          s8, t6, 361f
                  or           t1, a3, t5
                  slti         s10, t5, 1722
354:              sll          a5, s4, a5
                  blt          tp, gp, 371f
                  andi         t0, s0, 1927
357:              slli         a1, a6, 11
                  slti         a3, tp, -762
                  xor          s2, a2, s6
360:              ori          a3, s6, -30
361:              bne          a4, sp, 368f
                  srai         s9, a6, 6
                  sltu         t0, s9, t4
                  sltiu        zero, sp, -917
                  slt          a5, a0, a2
                  and          s3, a6, s5
                  srai         a3, gp, 11
368:              bge          a7, t6, 369f
369:              bltu         a6, s2, 379f
                  bltu         a4, a6, 383f
371:              sll          s10, t0, s3
                  sub          t3, gp, s2
                  xori         a1, tp, 437
                  auipc        s0, 408493
                  lui          s8, 981237
                  srai         t2, s4, 9
                  and          a7, tp, s4
                  srli         s10, a7, 16
379:              add          t5, t3, t0
                  slti         s1, t3, 933
                  bge          t1, s7, 401f
                  add          gp, zero, a2
383:              slt          t5, a1, sp
                  srai         a1, s11, 2
                  addi         s3, s11, -682
                  lui          s5, 1036771
                  andi         a4, sp, 1132
                  xori         a7, s6, 908
                  slli         a5, s5, 26
                  beq          a3, a0, 399f
                  andi         s6, zero, -982
                  xor          t1, s0, s1
                  bge          t5, t5, 398f
                  srl          s7, a7, tp
                  sub          t3, t3, a3
                  and          t6, s4, s2
                  bne          t1, a6, 416f
398:              xor          s8, s8, s9
399:              bge          t6, t0, 419f
                  add          s9, sp, s2
401:              slli         t5, s0, 15
                  bge          s5, a1, 422f
                  bne          s3, a3, 416f
                  sra          s6, a7, t2
                  andi         zero, a1, -106
                  or           s11, a1, s7
                  andi         t0, s10, -18
                  and          s4, s0, s0
                  srai         s6, s2, 3
                  srli         s4, a7, 28
                  srli         s7, tp, 9
                  bgeu         t0, t3, 423f
                  bltu         s5, s8, 430f
                  slt          s5, ra, a6
                  sub          a6, s11, a6
416:              ori          a5, t1, 876
                  beq          sp, t4, 433f
                  nop
419:              sub          a3, t2, s2
                  sub          t5, sp, s11
                  sltiu        s11, s4, -1372
422:              bltu         s8, a1, 426f
423:              auipc        t3, 265278
                  bge          t2, s9, 434f
                  bne          a4, s3, 434f
426:              and          s6, s7, tp
                  addi         t4, s10, -941
                  la           a1, region_1+1939 #start riscv_load_store_rand_instr_stream_14
                  sh           s0, -143(a1)
                  sw           s8, -35(a1)
                  lbu          t2, -222(a1)
                  srl          s2, t2, a7
                  lb           s1, -141(a1)
                  or           zero, sp, a7
                  slt          gp, s2, t3
                  lb           s7, -164(a1)
                  lhu          s11, -197(a1)
                  sb           a1, -38(a1)
                  lb           s2, -192(a1)
                  lui          a7, 221581
                  sh           s10, -155(a1)
                  addi         t1, s2, -125
                  srai         s4, a6, 23
                  srai         s9, s4, 8
                  lb           t2, 9(a1)
                  lbu          s7, -226(a1)
                  srli         s2, gp, 18
                  addi         s5, t3, 570
                  slt          a4, a6, s4
                  sh           s6, -73(a1)
                  sh           s6, -221(a1)
                  lbu          gp, -105(a1)
                  lbu          a3, -205(a1) #end riscv_load_store_rand_instr_stream_14
                  sltiu        s7, s1, 1287
                  sub          ra, gp, t3
430:              slti         a1, t0, 955
                  or           t4, s0, s2
                  slti         a2, s5, -829
433:              sll          s1, t6, t2
434:              sltiu        a1, s8, 558
                  srl          gp, t0, t4
                  add          ra, a4, t0
                  auipc        a4, 104010
                  addi         s8, t2, -1068
                  xori         t0, t6, 989
                  lui          a7, 28179
                  nop
                  beq          a2, s4, 448f
                  xor          t5, s11, gp
                  sltu         zero, t3, a1
                  slti         a7, gp, 587
                  srli         s3, s4, 7
                  sub          s1, t0, s4
448:              bne          t6, t3, 455f
                  lui          s8, 256207
                  bltu         s1, t1, 470f
                  addi         s10, s4, -1027
                  srl          s1, s4, ra
                  beq          a6, zero, 462f
                  add          t6, t6, t6
455:              add          s10, a0, tp
                  beq          a7, s6, 463f
                  xor          a7, a5, t0
                  or           a6, s10, zero
                  addi         t0, s3, -1195
                  srl          a2, a2, s1
                  sub          t3, s5, a2
462:              or           a2, a4, t1
463:              andi         t6, a5, 1815
                  xor          a5, a7, t3
                  slli         s1, t5, 13
                  blt          s11, t5, 475f
                  srai         a3, s10, 29
                  addi         s6, s1, -1615
                  lui          a5, 930023
470:              sltu         zero, a2, tp
                  xor          s1, sp, ra
                  or           t3, a4, t4
                  addi         s2, t3, -245
                  xori         zero, s2, -1449
475:              bltu         a4, sp, 481f
                  sltu         s4, a6, s3
                  slti         s6, tp, 1311
                  bge          t4, s6, 486f
                  slt          s8, t1, s10
                  bgeu         s9, a3, 482f
481:              bgeu         t0, t0, 488f
482:              sltu         zero, t1, t0
                  lui          t5, 481800
                  bne          zero, a4, 491f
                  add          s9, s2, a3
486:              srl          t0, s6, a7
                  srli         a4, zero, 8
488:              xori         gp, t3, -1382
                  srai         a6, s5, 7
                  bne          t5, t0, 499f
491:              auipc        a3, 826625
                  sra          s0, s7, s10
                  andi         a4, t1, 657
                  slti         a7, a3, 1266
                  slt          s1, a5, t6
                  srl          t5, t6, t4
                  bgeu         t5, t0, 514f
                  beq          s7, s6, 499f
499:              addi         t1, zero, 1418
                  beq          t1, a6, 507f
                  srli         s9, s10, 24
                  lui          s11, 279047
                  addi         a2, s8, -817
                  slt          a7, s4, a0
                  sub          t1, a0, a0
                  sub          s8, zero, t5
507:              bltu         s3, t6, 525f
                  slt          a7, a7, s10
                  sll          a4, s5, t2
                  beq          s11, s5, 511f
511:              sltiu        a2, s6, -982
                  sub          t1, s8, t1
                  sltu         a4, s3, s11
514:              slti         a6, s6, -858
                  sub          s3, s2, a2
                  beq          s0, ra, 521f
                  la           s1, region_0+23 #start riscv_load_store_rand_instr_stream_3
                  xori         a4, zero, -95
                  xor          a6, s11, s2
                  andi         s2, gp, -692
                  or           a5, t4, a4
                  lbu          s5, 2(s1)
                  lb           s3, -2(s1)
                  sh           t0, 3(s1)
                  lui          a4, 155151
                  sub          s9, s2, tp
                  lbu          s11, 47(s1)
                  lbu          a3, -13(s1)
                  slti         a7, s3, 1773
                  sh           gp, -9(s1)
                  lhu          a4, 63(s1)
                  sb           a3, 12(s1)
                  lb           s5, -15(s1)
                  sltiu        t2, s4, 908
                  sll          t5, s1, s11
                  add          a4, s1, s1
                  xori         t1, s0, 330
                  add          a5, s0, t6
                  nop
                  lhu          t4, -13(s1)
                  lbu          t2, 57(s1)
                  sb           s6, -6(s1)
                  sub          s2, a7, t4
                  slti         s8, s9, -1671
                  sh           t3, -23(s1)
                  slli         gp, s11, 5
                  lh           t3, -9(s1)
                  sb           t4, 37(s1)
                  lbu          t2, -13(s1) #end riscv_load_store_rand_instr_stream_3
                  bgeu         t4, s4, 527f
                  bge          t5, t2, 525f
                  andi         t3, zero, -1796
                  bgeu         zero, gp, 533f
521:              beq          a2, s11, 538f
                  slli         a3, a0, 3
                  slli         t2, sp, 5
                  bgeu         a1, t6, 542f
525:              sltiu        a5, s7, 257
                  lui          a6, 921651
527:              slli         a4, s8, 14
                  slt          s11, t0, t5
                  sra          t6, a2, s8
                  slt          s6, t3, sp
                  srai         a7, s0, 11
                  xori         t4, s5, 189
533:              auipc        a4, 903511
                  blt          s6, s6, 554f
                  andi         t1, a6, -37
                  andi         s3, a3, 151
                  slt          s5, zero, t6
538:              bne          s1, a1, 554f
                  auipc        s1, 618557
                  bltu         t4, ra, 550f
                  slli         a1, s6, 18
542:              srai         a2, a6, 29
                  blt          s7, s9, 563f
                  bltu         s0, s5, 551f
                  add          t4, a5, s1
                  bge          s3, s4, 566f
                  slt          s8, t0, zero
                  lui          s9, 1001810
                  sll          t6, a5, zero
550:              sub          a2, t6, t5
551:              or           s8, s4, s0
                  addi         s5, t3, -1001
                  ori          t6, t6, -33
554:              addi         s9, a0, -304
                  lui          t3, 1022207
                  srai         a2, s1, 14
                  or           a4, s3, s4
                  sra          s2, s7, t3
                  bge          a6, t5, 570f
                  sltu         gp, s2, s9
                  and          s8, gp, t2
                  sltu         a4, t4, t2
563:              slti         ra, s5, -1768
                  auipc        s3, 518038
                  bgeu         t0, a6, 571f
566:              beq          s6, t2, 575f
                  bge          s10, s0, 574f
                  add          s10, t1, t6
                  slt          t2, a0, s2
570:              srli         s3, a0, 23
571:              sll          t0, a1, a3
                  slli         t1, a0, 17
                  addi         t0, t3, 1416
574:              bltu         t3, a7, 581f
575:              add          s5, t5, t1
                  nop
                  and          s0, t3, t1
                  xor          t2, zero, s5
                  and          a3, s5, t2
                  bgeu         t5, ra, 587f
581:              slti         a5, s10, -19
                  or           a4, t1, t5
                  sltu         s10, tp, s9
                  auipc        a1, 466577
                  auipc        s2, 8266
                  bgeu         s0, t0, 591f
587:              addi         a5, s0, -2032
                  sltiu        s10, t6, -830
                  andi         a6, t1, -1011
                  andi         s8, s2, -370
591:              slli         a2, a3, 17
                  srli         ra, s1, 28
                  srl          s9, a5, tp
                  addi         s9, t6, -1646
                  auipc        t3, 970764
                  sll          a4, sp, t3
                  slli         t0, a1, 24
                  sra          zero, sp, s4
                  auipc        zero, 659904
                  bgeu         ra, s8, 605f
                  and          ra, s0, a1
                  bgeu         s9, t2, 621f
                  slti         s9, ra, 360
                  xor          s6, t1, s10
605:              nop
                  or           zero, t5, a4
                  or           s6, gp, s7
                  srli         t6, gp, 1
                  sltiu        a7, s7, -96
                  sltu         s5, t5, s8
                  slt          t0, s4, s4
                  add          s11, s3, s11
                  nop
                  sll          s5, t2, ra
                  addi         ra, a2, -1416
                  bge          a4, s6, 617f
617:              srl          t0, a3, t6
                  andi         s3, a6, -839
                  sll          t2, t1, s6
                  xori         a3, t3, 622
621:              xor          s5, t0, s7
                  sltiu        s7, s9, 778
                  and          t3, a7, tp
                  nop
                  nop
                  xori         s7, tp, -341
                  bge          t1, a0, 636f
                  auipc        zero, 123365
                  bne          a7, t6, 646f
                  bgeu         s1, a0, 632f
                  slti         s1, zero, 1421
632:              bgeu         s9, s0, 640f
                  addi         t2, s5, -1662
                  addi         a7, t0, -1006
                  sra          ra, a5, a6
636:              slli         ra, gp, 30
                  bltu         s0, ra, 641f
                  sltiu        t2, a6, -1608
                  bne          s0, t2, 648f
640:              or           a7, zero, a0
641:              bltu         t6, a0, 651f
                  ori          s7, s6, 190
                  slt          s9, sp, a5
                  bge          s0, a0, 650f
                  bne          sp, s7, 654f
646:              and          t5, s6, zero
                  beq          a0, t2, 648f
648:              or           t5, t4, s6
                  andi         s1, a5, -155
650:              bgeu         s9, a5, 667f
651:              andi         s10, a5, -255
                  bne          a1, t2, 661f
                  or           s8, a3, a0
654:              slti         a5, s0, 1953
                  sltiu        a6, t2, 496
                  sltiu        t4, s4, 1123
                  slli         t5, s8, 12
                  bge          t5, a6, 660f
                  lui          a7, 740911
660:              bgeu         s8, zero, 680f
661:              sll          s0, ra, s3
                  andi         t0, a7, -40
                  sub          a2, a6, a7
                  xor          t6, s0, a4
                  sll          s11, a3, t0
                  bge          gp, s8, 677f
667:              sltiu        s6, ra, -848
                  nop
                  srl          a2, s7, s3
                  nop
                  sltu         a6, a2, s11
                  la           ra, region_1+576 #start riscv_load_store_rand_instr_stream_7
                  srai         t1, s9, 27
                  lb           t4, 486(ra)
                  sltu         s4, s3, s8
                  lh           a5, 1364(ra)
                  srl          a3, t3, a3
                  slti         s7, s1, 1911
                  srai         t3, a5, 24
                  or           a6, s8, ra
                  add          t5, t4, t1
                  auipc        s6, 931402
                  sltiu        s10, zero, -1024
                  and          s2, a1, s9
                  slli         t0, a4, 8
                  auipc        t3, 869865
                  lhu          s0, -110(ra)
                  lh           s11, 964(ra)
                  lb           s6, 1329(ra)
                  lh           t2, -454(ra)
                  or           zero, t4, a5
                  srl          s6, s8, s4
                  srai         t6, s10, 7
                  addi         t4, zero, -63
                  sltiu        s6, s8, 527
                  srai         s10, t0, 10
                  lbu          t4, 936(ra)
                  lui          a4, 493705
                  sb           t0, 1281(ra)
                  add          s10, s5, s2
                  sltiu        gp, s9, 104
                  sb           a0, -171(ra)
                  lhu          s5, -328(ra) #end riscv_load_store_rand_instr_stream_7
                  xori         s2, s8, -1226
                  sll          a1, s0, s4
                  xori         gp, s3, -716
                  bgeu         t0, t5, 685f
                  bgeu         t2, a7, 696f
677:              nop
                  srli         s3, t6, 9
                  srai         zero, tp, 20
680:              sll          a1, s11, s8
                  sra          s2, s8, a0
                  bgeu         gp, s4, 701f
                  srl          a4, a6, s11
                  nop
685:              or           s2, s8, ra
                  or           t6, s4, t0
                  beq          sp, zero, 704f
                  slti         s11, s1, 1032
                  sra          s9, a5, a5
                  bltu         s11, gp, 699f
                  srai         ra, s6, 10
                  xori         s8, a3, -503
                  sub          a5, t2, s1
                  bltu         t5, a0, 703f
                  bge          s0, t3, 715f
696:              sub          s0, s4, a7
                  slti         t2, t6, -426
                  sltu         s2, a0, a3
699:              addi         a3, s7, 1860
                  ori          s9, s11, -577
701:              xori         t6, a6, 1698
                  sll          s2, s9, t0
703:              nop
704:              bltu         sp, a0, 708f
                  bltu         a1, a1, 718f
                  sub          ra, gp, t3
                  lui          a2, 418804
708:              sltu         s2, a2, s1
                  addi         s6, t2, 291
                  blt          a6, s7, 717f
                  srl          s10, ra, t0
                  bgeu         zero, tp, 713f
713:              beq          s2, a7, 714f
714:              lui          a4, 353354
715:              sra          t2, s0, s9
                  slli         s10, s1, 2
717:              xor          t5, t3, a4
718:              srl          t6, sp, t5
                  or           s1, a3, a6
                  or           a2, zero, t0
                  add          a7, t5, s6
                  srl          s3, t6, zero
                  bltu         s7, a1, 728f
                  bgeu         s6, sp, 734f
                  add          t1, tp, s4
                  srli         s3, t3, 0
                  bgeu         s0, t0, 745f
728:              slt          zero, s5, s6
                  or           s0, t6, t2
                  sub          s11, t2, sp
                  lui          t6, 311679
                  sub          t1, sp, s1
                  beq          a7, a5, 740f
734:              slti         a1, gp, 1037
                  bltu         t4, t4, 742f
                  xori         s10, s0, 188
                  srli         t0, a1, 18
                  ori          s8, s3, 1429
                  sub          s3, s2, s8
740:              bge          a5, t1, 749f
                  or           a4, a5, s9
742:              lui          s5, 626512
                  slt          s1, s9, a7
                  add          s0, sp, t6
745:              nop
                  and          s7, a2, t0
                  or           s3, s10, zero
                  blt          s2, a6, 764f
749:              nop
                  and          s0, s7, s0
                  ori          t6, tp, -1624
                  beq          s11, zero, 757f
                  srl          s8, s0, a3
                  beq          t4, s8, 762f
                  sltiu        t6, a0, 830
                  slti         a1, s0, -714
757:              andi         a6, s11, 1838
                  sltu         a4, a2, gp
                  bgeu         t2, a0, 766f
                  xori         s5, a0, 612
                  blt          t5, t1, 767f
762:              lui          s4, 644331
                  xori         s8, s1, -1465
764:              slti         t0, s0, -1189
                  sra          s4, a0, a1
766:              sll          s2, tp, t0
767:              and          s7, a6, t3
                  add          zero, gp, s5
                  auipc        s10, 880806
                  bne          a5, a7, 777f
                  srai         a7, a3, 3
                  srli         t3, a2, 24
                  slt          a4, zero, s1
                  slt          t5, t3, s3
                  ori          s6, t6, 2033
                  andi         s4, a5, -1869
777:              slti         s4, s1, -880
                  andi         t1, s5, 1060
                  auipc        a4, 871201
                  bge          s1, s6, 786f
                  sltu         a6, s5, gp
                  sltiu        a5, t3, -222
                  sltiu        s9, t4, 1900
                  ori          a4, a6, 1981
                  srl          a5, t3, s1
786:              auipc        a6, 804389
                  nop
                  sll          s3, t2, a5
                  addi         s8, sp, 1672
                  xori         t1, tp, -1529
                  bltu         s1, t2, 799f
                  sltiu        t0, ra, -172
                  beq          s5, a7, 794f
794:              bne          s8, a7, 804f
                  xor          s4, zero, ra
                  blt          a6, a3, 813f
                  sltiu        t1, t1, -1540
                  xori         s3, a0, -1101
799:              lui          t1, 821872
                  sltu         a1, zero, a6
                  lui          t3, 984362
                  sltiu        a5, a7, -1585
                  sra          s2, s10, s5
804:              srli         s11, zero, 10
                  nop
                  xor          t0, gp, gp
                  addi         s4, s6, 776
                  slli         s9, t4, 22
                  srli         t5, t1, 25
                  srai         s11, a3, 15
                  lui          s0, 136788
                  slli         zero, s8, 14
813:              slli         s2, a3, 4
                  nop
                  slli         t2, sp, 24
                  nop
                  srli         a5, t4, 17
                  bge          s6, tp, 828f
                  srl          gp, t0, sp
                  slt          zero, a4, a6
                  xor          a2, t0, t0
                  blt          gp, s10, 831f
                  sltiu        t4, a7, -13
                  srai         a2, s9, 19
                  auipc        s4, 594759
                  or           a4, a0, a4
                  xori         a1, a2, 1261
828:              slti         a5, a5, -285
                  or           s6, a7, ra
                  bltu         t5, a3, 846f
831:              lui          t6, 314032
                  add          s6, s5, a1
                  sltu         a7, s11, t0
                  slt          zero, t2, a3
                  bge          sp, s4, 855f
                  srli         a5, t3, 19
                  srai         s6, t5, 16
                  slti         s3, a3, 429
                  bne          a0, a4, 846f
                  srai         t5, s9, 8
                  slt          t1, a2, t0
                  andi         t4, s5, -1787
                  bge          t5, s8, 850f
                  bne          t0, a1, 848f
                  lui          s0, 82585
846:              auipc        t2, 193481
                  sltu         t3, a0, s8
848:              sltiu        s0, s10, 620
                  beq          a5, s9, 867f
850:              srl          t2, a6, s8
                  addi         s3, zero, 1259
                  beq          a5, s5, 861f
                  sltu         s0, sp, s6
                  blt          ra, s0, 859f
855:              srl          s3, a5, t5
                  and          t3, a4, a4
                  sub          s6, s0, s5
                  srl          zero, s1, a0
859:              ori          t2, s5, 843
                  auipc        s0, 521263
861:              blt          s5, a3, 881f
                  bge          sp, t4, 868f
                  auipc        s6, 111420
                  slt          a6, a5, tp
                  bne          t0, sp, 867f
                  sub          t6, t5, t4
867:              lui          s1, 1048493
868:              xor          s1, a2, s2
                  and          s8, sp, ra
                  slt          s8, s2, a1
                  addi         a1, ra, 1509
                  lui          a6, 964898
                  and          t4, a2, s5
                  srli         t2, s4, 28
                  ori          a6, t3, -816
                  sub          s11, a7, ra
                  ori          s0, s10, -1659
                  auipc        s6, 291807
                  blt          a1, t6, 886f
                  bgeu         s5, a2, 887f
881:              bge          t2, a5, 888f
                  andi         s11, a7, -1191
                  sub          t6, s5, s9
                  sub          t4, sp, s5
                  or           zero, t6, s9
886:              addi         s5, s1, -974
887:              sub          a2, s0, a1
888:              xori         a3, sp, -1388
                  slli         a4, sp, 6
                  bne          a1, s11, 896f
                  ori          s0, a3, -66
                  srl          s0, a1, ra
                  srl          s6, s6, a6
                  sub          a4, s0, a3
                  slti         t0, a2, 619
896:              sra          s2, s8, s6
                  or           t6, t3, a6
                  bgeu         s2, gp, 899f
899:              sub          s0, ra, t6
                  srli         s6, a6, 16
                  ori          t6, a0, 564
                  slti         s2, s10, -615
                  srl          a6, s10, t4
                  ori          t2, s5, 1658
                  auipc        s5, 735737
                  slli         t2, a6, 17
                  srl          t2, t6, s3
                  sra          t3, s3, t1
                  ori          t3, gp, -1941
                  andi         a7, s8, 822
                  andi         t6, t5, 1859
                  sltiu        t1, a0, 1681
                  bgeu         t3, t6, 932f
                  srli         s0, s11, 31
                  xor          a5, a1, t0
                  srl          a4, s8, t3
                  lui          ra, 572029
                  srli         s6, a5, 14
                  or           zero, sp, s0
                  beq          a4, zero, 925f
                  ori          t1, t3, 728
                  bne          t0, t4, 935f
                  xor          s1, s4, tp
                  slti         s10, s2, 1090
925:              srl          gp, s10, t1
                  xor          s11, s8, s1
                  srl          s6, tp, s7
                  slti         t3, a5, -1720
                  nop
                  bltu         t6, s3, 939f
                  srli         s5, t5, 13
932:              srai         t4, s6, 10
                  add          s2, s11, a6
                  bgeu         a5, s4, 943f
935:              sra          s0, s9, t1
                  beq          t0, tp, 956f
                  srli         t0, t2, 23
                  bltu         s5, s9, 949f
939:              blt          a0, a7, 956f
                  srai         a2, t5, 20
                  and          s10, t6, s4
                  add          s7, ra, s10
943:              xori         s4, t0, -898
                  nop
                  and          s2, zero, s9
                  srai         a3, s2, 19
                  addi         s8, a4, -713
                  bltu         tp, s7, 958f
949:              lui          a4, 209083
                  ori          a1, s7, 1980
                  addi         a4, a4, 1841
                  sub          s5, t5, gp
                  bne          s5, zero, 960f
                  or           t4, a7, t6
                  bgeu         a7, t1, 964f
956:              bge          t5, ra, 976f
                  sltiu        s5, a3, -1875
958:              add          a1, t3, s4
                  add          t5, s9, s10
960:              nop
                  sra          s8, a6, t2
                  or           t2, t3, s0
                  and          t0, t2, t3
964:              sll          a7, t6, t3
                  bge          a0, sp, 981f
                  sra          a1, a2, t3
                  bge          a1, ra, 972f
                  sltu         t6, a4, s4
                  sra          a7, t2, t4
                  srli         a5, s11, 3
                  or           a2, s4, a0
972:              bgeu         t0, t0, 983f
                  auipc        a3, 398003
                  slli         s0, s0, 9
                  andi         a5, s9, -466
976:              addi         a4, t0, 1760
                  sltiu        a4, s8, -685
                  sub          s2, s1, s10
                  or           a7, t0, s9
                  addi         a2, t6, -1515
981:              blt          t3, s7, 982f
982:              slt          zero, s6, s0
983:              xor          s3, a4, t1
                  slt          t1, t5, t0
                  srai         s0, tp, 7
                  la           a1, region_1+1580 #start riscv_load_store_rand_instr_stream_4
                  srai         a5, a0, 15
                  slti         s7, a5, 211
                  xor          a4, a6, s8
                  add          a4, a2, gp
                  xor          s1, s4, s10
                  lhu          s4, 8(a1)
                  slli         a2, t5, 13
                  lb           s11, 5(a1)
                  sltu         s0, ra, sp
                  sb           s8, -6(a1)
                  lbu          zero, -9(a1)
                  lbu          t1, -1(a1)
                  sub          t0, t0, s7
                  lb           a4, -13(a1)
                  andi         t4, s4, -1948
                  lb           a5, 3(a1)
                  nop
                  addi         s7, t2, -1665
                  ori          a6, s4, -590
                  lbu          a2, 3(a1)
                  or           t4, t5, s6
                  add          t4, s8, t5
                  srli         a4, s4, 3
                  sltu         s10, gp, a6
                  sw           a7, 4(a1)
                  add          a3, t6, gp
                  lbu          s6, 9(a1)
                  sh           gp, -10(a1)
                  and          a3, a4, s2
                  addi         s10, a3, 1464
                  xor          s5, s7, tp
                  slli         zero, s7, 29
                  add          gp, s3, s7
                  lui          s9, 146441
                  lbu          s11, -6(a1)
                  slt          a4, t6, t2
                  slt          s11, a4, a4
                  sra          t0, gp, s7
                  sb           t6, 7(a1) #end riscv_load_store_rand_instr_stream_4
                  andi         zero, t1, 427
                  slt          s10, a3, s8
                  slt          t6, s1, s8
                  and          ra, t0, gp
                  add          s2, s3, s3
                  sltiu        t5, s0, 1353
                  addi         ra, a1, -634
                  bltu         t5, t3, 995f
                  or           s3, t5, a1
995:              sll          t1, s10, t3
                  addi         a3, s3, -1659
                  bltu         zero, t3, 1007f
                  xor          gp, s9, t4
                  sub          zero, a0, s11
                  addi         a2, t0, 1391
                  sll          t3, s5, a2
                  slti         t5, zero, 1822
                  beq          gp, t1, 1009f
                  blt          s2, s0, 1011f
                  lui          s7, 192369
                  sll          a2, a2, ra
1007:             auipc        s2, 408819
                  srl          t4, a1, a7
1009:             slt          a3, a4, s8
                  slt          t5, tp, s3
1011:             bge          s2, s3, 1018f
                  bgeu         s7, s6, 1021f
                  sub          gp, s0, t0
                  slti         s7, ra, 1766
                  sra          t1, a4, s8
                  xori         t4, zero, -1000
                  nop
1018:             sub          a6, a7, s0
                  slli         s2, a0, 23
                  srli         s3, s9, 20
1021:             nop
                  beq          tp, a3, 1026f
                  srl          t3, s7, t0
                  auipc        t0, 195427
                  sub          s6, t2, t1
1026:             bltu         s6, s0, 1046f
                  sltu         s8, a4, a7
                  blt          t2, a5, 1033f
                  lui          s11, 502297
                  sub          a1, t0, a7
                  lui          s7, 181211
                  bgeu         s6, a5, 1039f
1033:             slti         a6, zero, -421
                  sll          ra, s10, s1
                  nop
                  sub          s7, a1, s3
                  auipc        a4, 642121
                  slt          t1, t5, t4
1039:             slti         s8, s7, -41
                  srl          a2, s0, a3
                  slli         s4, tp, 13
                  ori          t2, s6, 846
                  and          s8, s11, s8
                  bge          a0, gp, 1053f
                  bgeu         tp, t6, 1046f
1046:             bgeu         s3, s11, 1063f
                  srl          s4, s8, s0
                  slli         t1, s5, 5
                  sub          t3, ra, s8
                  xori         a5, a5, -1402
                  slli         a6, tp, 21
                  sra          s8, a2, s11
1053:             or           t6, zero, t6
                  auipc        t2, 899250
                  bne          tp, t0, 1062f
                  sub          a3, s7, a0
                  srai         s5, t6, 8
                  srl          t6, a3, a1
                  addi         t2, s2, 587
                  xori         s10, t1, 269
                  slti         a2, s3, -641
1062:             srl          a1, s3, ra
1063:             lui          a3, 283264
                  srai         t1, s8, 30
                  slti         s9, t5, -525
                  bge          t6, s6, 1079f
                  ori          s4, s10, 1040
                  or           s8, s0, a6
                  sltiu        s5, ra, -991
                  bltu         s3, s3, 1089f
                  srai         a6, t2, 13
                  blt          s5, s1, 1089f
                  ori          t0, s3, 1817
                  slt          a4, s5, zero
                  srl          s6, s1, s5
                  beq          t4, s6, 1082f
                  blt          zero, a2, 1097f
                  sll          ra, sp, t2
1079:             srli         a3, gp, 17
                  xor          s7, s9, s1
                  beq          s9, zero, 1099f
1082:             add          s1, s11, a0
                  addi         a1, a2, 678
                  addi         s1, a6, -843
                  slti         s2, a0, -147
                  bge          ra, a4, 1094f
                  bltu         a4, a4, 1096f
                  blt          s9, tp, 1098f
1089:             blt          s3, s4, 1106f
                  ori          t5, s3, -526
                  sra          s6, zero, a6
                  sltu         a6, t3, s0
                  addi         a1, a6, 1555
1094:             or           s2, ra, sp
                  bge          ra, s1, 1111f
1096:             lui          s10, 282317
1097:             auipc        zero, 758877
1098:             xori         s8, s8, -1561
1099:             addi         t4, s4, 1090
                  ori          s10, s3, 1293
                  nop
                  auipc        s5, 647473
                  or           s9, s10, s0
                  sltu         t2, a0, a4
                  bgeu         s11, a2, 1109f
1106:             bge          a2, a2, 1111f
                  and          s7, zero, t2
                  auipc        a2, 549897
1109:             bge          s6, sp, 1110f
1110:             sll          s11, s2, a3
1111:             bltu         s2, a6, 1128f
                  slti         a2, s1, 880
                  bge          t1, gp, 1120f
                  nop
                  nop
                  slli         a6, ra, 29
                  bltu         s7, t1, 1123f
                  xor          a1, a2, s3
                  and          zero, s9, t0
1120:             xor          s8, s1, a7
                  and          s4, s1, t5
                  sra          t1, t4, s11
1123:             bge          s10, s10, 1124f
1124:             sub          a6, s11, t2
                  sub          t6, t1, t5
                  bne          a2, t6, 1135f
                  xor          s6, s2, s10
1128:             and          a6, t5, a1
                  srli         s10, s5, 0
                  sll          s11, t1, a0
                  bgeu         gp, gp, 1140f
                  sltu         s8, a7, s1
                  sltu         a6, s0, gp
                  slt          s11, t1, t0
1135:             sra          s1, ra, gp
                  xori         a4, t0, -1321
                  sll          a6, s3, s11
                  auipc        s10, 136105
                  nop
1140:             xori         t3, s4, 1442
                  xor          s1, t2, s1
                  sub          ra, a1, s8
                  or           s11, gp, a6
                  beq          s6, a5, 1151f
                  sub          a7, s3, a3
                  xor          s0, sp, s4
                  lui          ra, 886327
                  bltu         s4, t0, 1157f
                  sltiu        s1, s8, -201
                  auipc        a6, 888374
1151:             sll          a6, s11, s5
                  ori          a1, t2, -1425
                  and          a4, s3, s8
                  bge          t3, s10, 1174f
                  sltu         t4, t1, a3
                  slt          t4, s0, a5
1157:             auipc        s6, 841350
                  bltu         s10, s1, 1165f
                  andi         t6, s8, -564
                  bge          a7, t6, 1167f
                  slli         a5, t2, 10
                  sltu         s7, a1, s4
                  srai         s2, s5, 7
                  or           a3, a6, s7
1165:             ori          a7, s4, 1559
                  slt          t6, s8, a0
1167:             bltu         t5, t5, 1180f
                  srli         a7, s1, 13
                  slli         s2, s4, 12
                  slt          a4, tp, a4
                  lui          a7, 781137
                  andi         t2, s1, 1201
                  andi         ra, s7, -134
1174:             and          t0, s8, t6
                  nop
                  bne          s10, a6, 1178f
                  bge          a5, t6, 1197f
1178:             beq          s4, ra, 1186f
                  sltu         a6, a7, t3
1180:             slt          t1, tp, s1
                  bltu         zero, a2, 1187f
                  slt          s10, a7, a7
                  slli         s8, sp, 4
                  bge          s10, s11, 1202f
                  bltu         s5, s1, 1196f
1186:             sub          a2, s10, t2
1187:             sra          s6, a7, a4
                  xor          s0, t3, t6
                  nop
                  srai         s7, t3, 20
                  sll          s1, a0, a2
                  srl          s7, sp, t5
                  sltiu        a7, sp, -401
                  nop
                  add          zero, t5, a2
1196:             srai         s5, s11, 8
1197:             sra          a6, a3, s4
                  slli         t0, s6, 4
                  bgeu         sp, s3, 1209f
                  bltu         t5, s10, 1209f
                  and          t4, s5, s0
1202:             srli         s10, a2, 29
                  srai         s8, ra, 14
                  sll          a7, a2, s9
                  andi         ra, s4, 289
                  xor          s0, a7, s3
                  addi         s9, t0, 1170
                  bgeu         a5, a2, 1215f
1209:             slti         s11, t2, -1165
                  and          t4, a4, t1
                  sltu         s6, s1, a0
                  beq          s11, a6, 1231f
                  or           a4, s1, t4
                  sltu         t6, s7, s1
1215:             slli         s4, a6, 15
                  slt          a3, a5, s8
                  xori         a2, s9, 1917
                  srai         a2, sp, 18
                  sltiu        a4, s9, 1106
                  srai         a2, t2, 26
                  andi         gp, sp, -814
                  bge          a5, zero, 1227f
                  blt          a7, a6, 1243f
                  bgeu         s6, gp, 1229f
                  auipc        s6, 697795
                  srli         t6, s1, 6
1227:             slti         a6, zero, 1804
                  ori          gp, a1, -1265
1229:             nop
                  xori         a3, s3, 1602
1231:             bge          zero, t1, 1238f
                  ori          ra, t5, 1610
                  add          s1, a0, s2
                  andi         a4, t3, 790
                  or           s6, t6, t2
                  srl          t2, t5, sp
                  bltu         s5, s2, 1238f
1238:             bltu         s7, s2, 1244f
                  ori          s5, s5, 1077
                  slti         s4, s2, -1902
                  srli         gp, a2, 6
                  sra          t4, s2, s6
1243:             bltu         s0, a1, 1253f
1244:             xor          a1, s2, tp
                  srli         t3, s11, 0
                  slt          s9, zero, a3
                  nop
                  beq          a6, a7, 1261f
                  srl          a2, s11, ra
                  slt          s7, t1, zero
                  beq          s9, s3, 1258f
                  srli         s8, s10, 4
1253:             sub          ra, a4, s2
                  or           a1, t0, s2
                  beq          a2, sp, 1271f
                  andi         t5, s7, -1963
                  sll          s1, s10, t3
1258:             sltu         a4, a3, a2
                  xori         ra, sp, -1840
                  srai         a3, ra, 30
1261:             sll          s2, t6, s7
                  bgeu         t4, s10, 1273f
                  sltu         a3, s6, a1
                  srl          t6, gp, s10
                  bne          s0, s3, 1266f
1266:             slli         a2, a4, 14
                  xor          a5, s4, a1
                  nop
                  slti         s2, s6, -862
                  add          t4, zero, tp
1271:             blt          t1, a2, 1288f
                  or           s8, s7, t1
1273:             sltu         t1, a1, a7
                  slti         s5, s8, -1829
                  nop
                  or           s3, s0, s2
                  bge          s4, s2, 1284f
                  xori         ra, s10, -1712
                  xori         t4, s1, 1664
                  blt          a1, a5, 1289f
                  srl          t3, t6, a5
                  sltu         a4, a7, s10
                  nop
1284:             add          a2, t1, a6
                  and          t4, s2, s0
                  slt          s10, a2, a1
                  auipc        s5, 786055
1288:             add          s4, s3, tp
1289:             add          t4, a2, s4
                  and          a7, t4, s11
                  auipc        t5, 575150
                  nop
                  bltu         s7, s6, 1312f
                  bgeu         a0, s7, 1299f
                  blt          t0, gp, 1305f
                  or           s6, a3, s5
                  addi         a2, s6, -537
                  sltiu        t6, t0, 1629
1299:             sltiu        t3, t3, 765
                  or           t3, s6, s1
                  xor          a2, a5, zero
                  sltiu        t0, s0, 635
                  sra          t3, s1, s4
                  srl          s9, s10, s10
1305:             slli         gp, s1, 10
                  srl          a4, a1, s5
                  bgeu         s4, t3, 1327f
                  bne          s7, s7, 1314f
                  bgeu         s1, t5, 1316f
                  andi         a5, a0, -2022
                  sltu         t1, s10, t6
1312:             add          ra, s4, s8
                  addi         t5, ra, 1764
1314:             slt          s2, t2, s2
                  bltu         s7, t3, 1335f
1316:             sra          gp, t2, t6
                  blt          sp, s9, 1326f
                  la           s7, region_0+1633 #start riscv_load_store_rand_instr_stream_12
                  lh           a5, 29(s7)
                  lb           t1, -284(s7)
                  sltiu        a6, s0, -1551
                  lh           gp, -1075(s7)
                  andi         s4, s6, -1558
                  sb           t4, -1066(s7)
                  lb           t0, -1480(s7)
                  sb           a6, -34(s7)
                  sub          a6, s6, t0
                  lb           a1, -555(s7)
                  sb           s9, -1511(s7)
                  lb           s11, -1579(s7)
                  sll          t2, s3, ra
                  sltiu        s0, t2, 1875
                  sh           s9, -225(s7)
                  lbu          a5, 168(s7)
                  lui          s4, 587169
                  lbu          t5, -1228(s7)
                  lb           s6, -654(s7)
                  andi         gp, a7, -533
                  lb           s8, -1524(s7)
                  add          zero, s11, s4
                  lbu          s2, -540(s7)
                  slti         t5, a3, -1451
                  slt          s2, s5, sp
                  lh           s6, -991(s7)
                  or           s3, sp, s10
                  lb           zero, 340(s7)
                  lbu          a7, 154(s7)
                  lb           a1, -1472(s7)
                  slt          s10, s6, zero
                  xori         gp, s4, -384
                  lb           gp, -1208(s7)
                  sw           t0, -925(s7)
                  lbu          t0, -859(s7)
                  slli         s8, t0, 13
                  lbu          s2, -988(s7)
                  sub          t5, s6, t0
                  xori         t4, s5, -1559
                  lbu          ra, 302(s7)
                  addi         s5, t4, -1214
                  lbu          t0, -946(s7)
                  lb           a2, -1029(s7) #end riscv_load_store_rand_instr_stream_12
                  and          t1, s8, gp
                  addi         ra, s0, 1703
                  xori         zero, s6, 1500
                  bge          a1, a3, 1341f
                  sltiu        s5, gp, -996
                  slt          t1, sp, t2
                  or           s5, a0, a4
                  add          s3, tp, t4
1326:             ori          s3, t5, 1879
1327:             sll          t4, a4, gp
                  xori         t1, a5, 1255
                  slt          a4, t6, s2
                  xor          a4, a1, t1
                  addi         a3, a6, -1319
                  addi         s3, gp, -22
                  bge          s6, ra, 1342f
                  slti         ra, a4, 1659
1335:             srai         a2, t5, 7
                  add          s7, a5, tp
                  bltu         t0, tp, 1341f
                  srl          s7, s4, a4
                  lui          ra, 690577
                  srli         t3, a4, 19
1341:             sltiu        a4, s7, 479
1342:             nop
                  xori         s4, tp, -2014
                  srli         s9, tp, 31
                  srli         t6, s1, 8
                  and          a6, s9, gp
                  srai         a2, t0, 13
                  srai         t5, tp, 7
                  ori          s8, a4, -52
                  xor          zero, ra, t1
                  auipc        t3, 992770
                  blt          t3, a2, 1359f
                  slt          s5, ra, a3
                  add          t3, gp, gp
                  blt          s4, s2, 1363f
                  andi         t5, t5, -526
                  xor          s6, t2, s8
                  sltu         s10, s0, sp
1359:             xor          s2, t5, sp
                  slt          a6, t2, zero
                  or           a7, s0, a1
                  and          zero, s9, a1
1363:             nop
                  sltu         t1, s3, t3
                  slli         s7, a1, 29
                  slli         s3, a0, 28
                  slt          a6, sp, sp
                  bne          t0, a4, 1386f
                  slli         a7, a3, 11
                  lui          t3, 158058
                  xor          a2, a4, a5
                  xor          zero, tp, t0
                  srl          a7, ra, a3
                  ori          a6, t0, 127
                  sub          s6, t4, t6
                  srai         t6, t1, 24
                  slti         ra, s2, -1710
                  sra          a7, a4, s10
                  bne          t4, s11, 1388f
                  auipc        t0, 684890
                  slt          t3, s1, s11
                  bltu         a7, t1, 1384f
                  sub          t6, s10, s0
1384:             or           s4, tp, a4
                  sub          s4, a6, gp
1386:             beq          a1, t4, 1403f
                  sltu         t0, s1, s10
1388:             andi         gp, t2, -1998
                  ori          t2, s5, 1441
                  auipc        t0, 939947
                  sub          t5, t5, s3
                  xori         t0, t6, 1280
                  slti         t0, s0, -1208
                  bgeu         t6, s9, 1404f
                  or           t2, a6, s0
                  srl          a2, a1, s4
                  sub          s4, tp, tp
                  xor          ra, s10, s6
                  auipc        ra, 642792
                  addi         t3, s3, 1162
                  sra          a3, a1, a0
                  bltu         s6, gp, 1413f
1403:             bge          s3, s6, 1409f
1404:             auipc        a3, 349165
                  and          t6, sp, sp
                  ori          s2, a2, 1504
                  sltiu        a2, a4, 250
                  ori          zero, sp, -1047
1409:             xor          s3, a7, t6
                  nop
                  slti         a3, s4, -1585
                  srai         a5, s2, 19
1413:             sra          gp, a6, a5
                  ori          s2, a3, -459
                  xori         gp, t5, -949
                  sra          s11, t2, a3
                  sltu         s10, a4, a4
                  sub          t3, s6, t3
                  srli         a4, a1, 8
                  xor          t4, s0, gp
                  sltu         s7, tp, ra
                  bgeu         a6, s9, 1429f
                  slt          s3, s6, s10
                  ori          s8, s4, -1042
                  bltu         a3, gp, 1430f
                  slli         s7, sp, 23
                  blt          t4, s8, 1431f
                  and          a3, t3, a3
1429:             blt          sp, s3, 1445f
1430:             ori          s2, a6, -50
1431:             or           s4, t3, s1
                  sltu         zero, s2, a5
                  andi         zero, s0, -1714
                  srl          s0, t6, s5
                  and          s1, sp, sp
                  xori         t0, t3, 36
                  nop
                  bgeu         gp, t0, 1451f
                  blt          t5, s7, 1448f
                  srai         s6, s5, 18
                  sub          t2, tp, a3
                  sll          t4, a4, gp
                  bgeu         s5, a4, 1462f
                  bge          a2, s2, 1453f
1445:             addi         s3, tp, 1300
                  ori          t6, a2, 1365
                  sra          s4, sp, a0
1448:             bge          s11, t4, 1455f
                  sltiu        a5, t6, -1385
                  auipc        s6, 885913
1451:             bne          s8, a7, 1469f
                  add          s8, zero, a3
1453:             xor          t0, t3, a5
                  nop
1455:             xor          s7, s6, gp
                  or           a7, t1, sp
                  addi         a4, s9, 1893
                  addi         s8, a3, 1080
                  bgeu         s5, s4, 1460f
1460:             beq          s5, t6, 1467f
                  bgeu         s8, t5, 1467f
1462:             slt          t4, s8, t6
                  slti         a2, t2, 346
                  bge          s9, ra, 1474f
                  blt          ra, a6, 1466f
1466:             sltiu        t0, a2, -259
1467:             beq          tp, s10, 1472f
                  ori          t4, a7, -631
1469:             sub          t5, a1, a4
                  srli         a7, t6, 6
                  sltu         t1, a3, s10
1472:             and          t2, a2, s8
                  add          t4, a0, s10
1474:             sra          a7, s0, s5
                  lui          s6, 275878
                  slti         zero, t0, -1355
                  sltiu        a2, a0, 41
                  sltiu        t2, s5, 195
                  sra          gp, s9, ra
                  blt          s2, t4, 1482f
                  bltu         s5, t5, 1489f
1482:             srli         s1, t4, 14
                  bgeu         s3, a2, 1490f
                  sra          ra, t5, s2
                  srl          a1, s8, s8
                  addi         s4, t3, 1028
                  srai         s3, sp, 24
                  bge          a4, a5, 1505f
1489:             bltu         s11, a5, 1509f
1490:             auipc        s6, 233599
                  addi         a3, t6, 1202
                  slli         t4, s6, 2
                  sltiu        a3, t6, -497
                  blt          s4, t4, 1503f
                  sll          s6, s2, t2
                  lui          t6, 91585
                  auipc        zero, 112331
                  slti         a6, s5, 933
                  xori         t3, a5, 1451
                  sub          t2, t4, t5
                  auipc        a3, 591822
                  blt          t3, s9, 1511f
1503:             addi         t5, sp, -1191
                  and          t4, s0, gp
1505:             bge          t3, t2, 1512f
                  sub          s1, t6, s10
                  srl          a2, s1, a5
                  sra          s5, s10, t5
1509:             srai         t5, a0, 12
                  auipc        s2, 924371
1511:             xor          s5, a2, gp
1512:             lui          a4, 856971
                  xor          t3, t2, s4
                  bne          s11, t3, 1531f
                  sltu         a7, ra, a0
                  ori          s2, a3, 700
                  addi         zero, s5, -1820
                  srai         a5, t5, 5
                  nop
                  nop
                  or           s0, s6, s9
                  sll          s8, s7, s7
                  srl          t6, t1, t3
                  xor          gp, s7, zero
                  bltu         t3, a3, 1545f
                  srai         t2, sp, 20
                  xori         a5, s10, 1086
                  nop
                  sltiu        t6, a2, -1933
                  auipc        s5, 666481
1531:             bne          a2, tp, 1551f
                  bne          s8, t5, 1551f
                  sltiu        s7, zero, -1028
                  slli         ra, s5, 20
                  ori          s9, sp, -1246
                  lui          a4, 319433
                  beq          t0, t1, 1547f
                  ori          s7, t6, -536
                  auipc        a5, 595898
                  or           gp, t0, s1
                  sltu         s4, a5, s9
                  andi         t3, s7, 1324
                  bgeu         tp, s0, 1549f
                  add          t5, t2, s0
1545:             xori         a1, t2, -1142
                  bne          a7, a4, 1562f
1547:             sra          s3, s7, s5
                  slli         t1, a5, 29
1549:             slti         a2, s0, 1506
                  beq          sp, t5, 1551f
1551:             bgeu         t0, tp, 1557f
                  srl          a3, t5, ra
                  bltu         ra, a0, 1570f
                  nop
                  slli         s10, s9, 1
                  auipc        s10, 196459
1557:             or           s4, a5, a1
                  sltiu        t0, t4, 890
                  xor          s8, t4, zero
                  auipc        a6, 1033529
                  srli         a4, a1, 18
1562:             slli         s7, tp, 7
                  blt          a0, t4, 1571f
                  srli         s4, a0, 0
                  sltiu        a2, gp, 727
                  addi         s6, s0, 563
                  sltiu        ra, ra, 1416
                  ori          t1, t0, 353
                  and          s8, a5, s0
1570:             srli         s9, a1, 14
1571:             slt          a2, s10, a3
                  auipc        s6, 613082
                  lui          a6, 441006
                  bltu         a4, s6, 1583f
                  srai         t2, s1, 7
                  xor          s8, s7, t4
                  bgeu         a0, ra, 1581f
                  xori         a7, a1, 89
                  sub          a7, s6, s9
                  nop
1581:             sra          s2, a7, t4
                  srl          s3, a6, t4
1583:             bne          zero, s1, 1592f
                  srai         s0, a7, 21
                  or           t1, a0, t6
                  srai         t2, a4, 4
                  lui          s1, 1030079
                  or           s5, gp, t2
                  ori          s2, t4, 80
                  andi         s2, s9, 1342
                  sll          ra, a1, a1
1592:             addi         a1, s8, -1831
                  and          t3, s11, a1
                  or           s5, a5, s2
                  slli         s10, tp, 13
                  bgeu         a4, s10, 1609f
                  sll          s0, a6, t5
                  nop
                  or           t1, t3, s7
                  slt          gp, t2, a4
                  andi         zero, a6, -1432
                  srli         t4, t3, 27
                  xor          a5, s1, ra
                  auipc        zero, 166361
                  blt          ra, a0, 1614f
                  srli         a7, t6, 10
                  bne          a3, s1, 1627f
                  bltu         s6, a0, 1610f
1609:             slli         s10, t3, 15
1610:             or           a1, tp, s9
                  srli         s4, s7, 24
                  or           gp, a2, s0
                  and          s2, s0, a5
1614:             srli         s1, a1, 0
                  sra          s8, t3, zero
                  srai         ra, a5, 0
                  addi         s8, s7, 359
                  bgeu         t3, s0, 1635f
                  bltu         a3, a1, 1624f
                  auipc        s6, 560281
                  bgeu         a3, a0, 1631f
                  xori         a2, s8, 1176
                  andi         gp, s8, -153
1624:             srli         gp, s2, 25
                  sltu         t5, t0, s6
                  bltu         a5, gp, 1631f
1627:             addi         a6, s7, -235
                  sll          s0, s5, t4
                  beq          s11, s0, 1630f
1630:             xor          s8, s0, tp
1631:             bne          s5, t0, 1651f
                  auipc        s11, 481859
                  bltu         s9, t3, 1644f
                  beq          s4, s0, 1641f
1635:             nop
                  bge          s9, s5, 1643f
                  lui          t4, 467713
                  or           a4, zero, sp
                  nop
                  bltu         t1, s2, 1649f
1641:             sll          s7, s6, s11
                  add          a4, s10, a1
1643:             slli         s0, s6, 30
1644:             slli         s9, t1, 29
                  nop
                  addi         s0, t2, 1465
                  sra          s9, s10, s8
                  ori          t0, s5, -1094
1649:             slt          gp, a1, a3
                  srai         t5, a7, 15
1651:             sub          zero, s3, sp
                  bne          s6, s4, 1659f
                  slti         zero, t6, 1389
                  blt          s8, a4, 1661f
                  srai         zero, s7, 0
                  slli         t3, a3, 17
                  beq          t2, s11, 1664f
                  ori          t3, a1, 125
1659:             srli         s7, a4, 1
                  andi         zero, s9, -356
1661:             srl          a2, s1, a1
                  nop
                  add          a5, a4, s11
1664:             srai         a6, a2, 19
                  bge          a6, s6, 1683f
                  andi         a2, a5, -24
                  beq          s4, a6, 1687f
                  srl          a1, s8, s6
                  bltu         t5, a2, 1676f
                  slti         s6, s1, 426
                  add          a3, s10, s7
                  sltu         s10, s4, s3
                  slt          t4, a6, t6
                  sltiu        a1, a4, -1439
                  srai         a2, s10, 26
1676:             slti         t3, s1, -1130
                  blt          s9, sp, 1683f
                  bgeu         s7, tp, 1691f
                  slt          s8, t5, gp
                  add          t3, s6, t3
                  srl          s7, t2, a7
                  xor          t4, a4, a1
1683:             sra          s2, t2, a7
                  bge          s3, sp, 1701f
                  bne          tp, s8, 1694f
                  blt          s4, a3, 1693f
1687:             slt          s5, a0, t2
                  sub          s7, t3, gp
                  lui          t1, 434831
                  sltu         s2, s2, t6
1691:             nop
                  ori          a5, a7, -1593
1693:             slti         a1, a1, -1863
1694:             sltu         s10, gp, t4
                  sltu         a7, s2, s0
                  sra          s5, sp, a1
                  nop
                  addi         t6, s4, -639
                  sub          s3, t1, a1
                  beq          t0, s8, 1710f
1701:             add          s11, s4, s11
                  addi         s4, a7, 1518
                  andi         s3, t3, -1578
                  auipc        a5, 474152
                  bne          a5, s8, 1723f
                  slt          s0, s8, s0
                  slti         a1, s2, 139
                  sll          zero, a6, a4
                  slti         a7, tp, -281
1710:             andi         t0, a3, 1858
                  bge          s8, a5, 1731f
                  blt          s3, t1, 1718f
                  bge          a4, t3, 1714f
1714:             sra          s10, s3, a6
                  srai         s4, t1, 4
                  srli         t3, a2, 11
                  xor          s4, s4, ra
1718:             andi         a6, t3, 1233
                  ori          s11, t4, -179
                  and          s4, a5, s9
                  bgeu         s6, s0, 1729f
                  la           a6, region_1+1602 #start riscv_load_store_rand_instr_stream_15
                  sra          ra, ra, t3
                  srli         t3, s11, 27
                  sb           a7, 44(a6)
                  srli         a5, s4, 26
                  lbu          s3, 29(a6)
                  lbu          gp, 59(a6)
                  sb           a2, -15(a6)
                  lbu          a2, -30(a6)
                  lb           t4, 56(a6)
                  sh           s4, -28(a6)
                  slti         t3, s10, 1823
                  andi         s5, a7, 872
                  lbu          s10, -9(a6)
                  sb           t4, -42(a6)
                  sb           t2, 35(a6)
                  lhu          s9, 32(a6)
                  sltiu        ra, s0, 329
                  nop
                  add          s8, a3, s2
                  add          t1, s0, s10
                  lw           ra, -38(a6)
                  ori          s2, a7, 1976
                  lb           t4, -47(a6)
                  srl          s0, s7, t3
                  slti         t5, t1, 617
                  lb           s11, -64(a6)
                  sltiu        t1, t4, 1960
                  lbu          s10, 51(a6) #end riscv_load_store_rand_instr_stream_15
                  sra          t4, t2, s11
1723:             andi         t3, s3, 1966
                  lui          t1, 737458
                  sltu         s6, a5, gp
                  bge          s1, s9, 1730f
                  ori          t0, tp, 119
                  blt          s8, s8, 1735f
1729:             blt          s2, s7, 1738f
1730:             blt          s4, a2, 1750f
1731:             sltiu        s5, gp, -30
                  slt          t0, a1, s6
                  auipc        t6, 171579
                  srl          s7, t5, gp
1735:             add          s1, a3, s6
                  sltiu        s9, t6, 125
                  nop
1738:             beq          s4, a2, 1754f
                  bltu         a6, s1, 1746f
                  bgeu         zero, s1, 1750f
                  srai         s10, t1, 6
                  sub          a4, sp, t1
                  bltu         ra, s10, 1752f
                  addi         s4, s3, 694
                  sltiu        a6, a7, 446
1746:             slli         t2, ra, 4
                  or           a7, s4, t1
                  xori         s7, t0, -1928
                  bne          a6, tp, 1754f
1750:             srl          gp, s4, s6
                  srai         a3, s1, 10
1752:             slti         zero, a0, 216
                  ori          t0, a5, 1649
1754:             nop
                  ori          t5, s3, 1989
                  slt          s8, t6, s11
                  nop
                  slti         a1, t6, 1136
                  and          a4, a3, s8
                  xor          t2, a5, a3
                  bne          t5, sp, 1763f
                  slt          s10, a2, s6
1763:             bge          a1, s7, 1772f
                  addi         a4, a3, 824
                  auipc        a4, 145684
                  nop
                  andi         s5, a1, -488
                  sltu         a6, t0, a5
                  srl          gp, t6, t4
                  bge          gp, a6, 1789f
                  beq          s11, ra, 1791f
1772:             srli         zero, a1, 23
                  xor          s11, t1, t0
                  srl          t3, a4, t2
                  or           a3, a2, s3
                  bgeu         a1, a0, 1793f
                  sltiu        s7, a7, 1274
                  beq          s9, t6, 1783f
                  and          t2, s7, s5
                  andi         t4, a6, 1275
                  beq          s4, s6, 1782f
1782:             slti         s5, t2, 644
1783:             blt          s1, a1, 1790f
                  sltiu        a2, a5, 890
                  slti         t1, zero, -1632
                  sltiu        a7, zero, -257
                  srli         s7, a5, 1
                  xori         s11, a5, 1447
1789:             slli         a1, t3, 14
1790:             or           t1, t0, s10
1791:             beq          sp, s10, 1802f
                  sltu         s7, a4, t3
1793:             or           ra, a3, s11
                  blt          t0, a1, 1795f
1795:             xori         s6, gp, -1850
                  sll          a1, s4, t6
                  slt          s9, s9, a4
                  slli         s3, s2, 28
                  auipc        a4, 156740
                  slt          gp, s9, s3
                  xori         a6, zero, 1666
1802:             and          t1, t3, s8
                  sub          s2, s5, s3
                  bgeu         a1, s6, 1815f
                  srl          s8, s0, a4
                  add          a3, s11, s10
                  bne          s9, s4, 1808f
1808:             slti         s10, s5, 1212
                  sltu         s5, sp, sp
                  auipc        gp, 1000933
                  sltu         t5, t6, s11
                  bltu         s9, zero, 1832f
                  sub          gp, ra, gp
                  slt          s10, a1, t1
1815:             ori          s9, t2, 1157
                  beq          s3, a1, 1823f
                  slli         s6, a4, 29
                  srl          t2, s2, gp
                  bge          t1, s7, 1826f
                  slli         a7, a2, 5
                  srli         s4, zero, 20
                  srl          s0, t6, s5
1823:             bne          s9, gp, 1828f
                  srli         t2, s5, 31
                  or           t2, s7, s7
1826:             beq          t0, s3, 1833f
                  nop
1828:             sltu         s11, gp, zero
                  sra          t3, s3, t3
                  bgeu         tp, ra, 1850f
                  ori          t0, t0, 1077
1832:             sub          a1, t4, gp
1833:             auipc        a1, 313595
                  srl          t6, sp, ra
                  srai         gp, a2, 30
                  addi         s10, sp, 1982
                  nop
                  blt          tp, sp, 1848f
                  xor          t3, t3, t3
                  add          s3, s5, s11
                  nop
                  ori          s7, t4, -1012
                  bne          s6, tp, 1848f
                  addi         s6, ra, 82
                  beq          t2, sp, 1861f
                  xor          a1, a6, s4
                  sll          a2, t5, a3
1848:             sub          s2, a3, t3
                  bne          t1, tp, 1855f
1850:             add          gp, zero, a4
                  bne          gp, gp, 1870f
                  sltiu        s11, s6, 1730
                  andi         s1, t6, 1688
                  sub          s1, s9, s8
1855:             sll          s8, a0, gp
                  srl          t4, ra, s1
                  or           a4, t4, s10
                  nop
                  sltu         a5, s6, t1
                  bne          ra, t1, 1873f
1861:             slt          a7, s10, t4
                  bge          t3, s3, 1868f
                  auipc        s3, 993731
                  xor          s3, tp, t2
                  sra          ra, ra, s3
                  add          s9, s9, s11
                  beq          t1, s9, 1869f
1868:             slti         t2, s0, 293
1869:             bgeu         sp, a4, 1889f
1870:             beq          gp, tp, 1879f
                  srl          s0, t0, a2
                  slt          s7, s2, s4
1873:             srai         a5, a0, 13
                  andi         t3, a7, -1197
                  sltiu        t0, t6, 72
                  bne          s11, s2, 1884f
                  bge          t6, a7, 1894f
                  auipc        s4, 416132
1879:             slli         s10, s2, 4
                  ori          gp, s7, 1412
                  sra          s3, s11, ra
                  sltiu        s3, gp, 616
                  auipc        s5, 293238
1884:             nop
                  beq          s8, t3, 1894f
                  and          a5, a6, t1
                  xor          s1, a1, s0
                  sltiu        s3, sp, 1606
1889:             sub          ra, s2, s10
                  sltiu        s3, a0, 1248
                  xori         a6, s0, -295
                  beq          t4, a1, 1899f
                  auipc        a7, 1154
1894:             andi         gp, a5, 70
                  auipc        a6, 963201
                  slt          a5, s0, t1
                  srl          s5, s3, s9
                  bge          t4, t5, 1907f
1899:             sra          s5, s10, t2
                  sltiu        t4, gp, 79
                  xor          t1, a0, t0
                  ori          t6, s0, 622
                  sll          s2, s10, s1
                  bge          s10, a4, 1911f
                  addi         gp, s6, -364
                  slti         t3, s8, 610
1907:             sub          s7, s7, s5
                  xori         t5, t6, 1907
                  sub          s5, gp, t6
                  andi         t4, s2, 455
1911:             slli         t1, zero, 22
                  sll          s6, ra, zero
                  sra          s2, a4, t3
                  slli         s4, s9, 19
                  bltu         s6, s0, 1925f
                  slt          s0, t2, a5
                  bgeu         s10, tp, 1926f
                  and          s10, a1, s3
                  andi         s4, t0, -2006
                  sub          s8, gp, ra
                  addi         s9, sp, 427
                  bltu         a0, t1, 1926f
                  blt          s1, t2, 1941f
                  slti         t6, t1, -1524
1925:             bne          s1, a4, 1942f
1926:             srli         s11, sp, 7
                  blt          zero, zero, 1944f
                  addi         t2, s8, 47
                  ori          t4, s9, -631
                  sra          s5, s1, s3
                  beq          t4, t6, 1938f
                  sltu         a4, s8, t5
                  nop
                  blt          t5, s6, 1943f
                  bgeu         a7, t6, 1952f
                  xori         s0, t0, -779
                  sltiu        a3, zero, -499
1938:             sub          s1, t5, t3
                  bltu         t1, a4, 1955f
                  sltu         a6, s6, a7
1941:             srai         s2, s9, 16
1942:             bne          gp, t5, 1943f
1943:             or           t4, t3, t3
1944:             xor          a4, s3, a5
                  lui          gp, 516102
                  slt          a6, a4, s8
                  nop
                  add          s8, s7, t3
                  sub          a1, t4, s11
                  bge          a6, s7, 1958f
                  sltu         t4, gp, s4
1952:             add          s11, gp, t3
                  sltu         s6, s5, t1
                  bgeu         s2, a1, 1963f
1955:             bge          s8, s3, 1960f
                  slti         a2, s2, 524
                  auipc        t2, 461870
1958:             sra          s2, s4, a4
                  srai         t0, a7, 17
1960:             sub          t4, a7, s11
                  lui          t0, 400821
                  sra          a7, gp, a1
1963:             srli         t3, ra, 31
                  sltu         a1, t0, a1
                  and          t5, a2, sp
                  and          t4, s2, zero
                  srli         s1, t4, 23
                  and          s10, s2, s3
                  or           s2, t2, s7
                  bge          t6, s9, 1971f
1971:             srl          s9, a7, a3
                  sra          a6, a2, a2
                  sub          s8, t4, a5
                  srai         t3, s8, 13
                  sub          t2, s0, s8
                  xor          s4, a5, t1
                  blt          t6, s3, 1996f
                  slt          t1, a0, a0
                  bne          s7, t1, 1985f
                  addi         s11, a2, -1511
                  srli         gp, s0, 10
                  xor          s3, s1, s2
                  and          s3, s5, s0
                  blt          a0, t1, 2004f
1985:             or           s10, zero, a6
                  bgeu         s7, s4, 1991f
                  nop
                  bne          t5, a0, 1990f
                  sub          t6, s2, t5
1990:             xori         t1, s5, 165
1991:             bne          a1, a1, 1998f
                  sub          s3, t0, a5
                  slli         a4, t4, 30
                  bgeu         a4, a6, 2001f
                  xor          t6, tp, s10
1996:             bgeu         s5, s7, 2003f
                  addi         s7, s11, -1656
1998:             srl          s2, a0, s4
                  and          s5, a3, t4
                  sra          s3, gp, a1
2001:             srai         s4, t3, 29
                  add          ra, s9, s7
2003:             addi         s8, t1, 156
2004:             auipc        s7, 483277
                  srli         a2, a0, 12
                  slli         s0, t0, 6
                  nop
                  andi         a3, a1, -889
                  beq          t4, s2, 2013f
                  and          s2, a4, t0
                  add          t3, t4, s10
                  ori          a7, s9, -1934
2013:             bgeu         a7, s0, 2023f
                  beq          a6, t4, 2027f
                  bgeu         s6, s11, 2025f
                  beq          s5, s9, 2036f
                  bne          ra, a7, 2028f
                  and          s0, a3, s10
                  addi         ra, t5, -572
                  ori          a1, sp, -1231
                  and          s9, s7, s3
                  slti         t1, sp, 1659
2023:             ori          ra, s4, 1846
                  bltu         a6, ra, 2042f
2025:             bgeu         t4, s8, 2045f
                  sltiu        t6, s9, 1494
2027:             sltiu        a7, a1, 1114
2028:             addi         s6, a6, -1600
                  lui          s1, 979489
                  bne          t2, t4, 2036f
                  bge          a4, s5, 2040f
                  sub          a4, s4, t4
                  sll          s0, s4, s1
                  nop
                  blt          tp, t1, 2044f
2036:             slli         t4, t3, 10
                  auipc        t1, 727947
                  slli         t4, a6, 30
                  blt          a1, s5, 2046f
2040:             add          t2, s5, t6
                  addi         s1, t0, -383
2042:             slt          s0, t1, t5
                  ori          s11, gp, -177
2044:             sll          a4, t4, t3
2045:             bge          s4, t1, 2052f
2046:             slli         a7, t6, 7
                  auipc        ra, 811310
                  or           s9, gp, t2
                  and          s7, s11, t3
                  srai         t5, sp, 18
                  sub          s10, gp, s2
2052:             or           s2, s4, s9
                  srli         zero, a0, 3
                  slti         s10, t4, 259
                  lw           a5, 4(a0)
                  xori         t3, s2, -1487
                  or           t5, a6, a5
                  slli         s9, tp, 3
                  addi         a0, a0, 28
                  srai         s2, s1, 26
2698:             addi x17, x15, 0
2698:             jalr x17, x17, 0
sub_10:           sltiu        s8, a7, 711
                  nop
                  addi         s9, s0, 1066
                  slli         a1, s4, 7
                  addi         a0, a0, -60
                  nop
                  sw           a5, 4(a0)
                  or           t3, sp, s1
                  or           s2, t3, t2
                  and          t5, a4, t4
                  slt          s9, t0, ra
                  auipc        a4, 149567
                  srl          s5, t5, t6
                  sll          zero, a0, a2
                  slli         s2, a5, 23
                  or           t3, t2, s5
                  blt          s7, s9, 25f
                  andi         a7, a4, 278
                  nop
                  sll          a1, t2, t5
                  add          s7, s5, t5
                  srli         a4, s7, 13
                  slti         t0, s1, -1885
                  srai         ra, t2, 4
                  sltu         s11, t0, ra
                  slli         a1, s4, 18
                  srai         s3, a1, 23
                  bltu         zero, s10, 32f
                  slli         a1, a6, 24
                  or           s5, a0, s4
                  srl          s1, s7, a0
                  sltu         a7, zero, a4
                  beq          s11, s7, 33f
                  beq          zero, a2, 27f
25:               slti         a4, s1, 1132
                  auipc        s4, 983969
27:               slt          s6, t4, gp
                  sll          t0, t3, a4
                  bgeu         a5, sp, 30f
30:               sltiu        zero, t3, 236
                  sra          s2, s9, s10
32:               add          s0, t4, s3
33:               beq          a3, t6, 52f
                  xor          t3, a6, t5
                  slli         s6, zero, 12
                  slt          a6, tp, s1
                  xori         gp, a6, 1485
                  bltu         s9, tp, 48f
                  or           a4, t5, s6
                  nop
                  slti         a2, s6, -1335
                  auipc        t6, 671179
                  sll          s10, s10, s6
                  or           s0, t4, t5
                  xori         s2, t4, 1320
                  sltu         s0, gp, s0
                  xor          a3, s8, s8
48:               bne          t1, a4, 55f
                  sltiu        s3, sp, 754
                  add          s10, s11, s0
                  beq          s2, t2, 56f
52:               slli         a2, s4, 26
                  blt          a7, t2, 64f
                  sub          s4, a6, t1
55:               addi         s6, t2, -952
56:               sltiu        t5, a6, 723
                  slt          s11, a1, zero
                  xori         s4, a6, 224
                  bgeu         t5, t2, 74f
                  srl          s9, t0, a4
                  slti         s2, s2, 1430
                  bgeu         t1, a1, 77f
                  and          t6, s3, s9
64:               lui          s6, 820511
                  blt          a4, zero, 82f
                  bltu         s5, s5, 73f
                  sub          gp, sp, a6
                  sltiu        t1, t3, -990
                  nop
                  sltu         s1, s6, zero
                  and          s5, a1, s7
                  srai         t3, t0, 26
73:               slt          a7, t3, s1
74:               sra          s4, a0, gp
                  bltu         t5, t2, 89f
                  srli         s10, gp, 2
77:               nop
                  addi         t1, a0, -1796
                  ori          a4, t0, 1751
                  sub          t1, a0, t5
                  addi         t2, t5, 161
82:               nop
                  srai         t4, t4, 13
                  blt          sp, a0, 99f
                  add          a4, s10, t5
                  beq          s5, ra, 92f
                  srai         t4, s6, 31
                  andi         s9, s4, 938
89:               blt          s0, s5, 90f
90:               sll          s3, a7, tp
                  sltu         t5, gp, s6
92:               srl          s8, s0, s6
                  andi         gp, s5, 51
                  add          s4, a2, tp
                  srai         t5, s6, 13
                  sll          s9, t5, t2
                  sll          a1, t2, t0
                  bgeu         t4, ra, 99f
99:               srai         s0, a0, 17
                  srai         a3, a7, 4
                  lw           a5, 4(a0)
                  srl          s7, sp, s9
                  xor          s10, t5, zero
                  addi         t4, t2, 728
                  sltu         s1, t5, a4
                  addi         a0, a0, 60
                  sltu         s4, t4, s6
117:              addi x20, x15, 0
117:              jalr x20, x20, 0
sub_8:            srai         gp, t1, 27
                  addi         a0, a0, -8
                  slli         t3, zero, 24
                  sw           a5, 4(a0)
                  xori         s2, a3, 1789
                  or           a1, t5, zero
                  slli         s8, s8, 17
                  add          t2, ra, t6
                  xor          a5, a4, s2
                  or           t1, s1, s8
                  xori         s7, s2, 742
                  nop
                  auipc        t1, 284939
                  or           a1, s4, s5
                  addi         a2, a5, -1006
                  andi         s6, s2, 1859
                  ori          ra, t0, 1228
                  bne          a4, a6, 21f
                  bgeu         s4, s1, 21f
                  bge          sp, t5, 21f
                  blt          a7, s6, 21f
                  or           zero, a2, s1
                  sltu         s5, gp, s6
                  bge          zero, a7, 21f
                  auipc        t0, 662477
                  lui          t1, 212199
21:               slli         s4, s1, 19
                  sll          a3, s0, t6
                  sub          s1, a0, s3
                  slti         s7, t5, -1055
                  and          s5, a3, tp
                  lw           a5, 4(a0)
                  addi         a0, a0, 8
                  andi         s9, s2, 302
34:               addi x8, x15, 0
34:               jalr x8, x8, 0
sub_5:            addi         a0, a0, -44
                  nop
                  nop
                  slli         s9, t4, 24
                  lui          t6, 696189
                  sub          s5, s8, t3
                  sltu         s5, s4, t2
                  sw           a5, 4(a0)
                  auipc        t1, 211441
                  sll          gp, s9, tp
                  xori         gp, a4, -1621
                  la           ra, region_0+1152 #start riscv_load_store_rand_instr_stream_0
                  xor          s4, s4, s2
                  lbu          t1, -519(ra)
                  lb           a7, -787(ra)
                  xor          a7, a2, s9
                  lbu          gp, 114(ra)
                  sh           s6, -750(ra)
                  andi         s7, a4, -143
                  lui          s4, 1044543
                  lb           s9, -153(ra)
                  srl          s7, a2, t0
                  sb           s6, 584(ra)
                  srl          t0, t0, s3
                  sb           a7, -1100(ra)
                  sb           t0, 681(ra)
                  lb           t3, 244(ra)
                  sra          a5, a1, a0
                  lbu          a7, 254(ra)
                  lbu          gp, 735(ra)
                  and          a1, a2, t2
                  lbu          s3, 535(ra)
                  slli         t2, s0, 1
                  lb           t6, -165(ra)
                  sb           s5, -333(ra)
                  lb           t1, 285(ra)
                  ori          s1, sp, 1455
                  lw           gp, 76(ra)
                  lb           a1, -1134(ra)
                  lbu          s0, 559(ra)
                  and          a2, a7, a3
                  sb           ra, 526(ra)
                  lw           s8, 572(ra)
                  sb           t0, -6(ra)
                  slti         s1, s1, 577
                  lb           a2, -549(ra)
                  sub          t1, sp, t0
                  xori         s1, a6, -1043
                  xor          t6, t6, a1
                  lbu          a6, 565(ra)
                  lbu          a5, -651(ra)
                  sh           a0, 226(ra)
                  lb           t3, 513(ra)
                  sltu         s6, a3, a7
                  srl          t2, a4, a4
                  sh           a6, 578(ra)
                  andi         t1, a6, -1247
                  lbu          s5, 282(ra) #end riscv_load_store_rand_instr_stream_0
                  sra          s4, t4, a0
                  beq          s0, s10, 9f
                  sll          t6, gp, a6
                  blt          zero, a7, 4f
4:                and          s7, s10, tp
                  srli         s4, a4, 10
                  blt          t1, a0, 18f
                  slt          a3, a1, s4
                  bgeu         gp, a4, 12f
9:                slli         s8, ra, 11
                  xor          t2, t1, tp
                  slt          s8, s3, s9
12:               srli         s0, s5, 5
                  sll          t6, a4, t0
                  slli         a3, t2, 18
                  bgeu         a0, s5, 32f
                  bne          a2, t3, 21f
                  ori          s6, s8, 569
18:               bne          a6, s4, 35f
                  srai         s0, s8, 30
                  auipc        s5, 849237
21:               bltu         a1, s2, 33f
                  beq          t6, zero, 28f
                  sll          t5, t2, t1
                  nop
                  beq          a3, s9, 28f
                  addi         t3, sp, 914
                  and          a5, t1, a7
28:               sra          s11, s8, s6
                  sll          t2, s6, a7
                  srai         t1, s3, 28
                  andi         s4, tp, -82
32:               and          s4, a7, s4
33:               nop
                  sll          s3, t1, s6
35:               bltu         s7, s4, 52f
                  beq          s7, s6, 40f
                  nop
                  auipc        gp, 163655
                  bltu         a0, a5, 50f
40:               bne          a3, tp, 49f
                  add          a5, a2, zero
                  xori         a6, a3, 1301
                  blt          s10, s1, 56f
                  srl          zero, a3, s0
                  slli         s11, t4, 30
                  bltu         t6, s11, 52f
                  bne          t0, s0, 58f
                  nop
49:               sra          s7, a2, s5
50:               slli         s2, t1, 10
                  or           a7, a6, s7
52:               sra          t0, t2, ra
                  srai         t0, a7, 7
                  or           s4, a6, a0
                  blt          s5, ra, 65f
56:               sll          t2, a1, s4
                  or           s1, t4, t0
58:               blt          a5, s8, 75f
                  andi         s9, a2, -1867
                  srai         a7, a5, 24
                  bge          s6, a2, 73f
                  add          t3, gp, a0
                  sra          t5, s5, a0
                  slt          s6, a6, t0
65:               sra          t3, t4, a7
                  add          a6, a5, a1
                  srli         s0, s2, 17
                  xori         a5, a4, 1365
                  nop
                  bne          a2, t0, 72f
                  slti         a5, s3, -1663
72:               sra          a5, sp, a4
73:               srai         s4, t6, 29
                  andi         gp, s1, 1629
75:               bgeu         a1, a0, 85f
                  sltiu        s8, t5, 1534
                  ori          a3, s9, 242
                  add          s4, t6, s9
                  blt          s8, s1, 99f
                  sltiu        s3, t2, 1227
                  slli         a2, s3, 26
                  srl          a3, a5, t5
                  xori         t1, s8, -1715
                  blt          a3, s2, 95f
85:               sra          s0, a3, a5
                  sub          s5, s5, a7
                  sll          s7, a2, t3
                  srai         ra, s0, 16
                  beq          s7, s6, 99f
                  bge          s6, s5, 100f
                  bltu         s7, t6, 98f
                  beq          s2, a0, 102f
                  bge          t3, a0, 97f
                  bltu         a2, a0, 112f
95:               or           t2, a5, s0
                  addi         t0, tp, -389
97:               sltu         s1, a6, s9
98:               sltiu        ra, s10, -1041
99:               auipc        t0, 570660
100:              bne          t3, s9, 101f
101:              add          a7, s10, s3
102:              bgeu         a3, s7, 119f
                  or           ra, sp, sp
                  srai         t6, s3, 8
                  add          s4, t2, t3
                  auipc        s5, 751729
                  nop
                  andi         t0, t3, -1882
                  slli         gp, tp, 7
                  srl          s0, s8, sp
                  slli         t1, s9, 12
112:              srl          t0, s0, sp
                  nop
                  sltiu        a3, a4, 1903
                  ori          s2, s8, 294
                  slti         s4, s5, 1269
                  andi         a2, s6, -104
                  bgeu         a1, s10, 130f
119:              auipc        s7, 7554
                  sub          a7, s2, a4
                  sra          a5, s3, t6
                  sltu         s10, a0, s8
                  auipc        ra, 742812
                  bltu         a5, s3, 128f
                  and          s6, a6, t4
                  bge          a5, s4, 128f
                  slti         a5, ra, -1113
128:              beq          t0, a1, 138f
                  slt          t6, t5, t4
130:              and          s2, a2, t6
                  slt          a4, s11, a0
                  sll          a6, zero, t1
                  sltiu        s1, s10, 1854
                  and          a5, a0, a3
                  sra          zero, s4, s10
                  sra          a3, a6, t6
                  sltu         s7, a0, s3
138:              or           s1, s1, a2
                  nop
                  sll          a1, t2, t6
                  ori          a2, a2, -709
                  nop
                  lui          t5, 503923
                  ori          s5, s0, -248
                  sub          s2, t3, t1
                  lui          a3, 577505
                  sub          s2, t3, t6
                  srli         s11, a4, 14
                  sll          s10, zero, a5
                  bltu         a4, s2, 155f
                  srl          ra, s10, t2
                  sra          a3, a2, t1
                  xori         s3, t1, 1473
                  srli         s9, t2, 9
155:              xor          s10, s9, t6
                  blt          tp, a0, 160f
                  srl          a7, a2, t5
                  and          a2, s1, s9
                  addi         t0, a1, -28
160:              slli         a3, a2, 17
                  slt          t6, s9, tp
                  xor          zero, a0, t2
                  bne          ra, a0, 180f
                  sub          a7, s4, tp
                  bgeu         s0, t4, 176f
                  srai         s8, a3, 26
                  xori         gp, t0, -1347
                  or           t3, t3, t6
                  blt          s3, a4, 187f
                  slt          t3, a4, t0
                  srai         t5, t3, 2
                  sltiu        a2, t1, -1863
                  lui          s0, 934601
                  nop
                  srai         t1, ra, 2
176:              ori          t3, a2, -1386
                  srli         a5, s11, 13
                  sltiu        s2, a1, 463
                  srl          a4, a3, s5
180:              srai         ra, s9, 19
                  auipc        t1, 457964
                  xor          a3, t6, s6
                  lui          t4, 643234
                  nop
                  beq          tp, sp, 189f
                  blt          s0, s6, 197f
187:              slti         t5, s2, 1977
                  lui          s9, 550588
189:              beq          t1, s5, 197f
                  slli         s7, t0, 8
                  addi         t2, ra, 606
                  bne          tp, s9, 197f
                  xori         a7, t5, -966
                  or           s2, a5, t3
                  bltu         gp, s2, 197f
                  slt          a4, a3, t5
197:              ori          s11, a5, 80
                  ori          s11, a4, -1479
                  lui          t0, 707152
                  and          a1, s2, s8
                  sltiu        s4, s10, 24
                  lw           a5, 4(a0)
                  or           t2, s9, t1
                  sltiu        t1, s6, -482
                  xor          a6, gp, a1
                  srl          a6, sp, s5
                  addi         a0, a0, 44
                  slt          t1, s0, a2
                  srl          t3, s5, a2
268:              addi x21, x15, 1
268:              jalr x21, x21, 0
sub_1:            addi         a0, a0, -64
                  andi         s10, s1, -1018
                  sw           a5, 4(a0)
                  or           ra, s11, a4
                  slt          a4, t3, s4
                  slt          s6, s0, a3
                  xori         s1, a6, -615
                  srl          a4, a1, t1
                  srl          gp, t5, s4
                  srai         t4, t6, 7
                  or           gp, t6, s6
                  la           a6, sub_2
                  auipc        a5, 703138
                  add          gp, tp, tp
                  srl          t3, s3, sp
                  addi         a6, a6, -389
                  sra          s9, tp, s0
                  sltu         t1, t0, a4
sub_1_j4:         jalr         a5, a6, 390 #jump sub_1 -> sub_2
                  la           t5, region_0+555 #start riscv_load_store_rand_instr_stream_0
                  slt          s0, s9, s3
                  andi         a3, t3, 1916
                  sb           a2, 8(t5)
                  sll          s4, a7, zero
                  sh           s5, -11(t5)
                  lw           ra, 5(t5)
                  slli         s1, ra, 6
                  lhu          a6, -3(t5)
                  addi         s9, zero, 2002
                  sub          t1, s2, s8
                  sra          a7, t1, s9
                  slt          s5, zero, a2
                  sra          gp, s9, s11
                  slli         s4, s4, 12
                  sll          s8, t3, s2
                  lbu          t6, 4(t5)
                  srl          s9, t4, t2
                  srl          a1, sp, s4
                  lbu          gp, -4(t5)
                  addi         gp, s5, 1184
                  lb           a5, 3(t5)
                  xori         s0, a2, -431
                  xori         s4, s1, 1442
                  sh           zero, -7(t5)
                  and          zero, sp, s11
                  sltu         t4, a5, a3
                  ori          t1, s2, -1303
                  addi         t2, t2, -29
                  sltiu        gp, a4, -1261
                  slt          s8, s8, a2
                  sll          s9, t0, tp
                  addi         s9, a1, -957
                  lw           s4, 13(t5)
                  sw           sp, 9(t5)
                  lbu          a4, -15(t5)
                  xor          s0, a2, s3
                  lbu          t2, -11(t5)
                  sw           tp, -15(t5)
                  or           a5, t4, a7
                  lb           gp, 7(t5)
                  lbu          a1, -8(t5)
                  sh           ra, -7(t5)
                  ori          s1, s11, -1621
                  sb           a7, 8(t5)
                  srli         s10, zero, 12
                  and          gp, s8, a5
                  sh           s1, -3(t5) #end riscv_load_store_rand_instr_stream_0
                  sra          s1, a4, s2
                  slli         a4, s0, 18
                  sll          a5, t6, s9
                  srl          s4, t6, t6
                  slli         t2, t6, 13
                  addi         s11, s8, -1326
                  slti         a7, s5, -1602
                  srai         a1, a6, 2
                  ori          a1, gp, -669
                  andi         s6, s5, -154
                  srl          t2, s6, s0
                  sub          s6, a0, s1
                  srl          s10, s0, t2
                  srai         zero, s5, 6
                  sra          s9, t2, a3
                  bgeu         a4, a7, 17f
                  sub          t0, s3, tp
17:               blt          a5, sp, 19f
                  slli         zero, a4, 24
19:               ori          s3, t1, -1625
                  srl          s0, s6, t1
                  srli         a5, t4, 17
                  addi         a6, a2, 1729
                  srai         t5, a5, 18
                  addi         s0, a2, -405
                  beq          s2, gp, 35f
                  bge          s6, a6, 30f
                  auipc        s5, 476433
                  addi         t1, s5, 257
                  srai         s9, a5, 20
30:               and          a2, a1, s2
                  srl          s1, a3, t1
                  bgeu         s4, t6, 50f
                  srl          zero, t2, s2
                  auipc        ra, 358932
35:               xor          s10, t3, s0
                  slti         s2, a5, -1275
                  ori          s3, gp, 71
                  slli         s7, s5, 9
                  sltu         t3, s7, t2
                  lui          s6, 307524
                  slti         t3, a7, -1502
                  sltu         s4, s9, s10
                  sub          t4, a1, zero
                  sub          t3, a0, s11
                  nop
                  bltu         t0, t4, 51f
                  sll          s5, s1, a1
                  auipc        a6, 200605
                  or           t4, s4, s11
50:               xori         t4, t5, 475
51:               slli         a6, sp, 9
                  andi         s10, s9, -1963
                  bge          zero, s6, 65f
                  nop
                  sll          a3, t1, ra
                  andi         s4, a5, -35
                  bne          s7, a0, 70f
                  srai         s3, s10, 20
                  sltiu        t5, t3, 1356
                  sltu         a3, s8, a5
                  bge          s11, a0, 64f
                  slti         a1, t1, -1639
                  nop
                  la           a7, sub_2
                  slli         a2, a5, 27
                  srli         a4, s5, 24
                  addi         a7, a7, -64
                  add          t6, a4, t2
                  lui          s6, 940646
sub_1_j3:         jalr         a5, a7, 64 #jump sub_1 -> sub_2
                  sra          ra, a6, a5
                  add          s1, t3, s2
64:               and          a6, s4, a0
65:               bne          tp, s4, 72f
                  auipc        s9, 352335
                  nop
                  addi         s8, a1, -1561
                  andi         a4, s5, 1191
70:               beq          s1, a7, 79f
                  slt          a2, gp, a2
72:               srli         s3, a1, 25
                  bgeu         s10, a1, 83f
                  auipc        a3, 453321
                  sltiu        s9, t6, -901
                  ori          s9, tp, -275
                  add          s0, t2, s7
                  slti         s2, t6, 1613
79:               ori          t4, s0, -654
                  xori         s10, s10, 1305
                  xor          a2, t5, s1
                  add          a4, t3, s9
83:               sltu         ra, s2, t1
                  srli         s9, ra, 4
                  srai         a7, zero, 29
                  sll          t0, t4, s7
                  nop
                  slti         a3, t3, 211
                  sra          a3, ra, ra
                  bge          a2, a4, 102f
                  bge          s4, s6, 109f
                  ori          t0, a5, -1111
                  andi         ra, a7, -461
                  bne          s2, s10, 102f
                  sltiu        a6, a1, 1197
                  sltu         a3, t0, tp
                  sll          a2, s0, t5
                  blt          s7, a7, 109f
                  and          s2, s5, t3
                  lui          a3, 968322
                  srai         t1, t1, 0
102:              bltu         t4, a7, 106f
                  addi         s0, s9, 107
                  sll          a4, t5, zero
                  lui          t4, 97908
106:              ori          a7, t2, 1802
                  sra          t6, ra, s8
                  xor          s9, s6, ra
109:              bltu         t1, s0, 116f
                  sltiu        a4, a6, -955
                  ori          zero, zero, 754
                  bltu         a1, t2, 127f
                  blt          s2, s10, 126f
                  sll          a5, t4, t0
                  xor          s2, t0, tp
116:              and          s5, s11, gp
                  slt          a5, a1, a7
                  bge          s2, a1, 135f
                  xori         zero, s0, 1143
                  blt          s2, s0, 125f
                  bgeu         a7, tp, 124f
                  or           t6, a7, s7
                  xori         t6, t3, -1921
124:              slli         s9, s9, 0
125:              add          s7, t6, zero
126:              sltu         t4, a4, s9
127:              srai         t2, s8, 23
                  sll          t1, zero, a6
                  xor          s3, s3, t5
                  andi         s6, s4, -823
                  sra          a5, s3, t0
                  add          s11, s9, t3
                  beq          a1, t0, 153f
                  beq          s4, t0, 143f
135:              slli         s11, s4, 19
                  sltiu        a3, a1, -22
                  sra          s9, s8, sp
                  beq          t6, ra, 157f
                  blt          s4, ra, 146f
                  srl          s0, gp, a6
                  bgeu         s7, s11, 142f
142:              beq          s1, s6, 160f
143:              and          s3, s7, s1
                  auipc        a2, 124682
                  slli         s2, t4, 11
146:              beq          s2, sp, 158f
                  andi         a5, t6, -1078
                  slt          a4, s10, a6
                  sltu         ra, a2, a2
                  and          t0, s8, zero
                  sra          s1, t3, s1
                  xor          a1, s6, a5
153:              slt          s8, a3, s10
                  sub          s5, a3, a4
                  or           t3, s11, a0
                  add          s11, s11, t2
157:              slli         t0, a4, 19
158:              beq          t2, s10, 169f
                  bge          s6, t2, 161f
160:              blt          t3, t2, 167f
161:              sra          s2, s1, sp
                  xor          t6, t0, s4
                  xor          s0, s11, t3
                  xor          t3, gp, t5
                  sra          s11, a4, a1
                  nop
167:              blt          s9, sp, 177f
                  sltu         s7, t1, sp
169:              xor          s3, a7, t5
                  slt          a4, s11, s9
                  or           a2, t1, a3
                  bge          a7, t1, 187f
                  sra          t0, s0, s11
                  bne          t5, s6, 177f
                  beq          a5, a5, 193f
                  add          a2, zero, s11
177:              xori         s9, s0, -60
                  xor          a5, a3, s4
                  lui          s1, 719487
                  sltiu        a6, s1, -1972
                  slti         s10, s3, -1141
                  sub          gp, tp, a5
                  srli         s0, s11, 1
                  slt          s9, a1, s6
                  slti         s2, s8, 599
                  add          s8, s3, s2
187:              bgeu         a7, ra, 204f
                  sra          s1, s10, gp
                  slti         t4, a2, 34
                  sll          t2, t4, tp
                  bne          s10, t4, 209f
                  bne          s3, t4, 210f
193:              and          t0, a6, t5
                  srli         t0, s11, 3
                  slli         s1, gp, 15
                  srli         ra, t4, 18
                  slti         a7, a6, -213
                  slti         s4, t2, -686
                  blt          gp, zero, 206f
                  srai         ra, a0, 22
                  bne          s5, zero, 220f
                  auipc        a1, 301382
                  slti         s10, a6, 1230
204:              xor          t3, s9, tp
                  sltiu        s4, t5, -246
206:              sltiu        t0, a2, -927
                  beq          s11, zero, 210f
                  bne          s2, s9, 220f
209:              sltiu        gp, a1, 1311
210:              andi         ra, a6, -954
                  xori         s11, a1, 542
                  auipc        s10, 518532
                  nop
                  ori          a1, s8, 1887
                  bne          s6, s3, 217f
                  sltiu        t1, s9, -356
217:              sltu         t2, s1, a2
                  slt          t6, t5, s9
                  bgeu         s2, sp, 224f
220:              blt          a6, s1, 224f
                  sra          t6, s9, t3
                  auipc        t4, 75272
                  bne          a0, a6, 224f
224:              xori         s7, t4, -1973
                  xori         a7, a4, 945
                  lw           a5, 4(a0)
                  addi         a0, a0, 64
                  sll          s0, s11, a2
                  xori         s3, s0, 1116
306:              addi x16, x15, 1
306:              jalr x16, x16, 0
sub_2:            sll          t6, t3, a6
                  andi         s3, t6, -1463
                  sltu         s10, t3, a7
                  bne          s10, sp, sub_2_stack_p
                  xor          s11, t6, a1
sub_2_stack_p:    addi         a0, a0, -28
                  sw           a5, 4(a0)
                  lui          gp, 848371
                  sra          t6, a4, a3
                  lui          s11, 829331
                  sltu         t0, s6, s6
                  beq          sp, a4, sub_2_j5 #branch to jump instr
                  addi         s4, ra, -126
                  auipc        s2, 902912
                  or           t2, s0, a4
                  slti         zero, s2, -1233
                  ori          s9, s9, -904
sub_2_j5:         jal          a5, sub_3 #jump sub_2 -> sub_3
                  bltu         t1, ra, 17f
                  slti         s7, sp, -35
                  sltiu        a3, s5, -928
                  sra          s8, s4, gp
                  addi         s11, t0, 1634
                  andi         s6, s2, -298
                  and          a4, s3, t3
                  slt          s5, t1, s7
                  addi         s1, a7, -1531
                  sra          a6, t3, t3
                  bgeu         s5, s8, 24f
                  addi         t4, t2, 423
                  or           s8, s3, t2
                  beq          s11, a0, 19f
                  bltu         a2, a0, 33f
                  sltu         t1, zero, s9
                  auipc        s8, 109676
17:               srli         gp, gp, 23
                  srl          s0, s3, s7
19:               bltu         t5, sp, 36f
                  addi         a4, t1, -1576
                  auipc        t3, 293215
                  sra          s7, s3, s10
                  sra          t0, t5, s2
24:               addi         a2, a0, 159
                  andi         s8, a2, -1794
                  blt          gp, s1, 40f
                  xori         t2, s3, -1498
                  sll          s10, s10, a3
                  slti         s3, tp, 117
                  or           s9, t6, t3
                  sub          t6, t3, s0
                  ori          a4, s9, -998
33:               srli         t6, zero, 23
                  lui          s4, 62558
                  xor          t0, a1, a4
36:               slt          t3, a1, t0
                  xor          t2, sp, a4
                  andi         a7, a5, 1246
                  nop
40:               or           s10, a2, tp
                  beq          s1, a7, 42f
42:               addi         t3, t6, -1754
                  sra          a5, s11, a1
                  add          ra, s8, s7
                  slt          t6, t5, t4
                  bge          s1, a6, 55f
                  blt          a3, t4, 55f
                  bne          a7, a0, 55f
                  slti         a5, t0, 1426
                  bltu         ra, t4, 55f
                  slti         zero, s4, 1687
                  bne          a2, t3, 55f
                  ori          a6, a4, -646
                  bne          a1, s11, 55f
55:               ori          a5, a7, 231
                  slti         t5, s3, 703
                  lw           a5, 4(a0)
                  sll          s2, gp, t6
                  addi         a0, a0, 28
                  andi         t2, a7, -71
                  or           s8, t1, ra
80:               addi x17, x15, 0
80:               jalr x17, x17, 0
sub_3:            srai         t6, s6, 11
                  addi         a0, a0, -48
                  and          a1, a5, s4
                  or           a4, t0, s9
                  sll          s2, a1, s11
                  sw           a5, 4(a0)
                  sltu         a1, s9, s6
                  auipc        s0, 240047
                  or           t4, t1, t3
                  la           s1, sub_4
                  addi         s1, s1, 138
                  add          s10, t0, s5
                  xori         s10, t4, 1146
                  srl          gp, s10, t6
                  lui          s3, 482853
                  sub          s3, a0, s11
                  slli         s6, a7, 30
                  slti         a5, s2, 1281
                  bltu         a0, t5, sub_3_j6 #branch to jump instr
                  addi         s3, a5, 704
                  srl          a7, a4, t4
                  ori          ra, a3, 561
sub_3_j6:         jalr         a5, s1, -138 #jump sub_3 -> sub_4
                  bne          gp, a6, sub_3_j7 #branch to jump instr
                  addi         t1, tp, -1761
                  or           t3, t6, a7
                  slti         t0, a7, 2027
                  srl          s3, t0, gp
                  ori          s4, t5, -1946
                  srl          a6, tp, a0
                  sltiu        s11, t1, -265
                  slli         s0, ra, 19
                  sra          s0, a1, a6
sub_3_j7:         jal          a5, sub_10 #jump sub_3 -> sub_10
                  la           t4, sub_7
                  and          a4, sp, a3
                  addi         t4, t4, -66
                  sltu         t5, a6, s3
                  bgeu         tp, gp, sub_3_j8 #branch to jump instr
                  lui          s6, 626762
                  slli         s11, s11, 13
                  sub          a6, ra, a2
                  addi         s1, a1, 1082
                  xori         a2, t2, 1021
                  ori          t0, s8, -1450
                  addi         t1, sp, -372
sub_3_j8:         jalr         a5, t4, 66 #jump sub_3 -> sub_7
                  srl          s6, sp, t6
                  la           ra, sub_5
                  addi         ra, ra, -831
                  xor          a1, t0, t2
                  blt          s1, a6, sub_3_j9 #branch to jump instr
                  addi         s3, a7, -1122
                  nop
                  slli         s6, t2, 12
sub_3_j9:         jalr         a5, ra, 832 #jump sub_3 -> sub_5
                  slti         s1, a6, -61
                  ori          a4, ra, 1322
                  bgeu         a2, t2, sub_3_j10 #branch to jump instr
                  xori         s3, s5, 1979
                  sll          s9, s1, gp
                  srli         gp, a5, 31
                  srl          t2, t2, s7
                  add          a6, s5, t4
sub_3_j10:        jal          a5, sub_9 #jump sub_3 -> sub_9
                  xori         gp, s3, -1658
                  xor          a4, s6, s2
                  sll          s6, a4, s10
                  ori          s1, t5, -42
                  blt          s8, s6, sub_3_j11 #branch to jump instr
                  auipc        s0, 790576
                  xor          a1, a4, sp
                  sltu         s3, zero, a3
sub_3_j11:        jal          a5, sub_8 #jump sub_3 -> sub_8
                  la           s7, sub_4
                  or           s10, t1, s5
                  nop
                  addi         s5, s2, -1832
                  slt          s0, a7, s9
                  srli         s2, t0, 5
                  addi         s7, s7, 328
                  add          s11, a1, s10
                  slt          s3, s5, s11
                  bne          s0, s1, sub_3_j12 #branch to jump instr
                  slti         t5, s8, 1706
                  addi         s2, s2, 851
sub_3_j12:        jalr         a5, s7, -328 #jump sub_3 -> sub_4
                  slt          s11, ra, a4
                  slli         zero, t6, 24
                  add          gp, a3, a6
                  beq          s9, t3, sub_3_j13 #branch to jump instr
                  nop
                  sll          s2, t3, t5
                  srai         a3, sp, 31
                  addi         a5, a2, 1082
                  or           ra, sp, a1
                  sltu         a4, a2, t0
sub_3_j13:        jal          a5, sub_6 #jump sub_3 -> sub_6
                  blt          s5, t1, 7f
                  sra          a6, s3, a1
                  and          s2, t3, t4
                  xor          t3, s5, s10
                  srai         a4, t1, 6
                  sltu         s4, sp, tp
                  slt          s7, t0, s5
7:                andi         t1, s11, 1330
                  bltu         a5, s11, 11f
                  ori          t0, s3, -831
                  slt          s9, sp, s9
11:               slti         gp, zero, -1544
                  sll          s9, tp, s9
                  lw           a5, 4(a0)
                  slt          s6, t6, s0
                  sltu         s7, sp, s6
                  ori          s11, t2, 576
                  srli         t4, s4, 11
                  lui          a1, 110039
                  slti         t2, t0, 1118
                  srai         s7, s7, 0
                  addi         a0, a0, 48
                  add          s9, s4, s9
                  ori          a4, s1, -600
122:              addi x11, x15, 0
122:              jalr x11, x11, 0
sub_7:            ori          s9, t4, 708
                  or           s10, t4, t5
                  sub          a4, a7, t1
                  beq          tp, s9, sub_7_stack_p
                  lui          s8, 223303
                  auipc        t4, 517443
sub_7_stack_p:    addi         a0, a0, -64
                  auipc        a7, 596847
                  lui          t6, 763592
                  and          t6, a7, a3
                  sra          s11, a3, s6
                  sw           a5, 4(a0)
                  srli         s6, ra, 10
                  srli         s4, a2, 1
                  sltu         s5, s0, gp
                  nop
                  xor          s6, s7, tp
                  andi         s7, s2, -1585
                  blt          t0, t1, 18f
                  slt          t4, a6, s2
                  bltu         s6, a3, 8f
8:                bge          t1, a0, 10f
                  sltu         s4, s5, s10
10:               srai         t5, s4, 29
                  blt          zero, a1, 31f
                  or           s8, a0, t5
                  srli         a1, s2, 11
                  slti         s1, a0, 1533
                  and          s11, sp, s1
                  bge          s10, s9, 30f
                  ori          ra, s3, -850
18:               xori         s11, tp, 510
                  xor          t0, s7, sp
                  xori         s10, s11, 609
                  andi         s7, s9, -1114
                  addi         t3, s0, 401
                  bgeu         s5, t6, 26f
                  sub          a6, s10, t1
                  nop
26:               sll          s7, t3, t3
                  xori         ra, s4, 845
                  bne          s3, s9, 42f
                  bgeu         s0, a4, 38f
30:               slti         s7, s10, -440
31:               bne          s9, t4, 39f
                  auipc        ra, 585616
                  slli         zero, t5, 9
                  beq          t4, s10, 43f
                  blt          t2, a0, 49f
                  xori         gp, s3, 126
                  slti         t0, s8, -1732
38:               addi         t0, t1, -237
39:               srli         a3, a3, 13
                  and          t2, a3, t6
                  slt          t3, t5, s1
42:               srl          s4, zero, tp
43:               auipc        t0, 461091
                  bne          a3, t6, 50f
                  sub          t2, a2, a7
                  or           gp, a5, a6
                  sll          s10, zero, a4
                  srl          s3, a5, t0
49:               srl          t5, s9, t5
50:               bgeu         a4, s1, 66f
                  bgeu         t6, s2, 66f
                  sub          s5, gp, t4
                  lui          a1, 205221
                  bltu         t5, a1, 63f
                  bgeu         a6, a4, 69f
                  nop
                  xori         a5, a7, 1867
                  and          t4, tp, s10
                  beq          a3, gp, 72f
                  slti         t5, t6, -213
                  slt          zero, zero, a1
                  slt          t4, s3, s1
63:               slti         s10, a6, 1999
                  sub          a4, ra, tp
                  add          s11, t6, a5
66:               sltiu        s1, a2, 313
                  beq          t6, zero, 82f
                  addi         s3, s3, 670
69:               bge          a6, ra, 78f
                  sltu         a7, t1, tp
                  srl          t2, a3, a4
72:               xor          t3, s3, ra
                  bge          a1, s7, 80f
                  beq          s5, sp, 93f
                  nop
                  ori          a7, s10, 945
                  sltiu        t1, a2, -31
78:               nop
                  bltu         a7, a5, 98f
80:               sltiu        a6, a0, 255
                  beq          s8, t3, 94f
82:               blt          a3, t2, 96f
                  bltu         t2, a1, 88f
                  sub          t1, t3, a6
                  xor          t2, s5, t2
                  or           a3, t2, t2
                  bge          a1, ra, 107f
88:               nop
                  andi         s3, t1, -2023
                  or           t1, a4, a3
                  srai         s7, s10, 15
                  srli         a1, s7, 27
93:               or           s0, s3, a0
94:               sra          gp, s5, s11
                  and          s5, s9, a2
96:               or           a4, t6, ra
                  bgeu         t5, sp, 102f
98:               auipc        t6, 621458
                  xori         s6, tp, -298
                  or           ra, a0, s8
                  sll          ra, a2, a7
102:              blt          t3, t2, 118f
                  srl          s10, a4, s8
                  srl          t3, a7, s10
                  srai         t3, s9, 8
                  or           a7, s2, a7
107:              bltu         t1, a5, 112f
                  srl          t1, sp, zero
                  and          t6, a5, t0
                  xor          t3, s8, s10
                  and          a3, t0, sp
112:              xori         t6, a2, -589
                  and          t5, t3, t5
                  bgeu         s7, t6, 134f
                  or           zero, s7, s0
                  slt          a4, gp, t3
                  sltiu        t1, s11, 685
118:              bgeu         a3, s4, 119f
119:              srai         a7, a7, 11
                  xori         t6, s10, 870
                  sltiu        zero, s5, -1408
                  bltu         s8, a0, 128f
                  slti         s11, a7, -1282
                  auipc        t4, 89781
                  sra          t5, a2, s5
                  xor          t4, t3, t5
                  xori         gp, t3, 1598
128:              bltu         a3, ra, 130f
                  slti         s2, t5, 958
130:              lui          s4, 660872
                  srai         a2, s10, 30
                  xor          s11, zero, s1
                  sll          a2, a5, t6
134:              sll          zero, s11, s1
                  or           s1, a3, a3
                  slt          gp, s0, t5
                  sra          s11, s0, t1
                  slli         s6, tp, 27
                  or           t2, s5, zero
                  xor          a1, gp, s5
                  blt          t6, t3, 149f
                  srai         s6, a6, 18
                  addi         s10, a7, -385
                  andi         s1, s7, 692
                  andi         a3, ra, 1251
                  srl          s2, ra, a0
                  slti         gp, gp, 497
                  srai         a7, gp, 2
149:              andi         a5, t6, 138
                  ori          a7, tp, -1739
                  bgeu         s9, a4, 165f
                  auipc        a1, 340926
                  bltu         t4, t1, 173f
                  sltu         s10, t0, a6
                  andi         s6, s8, -492
                  bgeu         a6, a1, 170f
                  bne          s11, a7, 166f
                  sra          t1, a7, t2
                  sltu         s6, t2, a1
                  srli         zero, s3, 30
                  auipc        a2, 416239
                  srai         t0, s7, 10
                  ori          a1, s4, -639
                  bgeu         a6, s10, 180f
165:              ori          t5, s7, 674
166:              ori          a6, a7, -1126
                  lui          t2, 611939
                  auipc        t6, 204203
                  auipc        t2, 833779
170:              auipc        s11, 977252
                  sub          s9, zero, ra
                  ori          a2, gp, 930
173:              sll          a2, a6, a4
                  bgeu         a5, a1, 188f
                  nop
                  la           s9, region_1+1048 #start riscv_load_store_rand_instr_stream_0
                  slli         s10, gp, 16
                  xori         a6, a5, -1561
                  lbu          a4, 205(s9)
                  sltu         s5, s0, a2
                  xori         s6, a7, -799
                  slli         a7, s10, 16
                  lb           s0, 178(s9)
                  andi         a6, t3, -516
                  and          zero, s10, a7
                  slti         a1, a7, 687
                  lhu          a2, -60(s9)
                  andi         a2, t4, 806
                  lb           s1, -252(s9)
                  lui          s3, 91774
                  sra          a6, s9, t6
                  auipc        t1, 90568
                  nop
                  sra          a5, a6, s4
                  lh           t0, 140(s9)
                  ori          a2, ra, -742
                  sltu         s10, ra, t2
                  andi         a4, s11, 736
                  slt          ra, a1, a4
                  lbu          t0, -125(s9)
                  sltu         t3, a2, a4
                  and          s11, t2, a3
                  sub          s4, sp, sp
                  sra          ra, s9, s10
                  sh           s9, 22(s9)
                  lb           gp, -119(s9)
                  sll          s4, zero, ra
                  ori          t0, t3, -649
                  and          t3, sp, sp
                  or           t3, gp, t2
                  sb           t5, 181(s9)
                  nop
                  sh           tp, -42(s9)
                  srai         s4, t0, 22
                  sltiu        t2, t5, -1015
                  srl          t2, s5, a7
                  sh           s4, -180(s9) #end riscv_load_store_rand_instr_stream_0
                  slt          t6, a4, t0
                  auipc        a7, 819717
                  bltu         s5, s6, 191f
                  sub          a4, a5, zero
180:              add          a5, s5, s3
                  auipc        s4, 87506
                  sll          a4, a4, s9
                  lui          t0, 199165
                  bge          s3, s5, 204f
                  andi         a6, s8, -334
                  addi         a7, s11, 514
                  sll          s6, t0, s7
188:              srai         s2, t2, 28
                  sll          a7, ra, tp
                  blt          s11, t1, 209f
191:              bge          t5, a1, 206f
                  xor          a7, t6, a1
                  sltiu        s6, s4, 343
                  sll          s2, s4, s9
                  beq          sp, t0, 202f
                  sltu         s11, a0, a3
                  bgeu         s9, a0, 217f
                  andi         t2, t6, 1169
                  bge          a4, t1, 213f
                  addi         s5, t6, 1018
                  slli         s10, s5, 0
202:              blt          s3, a3, 215f
                  sll          t0, t1, t1
204:              slt          a6, a7, a6
                  blt          t2, tp, 208f
206:              auipc        s5, 19138
                  sltu         a2, t1, s4
208:              slti         t1, s3, -1488
209:              bgeu         s8, s11, 218f
                  bgeu         s4, s11, 219f
                  sltu         t1, s3, t3
                  or           s1, a4, s9
213:              andi         ra, s4, -2044
                  xor          s2, t0, s7
215:              xori         s11, t1, -227
                  auipc        t6, 575021
217:              addi         a5, t3, -1001
218:              or           s3, a2, s3
219:              sra          t2, a6, s9
                  bgeu         t4, s10, 229f
                  bne          s10, s11, 226f
                  and          a3, s4, gp
                  sltiu        t0, tp, -1836
                  ori          s5, ra, 1471
                  nop
226:              sub          s7, a2, t4
                  sll          s4, a2, a0
                  andi         a6, t2, -323
229:              blt          s11, s10, 230f
230:              srli         s8, a3, 27
                  sra          gp, sp, a6
                  lw           a5, 4(a0)
                  srli         s1, zero, 9
                  auipc        a2, 431614
                  sltiu        t4, sp, -736
                  auipc        s11, 635379
                  sltu         s5, t2, zero
                  addi         a0, a0, 64
                  srl          t6, sp, t4
                  sra          a2, t2, tp
                  srl          t2, t5, sp
297:              addi x1, x15, 0
297:              jalr x1, x1, 0
sub_9:            sra          t5, t4, ra
                  bne          s7, t3, sub_9_stack_p
                  sltiu        zero, zero, -1063
sub_9_stack_p:    addi         a0, a0, -40
                  lui          a7, 229403
                  sw           a5, 4(a0)
                  slt          t3, s5, t0
                  lui          s1, 469976
                  xor          s6, t3, t3
                  sltu         t0, s7, gp
                  xori         s6, a6, -816
                  slt          s9, s0, s9
                  srai         s8, s2, 14
                  sub          s0, t2, sp
                  bltu         s8, s0, 11f
                  slti         zero, s7, -965
                  andi         gp, s3, 251
                  or           s11, t2, s9
                  sra          t0, s7, a6
11:               auipc        s4, 257224
                  ori          t0, a7, -1025
                  bne          a1, s9, 14f
14:               sub          s8, a1, gp
                  sll          t1, s0, t6
                  andi         s5, tp, 1995
                  andi         a7, s2, -1300
                  slli         t0, gp, 15
                  bne          s7, tp, 23f
                  sra          s5, t4, s5
                  or           a2, s4, t1
                  or           t1, a2, t0
23:               andi         t2, a2, 566
                  lw           a5, 4(a0)
                  srli         t0, s6, 30
                  slti         s2, a1, -494
                  lui          a6, 605006
                  lui          t3, 971554
                  sll          s8, tp, a6
                  addi         a0, a0, 40
                  add          s10, tp, ra
40:               addi x28, x15, 0
40:               jalr x28, x28, 0
sub_6:            xori         t1, t3, -1978
                  ori          s4, t3, -1704
                  addi         a0, a0, -16
                  sltu         a2, s10, gp
                  sw           a5, 4(a0)
                  sltu         t5, t2, ra
                  slli         s9, zero, 23
                  andi         gp, s2, 924
                  la           t0, region_0+179 #start riscv_load_store_rand_instr_stream_2
                  sltu         a1, t5, s7
                  auipc        t5, 105317
                  slli         t4, t3, 3
                  srai         t3, s9, 17
                  andi         t5, a7, -1643
                  sb           a4, 18(t0)
                  sh           sp, -45(t0)
                  sll          gp, t3, s6
                  and          a3, t5, a3
                  and          s5, t6, s9
                  lb           a1, -6(t0)
                  sub          s8, t0, t0
                  sh           a7, 47(t0)
                  nop
                  xor          s7, s11, s3
                  auipc        s7, 438807
                  and          s0, t4, s5
                  addi         s8, s2, 1407
                  sub          ra, t3, t2
                  lbu          s7, 40(t0)
                  lbu          t1, -54(t0)
                  lbu          s0, -18(t0)
                  xor          s3, s0, s5
                  sra          s1, t1, zero
                  and          t1, t6, zero
                  add          s3, a6, ra
                  lbu          t1, 6(t0)
                  lbu          a4, 20(t0)
                  lb           s10, 44(t0)
                  lh           s6, -35(t0)
                  sh           s8, 63(t0)
                  or           t2, s3, zero
                  srl          t4, a2, t4
                  xor          t5, a3, sp
                  lbu          s8, -26(t0)
                  srai         s6, t0, 26
                  lb           ra, 42(t0)
                  sb           a4, 39(t0)
                  lui          s3, 474263
                  ori          s5, s0, 1563
                  sh           s10, -39(t0)
                  xori         a5, s2, -1356
                  sb           a4, 8(t0)
                  lb           s1, 8(t0)
                  addi         t5, a0, 523
                  slt          a3, a2, s3
                  sb           a5, 30(t0) #end riscv_load_store_rand_instr_stream_2
                  la           s6, region_0+1178 #start riscv_load_store_rand_instr_stream_3
                  lbu          s1, 25(s6)
                  lhu          t2, -24(s6)
                  srai         t0, a1, 26
                  addi         zero, ra, 1067
                  lb           s8, 33(s6)
                  lb           a5, -29(s6)
                  lb           s1, 25(s6)
                  lb           s8, 39(s6)
                  lbu          s0, 24(s6)
                  lhu          s7, -38(s6)
                  auipc        t5, 595335
                  slli         zero, s6, 11
                  lb           a5, -12(s6)
                  lb           a5, 29(s6)
                  lb           s8, 19(s6)
                  and          t4, t3, s0
                  sb           s2, -57(s6)
                  sub          t2, sp, s0
                  lbu          a4, 19(s6)
                  lbu          a2, -5(s6)
                  srli         s5, a0, 22
                  sub          s10, t1, ra
                  or           t2, s11, zero
                  lbu          s2, 36(s6)
                  sh           zero, 2(s6)
                  lbu          s8, -2(s6)
                  lh           t0, 10(s6)
                  srli         a6, a7, 26
                  lbu          s11, 59(s6)
                  lw           s0, 2(s6)
                  sh           t6, -56(s6)
                  sw           s8, -38(s6)
                  lui          s4, 734032
                  add          s9, a3, a6
                  lbu          t6, 61(s6)
                  lh           s0, -64(s6)
                  sb           t6, -49(s6)
                  sb           ra, -52(s6)
                  lh           t6, -10(s6) #end riscv_load_store_rand_instr_stream_3
                  slti         s9, a1, 455
                  sltiu        ra, tp, -1901
                  sub          t0, t0, s0
                  sll          s7, a5, zero
                  sub          t6, t0, t2
                  auipc        s4, 878298
                  srai         t6, ra, 10
                  slti         s9, t6, 269
                  sll          a3, tp, gp
                  sra          a5, ra, gp
                  auipc        zero, 663982
                  blt          s0, t4, 18f
                  sltiu        t0, ra, -587
                  srai         t5, s10, 8
                  ori          t4, tp, -1923
                  sll          a6, s7, t2
                  sltu         s10, s0, a7
                  auipc        s6, 758336
18:               xori         a7, t2, -1339
                  srai         a1, t4, 27
                  blt          sp, s2, 27f
                  srai         gp, s5, 8
                  addi         a2, s3, 1414
                  sll          s7, t5, a0
                  xori         a4, s7, 724
                  and          a3, t2, a6
                  slli         s0, t4, 30
27:               lui          s1, 119328
                  ori          s1, t0, 1712
                  sll          ra, s4, s6
                  andi         s8, tp, 1214
                  bgeu         s7, a0, 35f
                  slt          a5, t6, a1
                  or           a1, s4, a0
                  bltu         a0, s8, 47f
35:               sra          s6, gp, s10
                  sltiu        a7, s1, -79
                  bne          s6, s7, 45f
                  ori          s11, t1, 2004
                  bgeu         s5, t1, 46f
                  sub          s4, a2, t5
                  andi         a3, s8, 1379
                  srl          a2, t2, a1
                  xor          t6, t0, s5
                  beq          t5, s4, 53f
45:               nop
46:               bltu         s11, t6, 61f
47:               add          a2, a3, s1
                  slli         a3, s0, 12
                  bne          gp, t4, 67f
                  blt          s4, tp, 58f
                  andi         a1, a3, 1639
                  bgeu         t3, s2, 70f
53:               bltu         a1, ra, 68f
                  xori         t4, t3, 33
                  sltu         s8, s9, t0
                  andi         s5, s3, 1762
                  nop
58:               srli         ra, s4, 24
                  sub          a3, t0, t5
                  xori         a6, a7, 755
61:               bge          t0, s6, 74f
                  add          a2, s7, a6
                  srai         zero, s11, 10
                  or           a4, t6, a7
                  add          s3, t5, t6
                  sltu         t2, s0, s5
67:               andi         s6, a6, -921
68:               add          a4, t6, a3
                  auipc        s1, 641193
70:               sll          s9, s3, a5
                  sub          t6, s10, s1
                  auipc        a5, 675705
                  auipc        s1, 778049
74:               slti         s1, t4, -1538
                  bne          t5, t6, 95f
                  nop
                  srli         s6, ra, 2
                  bgeu         s1, s9, 90f
                  bltu         a7, t3, 92f
                  nop
                  beq          a0, s4, 95f
                  slti         a7, a0, 657
                  slt          zero, t3, t5
                  sltu         s6, s2, tp
                  bltu         s4, a4, 100f
                  auipc        s6, 140055
                  sra          a5, zero, a1
                  add          t1, a3, s1
                  sub          a2, a5, a0
90:               add          a2, s9, s3
                  slt          t3, tp, s10
92:               slti         s8, s10, 1768
                  andi         a4, t1, 244
                  slti         a6, a7, 359
95:               srl          t1, t0, s4
                  addi         s10, sp, 1839
                  sll          s2, s7, s1
                  ori          t2, t3, 832
                  andi         s8, t6, -302
100:              bne          t3, t1, 112f
                  lui          a5, 615222
                  blt          s8, a1, 118f
                  lui          t0, 671626
                  add          s11, t3, s3
                  add          a4, t3, a4
                  ori          s1, t1, -1782
                  blt          s7, s1, 111f
                  bgeu         gp, tp, 117f
                  bne          t2, s1, 123f
                  and          s0, ra, s6
111:              sll          s5, a1, a0
112:              xor          t6, a5, s7
                  or           t2, ra, s1
                  srli         a7, s11, 25
                  la           s3, region_0+1856 #start riscv_load_store_rand_instr_stream_4
                  lh           s1, -158(s3)
                  sltiu        a4, t6, 387
                  lbu          s7, -45(s3)
                  add          s2, s4, s7
                  add          a1, s2, t4
                  lb           s6, 133(s3)
                  add          a6, s7, t6
                  srli         a6, a1, 24
                  sub          s6, t0, a3
                  slti         s4, t5, -970
                  sw           s7, -252(s3)
                  lbu          t6, -46(s3)
                  lui          a1, 199291
                  srli         gp, s11, 19
                  sltu         a6, a4, zero
                  lb           gp, -242(s3)
                  lb           t0, -235(s3)
                  slli         a6, t2, 8
                  lbu          t3, -35(s3)
                  auipc        a5, 595385
                  lb           s6, -47(s3)
                  srai         s9, t6, 16
                  ori          s10, s9, -1306
                  lui          a5, 1026216
                  lh           s0, 122(s3)
                  addi         a6, s9, 1910
                  lb           gp, -87(s3)
                  lbu          s2, -27(s3)
                  lbu          a3, -123(s3)
                  srai         t5, s1, 11
                  sw           a2, -180(s3)
                  ori          t3, s7, -1657
                  sra          s11, tp, sp
                  lbu          s4, 85(s3)
                  sb           s3, 111(s3)
                  lhu          a2, -252(s3)
                  lhu          s1, 98(s3) #end riscv_load_store_rand_instr_stream_4
                  add          t5, s6, s9
                  srli         t6, s8, 20
117:              lui          t4, 27015
118:              sub          a4, t5, tp
                  nop
                  srl          a7, t1, s1
                  ori          s2, t5, -160
                  slt          a2, a6, s8
123:              bge          a2, t2, 139f
                  nop
                  sra          s4, s4, s6
                  beq          s2, s11, 142f
                  add          a7, t0, a1
                  slli         a3, sp, 28
                  bgeu         t3, t0, 130f
130:              nop
                  andi         t6, s2, -2013
                  bgeu         tp, t5, 148f
                  andi         s9, t0, -1407
                  andi         a2, s0, -1946
                  sll          a3, gp, a5
                  xori         a3, a3, 1643
                  sll          a2, a2, a3
                  ori          s1, s6, -1280
139:              nop
                  blt          s1, tp, 159f
                  sltiu        t5, t4, 616
142:              auipc        s11, 713935
                  sra          s3, s6, a7
                  bgeu         s8, t6, 148f
                  slti         s11, s3, 1933
                  ori          s10, gp, 869
                  slli         s2, gp, 27
148:              sll          s8, a0, t1
                  beq          s10, s2, 168f
                  bne          s11, a6, 162f
                  slt          s8, s11, t5
                  beq          t5, s9, 160f
                  sra          s5, t2, t3
                  or           s4, a3, s8
                  sll          s9, s0, s9
                  sltu         ra, a1, t0
                  slti         s2, s7, 1724
                  lui          s9, 97731
159:              bltu         s3, s11, 178f
                  la           a3, region_1+66 #start riscv_load_store_rand_instr_stream_0
                  xor          s2, t0, a3
                  srl          s4, gp, s6
                  slt          s2, sp, a7
                  sb           t0, 708(a3)
                  sltu         a4, s2, t6
                  sb           s7, 45(a3)
                  lb           a4, 1381(a3)
                  add          s11, a6, s1
                  sb           s4, 1128(a3)
                  srl          s1, ra, t4
                  lh           t1, 508(a3)
                  lbu          a4, 1609(a3)
                  and          s2, s5, s11
                  lb           ra, 220(a3)
                  xor          s3, s7, s8
                  lb           gp, 982(a3)
                  sb           a2, 5(a3)
                  slli         s8, t0, 28
                  slti         s1, tp, -1496
                  slli         t1, a0, 8
                  auipc        a1, 420752
                  lb           s6, 863(a3)
                  addi         t2, a3, 986
                  xor          a7, t0, t5
                  sb           s7, 1623(a3)
                  addi         a7, a6, -1396
                  lh           t4, 36(a3)
                  andi         s0, s9, 360
                  sltu         s11, zero, s7
                  sb           s5, 1479(a3)
                  auipc        s2, 181550
                  lbu          s5, 1561(a3)
                  lui          s7, 421458
                  lbu          s2, 924(a3)
                  sltu         s9, s3, s6
                  or           s4, s2, t3
                  lb           zero, 1015(a3)
                  lb           t3, 1550(a3)
                  sltu         a6, a0, a3
                  sltiu        s1, s0, 1519
                  slti         t1, a2, 897
                  auipc        t1, 283222
                  lb           ra, 196(a3) #end riscv_load_store_rand_instr_stream_0
160:              srai         t6, s1, 20
                  or           zero, gp, s7
162:              bge          a1, zero, 166f
                  beq          ra, s9, 181f
                  ori          t2, s0, -432
                  xor          a6, a5, t4
166:              sra          a7, a2, a3
                  bge          s10, t4, 183f
168:              bne          s5, a0, 188f
                  bne          s2, t5, 184f
                  sub          a4, s0, zero
                  or           a2, s11, zero
                  slt          t1, s4, t0
                  or           t6, s11, s3
                  nop
                  or           zero, a0, t0
                  ori          zero, s7, 1092
                  bltu         a3, ra, 185f
178:              slt          s7, s8, s0
                  xori         t5, sp, -513
                  slli         s9, s5, 4
181:              and          t0, a2, a4
                  slt          zero, s1, t6
183:              bgeu         a7, t5, 196f
184:              srli         a5, s4, 13
185:              blt          t1, s11, 194f
                  addi         s4, sp, -1325
                  xori         s9, s4, 682
188:              addi         a1, a5, -1399
                  bltu         a2, a2, 204f
                  slti         a7, a4, -1366
                  bltu         s1, t5, 204f
                  srai         s7, t2, 3
                  slt          t3, ra, s5
194:              sll          a7, s10, s3
                  bgeu         t4, s11, 199f
196:              auipc        s4, 474154
                  slli         s1, t0, 16
                  bgeu         a1, a6, 199f
199:              sltiu        zero, s1, -416
                  xor          a7, s3, s4
                  slt          a5, tp, tp
                  sltu         a6, s10, s3
                  bne          a7, t0, 207f
204:              andi         s11, t6, -1028
                  beq          a1, t0, 224f
                  slli         s5, gp, 16
207:              srai         s1, a5, 12
                  slti         a1, t2, 682
                  sltiu        a3, t1, 1855
                  nop
                  sltiu        t1, s0, 1744
                  bge          zero, sp, 230f
                  auipc        s8, 545258
                  blt          s6, gp, 221f
                  sll          zero, ra, a0
                  sub          s8, tp, s9
                  andi         a3, a2, 820
                  addi         s10, s9, 1440
                  andi         t6, s10, -1041
                  srl          a5, s3, a0
221:              sll          s6, a6, s4
                  blt          t2, t2, 238f
                  bltu         t4, t2, 232f
224:              slti         s6, s3, -879
                  blt          a6, a3, 239f
                  slti         ra, a2, -1071
                  sra          t4, t3, t0
                  auipc        s0, 386923
                  sll          s1, t5, t1
230:              addi         s1, s2, 766
                  sll          s11, a5, s7
232:              bge          s4, ra, 245f
                  bne          a0, t1, 240f
                  bltu         gp, s9, 241f
                  bne          s8, gp, 251f
                  bltu         a7, a3, 252f
                  add          t2, a4, t6
238:              slli         a5, s3, 11
239:              beq          t3, s6, 251f
240:              xor          t0, t6, sp
241:              sltu         s7, a4, a2
                  bgeu         ra, s4, 257f
                  sll          a7, a5, s9
                  bgeu         gp, t4, 258f
245:              sll          a2, s9, s3
                  and          t3, s11, sp
                  bne          s3, s4, 255f
                  sltiu        s7, t2, 1505
                  sll          a7, a6, a7
                  sltiu        s11, t4, -1616
251:              add          t4, t5, a1
252:              xor          s10, a3, a1
                  blt          s2, zero, 260f
                  sll          s4, a5, s7
255:              bne          s3, t0, 262f
                  bgeu         gp, gp, 270f
257:              sltu         gp, a4, s5
258:              slti         t3, t5, -1422
                  or           a4, a1, s10
260:              addi         s1, s2, 1475
                  and          a6, a7, a4
262:              lui          a6, 725927
                  andi         s1, s3, 33
                  ori          s7, a4, 511
                  srai         a4, a5, 14
                  srai         s0, a6, 24
                  or           s5, s1, t0
                  sra          s0, sp, a1
                  bne          s2, t3, 284f
270:              sltiu        ra, gp, 1202
                  sltu         a6, t0, tp
                  srl          s0, t1, zero
                  nop
                  sub          a6, t1, a5
                  slt          s10, a4, a4
                  auipc        s6, 1037290
                  sltiu        s8, gp, 1390
                  beq          s8, ra, 287f
                  sltu         s4, t6, s9
                  addi         s3, a1, -505
                  lui          a7, 389575
                  ori          a3, a1, -534
                  nop
284:              or           t5, a0, sp
                  srli         s9, a4, 30
                  ori          s0, t4, 2010
287:              sltiu        t3, ra, -1129
                  xor          t0, s0, t3
                  and          s5, s5, s11
                  bge          s2, a6, 297f
                  bgeu         t1, t3, 304f
                  sltiu        t1, s0, 971
                  srai         s2, a0, 15
                  bltu         a2, zero, 306f
                  bge          a3, s1, 299f
                  add          a5, t5, s0
297:              blt          t2, s0, 313f
                  sltu         a6, sp, s3
299:              sltu         a2, t0, s6
                  slli         a1, s2, 31
                  add          a6, zero, s1
                  ori          t1, s1, -332
                  slli         a2, s8, 8
304:              bne          t4, s1, 322f
                  bgeu         t1, s5, 318f
306:              and          a2, t1, a6
                  addi         s6, tp, -1231
                  ori          s5, s8, 638
                  bltu         s1, a2, 324f
                  xor          s10, s0, a0
                  bge          s1, s9, 324f
                  sltu         s8, t6, sp
313:              or           s6, a0, a2
                  or           ra, t2, zero
                  blt          a3, t0, 319f
                  sub          a5, a6, s7
                  slli         a6, a1, 14
318:              slli         s7, t5, 31
319:              slti         t5, tp, -268
                  auipc        s1, 929032
                  add          a2, s11, a6
322:              bgeu         ra, t4, 341f
                  srai         a2, ra, 2
324:              sll          s3, s11, a5
                  srl          s1, a0, s4
                  slli         zero, s1, 21
                  sra          t1, s4, tp
                  sltu         t5, t3, a2
                  add          gp, s11, s2
                  addi         s8, s5, -1509
                  sll          s6, t4, a7
                  lui          s5, 440352
                  or           t1, s3, tp
                  or           s5, s3, s3
                  sll          s10, a4, t2
                  beq          t4, ra, 340f
                  xori         t5, s8, 1015
                  slti         ra, t0, -525
                  sltiu        s6, a5, -2012
340:              add          zero, s6, s4
341:              and          ra, zero, a2
                  srli         a5, s5, 25
                  bne          a1, a3, 361f
                  slli         t2, a6, 18
                  sra          a7, s11, s7
                  andi         s2, s2, 1922
                  nop
                  srai         s3, t1, 18
                  sll          s5, a5, t3
                  beq          a0, s4, 366f
                  andi         s7, t1, 654
                  auipc        a7, 866678
                  xor          a7, s5, s3
                  xor          zero, s9, t1
                  sltiu        t5, a0, 1747
                  slli         t4, a0, 27
                  bge          sp, t5, 377f
                  sra          s4, s7, s7
                  and          s10, s6, s5
                  slli         s8, a6, 20
361:              ori          t6, s11, 779
                  add          a2, t4, t5
                  srai         a4, a2, 9
                  andi         s8, zero, -1690
                  and          s10, ra, s9
366:              bltu         a5, t0, 382f
                  auipc        t4, 504756
                  and          s0, t0, t0
                  slt          t4, s0, a1
                  bne          a1, a7, 379f
                  auipc        t2, 499394
                  add          t2, s5, s4
                  add          t0, s1, t4
                  slli         a5, a6, 9
                  auipc        a5, 826468
                  sltiu        ra, s7, 1848
377:              add          s7, a1, a3
                  xor          a2, ra, sp
379:              sub          a4, t5, s4
                  sll          a1, a3, s3
                  srli         s6, s10, 14
382:              andi         a1, zero, 1942
                  srl          s10, s6, a3
                  sub          t5, t4, t4
                  add          a1, a2, t3
                  sll          a5, zero, zero
                  and          zero, s7, a6
                  bge          s6, t0, 404f
                  slt          gp, a3, ra
                  srl          a3, a6, s7
                  add          gp, sp, a6
                  slti         s10, t5, 433
                  nop
                  slli         s3, a0, 11
                  auipc        t5, 562832
                  xori         a5, a0, -1497
                  xor          t4, s1, t2
                  blt          t2, s5, 399f
399:              xor          gp, t1, a3
                  bne          s10, s11, 412f
                  sra          a2, a7, t5
                  bltu         t2, s5, 417f
                  auipc        a7, 56070
404:              bltu         gp, a0, 412f
                  slt          t5, s4, a1
                  auipc        s10, 953848
                  addi         a5, a7, 2037
                  nop
                  ori          t0, s9, 999
                  srai         s9, s1, 31
                  bge          gp, t1, 425f
412:              bge          a4, t2, 431f
                  slli         a3, sp, 16
                  or           s0, a5, t2
                  sra          s1, t5, t3
                  srai         a4, s8, 0
417:              slli         a4, s11, 0
                  slli         ra, t2, 26
                  ori          s6, t0, -509
                  srli         s0, t2, 15
                  slti         t4, s1, 1322
                  bne          s3, s7, 426f
                  sra          gp, a5, a2
                  and          t1, sp, tp
425:              lui          t1, 411586
426:              sltiu        t3, ra, 1785
                  blt          s7, t2, 442f
                  srai         gp, s3, 7
                  beq          s1, s2, 444f
                  srai         s0, s6, 29
431:              xori         t2, s11, -475
                  bne          t5, t1, 440f
                  slti         zero, a1, -1110
                  nop
                  sll          s1, zero, a1
                  srl          a4, t3, sp
                  sltiu        zero, a3, 319
                  srl          a7, ra, t4
                  sltiu        s0, gp, -1580
440:              andi         a3, a1, -1258
                  bltu         tp, a3, 453f
442:              addi         t1, s6, 859
                  or           s0, s11, s11
444:              bltu         a1, tp, 457f
                  auipc        t4, 484687
                  add          s1, a4, ra
                  ori          s0, a7, 1053
                  xor          s8, a4, a0
                  andi         t3, gp, -15
                  lui          a6, 540847
                  nop
                  addi         a4, s0, -1660
453:              bltu         t4, a7, 465f
                  lui          s9, 1022690
                  sll          s0, a0, a7
                  bge          s11, a5, 474f
457:              sra          s10, a3, t0
                  xori         a7, s2, 8
                  srl          s4, a3, s4
                  bge          s0, t5, 478f
                  andi         s3, t3, 459
                  bge          s3, s3, 478f
                  add          a5, s8, s5
                  andi         s2, t6, -2033
465:              sll          s6, s11, s0
                  xor          a4, s0, s7
                  slti         s6, ra, -907
                  sra          s7, t0, s11
                  slt          t2, s9, a3
                  slti         s10, t5, -1411
                  sltiu        t2, s6, -45
                  sltiu        a7, tp, 1488
                  sltiu        t0, a7, -1031
474:              and          t5, gp, s1
                  beq          tp, zero, 490f
                  slti         s1, a3, -935
                  srli         a2, gp, 2
478:              bgeu         s8, s8, 497f
                  bne          a1, s7, 495f
                  sub          a4, t2, s5
                  sll          s4, gp, s3
                  srl          a5, s8, a0
                  bge          t3, s8, 497f
                  auipc        s4, 889593
                  blt          a4, sp, 504f
                  xori         s1, t1, -1046
                  ori          s4, ra, 123
                  blt          t5, s2, 497f
                  srai         a2, t5, 28
490:              add          a6, s5, s2
                  or           a5, s11, a1
                  sra          a2, a6, a5
                  srai         s6, a5, 6
                  lui          zero, 61142
495:              blt          s3, s4, 511f
                  addi         s0, s5, 1469
497:              sll          t6, a2, t1
                  xori         t1, s6, -2006
                  slt          s2, sp, t0
                  sll          s6, s1, gp
                  sll          s8, s2, a5
                  slti         s10, a0, 955
                  bltu         sp, tp, 507f
504:              nop
                  bge          s7, t2, 514f
                  or           t6, s9, zero
507:              slti         a2, s4, 1107
                  sub          a7, a1, a5
                  nop
                  xor          s4, s11, s8
511:              auipc        t5, 387077
                  xori         s10, t1, 844
                  nop
514:              sra          a3, t1, t3
                  xor          a7, s1, a4
                  sra          t1, ra, t3
                  bge          ra, t5, 531f
                  blt          s6, s9, 526f
                  lui          a1, 1024031
                  xori         s1, t3, -666
                  auipc        t2, 566606
                  bge          s8, s4, 535f
                  andi         s10, a5, -137
                  sll          s11, s0, s7
                  auipc        a5, 925752
526:              bltu         a7, a2, 539f
                  nop
                  nop
                  or           s7, s0, s7
                  slti         a3, s7, -1907
531:              addi         t1, zero, 1343
                  sra          t2, a4, a3
                  srl          t0, t4, a3
                  sra          a4, t3, a5
535:              bltu         s5, a4, 542f
                  sll          a2, a6, tp
                  beq          ra, t3, 541f
                  blt          t3, a6, 554f
539:              beq          s3, a1, 559f
                  sra          s2, t3, s6
541:              or           s7, sp, t5
542:              slt          a1, s9, t4
                  bne          tp, s6, 550f
                  andi         s0, gp, 1307
                  slt          t6, a6, t6
                  sub          t3, tp, s0
                  slli         t5, s10, 21
                  and          zero, a7, s4
                  ori          ra, a4, 1680
550:              addi         gp, t4, -1058
                  bge          a6, s4, 558f
                  beq          a6, s0, 553f
553:              srl          s3, a3, sp
554:              sub          t6, a2, a2
                  bgeu         tp, t1, 567f
                  beq          s1, s0, 568f
                  bne          s4, s8, 565f
558:              bgeu         s8, s3, 578f
559:              srl          gp, s10, s11
                  ori          zero, tp, 1260
                  andi         t4, gp, -247
                  slli         zero, s8, 11
                  slt          s10, s10, a1
                  bgeu         s1, t5, 578f
565:              auipc        s4, 464687
                  bne          s10, s8, 580f
567:              slti         s6, t3, 423
568:              auipc        a4, 694864
                  xori         ra, s1, -792
                  xori         a3, s3, -22
                  srli         t1, sp, 23
                  sub          s7, a1, s7
                  la           s4, region_1+547 #start riscv_load_store_rand_instr_stream_1
                  sltu         a1, s5, a2
                  srai         s9, s11, 3
                  lb           a6, -15(s4)
                  slt          a4, s1, s1
                  lui          a2, 302020
                  lbu          t5, -2(s4)
                  sb           s1, -12(s4)
                  lw           t5, 9(s4)
                  slli         gp, ra, 21
                  sub          ra, zero, s9
                  lw           s5, -7(s4)
                  sltiu        s9, t1, 604
                  lw           s11, -11(s4)
                  sw           ra, 5(s4)
                  sra          t6, s2, zero
                  lbu          s0, 4(s4)
                  addi         t4, s11, -892
                  lbu          s3, -1(s4)
                  srli         a2, sp, 24
                  sh           tp, -3(s4)
                  lb           gp, -4(s4)
                  add          t5, a4, t1
                  lw           a4, -7(s4)
                  lui          gp, 963692
                  nop
                  ori          t6, s4, 144
                  lh           s8, -9(s4)
                  sra          t5, t5, a6
                  lb           s9, -10(s4)
                  sub          t2, t2, a3
                  lb           s1, -16(s4)
                  sw           t4, 13(s4)
                  sh           s3, -3(s4)
                  srai         a6, s1, 19
                  andi         t2, t4, 1886
                  lbu          ra, -6(s4)
                  ori          a2, a3, -981
                  slti         s2, t3, 1797
                  lh           gp, -13(s4)
                  lhu          s6, -9(s4)
                  lbu          zero, 8(s4)
                  ori          a1, a2, -1317
                  lbu          t5, -7(s4) #end riscv_load_store_rand_instr_stream_1
                  xori         t2, s11, 660
                  and          s2, a0, zero
                  sra          t2, s9, t6
                  add          ra, s5, t6
                  lui          a3, 698279
578:              slli         s10, t4, 8
                  slti         a1, s9, -942
580:              srl          s0, s10, s2
                  bltu         s3, a0, 597f
                  srli         gp, a4, 15
                  slli         a5, a2, 11
                  bne          zero, t5, 602f
                  slli         t5, a2, 0
                  slti         t1, s9, 2012
                  sltu         a5, t5, ra
                  ori          s0, s1, 124
                  ori          s11, sp, -1482
                  nop
                  sra          a5, s5, t2
                  bne          a7, t1, 610f
                  slli         a3, t2, 28
                  srl          s3, a6, s2
                  slt          t6, ra, a2
                  blt          s11, s0, 611f
597:              slli         s5, a6, 9
                  lui          s3, 279246
                  xori         a4, t4, 1405
                  ori          t2, a5, 408
                  lui          s3, 780488
602:              add          s3, ra, zero
                  bge          gp, s3, 612f
                  blt          a0, t1, 619f
                  slti         s5, s10, 1994
                  bge          a0, s5, 615f
                  slti         a7, a4, 232
                  srli         t4, sp, 9
                  beq          ra, a5, 613f
610:              sll          a6, t1, t2
611:              blt          s10, a4, 618f
612:              sub          s8, zero, a7
613:              bgeu         t2, gp, 620f
                  xor          a6, t0, s6
615:              slti         s5, s6, 945
                  auipc        t0, 1034339
                  srli         s11, a7, 16
618:              bgeu         t5, s3, 627f
619:              bge          zero, ra, 620f
620:              auipc        a7, 771921
                  xori         s2, a6, 801
                  srl          s10, a5, t0
                  bltu         s6, s1, 627f
                  sra          a1, ra, s11
                  sub          t5, zero, a2
                  sra          t5, t1, ra
627:              sltiu        s1, s10, 1110
                  srl          s11, t5, s4
                  srl          t0, a2, a3
                  lw           a5, 4(a0)
                  ori          zero, s8, 23
                  sltu         a6, t0, s2
                  addi         a0, a0, 16
                  slli         a1, t5, 5
                  andi         s11, tp, -219
                  sub          s9, t5, t2
                  xor          a2, s4, s6
860:              addi x25, x15, 1
860:              jalr x25, x25, 0
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
.word 0xd5e747af, 0xa87c786a, 0xd4fa5619, 0xcce70648, 0x6fe11fcd, 0x9d1487e7, 0x461a72b8, 0x5fada9c3
.word 0xa4e92f88, 0xc77bc0a0, 0x516c3504, 0xb2ff38fe, 0xf1a95cd1, 0xadb500b5, 0xc3c39c3e, 0x21671092
.word 0x28591c8a, 0x1d1a7d10, 0xcfa2cf21, 0x7d331a06, 0xc0013b25, 0x68e7b1c3, 0x66fa8e49, 0x70bd9ab4
.word 0xd70eb663, 0x7956c5a3, 0x6f44cc70, 0xab4ffbae, 0x101f47c1, 0x5215ffb3, 0x0cf98061, 0x6d320373
.word 0x2046d8f5, 0x7529094f, 0x0b47868e, 0x41226fd1, 0x03defa71, 0x83fe749b, 0x7153cfd0, 0x047111ba
.word 0x5a668e06, 0x0c9e05cb, 0x3757ec76, 0x32513e96, 0xf89871b8, 0x3d2599a1, 0x7d89d65b, 0xfe5c4fec
.word 0xa1f92e16, 0x24c9c1f7, 0xc783b234, 0xfbed48a1, 0xf317560c, 0x43905efe, 0xed140973, 0xb266e315
.word 0x8f3d8978, 0x7a88cf8c, 0xface187f, 0xb3fc4a45, 0xf8c31749, 0xc33d3dde, 0x79deab96, 0x295ee009
.word 0x182f1cd8, 0x29e6948c, 0x35c5d108, 0xe76ae251, 0xe0372cac, 0x26000ced, 0x4a21dea4, 0x1643dfbd
.word 0xf6ce9bd3, 0xf07b0d84, 0x34d9c178, 0x7c22f601, 0x1f2e5e1b, 0x45d0c323, 0xde10adb7, 0x1a3f10a7
.word 0x83218c12, 0x17e9f80d, 0xa89b2b43, 0xc17b0efd, 0x3cad36af, 0x4ad41d1c, 0xf821173a, 0xf4b4f65c
.word 0x462eee38, 0x2effd4c5, 0x5f804aad, 0x2cf215c0, 0x0d8c2e76, 0x1701ba72, 0xa257f73b, 0x0ed184b7
.word 0x62abb9ae, 0xd247093d, 0x56204d1a, 0x802aeebf, 0x724a0ac8, 0xe40f9681, 0x960bb1f1, 0xaf2fc6af
.word 0x2e040783, 0x0420b9d3, 0x68ebdfda, 0x5eb300f3, 0xcdf1fbd5, 0xf21835a6, 0x0411ad6d, 0x8fa4da6e
.word 0xae9a40d3, 0x26769320, 0x0f3319cc, 0xdda3f1b5, 0xbaa2c86c, 0x5d0ef280, 0x05048e5d, 0x6fb20422
.word 0x0b1ef190, 0x29b7f0b4, 0xc54b40fa, 0xaf99d11f, 0x83e03535, 0xec30bb8e, 0x9f691db3, 0x38c5d2a6
.word 0x2ce659f2, 0xafcdf4c1, 0x4368e0d5, 0x5f4dd3cb, 0xf977ff83, 0xc1410177, 0xe5515978, 0x99770fe2
.word 0x8eb430f2, 0x063c42cc, 0x932fa242, 0x10ff56ad, 0x572acfa4, 0x6c1ac9e8, 0x8abd1f77, 0x18f6ef53
.word 0x9191a634, 0xf2fc8e7d, 0x2765d9e7, 0xa476847d, 0xda3125aa, 0x0416d623, 0x9b0b8b95, 0x0868f688
.word 0x937fb531, 0x9802e705, 0x60a1be67, 0x57e46afe, 0xb325f7c6, 0xa645d6ac, 0x9607a6a0, 0xac75c5c7
.word 0x0459b410, 0x45ed4397, 0x2504f141, 0xe9ff0c70, 0xc3eb8dfd, 0x552ea44f, 0x220d7e7f, 0x6ffc87cb
.word 0x26caffe5, 0x34a58e6b, 0xbea1b65d, 0x164f3220, 0x6cd81f71, 0x6302ac4c, 0xa8713a19, 0xd2af9061
.word 0x7c1929de, 0xffb4ebab, 0x57c6870a, 0x0586516f, 0x31f89b5c, 0x285c236b, 0x7fd20ef5, 0x087c3e16
.word 0x725a1a50, 0x933a4b55, 0x9ac5b185, 0x4ecd1ce0, 0xf114538b, 0x6edeb466, 0x2d4cf8f9, 0x865dddbf
.word 0x3829a45f, 0xdf3641a2, 0xf505e177, 0x9a0ab2d1, 0x2b5aeef4, 0x8637fbb0, 0xb7077231, 0xa43eb24a
.word 0xf20fd1e6, 0xef3bb1d3, 0xf475bba7, 0x35e0ae50, 0x513a2456, 0xb022efca, 0xd083aa8b, 0xafbd98b5
.word 0x4fa39858, 0x07813cc8, 0x84c280dc, 0x49f8c8e0, 0xf40d792c, 0x895778d0, 0xc4c6aede, 0xbc9eeaed
.word 0x3a22f0db, 0x9304ba2c, 0xcb27a538, 0x801f88d0, 0x1501afa8, 0xf1146854, 0x8ea9c075, 0x032f4418
.word 0x2597cf5b, 0xd2b7ba45, 0x55261992, 0x1d46b337, 0xb64e315e, 0xc5fb2bcd, 0xeccfaf14, 0xf9c85110
.word 0x5a700f87, 0x221fbef2, 0x8169d949, 0x52c8d06a, 0x70ced056, 0xcb3bbe18, 0x1a4266c0, 0xaaf85758
.word 0x6288602d, 0x83b15591, 0x93d5cf52, 0x5c89e67f, 0x25d53b54, 0x31d4b525, 0x45bf6b1c, 0x0ff7c37c
.word 0x86c4e391, 0x64279327, 0x36f86db8, 0x5c41efbc, 0xd984a249, 0x9edb0441, 0x22f3d1a3, 0xf53ea304
.word 0xcbb1662c, 0x18fcaca8, 0x1ae9a6f5, 0xc4977d7b, 0x1eeb3ddb, 0x276e283c, 0xd324a50b, 0x3b4a0e18
.word 0x1a080f0d, 0xd0372f08, 0x493e440e, 0x3abf86d1, 0x9b637364, 0xb9dfc8ff, 0x4767fa80, 0x17032b92
.word 0xe94ac591, 0xcf5a8d75, 0x71dca4e1, 0xc3e11041, 0x2fd8f028, 0x5ab9fc60, 0xf096d529, 0xc10e8933
.word 0xa4e28bb3, 0xe83525e3, 0x21239a50, 0x89da1197, 0xc50cccec, 0x2a353889, 0x7ca16a74, 0x247175ee
.word 0x0aaf84cf, 0x70efc182, 0x90b87580, 0x32a81fae, 0x7911bf60, 0x87460ffe, 0x030b31b3, 0x7cf70ef1
.word 0x519c5410, 0xeabe805b, 0x102eeeec, 0xc8f341f1, 0x036120bb, 0x2c2ec6b8, 0xa9060b97, 0xcd7d8157
.word 0x55593581, 0x1657dcb0, 0x8c3f0ff9, 0x0f24c95b, 0x5c972204, 0x6ba7fead, 0x2ffa4cff, 0x1d38581e
.word 0x1baec814, 0x2844713c, 0x6095e3c6, 0x7c902d02, 0xe0f54e74, 0x4c10cafe, 0x55d596c6, 0xbb08f29f
.word 0xf2af9b70, 0x70e6c3d5, 0x3afedbf6, 0xe601d97e, 0x11337727, 0xea6a45d5, 0x1226e192, 0x1f0329f8
.word 0xe81692a0, 0xde307601, 0x54052d22, 0xddc93730, 0x03251779, 0xa6f185fe, 0x849ad95a, 0x6359ec0e
.word 0x07b94c40, 0x56ac8afe, 0x6d4a4e18, 0x7f452b83, 0x3e7d29cc, 0x65abf971, 0x054ef1a2, 0x4fa14499
.word 0x7910f3b6, 0x4dd3066f, 0x3931ebb9, 0xd87fd501, 0x88d95c72, 0x39f0a9fb, 0x6ab5b9f3, 0xf0ea783f
.word 0x22770c85, 0xcc82ada1, 0x499b5ba1, 0xb546a166, 0x8401c656, 0xb2e19148, 0xa184fc98, 0x9daab359
.word 0x2de618b0, 0x96e21b8f, 0x00e2ce46, 0xe0834b52, 0x5a5bcc33, 0xef4a48ee, 0xd07daab9, 0x7aff4314
.word 0xbfd67710, 0x5fd2b0d7, 0xa7d82f5f, 0x415a4601, 0x91a58c7d, 0x7e4daef7, 0x3b82062b, 0x2240cb9e
.word 0xdfcbed8d, 0xd7a078bd, 0x11e2d91c, 0xbd76e0e1, 0x901713d6, 0xccb73b9d, 0x3ee5c9ee, 0xe952789a
.word 0x31c368f3, 0xac26f318, 0x2364ad0b, 0x1ae9663f, 0x54c97c27, 0x03dbf089, 0xeb23a4b8, 0x2f4358d0
.word 0xcc02e576, 0x84054b37, 0xa497aa9f, 0x85e7b00a, 0x5da870c8, 0x0ffcd0b2, 0x02f44efb, 0x8126b067
.word 0x9e70c1c1, 0xbea91880, 0xd917122e, 0x1a19b12a, 0x4220fe4f, 0x180bd5b3, 0xa37bebc9, 0x69df609d
.word 0xd06fa6e3, 0x3d25b706, 0x36cb1d89, 0x44f749bf, 0x6f4c03e0, 0x30a8dfdb, 0x296ce3be, 0x7b503bd1
.word 0xc2a534df, 0xca999eda, 0x49dc969d, 0xd560ef06, 0x6256f2b9, 0x6ed4c677, 0x6258deb0, 0x791b72aa
.word 0x80c2a557, 0xf4ea49c9, 0x0c45358f, 0xad831d3c, 0x58089640, 0x2e6c7085, 0xc048e8cb, 0x1c15749a
.word 0x4e40a017, 0x2c5dd8c7, 0xb787f7e8, 0x1c174d5e, 0x853490c5, 0x67eec29f, 0xe227b6ef, 0x7f78588e
.word 0x7a6c924a, 0x6376313e, 0xf3d80b47, 0x2c76ebf1, 0x48d3604d, 0x9871da13, 0x586eb780, 0x4c5ddf11
.word 0x8af40f82, 0x645c180f, 0x2bd643a2, 0x4648fffc, 0xb059c496, 0xbeb75a6e, 0xb1201d82, 0x1a6e6d87
.word 0xf4283c3d, 0x870bc431, 0xd1f95e88, 0x93198fc3, 0x1548b6bf, 0x35b003ad, 0xc025db10, 0x8d6d9557
.word 0x32cd1e81, 0xaa647556, 0xcba4017d, 0x40c12580, 0x8037c261, 0x9b0d4ba7, 0x1758237a, 0x6c65c8f0
.word 0x95bd2641, 0x1f0f6228, 0x95f4618a, 0xac2efef3, 0xd67ba79c, 0xe34656b0, 0xb30e67f5, 0x8d88ec13
.word 0xc58d90bc, 0xafcf1eb3, 0xa3021a99, 0x84a87d90, 0x419c7aa3, 0xeb23183d, 0x4cb9bdfa, 0x23f09802
.word 0xe82431a4, 0xd9d9aaa0, 0xddf05fa2, 0x46865dea, 0x6623b129, 0xa0a7cfd1, 0x6e21d580, 0x876bf78d
.word 0x112d2e64, 0x72af9542, 0x73604d38, 0x0fb34953
.section .region_1,"aw",@progbits;
region_1:
.word 0xaa4b7bc2, 0x3586289e, 0x0a890b03, 0x90651d5e, 0x874cfa9e, 0xdba9fe20, 0x30fd805e, 0xa4b20bd5
.word 0x454e506f, 0x7c864605, 0x8ca49d71, 0x15f92ea7, 0x3b852c5e, 0x5f7d2d56, 0xb1bbea9b, 0x23dad257
.word 0x1e969ace, 0xe5afa367, 0x40c3001a, 0x7eb1722f, 0xc5e8ff5c, 0x14470c11, 0xf82d8e3e, 0x0002c27b
.word 0x9920d71d, 0xd708dc09, 0x4e5fe0db, 0xa69f002e, 0x0fe145d9, 0xc0f79420, 0x2accee97, 0xa16483a1
.word 0x5d8ef387, 0x2ed8a89c, 0xce1838c9, 0x392a9353, 0xd35d332a, 0xb02aeffc, 0x8baf00a0, 0xedff3913
.word 0xd0482f3e, 0xb8521293, 0xef8a9569, 0x1b157d3d, 0x7d70af9c, 0xa085d8d0, 0x3f9065b0, 0xe04d5e67
.word 0xbfb49ed0, 0x708fcbc7, 0x064c24c4, 0x1bdd3c04, 0x78fea00e, 0x7cfe5a51, 0xa09d0145, 0x19c3d196
.word 0x261eae78, 0xf1235002, 0x174a9fd3, 0xe2c82811, 0x886757b4, 0xb25d57c0, 0x33fae0c6, 0xf6239f1e
.word 0xc2497404, 0x853d7f52, 0x947d8903, 0x800457e1, 0x0a70cd62, 0x9ce05d30, 0x0b860203, 0xb70fccdc
.word 0x1d193ff4, 0x28acae11, 0x796ee994, 0x380cb732, 0x541a3105, 0x2b09cf5e, 0x3138b3e0, 0xee51c6e7
.word 0x477dfba7, 0xbd8d8d19, 0xc701b608, 0x53b98946, 0x316d312c, 0x79395e21, 0x51182c74, 0xa7adaf6c
.word 0x6385aa8f, 0x9fa6aed2, 0xcfef3a3c, 0xf64bc7a1, 0x21ed4f1f, 0x5272c3fd, 0x686e2c39, 0x1fa626e2
.word 0x347d2400, 0x52edbf3d, 0xcdff11a7, 0x7a6b3c0d, 0x56fdd740, 0xfa2b97bd, 0xca2840e0, 0xc3d6aa83
.word 0x61ef2297, 0x6af6b4bf, 0xd280354d, 0xf1a216fe, 0xeb5214d2, 0xc313c793, 0xc5082726, 0x7063d67a
.word 0x2b1bffc4, 0x2e197f4f, 0xf979484d, 0xf818de1c, 0x3811d0a8, 0x1215cd53, 0x1ca3267b, 0xc5d0f2e3
.word 0x5548965f, 0xddcbb59f, 0xf9bb0059, 0x00f6ac72, 0xdeb0c5fa, 0x1b132db7, 0xaadc676e, 0xfbb1d123
.word 0x7a5caba9, 0x5217a298, 0xda010971, 0x5f0a750c, 0x7bdd557f, 0x06c12e14, 0x902a0d85, 0xa43d0245
.word 0xeb8d2ad4, 0x787503ee, 0xa38e649f, 0x6b9b2410, 0x843db0d1, 0xd5b0a58e, 0x9014333e, 0x75257321
.word 0xf1677ca8, 0x734c5ec3, 0x63de314f, 0x6e390c63, 0xe9f66baf, 0x556d5804, 0x7199c6e1, 0x5c42aefb
.word 0x5294f290, 0xd29ec900, 0x69ec5965, 0x9495bf80, 0x0d1323ea, 0xffb2acff, 0x62d08f98, 0xb47fda43
.word 0xec4ab8c3, 0x526ba3fd, 0x4526f5d4, 0xd7f4e9b4, 0x77850ddc, 0xa7bf9508, 0x8a0c707e, 0xc1370398
.word 0xd9e802a4, 0xbe53a97b, 0x798500a9, 0x7bd5b711, 0x6107774a, 0x07061a3d, 0x7c2a58c9, 0x26ac17f3
.word 0x9fa2c935, 0xeb95f1c0, 0x50b1dcf7, 0x3cc41a25, 0x019f360b, 0x844b2225, 0x1f607648, 0xe6d56ed8
.word 0xb223aa6e, 0x048d524b, 0x033008d2, 0x6ae45c75, 0x082887c8, 0x0bf41011, 0xb18f6c41, 0x28959248
.word 0x2bffcc91, 0x9ac425dd, 0x053abe07, 0x35e7688b, 0x5e212c54, 0x4ca22bf5, 0x46689256, 0x5467c716
.word 0x39865454, 0xaad89a58, 0x2dd68859, 0x35b7e06d, 0xc2d5bdb7, 0x3a3d6eb4, 0xb7b48176, 0x6d6e1cc8
.word 0xfeefde9a, 0x3b9408bf, 0xbb535437, 0x532bfa11, 0xe813eba7, 0x3fbbdcf7, 0x70b64fac, 0xde846b22
.word 0xa45d1b47, 0x6a95f51b, 0x61061d7b, 0xd6237e0b, 0xa571a200, 0xa8871e7f, 0x8e39b705, 0xbbda2e83
.word 0xccd0c154, 0xe40a58df, 0x8a55c9f5, 0xd7014dc2, 0x263a63f5, 0xdf771724, 0x7580abb0, 0xfa206dab
.word 0xe8e5ad52, 0xcaaae57e, 0x7f2f4e99, 0xdb27a0ee, 0x48161377, 0xebec2df7, 0x79e502b8, 0x88a2d74b
.word 0x937e4036, 0x857220c6, 0x60c37cbd, 0xd58829f5, 0x9bd29d8d, 0x7a1d7250, 0x2545a4f7, 0xf1368c66
.word 0x78d0c9ab, 0x9eebc489, 0xe2a22147, 0x3911d852, 0x086f36a1, 0xa6ca0b67, 0x49a96aef, 0x3473d692
.word 0x57b50901, 0xf9a816b6, 0x1c2536d4, 0x0587dfe5, 0x3444a071, 0xb05b3006, 0xf5a4bcbb, 0x8dd55602
.word 0x173cbaf8, 0xcdc021fc, 0xe45c3ab5, 0xcddf48b3, 0x6d72cb9d, 0x1fecec09, 0xa8e77807, 0x6f012462
.word 0x1c086020, 0xc1aa8b06, 0xd1f1f137, 0x48f952cb, 0x4f37a573, 0x433f142a, 0xb24e4345, 0x5d108204
.word 0x65261708, 0x3afe7564, 0x765d5d5d, 0x92bf1055, 0xcd7e322b, 0xb280c602, 0x424359e9, 0xdfb40f0e
.word 0x90ff25e3, 0x270b90fe, 0x29c0e42e, 0xa8f703f8, 0x4691e8ac, 0xc17bb231, 0xae3f1790, 0x83100758
.word 0x2171c9b3, 0x2aae37b8, 0x2a6b822b, 0x7cdce368, 0xf170d59b, 0x0edb5dad, 0x9a3d44d9, 0xac62b6ea
.word 0x4c62c46a, 0x931c9f3a, 0x6ea8aa36, 0x0eeb6778, 0xd1944549, 0xa8be164d, 0xf5e941fd, 0x64c3c360
.word 0x18982db6, 0xbdc96341, 0x9d8d63d9, 0xa7228831, 0x60ed9d22, 0x012c4029, 0x6500039b, 0x0c83d1a6
.word 0xe8629abc, 0xbe5faded, 0x8236159f, 0xc6e022e1, 0x832c860d, 0x0b2f9a16, 0x340ac969, 0x2b639573
.word 0x886f8ec2, 0x29821910, 0xdf50c56c, 0x88017ed9, 0x47c17857, 0x7d77f09b, 0x2a5899f5, 0xb8fbce50
.word 0xd5ab22f5, 0x084fad24, 0xa6b4d158, 0xc4f0ded3, 0x4633a768, 0x667c4de3, 0x69ef9798, 0x9eb202b0
.word 0x39419913, 0xaed85c27, 0x88d49d7c, 0xec440470, 0xa2a3cd2e, 0x0ad8ea1b, 0x4c9da859, 0xe176c810
.word 0x377d2988, 0xd06f2a16, 0xd634bf9b, 0xdf0f4bf8, 0xddea55e8, 0x66a2c1f2, 0x41d2cc82, 0xd32fbe49
.word 0x62b2fee0, 0xae142f0b, 0xdca9a935, 0xaa4a78da, 0x78e85c99, 0x92c3f395, 0x2bc36e13, 0x440d32fb
.word 0xf55d4441, 0x321fb866, 0x9a0042b9, 0x20cec55a, 0xbf60a3c6, 0xfa01a806, 0x3279883b, 0xd98e3f21
.word 0xbe579774, 0x502ecc88, 0x7fef9f0c, 0xa3a71220, 0x874112b3, 0x4776615c, 0x7a9f1e94, 0x207b5790
.word 0xa38681a7, 0xc3881f60, 0x55b634d0, 0x6994d43e, 0x01f01821, 0xe55b4c36, 0xcdf4c511, 0x5cec6f2a
.word 0xa59488a8, 0x346cf300, 0x7b024954, 0x907a9165, 0x8aaeae5f, 0x52f431ee, 0x0857c9eb, 0xec100b83
.word 0x77663a29, 0x79ae9a48, 0xdd69a2cd, 0x1a5fa538, 0x62be6862, 0xdb667526, 0x47fb5fd6, 0xef78928f
.word 0xa34c01f7, 0x460e4b24, 0x6f2d55ea, 0x5c906fdb, 0x9f3f1af2, 0x39f8ce23, 0xdac95f83, 0x19832b3e
.word 0x3924b477, 0x2e4ff032, 0xc77acdc7, 0xdda03649, 0x94cbd105, 0x48e06e72, 0x28703f44, 0x4a6e1094
.word 0x64c0a861, 0xff66bf74, 0x0f692295, 0x2b3a6f07, 0xf5489918, 0x2a0b0f1c, 0x3544c761, 0x92e0b7f8
.word 0x5d061707, 0xfaf570e6, 0xd2b127a1, 0x28955a50, 0xd4be8482, 0xbc0aab0e, 0xc00a6ce6, 0x1722f43a
.word 0x3cdba0e5, 0xc6725cc9, 0xfddb0b5d, 0xe487ed3a, 0x67214a6d, 0x042f55da, 0xf7b20510, 0x166c8c69
.word 0xe6bd06f6, 0xca8ddf15, 0x3c32a39f, 0xc2748cc5, 0x2d79f177, 0x03b5e52c, 0xd4aa7522, 0x236438f5
.word 0x38b702bf, 0x74e009cb, 0x8aa9a24d, 0x2deb0fb7, 0x666ca94c, 0x687385f4, 0x3bc6d807, 0x45c2c6f5
.word 0x79817ae4, 0x348f6e9d, 0x3393f242, 0x87d29f98, 0x29774359, 0xb162c3f8, 0x62183c87, 0xb13b5d15
.word 0xbede2d4c, 0xb917dcb0, 0x0b8e7035, 0x72e5cf63, 0x6dd8ee8b, 0xe7af9b48, 0x89ec2e20, 0xde71d8af
.word 0xae557339, 0x9d8e747e, 0x2c1a87f6, 0x1fc87eb7, 0x52240c82, 0x849a2aed, 0xed6351a6, 0xe8830ee3
.word 0x1bcf200c, 0x7ee96b1d, 0x92e1ea2f, 0x2cb11596, 0x8a79bfa2, 0x5ce347de, 0x4387a583, 0x470889b6
.word 0xd11a4f25, 0x6b59dc8f, 0xbc1a90fa, 0x911f8970
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
                  add x4, x10, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x17, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x17, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x17, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x17, x30, ecall_handler
                  li x30, 0x1
                  beq x17, x30, instr_fault_handler
                  li x30, 0x5
                  beq x17, x30, load_fault_handler
                  li x30, 0x7
                  beq x17, x30, store_fault_handler
                  li x30, 0xc
                  beq x17, x30, pt_fault_handler
                  li x30, 0xd
                  beq x17, x30, pt_fault_handler
                  li x30, 0xf
                  beq x17, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x10, x4, zero
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
                  add x10, x4, zero
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
                  add x10, x4, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x10, x4, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x10, x4, zero
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
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x10, x4, zero
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
