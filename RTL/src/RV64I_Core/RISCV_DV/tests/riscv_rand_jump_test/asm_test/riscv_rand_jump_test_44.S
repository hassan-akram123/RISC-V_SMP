.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x18, kernel_stack_end

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
                  li x0, 0xfc389b73
                  li x1, 0x0
                  li x2, 0xde882149
                  li x3, 0x0
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x7bcc078e
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0xf5c5238f
                  li x13, 0x8b98bee1
                  li x14, 0xf8ec7bf3
                  li x15, 0xf75594d9
                  li x16, 0x0
                  li x17, 0x6
                  li x19, 0xf9a71454
                  li x20, 0xd009dafa
                  li x21, 0xfbde63e4
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x5
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x39430da8
                  li x29, 0x0
                  li x30, 0x71f29e38
                  li x31, 0x0
                  la x4, user_stack_end
main:             la           t0, region_0+537 #start riscv_load_store_rand_instr_stream_5
                  lb           a2, 1077(t0)
                  sra          a6, t0, a5
                  lui          s0, 453673
                  or           t4, a2, gp
                  sltiu        a4, s6, -1051
                  ori          t5, a0, -499
                  sw           a3, 827(t0)
                  sb           a1, -260(t0)
                  sltiu        t1, s6, 689
                  lh           s9, -203(t0)
                  lb           a0, 966(t0)
                  lb           a6, 542(t0)
                  sb           s7, 1187(t0)
                  lhu          ra, 1319(t0)
                  lbu          s11, 910(t0)
                  sb           s9, 91(t0)
                  sltiu        a2, s11, 634
                  lb           a1, -271(t0)
                  lbu          s10, -68(t0)
                  xor          t4, s11, tp
                  nop
                  sb           a0, 501(t0)
                  and          s5, s0, a6
                  sb           t0, 397(t0)
                  lbu          t1, 1434(t0)
                  lh           a4, 307(t0)
                  sll          s1, a6, gp
                  auipc        zero, 574478
                  srai         ra, a2, 14
                  ori          t3, s11, -1386
                  slt          zero, a7, s0
                  slti         s3, a6, -275
                  lh           t4, 309(t0)
                  lb           t1, -504(t0)
                  lb           a5, -537(t0)
                  addi         gp, zero, -1638
                  lbu          t4, 1251(t0)
                  lb           sp, -439(t0)
                  or           s6, zero, s10
                  sh           sp, -499(t0)
                  lbu          t5, 674(t0)
                  sb           a0, 20(t0)
                  sb           a2, 352(t0)
                  xor          zero, a5, s7
                  sb           s10, 1114(t0)
                  slli         t3, s11, 23
                  lb           s4, 1408(t0)
                  sw           a3, 35(t0)
                  srai         gp, a6, 23
                  lb           sp, 1456(t0) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1311 #start riscv_load_store_rand_instr_stream_1
                  slti         s11, a4, 200
                  lbu          a6, -2(sp)
                  nop
                  sb           tp, 0(sp)
                  add          a4, s8, t6
                  xori         a6, gp, -1391
                  srl          a6, a5, a2
                  lh           s4, -1(sp)
                  lb           s5, -12(sp)
                  lbu          t6, -3(sp)
                  sll          a4, s6, a2
                  sub          s10, a5, s3
                  ori          a6, s7, -1216
                  auipc        gp, 440952
                  xor          s10, a4, t5
                  slli         a5, t5, 13
                  addi         a0, a0, 154
                  lb           s6, -12(sp)
                  srli         t5, s5, 15
                  andi         a0, s8, 1437
                  sw           t0, -15(sp)
                  auipc        s8, 129174
                  xori         a3, sp, 261
                  xori         t0, ra, -1310
                  ori          s7, s7, 351
                  or           t5, zero, t3
                  sub          a0, s1, s11
                  sltiu        a0, a0, -790
                  sra          t3, t6, t5
                  lbu          a3, -6(sp)
                  lbu          s8, -5(sp)
                  sb           s8, -16(sp)
                  sub          s0, s3, a0
                  sra          t1, a4, sp
                  lb           t3, -8(sp)
                  or           s0, sp, s10
                  sh           zero, 1(sp)
                  sb           a4, -10(sp)
                  and          a6, s7, sp
                  lbu          a1, -10(sp)
                  sb           a4, 4(sp)
                  lbu          a0, -8(sp)
                  sb           s1, 4(sp)
                  lb           s10, -7(sp)
                  sll          a3, s5, s0
                  lh           s8, -11(sp)
                  slli         s1, s11, 20
                  or           s6, t0, a7
                  sb           a1, -11(sp)
                  lbu          a5, 6(sp)
                  lb           a1, 13(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+178 #start riscv_load_store_rand_instr_stream_6
                  srl          s6, s9, s9
                  sb           t4, -14(sp)
                  lbu          s9, 11(sp)
                  sb           s11, -16(sp)
                  ori          s3, a4, 773
                  lw           t6, 10(sp)
                  lb           s9, 14(sp)
                  lhu          a1, 0(sp)
                  lbu          a4, -4(sp)
                  lh           s11, -10(sp)
                  slli         zero, t0, 24
                  slli         zero, t0, 29
                  sh           gp, 10(sp)
                  sb           s5, -3(sp)
                  addi         a2, t6, 852
                  lb           a0, -8(sp)
                  xori         t1, s9, -411
                  sb           zero, -3(sp)
                  sra          ra, a5, s5
                  lb           a1, 0(sp)
                  sra          a2, a4, s4
                  sll          s4, ra, s2
                  sh           s7, -6(sp)
                  srl          gp, ra, s4
                  slti         s5, s0, -938
                  srli         zero, t2, 4
                  lb           zero, 11(sp)
                  sb           t2, -15(sp)
                  lbu          s10, -6(sp)
                  sll          t3, s4, s8
                  sb           zero, 3(sp)
                  lbu          a0, -1(sp)
                  lbu          s5, 13(sp)
                  add          s5, s11, a0
                  ori          t6, s6, -1599
                  auipc        a2, 718232
                  lhu          s6, -16(sp)
                  lb           s0, 1(sp)
                  lb           s3, 9(sp)
                  srai         a2, a2, 9
                  lb           a1, 1(sp) #end riscv_load_store_rand_instr_stream_6
                  la           a2, region_1+1818 #start riscv_load_store_rand_instr_stream_3
                  srli         t3, s0, 26
                  nop
                  auipc        s5, 1022560
                  ori          s9, t1, -349
                  lbu          a1, 8(a2)
                  lh           s5, 6(a2)
                  lui          t1, 836240
                  lbu          s4, 5(a2)
                  sb           s7, -4(a2)
                  auipc        s4, 531797
                  sb           s9, 13(a2)
                  slli         a6, gp, 31
                  slti         t6, t0, 439
                  sb           sp, -11(a2)
                  lbu          a7, 11(a2)
                  slti         t4, a7, 401
                  add          a5, s7, s5
                  lhu          gp, 2(a2)
                  sh           a6, 14(a2)
                  lhu          sp, -10(a2)
                  slt          t3, s9, s5
                  lh           ra, -10(a2)
                  sb           a6, 2(a2)
                  xor          zero, a2, a7
                  and          s5, zero, s9
                  sb           s9, 11(a2)
                  slli         a7, a3, 30
                  sh           t6, 16(a2)
                  srli         s3, zero, 24
                  sh           a4, 12(a2)
                  sh           s7, 14(a2)
                  lbu          a5, 1(a2)
                  lhu          a4, -14(a2)
                  or           a0, s1, ra
                  sh           a0, 10(a2)
                  lbu          a7, 15(a2)
                  lb           s4, 7(a2)
                  lb           s11, 7(a2)
                  lbu          sp, -15(a2)
                  lb           sp, -11(a2)
                  ori          t6, s5, -2008
                  or           s8, s4, s11
                  lbu          a3, -7(a2)
                  sw           a6, -14(a2) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+696 #start riscv_load_store_rand_instr_stream_0
                  sb           a5, 3(sp)
                  sb           s1, 5(sp)
                  lbu          s3, 7(sp)
                  addi         s0, s7, -32
                  sll          zero, t3, s4
                  lb           ra, 3(sp)
                  sb           s10, 12(sp)
                  ori          s7, a0, 1563
                  slt          a2, s11, tp
                  and          a7, tp, s1
                  sub          a1, t1, t6
                  lbu          a0, 5(sp)
                  sb           s11, -15(sp)
                  sh           a2, 0(sp)
                  lh           s6, 14(sp)
                  lb           ra, 3(sp)
                  sb           s10, -3(sp)
                  lw           s4, -16(sp)
                  xori         s10, s11, 1555
                  sra          s8, a2, s11
                  sb           s8, -1(sp)
                  sh           t1, -8(sp)
                  lb           t0, 1(sp)
                  and          s8, t6, s0
                  lb           t4, -16(sp)
                  lb           t4, -15(sp)
                  lb           s6, 7(sp)
                  lbu          a5, -5(sp)
                  add          a5, s0, sp
                  lh           s1, 6(sp)
                  sb           s1, 5(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         s1, a3, s11
                  srl          t0, s6, t6
                  sltiu        s11, t3, -762
                  bne          a4, ra, 23f
                  nop
                  beq          s11, t4, 9f
                  addi         t0, sp, -777
                  sll          s11, gp, s1
                  and          zero, t5, s11
9:                bge          s1, t2, 28f
                  add          a7, s4, sp
                  srai         sp, t1, 5
                  xor          s0, a7, s9
                  auipc        a6, 88815
                  srai         a6, t6, 23
                  slti         t5, zero, 1801
                  slti         a0, s3, 481
                  sra          sp, t5, zero
                  srl          s8, t4, s8
                  xor          s1, s10, a2
                  bgeu         t3, a3, 25f
                  srli         zero, t1, 31
                  blt          a3, t4, 36f
23:               and          s1, t0, t5
                  or           s9, a0, t3
25:               bne          s6, s0, 34f
                  lui          s5, 912203
                  sub          ra, s6, t6
28:               slti         a3, gp, -1912
                  srai         a7, s1, 19
                  lui          a7, 466056
                  andi         a2, sp, -1550
                  slli         s8, a1, 27
                  slli         a4, t6, 11
34:               bge          t2, a1, 43f
                  bgeu         tp, a2, 36f
36:               add          s10, ra, a4
                  sub          ra, ra, a4
                  lui          s10, 213934
                  blt          s4, t4, 58f
                  add          s5, a5, s4
                  srl          a0, s11, s4
                  or           a0, s5, tp
43:               beq          t3, t1, 55f
                  srai         ra, s7, 6
                  srl          t5, sp, s6
                  xori         zero, t4, 1381
                  bge          s0, gp, 53f
                  nop
                  addi         a3, a1, 1279
                  addi         a6, ra, -1767
                  andi         s9, t4, 1647
                  srai         sp, t5, 22
53:               beq          t4, a5, 60f
                  nop
55:               bge          s10, s10, 69f
                  srl          sp, a1, s8
                  or           s6, a1, a1
58:               auipc        s6, 467730
                  nop
60:               beq          a3, zero, 65f
                  addi         t5, a7, 443
                  andi         zero, s9, 1091
                  xori         zero, zero, -2
                  xori         s10, s6, -196
65:               xor          s4, t0, a6
                  bne          a2, a6, 84f
                  add          sp, a6, t4
                  srli         t4, s10, 9
69:               bltu         t4, a3, 74f
                  sub          s9, s5, t6
                  auipc        a1, 408761
                  srai         s7, s9, 13
                  sltu         sp, s0, a1
74:               add          s11, s1, s3
                  and          a3, s3, tp
                  auipc        s11, 521282
                  bltu         s2, a0, 82f
                  xori         t3, s4, 1201
                  and          s11, s0, gp
                  blt          a4, t4, 93f
                  andi         gp, tp, 1780
82:               sltiu        s10, t0, -1599
                  slli         s5, s5, 31
84:               addi         a3, a4, -1578
                  auipc        s7, 836759
                  srli         sp, gp, 26
                  lui          s11, 26586
                  add          s9, a2, t2
                  or           s1, t0, tp
                  bgeu         a6, t2, 110f
                  auipc        a0, 690188
                  addi         s10, s3, 1255
93:               bne          a6, s8, 95f
                  add          a2, sp, sp
95:               ori          gp, s2, -544
                  slli         a7, t0, 25
                  slli         s10, a6, 27
                  slli         s3, s5, 6
                  la           t3, sub_1
                  auipc        a1, 1039948
                  addi         t5, t3, 1152
                  srai         a5, s4, 7
                  nop
                  addi         t3, t3, -230
                  and          a2, gp, t1
                  addi         a0, t3, -1914
                  bge          a2, a7, main_j2 #branch to jump instr
                  nop
                  lui          a1, 902285
main_j2:          jalr         a6, t3, 231 #jump main -> sub_1
                  or           t0, s4, tp
                  bge          zero, t5, 102f
                  addi         t0, zero, -1894
                  sltu         t4, t1, zero
102:              slt          s8, s5, a6
                  andi         a5, a4, 313
                  blt          s11, gp, 105f
105:              sltu         t3, t4, s4
                  nop
                  slli         a0, s1, 6
                  xori         a0, a7, 623
                  sltu         s1, a2, sp
110:              and          zero, a1, s1
                  slli         gp, a7, 6
                  lui          s9, 568793
                  or           s9, s4, s9
                  bgeu         a4, s11, 121f
                  sub          s10, s0, gp
                  auipc        s8, 596451
                  slti         s6, t1, -1525
                  nop
                  sltiu        a3, t6, -1619
                  srli         a4, s6, 31
121:              blt          s10, s4, 136f
                  or           ra, s5, gp
                  blt          t0, s7, 125f
                  andi         a0, t3, 1846
125:              srli         t1, a5, 30
                  blt          a4, a7, 133f
                  bgeu         s2, a2, 130f
                  xori         zero, s10, -1080
                  xori         s10, a5, 1435
130:              or           s11, zero, s6
                  srli         t5, s0, 5
                  la           s4, region_1+1920 #start riscv_load_store_rand_instr_stream_4
                  slli         s9, a6, 17
                  slli         s6, s2, 5
                  sub          s3, a5, s2
                  add          a1, s2, s5
                  sra          gp, a1, s3
                  andi         s0, a0, -1267
                  auipc        a7, 252265
                  ori          t1, s5, -1182
                  sub          a5, a1, a3
                  lbu          s3, -18(s4)
                  lb           a4, -15(s4)
                  sub          s8, s10, t3
                  sub          t3, s2, a4
                  or           t6, a6, a0
                  nop
                  sh           s4, 50(s4)
                  sltiu        s11, s1, 861
                  lh           zero, -70(s4)
                  srli         t0, a5, 2
                  lhu          s9, -246(s4)
                  lbu          s6, -207(s4)
                  slti         s6, a5, 1230
                  slli         s0, a5, 25
                  add          s9, a4, t6
                  slli         a3, sp, 17
                  slli         s6, s10, 29
                  xor          t4, gp, a1
                  sub          a3, s4, a4
                  nop
                  slti         s5, a3, 1716
                  sra          a2, a5, s8
                  srli         a5, s11, 20
                  sb           a5, -110(s4)
                  add          t4, t6, sp
                  addi         a0, s3, -481
                  lbu          s7, -123(s4)
                  lb           a5, -105(s4)
                  lb           s8, -72(s4) #end riscv_load_store_rand_instr_stream_4
                  add          zero, s3, s6
133:              slt          sp, a1, s11
                  lui          t3, 289771
                  srli         a5, s2, 22
136:              slt          s8, a7, a7
                  addi         ra, a7, 1558
                  srl          t4, t1, t1
                  ori          s0, gp, 76
                  slt          s0, s7, s8
                  slt          s1, s0, a1
                  sub          t3, a1, s8
                  auipc        t1, 605256
                  bltu         s11, a3, 158f
                  or           s8, s8, s2
                  and          a1, s6, s6
                  add          s4, gp, s1
                  bne          sp, s1, 155f
                  xori         zero, t0, -1776
                  auipc        s8, 129088
                  srai         s5, sp, 14
                  srl          t4, s5, s11
                  srai         s7, s0, 13
                  auipc        s5, 169655
155:              bltu         s10, t1, 169f
                  sltiu        a0, a6, 1355
                  xor          a3, t2, s8
158:              ori          s9, s0, 804
                  srai         ra, s5, 5
                  xori         s0, ra, 1617
                  or           s9, s1, t1
                  srli         a4, t2, 11
                  xori         a6, a3, -730
                  addi         a0, ra, -1257
                  xori         s8, s10, -790
                  srli         sp, s10, 3
                  sub          a6, s3, s2
                  sltu         t3, a1, t6
169:              auipc        a5, 824873
                  beq          t1, s8, 183f
                  bgeu         t5, t4, 190f
                  bltu         zero, a1, 179f
                  andi         s7, s5, 1170
                  ori          t0, ra, -854
                  lui          s4, 791264
                  bge          t0, s0, 178f
                  add          s8, t4, a4
178:              slti         t6, gp, 236
179:              xor          a2, a6, s0
                  bge          s9, sp, 189f
                  ori          s6, s2, 1521
                  srl          t3, s9, tp
183:              addi         t5, s9, 1012
                  srl          s4, sp, ra
                  slti         s0, s7, 441
                  slt          t1, tp, a6
                  sra          sp, s2, s4
                  ori          s9, gp, 786
189:              xor          s7, s5, t1
190:              sub          s0, s8, s3
                  bne          s9, tp, 205f
                  xori         a6, a2, 1276
                  sll          t1, t5, a1
                  srli         gp, a2, 15
                  beq          t5, t0, 214f
                  sra          s6, t3, sp
                  sltu         t3, gp, t2
                  bltu         s7, a2, 213f
                  slli         s6, a1, 12
                  auipc        t4, 842672
                  sub          a4, sp, a6
                  srl          s11, sp, a1
                  and          s1, s10, a3
                  andi         t4, s9, 666
205:              lui          t4, 603755
                  srl          s9, zero, a4
                  bne          s11, a4, 209f
                  ori          a5, s9, -1960
209:              blt          tp, a0, 229f
                  andi         a4, t4, -391
                  sub          t1, s3, s4
                  sra          s7, ra, a6
213:              sra          t5, a2, t6
214:              srl          t3, s3, tp
                  auipc        zero, 491446
                  addi         s11, a7, -1011
                  bne          s10, s10, 223f
                  xor          ra, sp, a7
                  add          t1, tp, s8
                  slti         s10, a1, 149
                  slli         t1, a5, 10
                  addi         t1, s7, -1826
223:              lui          a5, 954927
                  xor          s1, t3, s11
                  or           ra, s9, zero
                  slli         gp, a5, 6
                  sub          t1, s5, s9
                  slt          s7, a4, s5
229:              sltu         a7, s6, t5
                  sub          s0, t2, s0
                  sltiu        t4, gp, 354
                  or           a6, t1, s11
                  slti         s4, t3, 1298
                  bne          s8, t5, 239f
                  bne          s9, a5, 240f
                  andi         gp, a0, -384
                  sub          s10, s11, t4
                  sltiu        s7, a7, 151
239:              bgeu         a1, a5, 253f
240:              blt          s5, s4, 249f
                  bgeu         t3, t6, 253f
                  andi         a1, a5, 459
                  add          sp, sp, zero
                  auipc        s3, 217938
                  bgeu         t4, t0, 246f
246:              sltiu        a1, t3, -1500
                  blt          t2, t5, 252f
                  bgeu         t6, t4, 266f
249:              xor          a5, s10, s2
                  bne          a0, a4, 270f
                  bne          t4, s10, 255f
252:              nop
253:              and          ra, a6, gp
                  slli         a4, s10, 0
255:              xori         s0, a0, 376
                  auipc        t6, 918598
                  slti         s5, s0, 997
                  bltu         zero, a7, 259f
259:              srli         a5, s5, 24
                  xor          s8, ra, s0
                  sub          s6, t1, a6
                  srli         s8, s5, 1
                  sltu         a5, s9, t0
                  slli         s4, gp, 27
                  slli         s0, tp, 14
266:              ori          t0, gp, -1099
                  sub          a7, s5, sp
                  auipc        a5, 697243
                  sltiu        t3, s6, -775
270:              bltu         t0, s5, 284f
                  bge          s4, t2, 285f
                  auipc        sp, 958176
                  bltu         s9, s8, 280f
                  srl          a0, zero, t0
                  andi         t3, t5, -1437
                  sub          sp, a1, t3
                  and          a0, s8, s5
                  slt          s11, a3, t1
                  and          a0, a7, s6
280:              add          s3, t5, s8
                  sltu         s0, s8, gp
                  nop
                  sll          t1, a0, t5
284:              auipc        t4, 619088
285:              add          a1, a0, tp
                  sub          a7, s7, s3
                  sltiu        a0, a4, 78
                  nop
                  slti         a2, gp, -821
                  andi         a3, a7, -1659
                  or           s1, gp, a0
                  and          s11, s8, s9
                  bltu         t5, a2, 296f
                  blt          t5, s7, 301f
                  slli         t6, a7, 21
296:              ori          a7, s10, -1109
                  sll          t3, t2, sp
                  slli         s6, s1, 5
                  xori         zero, t1, -1328
                  lui          a4, 217948
301:              srai         a1, a4, 29
                  sll          a2, a7, a7
                  sltiu        gp, a4, 1734
                  sub          a5, zero, t3
                  andi         gp, s10, -304
                  ori          s0, a2, -1690
                  slt          a2, ra, s3
                  xor          t1, gp, a1
                  srl          zero, t2, a7
                  bne          s5, tp, 317f
                  xori         s0, a4, 700
                  sltiu        a1, ra, -1560
                  blt          a6, s8, 316f
                  addi         t3, s7, -1307
                  sltu         gp, sp, zero
316:              srli         t3, s4, 31
317:              sll          s1, a0, a2
                  sll          ra, s1, s6
                  srl          t4, gp, t4
                  bne          t2, s3, 325f
                  bge          gp, t1, 324f
                  srli         t4, s11, 12
                  lui          t6, 288605
324:              nop
325:              beq          gp, s5, 329f
                  slli         s1, s10, 21
                  or           gp, s11, s2
                  ori          t3, s11, -1531
329:              bne          ra, s5, 334f
                  auipc        s0, 932569
                  bgeu         sp, s10, 345f
                  auipc        a7, 681514
                  slli         s8, gp, 13
334:              sra          s6, s9, s10
                  slti         ra, s10, -1382
                  sub          sp, s9, s5
                  bge          t4, a4, 346f
                  slt          a7, s4, ra
                  and          s5, s10, s9
                  sra          gp, t1, s5
                  blt          s4, s7, 346f
                  sll          s11, sp, t1
                  andi         ra, s0, 257
                  and          a5, s2, t3
345:              andi         t5, s5, 1090
346:              srai         s8, t3, 20
                  beq          t5, t1, 366f
                  blt          a6, t5, 349f
349:              srl          a1, s3, gp
                  and          a3, a3, sp
                  bgeu         a4, s2, 360f
                  xor          t1, a1, s1
                  srli         gp, a7, 3
                  srai         a0, t3, 19
                  sub          s10, a4, a0
                  sltiu        s8, s3, 1390
                  andi         s3, t3, 807
                  slli         a4, s2, 16
                  slti         ra, t3, 10
360:              xori         ra, s9, -499
                  bne          s1, s0, 368f
                  sub          s5, a7, ra
                  srai         s9, a1, 4
                  andi         s1, a6, -430
                  sll          t4, t6, a4
366:              sub          s10, t5, gp
                  and          a2, s6, tp
368:              xori         a1, t1, -1599
                  addi         s7, a3, -1437
                  bgeu         t3, sp, 383f
                  sra          t5, a4, s11
                  and          s10, sp, s0
                  xor          a5, s11, t5
                  sra          a2, s9, a1
                  lui          t3, 845485
                  slti         s7, s8, -1120
                  bltu         s7, a5, 391f
                  bge          s10, t5, 379f
379:              xori         t3, t3, 1224
                  addi         a7, a7, -436
                  srai         a7, t2, 8
                  beq          s0, s9, 384f
383:              and          a3, a1, s5
384:              andi         s3, t4, 1026
                  bltu         a2, s10, 392f
                  bgeu         s5, ra, 406f
                  slt          s10, s7, zero
                  srl          s11, s5, a7
                  xori         gp, s8, -1473
                  sub          s11, a0, s1
391:              srl          a6, s8, zero
392:              add          t3, s10, t6
                  bge          ra, t5, 396f
                  bne          gp, a6, 412f
                  addi         s3, a2, 1597
                  and          a5, sp, a6
                  add          s11, a7, t1
                  la           s4, sub_2
                  addi         t1, s5, -1428
                  sll          s10, a3, s5
                  addi         s4, s4, -371
                  ori          s9, ra, 1311
main_j1:          jalr         a6, s4, 372 #jump main -> sub_2
                  srli         s4, s5, 3
396:              sll          t1, s2, s7
                  srl          sp, tp, zero
                  add          t4, tp, s0
                  bltu         s11, t2, 418f
                  sub          t3, t2, t5
                  xori         t0, s3, 1152
                  bge          a5, t2, 407f
                  slti         t5, t4, 134
                  slti         s4, s2, 1876
                  sra          gp, s6, t2
406:              sltiu        t1, t1, -1003
407:              blt          t4, a2, 409f
                  srai         t0, a0, 10
409:              slli         t3, a3, 25
                  addi         zero, t3, 99
                  or           a1, t1, t1
412:              auipc        s5, 899482
                  slli         a3, s2, 27
                  addi         sp, a0, 2009
                  sub          s10, sp, t6
                  xori         s0, ra, -219
                  bltu         zero, a6, 437f
418:              sltu         a0, gp, t2
                  beq          s0, tp, 426f
                  sltu         a1, s7, s6
                  add          t4, s7, t0
                  blt          a6, s0, 436f
                  xori         zero, s6, 1961
                  xor          s7, t6, s8
                  srli         a6, t2, 21
426:              srai         s10, s5, 3
                  srai         a3, t3, 2
                  sltiu        a5, s3, 10
                  sltu         t4, t3, t3
                  srl          t1, a1, a2
                  slli         s3, t0, 5
                  bltu         a5, a7, 439f
                  slti         t3, t3, 511
                  srl          s1, sp, a3
                  srl          s10, t3, s8
436:              sra          s0, s11, a6
437:              bltu         t2, s10, 442f
                  slli         t4, t5, 1
439:              auipc        a3, 292668
                  bltu         ra, a2, 454f
                  bgeu         s0, s2, 453f
442:              sltiu        t3, s5, -528
                  blt          s11, s0, 458f
                  srli         s1, s8, 2
                  ori          a0, a5, -1500
                  srai         a1, s2, 18
                  bltu         s2, t4, 453f
                  beq          s5, t3, 450f
                  ori          s11, sp, -1127
450:              slti         t0, a0, -1852
                  lui          t6, 529125
                  sltiu        s6, a0, -793
453:              nop
454:              ori          a1, t6, -1879
                  nop
                  srai         s4, a2, 10
                  xori         s6, a3, -575
458:              and          zero, s3, s4
                  bltu         s8, t5, 466f
                  addi         a7, a3, 1225
                  add          t1, a5, a2
                  and          a5, s10, a2
                  sub          s8, a6, s7
                  addi         a0, t5, 414
                  sltiu        s8, tp, -267
466:              slt          a7, t6, t6
                  and          s7, ra, s6
                  add          s5, s3, a4
                  sltiu        zero, s7, 1383
                  add          s5, s6, s10
                  slt          s7, s9, a0
                  lui          s1, 549556
                  blt          t2, s7, 476f
                  slli         s0, s7, 29
                  sub          t3, s1, tp
476:              slli         s4, s8, 13
                  bne          t2, s7, 479f
                  sltiu        t3, gp, -1062
479:              add          a2, a7, a0
                  sll          s0, s11, s4
                  slti         s0, s3, -903
                  bgeu         tp, t3, 483f
483:              bne          s4, a6, 488f
                  beq          s0, a5, 496f
                  bltu         ra, a4, 500f
                  xor          s11, t3, t1
                  slli         s10, zero, 14
488:              bltu         tp, zero, 491f
                  xor          a4, zero, s5
                  srli         t1, a5, 0
491:              xori         s7, s7, -1489
                  xori         sp, a2, -597
                  slti         a2, s11, -1405
                  ori          ra, t2, -159
                  srai         s8, zero, 9
496:              ori          s1, a7, 425
                  srli         sp, a4, 21
                  sub          zero, zero, a3
                  sll          s11, sp, t0
500:              ori          s8, a6, 784
                  sub          s7, s6, sp
                  addi         s8, s2, -2044
                  xori         sp, tp, -1208
                  ori          a6, zero, -104
                  xor          t0, s4, gp
                  srli         s9, s9, 31
                  beq          s4, a4, 521f
                  sltu         a4, zero, ra
                  ori          ra, tp, -138
                  sra          s1, s10, t3
                  bne          a7, t4, 518f
                  slt          s1, t3, s10
                  ori          a1, t3, 382
                  slt          a7, t5, gp
                  bge          a0, s2, 535f
                  bge          a5, s7, 530f
                  slli         a4, s11, 21
518:              slli         a5, t1, 25
                  xor          s6, s7, s9
                  bltu         a1, s2, 525f
521:              slt          a3, s9, a2
                  sra          a7, s10, a5
                  lui          a0, 731709
                  sltiu        a3, t4, -1696
525:              bge          a7, t3, 534f
                  xor          s0, tp, s7
                  beq          s0, ra, 545f
                  add          s11, t4, t0
                  sra          a3, a7, s0
530:              auipc        gp, 784033
                  xori         s4, a0, 913
                  xori         t6, t6, -1421
                  beq          s11, t1, 534f
534:              xori         a4, t1, -1333
535:              sra          a3, s2, tp
                  blt          s0, s8, 545f
                  beq          a1, a2, 543f
                  bgeu         t3, t3, 545f
                  sra          s5, t4, t3
                  or           ra, s11, t1
                  or           a3, s1, s4
                  sub          t6, a6, t6
543:              sll          a5, s3, s3
                  blt          tp, a5, 563f
545:              bltu         s4, sp, 550f
                  andi         s11, ra, -1283
                  and          a5, t5, s9
                  srli         t0, a0, 19
                  bne          s1, s9, 556f
550:              slti         t3, zero, -1292
                  or           s6, a7, gp
                  xor          a4, s2, a0
                  sltu         t6, a5, s0
                  andi         s10, s0, -90
                  nop
556:              sll          s5, a0, t3
                  sltu         t6, s9, a1
                  lui          a7, 876974
                  bltu         t4, t6, 573f
                  bne          s1, gp, 580f
                  andi         s1, sp, -529
                  srai         zero, s5, 25
563:              bne          a7, t2, 567f
                  bne          s6, s8, 583f
                  sltu         t0, a3, tp
                  andi         t4, s9, -1569
567:              sltu         a5, s5, s6
                  auipc        a2, 712409
                  slti         s10, ra, 747
                  or           gp, s7, s10
                  or           s3, s0, s8
                  slli         s3, s8, 26
573:              srli         t3, s0, 24
                  addi         a4, t2, -227
                  auipc        a0, 319017
                  sll          a3, s0, s8
                  slt          s4, a5, a3
                  beq          s3, t6, 591f
                  sltu         t6, s3, a0
580:              addi         s7, zero, -927
                  sltiu        a6, s5, 1637
                  andi         ra, a4, 806
583:              auipc        s7, 564538
                  sub          t4, a7, t6
                  sra          t6, t2, s11
                  or           t5, t5, a4
                  sra          a0, a7, t0
                  bne          gp, s2, 593f
                  sltiu        s9, gp, 1499
                  auipc        s4, 658227
591:              lui          s6, 936633
                  srai         s1, s11, 14
593:              sll          a7, a7, sp
                  sltiu        s3, s6, -1141
                  lui          s11, 274752
                  bgeu         s11, t5, 610f
                  srl          s8, tp, zero
                  sltu         zero, s1, a6
                  nop
                  srl          s6, t5, s3
                  sltu         s10, a0, zero
                  bltu         s10, s5, 607f
                  addi         ra, a3, -242
                  lui          s3, 391470
                  nop
                  bge          a4, s6, 608f
607:              sltu         t6, s0, a3
608:              andi         t0, s0, 1845
                  addi         s7, a6, 447
610:              andi         t5, t4, -1835
                  xori         zero, s11, -1076
                  srli         s4, s5, 19
                  sltu         a5, a0, a2
                  sra          ra, t3, s4
                  sltu         t0, gp, t5
                  xor          t6, a2, t6
                  ori          t5, a2, -2003
                  or           a3, t6, s9
                  and          s11, s4, tp
                  or           s6, s5, zero
                  sra          a7, s3, s11
                  srli         sp, s5, 31
                  srl          s1, tp, t6
                  slt          s11, s1, t5
                  and          t5, t4, sp
                  sra          s8, a3, tp
                  srl          t1, s10, a7
                  add          ra, a7, a1
                  and          ra, s1, s7
                  beq          s2, a0, 644f
                  xori         a3, t1, -1258
                  sub          ra, a0, s5
                  addi         s4, s10, 1256
                  nop
                  sltu         a4, s0, s8
                  bltu         s7, a1, 643f
                  xori         s11, s0, 989
                  sll          s3, zero, s3
                  andi         t6, gp, -1726
                  bltu         a5, t0, 654f
                  srl          a5, s5, a7
                  bgeu         a5, s11, 656f
643:              sltu         s11, s9, a6
644:              bgeu         s10, s8, 656f
                  sltiu        s6, s6, 498
                  addi         t0, a1, 142
                  addi         a6, t6, -1599
                  andi         s6, t0, 1878
                  nop
                  and          sp, t2, a1
                  ori          gp, a2, 1059
                  beq          a3, t0, 661f
                  bne          a6, zero, 673f
654:              bge          s5, t0, 655f
655:              andi         t6, t6, 1282
656:              xor          s10, t2, s6
                  bne          t0, s1, 676f
                  beq          a6, gp, 665f
                  srai         t4, t4, 2
                  srli         t4, t4, 2
661:              srli         s6, t2, 5
                  beq          tp, a4, 665f
                  xor          s0, s4, a0
                  sub          a3, t3, a0
665:              beq          t4, s11, 685f
                  nop
                  blt          s7, a6, 669f
                  add          s7, s0, a3
669:              bne          sp, zero, 670f
670:              sltu         a4, a1, s0
                  add          gp, s0, t2
                  andi         t4, a6, 1539
673:              slti         s4, a5, -1368
                  addi         t5, sp, -1591
                  ori          s3, s11, 1216
676:              beq          t3, a2, 690f
                  add          s10, s5, gp
                  xor          a5, sp, t3
                  nop
                  sra          s3, a2, s3
                  slli         a5, a7, 15
                  xor          s6, tp, a5
                  sll          s11, a1, s1
                  srli         s5, s6, 31
685:              addi         s10, t5, 943
                  slt          s5, sp, a5
                  sra          s1, s0, t4
                  blt          sp, a2, 701f
                  addi         a7, a6, 1677
690:              xor          zero, a1, sp
                  sra          s4, s0, s5
                  bltu         a6, s9, 695f
                  sltiu        zero, s11, -1408
                  bne          ra, s2, 701f
695:              xor          s5, a7, tp
                  nop
                  sll          s3, a3, a5
                  xor          s3, t3, s9
                  bge          t3, a3, 717f
                  srai         s1, a3, 22
701:              ori          t3, s4, -726
                  bgeu         t6, s2, 707f
                  or           t3, s4, s6
                  and          t4, gp, tp
                  addi         t4, zero, 468
                  blt          s6, a4, 725f
707:              sub          zero, t3, zero
                  or           ra, tp, a3
                  slli         ra, s4, 28
                  ori          a7, s1, -1333
                  blt          t2, sp, 715f
                  xori         ra, s8, 809
                  addi         s0, t1, 389
                  sra          s4, ra, s1
715:              sltu         a0, s1, a0
                  bne          t2, gp, 721f
717:              bltu         s3, s1, 724f
                  sltiu        s3, t2, -427
                  srli         s3, a6, 6
                  bne          a3, zero, 735f
721:              auipc        t1, 1024120
                  xori         a6, s10, -397
                  and          gp, t1, t5
724:              or           t6, s1, t6
725:              xor          a5, s4, t4
                  slti         s1, s3, -1573
                  slti         a4, s7, 1444
                  slt          sp, a5, s3
                  blt          s6, s1, 734f
                  srli         s1, ra, 26
                  sra          gp, t6, s2
                  bne          ra, s0, 738f
                  nop
734:              bge          s3, s9, 743f
735:              or           a7, s11, s4
                  sltiu        s8, s0, -383
                  xori         t0, ra, -1112
738:              nop
                  beq          a0, s11, 754f
                  auipc        s0, 537791
                  and          a4, a0, a3
                  slt          zero, s2, t1
743:              bgeu         a1, a5, 747f
                  bgeu         s9, t1, 753f
                  ori          s6, a3, -432
                  srai         a5, tp, 3
747:              and          sp, ra, s3
                  bltu         zero, gp, 755f
                  bltu         gp, ra, 754f
                  slli         s5, s9, 20
                  blt          s5, zero, 770f
                  sltiu        a6, a4, -1288
753:              addi         s3, a1, 658
754:              xor          t0, t6, a3
755:              sub          s11, s8, t4
                  xori         a4, t6, 1351
                  nop
                  or           s4, s4, t4
                  lui          a2, 481960
                  bltu         s4, t4, 767f
                  nop
                  auipc        s11, 276837
                  andi         a7, s11, -1081
                  beq          s10, t4, 769f
                  andi         a6, t6, 1300
                  xor          t4, ra, s4
767:              sll          s6, ra, s3
                  ori          a7, s1, 583
769:              beq          t2, gp, 787f
770:              andi         s9, a6, 678
                  bne          a2, a1, 773f
                  srli         zero, a6, 15
773:              srai         t0, s2, 7
                  sra          zero, a3, a2
                  and          a1, t3, t6
                  sra          s1, s2, s8
                  srli         a1, a2, 6
                  or           a6, a6, ra
                  nop
                  and          a1, a2, s3
                  sra          s6, s11, s2
                  bge          s9, s7, 783f
783:              srli         t4, t3, 6
                  slt          s3, a3, s3
                  add          t4, s1, a5
                  ori          zero, s2, -665
787:              sll          a5, s7, a1
                  andi         s7, a6, -1941
                  slti         t5, s5, -1423
                  srl          a6, zero, a5
                  sll          t6, a0, ra
                  slli         t5, zero, 29
                  add          a5, s5, s1
                  sra          s1, tp, s7
                  xor          s11, s7, ra
                  lui          t1, 762692
                  addi         t3, t4, 1413
                  bgeu         s8, a6, 804f
                  slti         sp, a7, -205
                  sra          s9, s1, s7
                  sltu         a5, a7, s7
                  srai         s3, t5, 18
                  slti         s8, a1, -1382
804:              srl          gp, s7, a6
                  bltu         tp, s2, 819f
                  bne          t4, gp, 807f
807:              slli         t5, s1, 18
                  or           a7, s11, a2
                  nop
                  la           sp, region_1+1752 #start riscv_load_store_rand_instr_stream_2
                  andi         a6, s8, -363
                  lh           t0, -284(sp)
                  lw           t3, -1092(sp)
                  andi         zero, s7, 39
                  sb           zero, -1369(sp)
                  auipc        a3, 119598
                  lb           s7, -1648(sp)
                  lb           t6, -1116(sp)
                  lui          ra, 890803
                  addi         s3, zero, 1666
                  lbu          t1, -485(sp)
                  sb           s8, -640(sp)
                  sub          a1, a3, s3
                  sra          s4, s10, s0
                  addi         t0, t0, -1564
                  lb           a3, -874(sp)
                  lb           s10, -324(sp)
                  or           s0, s10, t6
                  lb           t3, -724(sp)
                  sh           a2, -1050(sp)
                  lbu          a0, -516(sp)
                  add          a7, s2, s6
                  lb           a1, -1643(sp)
                  sw           s7, -444(sp)
                  sltu         t3, s1, s11
                  lbu          s11, -806(sp)
                  ori          a7, s2, 1363
                  lb           a5, -1621(sp)
                  lbu          ra, -1369(sp)
                  lbu          s6, -1657(sp)
                  sh           s4, 162(sp)
                  lbu          s4, 211(sp)
                  lb           s7, -331(sp)
                  sltiu        s9, s7, -1689
                  lh           a4, -370(sp)
                  srai         s0, a2, 7
                  sll          a2, s11, t3
                  sb           t4, 68(sp) #end riscv_load_store_rand_instr_stream_2
                  auipc        s11, 929331
                  srl          a7, a0, t1
                  nop
                  bge          t0, s2, 826f
                  sltu         a4, t4, t6
                  srl          t0, a5, s6
                  bge          s9, s7, 823f
                  and          a3, a5, t5
                  add          t3, s6, s6
819:              or           s6, a1, zero
                  sra          a0, t1, s7
                  xor          t5, s8, s6
                  ori          s10, a5, -47
823:              slti         a0, a6, 329
                  slt          gp, a7, t2
                  addi         a5, a2, 1820
826:              slt          t3, t3, a3
                  sltu         s1, a4, s7
                  nop
                  andi         t3, s11, -797
                  blt          t6, s8, 835f
                  sub          s8, t3, a6
                  bne          s4, s7, 846f
                  sltu         a1, a2, t0
                  beq          a6, s5, 843f
835:              xor          s6, ra, s6
                  ori          gp, a3, 380
                  xori         sp, a7, -1659
                  beq          a1, sp, 858f
                  srli         ra, gp, 24
                  add          a7, t6, t3
                  add          s6, t1, t0
                  beq          tp, sp, 862f
843:              slt          t1, s9, t2
                  and          s9, t2, t1
                  sub          s8, t3, a2
846:              auipc        sp, 142597
                  blt          a4, a2, 861f
                  bne          s3, s1, 850f
                  sltiu        t1, a6, 447
850:              blt          sp, a3, 864f
                  bge          s5, a7, 856f
                  slti         s7, sp, -399
                  xor          t3, s8, t4
                  sub          t5, a0, s2
                  bgeu         a4, t6, 858f
856:              nop
                  addi         a7, s2, 640
858:              xori         s8, s11, 1242
                  sub          t0, s1, a2
                  bltu         s3, a1, 863f
861:              bge          sp, a3, 868f
862:              bge          a1, tp, 874f
863:              lui          a6, 432041
864:              bgeu         a0, t1, 881f
                  auipc        a2, 994040
                  srai         zero, tp, 17
                  blt          a6, t5, 870f
868:              slti         s0, s1, -845
                  add          t5, t2, a0
870:              bne          tp, s11, 881f
                  srl          zero, gp, t4
                  sltu         a1, s8, t3
                  auipc        s4, 752199
874:              bgeu         a5, tp, 875f
875:              nop
                  andi         a7, a0, -92
                  srli         a4, t2, 5
                  xor          s10, s8, s4
                  and          s1, sp, ra
                  or           s5, a7, t2
881:              auipc        s6, 958903
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            bge          s9, s7, sub_8_stack_p
                  andi         s3, a3, -1446
                  sub          s3, t1, s4
                  lui          s0, 857063
sub_8_stack_p:    addi         tp, tp, -20
                  srl          a7, s7, s7
                  andi         t4, t0, -819
                  sw           a6, 4(tp)
                  addi         s3, t5, -22
                  bgeu         a7, t3, 3f
                  srai         s9, t4, 5
                  beq          a0, t6, 15f
3:                auipc        a2, 640588
                  blt          s9, a6, 20f
                  slt          a3, a3, t3
                  slt          sp, s11, ra
                  and          t1, a3, t3
                  sltiu        ra, s3, -2024
                  slti         a1, s2, 829
                  sltu         a2, t5, s10
                  xori         a2, tp, 1234
                  sra          t4, tp, s2
                  srl          t4, t2, s2
                  ori          t6, s9, -558
15:               srli         s9, t5, 12
                  blt          a2, ra, 19f
                  xori         t4, gp, 550
                  sltiu        s5, s10, -147
19:               bltu         t2, a2, 30f
20:               xor          s11, zero, s1
                  bgeu         t4, a1, 29f
                  ori          a0, gp, 1645
                  blt          tp, s10, 34f
                  and          s6, t2, t2
                  lui          a5, 505548
                  nop
                  slt          t3, a3, zero
                  and          s7, a6, s2
29:               auipc        s0, 406868
30:               sltu         s6, s0, a3
                  slti         s4, tp, 779
                  add          s10, t6, a6
                  srai         s1, s1, 14
34:               slli         t5, s1, 25
                  bne          a2, s11, 48f
                  auipc        s4, 194441
                  sra          s6, t2, s2
                  slt          t4, s9, s11
                  bne          s4, s3, 55f
                  nop
                  add          a6, s9, s11
                  sll          a0, t0, s7
                  xor          zero, a7, a1
                  sltiu        t6, s4, 1267
                  ori          s1, tp, 1263
                  andi         s3, s10, 1806
                  srai         s3, a7, 0
48:               nop
                  slti         s8, s11, 383
                  bgeu         zero, s10, 58f
                  srli         a1, s0, 6
                  xor          s0, s6, s8
                  nop
                  nop
55:               addi         t3, tp, 2032
                  sltu         t0, a3, s9
                  slli         a4, s10, 31
58:               bge          s2, a6, 72f
                  srl          s6, a1, s11
                  nop
                  bge          s2, s9, 64f
                  slt          s3, s7, t0
                  srl          a2, a0, a4
64:               bne          s0, a4, 70f
                  srli         s1, s9, 6
                  lui          t0, 244253
                  srl          s6, zero, a4
                  xor          s8, ra, a5
                  bgeu         a5, s6, 72f
70:               slt          s8, s0, a2
                  sll          t6, t4, ra
72:               andi         s6, s7, -919
                  and          s8, s4, s3
                  slli         s6, s5, 19
                  andi         s1, s4, 1538
                  srl          s11, a3, s0
                  bne          s10, a6, 78f
78:               srli         a7, a1, 25
                  lw           a6, 4(tp)
                  xor          s0, s8, s1
                  srli         t4, a4, 23
                  ori          s7, t0, -583
                  addi         tp, tp, 20
                  sltiu        t4, s10, -1745
94:               addi x17, x16, 0
94:               jalr x17, x17, 0
sub_5:            andi         a3, s4, -1296
                  srli         t3, s5, 27
                  sra          a2, s6, t1
                  andi         s0, t5, 1558
                  andi         ra, s11, -1095
                  addi         tp, tp, -16
                  slt          s5, s8, s6
                  srai         a2, t5, 22
                  sw           a6, 4(tp)
                  slt          zero, t5, a6
                  la           t6, region_1+1544 #start riscv_load_store_rand_instr_stream_20
                  sll          t3, t6, a7
                  auipc        s0, 914374
                  lb           a3, 1(t6)
                  lbu          a2, 49(t6)
                  or           s1, s5, t6
                  lb           sp, 235(t6)
                  and          s10, sp, s10
                  lb           t4, -225(t6)
                  lbu          a0, -105(t6)
                  sltiu        s5, s8, -454
                  lh           s1, 186(t6)
                  slli         s8, a2, 1
                  sltu         zero, t3, t5
                  lb           s11, 235(t6)
                  lbu          s10, 157(t6)
                  lw           ra, 172(t6)
                  sb           t3, 244(t6)
                  srai         s8, a6, 0
                  lbu          a1, -55(t6)
                  sb           t0, 74(t6)
                  lh           s4, 102(t6)
                  srl          s6, a2, a0
                  sub          t0, t2, sp
                  auipc        a4, 336667
                  sub          s9, t4, ra
                  lbu          a4, 78(t6) #end riscv_load_store_rand_instr_stream_20
                  la           sp, region_0+1841 #start riscv_load_store_rand_instr_stream_0
                  or           s0, t2, s8
                  auipc        ra, 613098
                  xori         s1, ra, 1230
                  sltu         s5, s9, s2
                  sb           t2, -6(sp)
                  srai         s7, s10, 10
                  andi         s0, a6, -1518
                  sb           t4, -16(sp)
                  slti         a3, a7, -1070
                  lb           s8, 8(sp)
                  slli         zero, s0, 9
                  lui          ra, 654612
                  lbu          s11, -14(sp)
                  lbu          s0, -5(sp)
                  auipc        a3, 962927
                  sh           s9, 11(sp)
                  or           t0, s4, s2
                  lui          t0, 940281
                  lbu          s4, 5(sp)
                  lhu          s3, -3(sp)
                  sb           gp, -15(sp)
                  sb           ra, 4(sp)
                  lbu          s0, 13(sp)
                  sltiu        t3, t5, 819
                  lb           s0, 9(sp)
                  sra          s5, t6, t0
                  lb           a7, 10(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_0+1109 #start riscv_load_store_rand_instr_stream_14
                  slti         s8, a2, 1043
                  slti         a7, s1, -247
                  sub          t0, a4, zero
                  slli         a3, ra, 22
                  lbu          sp, -10(a5)
                  lb           t0, 8(a5)
                  lhu          t3, -7(a5)
                  lhu          s8, -7(a5)
                  auipc        s1, 648901
                  sb           s4, 16(a5)
                  sb           s2, -4(a5)
                  lb           s10, -10(a5)
                  lbu          s8, 6(a5)
                  lbu          s10, -6(a5)
                  lh           s11, 3(a5)
                  lbu          t0, -11(a5)
                  xori         s9, t2, -1567
                  sll          t5, a1, ra
                  lh           s8, -9(a5)
                  lb           ra, 4(a5)
                  slti         t5, s7, -763
                  lb           sp, -8(a5)
                  sw           a2, -5(a5)
                  sb           sp, 1(a5)
                  lhu          a1, -13(a5)
                  lb           t4, 6(a5)
                  lbu          ra, -16(a5)
                  sb           s4, 13(a5)
                  lb           s9, 8(a5)
                  sb           a0, 9(a5)
                  lb           s5, -2(a5)
                  auipc        t4, 485481
                  slt          s8, zero, s7
                  lb           t3, -8(a5)
                  lbu          s8, -16(a5)
                  lbu          s4, 4(a5)
                  lb           s5, 10(a5)
                  lbu          a7, -2(a5)
                  srl          gp, s5, a3
                  lb           s1, -16(a5) #end riscv_load_store_rand_instr_stream_14
                  la           gp, region_1+1072 #start riscv_load_store_rand_instr_stream_8
                  sll          ra, zero, t5
                  sltu         a2, s8, s8
                  sltiu        t0, s1, -995
                  sh           s4, -6(gp)
                  srli         s9, a0, 11
                  lbu          s4, -39(gp)
                  lui          s9, 264993
                  srl          a5, a4, t1
                  sh           s11, -22(gp)
                  lbu          a2, -22(gp)
                  lbu          s10, 5(gp)
                  ori          a1, s0, -1266
                  slli         sp, s9, 1
                  auipc        s10, 380543
                  lbu          t6, 55(gp)
                  add          s11, s0, s0
                  addi         s8, a6, 810
                  andi         s1, a2, 597
                  lb           s3, 57(gp)
                  lb           s3, 37(gp)
                  sh           t0, -28(gp)
                  lb           a4, 37(gp)
                  sw           s4, -40(gp)
                  sb           s4, 11(gp)
                  lb           s7, 23(gp)
                  lbu          s5, 15(gp)
                  lb           s0, 3(gp)
                  slti         s8, s9, 789
                  sb           ra, -61(gp)
                  lbu          ra, 10(gp)
                  xor          t4, s4, t1
                  add          s11, t3, a3
                  lbu          s11, -25(gp)
                  slt          t3, s9, s4
                  sb           s6, -48(gp)
                  sub          a3, s7, t3
                  lb           s5, -11(gp)
                  lb           t6, 38(gp)
                  lb           a0, -19(gp)
                  slt          t4, a0, a1
                  lbu          a2, -56(gp)
                  sb           a7, -4(gp)
                  nop
                  ori          a3, a3, -795
                  add          a3, a4, s0
                  srai         s6, a7, 3
                  slti         zero, s4, -1190
                  lbu          a4, 41(gp)
                  xori         t5, s10, -475
                  nop
                  add          t1, s10, t6
                  lbu          zero, -17(gp)
                  sb           ra, -55(gp)
                  lui          s4, 191697
                  lbu          s5, -47(gp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1053 #start riscv_load_store_rand_instr_stream_4
                  auipc        t6, 396641
                  sub          a7, ra, s10
                  srl          s8, s11, t3
                  lb           a3, -50(sp)
                  srli         a4, a2, 21
                  add          a1, s6, a1
                  lbu          zero, 30(sp)
                  ori          s4, a6, -1770
                  lh           s11, -37(sp)
                  sw           a5, 39(sp)
                  or           s1, s5, a4
                  lbu          a6, -44(sp)
                  srai         s6, sp, 27
                  sltiu        s0, s5, 922
                  lh           t3, 37(sp)
                  lui          a6, 67790
                  ori          t6, s4, 1600
                  lb           a0, -62(sp)
                  slt          gp, s11, s7
                  sh           t5, 53(sp)
                  lb           a5, 62(sp)
                  sra          t1, s7, tp
                  sb           t3, -48(sp)
                  srli         t4, a6, 30
                  add          a5, zero, s8
                  sll          t4, a5, a7
                  xori         a3, s2, 275
                  lbu          t4, 12(sp)
                  lb           t6, 32(sp)
                  sll          zero, s8, sp
                  srli         s7, s9, 12
                  sll          s8, t0, a2
                  sll          t5, t4, t2
                  nop
                  sb           t0, 33(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s6, region_0+1927 #start riscv_load_store_rand_instr_stream_24
                  slli         s10, a5, 17
                  lb           s1, -160(s6)
                  sw           t2, -171(s6)
                  ori          a2, a5, -1250
                  sb           s9, -225(s6)
                  lbu          t1, -238(s6)
                  sb           s7, 52(s6)
                  lh           t5, -1(s6)
                  lbu          s4, -68(s6)
                  sub          sp, sp, a7
                  slt          a5, sp, a5
                  lb           s7, -31(s6)
                  lhu          s7, -105(s6)
                  sb           a1, -240(s6)
                  lw           sp, 21(s6)
                  lh           ra, 9(s6)
                  sltu         s10, t6, s2
                  lh           a0, -247(s6)
                  and          a3, t6, ra
                  xori         a7, a4, -911
                  lb           t4, -40(s6)
                  lh           a1, -147(s6)
                  lb           a1, -198(s6)
                  sltiu        a0, tp, 1930
                  addi         ra, t0, 642
                  lhu          s4, -105(s6)
                  ori          s4, a4, 1847
                  srai         s3, tp, 11
                  and          t4, t1, tp
                  xor          gp, t1, s4
                  lh           s5, -69(s6)
                  or           t0, s5, s0
                  slti         a6, sp, -1932
                  lbu          a4, -34(s6)
                  xor          a1, s8, s6
                  lw           s10, -75(s6)
                  add          zero, s1, a5
                  lbu          zero, -219(s6)
                  sra          sp, t1, a5
                  srai         a7, a7, 4
                  sh           s2, -155(s6) #end riscv_load_store_rand_instr_stream_24
                  la           t3, region_1+1891 #start riscv_load_store_rand_instr_stream_22
                  lbu          s8, -1525(t3)
                  sub          s0, t5, s2
                  lb           s5, -1370(t3)
                  sw           s1, -563(t3)
                  add          s3, t0, a1
                  lb           s11, -1643(t3)
                  sb           sp, -1556(t3)
                  lh           s10, -1673(t3)
                  addi         s8, s1, -680
                  lbu          s3, -546(t3)
                  xor          s8, a2, a3
                  slt          a6, a3, gp
                  sb           tp, -56(t3)
                  lhu          s5, -1421(t3)
                  sh           gp, -1693(t3)
                  sh           s10, -1681(t3)
                  lbu          gp, -540(t3)
                  xori         a1, t5, 386
                  lb           s6, -350(t3)
                  lbu          s3, -658(t3)
                  lbu          s10, -1164(t3)
                  slli         s6, gp, 26
                  sltiu        gp, a0, 1183
                  sb           a0, -290(t3)
                  slt          s11, s4, t6
                  lui          sp, 1025312
                  lhu          s6, -519(t3)
                  sltu         s8, a3, s10
                  lbu          s5, -1038(t3)
                  slli         ra, t2, 9
                  and          s4, t3, a7
                  lbu          s7, -602(t3)
                  slt          s10, a1, s4
                  or           s10, a5, s1
                  srl          t1, s2, tp
                  lb           t5, -1104(t3)
                  lhu          s5, -1401(t3)
                  addi         s11, sp, -1821
                  sb           t1, -998(t3)
                  slt          t0, s6, t1
                  lh           t4, -301(t3)
                  sb           t1, -476(t3)
                  srai         t6, a7, 11
                  sub          sp, tp, sp
                  lb           t4, -1118(t3)
                  ori          t4, t6, -1168
                  lbu          a3, -1537(t3)
                  sb           s2, -1806(t3) #end riscv_load_store_rand_instr_stream_22
                  la           a1, region_0+324 #start riscv_load_store_rand_instr_stream_6
                  slli         ra, a7, 3
                  lbu          a2, 1381(a1)
                  ori          s11, ra, 1512
                  lb           s5, 257(a1)
                  lbu          ra, 469(a1)
                  auipc        s4, 650146
                  sh           s10, 122(a1)
                  sh           s2, 1562(a1)
                  sb           s2, 849(a1)
                  lb           s11, 447(a1)
                  lb           t4, -89(a1)
                  sh           s3, 1666(a1)
                  lb           s4, 1097(a1)
                  andi         gp, s5, 300
                  lb           a5, 481(a1)
                  lb           s11, -243(a1)
                  sll          s8, sp, a2
                  xor          zero, gp, s8
                  lbu          t5, 1059(a1)
                  lb           s7, 833(a1)
                  nop
                  sw           gp, 1448(a1)
                  lhu          s6, 1514(a1)
                  sub          a5, gp, t2
                  lbu          a0, 831(a1)
                  lhu          t5, 1460(a1)
                  sh           s4, 1608(a1)
                  sltu         s6, a0, a0
                  lhu          t5, 1030(a1)
                  lbu          t0, 1551(a1)
                  srli         t5, t6, 7
                  lbu          a4, 443(a1)
                  xor          s0, t3, a4
                  or           s7, s2, zero
                  lb           a5, -143(a1)
                  lb           t3, -145(a1)
                  lui          s10, 547695
                  sh           s7, -204(a1) #end riscv_load_store_rand_instr_stream_6
                  la           a5, region_0+1099 #start riscv_load_store_rand_instr_stream_5
                  lb           a4, 104(a5)
                  slli         s6, s9, 1
                  srai         gp, a7, 0
                  lw           a6, 45(a5)
                  sb           t0, -226(a5)
                  sb           t6, -89(a5)
                  lb           s10, 78(a5)
                  sb           s6, -53(a5)
                  nop
                  nop
                  sb           a2, -182(a5)
                  sll          gp, s0, s1
                  lbu          s4, -134(a5)
                  nop
                  srli         s8, gp, 11
                  slti         s7, zero, -1951
                  xori         a6, s4, -1387
                  lhu          zero, 43(a5)
                  lb           s9, -252(a5)
                  or           t0, s1, s5
                  lbu          s6, 46(a5)
                  and          zero, t5, s8
                  sb           ra, 59(a5)
                  xor          t0, a0, t0
                  sra          s0, s8, a0
                  lbu          s9, -58(a5) #end riscv_load_store_rand_instr_stream_5
                  la           s7, region_0+1763 #start riscv_load_store_rand_instr_stream_13
                  xor          s4, zero, a3
                  lbu          t6, -250(s7)
                  lh           s11, -33(s7)
                  sub          a3, s2, t1
                  sb           s2, 1(s7)
                  lb           t4, -186(s7)
                  lb           a2, -132(s7)
                  add          gp, t3, s10
                  sb           a0, 193(s7)
                  lb           s5, -97(s7)
                  lb           t4, 220(s7)
                  lw           gp, 217(s7)
                  lbu          t0, 236(s7)
                  addi         gp, s11, 14
                  sb           a4, 128(s7)
                  lh           s6, 197(s7)
                  lbu          a5, -184(s7)
                  addi         s1, a0, -1427
                  srai         t1, zero, 1
                  lb           gp, 64(s7)
                  sub          a7, tp, s1
                  lbu          a7, 137(s7)
                  lb           sp, 210(s7)
                  sb           sp, 210(s7)
                  sb           zero, -137(s7)
                  sb           s6, -8(s7)
                  sra          t1, a0, a3
                  lbu          t0, -15(s7)
                  lbu          t6, 175(s7)
                  lb           a7, -63(s7)
                  and          s6, s0, t1
                  addi         t3, s10, 1168
                  lw           a5, -83(s7)
                  addi         s3, a6, -243
                  lb           s8, -58(s7)
                  xor          a6, t1, gp
                  sb           t4, 198(s7)
                  lb           ra, -176(s7)
                  sb           a3, 226(s7)
                  xori         s1, a5, 715
                  lbu          a2, -111(s7)
                  lbu          s1, 34(s7) #end riscv_load_store_rand_instr_stream_13
                  la           s5, region_1+57 #start riscv_load_store_rand_instr_stream_25
                  add          a4, s3, a5
                  sb           s6, 8(s5)
                  lhu          s11, -7(s5)
                  lbu          s9, 4(s5)
                  lb           a1, 12(s5)
                  lb           s8, 16(s5)
                  lbu          t4, 2(s5)
                  srl          t4, s8, a1
                  slt          a6, a5, s1
                  lbu          s9, 2(s5)
                  lbu          a4, -12(s5)
                  auipc        sp, 354137
                  lb           t3, 8(s5)
                  sh           s0, 1(s5)
                  lb           a4, -13(s5)
                  sltiu        s3, s4, 1711
                  andi         s7, t2, 199
                  lbu          t1, -11(s5)
                  lb           t6, 2(s5)
                  and          s6, t4, t3
                  sb           s11, 3(s5)
                  srl          s0, sp, a2
                  sltiu        t1, gp, -894
                  lbu          a5, 14(s5)
                  andi         a2, t0, -176
                  sb           s9, -13(s5)
                  lb           t0, -7(s5)
                  srai         a7, s11, 0
                  sub          a2, t6, s1
                  sb           t2, 8(s5)
                  sll          sp, a0, s10
                  srli         t1, a6, 31
                  lh           t5, 5(s5)
                  srai         s1, a7, 28
                  lb           s3, -2(s5)
                  sb           a2, -5(s5)
                  sh           s11, 3(s5)
                  sltu         s7, a1, s1
                  lbu          s0, -13(s5)
                  auipc        t1, 56077
                  and          s0, t1, s5
                  slt          a5, s5, s2
                  lbu          a3, 0(s5) #end riscv_load_store_rand_instr_stream_25
                  la           sp, region_0+1899 #start riscv_load_store_rand_instr_stream_10
                  lb           s5, 14(sp)
                  sh           s2, -7(sp)
                  slli         s4, s8, 16
                  sh           t1, 15(sp)
                  slt          a7, t5, s10
                  lh           gp, -5(sp)
                  lh           a2, -13(sp)
                  lui          s10, 344288
                  lh           a3, -15(sp)
                  lb           gp, -10(sp)
                  lbu          t0, -1(sp)
                  lbu          s10, -10(sp)
                  sll          t3, s1, s8
                  andi         t6, a6, -565
                  lbu          a3, -1(sp)
                  sll          s9, a4, a1
                  sub          t0, zero, s10
                  sw           t4, -7(sp)
                  sb           s8, 14(sp)
                  lbu          t4, 2(sp)
                  slli         s11, s0, 8
                  or           s0, a5, t6
                  lb           a1, -12(sp)
                  lbu          s5, 14(sp)
                  andi         t6, s3, 354
                  lb           a6, -14(sp)
                  lb           t6, 1(sp)
                  sb           s2, -11(sp)
                  lbu          s9, -14(sp)
                  lbu          t3, -8(sp)
                  lb           t1, 6(sp)
                  srai         a2, a5, 28
                  srl          t4, s3, t4
                  lb           t3, 15(sp)
                  srli         a5, ra, 24
                  sra          s3, a0, zero
                  lb           a2, 1(sp)
                  lbu          t0, 14(sp)
                  lb           s7, 3(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+1451 #start riscv_load_store_rand_instr_stream_1
                  slt          t5, sp, s5
                  sh           sp, 175(sp)
                  lhu          t1, -53(sp)
                  and          s1, s3, a3
                  lb           s8, 119(sp)
                  addi         s10, a4, 1847
                  lhu          s8, 199(sp)
                  auipc        s7, 449070
                  lb           a4, -223(sp)
                  sltu         ra, sp, s11
                  sb           t0, 14(sp)
                  sra          s8, a1, t6
                  lbu          gp, 30(sp)
                  sub          t5, t3, t1
                  sub          s3, a7, a1
                  andi         t4, t1, 695
                  andi         s9, sp, 716
                  auipc        ra, 748633
                  xor          s11, a7, t4
                  ori          a1, sp, -799
                  ori          s6, t5, 1424
                  sltu         a2, a3, s5
                  sb           s0, -88(sp)
                  addi         s6, s9, -1447
                  srli         t4, t3, 6
                  nop
                  or           t6, a7, s10
                  or           s10, zero, s4
                  lhu          a7, -21(sp)
                  slt          t1, s1, t5
                  slt          ra, t2, t4
                  nop
                  lbu          t6, 233(sp)
                  sltu         a3, s11, t2
                  lb           a4, -153(sp)
                  sra          s5, s9, sp
                  lb           a6, -86(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t1, region_1+1651 #start riscv_load_store_rand_instr_stream_27
                  sb           a3, 144(t1)
                  lh           a3, 43(t1)
                  lhu          t6, 175(t1)
                  sb           s10, 78(t1)
                  sltiu        s0, a3, 499
                  andi         a3, ra, -1983
                  lb           t0, -156(t1)
                  sw           t0, -127(t1)
                  lbu          ra, 18(t1)
                  nop
                  sb           a0, 40(t1)
                  ori          a0, s11, -1350
                  lb           sp, -60(t1)
                  and          t6, t5, s5
                  sb           t3, -237(t1)
                  and          t6, s11, s4
                  sb           s7, 101(t1)
                  sltu         s4, s1, tp
                  ori          ra, t1, -1113
                  sub          a5, sp, s7
                  sb           t3, 202(t1)
                  sh           s4, -1(t1)
                  lbu          a5, -200(t1)
                  srl          s9, s10, a2
                  sb           t3, -236(t1)
                  nop
                  lbu          a6, -148(t1)
                  sltiu        s0, s3, -286
                  lbu          s11, -225(t1)
                  lw           a0, 173(t1)
                  sb           sp, -4(t1)
                  srli         s11, a4, 27
                  lb           s5, 232(t1)
                  or           zero, s7, t3
                  sb           a6, -100(t1)
                  lbu          s1, 200(t1)
                  sh           t4, 169(t1)
                  lbu          a1, -184(t1) #end riscv_load_store_rand_instr_stream_27
                  la           a6, region_0+1893 #start riscv_load_store_rand_instr_stream_17
                  lb           sp, 28(a6)
                  lui          s4, 651018
                  sra          s11, a1, t6
                  xor          s4, s7, a1
                  sw           a6, -245(a6)
                  slli         t0, s8, 15
                  srl          s4, s9, ra
                  sra          gp, a0, s7
                  add          a5, sp, tp
                  sltiu        ra, t0, -1973
                  sb           s6, -236(a6)
                  sra          t6, s7, a2
                  lbu          s3, -128(a6)
                  slli         t0, s0, 7
                  slt          s10, s2, a6
                  ori          a2, zero, -358
                  slli         s6, t3, 5
                  lhu          s3, 105(a6)
                  slt          s10, a2, a7
                  sb           a6, -25(a6)
                  lb           a4, -4(a6)
                  sh           t4, 37(a6)
                  lb           a1, 90(a6)
                  slt          s1, tp, t4
                  lhu          s7, -117(a6)
                  sltiu        s9, t5, 512
                  xori         a4, gp, 1523
                  lb           s6, -198(a6)
                  sb           s11, 104(a6)
                  auipc        t0, 31067
                  sll          a7, a2, s0
                  slt          a5, s7, tp
                  xori         s1, s3, -2004
                  auipc        s3, 700638
                  sb           a7, 34(a6)
                  sltiu        s10, s8, 833
                  add          t1, sp, s0
                  sb           s7, -236(a6)
                  sll          a3, a5, s7
                  lb           s8, 66(a6)
                  sb           a6, 40(a6)
                  sb           zero, -120(a6)
                  sb           a5, -108(a6) #end riscv_load_store_rand_instr_stream_17
                  la           t4, region_1+1543 #start riscv_load_store_rand_instr_stream_12
                  lbu          a7, -931(t4)
                  lb           a6, -332(t4)
                  lhu          s1, -395(t4)
                  lbu          s4, 430(t4)
                  lhu          a7, -1115(t4)
                  addi         a5, a1, -536
                  sb           a2, -764(t4)
                  lhu          ra, 223(t4)
                  lhu          s1, 87(t4)
                  sw           zero, 133(t4)
                  slti         gp, a0, 195
                  slt          s11, gp, a7
                  xori         s9, t6, -1945
                  or           zero, t0, a3
                  ori          gp, s5, -1740
                  sw           t1, -775(t4)
                  xor          s1, a0, zero
                  lb           a4, -1506(t4)
                  lhu          s4, -1373(t4)
                  slli         s10, a2, 31
                  lui          a1, 132822
                  and          t5, gp, t6
                  sb           t6, -1182(t4)
                  sra          t1, a3, a6
                  sltiu        s4, s4, -1619
                  slti         t3, s7, 1872
                  lb           t6, -487(t4)
                  lbu          ra, -1187(t4)
                  sb           tp, -1266(t4)
                  lbu          gp, 259(t4)
                  lbu          s0, -953(t4)
                  addi         a2, a1, 433
                  sb           gp, -1074(t4)
                  ori          gp, s6, 160
                  auipc        a1, 823304
                  sra          t1, t6, zero
                  slti         s4, s10, 2034
                  or           a2, a6, a2
                  sb           tp, -620(t4)
                  lb           a7, -631(t4)
                  srli         s9, s6, 24
                  lb           s10, 286(t4)
                  add          a6, s9, t2
                  andi         t6, a1, -1601
                  lbu          ra, -1100(t4) #end riscv_load_store_rand_instr_stream_12
                  la           t5, region_0+298 #start riscv_load_store_rand_instr_stream_9
                  sltu         t0, t1, s4
                  srli         t3, a0, 3
                  lb           a0, -1(t5)
                  sb           t1, 7(t5)
                  nop
                  sh           t1, -12(t5)
                  nop
                  sh           t0, 0(t5)
                  sltiu        s4, s8, 878
                  sb           sp, -7(t5)
                  xori         ra, s11, 1958
                  sra          t3, a1, s10
                  slli         t4, gp, 26
                  lbu          a3, -15(t5)
                  sb           t1, -9(t5)
                  xori         t3, a4, 1974
                  sub          t1, s7, t2
                  sw           zero, -10(t5)
                  sb           s4, 1(t5)
                  sb           s1, -16(t5)
                  sub          t4, tp, ra
                  add          a2, a1, a3
                  xori         s11, zero, -556
                  sra          s1, t2, a5
                  and          sp, s3, s10
                  add          s0, t0, tp
                  sb           zero, 9(t5)
                  sb           a5, 13(t5)
                  sw           a1, -10(t5)
                  sltu         t6, a7, t3
                  sub          zero, s0, t5
                  or           a1, t1, s9
                  xor          s7, t1, a0
                  sra          t6, a4, a4
                  xor          t4, s11, s8
                  lbu          a7, 15(t5)
                  slt          zero, s3, ra
                  slli         a6, a5, 24
                  lb           t3, 5(t5) #end riscv_load_store_rand_instr_stream_9
                  la           s4, region_1+256 #start riscv_load_store_rand_instr_stream_15
                  sb           a2, 42(s4)
                  sltu         a3, s2, a5
                  sh           s5, 60(s4)
                  lw           s7, -36(s4)
                  srai         t0, s0, 31
                  lh           t0, 64(s4)
                  xori         sp, s0, 1676
                  add          gp, s2, t5
                  addi         ra, gp, 977
                  lb           s8, -61(s4)
                  sub          s10, s3, s10
                  ori          s5, a3, -431
                  lb           s8, -51(s4)
                  xori         a2, ra, -468
                  lhu          a0, 2(s4)
                  and          s5, a6, s9
                  sltu         s5, s2, t6
                  slli         a3, s1, 4
                  lbu          t5, 62(s4)
                  srl          s11, s3, a7
                  lw           a1, 64(s4)
                  lbu          s5, -59(s4)
                  sb           tp, -59(s4)
                  lhu          a5, 50(s4)
                  srli         s5, s10, 5
                  lb           s7, 37(s4)
                  sltiu        a6, t5, 1887
                  sltu         s6, ra, s8
                  sw           s9, -52(s4)
                  sb           a5, 31(s4)
                  sb           s9, -43(s4)
                  sub          a1, a7, s10
                  andi         a4, t4, -1087
                  or           a0, s3, t4
                  lb           s3, 23(s4)
                  lhu          a6, -56(s4)
                  lbu          t1, -49(s4)
                  lb           t3, -13(s4)
                  lbu          a7, -31(s4) #end riscv_load_store_rand_instr_stream_15
                  la           a2, region_1+628 #start riscv_load_store_rand_instr_stream_11
                  add          t4, a0, s11
                  xori         ra, s7, -791
                  srl          t4, s5, t2
                  andi         a6, a3, 583
                  lbu          s3, -13(a2)
                  sb           s0, 40(a2)
                  add          s11, t5, zero
                  nop
                  sh           a3, 28(a2)
                  lui          t0, 509577
                  lbu          s9, 45(a2)
                  or           s6, s0, a7
                  lbu          s1, -55(a2)
                  lb           t5, -62(a2)
                  lhu          t4, 48(a2)
                  srai         t6, a7, 2
                  sh           s1, 64(a2)
                  lbu          gp, -15(a2)
                  lbu          s9, -5(a2)
                  lb           a0, -9(a2)
                  sub          a7, t3, s11
                  sb           tp, 55(a2)
                  lw           a4, 0(a2)
                  sb           t0, -31(a2)
                  and          gp, s10, t1
                  slt          t5, a0, sp
                  sra          s5, ra, t3
                  lbu          s9, 61(a2)
                  sb           s7, -52(a2)
                  sb           zero, -13(a2)
                  sra          t5, a4, s4
                  addi         zero, a3, 467
                  sb           s5, -29(a2)
                  or           s9, a6, s0
                  sh           t5, 20(a2)
                  lb           a4, 45(a2)
                  srl          s6, s9, s0
                  lb           t0, -58(a2)
                  lb           s8, 15(a2)
                  lbu          ra, 23(a2)
                  lbu          a1, -26(a2)
                  ori          s8, s7, -1554
                  sltu         s4, s5, gp
                  sb           s3, -41(a2)
                  or           s3, a1, s5
                  lh           a6, -30(a2)
                  sw           t6, -64(a2)
                  slt          t5, t0, a4
                  lh           t5, -26(a2) #end riscv_load_store_rand_instr_stream_11
                  la           t0, region_1+367 #start riscv_load_store_rand_instr_stream_2
                  lb           a7, 8(t0)
                  lhu          a3, 3(t0)
                  lb           t4, 6(t0)
                  lbu          sp, -1(t0)
                  slti         a7, sp, -1151
                  lb           s3, 10(t0)
                  lh           s10, 1(t0)
                  lb           a5, 8(t0)
                  sb           s11, 16(t0)
                  sb           zero, -4(t0)
                  lhu          t3, -13(t0)
                  lbu          t4, -16(t0)
                  lbu          s7, -13(t0)
                  auipc        s1, 331843
                  slt          t1, a5, a6
                  auipc        t1, 129047
                  lhu          s4, 11(t0)
                  sh           t2, 13(t0)
                  lb           a3, 10(t0)
                  sh           a4, 11(t0)
                  sll          s7, t2, a0
                  sll          t5, a7, a4
                  lh           sp, -1(t0)
                  lb           s10, 8(t0)
                  slli         s1, a4, 28
                  slt          s6, s1, a1
                  nop
                  lb           a1, 12(t0)
                  lbu          t5, -7(t0)
                  lb           s9, -9(t0)
                  srai         a5, a1, 16
                  add          t6, a2, s11
                  lh           t5, -1(t0)
                  lbu          gp, 14(t0) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+270 #start riscv_load_store_rand_instr_stream_18
                  sub          s9, a5, s0
                  addi         ra, t2, -1128
                  srli         a6, t3, 18
                  srl          s7, t0, t2
                  add          s7, sp, s11
                  srl          zero, a3, t3
                  sltiu        t5, zero, 424
                  sb           s9, 467(sp)
                  nop
                  xori         zero, a3, -1470
                  sb           s7, 593(sp)
                  srli         t5, t0, 22
                  lbu          a6, 1019(sp)
                  ori          zero, gp, -788
                  lbu          t4, 299(sp)
                  srai         a1, ra, 2
                  nop
                  sb           s0, 1271(sp)
                  addi         a0, a6, 389
                  lbu          s9, 1008(sp)
                  lui          a6, 610170
                  or           t0, t1, t6
                  lhu          t5, 968(sp)
                  lb           s11, 464(sp)
                  lbu          a7, 1355(sp)
                  andi         s9, t5, 368
                  slti         s1, s1, -1410
                  or           gp, s11, a4
                  slt          a5, a7, zero
                  srli         s0, a0, 21
                  sltu         t4, sp, zero
                  and          s8, tp, a7
                  sra          s9, s9, t6
                  srli         s11, a6, 12
                  slti         a2, s5, 945
                  addi         t1, a0, -602
                  srl          a7, s1, gp
                  or           a2, s0, a4
                  add          s8, t5, zero
                  lb           s1, 797(sp) #end riscv_load_store_rand_instr_stream_18
                  beq          gp, s6, 13f
                  sub          s3, s1, a5
                  ori          sp, s3, -439
                  slt          gp, a5, s1
                  auipc        a1, 131582
                  slt          t1, s1, s11
                  slti         t0, t5, -453
                  bltu         s8, a6, 17f
                  bgeu         a6, a2, 27f
                  sra          a3, s1, s9
                  sub          s4, gp, a3
                  lui          a2, 980589
                  sub          a6, a3, a4
13:               sra          a0, gp, s5
                  slt          s7, s10, a1
                  lui          s4, 340272
                  slli         t5, s2, 12
17:               slti         a2, s9, -449
                  sra          a0, s9, t2
                  bltu         s10, a0, 21f
                  beq          s6, t4, 22f
21:               sltu         s3, s3, a7
22:               bne          a1, zero, 42f
                  auipc        gp, 353898
                  slli         a0, t0, 29
                  beq          a3, s6, 33f
                  srl          s3, a2, t1
27:               blt          s9, sp, 31f
                  and          a1, a2, a0
                  bltu         s1, t4, 45f
                  sub          a5, a7, t2
31:               srli         s10, s9, 4
                  bge          s9, sp, 36f
33:               slti         a1, t4, -671
                  sltiu        a1, t3, -1228
                  sll          a0, t2, a3
36:               nop
                  sltiu        t3, t5, -1266
                  slli         s5, a3, 30
                  bgeu         a4, a2, 47f
                  srli         t1, a6, 18
                  sub          a0, s3, zero
42:               auipc        a6, 353847
                  bge          s0, a6, 50f
                  sll          t1, t3, t0
45:               auipc        a7, 428836
                  sltiu        s5, t2, 665
47:               add          s1, t3, s10
                  ori          a7, a1, 250
                  slli         s11, s6, 15
50:               auipc        a1, 809190
                  addi         s7, tp, 1337
                  addi         sp, tp, -718
                  slli         t5, s11, 24
                  sltu         s10, a4, s8
                  slt          a1, a7, s10
                  slt          sp, t4, s8
                  slti         t4, zero, -839
                  sltiu        s0, a0, 478
                  auipc        s11, 544886
                  slli         zero, t3, 22
                  xor          a7, a5, t6
                  andi         s7, t0, 1514
                  bltu         a6, gp, 68f
                  beq          t0, t5, 83f
                  beq          a2, s11, 83f
                  slti         a7, s10, 443
                  slti         t6, a3, 1609
68:               sub          t6, a4, s6
                  xor          s7, t2, s5
                  bge          s4, sp, 77f
                  sub          s10, sp, tp
                  srl          a0, t0, ra
                  bne          zero, s2, 87f
                  xori         a0, s9, -1981
                  nop
                  auipc        a4, 845637
77:               srai         t4, tp, 16
                  sll          a3, a7, ra
                  sltu         a0, s2, a3
                  blt          a1, a4, 97f
                  blt          s1, a3, 101f
                  slt          ra, s10, s0
83:               andi         s0, sp, 574
                  ori          t4, s5, -1057
                  sll          s0, s2, t5
                  sub          s11, gp, s2
87:               xori         a1, s8, -1936
                  xori         a6, a2, -1633
                  sra          a4, sp, a3
                  slt          t4, a0, a2
                  nop
                  srai         t5, a1, 23
                  slti         s4, s5, -1219
                  xor          s6, s8, s3
                  srai         a0, s4, 13
                  xori         s7, s10, -1516
97:               xori         a3, a7, -731
                  and          t5, s11, s7
                  ori          s9, a3, -1535
                  andi         s0, a3, -1613
101:              or           zero, s4, a0
                  srai         t6, t5, 8
                  beq          s6, tp, 104f
104:              add          a2, a0, s1
                  srl          a0, s0, t4
                  sub          s6, s3, t2
                  sltu         s5, a0, s8
                  nop
                  sub          a6, s2, s7
                  slti         s7, tp, -1659
                  xori         a2, t4, -1766
                  slti         s9, a4, 229
                  bltu         a2, s11, 120f
                  srai         s9, s7, 10
                  bne          a4, a2, 116f
116:              andi         t0, t1, 1555
                  slti         t3, sp, -533
                  add          a6, t6, t4
                  sltu         a7, a7, tp
120:              add          a1, s4, s8
                  srai         gp, a6, 25
                  sll          s6, t0, a0
                  sltiu        s1, s11, -1116
                  srai         sp, t2, 29
                  sltu         s5, s7, a1
                  andi         s11, t3, -1515
                  xori         s5, t0, 878
                  srli         a4, s3, 4
                  xori         t4, a2, 1612
                  sll          s1, s5, t5
                  nop
                  ori          a0, a4, 1686
                  and          zero, s2, s5
                  andi         zero, a4, -1196
                  bge          a4, t3, 141f
                  srl          a5, t0, tp
                  sll          s0, tp, s3
                  add          t5, zero, tp
                  sltu         a1, a6, t2
                  addi         s7, s9, -1591
141:              lui          s11, 1821
                  or           s11, a0, gp
                  bne          a7, gp, 163f
                  andi         s8, zero, 183
                  srli         s3, s9, 1
                  xor          ra, t6, s3
                  or           s9, s8, t2
                  slti         t1, a1, 385
                  bge          s11, tp, 153f
                  xor          s10, s8, a1
                  and          s0, s9, a2
                  and          a5, s10, tp
153:              sltiu        s9, gp, 34
                  auipc        s5, 312345
                  bne          s2, a3, 173f
                  bltu         t4, s7, 162f
                  bgeu         s10, a2, 164f
                  sub          t6, t1, t5
                  sra          s3, a4, t2
                  xor          sp, s8, t1
                  addi         sp, a3, -1619
162:              bne          zero, s2, 165f
163:              srai         a5, a4, 24
164:              srl          s7, a6, t0
165:              xori         t6, a5, -433
                  xor          a6, sp, ra
                  nop
                  ori          s8, t3, 769
                  sll          s3, a1, a7
                  slli         s1, s4, 24
                  bne          gp, zero, 184f
                  add          a7, a5, a6
173:              srli         ra, t2, 18
                  add          a5, s4, t0
                  srl          a0, s9, t3
                  auipc        a6, 433155
                  add          s9, s3, a2
                  bne          s4, s6, 196f
                  bne          t5, t1, 181f
                  sltiu        a5, s6, -608
181:              blt          a5, s8, 182f
182:              auipc        s11, 824363
                  and          a4, a6, s6
184:              srai         s5, tp, 31
                  srli         ra, a2, 26
                  add          t6, a1, a1
                  sub          a6, s8, a3
                  sub          s8, t0, t3
                  beq          ra, a0, 205f
                  xor          a2, s3, s3
                  bne          zero, s6, 196f
                  nop
                  bgeu         s11, a4, 200f
                  blt          gp, tp, 195f
195:              sll          a4, sp, t3
196:              bltu         sp, t1, 203f
                  auipc        a5, 188102
                  slt          s9, gp, s6
                  bgeu         tp, ra, 205f
200:              add          s9, a5, s4
                  blt          s5, s0, 205f
                  bgeu         s4, a2, 222f
203:              srai         a1, s7, 6
                  add          t5, t2, t0
205:              or           t1, t1, s9
                  sub          t5, s7, a3
                  bge          ra, tp, 217f
                  sltiu        a0, s5, 1978
                  sltu         ra, t0, a6
                  sra          ra, s2, s2
                  slt          s11, s10, s6
                  sltu         t0, s9, s0
                  addi         t3, s1, 1297
                  nop
                  sll          t4, a7, s4
                  nop
217:              xor          a0, s8, a7
                  sub          s7, t4, t0
                  slli         zero, s7, 27
                  ori          t6, s9, -498
                  srli         t4, a7, 22
222:              sra          s11, t1, s1
                  nop
                  bltu         s9, s1, 232f
                  auipc        s5, 755160
                  slt          s7, t0, ra
                  xori         s11, s3, 1474
                  lui          s1, 970253
                  sltiu        s7, t3, 868
                  beq          a1, t1, 244f
                  bge          s11, t5, 235f
232:              bne          zero, tp, 234f
                  slti         t1, s2, 34
234:              and          t4, a2, a3
235:              nop
                  sll          s4, a6, a5
                  xori         s6, s1, 1603
                  auipc        zero, 888683
                  nop
                  sub          s9, s2, a7
                  lui          s8, 649448
                  nop
                  sltiu        a6, tp, 441
244:              sra          a6, tp, a2
                  bltu         s3, s6, 253f
                  blt          t0, s10, 266f
                  auipc        s11, 886041
                  nop
                  slt          a0, s3, t0
                  srl          t3, zero, t5
                  sltiu        a6, a3, -362
                  sll          a6, s0, tp
253:              xori         a7, zero, -247
                  xor          a0, tp, a3
                  sra          a2, sp, t0
                  slt          s11, s2, s9
                  bltu         tp, t4, 270f
                  bne          a4, s6, 264f
                  lui          s3, 270132
                  and          s11, s4, s5
                  blt          s3, t0, 280f
                  sra          s0, s4, a7
                  bne          s6, t2, 282f
264:              srai         t1, gp, 11
                  sub          a7, s6, tp
266:              lui          s3, 1036253
                  slli         s5, t3, 17
                  sltu         s3, s10, a7
                  and          gp, s5, sp
270:              nop
                  sra          t3, s2, tp
                  blt          t5, s11, 275f
                  add          t5, t6, t2
                  srl          s3, t0, s7
275:              andi         ra, t0, 1930
                  andi         gp, tp, -264
                  andi         s9, a0, -802
                  bne          t5, s2, 285f
                  add          t6, a1, a7
280:              sll          a6, s1, a5
                  sub          t3, s3, s2
282:              srli         s8, s8, 21
                  slli         s0, s10, 19
                  and          s5, a5, s10
285:              andi         s1, s5, 1180
                  sub          s3, s5, t1
                  beq          t4, s4, 304f
                  bge          s7, t4, 301f
                  blt          zero, a3, 309f
                  srl          a4, a2, s3
                  auipc        s3, 492588
                  srli         s6, tp, 22
                  sub          s7, s8, s0
                  slli         t1, a2, 26
                  srai         a6, t6, 14
                  srl          s9, s4, a3
                  xor          a4, s5, tp
                  or           sp, a3, s11
                  add          s5, a6, ra
                  srl          s1, sp, s0
301:              blt          sp, s11, 305f
                  blt          s11, s7, 309f
                  bgeu         a7, s0, 321f
304:              bne          t5, s5, 308f
305:              srl          a0, a2, tp
                  andi         sp, s2, -84
                  bgeu         a7, zero, 312f
308:              addi         s7, s3, 113
309:              xor          a7, tp, gp
                  ori          s1, s6, -385
                  addi         s10, s11, -909
312:              bne          t0, ra, 331f
                  slti         t4, t5, 46
                  xor          s1, t1, t4
                  ori          s4, s4, 1166
                  sub          a4, s10, s11
                  xor          s0, s7, t6
                  ori          s6, s6, -392
                  andi         s8, a1, 148
                  addi         a3, a0, -1967
321:              bltu         s1, a6, 335f
                  nop
                  sub          s10, t6, t1
                  or           t1, s3, a2
                  or           t1, a7, s5
                  sll          a0, tp, s7
                  xori         t3, a7, 1844
                  lui          t5, 575757
                  andi         s1, s2, 606
                  slti         s7, a1, 943
331:              ori          t4, s9, 792
                  srli         s11, s11, 22
                  nop
                  srl          s7, t2, s9
335:              or           s6, t4, t5
                  auipc        s7, 694503
                  xori         a4, ra, 1015
                  slt          s11, t0, a2
                  srl          ra, t0, a1
                  bltu         s6, sp, 356f
                  sll          s11, s11, a3
                  srai         t6, t6, 30
                  xori         s9, s4, -1286
                  auipc        a2, 858609
                  blt          t3, s11, 352f
                  slli         s11, ra, 28
                  addi         a7, s3, -589
                  sltiu        ra, s6, 1407
                  addi         s4, s5, -116
                  slti         s8, t2, -1621
                  beq          t2, a5, 353f
352:              blt          t4, a7, 362f
353:              bgeu         a1, s7, 373f
                  sub          a5, tp, ra
                  ori          s4, t5, 1176
356:              srl          s10, a4, a6
                  or           zero, t4, t0
                  nop
                  xor          a1, t4, t5
                  beq          zero, s7, 378f
                  srai         t5, s8, 12
362:              sub          s5, a1, t3
                  beq          a4, t2, 370f
                  or           t0, s2, tp
                  xor          zero, s10, t2
                  bgeu         a3, s0, 384f
                  srai         s8, t5, 0
                  srl          ra, s8, ra
                  la           t6, sub_9
                  xori         s7, a1, -192
                  sub          a3, t0, a6
                  xor          a1, t4, t3
                  srl          s11, a7, a4
                  addi         t6, t6, -331
                  auipc        t1, 156957
                  and          s5, a0, t5
                  sltiu        s3, s5, 1046
                  beq          t5, a6, sub_5_j11 #branch to jump instr
                  sltiu        gp, t3, 1910
sub_5_j11:        jalr         a6, t6, 331 #jump sub_5 -> sub_9
                  srl          a4, t4, s6
                  or           sp, s10, s5
370:              slt          s4, t2, s7
                  andi         s3, a7, -261
                  auipc        ra, 708333
373:              add          a7, t5, s10
                  la           s11, region_1+450 #start riscv_load_store_rand_instr_stream_7
                  sb           a6, 3(s11)
                  xor          a7, s7, tp
                  lhu          s10, 2(s11)
                  ori          s4, s7, -537
                  sltu         s4, ra, t2
                  sb           s4, -8(s11)
                  lh           s9, -14(s11)
                  lb           t1, -16(s11)
                  sh           t1, 8(s11)
                  lbu          a6, -14(s11)
                  lw           s5, -14(s11)
                  lb           t4, 3(s11)
                  srl          s8, zero, tp
                  lbu          a4, 9(s11)
                  sll          s0, t6, s0
                  srli         s7, a1, 0
                  sb           t3, 4(s11)
                  lhu          sp, 6(s11)
                  sb           ra, 9(s11)
                  sb           s0, 0(s11)
                  sw           s0, 6(s11)
                  slli         ra, gp, 28
                  sb           t2, 7(s11)
                  lbu          t1, 7(s11)
                  slli         s5, s2, 15
                  lbu          a4, -7(s11)
                  add          t6, t1, s3
                  lbu          t6, -5(s11)
                  xor          a1, tp, t6
                  addi         gp, tp, 1238
                  sw           t3, 2(s11)
                  sb           t6, 16(s11)
                  lbu          s7, 7(s11)
                  lb           s1, 9(s11)
                  srai         zero, zero, 21
                  or           s0, s8, gp
                  sb           s3, -15(s11)
                  lbu          s0, 7(s11) #end riscv_load_store_rand_instr_stream_7
                  add          s5, s11, t3
                  beq          s1, a4, 394f
                  srai         s6, s6, 24
                  and          a0, gp, s7
378:              blt          s10, a2, 395f
                  or           s10, s6, sp
                  bgeu         s8, s7, 400f
                  srai         ra, s10, 18
                  bne          ra, tp, 388f
                  sltiu        s5, s6, -1750
384:              sll          s3, a5, s5
                  lui          a3, 312181
                  bne          gp, a1, 390f
                  bge          s3, t3, 391f
388:              or           a4, t4, ra
                  ori          a7, a0, 677
390:              addi         s0, a4, -261
391:              bgeu         a3, a2, 392f
392:              sub          a6, a5, ra
                  slt          t3, t0, a0
394:              slt          a5, s0, a6
395:              bgeu         a1, s7, 396f
396:              beq          a1, t6, 416f
                  addi         a6, t3, 653
                  sub          s9, a7, t0
                  slti         a6, s7, -448
400:              addi         t1, s7, 172
                  auipc        s6, 743858
                  slt          s10, a4, s11
                  sltiu        a7, a6, 822
                  sltu         a7, a6, s2
                  sll          a2, a2, t3
                  sltiu        t0, tp, 1294
                  ori          s5, t1, 1031
                  bge          s0, s2, 421f
                  and          s3, s11, s0
                  slli         a6, zero, 25
                  nop
                  nop
                  addi         a2, a1, -961
                  xori         a5, a0, 1569
                  xori         t0, t3, -1535
416:              bltu         gp, t2, 424f
                  and          s0, s6, a2
                  slli         s11, s7, 31
                  blt          s2, t2, 422f
                  sltiu        s3, a5, -1723
421:              sltu         s8, t0, a6
422:              sll          s5, sp, s7
                  slt          zero, a0, a5
424:              xori         gp, ra, 1292
                  xori         a4, ra, 785
                  slt          a5, s9, t2
                  sltu         t4, t2, zero
                  bge          ra, gp, 434f
                  bgeu         sp, ra, 437f
                  slt          a6, a2, t4
                  beq          s8, t3, 438f
                  blt          a0, s11, 445f
                  srai         a3, t2, 27
434:              sub          s10, s8, s0
                  slli         s1, s11, 18
                  srai         s5, s7, 22
437:              auipc        s3, 138826
438:              andi         a6, a6, -1149
                  sub          t0, a7, t2
                  blt          a4, a0, 442f
                  srl          t4, t0, a2
442:              nop
                  srai         s3, s11, 12
                  srai         a7, s9, 7
445:              bne          sp, ra, 452f
                  bgeu         s1, s7, 464f
                  xori         t6, s9, -1642
                  bltu         a0, a3, 455f
                  slti         s7, gp, 199
                  bltu         t1, s6, 457f
                  andi         a0, tp, 154
                  la           a4, region_0+1842 #start riscv_load_store_rand_instr_stream_19
                  lb           s3, -57(a4)
                  ori          a2, s11, -865
                  sll          s4, s7, a2
                  lbu          t3, -5(a4)
                  sltu         t0, s2, t3
                  lb           a7, 49(a4)
                  lbu          s4, 6(a4)
                  sltiu        s6, t2, -1748
                  lbu          s3, -9(a4)
                  lh           s8, -20(a4)
                  lb           s11, 37(a4)
                  sra          s9, a7, a7
                  slt          a5, s10, t0
                  srli         s5, s2, 1
                  slti         s5, a3, 547
                  lh           s8, 20(a4)
                  lb           s6, 49(a4)
                  lbu          s11, -31(a4)
                  lhu          a0, -2(a4)
                  sb           tp, 19(a4)
                  sltu         t0, sp, s8
                  add          s7, gp, t6
                  sb           s10, -19(a4)
                  lbu          s1, -64(a4)
                  sh           s9, -24(a4)
                  lbu          t5, -24(a4)
                  sb           gp, 13(a4) #end riscv_load_store_rand_instr_stream_19
452:              slt          t6, sp, s3
                  beq          t6, t2, 469f
                  sltiu        t3, zero, -865
455:              sub          s4, a1, s0
                  xor          s8, a4, a0
457:              bge          s5, ra, 462f
                  bne          zero, tp, 478f
                  add          ra, s2, s10
                  bge          t1, a4, 479f
                  bgeu         t6, s3, 469f
462:              slti         t0, s5, -186
                  bltu         a3, t2, 465f
464:              bge          s0, s7, 478f
465:              blt          a7, s4, 467f
                  add          a3, a6, a2
467:              or           a5, t2, s10
                  slti         s11, ra, 2011
469:              xori         s11, t1, -690
                  sub          s6, a1, s3
                  xor          a6, a3, tp
                  xori         s0, t5, 1562
                  sll          s3, t4, s10
                  nop
                  bltu         s3, a3, 495f
                  nop
                  slt          t6, s6, a3
478:              beq          a1, s6, 495f
479:              auipc        zero, 323215
                  slti         ra, t0, 797
                  lui          ra, 512937
                  bgeu         s0, s11, 502f
                  slli         s4, a0, 16
                  lui          s8, 410248
                  bge          s10, s4, 492f
                  slti         gp, a1, 1854
                  nop
                  srl          t0, a0, s9
                  addi         a2, s2, -981
                  srli         a3, t2, 22
                  ori          s1, s6, 1943
492:              beq          s5, sp, 495f
                  srli         s8, ra, 23
                  and          t0, s0, a2
495:              bge          s3, sp, 496f
496:              sra          s0, a5, a3
                  blt          a1, s4, 498f
498:              or           ra, s2, a3
                  addi         a5, t2, -1948
                  sra          s3, tp, a3
                  ori          zero, a6, -476
502:              nop
                  addi         s9, t5, -1413
                  ori          s4, t5, 686
                  beq          zero, s4, 524f
                  xori         s8, t4, -673
                  add          t6, tp, s6
                  auipc        a6, 739854
                  bltu         s1, s1, 522f
                  bgeu         a0, a3, 520f
                  lui          zero, 397500
                  bgeu         sp, t3, 516f
                  ori          s3, s9, -459
                  srl          t1, zero, t1
                  nop
516:              nop
                  sltu         a6, ra, s5
                  srli         t1, t3, 27
                  ori          a6, a5, -1496
520:              slt          a0, s11, t2
                  lui          a1, 493504
522:              slli         t0, a7, 19
                  bge          s5, a0, 541f
524:              beq          s11, s3, 528f
                  sltiu        s4, ra, -397
                  sll          s10, s8, a7
                  nop
528:              auipc        a6, 59879
                  addi         t3, s7, 42
                  sltiu        sp, s9, -279
                  nop
                  sll          s6, a3, t1
                  andi         a1, t1, 737
                  bltu         zero, a4, 541f
                  sub          a4, a2, t0
                  bgeu         sp, sp, 544f
                  blt          s5, sp, 543f
                  bgeu         s9, s10, 551f
                  bgeu         s4, s6, 543f
                  xori         s7, s9, 660
541:              auipc        a3, 208282
                  slli         s9, ra, 14
543:              slti         s10, s7, 473
544:              auipc        s5, 510667
                  xor          a7, t4, s2
                  sub          a7, a5, a3
                  addi         a2, s8, 1072
                  srli         a3, s6, 19
                  sra          s10, zero, a3
                  add          s8, t0, s8
551:              sltu         a5, s2, t2
                  and          s3, s5, t2
                  srli         a1, s2, 23
                  slti         a7, a4, -1107
                  bltu         t1, a7, 561f
                  srai         t6, t0, 31
                  andi         s7, s1, -534
                  or           t1, zero, s1
                  srli         s5, t0, 23
                  srl          a3, ra, zero
561:              bgeu         s6, ra, 581f
                  bge          t6, a1, 564f
                  sltiu        gp, t3, -385
564:              blt          s0, a5, 578f
                  sltu         a3, a7, t2
                  srli         a5, s7, 5
                  sll          s10, s10, t2
                  beq          t3, a5, 572f
                  bne          t4, s11, 588f
                  addi         t4, t1, -1949
                  xor          s7, a3, s10
572:              xor          t0, zero, a5
                  bge          s6, s3, 580f
                  addi         gp, sp, -776
                  beq          a7, a3, 576f
576:              srli         s4, t5, 31
                  and          a1, t1, t4
578:              bge          s7, s9, 581f
                  sra          zero, s7, a5
580:              ori          s11, a4, -62
581:              add          gp, sp, a6
                  nop
                  addi         a0, a5, -336
                  sra          t1, s4, s6
                  ori          s3, s3, -306
                  nop
                  ori          s10, s7, 308
                  nop
                  sll          s5, gp, s9
                  la           s7, sub_10
                  add          a3, s9, t1
                  sltu         a1, s5, s6
                  or           t6, s7, zero
                  sltu         a6, s8, gp
                  addi         s7, s7, 662
                  bgeu         s11, gp, sub_5_j9 #branch to jump instr
                  andi         s10, t5, 609
sub_5_j9:         jalr         a6, s7, -661 #jump sub_5 -> sub_10
                  beq          a0, t5, 603f
                  addi         s10, t5, 28
                  srl          t3, s0, gp
588:              andi         sp, a2, -986
                  auipc        s10, 875793
                  sll          t1, zero, s8
                  blt          t3, t1, 599f
                  xor          a1, s3, s0
                  beq          t2, s10, 597f
                  auipc        a5, 670291
                  blt          s8, s2, 602f
                  add          s1, s9, zero
597:              bgeu         a7, a5, 617f
                  sltu         ra, a4, a4
599:              blt          s3, s2, 606f
                  sra          s0, a7, t4
                  or           s3, gp, s9
602:              bltu         t0, sp, 622f
603:              xori         s9, ra, 1433
                  bltu         s8, t6, 610f
                  ori          s1, a2, -2001
606:              sltu         s11, a7, s2
                  srai         t4, a1, 23
                  sltu         a4, s4, t6
                  bge          s0, s7, 616f
610:              sltiu        t4, a2, 1653
                  auipc        s10, 135012
                  blt          s7, tp, 616f
                  xori         a1, ra, -191
                  beq          t5, s3, 619f
                  and          ra, s3, t3
616:              bne          s7, s8, 633f
617:              auipc        sp, 450889
                  auipc        t4, 86881
619:              slli         ra, a5, 30
                  sltu         t5, s5, a6
                  nop
622:              and          a1, t5, s1
                  xor          s11, s9, t6
                  and          s4, s7, sp
                  sltiu        s11, t2, -784
                  bgeu         t3, a6, 644f
                  bge          a4, a7, 628f
628:              auipc        s8, 785582
                  blt          s6, gp, 631f
                  beq          tp, a5, 638f
631:              lui          a2, 982463
                  add          a1, t1, s5
633:              or           t0, s6, ra
                  auipc        gp, 156077
                  xor          a3, s10, s1
                  auipc        sp, 721502
                  sub          s5, s0, t4
638:              blt          s2, a0, 651f
                  slt          a3, a0, s11
                  sub          a7, s5, s4
                  sltu         t1, a4, zero
                  beq          t4, s2, 658f
                  bge          a4, s6, 649f
644:              bge          sp, t3, 654f
                  bne          s7, t0, 658f
                  sub          a6, t1, t4
                  nop
                  bgeu         t3, s0, 667f
649:              xor          t4, t5, t2
                  bne          a3, tp, 656f
651:              srai         a3, a7, 23
                  bne          s8, a1, 653f
653:              xori         a3, zero, 1280
654:              sub          sp, s1, a3
                  slti         t5, t4, 359
656:              slt          s6, a7, s9
                  slti         sp, s1, 1275
658:              xori         s4, a7, 1985
                  xori         s6, a2, 374
                  bge          tp, s8, 667f
                  slt          a3, s3, s5
                  sra          a5, s10, s8
                  and          t6, a0, s11
                  srl          s4, s8, a1
                  and          a1, ra, t1
                  sub          s5, sp, a1
667:              and          gp, s5, a1
                  beq          t6, tp, 678f
                  beq          a4, t3, 674f
                  srl          s9, s0, gp
                  bgeu         t5, s0, 679f
                  bltu         zero, zero, 674f
                  sra          s3, a7, t2
674:              beq          s11, a7, 694f
                  srli         s10, zero, 10
                  addi         s3, s4, -976
                  sltu         a5, sp, s6
678:              srl          t4, t0, a6
679:              bne          a7, s10, 682f
                  addi         zero, gp, -289
                  and          t5, a4, ra
682:              auipc        a4, 634790
                  lui          t3, 37569
                  ori          s3, a4, -589
                  and          a4, s11, ra
                  or           s0, s3, s8
                  ori          a6, sp, -1813
                  srai         t1, a6, 29
                  srl          zero, a4, ra
                  add          a5, s4, a2
                  lui          sp, 293329
                  sll          a1, gp, s4
                  lui          s4, 871114
694:              slti         s10, t4, -771
                  xor          t6, a0, s3
                  sub          s7, s10, s7
                  sll          t1, sp, a2
                  bge          a4, s7, 711f
                  sub          sp, a1, a0
                  ori          s7, a6, 792
                  bltu         sp, s7, 708f
                  slti         sp, a7, 1835
                  sltiu        a1, s4, 1615
                  or           s10, t6, s6
                  beq          s0, a3, 711f
                  bgeu         s0, a4, 708f
                  blt          t0, t0, 727f
708:              addi         s11, gp, -475
                  bne          s3, t3, 710f
710:              add          s10, ra, s8
711:              ori          ra, t4, 1911
                  sub          t1, s7, a1
                  auipc        s0, 812339
                  lui          a6, 447667
                  ori          s0, a3, 1664
                  sub          s0, t3, a2
                  add          ra, tp, a2
                  bgeu         t3, s2, 722f
                  xor          t5, t3, sp
                  xori         t6, a4, -1667
                  nop
722:              blt          a0, a4, 738f
                  andi         s4, a7, 1516
                  bltu         t3, ra, 728f
                  addi         s3, s4, -729
                  sra          gp, a2, t6
727:              sltiu        s4, t2, -645
728:              bge          a1, t1, 742f
                  andi         s10, s5, 1605
                  sltu         t4, t0, a3
                  lui          a1, 680198
                  and          a0, t2, t5
                  sltu         t5, s5, s6
                  bge          s7, t0, 752f
                  sll          a7, s7, s2
                  bge          s4, a3, 743f
                  nop
738:              bltu         tp, s10, 745f
                  slt          ra, s2, t0
                  lui          a0, 72850
                  andi         a0, t4, 949
742:              bge          s6, s6, 760f
743:              slli         a1, s7, 25
                  sltiu        s10, ra, 1594
745:              slti         a7, s9, 1687
                  srai         s8, t6, 30
                  bge          t5, zero, 766f
                  auipc        t1, 797854
                  slti         s8, a2, -1656
                  bge          t1, sp, 770f
                  slli         a6, a4, 26
752:              srai         a7, t0, 20
                  sll          s8, s9, t6
                  bge          a2, s4, 767f
                  andi         s5, tp, -523
                  slli         s7, s6, 4
                  blt          s11, sp, 774f
                  xor          t5, gp, s8
                  slli         a5, s11, 3
760:              sltiu        zero, s9, 444
                  and          sp, s4, gp
                  sra          s8, sp, a2
                  slli         s5, t1, 2
                  addi         t5, s0, 507
                  beq          a7, a0, 773f
766:              blt          a6, s2, 770f
767:              bne          a4, s3, 786f
                  sra          a2, sp, a3
                  sltiu        a5, t1, 798
770:              xor          s9, zero, t5
                  sltiu        a4, t1, 1797
                  slti         gp, a0, -89
773:              addi         s6, tp, 312
774:              beq          a7, s10, 784f
                  srai         t5, a0, 25
                  sltiu        t1, a6, -467
                  bgeu         t2, s5, 796f
                  sltu         sp, a2, s7
                  sltiu        gp, s1, 760
                  slt          a5, t6, t2
                  and          a1, t0, a6
                  sltu         s4, s8, s10
                  ori          a7, t1, -935
784:              bne          a3, s8, 785f
785:              slt          s4, s11, t5
786:              addi         a4, s1, 1932
                  addi         s3, s2, -302
                  and          a0, t4, s11
                  xor          zero, s3, s5
                  xor          s0, a4, t3
                  and          s4, s10, s10
                  bgeu         sp, t5, 796f
                  sll          a3, s5, tp
                  nop
                  or           zero, s0, s10
796:              bgeu         s1, s9, 801f
                  blt          zero, t4, 801f
                  add          a1, t2, t4
                  auipc        s1, 18217
                  nop
801:              srl          t6, a6, t5
                  sll          s1, t3, t5
                  sra          s0, t4, t2
                  bge          s9, s0, 805f
805:              slt          s1, s5, s6
                  xori         a4, s1, 1587
                  lui          s0, 831762
                  bge          t6, a4, 816f
                  xor          t5, a7, s4
                  bge          s8, zero, 817f
                  beq          s11, t3, 825f
                  and          s9, ra, t4
                  bne          a5, a0, 816f
                  sltiu        t3, t4, -178
                  ori          ra, s6, -220
816:              bge          t0, s6, 834f
817:              nop
                  bgeu         a7, t4, 824f
                  sltiu        a7, t0, -1454
                  bgeu         s0, a7, 837f
                  addi         t0, s3, -518
                  slli         gp, s6, 12
                  ori          t3, t6, 916
824:              srai         a5, a2, 22
825:              ori          gp, tp, -1530
                  add          a0, s10, s7
                  ori          a3, s1, 1966
                  bltu         s8, s9, 841f
                  srai         s9, tp, 15
                  srl          a6, t4, sp
                  sra          gp, s1, s7
                  lui          s0, 901824
                  slt          a2, s1, a0
834:              ori          t3, sp, 799
                  xor          t0, t0, s10
                  sltu         s3, a2, t5
837:              slt          s1, t3, t0
                  ori          t4, s10, -909
                  and          a1, a5, s3
                  sub          ra, sp, s10
841:              nop
                  srli         s1, s7, 26
                  andi         gp, s4, -1218
                  ori          t6, s5, -60
                  nop
                  beq          t2, a4, 866f
                  srli         a2, a6, 0
                  auipc        a3, 542587
                  addi         s3, s11, -2002
                  and          gp, sp, s6
                  ori          a7, a0, 271
                  xori         a6, sp, -205
                  nop
                  auipc        zero, 624830
                  srai         s4, s4, 21
                  slli         s10, a4, 19
                  andi         s4, t2, 1926
                  sll          zero, t1, t0
                  bge          zero, s1, 872f
                  blt          s5, t4, 862f
                  sra          s6, tp, s3
862:              add          a3, s0, a0
                  sra          ra, ra, t0
                  slti         a4, s4, 521
                  blt          a0, s1, 871f
866:              srai         a5, tp, 9
                  lui          s11, 87018
                  srl          a6, zero, s5
                  add          s11, a7, a3
                  sltu         s1, sp, s10
871:              srai         a5, a1, 25
872:              bgeu         s11, sp, 890f
                  add          t5, a6, s10
                  sra          s3, a2, s5
                  srli         t5, zero, 7
                  add          t6, t2, t4
                  sltu         s11, t1, s8
                  slli         a2, t5, 22
                  bne          t6, ra, 887f
                  sltu         t0, s11, a1
                  sltu         a1, t0, t0
                  or           s5, a2, a4
                  sltiu        a0, t4, 123
                  slli         s0, s11, 16
                  srai         s7, t4, 15
                  lui          a0, 1006718
887:              sll          a6, sp, a4
                  auipc        t4, 230824
                  xor          s6, s4, s4
890:              ori          s0, s9, -1862
                  slti         t5, t5, 76
                  sltu         t1, s6, s8
                  srli         a5, s5, 26
                  slt          a6, zero, a3
                  bge          s6, a1, 899f
                  bne          t3, s5, 903f
                  xor          s0, s7, a4
                  add          a5, a6, s9
899:              andi         s6, s9, 1467
                  add          t0, s8, t2
                  sub          t4, s3, zero
                  auipc        s10, 932084
903:              bge          s8, s11, 922f
                  xori         a3, ra, -237
                  auipc        t1, 686813
                  or           a4, s11, s2
                  sltu         s1, s7, t5
                  blt          s10, s11, 924f
                  ori          t1, a4, 613
                  or           s7, s4, t6
                  bgeu         a6, s9, 931f
                  add          ra, t0, s6
                  ori          s5, zero, -497
                  blt          tp, t1, 934f
                  bge          ra, zero, 922f
                  bgeu         t5, s4, 923f
                  srai         sp, sp, 18
                  blt          s11, a7, 920f
                  sll          ra, s9, s9
920:              slt          sp, s11, s5
                  sub          a7, s10, s9
922:              slti         a3, a0, -1167
923:              slt          a7, s11, a7
924:              addi         a6, zero, 2010
                  srl          s5, a5, s5
                  slti         a3, s9, -812
                  bgeu         a1, a4, 935f
                  sltiu        a3, a3, 644
                  srli         s0, s4, 4
                  lui          s7, 276938
931:              sltiu        s9, a4, 1910
                  bltu         s5, t2, 951f
                  lui          t3, 59467
934:              auipc        a0, 863410
935:              auipc        ra, 723404
                  ori          s9, a2, 1844
                  ori          t1, a0, 313
                  nop
                  addi         t6, t0, 1904
                  bne          s11, zero, 953f
                  slt          sp, s1, s1
                  srai         ra, a3, 14
                  blt          a4, t6, 963f
                  srai         t1, a5, 26
                  xori         a5, s6, 390
                  bne          s0, tp, 965f
                  auipc        s6, 569994
                  or           zero, a3, s0
                  ori          t3, t0, -1966
                  sll          s7, s9, ra
951:              or           a3, a5, s2
                  xori         s6, t1, -253
953:              slti         t4, a1, 872
                  nop
                  xori         a1, s10, 723
                  and          t4, t5, a0
                  andi         s0, sp, 1445
                  sltiu        gp, ra, 1269
                  or           a0, t5, s11
                  xor          a3, s7, a0
                  auipc        ra, 870719
                  addi         a3, a0, 1279
963:              slli         s3, t1, 13
                  srl          a0, zero, zero
965:              auipc        a7, 305139
                  bne          a6, s2, 968f
                  sltu         s6, s5, t4
968:              blt          tp, t0, 969f
969:              addi         t1, a1, -790
                  slti         s8, s8, 894
                  sra          a4, t6, t5
                  add          t1, s5, t1
                  sra          a4, a2, t4
                  addi         t1, s8, -335
                  ori          s0, a0, -201
                  la           sp, region_1+101 #start riscv_load_store_rand_instr_stream_26
                  sub          a2, t0, s11
                  srli         a3, s2, 28
                  lh           s10, -5(sp)
                  and          s6, t3, t1
                  xori         s9, a0, -592
                  lb           t6, -5(sp)
                  lb           a2, -9(sp)
                  lhu          a2, -1(sp)
                  auipc        a4, 395709
                  and          s5, sp, s1
                  slli         t5, t5, 2
                  sb           s11, -3(sp)
                  sb           s0, 14(sp)
                  lui          s11, 84972
                  and          s7, tp, zero
                  sb           a3, -6(sp)
                  sltiu        a1, a0, 374
                  lb           t6, 4(sp)
                  srli         a2, ra, 15
                  lhu          t5, -11(sp)
                  sh           a0, -7(sp)
                  sb           s8, 6(sp)
                  sb           a7, -4(sp)
                  lb           a1, 0(sp)
                  xor          s9, a4, a0
                  lb           a1, 0(sp)
                  srli         s11, gp, 22
                  lbu          a7, 10(sp)
                  sub          t1, a4, s6
                  lbu          t0, 2(sp)
                  lhu          a4, -7(sp) #end riscv_load_store_rand_instr_stream_26
                  auipc        t1, 297481
                  ori          sp, t2, -1409
                  add          t5, s6, ra
                  srl          a3, s4, t0
                  addi         a5, t4, -1255
                  srli         s6, s0, 3
                  bne          s11, s8, 989f
                  or           a1, tp, s7
                  bne          a2, s0, 1002f
                  srai         a3, t3, 14
                  bge          s11, t0, 993f
                  slli         a6, a0, 17
                  sub          a7, t1, a1
989:              sra          t3, a6, ra
                  slli         sp, s4, 26
                  blt          t2, s0, 1007f
                  auipc        sp, 141248
993:              beq          a5, s11, 1003f
                  and          a0, sp, s8
                  sll          ra, a5, a7
                  add          s10, t3, s4
                  srai         s4, tp, 14
                  auipc        t3, 253570
                  srli         t3, t2, 3
                  beq          a4, s2, 1002f
                  srli         a5, a1, 6
1002:             srl          s9, s6, s4
1003:             addi         zero, s9, -7
                  ori          t4, t3, -193
                  sltu         a1, s9, sp
                  sll          a2, s4, s8
1007:             sub          s1, a6, s3
                  srli         s10, gp, 31
                  lui          zero, 242171
                  and          gp, a6, a2
                  srl          sp, ra, s4
                  beq          t3, s2, 1020f
                  beq          s6, a1, 1018f
                  bge          t6, t4, 1021f
                  sltu         a0, s1, sp
                  sltiu        s7, t6, 687
                  bgeu         t1, s5, 1023f
1018:             addi         a4, tp, -76
                  beq          a4, t2, 1023f
1020:             beq          ra, ra, 1026f
1021:             add          zero, t6, s2
                  sub          s6, a6, t1
1023:             slt          sp, a3, s2
                  sltu         s1, zero, gp
                  slt          t6, ra, a3
1026:             and          a3, s5, s9
                  sltu         a5, t0, tp
                  sra          a2, a4, t1
                  lui          s3, 633460
                  srai         a3, s11, 5
                  bge          t5, t3, 1035f
                  xori         s11, a4, -1262
                  sra          s1, a0, s1
                  andi         s3, s10, -641
1035:             lui          zero, 935205
                  bne          s3, s4, 1049f
                  bge          gp, s4, 1054f
                  bge          sp, s1, 1039f
1039:             addi         t4, sp, 1393
                  andi         gp, zero, 2034
                  slt          a1, s10, a1
                  auipc        s7, 695608
                  sltiu        s5, t4, -810
                  bgeu         s6, s5, 1064f
                  bne          t3, s8, 1063f
                  nop
                  xor          s11, a4, s6
                  auipc        s0, 244068
1049:             auipc        s3, 820338
                  andi         s8, a4, 829
                  bne          t4, s10, 1054f
                  sltiu        s5, t4, -1917
                  blt          a5, t3, 1057f
1054:             slli         s9, a5, 27
                  nop
                  srli         a0, t2, 5
1057:             auipc        t6, 779380
                  bge          s0, s1, 1065f
                  nop
                  beq          zero, gp, 1080f
                  andi         t3, t5, -1215
                  auipc        t6, 782594
1063:             auipc        ra, 94952
1064:             srl          s1, t5, t5
1065:             slli         s11, s8, 21
                  srl          a5, a1, t3
                  sra          s11, t0, a5
                  beq          s5, ra, 1082f
                  add          s1, s0, s0
                  bne          s1, s3, 1090f
                  and          a5, a7, t4
                  xori         a6, t1, 1796
                  auipc        a5, 859003
                  sub          a2, a6, t6
                  add          a2, s0, t5
                  bge          a2, s1, 1092f
                  sra          a3, t0, a5
                  srl          gp, t0, a0
                  bge          sp, a1, 1085f
1080:             slt          t6, t4, t5
                  blt          s11, a1, 1084f
1082:             sub          s3, s6, t6
                  bge          tp, a6, 1100f
1084:             ori          s6, t3, 931
1085:             or           a3, ra, s1
                  auipc        s1, 444053
                  slt          t0, s6, s9
                  and          a5, a3, t1
                  and          a0, t5, t6
1090:             or           t0, t2, s5
                  sub          a7, t6, a1
1092:             and          zero, t3, s8
                  sub          s6, a5, gp
                  blt          gp, zero, 1114f
                  slti         s11, a5, -600
                  bge          tp, s0, 1098f
                  xor          s4, a2, s0
1098:             srai         a7, t0, 11
                  sra          a1, s4, ra
1100:             bne          t3, a0, 1120f
                  slti         t6, s0, 434
                  ori          gp, a2, 326
                  sra          a5, s10, a3
                  bgeu         s8, s9, 1111f
                  lui          a6, 797615
                  slti         gp, a2, -1101
                  ori          s8, s2, -1529
                  srl          s5, s4, a6
                  nop
                  and          a2, s2, t4
1111:             xori         sp, a5, 709
                  add          s3, s10, a4
                  bgeu         s4, s7, 1132f
1114:             bgeu         t5, gp, 1122f
                  add          s5, s4, s6
                  bgeu         t0, t6, 1117f
1117:             or           s9, s11, a1
                  bge          a3, s1, 1119f
1119:             ori          s11, s3, 601
1120:             bne          t5, s0, 1133f
                  or           s3, s1, a3
1122:             srai         t1, a2, 16
                  sltu         t4, s6, t4
                  srli         s7, t1, 0
                  addi         sp, s7, -937
                  bgeu         s3, s6, 1128f
                  ori          t1, s1, 1849
1128:             ori          ra, s11, 1930
                  xori         s7, s4, 380
                  srai         sp, a7, 9
                  slti         s5, sp, 1288
1132:             beq          s8, t3, 1142f
1133:             lui          s6, 220094
                  bge          s8, a7, 1142f
                  blt          s8, t0, 1139f
                  ori          s9, sp, 1842
                  sll          s7, a2, s3
                  and          ra, a6, s2
1139:             srl          s5, a4, s3
                  and          s5, gp, t2
                  sltu         t1, a1, t3
1142:             bne          a4, ra, 1149f
                  sltu         a4, s3, t0
                  srai         t6, t3, 26
                  srl          t1, s2, s0
                  and          s6, t6, s11
                  blt          t1, sp, 1165f
                  bgeu         s3, t2, 1155f
1149:             slti         s11, t4, 1941
                  srl          a3, t1, t0
                  sra          t3, s0, ra
                  nop
                  auipc        t4, 686764
                  bge          s6, tp, 1160f
1155:             nop
                  xor          t5, s7, t0
                  bgeu         s8, s1, 1162f
                  slt          t6, zero, s3
                  and          t5, s1, a6
1160:             slli         a3, s11, 31
                  sltiu        s6, s3, 1251
1162:             sll          gp, s4, s5
                  bgeu         a6, a4, 1177f
                  xori         zero, a0, -1272
1165:             xori         a3, t4, -741
                  bge          t0, t5, 1173f
                  slti         s6, s2, -841
                  bne          tp, s11, 1172f
                  xor          a7, a5, s6
                  lui          a6, 925805
                  srl          s11, t1, s10
1172:             slt          s7, a2, ra
1173:             and          s4, s11, s10
                  sltu         a3, s0, s6
                  bge          s8, s9, 1194f
                  bge          a6, s1, 1189f
1177:             slt          a6, s1, a1
                  sra          s3, s3, a7
                  bne          a0, s5, 1197f
                  srl          a1, gp, t6
                  srl          s11, a7, sp
                  addi         s11, t4, 904
                  bltu         gp, s9, 1187f
                  bltu         a6, s6, 1192f
                  beq          a6, t5, 1205f
                  slli         t4, a6, 5
1187:             slt          s11, t4, t5
                  add          a7, a4, t4
1189:             sltu         a4, s7, sp
                  xori         a3, sp, 1378
                  slti         t6, s4, 1306
1192:             bgeu         s9, s8, 1194f
                  or           ra, t6, t0
1194:             beq          s0, a6, 1213f
                  sltiu        s4, s1, 254
                  addi         s5, t4, 1629
1197:             addi         a1, s6, 1851
                  or           s6, t0, a5
                  slt          zero, tp, t0
                  ori          s7, t5, 2005
                  bge          s1, ra, 1208f
                  lui          s3, 436398
                  bne          s8, s2, 1210f
                  auipc        t6, 622881
1205:             bge          s4, t4, 1218f
                  srl          a3, t6, zero
                  add          s6, gp, s3
1208:             bge          s5, s3, 1221f
                  bgeu         a2, t0, 1211f
1210:             lui          s5, 854120
1211:             sltu         s0, sp, s9
                  bge          zero, s5, 1218f
1213:             srl          s3, a2, t5
                  blt          sp, s4, 1215f
1215:             andi         a0, sp, -1559
                  bne          a2, s10, 1236f
                  andi         s3, s7, 1031
1218:             bgeu         s9, t2, 1225f
                  blt          s4, s6, 1223f
                  bgeu         s11, a5, 1221f
1221:             andi         s11, a0, 1225
                  beq          a3, s10, 1241f
1223:             sub          sp, a4, t2
                  addi         a3, tp, 1248
1225:             bge          t4, t5, 1232f
                  bgeu         s1, s10, 1246f
                  nop
                  xor          s11, gp, s3
                  srli         s5, s8, 30
                  sra          s1, t1, a2
                  blt          sp, a1, 1236f
1232:             bge          a4, s0, 1250f
                  addi         ra, s1, 2012
                  srai         a6, ra, 30
                  srl          a2, a6, s1
1236:             bne          gp, t5, 1244f
                  sltiu        a1, s1, 1548
                  bgeu         a2, a6, 1252f
                  sltu         s11, s7, s3
                  srai         a1, a5, 14
1241:             blt          s9, s3, 1258f
                  andi         a3, a2, 488
                  sltu         ra, a3, t1
1244:             andi         t3, a2, -309
                  bge          tp, s4, 1251f
1246:             addi         s11, a5, 1979
                  bne          a7, a3, 1265f
                  auipc        a6, 506838
                  bgeu         t4, a6, 1252f
1250:             srl          gp, s5, a7
1251:             or           s6, s10, s2
1252:             addi         s9, a6, -1431
                  addi         a5, a5, -939
                  slti         t6, s10, -542
                  sll          a3, zero, s8
                  sub          t3, s11, s6
                  slt          s1, sp, s10
1258:             bge          a2, t4, 1274f
                  sub          s4, t6, t4
                  sltu         t3, zero, s0
                  bne          a0, t0, 1265f
                  slli         s10, s6, 30
                  auipc        a4, 249536
                  sltu         s8, a6, a0
1265:             beq          a7, gp, 1275f
                  srl          t1, s6, a5
                  or           t6, s5, a6
                  sltu         a0, s8, gp
                  bgeu         s4, a5, 1273f
                  bne          ra, s3, 1289f
                  addi         a7, a7, -2048
                  addi         t1, tp, 657
1273:             sra          t0, tp, tp
1274:             blt          tp, t4, 1291f
1275:             sub          t4, a1, sp
                  beq          s1, s4, 1290f
                  beq          s6, s4, 1284f
                  sra          t1, t6, a2
                  bne          tp, gp, 1285f
                  sltu         s4, t1, a5
                  xor          s3, s2, a7
                  andi         a2, a7, -1072
                  ori          zero, zero, -1112
1284:             andi         zero, t0, 1934
1285:             add          ra, a6, s5
                  lui          s0, 99737
                  bltu         a0, a7, 1300f
                  andi         s1, zero, -933
1289:             slt          s6, t3, s11
1290:             or           s3, s3, s3
1291:             slli         t5, sp, 10
                  and          s8, a4, a5
                  andi         s1, t4, 1499
                  ori          s5, tp, -514
                  bne          a4, a0, 1315f
                  slti         s9, a3, -1112
                  srl          a4, a3, t1
                  srl          zero, s11, s9
                  and          s10, a6, a4
1300:             or           a0, sp, t0
                  sra          s3, a2, gp
                  lui          a0, 914512
                  nop
                  bltu         s1, s2, 1320f
                  beq          s1, a1, 1309f
                  sltu         a4, t1, t0
                  slli         s4, t6, 2
                  srai         a6, s0, 12
1309:             slti         s5, s0, 2024
                  or           ra, t4, t4
                  lui          a0, 34527
                  nop
                  xor          a6, a3, s7
                  bne          a1, t4, 1321f
1315:             blt          t5, t1, 1320f
                  andi         ra, t3, 200
                  sra          t1, zero, s8
                  srli         s4, t2, 17
                  srl          a3, s3, s2
1320:             sll          s5, s8, gp
1321:             srli         a7, t3, 16
                  bne          t2, s1, 1325f
                  nop
                  sltiu        s10, a2, -1133
1325:             addi         zero, s4, 1586
                  blt          a4, t2, 1330f
                  bge          a1, s5, 1329f
                  sltu         t1, zero, s11
1329:             sll          s1, s6, sp
1330:             ori          t0, ra, 1111
                  srl          t4, s10, t3
                  blt          a4, t4, 1334f
                  srl          zero, a4, sp
1334:             ori          s3, a4, -348
                  auipc        gp, 797973
                  slt          zero, a6, t4
                  slti         s0, s0, 1753
                  lui          a5, 410223
                  slt          a5, a2, s0
                  slli         a3, s10, 12
                  or           a0, a3, a1
                  andi         a6, gp, 3
                  srl          s9, ra, a0
                  xori         t1, a3, 1152
                  bne          a1, a0, 1358f
                  sub          s10, t3, gp
                  lui          s10, 138317
                  slli         s3, t1, 19
                  nop
                  add          a1, a4, s11
                  srai         a7, s0, 4
                  sra          t1, s10, t3
                  andi         s4, s3, 649
                  slli         a7, s8, 12
                  srl          t0, tp, a5
                  xor          a4, sp, sp
                  srai         s1, s9, 2
1358:             srli         t6, t3, 25
                  add          t4, s0, a5
                  sra          sp, a1, s3
                  slt          t3, gp, a5
                  slt          t3, a6, tp
                  bne          s5, t2, 1370f
                  slli         s1, t3, 13
                  andi         t1, s4, 1274
                  bgeu         a6, s5, 1386f
                  sltu         s10, t5, s6
                  lui          a5, 805969
                  sub          a6, ra, t4
1370:             slti         s3, a3, -1816
                  bge          a6, zero, 1372f
1372:             sub          a0, ra, a4
                  srai         t1, s6, 28
                  srl          a6, t5, s4
                  sltu         s10, t1, s7
                  beq          s9, s5, 1380f
                  beq          s0, s8, 1378f
1378:             sltiu        t4, s4, -819
                  slli         sp, a2, 31
1380:             xor          sp, t0, tp
                  srl          s8, t2, s5
                  bne          s7, t2, 1400f
                  addi         s8, a0, -1401
                  beq          s3, t6, 1402f
                  blt          t1, t3, 1391f
1386:             slli         a6, t6, 22
                  sltu         a7, t1, t3
                  auipc        t6, 449677
                  sll          a1, s8, s10
                  sltiu        t3, t5, -1251
1391:             xori         t1, t4, 1122
                  nop
                  sltu         s7, a2, s1
                  slti         s10, a4, 1776
                  nop
                  ori          s5, s11, 440
                  blt          a1, s11, 1416f
                  xor          t5, t1, zero
                  slt          a1, s9, s7
1400:             add          t5, t4, t4
                  srai         s11, t2, 10
1402:             andi         t1, t3, 189
                  bltu         zero, gp, 1413f
                  and          t5, s1, t3
                  sltu         sp, gp, a7
                  sll          ra, t6, t3
                  ori          zero, a0, 1743
                  add          s5, t2, t6
                  bgeu         s8, ra, 1429f
                  slt          t5, s8, a0
                  xor          a3, t6, t1
                  srai         s6, t2, 4
1413:             bgeu         s11, a6, 1420f
                  bgeu         t6, a6, 1422f
                  nop
1416:             xor          zero, t2, s10
                  bne          t6, t3, 1425f
                  sra          t3, s9, a5
                  xori         s4, t2, 1430
1420:             slt          a0, s0, a0
                  andi         a7, t4, -940
1422:             auipc        s3, 417621
                  lui          a1, 869551
                  ori          a7, s0, 1877
1425:             bltu         s0, a1, 1426f
1426:             blt          a6, zero, 1433f
                  srai         s4, a6, 10
                  ori          s11, s4, -1476
1429:             srli         t6, a4, 29
                  sll          s5, sp, a0
                  sra          t1, a7, s11
                  add          s4, t0, a5
1433:             sltiu        s6, a1, -698
                  bgeu         a2, gp, 1444f
                  and          a7, t5, s0
                  bne          t4, a7, 1449f
                  lui          sp, 552748
                  sltu         a5, s1, s10
                  sub          s11, t2, t5
                  srai         s5, s2, 9
                  sll          a2, s1, a7
                  srai         sp, t4, 7
                  add          s0, s3, t2
1444:             slti         s0, t6, -1688
                  sll          s0, t3, s5
                  beq          s7, a1, 1448f
                  bge          s1, s7, 1454f
1448:             bne          tp, s2, 1465f
1449:             slt          a3, t5, a7
                  blt          t3, a2, 1458f
                  bltu         a3, a7, 1459f
                  sub          t1, a1, t0
                  srli         a0, a1, 6
1454:             bne          t6, a2, 1459f
                  auipc        sp, 838121
                  srai         sp, a4, 14
                  andi         a7, a1, -678
1458:             add          sp, s6, tp
1459:             bgeu         s0, t0, 1479f
                  ori          zero, ra, -1020
                  beq          sp, s2, 1480f
                  sltu         s0, a4, s5
                  and          sp, a3, tp
                  and          s4, a0, t3
1465:             or           a7, s4, s3
                  ori          s4, s1, -830
                  bne          s6, s10, 1481f
                  addi         s4, a3, -538
                  blt          s1, t5, 1475f
                  slt          a7, zero, s6
                  slli         gp, a0, 0
                  xori         s0, a5, -974
                  slli         t0, t3, 1
                  andi         a6, gp, -242
1475:             sra          s10, s2, s2
                  sra          a6, ra, s2
                  bgeu         s2, s7, 1490f
                  srli         a5, a7, 10
1479:             or           s1, sp, ra
1480:             and          s7, zero, t1
1481:             auipc        s10, 25071
                  srl          s10, t0, t1
                  slti         a6, s9, 568
                  addi         s4, s10, -1323
                  nop
                  slti         s6, t4, -107
                  auipc        s10, 796768
                  lui          ra, 1073
                  sltiu        s5, a1, -996
1490:             beq          s3, s1, 1508f
                  sub          t4, s7, t5
                  slt          zero, a3, a4
                  xori         gp, ra, -1015
                  xori         a0, a5, -251
                  bne          t0, s10, 1499f
                  sll          s10, zero, t1
                  and          s4, sp, t5
                  srli         t3, s8, 2
1499:             auipc        t1, 18971
                  sra          zero, s0, sp
                  bltu         a4, t3, 1521f
                  nop
                  add          gp, a1, t5
                  slli         a2, s8, 4
                  nop
                  ori          a3, s4, -256
                  srl          t4, a4, s5
1508:             bne          a3, t2, 1515f
                  lui          t0, 137771
                  nop
                  sltu         s8, a0, a1
                  sll          t6, t6, zero
                  bne          s1, s6, 1520f
                  xori         a3, t2, 1567
1515:             srai         s9, t6, 5
                  sub          s1, t6, t3
                  srai         s3, a3, 20
                  addi         s0, t5, -1693
                  slli         s9, zero, 16
1520:             or           a6, s5, t1
1521:             or           t4, s10, ra
                  slli         t0, a0, 5
                  xor          t6, s9, s9
                  xori         sp, a5, -1726
                  bltu         zero, t1, 1531f
                  slt          s8, a0, s7
                  bgeu         s8, s3, 1528f
1528:             bgeu         t1, ra, 1548f
                  nop
                  slt          a5, s7, gp
1531:             sltu         s7, t4, s1
                  and          sp, ra, s0
                  slt          s4, a6, s4
                  xor          a6, s1, s11
                  lui          a5, 727418
                  srai         a4, s1, 18
                  beq          a4, s0, 1540f
                  beq          t2, a1, 1542f
                  slt          a7, s1, t1
1540:             bne          zero, a0, 1544f
                  bltu         ra, a6, 1543f
1542:             bltu         s3, ra, 1558f
1543:             ori          s5, sp, 761
1544:             auipc        a3, 656853
                  sltu         t0, a1, a4
                  ori          s1, zero, -899
                  srl          a4, s6, a4
1548:             bne          s6, s10, 1566f
                  andi         s10, t6, 452
                  sltiu        t3, s11, 1941
                  slt          s4, a4, s3
                  bge          a6, s4, 1571f
                  xor          t0, ra, s6
                  slti         t1, t4, 1196
                  bgeu         a4, s9, 1556f
1556:             slti         s10, ra, 1248
                  slli         s7, a2, 26
1558:             blt          t1, s0, 1562f
                  slli         t4, gp, 25
                  sltiu        t5, zero, -1770
                  bne          a0, s2, 1564f
1562:             bne          a7, s7, 1581f
                  slli         a5, t3, 18
1564:             andi         s0, a0, -1360
                  srli         zero, sp, 23
1566:             andi         a6, s6, -431
                  blt          ra, t6, 1587f
                  bge          s7, sp, 1576f
                  beq          a5, a5, 1570f
1570:             blt          zero, a0, 1590f
1571:             bge          t0, t2, 1589f
                  lui          a7, 748560
                  beq          t5, s5, 1593f
                  add          a4, t2, t5
                  addi         gp, t5, -1504
1576:             sltiu        s3, ra, -1621
                  sll          t1, a0, tp
                  nop
                  ori          s8, s6, 1942
                  sub          a1, s5, a7
1581:             bgeu         t4, zero, 1588f
                  slti         a7, s7, -1811
                  blt          a4, a5, 1585f
                  srl          s10, gp, t2
1585:             slt          s3, s6, s3
                  add          s5, t5, a6
1587:             xori         t6, s9, -1625
1588:             ori          t0, t4, 166
1589:             xor          a5, s6, t6
1590:             ori          s4, s5, -893
                  blt          s10, s11, 1609f
                  addi         s6, a3, 1837
1593:             sltu         zero, a0, s1
                  sll          s8, t1, s2
                  srli         ra, s3, 20
                  sll          a3, s6, a3
                  slli         s3, s2, 3
                  addi         a5, a4, -1245
                  srl          sp, zero, a5
                  xori         ra, t5, 1210
                  bgeu         a5, s7, 1603f
                  auipc        t5, 958443
1603:             ori          s6, a0, 241
                  bltu         s0, t6, 1611f
                  ori          ra, t1, -826
                  la           ra, region_1+1779 #start riscv_load_store_rand_instr_stream_23
                  srli         t0, s9, 30
                  lbu          t3, -16(ra)
                  lb           a7, -10(ra)
                  slli         t4, s6, 0
                  andi         t6, s8, -1148
                  lbu          t5, 4(ra)
                  slti         t1, gp, 1511
                  and          s6, a0, a0
                  srli         s10, a7, 10
                  sh           a6, 9(ra)
                  sh           a5, -7(ra)
                  nop
                  slti         t0, s10, -1198
                  xori         a3, a2, -933
                  srli         t4, t1, 16
                  sb           t0, 14(ra)
                  auipc        sp, 275011
                  lhu          s8, 1(ra)
                  sb           s11, -2(ra)
                  add          t3, a6, s8
                  lb           s1, -8(ra)
                  xori         s5, s2, -237
                  slli         t1, s6, 0
                  add          a6, s7, t2
                  addi         a1, s3, -463
                  sll          t1, a7, s3
                  lb           t3, -8(ra)
                  lb           s0, 6(ra)
                  slti         s7, s10, -1343
                  lh           gp, 7(ra)
                  lbu          a6, 0(ra)
                  lbu          a4, -10(ra)
                  nop
                  auipc        a4, 3741
                  lw           a6, -15(ra)
                  slli         s7, a6, 24
                  lw           a5, 1(ra)
                  srai         a1, tp, 5
                  slli         s11, gp, 5
                  sb           a6, -6(ra)
                  sll          zero, zero, a2
                  sub          s7, s6, gp
                  lh           s11, -11(ra)
                  sh           s2, 1(ra)
                  lb           a4, 11(ra)
                  lb           s0, -8(ra)
                  lbu          t4, -16(ra) #end riscv_load_store_rand_instr_stream_23
                  sltu         s7, s4, s6
                  xor          zero, t6, s4
                  srl          ra, a2, a4
1609:             addi         gp, t3, -577
                  slli         sp, t2, 12
1611:             slt          s5, s9, s9
                  ori          s9, a5, -203
                  andi         s11, s9, 542
                  andi         a3, s3, 1321
                  and          s11, s1, s8
                  sltu         t6, t5, sp
                  addi         s7, zero, -1472
                  slli         sp, s11, 5
                  bltu         s5, s2, 1623f
                  srai         zero, t2, 1
                  srli         s6, gp, 27
                  addi         zero, s5, 1800
1623:             bne          a1, tp, 1630f
                  bltu         s6, t1, 1630f
                  xori         ra, ra, 1100
                  sub          s11, t6, t4
                  sltu         a7, t2, ra
                  slti         a5, s7, 369
                  blt          s5, a6, 1633f
1630:             and          s10, s6, s9
                  xor          s6, s9, t1
                  add          s0, t5, s0
1633:             bltu         s11, t1, 1640f
                  bgeu         tp, t1, 1642f
                  bgeu         zero, s2, 1648f
                  blt          s3, a4, 1649f
                  blt          s9, t5, 1643f
                  beq          s1, t4, 1652f
                  sltu         gp, s4, s5
1640:             bge          t6, a7, 1657f
                  addi         s6, gp, 852
1642:             srl          s0, a3, sp
1643:             addi         t4, s10, -1916
                  lui          t5, 841311
                  slti         t5, s10, -905
                  xori         a6, tp, -781
                  sltiu        t1, zero, 311
1648:             or           s9, sp, t1
1649:             sltiu        s1, a4, -702
                  slli         a6, t0, 30
                  srl          gp, t3, a7
1652:             andi         sp, s1, 38
                  addi         a1, s7, 846
                  bge          sp, sp, 1670f
                  sltiu        a2, s0, 451
                  slt          t6, a5, t0
1657:             xor          s4, a5, t1
                  nop
                  or           s1, a4, a0
                  srli         t0, a6, 15
                  srli         ra, s8, 23
                  blt          s10, t5, 1681f
                  srl          ra, a5, t6
                  nop
                  blt          t2, s2, 1670f
                  srli         sp, s7, 14
                  nop
                  andi         t6, a3, -985
                  sll          s1, t6, s6
1670:             bge          a3, zero, 1680f
                  nop
                  ori          s9, t6, 1508
                  beq          tp, s10, 1680f
                  slli         t3, s0, 10
                  sub          s9, tp, s0
                  srai         sp, t4, 18
                  srli         t3, s6, 26
                  blt          s8, t5, 1682f
                  bne          a1, s6, 1697f
1680:             beq          sp, a7, 1700f
1681:             srl          t1, t2, a6
1682:             sltiu        zero, s1, 310
                  xori         a6, s8, -720
                  slti         s10, gp, 950
                  sltu         s8, t3, a1
                  nop
                  bltu         t1, a2, 1689f
                  sltu         t1, s6, a3
1689:             bne          t4, t5, 1707f
                  lui          s11, 10603
                  lui          t3, 1014761
                  and          sp, a5, s5
                  la           a6, region_1+543 #start riscv_load_store_rand_instr_stream_21
                  lbu          a2, -6(a6)
                  sb           a6, -16(a6)
                  lbu          t4, -4(a6)
                  lbu          zero, -16(a6)
                  sb           t2, -11(a6)
                  sh           a5, -13(a6)
                  lbu          s7, 8(a6)
                  and          s9, s4, t4
                  and          a3, t0, t0
                  srli         s3, s9, 11
                  lb           s9, -4(a6)
                  or           ra, s9, t1
                  sb           t0, 13(a6)
                  sh           t3, -15(a6)
                  sltu         s0, a3, s5
                  sltu         s3, a6, a3
                  lui          a2, 707291
                  sltiu        s8, s10, -1544
                  sb           gp, 4(a6)
                  slli         sp, t1, 28
                  sh           s9, 11(a6)
                  slt          s6, a7, ra
                  xori         a0, tp, -90
                  lh           t1, 3(a6)
                  lbu          a0, 16(a6)
                  lh           a7, -13(a6)
                  auipc        t5, 118789
                  srl          zero, s1, a5
                  lhu          t1, 13(a6)
                  lb           s9, -8(a6)
                  nop
                  sb           a2, -13(a6)
                  or           a3, a6, t3
                  lbu          a1, 6(a6)
                  sw           t2, -11(a6)
                  sltiu        t5, s1, -385
                  sb           a4, 5(a6)
                  andi         ra, s8, -720
                  lb           a5, -15(a6)
                  sb           s9, 5(a6)
                  nop
                  lbu          s0, 13(a6)
                  lbu          a3, 10(a6)
                  sb           t1, -10(a6)
                  lbu          s3, 6(a6)
                  lb           a3, -2(a6)
                  lh           t4, -13(a6)
                  lhu          t5, -13(a6) #end riscv_load_store_rand_instr_stream_21
                  or           zero, s1, a3
                  addi         a5, t2, -1250
                  srli         t3, s0, 13
                  andi         a3, t3, 167
1697:             nop
                  slti         a6, s3, 1646
                  bne          s10, t3, 1706f
1700:             andi         gp, a1, -452
                  lui          a6, 533547
                  lui          t3, 368035
                  slli         t6, s10, 31
                  bltu         a7, s11, 1723f
                  lui          s5, 766296
1706:             bltu         sp, s0, 1709f
1707:             slt          s11, a7, t4
                  bne          s4, s1, 1722f
1709:             lui          s5, 796595
                  and          s3, a2, s1
                  beq          s5, a3, 1712f
1712:             srai         a7, t2, 3
                  bltu         s9, a1, 1733f
                  xor          s11, s10, s4
                  sltu         s6, ra, a2
                  bne          s5, s8, 1724f
                  slli         s7, a4, 1
                  xor          s10, s2, gp
                  or           sp, sp, zero
                  slli         s8, t5, 23
                  auipc        a4, 612473
1722:             bne          s2, t3, 1724f
1723:             blt          a1, a7, 1730f
1724:             srli         s7, gp, 25
                  lui          s6, 479878
                  sltiu        t0, s11, -1469
                  srl          a7, tp, sp
                  beq          a2, s8, 1741f
                  beq          s2, t5, 1730f
1730:             slti         s1, s1, 530
                  bgeu         s5, sp, 1735f
                  srli         s8, t5, 12
1733:             bge          s0, s4, 1750f
                  bge          s6, s1, 1754f
1735:             slli         t3, t4, 11
                  slt          a0, a2, a3
                  bne          s8, s6, 1753f
                  sltiu        t3, t1, -1369
                  bge          gp, s8, 1744f
                  sltiu        t4, s7, -1001
1741:             bne          s2, s0, 1748f
                  and          zero, s5, tp
                  srl          sp, s8, s9
1744:             add          s0, t5, t0
                  or           s8, s8, s9
                  nop
                  blt          sp, s2, 1753f
1748:             sll          t5, a0, gp
                  nop
1750:             sra          a0, s4, s9
                  add          t5, s2, s1
                  sltiu        t6, s4, 928
1753:             sub          t6, t5, s3
1754:             xor          s8, t2, tp
                  srai         a4, s1, 12
                  sltu         s0, t5, a3
                  sra          a4, t1, s7
                  slli         s9, a4, 20
                  auipc        s0, 1004613
                  bltu         a0, s1, 1773f
                  bge          s8, s9, 1769f
                  sltiu        a2, t6, 1977
                  slli         gp, s9, 23
                  andi         sp, t0, 439
                  nop
                  andi         gp, t2, 488
                  nop
                  sll          s9, ra, s6
1769:             xori         s0, t4, 807
                  bgeu         t4, s9, 1774f
                  sltiu        s5, s2, 824
                  beq          a4, s8, 1791f
1773:             srl          s9, a1, a3
1774:             andi         s8, sp, 1229
                  sltu         a3, t3, a0
                  nop
                  bgeu         a6, gp, 1783f
                  srl          s9, s10, s1
                  xori         t5, s4, 659
                  ori          ra, s1, -1610
                  slli         s11, s2, 30
                  bne          t2, t5, 1792f
1783:             sra          t1, s6, a7
                  sltiu        t5, s3, -1541
                  sltiu        a7, s7, 1445
                  xori         s10, t4, -1268
                  sltu         s5, t5, a2
                  srai         s1, a2, 14
                  auipc        a1, 91155
                  sltiu        s4, s8, 1792
1791:             sltu         s9, t2, a6
1792:             sll          a6, a6, t4
                  sra          s5, t3, t4
                  beq          s7, s1, 1801f
                  nop
                  add          s9, sp, s1
                  srl          a5, a2, s0
                  add          sp, s5, t0
                  or           s7, s9, ra
                  sltu         a0, s2, s6
1801:             or           s1, t2, ra
                  bgeu         s3, zero, 1818f
                  add          a7, ra, t5
                  addi         s3, a0, -566
                  blt          a1, s10, 1806f
1806:             andi         s4, t6, 1415
                  nop
                  andi         a4, s9, 1707
                  nop
                  srai         s9, tp, 0
                  auipc        s4, 307774
                  bgeu         s1, s4, 1814f
                  xori         s8, a4, 1642
1814:             sll          t3, t3, a5
                  srl          s11, s3, t4
                  srl          a1, sp, t3
                  add          a3, s2, a1
1818:             sll          s9, a6, t2
                  sra          t4, t6, t3
                  slli         sp, s8, 14
                  bltu         zero, t3, 1835f
                  auipc        s7, 797860
                  bge          a1, s1, 1843f
                  sub          s5, s0, a2
                  addi         s6, s3, 1290
                  sll          t3, a0, s9
                  addi         s10, a4, -1056
                  sra          s4, s11, gp
                  sub          zero, ra, a7
                  slti         zero, t2, 1881
                  nop
                  addi         ra, a0, 960
                  sra          s10, a5, a1
                  bltu         t4, t5, 1847f
1835:             sub          s11, a1, t3
                  slt          t3, t1, a4
                  xori         s1, a0, -423
                  lui          a3, 250391
                  or           ra, a4, t4
                  nop
                  xori         a5, s7, 415
                  xori         a3, a7, 1582
1843:             srli         s3, s7, 4
                  bgeu         gp, t6, 1848f
                  blt          a6, s10, 1865f
                  ori          s8, t1, -1461
1847:             xor          a2, a0, s3
1848:             sltiu        a7, zero, -1707
                  ori          a0, a2, -139
                  slli         s4, t4, 10
                  lui          s6, 141326
                  or           s9, t3, a0
                  bge          a5, s2, 1859f
                  bge          t4, s5, 1871f
                  beq          t6, zero, 1873f
                  add          a6, a3, a4
                  sltu         gp, a3, a3
                  xori         t0, s8, 69
1859:             addi         s10, a0, 490
                  ori          s5, s1, -705
                  bge          t2, t4, 1874f
                  auipc        t1, 967747
                  srl          a5, s1, s0
                  sll          t1, t2, t1
1865:             blt          a4, a0, 1868f
                  and          s4, tp, s2
                  sub          ra, a0, a3
1868:             addi         s5, s0, -1863
                  lui          sp, 318858
                  bgeu         t6, zero, 1877f
1871:             slli         a7, s8, 15
                  bltu         ra, t4, 1891f
1873:             add          a7, a5, t0
1874:             and          a1, t2, t6
                  or           s1, t3, s9
                  srli         t0, t4, 22
1877:             blt          t0, t3, 1881f
                  ori          t4, s3, 1118
                  bltu         s2, a6, 1889f
                  srli         a5, t4, 3
1881:             bge          t1, s4, 1885f
                  andi         zero, a5, -710
                  bgeu         t0, a4, 1884f
1884:             sll          a1, s7, t2
1885:             bge          a4, s4, 1890f
                  beq          s4, a4, 1905f
                  auipc        a1, 83385
                  slt          s0, a3, s2
1889:             addi         a1, t3, -1002
1890:             or           s0, t6, s10
1891:             nop
                  beq          s8, t6, 1900f
                  auipc        s3, 30854
                  srli         t3, s5, 16
                  sra          s11, s2, tp
                  sltu         a5, ra, s10
                  or           s3, a1, a6
                  srai         gp, gp, 25
                  slt          s5, t2, s8
1900:             sltiu        t3, a0, -1380
                  bltu         a0, s1, 1908f
                  xori         s8, a2, -1864
                  nop
                  addi         t1, t3, 1380
1905:             slt          a0, s5, a6
                  add          s4, a1, s5
                  xori         a6, t2, 971
1908:             bltu         t3, s7, 1910f
                  auipc        t0, 985593
1910:             sra          s9, s3, a6
                  xori         t5, t4, -1418
                  and          a7, a7, s10
                  add          t4, a2, s1
                  addi         s0, a1, -1017
                  ori          s5, ra, -1916
                  beq          t2, tp, 1934f
                  bge          t1, ra, 1924f
                  nop
                  addi         sp, a6, 2006
                  sltiu        a5, sp, 505
                  sltiu        a1, zero, -459
                  bltu         t2, t5, 1930f
                  lui          a7, 380068
1924:             bge          s6, a6, 1944f
                  slli         ra, zero, 4
                  srai         a5, s4, 26
                  beq          t3, a6, 1933f
                  addi         zero, tp, -905
                  xor          gp, a5, s7
1930:             srl          ra, s9, tp
                  add          a3, s5, s2
                  lui          s7, 348213
1933:             slli         s0, a7, 9
1934:             auipc        a6, 709877
                  srai         t6, s1, 7
                  andi         sp, s8, 795
                  andi         s9, a1, -1722
                  bge          t4, a0, 1957f
                  bge          sp, t5, 1956f
                  beq          a0, t6, 1946f
                  bge          a0, t1, 1948f
                  sll          s9, zero, s5
                  bgeu         tp, ra, 1956f
1944:             srai         s11, a0, 28
                  bltu         zero, a7, 1947f
1946:             or           a5, s4, t0
1947:             nop
1948:             slli         s9, s10, 3
                  auipc        t4, 878005
                  blt          t5, s3, 1958f
                  xor          a7, s8, a3
                  sub          s10, s2, s2
                  beq          t2, s3, 1972f
                  bltu         a5, s7, 1961f
                  sll          t1, s5, s8
1956:             slli         t6, s8, 27
1957:             and          s11, s11, t1
1958:             bne          tp, a0, 1960f
                  andi         t6, s1, -1958
1960:             nop
1961:             sltu         s9, zero, s2
                  sra          t1, sp, s10
                  slti         s4, s4, 1611
                  bne          a7, s6, 1968f
                  sll          s3, a2, ra
                  slt          t4, ra, s4
                  addi         s9, a6, -414
1968:             auipc        s10, 92471
                  sltu         a2, ra, gp
                  slt          s6, a4, a0
                  lui          zero, 604719
1972:             slti         zero, t6, -581
                  srl          a5, t4, a0
                  bgeu         t2, t1, 1987f
                  srli         s3, gp, 4
                  bne          tp, t6, 1980f
                  sll          s10, t3, a1
                  blt          s0, t6, 1996f
                  sra          ra, t4, s7
1980:             slli         a5, t0, 18
                  lui          t1, 624311
                  or           s1, a0, s11
                  xor          t0, a4, t2
                  srl          gp, a1, s6
                  auipc        t4, 276706
                  sltiu        ra, a0, 875
1987:             xor          t6, s7, t1
                  bgeu         ra, ra, 1994f
                  sltiu        s0, sp, -1124
                  sll          s6, a5, s11
                  auipc        s10, 240257
                  addi         s4, a0, 689
                  blt          sp, t6, 2000f
1994:             xori         s7, s8, 1536
                  xori         a4, zero, 1961
1996:             bne          t5, a3, 1997f
1997:             lui          t5, 410701
                  bgeu         s0, s4, 2018f
                  slti         s10, a0, 285
2000:             bge          a0, s3, 2005f
                  slt          s11, s11, a6
                  slli         a2, t1, 11
                  slt          a2, a2, tp
                  beq          t2, s6, 2022f
2005:             or           a3, t3, gp
                  nop
                  bge          a0, gp, 2010f
                  andi         a1, sp, -565
                  srai         s11, s3, 19
2010:             auipc        t4, 841025
                  andi         t3, a3, 468
                  and          a5, s10, gp
                  andi         t0, s8, -185
                  slti         a6, s4, -1678
                  sltu         t1, s3, ra
                  beq          s6, s9, 2023f
                  xori         a1, a5, 1232
2018:             slli         s4, gp, 25
                  xor          a6, a2, a3
                  srai         s1, t3, 0
                  and          t3, t1, s6
2022:             auipc        a1, 671299
2023:             sltu         a7, t2, a5
                  sra          a6, t4, a2
                  beq          s9, a3, 2026f
2026:             bne          s2, t3, 2030f
                  sll          s3, s3, a4
                  blt          s0, a5, 2048f
                  srli         a2, a5, 11
2030:             nop
                  ori          t4, a4, -61
                  sltiu        t4, t3, -901
                  auipc        sp, 336051
                  beq          a0, a5, 2042f
                  bltu         t3, s2, 2051f
                  bge          s5, ra, 2050f
                  and          s1, t6, a1
                  nop
                  or           t3, a6, zero
                  auipc        s10, 644451
                  bne          s0, a2, 2061f
2042:             xori         zero, tp, -281
                  sra          s1, t0, t2
                  beq          s8, s1, 2054f
                  sll          t4, s9, t6
                  bgeu         s1, zero, 2060f
                  and          ra, s2, t0
2048:             srli         s1, tp, 12
                  xori         a0, a0, 437
2050:             or           s3, ra, s1
2051:             sub          sp, a1, a3
                  xor          s3, t3, t2
                  beq          s1, a4, 2060f
2054:             addi         s8, t1, -1868
                  bgeu         a3, zero, 2059f
                  xori         gp, a0, 1031
                  ori          a6, a2, 971
                  lui          ra, 21224
2059:             andi         a7, s3, -1647
2060:             sltu         gp, s5, s7
2061:             sltiu        a4, s9, -2041
                  xori         a7, t4, -453
                  xor          t1, s8, a3
                  addi         a4, t5, 1695
                  sltu         s5, t1, s9
                  beq          t5, s1, 2072f
                  srl          s1, t4, a3
                  xor          s1, a6, s3
                  sltu         a7, a3, t1
                  and          s1, t3, ra
                  ori          t3, s9, -1317
2072:             sll          a6, a2, gp
                  srl          a5, s2, s6
                  slt          s5, s10, a4
                  sltiu        a1, s9, -960
                  sltu         a2, s8, s9
                  or           t5, t1, t0
                  addi         s4, s4, 998
                  srl          s8, s5, s4
                  and          t1, s0, a3
                  srl          t3, a6, s9
                  and          a7, s10, s1
                  addi         t0, s0, 1506
                  slli         s11, s1, 13
                  slt          s6, sp, a7
                  srai         t3, t0, 19
                  sltu         a6, t2, t4
                  sub          a2, s11, s5
                  auipc        gp, 72914
                  sra          t0, gp, a3
                  bne          s5, a5, 2099f
                  bgeu         s4, a1, 2108f
                  sub          zero, s1, a2
                  slt          s10, zero, a1
                  slli         a2, sp, 16
                  and          a6, s4, s11
                  lui          t5, 1011838
                  beq          t6, t4, 2105f
2099:             bgeu         t1, t6, 2106f
                  sltu         a4, t0, s2
                  and          s5, s6, a1
                  sltu         a0, sp, a3
                  addi         t6, sp, 1510
                  slti         zero, s10, -1431
2105:             auipc        zero, 397779
2106:             and          s5, a0, tp
                  auipc        a6, 668413
2108:             xori         s9, a2, -35
                  andi         a1, t4, 2031
                  lui          a1, 742031
                  sll          a5, s6, s6
                  xori         t4, a3, 435
                  ori          ra, a2, -859
                  srai         s11, a4, 30
                  xor          s0, gp, gp
                  srli         a0, ra, 28
                  bne          zero, s6, 2121f
                  sra          s9, t6, s0
                  add          sp, a3, t3
                  slt          s1, s6, a3
2121:             nop
                  slti         a6, tp, -693
                  bne          s11, gp, 2127f
                  bne          t3, s7, 2127f
                  srli         a2, t5, 13
                  sltiu        t1, s10, -1814
2127:             slt          a5, a1, s6
                  slli         a0, a5, 15
                  srl          s4, ra, tp
                  slt          s0, s10, t1
                  slti         s1, s0, 615
                  and          a0, t3, a6
                  and          t0, s9, sp
                  slti         s4, s6, -389
                  sltu         a5, s7, tp
                  slt          s10, s10, t6
                  slli         a1, tp, 17
                  sltiu        s5, a0, 838
                  nop
                  slti         a7, s7, 434
                  bge          s4, zero, 2154f
                  bltu         sp, s6, 2149f
                  xori         s10, t3, -304
                  beq          s5, t0, 2154f
                  auipc        s6, 375615
                  bltu         t0, s10, 2148f
                  andi         s1, s0, -265
2148:             sra          a3, s8, s4
2149:             addi         s0, t0, -1329
                  srli         t3, zero, 22
                  add          s4, tp, s10
                  add          a1, t2, s0
                  slti         s5, t5, 519
2154:             andi         a1, s7, 528
                  sra          s6, t6, t4
                  srli         a3, tp, 11
                  bge          a1, s0, 2159f
                  sub          s7, t6, a7
2159:             addi         ra, a3, 322
                  add          a6, s5, t4
                  or           s1, s10, tp
                  srli         a2, a6, 17
                  beq          gp, t6, 2182f
                  addi         a6, a6, 1087
                  sra          t5, gp, s6
                  beq          a1, s3, 2179f
                  sltu         zero, s6, a7
                  add          a3, tp, ra
                  nop
                  sra          t0, t5, a6
                  sra          sp, s0, t1
                  blt          tp, s4, 2192f
                  addi         a4, a6, -643
                  slt          a3, s6, s4
                  sltu         t0, a2, s1
                  nop
                  bgeu         s2, t1, 2182f
                  sll          zero, t6, s2
2179:             or           ra, s6, a0
                  addi         t5, a6, -1406
                  srli         a1, s9, 23
2182:             slli         t0, a5, 24
                  beq          sp, tp, 2189f
                  bgeu         s5, s9, 2204f
                  slti         s6, s3, -1476
                  xor          t0, ra, t1
                  slt          t5, t1, a6
                  slli         t1, a5, 15
2189:             addi         a6, s7, -1491
                  srl          a7, s3, s1
                  slt          s9, s5, a1
2192:             sll          gp, s1, s2
                  addi         s4, ra, -156
                  or           a6, s4, s6
                  srai         t0, tp, 29
                  add          t5, t1, s5
                  addi         s10, s7, 291
                  slli         a0, s1, 23
                  ori          t6, t4, 123
                  blt          s8, zero, 2218f
                  sll          a7, a3, t5
                  xor          t0, a6, s3
                  andi         a4, s9, 1987
2204:             srai         t4, t2, 27
                  sll          s3, a3, a4
                  or           t5, s2, s5
                  bne          a7, s11, 2224f
                  ori          s9, t2, -1842
                  srl          s10, t2, s5
                  bne          s2, s5, 2211f
2211:             slt          a6, s9, t2
                  bgeu         s4, s1, 2232f
                  ori          a3, s5, 931
                  srl          s4, gp, s6
                  bltu         ra, t0, 2216f
2216:             srl          t5, s9, s11
                  bltu         tp, s6, 2236f
2218:             srli         s7, s1, 18
                  and          a0, t2, s3
                  sra          s9, s11, tp
                  sub          s8, s1, s0
                  blt          a7, s5, 2240f
                  xori         a1, gp, 1941
2224:             xor          s4, s7, t3
                  add          a1, s2, s0
                  add          t4, a2, sp
                  srai         sp, t2, 4
                  sll          s7, a3, s0
                  sll          t5, tp, s10
                  addi         ra, a5, -878
                  bge          a3, a5, 2239f
2232:             sub          a2, s6, a7
                  or           a6, s8, t3
                  auipc        a2, 418003
                  lui          t1, 936470
2236:             sub          a3, s6, s10
                  sll          t3, s5, tp
                  sltu         a3, a6, s1
2239:             beq          t6, gp, 2246f
2240:             srai         a1, s4, 15
                  xori         t0, a4, 393
                  sra          a0, t4, a6
                  lui          s1, 667795
                  beq          a1, t4, 2247f
                  sll          a0, s11, s8
2246:             srli         a5, ra, 30
2247:             srl          a4, s5, t4
                  and          s4, zero, gp
                  add          s5, t3, a6
                  xori         s0, sp, -1537
                  srai         s1, s4, 3
                  sub          a7, ra, t0
                  ori          s4, tp, -585
                  sll          gp, a6, s4
                  slli         s10, a6, 9
                  bgeu         s1, sp, 2272f
                  bne          s2, s9, 2276f
                  srli         s8, t6, 0
                  xor          a2, s2, t1
                  xori         a4, t1, 1804
                  addi         a5, t4, -329
                  sltu         zero, t6, a0
                  sltu         t0, s4, a3
                  bne          s0, s7, 2271f
                  sltu         sp, a0, a1
                  bgeu         s11, t2, 2279f
                  sltiu        a6, t1, -1138
                  srl          s5, s9, s2
                  blt          a3, t5, 2270f
2270:             beq          t4, t2, 2288f
2271:             slli         t0, ra, 23
2272:             beq          gp, a2, 2292f
                  bltu         s11, a4, 2275f
                  blt          s9, a4, 2287f
2275:             bltu         s5, s8, 2292f
2276:             addi         t3, s6, 481
                  bne          s10, t5, 2287f
                  lui          t0, 887310
2279:             addi         ra, ra, -1025
                  lui          s6, 36690
                  xor          s0, t6, a2
                  srli         t6, a5, 31
                  xori         a1, s2, 210
                  blt          s9, s1, 2298f
                  srl          s7, s5, s5
                  srli         zero, sp, 22
2287:             blt          a4, t2, 2292f
2288:             xor          s0, t1, t2
                  xor          s10, a6, a0
                  nop
                  slli         s1, a5, 14
2292:             sll          gp, t1, s11
                  srli         t1, t0, 23
                  sll          t4, s6, s4
                  bge          s4, a3, 2301f
                  nop
                  bgeu         a5, t0, 2299f
2298:             addi         a2, tp, -1263
2299:             bgeu         a0, s11, 2319f
                  nop
2301:             and          s3, s10, t6
                  or           a0, s7, s11
                  sltiu        s8, s0, 133
                  ori          s8, s0, 192
                  sub          a7, s3, s3
                  sra          s3, a1, t6
                  sltu         a6, tp, t0
                  sltu         s3, a7, a2
                  sll          a5, t2, a6
                  addi         s10, s10, -350
                  sltu         s9, t5, s4
                  slt          s5, t4, a3
                  add          a6, a4, s11
                  srli         s9, s9, 6
                  beq          s1, a0, 2316f
2316:             srai         s6, s0, 11
                  bne          s7, sp, 2321f
                  srai         a4, s5, 28
2319:             add          s11, sp, s3
                  add          t5, s3, s1
2321:             beq          s1, a5, 2328f
                  add          t1, s2, s9
                  xori         s11, s0, -535
                  slti         s1, t6, 1307
                  sub          t6, sp, s1
                  sll          s11, s8, s8
                  beq          a3, a7, 2347f
2328:             sltu         t5, a0, a4
                  bgeu         s1, a7, 2335f
                  bltu         a1, zero, 2337f
                  bne          s8, a4, 2350f
                  add          a7, s0, tp
                  sub          a3, t1, sp
                  nop
2335:             xor          s11, ra, sp
                  auipc        s0, 560602
2337:             or           s10, s5, s0
                  sll          a2, a7, t0
                  or           t5, s0, s6
                  ori          s1, ra, -1097
                  and          s7, gp, s3
                  sub          a2, s1, s10
                  srai         gp, t1, 26
                  sub          a3, a1, s1
                  xor          a3, t2, s1
                  sub          s0, a6, s8
2347:             addi         a2, s7, -897
                  sub          t1, s1, s1
                  andi         s8, s0, -1597
2350:             xori         s11, s3, -397
                  sub          t4, t1, gp
                  blt          s5, s9, 2360f
                  sll          t1, t4, s10
                  srai         a0, t3, 27
                  add          s11, zero, ra
                  or           t6, ra, t5
                  bge          s7, s10, 2365f
                  slti         s4, zero, 1504
                  sltiu        a6, a5, -726
2360:             srli         a4, tp, 25
                  add          s7, t5, s11
                  beq          a7, zero, 2380f
                  addi         t5, s1, 73
                  add          gp, s2, a5
2365:             addi         sp, t5, -1887
                  srai         s6, s7, 4
                  srli         s6, a6, 18
                  sll          t4, a0, t5
                  blt          s10, s8, 2373f
                  srl          a3, a0, a2
                  slti         s5, a5, -1295
                  or           s8, t2, s4
2373:             srai         a1, s6, 16
                  srl          s7, a0, a3
                  slli         t1, a7, 28
                  bgeu         s11, zero, 2380f
                  lui          s6, 900824
                  srli         s1, s11, 0
                  bne          a5, s8, 2385f
2380:             bne          s3, s0, 2382f
                  blt          a1, s1, 2399f
2382:             srli         t4, zero, 2
                  blt          gp, s2, 2403f
                  bltu         s8, a4, 2391f
2385:             sltiu        s0, a2, 1586
                  slt          s11, s11, a2
                  bge          gp, a7, 2391f
                  sltu         s8, a6, s1
                  srli         s11, s9, 17
                  srl          s5, a7, a4
2391:             slt          s8, a4, a3
                  or           s6, s9, t3
                  xor          s0, a5, s11
                  srl          s5, a2, t1
                  nop
                  lui          a3, 257502
                  nop
                  sra          a2, t1, s10
2399:             ori          t4, s1, 1889
                  sra          gp, s6, s11
                  sltiu        s0, t4, -1922
                  sltu         a6, s9, t2
2403:             xori         a3, a3, -1589
                  sra          ra, t4, t0
                  xor          s9, a5, s5
                  slli         a4, sp, 13
                  sra          t4, s8, sp
                  and          s3, a4, a5
                  auipc        sp, 1044173
                  slt          a5, t5, a5
                  add          s6, gp, s0
                  addi         s8, s0, 1857
                  srli         a3, zero, 11
                  sub          sp, t4, s9
                  bne          t3, s3, 2422f
                  add          s8, s2, s7
                  xori         a5, t5, -1295
                  beq          s7, tp, 2437f
                  sll          a2, a5, a6
                  addi         s8, s1, 850
                  slt          zero, s9, s8
2422:             bltu         a1, a5, 2423f
2423:             sltiu        s7, a7, 1991
                  slt          s1, s2, ra
                  nop
                  srai         s10, s11, 12
                  sll          ra, s2, s3
                  lui          a2, 613116
                  slt          t1, ra, t3
                  lui          s4, 57303
                  and          t3, gp, s10
                  sub          s9, sp, a7
                  xori         a5, s1, 506
                  auipc        t0, 1024003
                  lui          s5, 257774
                  bge          t0, s5, 2455f
2437:             bltu         a3, t3, 2439f
                  slti         a6, a7, -355
2439:             srai         zero, t0, 7
                  sltiu        t1, t2, -1848
                  sub          s10, s11, s8
                  slli         a3, t2, 29
                  slt          t5, s11, s0
                  sll          a7, t0, a6
                  ori          a5, gp, 1520
                  sra          s7, t6, zero
                  lui          s1, 716417
                  sltiu        ra, s4, -447
                  addi         a6, a7, -956
                  xor          a7, t0, a3
                  sub          t0, zero, t0
                  beq          s6, zero, 2455f
                  srl          a5, s6, s1
                  andi         a2, s0, 1816
2455:             bge          a2, sp, 2462f
                  srai         t5, t4, 30
                  sll          t1, a2, t5
                  lui          a0, 144183
                  bne          s10, s3, 2467f
                  beq          s9, a7, 2467f
                  andi         s10, sp, 32
2462:             bge          s11, s8, 2472f
                  add          t5, t0, s9
                  bgeu         s8, t5, 2481f
                  ori          s8, s0, -1667
                  addi         a6, t1, 671
2467:             beq          s6, s10, 2487f
                  bge          t5, a5, 2472f
                  xori         s9, a0, 1930
                  bne          s7, sp, 2478f
                  sltu         a1, a0, sp
2472:             beq          s1, a7, 2486f
                  slt          s10, a0, s0
                  slt          t0, s2, s1
                  bge          a5, s5, 2495f
                  slt          s4, s8, s9
                  srl          zero, ra, s1
2478:             bltu         t5, s3, 2483f
                  lui          s3, 923944
                  xor          s6, gp, sp
2481:             nop
                  xor          a2, s0, t1
2483:             sra          a7, s4, a5
                  beq          s10, s4, 2497f
                  sub          gp, t4, s8
2486:             ori          s9, t4, -647
2487:             sra          ra, a5, sp
                  nop
                  sub          s8, t5, s4
                  ori          t3, a3, 1127
                  bgeu         t6, ra, 2504f
                  xor          s9, t2, t1
                  slli         a3, s4, 20
                  add          s9, ra, a1
2495:             slli         s4, t5, 24
                  slt          a3, s9, a0
2497:             slti         a6, s3, -485
                  blt          a4, s4, 2514f
                  sra          s10, a3, zero
                  slt          t4, s8, s3
                  ori          s9, zero, -1824
                  beq          a6, a3, 2520f
                  and          t1, zero, a4
2504:             auipc        t4, 869896
                  nop
                  slli         s4, s5, 4
                  srl          t6, s9, t0
                  beq          tp, t2, 2509f
2509:             sll          s1, s8, t0
                  addi         s6, t0, -148
                  or           s10, sp, a2
                  bne          zero, s4, 2516f
                  sub          t1, s7, a2
2514:             sra          t1, s11, t1
                  nop
2516:             blt          a2, a6, 2522f
                  sltu         t4, ra, a3
                  lui          t5, 975190
                  lui          a1, 627444
2520:             auipc        a2, 930923
                  slli         s3, s2, 4
2522:             ori          a4, s2, 1415
                  bne          t0, t6, 2536f
                  auipc        s4, 177909
                  slli         t6, t2, 2
                  nop
                  bgeu         s2, a0, 2533f
                  sra          t0, s8, t6
                  bltu         t0, t2, 2530f
2530:             lui          s11, 842715
                  beq          s7, t4, 2541f
                  or           ra, s6, s1
2533:             lui          t4, 918144
                  sltiu        gp, a2, -1981
                  sra          s11, s11, zero
2536:             slt          t5, sp, t2
                  addi         s1, zero, -851
                  lui          s8, 519908
                  sltiu        s5, s8, -1883
                  slt          gp, s1, s10
2541:             bne          a4, ra, 2561f
                  bgeu         a0, a0, 2558f
                  slt          sp, t5, s4
                  sub          a5, s7, a1
                  beq          t0, t6, 2559f
                  auipc        a5, 989243
                  slt          a1, a4, zero
                  srl          t3, a0, s4
                  xori         s0, t1, -37
                  sub          s3, a1, s3
                  srl          s8, s11, a7
                  beq          tp, zero, 2559f
                  auipc        zero, 90909
                  ori          s3, s7, 1951
                  srl          a5, a0, ra
                  bne          gp, s6, 2560f
                  ori          a6, a1, -1520
2558:             bne          s7, t6, 2565f
2559:             addi         s4, t3, 733
2560:             addi         a2, t6, -1335
2561:             beq          a1, t2, 2566f
                  slt          a0, a2, t4
                  beq          a3, sp, 2565f
                  xori         t6, a7, 1425
2565:             nop
2566:             sub          s6, s10, sp
                  bge          a1, t6, 2575f
                  slti         s4, t6, -1746
                  bgeu         t5, a5, 2586f
                  or           s9, a2, s10
                  auipc        a5, 780835
                  slli         s1, t0, 6
                  xor          s9, s6, a3
                  slti         s11, s8, -1572
2575:             sltu         s4, s10, s8
                  and          a0, tp, gp
                  lui          a6, 607745
                  slli         s10, a4, 0
                  bgeu         s10, a6, 2597f
                  add          a2, s0, s4
                  sll          t6, a0, t3
                  sltiu        t6, a1, -1033
                  srl          sp, a1, t6
                  slli         t6, t0, 9
                  srai         s5, a3, 26
2586:             sub          s7, t6, a6
                  bgeu         t6, s5, 2591f
                  sll          a1, t6, gp
                  andi         s8, s1, 50
                  xor          a5, s9, a7
2591:             sra          t1, a6, zero
                  ori          s7, s1, -1707
                  bgeu         a3, t2, 2600f
                  and          s6, a7, s3
                  srl          a6, a4, t5
                  bne          s2, t0, 2615f
2597:             lui          a4, 580812
                  blt          s8, a7, 2605f
                  blt          s9, s4, 2618f
2600:             ori          sp, a2, -1850
                  beq          t5, s8, 2603f
                  xor          s9, t3, tp
2603:             srl          s3, gp, t3
                  beq          s1, t1, 2612f
2605:             and          s7, a4, zero
                  sra          s10, zero, s1
                  and          zero, a4, t0
                  bne          s9, s3, 2612f
                  sub          a6, gp, a3
                  auipc        s7, 872257
                  xor          zero, s7, ra
2612:             andi         a7, zero, -1370
                  sra          s11, s0, a4
                  bne          a4, a0, 2634f
2615:             srl          s11, a0, s5
                  bgeu         s11, t0, 2619f
                  bne          t6, s10, 2635f
2618:             ori          a0, a5, -1583
2619:             sltu         s10, t3, t2
                  sll          s3, t5, zero
                  auipc        s11, 637786
                  srli         a6, s1, 14
                  bltu         a4, t6, 2624f
2624:             slli         s0, a2, 15
                  slli         a0, a3, 13
                  slli         s7, ra, 23
                  srl          a7, s3, s1
                  srai         s7, t4, 29
                  sltu         s4, t1, a3
                  andi         s9, s5, -1216
                  slli         s10, t2, 4
                  bgeu         t2, t4, 2645f
                  sltu         t3, s3, a3
2634:             lui          sp, 988246
2635:             slt          s6, a1, a4
                  bgeu         s2, s7, 2642f
                  bgeu         sp, s1, 2657f
                  xor          a7, a1, s11
                  bge          a4, a0, 2640f
2640:             bltu         s5, ra, 2646f
                  xori         sp, s0, -269
2642:             or           s9, s8, s3
                  and          zero, s4, zero
                  bne          a4, t5, 2649f
2645:             bltu         s10, s1, 2665f
2646:             nop
                  and          a0, gp, t4
                  addi         s8, t1, -1812
2649:             bge          s9, s3, 2669f
                  and          t0, t6, s7
                  auipc        sp, 553377
                  bge          a0, s3, 2670f
                  srai         s7, s10, 8
                  sltiu        t6, tp, 992
                  and          s9, t1, t6
                  bge          a6, t1, 2664f
2657:             xor          t6, a7, s6
                  bgeu         t0, s11, 2662f
                  slt          s0, a6, s4
                  add          a4, t0, s4
                  xori         a0, s2, 1062
2662:             bge          t6, t5, 2678f
                  add          a6, s6, s1
2664:             sra          s8, s2, gp
2665:             srl          t0, ra, s7
                  xori         t4, s10, -377
                  xor          a4, a1, s10
                  srai         a6, a7, 11
2669:             bne          a3, t4, 2688f
2670:             xori         zero, s11, 1231
                  bltu         s2, zero, 2681f
                  xori         zero, tp, -1735
                  bltu         s6, t4, 2674f
2674:             bltu         t5, a5, 2692f
                  beq          s2, a1, 2688f
                  or           t3, s10, a3
                  srl          s10, t1, zero
2678:             bge          s11, t3, 2681f
                  slti         s3, s0, 1294
                  blt          gp, s10, 2687f
2681:             srl          s3, s4, a5
                  xori         a0, s11, 45
                  xor          s9, a7, t1
                  sra          a5, t5, sp
                  auipc        a4, 300134
                  sra          zero, sp, a3
2687:             xor          s1, s1, t4
2688:             and          a2, s9, gp
                  and          a4, s10, sp
                  srl          t0, t1, a2
                  auipc        s11, 580002
2692:             slli         t1, a2, 8
                  bltu         s6, s4, 2710f
                  xori         s11, a6, 1638
                  sub          s9, a3, t2
                  sub          a4, s3, t0
                  xori         a0, t2, -109
                  sll          t5, s4, s3
                  srai         a6, gp, 27
                  bgeu         s5, s4, 2707f
                  or           s11, t1, t4
                  sra          ra, s8, gp
                  add          t5, s8, a4
                  slt          a4, t3, a1
                  blt          a2, a6, 2712f
                  or           s7, zero, t2
2707:             sra          s1, sp, a5
                  slti         a6, s6, -1008
                  sltu         a1, s4, t2
2710:             srli         s7, t6, 2
                  beq          sp, ra, 2715f
2712:             beq          s8, s5, 2716f
                  bge          s7, s8, 2720f
                  slli         s1, s8, 21
2715:             nop
2716:             blt          s2, s2, 2736f
                  bne          t2, s3, 2723f
                  nop
                  nop
2720:             srai         s11, s4, 5
                  slli         a7, t6, 8
                  nop
2723:             blt          s1, t1, 2742f
                  xori         s4, s0, 1251
                  or           a2, s11, s9
                  ori          a0, s4, -1985
                  bltu         gp, t4, 2729f
                  sub          s7, t1, a3
2729:             sltu         ra, s11, t5
                  sll          s0, ra, a2
                  sra          s10, t4, zero
                  lui          zero, 155903
                  bne          s5, a1, 2741f
                  bltu         t4, s6, 2747f
                  auipc        s9, 769872
2736:             blt          t4, t1, 2738f
                  xor          a0, s4, s10
2738:             sltu         a5, s10, s4
                  bltu         s5, t6, 2753f
                  bgeu         s4, t1, 2743f
2741:             bltu         s7, a3, 2749f
2742:             slt          t0, a4, s6
2743:             ori          t1, s8, 1939
                  bge          s7, s1, 2749f
                  or           t6, a6, s10
                  bltu         a7, a7, 2753f
2747:             xori         t0, t0, 255
                  beq          t3, s2, 2749f
2749:             srl          t3, s9, t5
                  xor          s1, s9, s0
                  sub          gp, ra, s10
                  xor          a1, s6, s9
2753:             sltiu        a5, s11, 192
                  lui          t6, 829529
                  slti         t5, ra, 734
                  lui          t5, 313169
                  srli         a4, a4, 19
                  srai         s1, t4, 3
                  nop
                  bge          t6, t4, 2768f
                  bne          a0, t3, 2779f
                  slti         s5, t0, -1497
                  xori         t0, t6, 1671
                  bne          tp, s11, 2768f
                  lui          a4, 185577
                  auipc        a0, 768069
                  slt          a4, s5, t0
2768:             lui          s9, 812215
                  blt          s11, a7, 2788f
                  or           a5, a4, t6
                  beq          s3, sp, 2773f
                  beq          a6, t3, 2774f
2773:             sltu         ra, t2, t5
2774:             or           ra, s2, a0
                  lui          a0, 444418
                  bltu         a2, s10, 2793f
                  bgeu         s9, sp, 2784f
                  bgeu         a0, s8, 2798f
2779:             bltu         a7, s8, 2786f
                  sll          s10, sp, s7
                  sra          s8, t6, gp
                  bge          sp, gp, 2786f
                  xori         t3, a0, 929
2784:             bgeu         a2, s2, 2791f
                  bne          s6, a1, 2803f
2786:             srl          zero, a7, a0
                  sltu         t5, s5, a7
2788:             bge          s4, s7, 2801f
                  auipc        a6, 796354
                  sub          s10, ra, s9
2791:             andi         a3, s11, -503
                  bne          a4, t1, 2805f
2793:             slt          sp, s10, s7
                  sll          t6, t0, ra
                  nop
                  sra          a3, s11, t1
                  sltu         a3, a1, t3
2798:             bgeu         t5, a2, 2817f
                  beq          s4, ra, 2813f
                  xor          gp, t1, t2
2801:             slli         t3, t0, 6
                  bltu         a4, s6, 2806f
2803:             srai         gp, sp, 30
                  beq          s4, s11, 2824f
2805:             srli         a4, a1, 26
2806:             srai         t1, a7, 13
                  auipc        t5, 709709
                  sltiu        a4, s11, -2022
                  sub          t0, s4, t1
                  andi         a3, t1, 1759
                  sra          s8, a0, s0
                  or           s8, t1, ra
2813:             sra          zero, s4, zero
                  bne          s4, s10, 2820f
                  sltiu        a6, s10, -850
                  xor          s7, a2, s5
2817:             lui          s5, 950563
                  srli         s10, t5, 31
                  sub          s1, t6, s10
2820:             beq          s11, a1, 2840f
                  or           a5, tp, gp
                  add          t6, s4, sp
                  slli         a4, a7, 26
2824:             slt          s6, a1, a5
                  sltiu        s9, a3, 488
                  la           gp, sub_7
                  slt          a4, t4, s2
                  sltiu        a5, s1, 1512
                  addi         gp, gp, -360
                  andi         t5, s9, -1176
                  slli         s4, s11, 16
                  lui          zero, 357586
                  or           a2, t6, t1
sub_5_j10:        jalr         a6, gp, 360 #jump sub_5 -> sub_7
                  auipc        a2, 974057
                  srai         zero, s5, 23
                  bge          t5, zero, 2837f
                  bgeu         s10, s7, 2844f
                  bge          t0, sp, 2835f
                  blt          zero, s2, 2831f
2831:             add          s1, s2, a1
                  andi         a3, gp, -1330
                  srl          s1, t3, s4
                  add          a1, a6, t6
2835:             lui          s8, 868146
                  xor          gp, t6, s4
2837:             sub          a3, a7, s3
                  slt          a3, s5, s10
                  srai         s4, t5, 25
2840:             add          t6, ra, s2
                  blt          a7, a5, 2848f
                  add          a5, a5, t5
                  nop
2844:             slti         a5, t3, -1269
                  or           s7, a0, s8
                  srai         sp, tp, 27
                  slli         a5, s11, 1
2848:             srli         s9, tp, 6
                  slti         a0, s9, 1081
                  or           a3, t2, t5
                  slti         s9, t2, 1933
                  slli         t1, a4, 5
                  srai         t5, gp, 14
                  andi         a0, a5, -1103
                  xori         s11, a5, 2047
                  bne          s7, s4, 2876f
                  slti         s0, t3, -700
                  slt          s5, t0, t0
                  nop
                  add          s0, a0, a1
                  sltiu        s4, t6, 331
                  xori         gp, s9, 752
                  bge          a2, ra, 2871f
                  sra          s9, a5, a5
                  sltu         s6, s6, a0
                  sra          zero, s2, s8
                  or           a1, t4, t1
                  andi         s3, a1, 1947
                  slti         a3, s5, -260
                  sltu         s9, s4, s9
2871:             blt          s2, a6, 2878f
                  auipc        s3, 870576
                  slti         sp, s9, -2044
                  ori          sp, s9, -827
                  sub          a2, a3, s11
2876:             andi         ra, t5, -1087
                  blt          s7, t5, 2882f
2878:             srl          s8, s8, s0
                  nop
                  bne          s4, s11, 2884f
                  add          zero, gp, a4
2882:             ori          s3, tp, 175
                  nop
2884:             slt          s4, a2, a5
                  sll          a6, a6, s11
                  or           s0, a1, a5
                  nop
                  bltu         s6, ra, 2906f
                  srai         s3, a0, 26
                  sub          t4, ra, a2
                  sltu         s7, sp, s8
                  bgeu         t2, ra, 2898f
                  bltu         a2, tp, 2896f
                  srli         s4, gp, 20
                  and          s6, t2, a6
2896:             slli         a0, s3, 3
                  addi         a0, tp, 278
2898:             xor          a5, a7, a5
                  srli         s8, gp, 20
                  or           s11, s5, a3
                  andi         s3, sp, 897
                  slti         t0, t4, 1963
                  sra          s5, a1, t1
                  addi         s1, t0, -206
                  add          s0, t0, s2
2906:             and          s7, s8, s3
                  auipc        sp, 962472
                  auipc        t4, 339926
                  slli         t0, s3, 5
                  bne          t6, ra, 2930f
                  ori          zero, s9, -1838
                  beq          tp, s6, 2919f
                  auipc        s4, 250147
                  bne          sp, s9, 2915f
2915:             sub          t0, s2, s10
                  sltu         s0, a4, s2
                  slt          a6, gp, a3
                  blt          a1, a5, 2937f
2919:             andi         s10, sp, 529
                  andi         s10, a6, -1870
                  ori          a6, s5, 288
                  bgeu         s7, s6, 2930f
                  srli         t5, s4, 8
                  bgeu         s8, a5, 2931f
                  addi         s9, s6, 1095
                  slli         sp, s6, 0
                  xor          a2, a5, s3
                  bgeu         zero, t1, 2946f
                  xor          t4, a2, s10
2930:             and          ra, a1, a5
2931:             bgeu         s3, a4, 2948f
                  srli         t6, ra, 10
                  srai         s5, gp, 7
                  auipc        s0, 483523
                  andi         zero, ra, 1546
                  bne          s4, a2, 2940f
2937:             srai         s3, zero, 31
                  bge          a0, t2, 2951f
                  ori          a6, s5, -535
2940:             bltu         t4, s2, 2941f
2941:             or           s4, s6, s7
                  ori          s11, s4, -614
                  or           a7, a2, s9
                  slt          s5, s3, a5
                  andi         s9, s1, 958
2946:             addi         s5, s5, 195
                  add          ra, tp, s6
                  la           a6, region_1+1232 #start riscv_load_store_rand_instr_stream_3
                  sltiu        s10, a6, 1698
                  sll          zero, s1, ra
                  sra          gp, t3, s6
                  sb           a7, -125(a6)
                  lbu          s3, 187(a6)
                  lh           s9, -1076(a6)
                  lb           a0, -809(a6)
                  lb           a3, 156(a6)
                  lbu          s0, -889(a6)
                  addi         s4, s9, 1824
                  sub          t0, s6, s0
                  sb           zero, 749(a6)
                  lbu          a1, 739(a6)
                  sb           s10, 15(a6)
                  lbu          s11, 13(a6)
                  xor          a5, tp, s7
                  sb           s6, -437(a6)
                  slli         s0, s2, 12
                  lhu          t3, -472(a6)
                  lb           a7, -833(a6)
                  lb           t5, 512(a6)
                  lb           sp, -696(a6)
                  lb           s0, -1153(a6)
                  xori         s0, t0, 497
                  sb           t5, -700(a6)
                  xor          t0, zero, ra
                  lhu          s6, 646(a6)
                  lb           zero, -29(a6)
                  lui          zero, 129452
                  lh           s10, -656(a6)
                  sb           a7, 321(a6)
                  lhu          t1, -448(a6)
                  lw           s10, -92(a6)
                  sb           a2, -401(a6)
                  lb           s0, -1202(a6)
                  lh           s7, 634(a6) #end riscv_load_store_rand_instr_stream_3
2948:             bge          t3, s9, 2950f
                  beq          s8, s4, 2965f
2950:             andi         s10, t2, -792
2951:             bltu         t5, s5, 2964f
                  xori         a2, t6, -1313
                  sub          s1, s9, s11
                  sll          a4, s0, a1
                  lui          gp, 675734
                  ori          ra, s8, -559
                  srl          s1, s8, s10
                  bne          t6, ra, 2977f
                  sll          s8, t0, s2
                  blt          s7, a1, 2970f
                  xor          sp, s4, ra
                  ori          t5, t2, 464
                  andi         s7, a7, 1277
2964:             addi         a1, gp, 1172
2965:             bne          s5, s6, 2971f
                  auipc        gp, 315486
                  andi         a2, a2, 727
                  sltu         s7, a1, t5
                  and          s0, s11, t0
2970:             or           t4, s3, s6
2971:             sltiu        a6, sp, -1317
                  slt          sp, gp, a4
                  slti         a2, a3, 1898
                  slti         a5, s5, -1813
                  ori          a3, s3, 825
                  bgeu         a7, t3, 2978f
2977:             lui          a1, 676810
2978:             auipc        t1, 104405
                  slt          t1, ra, s8
                  andi         a6, s10, 1297
                  srl          a0, a4, s3
                  sll          a5, s10, s10
                  beq          zero, sp, 3003f
                  slli         a4, s1, 0
                  blt          s10, a1, 2999f
                  sltiu        a3, s5, -78
                  slt          s0, t0, a2
                  beq          sp, sp, 2992f
                  addi         t3, s11, 2029
                  addi         a3, s0, -2009
                  blt          s8, sp, 3004f
2992:             blt          s9, t6, 2993f
2993:             andi         a4, a5, -1815
                  andi         a0, a3, -225
                  bgeu         s10, a7, 3001f
                  srai         s11, gp, 1
                  srai         a0, a2, 3
                  sll          s5, a4, sp
2999:             sub          t4, t4, s6
                  beq          t1, t2, 3008f
3001:             sra          s5, s10, a3
                  nop
3003:             bgeu         s6, s4, 3021f
3004:             slt          s5, t1, s1
                  andi         t4, s10, 272
                  bge          zero, s3, 3012f
                  sltu         a1, s0, t5
3008:             ori          t4, ra, 418
                  sll          a6, t4, t6
                  bge          a7, t1, 3029f
                  auipc        t4, 161749
3012:             blt          s4, s2, 3020f
                  srl          a5, tp, a0
                  nop
                  and          s9, s0, s9
                  xori         t0, s6, -1448
                  xori         s6, s8, 689
                  and          s0, t4, gp
                  slti         t0, s5, 1098
3020:             sra          sp, s11, t6
3021:             ori          s8, a5, -2022
                  slli         s5, t2, 21
                  srai         t6, a2, 4
                  sltu         s1, s8, ra
                  slt          a7, gp, s5
                  bne          t3, t3, 3036f
                  xor          a7, tp, t0
                  sltu         s6, t0, tp
3029:             sra          a6, s9, tp
                  xor          s10, s7, s7
                  and          t0, t1, a1
                  srai         s9, t1, 15
                  auipc        t3, 11783
                  sltu         s3, a6, t5
                  add          sp, a4, a5
3036:             or           t0, a0, gp
                  beq          s4, sp, 3055f
                  slti         t5, s3, 1536
                  bge          t5, s7, 3043f
                  lui          a2, 765820
                  addi         a5, t1, 12
                  andi         zero, s6, 1108
3043:             slti         s6, sp, -41
                  or           s5, s9, t0
                  add          s1, t6, s2
                  andi         a2, gp, -423
                  blt          s4, s10, 3060f
                  and          s4, a1, s4
                  and          a6, zero, a5
                  lui          t0, 502990
                  lui          t4, 824981
                  sub          s1, a3, t2
                  srai         ra, t5, 3
                  slti         s4, s2, -600
3055:             or           s3, a5, s10
                  bltu         a3, t5, 3061f
                  blt          tp, s7, 3064f
                  slt          a4, zero, t2
                  or           s5, s1, s11
3060:             ori          a5, s5, -1310
3061:             bgeu         s7, s5, 3077f
                  srl          a1, a4, gp
                  xor          s1, s6, sp
3064:             xor          a2, s10, t5
                  lui          a3, 965107
                  andi         zero, a7, -1920
                  bltu         t0, s7, 3074f
                  ori          t3, ra, -185
                  auipc        a6, 542982
                  srli         s10, s2, 29
                  sra          zero, a0, t0
                  ori          a7, t3, 1991
                  lui          s3, 290954
3074:             sra          s10, s7, a1
                  nop
                  add          s10, a1, zero
3077:             sltu         a0, t4, s7
                  or           s9, s1, a1
                  sll          t4, a1, t4
                  xor          a6, s11, s2
                  add          s5, s1, a2
                  srl          s4, a3, t5
                  srai         s11, a7, 27
                  bltu         tp, s5, 3104f
                  auipc        s3, 794387
                  srli         ra, ra, 12
                  sll          s8, t2, s9
                  add          a0, a0, sp
                  beq          s7, t0, 3109f
                  lui          a2, 50027
                  slli         s6, a1, 30
                  lui          t4, 752826
                  blt          a4, t4, 3094f
3094:             sltiu        s8, t0, 569
                  blt          t2, s0, 3098f
                  sltu         s3, a4, t1
                  sra          t5, a5, t2
3098:             srl          s6, t4, s6
                  sltu         a7, s3, a3
                  bgeu         t1, s6, 3104f
                  sll          a6, a7, a1
                  bgeu         ra, a5, 3106f
                  blt          tp, gp, 3110f
3104:             and          t1, a5, t4
                  add          a1, a5, t6
3106:             bltu         t6, sp, 3125f
                  bltu         t3, tp, 3114f
                  lui          sp, 567003
3109:             bltu         a2, s5, 3129f
3110:             bgeu         a0, s6, 3124f
                  auipc        ra, 5402
                  xori         gp, s4, -486
                  addi         t3, a4, 157
3114:             lui          a5, 1032036
                  srl          sp, t5, s10
                  bne          tp, zero, 3133f
                  andi         t0, s2, -730
                  sltiu        a3, a3, 618
                  and          a4, s9, a7
                  bne          s2, a5, 3122f
                  auipc        s8, 242531
3122:             blt          s2, t4, 3124f
                  add          a3, s10, s7
                  la           sp, region_0+1266 #start riscv_load_store_rand_instr_stream_16
                  xor          zero, s0, a6
                  sltiu        t3, s5, -187
                  srai         a1, a0, 5
                  lb           s8, -233(sp)
                  lb           a5, -21(sp)
                  sra          t0, a4, s7
                  addi         t1, s5, 1447
                  nop
                  sb           t6, 220(sp)
                  and          s0, t2, a5
                  sb           s4, -728(sp)
                  sltu         s11, t1, a3
                  sltu         s10, s11, a2
                  and          s10, gp, t0
                  lb           t0, -627(sp)
                  srli         t3, s1, 20
                  xor          ra, a3, zero
                  sb           t4, 173(sp)
                  lb           a0, 64(sp)
                  xori         t6, tp, -1873
                  lb           s7, -89(sp)
                  lbu          s3, -1131(sp)
                  lh           s0, 36(sp)
                  lbu          s6, -6(sp)
                  sb           a6, 34(sp)
                  sltu         ra, ra, t6
                  sltiu        s5, t4, 465
                  sh           s6, -652(sp)
                  slti         a0, t0, 738
                  sll          a4, t6, a4
                  sb           t0, -455(sp)
                  sltiu        s8, zero, -1754
                  and          s8, s6, ra
                  andi         t6, s10, 902
                  add          a1, tp, ra
                  sh           t3, 172(sp)
                  lb           t1, 585(sp)
                  lbu          s0, 237(sp)
                  sll          s7, s10, s0
                  sltiu        a4, ra, -1491
                  lb           t6, -611(sp)
                  xor          a5, s3, t0
                  lb           s6, -499(sp)
                  lb           a7, 621(sp) #end riscv_load_store_rand_instr_stream_16
3124:             bge          s2, sp, 3128f
3125:             nop
                  slti         ra, t1, -1223
                  or           a1, s10, a3
3128:             add          ra, s1, ra
3129:             srli         s3, s1, 11
                  addi         t3, s5, 580
                  xori         a1, s8, 2006
                  ori          s5, s9, -1884
3133:             bge          s8, a5, 3143f
                  xor          ra, s6, s5
                  slt          s6, a7, s4
                  add          a4, a4, ra
                  slt          s7, s1, a5
                  xor          a2, sp, ra
                  sll          ra, s6, a5
                  xori         t6, s8, -969
                  xori         a4, s5, -210
                  bge          ra, s5, 3150f
3143:             srli         s0, a2, 1
                  slti         a0, s1, 1602
                  bgeu         s9, a4, 3151f
                  blt          zero, s9, 3151f
                  srai         gp, s4, 4
                  sltiu        a0, a5, 1248
                  xor          s9, t1, s5
3150:             sll          s0, t6, s11
3151:             bge          s7, t3, 3158f
                  ori          t4, sp, -680
                  nop
                  slti         sp, tp, 491
                  sltiu        s5, a7, -415
                  blt          a4, t5, 3174f
                  andi         a6, s1, 1938
3158:             sra          a3, t3, t6
                  sub          s1, a6, a4
                  bne          a1, a4, 3174f
                  srl          t6, t5, zero
                  xor          t1, zero, s11
                  blt          t6, a4, 3181f
                  srai         s3, a0, 8
                  or           s11, a5, tp
                  bge          s6, a4, 3167f
3167:             or           s1, ra, s0
                  ori          s3, a4, 268
                  bltu         a2, s1, 3189f
                  or           s1, a7, a1
                  bltu         t0, t3, 3190f
                  addi         s5, a7, -586
                  sll          s1, s3, a3
3174:             sltiu        s7, ra, -663
                  blt          s9, a2, 3181f
                  addi         s11, s4, -1345
                  lui          s7, 749785
                  slt          t5, t2, s10
                  xori         t4, t4, 680
                  or           gp, t2, s6
3181:             nop
                  sll          a3, s0, a5
                  auipc        t6, 829831
                  addi         a6, a2, -751
                  sltu         t0, t1, t1
                  sltu         t4, s0, a1
                  sltu         a0, gp, s6
                  and          t3, s0, t1
3189:             sltu         s0, s0, ra
3190:             xori         sp, s8, 177
                  nop
                  sltiu        t4, ra, 918
                  bne          sp, s8, 3206f
                  nop
                  srli         s8, zero, 18
                  srl          s10, s2, t6
                  slli         gp, s10, 18
                  andi         s9, t0, 137
                  blt          s3, s11, 3219f
                  xor          a7, t4, t5
                  auipc        a4, 455903
                  sll          ra, zero, gp
                  xori         a7, tp, 1214
                  sra          a7, s7, a1
                  sra          a5, s10, a6
3206:             bltu         s9, t4, 3213f
                  xori         a7, s1, -34
                  bgeu         t2, zero, 3210f
                  sltiu        s0, a5, 217
3210:             andi         s4, a0, 1068
                  ori          a1, s0, -301
                  xori         s6, s10, 801
3213:             bgeu         t5, s7, 3232f
                  bge          s3, zero, 3221f
                  slli         s9, t3, 21
                  sltiu        s7, t1, 1910
                  xori         s11, a3, 426
                  xor          s3, a2, s1
3219:             sll          s9, s6, s7
                  or           s10, sp, a2
3221:             bge          s9, tp, 3224f
                  add          s6, s3, a5
                  lui          s11, 761743
3224:             slli         s6, s9, 27
                  and          t6, a3, t5
                  add          t4, s2, s3
                  nop
                  or           s6, s11, s1
                  slti         a0, a3, 1810
                  sub          a6, s10, t2
                  sltu         a4, s9, tp
3232:             addi         s9, sp, 1431
                  sub          s0, a0, t4
                  ori          a1, s9, -1428
                  slti         s6, s0, -1496
                  sltiu        s6, s11, 806
                  addi         zero, s6, -258
                  beq          a3, s8, 3255f
                  slli         t6, gp, 23
                  slti         s4, s5, -750
                  auipc        a6, 722309
                  bltu         ra, s1, 3246f
                  sltu         zero, a0, a0
                  sll          t1, tp, a1
                  sub          sp, zero, s11
3246:             xor          s8, sp, sp
                  auipc        a5, 37748
                  ori          a5, s1, 35
                  slt          s11, s6, tp
                  sub          a0, gp, t0
                  addi         s5, t1, 723
                  bgeu         a5, s5, 3265f
                  xori         t1, s3, 1654
                  bge          zero, s10, 3258f
3255:             srli         s5, zero, 10
                  sra          zero, zero, s10
                  xor          a2, tp, s0
3258:             sub          gp, gp, s4
                  nop
                  and          s5, s5, t3
                  beq          a4, s4, 3269f
                  xor          a1, a0, s2
                  srai         s10, ra, 24
                  sll          s3, gp, a1
3265:             slt          t4, t6, s5
                  slti         t4, t0, -1158
                  srl          zero, t6, t4
                  sltu         s9, s7, s9
3269:             sub          sp, s11, s9
                  sltiu        a5, t2, 336
                  sll          s1, s9, s3
                  srli         a7, a1, 26
                  sub          t3, s4, t3
                  ori          s8, a0, 823
                  slti         a4, s4, -80
                  bltu         zero, a1, 3278f
                  sra          s7, t5, s2
3278:             andi         t5, a2, -1956
                  or           a6, a1, gp
                  bge          a2, s7, 3296f
                  lui          t4, 619175
                  xori         t5, t2, 852
                  sub          s3, gp, a3
                  blt          s1, a3, 3304f
                  slt          sp, a7, a5
                  add          t6, s1, s10
                  sra          a6, s5, t2
                  slti         a2, s2, 1251
                  ori          a5, s8, 1553
                  bne          s3, t1, 3291f
3291:             srli         gp, t6, 20
                  bgeu         s8, a1, 3299f
                  slli         a6, s4, 4
                  srli         s8, s1, 2
                  addi         s11, s3, -1651
3296:             sll          a3, s0, s0
                  lui          s4, 919351
                  addi         sp, t0, -310
3299:             blt          sp, s7, 3317f
                  auipc        s11, 970001
                  srl          s11, s1, s11
                  sra          a4, s8, tp
                  auipc        a4, 394326
3304:             slt          s1, s2, zero
                  bgeu         a5, s2, 3325f
                  and          s4, a0, s9
                  and          a2, t3, s9
                  add          a6, a3, s9
                  srl          t3, ra, a1
                  add          t0, s3, s10
                  nop
                  or           s9, a4, s3
                  sltiu        a7, t0, 1118
                  sltu         sp, gp, s8
                  bltu         ra, zero, 3331f
                  xor          a2, s4, t6
3317:             bne          s2, a4, 3337f
                  sltiu        a3, zero, -982
                  and          s7, sp, s10
                  ori          s11, s11, 1318
                  srl          t6, s7, a3
                  and          a7, a6, s7
                  xor          a3, a5, s11
                  bne          a6, t4, 3331f
3325:             sub          a3, s9, t4
                  ori          t6, a0, 482
                  or           a6, t0, s8
                  and          s5, s7, a7
                  andi         s1, a4, 1773
                  sra          zero, t0, t1
3331:             lui          ra, 795223
                  bgeu         s4, t6, 3339f
                  slti         t1, a2, 716
                  bge          sp, gp, 3347f
                  beq          s2, gp, 3345f
                  beq          s2, t1, 3340f
3337:             srai         zero, a4, 8
                  sltiu        a4, s2, 592
3339:             srl          gp, s10, t6
3340:             beq          s1, t5, 3348f
                  andi         a7, a5, 940
                  srli         t6, t4, 15
                  lui          s10, 995593
                  sub          t1, s7, ra
3345:             srli         a5, s3, 16
                  addi         a7, s11, 1493
3347:             xori         a1, a2, -2004
3348:             blt          t0, a0, 3366f
                  bge          t1, a0, 3354f
                  bge          s0, t1, 3357f
                  sltiu        zero, s11, 711
                  sltu         a4, gp, s10
                  addi         s11, s9, 1908
3354:             andi         a4, a2, -549
                  sltu         s8, t3, s1
                  auipc        a3, 362963
3357:             slti         s0, s4, 36
                  andi         s3, t4, 132
                  bgeu         a7, t6, 3367f
                  nop
                  srai         a1, zero, 23
                  sub          s11, s8, t0
                  bne          a6, t6, 3380f
                  or           s7, a1, gp
                  sll          a0, a1, s7
3366:             sltu         s9, ra, a4
3367:             slt          s11, s0, ra
                  slli         a3, ra, 8
                  sub          s0, a7, s8
                  xor          s5, a5, t2
                  srl          a7, t4, a7
                  lui          ra, 963377
                  and          s11, t2, t0
                  add          a1, s2, t5
                  sra          s5, s0, a0
                  bne          a0, s4, 3390f
                  sub          a6, a1, a0
                  xori         s3, a5, -531
                  slti         s9, tp, -885
3380:             bgeu         s9, t0, 3399f
                  lui          s7, 504865
                  xor          s11, t1, t6
                  or           a1, a6, s3
                  beq          s8, zero, 3386f
                  slti         s4, a0, -1550
3386:             andi         sp, s5, -459
                  sra          a4, s0, t4
                  addi         s0, a3, 1820
                  beq          sp, s10, 3390f
3390:             srl          a7, gp, s1
                  srai         a5, s5, 4
                  add          a6, s8, s7
                  and          s7, s1, a6
                  sltu         t5, t0, s11
                  bne          s3, zero, 3408f
                  bgeu         sp, a2, 3400f
                  sub          s1, a2, s0
                  slli         a0, a4, 25
3399:             or           s7, a0, a4
3400:             sra          a0, s8, a3
                  bltu         s11, t4, 3403f
                  srli         ra, s1, 5
3403:             sll          a1, s7, a2
                  blt          s8, sp, 3410f
                  xori         s4, ra, 109
                  slli         s1, s6, 1
                  and          s3, t3, ra
3408:             srai         t6, s9, 11
                  blt          a7, t2, 3410f
3410:             bne          ra, gp, 3430f
                  bne          a6, s11, 3415f
                  sra          a7, a0, s10
                  ori          s10, s1, -1864
                  bge          t5, gp, 3417f
3415:             sra          a6, s0, s8
                  sra          s3, gp, t4
3417:             nop
                  slt          s11, s9, a3
                  andi         s6, t2, 1082
                  bne          a1, s1, 3427f
                  or           t5, a7, a0
                  bne          s3, t1, 3428f
                  sub          s11, a3, gp
                  and          s10, t6, s0
                  bltu         a4, t3, 3444f
                  sltiu        s4, t1, 1733
3427:             bgeu         a5, s1, 3428f
3428:             sll          a0, s6, a6
                  bne          a3, s8, 3448f
3430:             and          s0, a7, a7
                  blt          s1, sp, 3432f
3432:             bge          a4, s11, 3436f
                  srl          t5, s0, s0
                  or           t6, a2, a0
                  xor          s8, ra, a6
3436:             xor          t4, a2, t2
                  srl          t4, a4, sp
                  sll          s9, t1, s0
                  and          s10, s8, a1
                  srl          a7, t3, s4
                  sltu         a4, t2, a1
                  nop
                  sltiu        t5, s9, -1087
3444:             slt          a3, sp, s9
                  slli         s10, a1, 2
                  bne          a1, a0, 3450f
                  bge          s7, t4, 3453f
3448:             sub          t6, a4, a0
                  add          a1, t2, s1
3450:             srli         a4, s2, 6
                  srai         s5, s8, 18
                  sra          s3, s11, sp
3453:             blt          t4, t5, 3460f
                  ori          ra, a3, -1109
                  bne          a4, s5, 3461f
                  bge          a4, a3, 3475f
                  bgeu         a4, s0, 3462f
                  bgeu         s9, s2, 3478f
                  sltu         s7, sp, a0
3460:             sra          a1, t1, t6
3461:             bne          s9, s3, 3469f
3462:             bge          s1, s10, 3479f
                  sltu         sp, s10, a1
                  xori         gp, s6, -1968
                  xori         a7, t2, -679
                  addi         a6, s5, 773
                  slli         a0, s7, 31
                  addi         s1, s1, 1141
3469:             srli         t4, s11, 21
                  slt          s8, s1, t5
                  or           t0, a0, s7
                  ori          a3, t6, -1054
                  srli         t4, s1, 0
                  slli         t3, s10, 14
3475:             beq          a1, s5, 3478f
                  xor          s4, a0, a7
                  andi         a3, s3, 1402
3478:             bltu         a7, s2, 3496f
3479:             bgeu         tp, s10, 3492f
                  nop
                  or           t5, a0, s3
                  andi         gp, t5, -1287
                  slt          s0, s8, t1
                  or           a0, s8, t5
                  sub          gp, t4, tp
                  sltiu        a5, s1, -208
                  and          s1, s1, tp
                  lui          t5, 802374
                  bgeu         gp, sp, 3496f
                  addi         s9, a6, -1801
                  xor          s0, t0, t1
3492:             sltiu        a6, t5, -1081
                  addi         a6, a4, 599
                  slli         s7, a4, 15
                  add          s4, a0, s0
3496:             or           t4, s3, s2
                  sltiu        t3, s11, 1024
                  auipc        gp, 924169
                  blt          s8, s7, 3502f
                  beq          a3, a6, 3502f
                  sub          t3, zero, s5
3502:             slti         s9, s5, 1221
                  sltiu        s3, s3, 355
                  andi         a3, t4, -1168
                  and          a3, a3, a7
                  lw           a6, 4(tp)
                  addi         a7, s9, 336
                  addi         tp, tp, 16
                  and          a5, s3, s3
4680:             addi x31, x16, 0
4680:             jalr x31, x31, 0
sub_7:            sltiu        s4, a5, -309
                  addi         tp, tp, -12
                  sw           a6, 4(tp)
                  sll          t5, t0, a5
                  nop
                  auipc        s11, 189541
                  ori          s3, zero, 588
                  xori         s7, zero, 1332
                  sra          s10, s1, t3
                  la           s1, region_1+1861 #start riscv_load_store_rand_instr_stream_0
                  sb           t1, -191(s1)
                  xori         a0, s2, -1506
                  srl          a6, s3, s11
                  sub          s5, a5, a1
                  lh           a3, -143(s1)
                  xori         s11, t4, -1931
                  lb           a2, -181(s1)
                  lb           a7, -207(s1)
                  add          a6, t6, t1
                  sltu         ra, t3, s2
                  sh           a1, -155(s1)
                  lbu          a4, -88(s1)
                  sb           s1, -108(s1)
                  lbu          a1, 112(s1)
                  lb           s0, -149(s1)
                  slti         s5, s3, 582
                  lhu          t0, -219(s1)
                  sra          t5, t4, s0
                  or           s0, t1, a0
                  lbu          s4, 11(s1)
                  sh           zero, -163(s1)
                  and          s8, s10, s11
                  and          t4, s10, t4
                  lbu          s10, -36(s1)
                  sltiu        ra, a6, 1614
                  and          a4, t1, s0
                  xor          a5, tp, a2
                  nop
                  lh           a1, 85(s1)
                  lb           a0, 106(s1)
                  or           a0, t4, a3
                  xor          a4, a7, a1
                  xor          t1, a3, a5
                  lbu          t0, 44(s1)
                  slli         s9, s10, 27
                  sb           s9, -124(s1)
                  sra          t4, a2, s3
                  sll          sp, a0, ra
                  lw           s4, -233(s1)
                  sltiu        t5, t0, -1109
                  lh           ra, -115(s1)
                  lb           a0, -217(s1)
                  sb           s6, 4(s1)
                  lb           a0, 36(s1)
                  lbu          a2, -54(s1)
                  slti         s3, t3, -1765
                  lui          a6, 85441
                  sra          t1, s9, a3
                  lhu          t6, 13(s1)
                  lh           s0, -45(s1) #end riscv_load_store_rand_instr_stream_0
                  ori          t4, s7, 458
                  auipc        t5, 850053
                  ori          s7, gp, 1673
                  slli         t5, t1, 8
                  sra          gp, s0, s4
                  slti         sp, s6, 104
                  sltiu        s0, s4, 794
                  and          a0, t2, s0
                  xor          zero, zero, t6
                  ori          ra, a0, 50
                  beq          a5, t6, 30f
                  and          a1, s3, sp
                  beq          a0, s1, 23f
                  sll          t1, s11, t5
                  srli         s6, sp, 30
                  andi         t5, t5, -1564
                  sltu         s8, s9, t1
                  bltu         s1, s6, 31f
                  or           t3, a1, a6
                  xor          t3, t0, s6
                  beq          sp, sp, 24f
                  sra          sp, a6, s10
                  bne          s2, t6, 38f
23:               bgeu         t5, a5, 30f
24:               slti         a7, s11, -1934
                  sltu         s9, t5, a6
                  xori         s5, zero, -957
                  sltiu        a7, t4, -1661
                  and          ra, s2, a0
                  beq          ra, t3, 36f
30:               slt          t3, sp, s3
31:               andi         s0, t1, -21
                  srl          s10, s2, s4
                  add          a0, t6, t5
                  slti         a4, sp, -1959
                  or           s3, s7, t0
36:               srli         s7, s5, 8
                  andi         s1, t5, 2023
38:               xori         a2, s6, -635
                  or           s1, tp, a4
                  beq          a7, gp, 57f
                  bltu         tp, s6, 43f
                  bge          s6, s1, 56f
43:               sra          a4, s9, s0
                  addi         t0, s4, 235
                  nop
                  beq          a2, gp, 56f
                  lui          s7, 255175
                  add          s3, s3, a6
                  lui          zero, 222676
                  lui          s9, 598344
                  sll          s4, zero, s7
                  add          s11, t3, a7
                  bne          s1, a6, 55f
                  nop
55:               bgeu         t0, t2, 66f
56:               sra          a0, s0, a2
57:               lui          a5, 264492
                  slti         gp, s8, -1539
                  and          s0, t4, s3
                  lui          s5, 885442
                  sub          ra, a5, s3
                  blt          s10, gp, 77f
                  xor          s10, zero, t1
                  sub          gp, s3, t3
                  xori         a3, a1, -909
66:               sub          t1, s1, s3
                  beq          s0, s2, 85f
                  bltu         t5, s2, 87f
                  add          a2, a4, sp
                  bge          a1, a4, 82f
                  slli         s9, s3, 4
                  bne          a3, a6, 81f
                  xori         a3, s9, -628
                  and          ra, s1, s3
                  bgeu         s3, s1, 78f
                  auipc        s3, 253418
77:               beq          s0, a1, 95f
78:               sltu         s11, t4, t1
                  and          a4, a6, zero
                  bge          s3, s5, 96f
81:               and          a5, s1, s6
82:               auipc        s11, 499157
                  or           s11, s11, s5
                  srl          t6, a4, s4
85:               slt          s8, s6, t2
                  xori         ra, t5, 746
87:               ori          gp, a3, -454
                  or           s9, s9, a5
                  bne          s9, a2, 96f
                  bge          t2, a6, 104f
                  sub          s11, a7, gp
                  lui          a1, 130549
                  sub          a5, t1, s7
                  bge          s8, t5, 114f
95:               slli         t3, s8, 16
96:               xori         s6, s6, -838
                  addi         s9, t4, 1326
                  xori         s7, s9, 895
                  auipc        a2, 744199
                  nop
                  addi         s3, a4, 436
                  sub          a6, t2, s2
                  or           s1, zero, t6
104:              xor          s11, t2, a3
                  sltiu        s0, a4, -659
                  srl          t5, ra, a6
                  slt          s1, a6, s11
                  xori         a2, a2, -1454
                  bltu         ra, a0, 116f
                  bne          zero, t5, 121f
                  slt          s11, s11, s2
                  ori          a5, s3, -858
                  slti         s6, s2, -1061
114:              sra          t5, a5, s3
                  srai         s6, a1, 8
116:              xor          gp, zero, s2
                  slti         a3, t1, 984
                  add          t5, s11, a3
                  sll          a4, t2, s9
                  blt          t6, s3, 126f
121:              srli         s7, t5, 11
                  srli         s1, a4, 29
                  blt          s6, s5, 126f
                  nop
                  srli         s9, a6, 16
126:              lui          t5, 578480
                  auipc        s3, 53704
                  slli         a7, t3, 27
                  lw           a6, 4(tp)
                  addi         tp, tp, 12
                  nop
192:              addi x8, x16, 1
192:              jalr x8, x8, 0
sub_10:           xori         a4, s10, 1782
                  addi         tp, tp, -32
                  srl          t4, t0, sp
                  sltu         s8, t6, a6
                  sra          sp, a0, s0
                  srl          zero, s0, s4
                  sra          s8, t2, s7
                  xori         a0, s5, -1188
                  sltu         s6, gp, gp
                  sw           a6, 4(tp)
                  auipc        s6, 226491
                  auipc        a3, 561464
                  bge          a7, t0, 17f
                  lui          sp, 681097
                  and          s4, s7, t4
                  srai         t5, zero, 24
                  lui          a7, 1030976
                  and          s5, s4, t5
                  slt          s1, a4, t4
                  bne          a0, a1, 11f
                  nop
                  blt          s1, s1, 25f
                  bltu         s2, s0, 12f
11:               ori          a5, t3, -908
12:               or           zero, tp, zero
                  xori         s4, a1, 625
                  slt          a6, zero, ra
                  sra          a7, t4, s10
                  xor          t0, s2, a6
17:               andi         a2, a2, 617
                  slli         s7, a5, 23
                  bne          s11, ra, 34f
                  slt          t3, a7, gp
                  bge          t1, s11, 29f
                  bge          s9, t4, 30f
                  sub          ra, s7, t5
                  xori         s5, s9, -1057
25:               bgeu         t4, s4, 34f
                  andi         s3, t4, 985
                  or           t5, zero, a6
                  sltiu        t3, t6, -2021
29:               blt          s0, tp, 41f
30:               lui          s10, 325510
                  slt          t4, a7, a2
                  add          a4, tp, s8
                  bge          t5, gp, 41f
34:               add          a4, zero, zero
                  nop
                  srai         t3, s11, 14
                  add          a4, s0, s6
                  xori         t3, t1, 1097
                  bne          t6, s9, 45f
                  sltiu        zero, gp, -159
41:               sub          t1, s10, gp
                  addi         t1, s5, 1603
                  bge          s8, t0, 54f
                  sll          ra, t3, s9
45:               beq          s4, s3, 50f
                  lui          s9, 682761
                  add          s4, t0, s9
                  sub          s8, t6, a1
                  slti         s9, s7, 1303
50:               blt          s4, s6, 58f
                  sll          t1, sp, a5
                  lui          s6, 930946
                  and          a3, tp, s3
54:               srl          s4, t6, t0
                  bne          t5, gp, 63f
                  bltu         tp, a7, 60f
                  bne          s3, t2, 70f
58:               bge          s11, t6, 68f
                  andi         a2, s3, -242
60:               sltu         s0, s1, t0
                  blt          t4, sp, 65f
                  nop
63:               srai         s4, s6, 22
                  addi         a5, s11, 896
65:               beq          zero, t1, 67f
                  sub          s7, s8, t3
67:               slti         t0, zero, 1403
68:               nop
                  add          s3, a2, s4
70:               sra          t4, a5, t3
                  or           t6, s11, a0
                  add          t1, s0, a0
                  sltu         a4, t5, a2
                  beq          s0, s7, 86f
                  sll          s1, t6, s2
                  sll          a2, s10, s8
                  slli         s11, s4, 13
                  srli         s11, s10, 13
                  blt          sp, a1, 95f
                  srai         s6, t2, 30
                  sltiu        a6, a2, 1694
                  srl          s1, t3, s8
                  slt          s11, tp, a4
                  add          a6, tp, s5
                  andi         s7, a3, 310
86:               beq          a4, s8, 90f
                  or           a6, s1, s8
                  srli         a3, a2, 18
                  sll          a6, a1, t1
90:               blt          s7, s9, 107f
                  bgeu         s6, a7, 100f
                  or           a7, a7, s1
                  bltu         a3, s8, 94f
94:               auipc        a0, 62455
95:               srli         t6, s1, 17
                  srl          s10, s9, s2
                  sltu         s6, s10, s9
                  xori         s1, s4, -1473
                  andi         a6, a2, -1984
100:              bgeu         t1, t2, 119f
                  lui          t0, 168162
                  bltu         s8, t5, 111f
                  ori          sp, s3, 1255
                  slt          t3, a1, t3
                  bgeu         s5, s9, 111f
                  xori         t0, t0, -1825
107:              blt          s6, a2, 121f
                  bge          ra, zero, 110f
                  la           a7, region_0+781 #start riscv_load_store_rand_instr_stream_0
                  lbu          t1, -197(a7)
                  sb           a6, -44(a7)
                  lbu          a4, 101(a7)
                  lh           s9, -131(a7)
                  sll          a6, a6, gp
                  lhu          t1, 107(a7)
                  sb           t1, 68(a7)
                  sb           a6, 120(a7)
                  xori         zero, a0, -1736
                  sb           s2, -216(a7)
                  slt          s4, sp, zero
                  nop
                  xor          a1, s0, gp
                  lb           s10, -131(a7)
                  lhu          s7, -73(a7)
                  sltu         s11, s8, s11
                  lbu          zero, -70(a7)
                  sb           a5, 4(a7)
                  sll          s7, t1, s6
                  sh           s2, -177(a7)
                  lw           s0, 247(a7)
                  slt          s3, a0, s6
                  srl          s8, sp, s2
                  sltu         s9, a6, sp
                  srl          a3, s1, s3
                  lbu          t1, 28(a7)
                  auipc        ra, 947416
                  sltu         s6, a5, a7
                  sra          a5, a6, a3
                  sb           s10, 93(a7)
                  lbu          a4, -38(a7)
                  sh           s10, -55(a7)
                  sb           t4, 160(a7)
                  lb           s6, -14(a7)
                  lui          s10, 131530
                  lb           a5, 185(a7)
                  lb           sp, -255(a7)
                  or           a4, s4, a0
                  lb           a4, 13(a7)
                  lbu          zero, 107(a7)
                  lb           zero, 236(a7)
                  sra          zero, t0, a7
                  sll          s1, s10, s9
                  lbu          zero, 227(a7)
                  lb           t3, 166(a7)
                  sb           s1, -172(a7)
                  lbu          s7, -30(a7)
                  lb           t1, 30(a7) #end riscv_load_store_rand_instr_stream_0
                  sltiu        s5, s7, -1881
110:              srl          s5, a4, ra
111:              auipc        s0, 268841
                  blt          ra, a7, 118f
                  add          a2, s5, t3
                  srli         s8, gp, 14
                  add          s6, gp, a3
                  srl          a7, a7, a6
                  slti         gp, t1, 905
118:              slt          s4, a0, t2
119:              xor          a0, a4, gp
                  xor          s7, t1, t3
121:              bne          ra, a7, 122f
122:              srli         a0, s0, 3
                  srl          s8, gp, t3
                  addi         a1, t4, -1473
                  blt          a3, a5, 139f
                  nop
                  andi         a0, a5, -590
                  bltu         s7, s6, 132f
                  blt          s11, t3, 134f
                  slt          a2, s0, s11
                  srli         ra, a6, 27
132:              addi         s5, a4, 1970
                  lui          a1, 390303
134:              slli         gp, t2, 3
                  sub          s0, a5, a6
                  bge          s5, s9, 139f
                  bgeu         s6, s5, 139f
                  auipc        zero, 501954
139:              add          t6, s4, t6
                  lw           a6, 4(tp)
                  addi         tp, tp, 32
                  sltu         a3, s9, a6
                  sub          a2, s9, t0
                  xori         s11, t3, 588
                  or           s5, a5, a7
207:              addi x12, x16, 0
207:              jalr x12, x12, 0
sub_3:            sll          t5, a6, s0
                  nop
                  srl          sp, a5, s4
                  xor          a7, s8, t2
                  addi         tp, tp, -8
                  xori         a0, a4, -47
                  add          gp, gp, a5
                  slli         s8, gp, 14
                  srl          s6, s10, tp
                  sw           a6, 4(tp)
                  nop
                  lui          s9, 408995
                  auipc        s8, 70601
                  srl          s0, tp, tp
                  or           s5, a1, a5
                  or           a5, gp, zero
                  blt          s5, a2, sub_3_j5 #branch to jump instr
                  or           s3, s4, s4
                  or           a2, s10, gp
                  sll          s8, a2, a7
sub_3_j5:         jal          a6, sub_4 #jump sub_3 -> sub_4
                  la           a6, sub_4
                  or           s9, t3, a4
                  or           a4, a4, a1
                  addi         a6, a6, -436
                  lui          s5, 565342
                  add          t0, a6, ra
                  ori          s1, s2, -1848
                  lui          s10, 256121
                  srl          sp, s5, s11
                  sll          a3, s0, s4
                  sltiu        a5, t6, -1749
                  beq          s10, a5, sub_3_j6 #branch to jump instr
                  ori          a3, t3, 496
sub_3_j6:         jalr         a6, a6, 437 #jump sub_3 -> sub_4
                  bgeu         s9, t3, 1f
1:                sll          sp, t3, gp
                  slli         t5, s8, 15
                  lui          s5, 777887
                  and          a2, a4, t2
                  lui          a5, 661036
                  and          t3, s3, ra
                  beq          t5, s9, 11f
                  sra          s11, t3, a4
                  slli         a2, a4, 3
                  ori          t5, t3, -1433
11:               srai         a3, a2, 24
                  lw           a6, 4(tp)
                  addi         tp, tp, 8
                  sub          s10, s3, s0
                  srl          s1, s2, tp
                  sltiu        ra, t1, -510
                  sub          s4, a3, gp
                  xor          a7, s0, a2
54:               addi x29, x16, 1
54:               jalr x29, x29, 0
sub_2:            srli         t3, t1, 24
                  andi         t5, s4, -1222
                  sltu         s1, s7, t0
                  sll          t6, t6, t1
                  srai         a5, ra, 13
                  addi         tp, tp, -40
                  and          t4, a7, gp
                  sw           a6, 4(tp)
                  slt          s4, s5, t2
                  add          t5, a6, a4
                  andi         t4, t2, -1038
                  lui          s5, 907953
                  xori         zero, a2, 1549
                  addi         a5, zero, 396
                  blt          s0, a6, 10f
                  addi         a6, a6, 951
                  nop
                  bge          gp, a5, 25f
                  add          s5, ra, s5
10:               slli         t0, s9, 5
                  andi         s11, t1, 619
                  srli         s10, t1, 27
                  slti         a5, a2, -1993
                  sltu         t3, s7, s2
                  ori          t5, sp, 368
                  xori         sp, s9, -662
                  bge          t1, ra, 25f
                  slt          a4, s6, s5
                  xor          s10, s7, t1
                  auipc        s10, 343899
                  auipc        a7, 711453
                  bltu         sp, a0, 25f
                  sltu         gp, t6, tp
                  sll          zero, t5, s7
25:               sub          s6, t0, a7
                  sll          s6, gp, s2
                  slti         a7, t0, 2016
                  lw           a6, 4(tp)
                  or           s7, s1, zero
                  srai         a5, t3, 6
                  xor          s11, a3, t6
                  srli         s11, a0, 28
                  addi         tp, tp, 40
                  sll          gp, t2, t1
44:               addi x20, x16, 0
44:               jalr x20, x20, 0
sub_4:            xori         a1, t4, -1469
                  addi         tp, tp, -16
                  srl          t5, s7, s8
                  sw           a6, 4(tp)
                  sub          gp, s9, a3
                  andi         t1, s5, 527
                  or           t5, a5, t2
                  auipc        a3, 813668
                  sra          t3, sp, gp
                  slti         s9, s5, 68
                  slli         t4, s8, 28
                  sltiu        t6, ra, 1960
                  sltiu        s0, a3, -293
                  srli         a1, s9, 12
                  lui          s6, 85334
                  slli         s4, t6, 20
sub_4_j7:         jal          a6, sub_6 #jump sub_4 -> sub_6
                  xori         a7, s2, 1180
                  auipc        t1, 839846
                  nop
                  slli         a0, t0, 6
                  la           a3, sub_5
                  sltiu        s0, a2, 1816
                  sub          s1, s8, gp
                  addi         a3, a3, 977
                  slli         s4, a2, 23
sub_4_j8:         jalr         a6, a3, -976 #jump sub_4 -> sub_5
                  xor          s6, s1, s2
                  slli         t4, s9, 8
                  add          a0, t3, tp
                  sltiu        s8, s2, 136
                  xori         s4, s0, -1028
                  srai         s1, s10, 6
                  xori         ra, a6, -365
                  add          s9, a0, t5
                  sub          s1, t5, s6
                  andi         s9, s8, 565
                  sltu         s7, s11, s11
                  slli         t6, s7, 22
                  or           a1, s2, s1
                  bgeu         s7, a2, 23f
                  auipc        a0, 547143
                  lui          sp, 781314
                  add          s4, a5, a1
                  ori          t1, s9, -900
                  sra          s3, a0, s4
                  bge          a1, t1, 28f
                  srli         a4, t3, 8
                  sra          sp, t1, s9
                  nop
23:               sltu         a1, t5, a0
                  lui          t4, 601201
                  sltu         a0, t1, a2
                  xor          s5, s5, s6
                  srl          gp, a0, s0
28:               add          s11, s2, gp
                  xor          ra, gp, s0
                  lw           a6, 4(tp)
                  add          s0, t0, t2
                  add          t4, a4, a7
                  lui          s10, 629996
                  auipc        s5, 930844
                  or           s11, t5, t5
                  addi         tp, tp, 16
                  xori         gp, zero, 1242
                  addi         t1, t0, 1805
66:               addi x6, x16, 1
66:               jalr x6, x6, 0
sub_1:            blt          zero, zero, sub_1_stack_p
                  sra          a0, gp, a4
sub_1_stack_p:    addi         tp, tp, -52
                  andi         a7, a0, 649
                  sw           a6, 4(tp)
                  srli         t5, a6, 28
                  sub          a5, s5, a4
                  add          s1, s2, s8
                  or           ra, a0, t1
                  add          a7, t1, a6
                  lui          t4, 512422
                  blt          ra, s4, sub_1_j3 #branch to jump instr
                  or           a3, s6, ra
                  addi         t0, t4, -297
                  xori         s0, t0, 2016
                  srli         a2, ra, 26
                  srli         gp, a3, 12
                  nop
                  lui          t4, 439020
sub_1_j3:         jal          a6, sub_3 #jump sub_1 -> sub_3
                  ori          gp, s9, -1146
                  sub          zero, s2, s6
                  la           a3, sub_3
                  and          a6, s6, s11
                  xor          t1, s4, tp
                  sltu         t1, a0, a4
                  addi         a3, a3, -924
                  bne          s6, sp, sub_1_j4 #branch to jump instr
                  xori         s7, t3, 699
                  auipc        a5, 131836
                  slt          s7, tp, a4
                  lui          s0, 861136
                  sra          t3, a7, t0
sub_1_j4:         jalr         a6, a3, 924 #jump sub_1 -> sub_3
                  bge          t6, s5, 16f
                  add          t1, a0, t5
                  nop
                  sub          s6, sp, a3
                  srl          a5, ra, s8
                  beq          a3, a3, 23f
                  and          s7, a2, t1
                  sltu         s1, zero, sp
                  auipc        a5, 780092
                  blt          a7, s5, 23f
                  xori         t1, t2, 1461
                  xor          a6, s4, a7
                  addi         gp, a4, -328
                  sll          s1, t1, t2
                  bgeu         s10, s3, 22f
                  beq          a0, s7, 24f
16:               bge          s5, s8, 26f
                  srl          s9, a4, s7
                  sll          a2, t2, a0
                  xori         sp, t4, -1713
                  bne          tp, s2, 23f
                  srl          gp, a1, s2
22:               slt          s9, s5, s4
23:               slti         s9, a4, -111
24:               slli         t3, t5, 29
                  or           t3, s6, s1
26:               bne          s2, s1, 46f
                  lui          s5, 205127
                  sltu         a7, a5, t6
                  sub          s6, t5, s4
                  srli         ra, s9, 2
                  andi         zero, tp, 761
                  bgeu         a2, s8, 50f
                  slli         a6, s8, 31
                  sll          s11, s0, t3
                  ori          s3, a3, -1899
                  sra          a6, t6, s3
                  slt          a1, s9, a1
                  sub          a0, zero, gp
                  srl          a7, gp, a0
                  auipc        s0, 74751
                  srli         s4, sp, 14
                  or           s8, tp, a5
                  bltu         a1, s8, 55f
                  blt          s5, a7, 62f
                  srl          a7, s1, zero
46:               srl          t0, s11, s4
                  add          s3, s5, s3
                  auipc        a2, 257261
                  auipc        s10, 579421
50:               beq          a5, t2, 61f
                  nop
                  srl          t1, a0, s8
                  xori         s9, s9, 1999
                  and          t5, tp, s5
55:               sra          t3, tp, t0
                  srli         zero, s2, 4
                  srl          a4, a2, s2
                  srai         s0, t2, 20
                  and          s10, a6, s11
                  sub          s7, t5, a7
61:               or           s4, t4, s1
62:               sra          a7, sp, s0
                  add          s6, s3, a3
                  slti         gp, sp, -265
                  srl          t1, a3, a2
                  lui          s1, 173072
                  srli         s5, zero, 31
                  sll          s1, sp, ra
                  ori          gp, a5, 1277
                  blt          s11, zero, 75f
                  addi         s10, t0, -670
                  srl          t0, a0, a4
                  sltu         zero, sp, s5
                  sltiu        a3, s7, 1504
75:               sltiu        s3, a4, 1839
                  bgeu         s10, a5, 95f
                  add          ra, t3, s9
                  auipc        s8, 457791
                  add          s3, t2, gp
                  blt          ra, tp, 97f
                  xor          a7, s7, s7
                  lui          s6, 323646
                  sub          a6, t4, s11
                  ori          ra, s0, 1677
                  slt          s3, a0, s3
                  andi         s11, s3, 1513
                  ori          a0, s4, 281
                  add          t4, tp, a6
                  bltu         s4, s1, 99f
                  srai         t4, t1, 7
                  or           t0, s7, s9
                  bgeu         gp, s8, 102f
                  sltiu        t1, a5, 1924
                  srl          s6, a3, s10
95:               srl          s1, t2, tp
                  srli         t5, t6, 7
97:               srl          a3, s3, s11
                  slli         a0, t3, 5
99:               xori         s8, a1, 680
                  bltu         s7, s5, 105f
                  and          t1, a0, s4
102:              slt          ra, ra, s5
                  blt          s4, tp, 105f
                  slt          s7, s4, a0
105:              auipc        s4, 423193
                  slli         s5, s11, 29
                  andi         a2, s9, 1238
                  srl          s9, t2, s3
                  sltiu        a4, tp, -85
                  lw           a6, 4(tp)
                  addi         tp, tp, 52
                  or           s8, a5, a5
147:              addi x12, x16, 0
147:              jalr x12, x12, 0
sub_9:            addi         tp, tp, -44
                  auipc        a4, 46060
                  andi         a2, ra, 1559
                  sw           a6, 4(tp)
                  sll          ra, zero, s10
                  nop
                  slti         t4, s1, -792
                  xor          zero, a1, t5
                  bne          s8, s8, 10f
                  srli         t0, t6, 31
                  sra          s6, s0, t6
                  add          s4, t4, a2
                  slti         t3, a0, 379
                  auipc        t6, 351965
                  srai         s1, s7, 12
                  xor          s3, t2, s10
10:               andi         t4, s1, -632
                  sll          t1, s7, s3
                  xor          s0, s2, s7
                  bltu         t5, zero, 20f
                  beq          t3, a1, 22f
                  slli         t1, s3, 31
                  addi         a4, gp, -544
                  and          a0, s5, s3
                  or           s4, a4, t3
                  sra          a0, s8, s3
20:               bgeu         s2, ra, 33f
                  add          t5, t3, s10
22:               sltiu        t1, a7, -1930
                  bgeu         a1, tp, 25f
                  sltu         t1, a0, a0
25:               sltiu        s5, s0, -865
                  or           s3, t4, a3
                  andi         t5, a7, -845
                  srai         t4, s4, 25
                  sub          s8, s6, t2
                  sll          t0, s7, t3
                  auipc        t6, 472204
                  bne          s11, ra, 34f
33:               lui          s9, 542102
34:               add          ra, s3, tp
                  ori          a0, t1, -707
                  and          s10, tp, sp
                  srai         s4, ra, 22
                  sltu         zero, a4, t6
                  lw           a6, 4(tp)
                  auipc        t0, 531441
                  addi         tp, tp, 44
                  addi         a5, a7, 153
                  slt          a4, s7, zero
                  srli         s7, t0, 22
                  or           a3, s11, a4
52:               addi x5, x16, 1
52:               jalr x5, x5, 0
sub_6:            nop
                  slt          s9, a2, a1
                  xor          t0, a1, t0
                  slti         a4, t6, 1109
                  lui          s4, 504111
                  addi         tp, tp, -12
                  sw           a6, 4(tp)
                  srl          t6, a6, s2
                  bge          s5, t0, sub_6_j12 #branch to jump instr
                  sra          s6, s5, s4
                  andi         t5, s6, -613
                  xori         s4, a3, -998
                  sltu         s6, s4, a4
                  sltu         sp, a0, t0
                  slt          a3, s4, s3
                  srl          a5, a6, t5
sub_6_j12:        jal          a6, sub_7 #jump sub_6 -> sub_7
                  addi         a1, s9, -426
                  add          a7, s6, s10
                  lui          a1, 79774
                  andi         s4, s8, 1326
                  slt          t3, t0, ra
                  srai         a3, s11, 30
                  sltiu        s3, t6, -106
                  and          a7, s8, a1
                  andi         a2, t1, 1243
                  srai         a1, gp, 30
sub_6_j13:        jal          a6, sub_8 #jump sub_6 -> sub_8
                  sra          a1, ra, zero
                  bne          t0, s2, 5f
                  lui          t5, 294769
                  nop
                  or           s10, s9, s4
5:                and          a6, sp, s7
                  srli         s6, t5, 6
                  sra          t3, s4, s8
                  srai         t5, t3, 21
                  slli         s5, s8, 27
                  sra          s9, t1, a5
                  srli         ra, ra, 4
                  xori         s9, s8, 1947
                  xor          t1, s5, t6
                  add          gp, s11, t5
                  and          a0, t0, s3
                  bne          s0, zero, 21f
                  bltu         zero, ra, 19f
                  sub          a1, s11, a2
19:               slti         a7, t6, 599
                  sltiu        a6, zero, 199
21:               bltu         s6, a0, 36f
                  and          a0, tp, ra
                  or           t4, t1, s11
                  xor          s6, t4, tp
                  auipc        gp, 764088
                  or           s10, a4, t3
                  sltu         a1, s10, a6
                  slli         s3, ra, 25
                  bge          a7, s5, 46f
                  srl          s8, t6, gp
                  bge          s1, t1, 38f
                  xori         a1, s1, -1322
                  bgeu         s2, zero, 36f
                  sra          a1, a6, s5
                  sltiu        s0, s4, 1462
36:               addi         s9, a0, 1901
                  sub          t1, zero, t1
38:               lui          a4, 115718
                  blt          t1, s8, 52f
                  sub          t3, s4, a5
                  sltu         a4, a2, s11
                  auipc        a6, 22660
                  sll          zero, t3, a2
                  xori         s4, a0, -794
                  srai         s7, t1, 27
46:               srl          s11, s2, a3
                  srl          gp, zero, tp
                  srl          s5, a5, tp
                  or           a0, t4, s1
                  nop
                  bgeu         t6, zero, 59f
52:               ori          s7, s1, -1216
                  xor          a1, a3, t0
                  xor          s8, sp, t6
                  sltiu        s1, t5, -1005
                  blt          a5, t0, 59f
                  addi         a2, s10, 368
                  bne          s4, t0, 59f
59:               srl          a1, a1, tp
                  slti         a1, a1, 837
                  and          s5, a0, a2
                  lui          s4, 322470
                  or           t4, a4, s0
                  lw           a6, 4(tp)
                  sltu         s3, s3, t2
                  srl          gp, s8, t2
                  addi         tp, tp, 12
                  ori          t0, s4, 909
                  addi         s11, t3, -1019
98:               addi x21, x16, 0
98:               jalr x21, x21, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x18, x4, zero
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x30, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x30, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x30, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x30, x28, ecall_handler
                  li x28, 0x1
                  beq x30, x28, instr_fault_handler
                  li x28, 0x5
                  beq x30, x28, load_fault_handler
                  li x28, 0x7
                  beq x30, x28, store_fault_handler
                  li x28, 0xc
                  beq x30, x28, pt_fault_handler
                  li x28, 0xd
                  beq x30, x28, pt_fault_handler
                  li x28, 0xf
                  beq x30, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

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
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
