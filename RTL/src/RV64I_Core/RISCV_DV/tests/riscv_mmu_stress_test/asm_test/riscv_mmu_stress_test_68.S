.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 0
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0x8
                  li x1, 0xfabeeea8
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x1b41bb73
                  li x5, 0xd
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x7
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x7
                  li x13, 0x0
                  li x15, 0xc41f4f5d
                  li x16, 0x80000000
                  li x17, 0xb
                  li x18, 0x80000000
                  li x19, 0x2334e1aa
                  li x21, 0x80000000
                  li x22, 0xf738e585
                  li x23, 0x85655fd5
                  li x24, 0x80000000
                  li x25, 0xeeb85810
                  li x26, 0xf17afa64
                  li x27, 0x23366f0b
                  li x28, 0xe
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0xa635c4b7
                  la x20, user_stack_end
main:             la           s3, region_0+260 #start riscv_load_store_rand_instr_stream_0
                  srl          t6, s2, s1
                  lbu          t0, 15(s3)
                  add          s2, a3, a7
                  lbu          ra, 6(s3)
                  lui          t4, 911427
                  srli         s6, s4, 30
                  sh           zero, -10(s3)
                  xori         s5, a0, -1976
                  lh           tp, 0(s3)
                  lb           a2, -7(s3)
                  lui          a3, 858214
                  sb           t6, 1(s3)
                  lhu          s5, 8(s3)
                  and          zero, a6, s8
                  lb           a2, -5(s3)
                  sltiu        zero, s0, -928
                  sb           s0, -14(s3)
                  slti         s1, t4, 846
                  nop
                  xor          t1, t5, ra
                  lb           s9, 3(s3)
                  slli         zero, gp, 11
                  lbu          s2, 2(s3)
                  lui          s2, 957578
                  auipc        sp, 801971
                  lbu          a7, -5(s3)
                  lbu          a1, 12(s3)
                  xori         a2, s2, -1019
                  ori          t0, t0, 495
                  lbu          t6, -7(s3)
                  lb           t1, -13(s3)
                  srl          zero, t6, s7
                  xori         s2, a2, 44
                  lui          ra, 953815
                  slt          gp, zero, t3
                  srl          t1, s0, a5
                  add          a0, a4, t4
                  lh           t6, 8(s3)
                  sb           s7, -5(s3)
                  srai         a3, t1, 14
                  sub          t0, s2, tp
                  slt          t0, tp, tp
                  lw           s5, -8(s3)
                  lbu          s5, -1(s3)
                  sll          a2, t0, t2
                  slli         zero, t3, 30
                  lbu          zero, -6(s3)
                  nop
                  lbu          a7, 5(s3)
                  sll          t2, a3, sp
                  lhu          a0, 4(s3)
                  lb           a7, -5(s3)
                  lbu          s10, -13(s3)
                  srl          s11, tp, t4
                  lw           s10, 4(s3)
                  sw           s9, -12(s3) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+540 #start riscv_load_store_hazard_instr_stream_0
                  or           s0, t3, t0
                  lhu          gp, 224(sp)
                  lbu          s2, 216(sp)
                  addi         s2, t3, 1521
                  lb           s10, -305(sp)
                  lbu          a6, 87(sp)
                  lhu          t0, 670(sp)
                  sh           ra, 670(sp)
                  lh           s1, 670(sp)
                  lhu          s3, 1308(sp)
                  lw           t0, 1308(sp)
                  sb           s8, 1447(sp)
                  lb           s9, 1344(sp)
                  lb           s1, 1299(sp)
                  lb           t3, -205(sp)
                  lbu          s6, -205(sp)
                  sb           a3, -205(sp)
                  sb           s6, -164(sp)
                  lbu          s2, -164(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_1+422 #start load_store_instr_stream_1
                  la           s6, region_1+1399 #start load_store_instr_stream_0
                  lb           t2, -14(s8)
                  la           a1, region_1+134 #start load_store_instr_stream_2
                  lb           ra, 59(s6)
                  sb           t3, 100(s6)
                  lhu          gp, -2(a1)
                  lhu          tp, -16(s8)
                  sw           a6, 137(s6)
                  sb           sp, 13(s8)
                  lb           a7, -1(s8)
                  lbu          tp, 14(a1)
                  lb           t0, -203(s6)
                  lb           ra, 7(s8)
                  lbu          a5, -6(s8)
                  sb           s2, 12(a1)
                  lb           t4, 14(a1)
                  sb           a2, 122(s6)
                  sb           a6, 95(s6)
                  lbu          a6, -7(s8) #end load_store_instr_stream_1
                  sw           a6, -2(a1)
                  lbu          t6, 86(s6)
                  lh           s0, -16(a1)
                  lb           sp, 62(s6)
                  lbu          zero, -59(s6)
                  sb           s7, -7(a1) #end load_store_instr_stream_2
                  sb           s5, -68(s6) #end load_store_instr_stream_0
                  la           s0, region_1+1730 #start load_store_instr_stream_1
                  lh           s8, -28(s0)
                  la           a3, region_1+254 #start load_store_instr_stream_3
                  la           s3, region_1+1461 #start load_store_instr_stream_4
                  la           ra, region_1+153 #start load_store_instr_stream_2
                  la           a7, region_1+1308 #start load_store_instr_stream_0
                  sh           s9, -40(s0)
                  lb           s10, -71(a3)
                  lw           s10, 28(a7)
                  lb           gp, 1(s0)
                  lbu          t0, 392(s3)
                  sb           a1, 1240(ra)
                  lb           a1, 296(ra)
                  sw           s5, -1045(s3)
                  lbu          a5, 0(s0)
                  lhu          tp, -11(s3)
                  lbu          s5, 213(a3)
                  lhu          a0, -1031(s3)
                  lhu          s6, 14(a7)
                  lbu          t4, -215(a3)
                  lb           s8, 432(s3)
                  sb           s0, 900(ra)
                  lbu          t0, -504(s3)
                  sb           a2, 1(a3)
                  lhu          t1, -839(s3)
                  lw           s9, -10(s0)
                  lb           a1, 461(ra)
                  lb           a0, -894(s3)
                  lhu          s9, 246(a3)
                  sb           ra, -424(s3)
                  lb           s11, 64(s0)
                  lh           zero, -254(a3)
                  sb           a2, -322(s3) #end load_store_instr_stream_4
                  lhu          a5, 417(ra)
                  sw           s11, -64(a7)
                  lbu          t3, 946(ra)
                  lw           s7, -134(a3)
                  lb           t1, 205(a3)
                  lb           s6, -34(s0)
                  lbu          zero, 231(a3)
                  lbu          s8, 22(a7)
                  sb           s5, -147(a3) #end load_store_instr_stream_3
                  sw           s5, 1463(ra) #end load_store_instr_stream_2
                  sb           s2, 6(s0)
                  lbu          s10, 6(s0) #end load_store_instr_stream_1
                  lbu          sp, 35(a7) #end load_store_instr_stream_0
                  la           a3, region_0+1402 #start riscv_load_store_hazard_instr_stream_1
                  lb           t0, 9(a3)
                  sb           s1, 9(a3)
                  xor          t2, s5, s1
                  lbu          a6, 9(a3)
                  sb           s0, 9(a3)
                  auipc        sp, 746911
                  lbu          a0, 9(a3)
                  lbu          ra, 9(a3)
                  addi         s9, s8, 1429
                  sb           s7, 9(a3)
                  lb           tp, 9(a3)
                  add          t2, s10, a1
                  lb           s2, 9(a3)
                  andi         s6, t0, -915
                  sb           a7, 9(a3)
                  lb           s10, 9(a3)
                  lb           ra, 9(a3)
                  lb           sp, 9(a3)
                  lb           a2, 9(a3) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+1729 #start riscv_load_store_rand_instr_stream_1
                  xor          s9, gp, tp
                  ori          s1, t6, -858
                  sh           s2, 61(sp)
                  lb           t6, -27(sp)
                  nop
                  sb           s7, -18(sp)
                  sll          s10, s6, t6
                  srai         s11, t4, 30
                  sb           s0, 19(sp)
                  slti         t3, s11, -772
                  nop
                  lbu          s5, 34(sp)
                  sb           ra, -44(sp)
                  nop
                  slli         s3, tp, 17
                  slli         a2, sp, 1
                  sub          gp, s10, gp
                  sra          s0, s11, s10
                  ori          a5, t0, 1809
                  andi         t0, a0, -283
                  srli         s8, a2, 18
                  sb           s8, -39(sp)
                  xor          t6, t1, s8
                  sltiu        s5, t1, -1793
                  sltiu        s0, t3, 1791
                  auipc        t0, 518306
                  sltiu        t4, a6, -1594
                  sb           s10, 32(sp)
                  addi         a7, t1, 1332
                  sb           s10, -2(sp)
                  slti         t0, tp, 1401
                  sb           t6, -2(sp)
                  srli         s3, sp, 7
                  add          a1, s11, t2
                  sra          a5, a7, a4
                  sb           s9, -43(sp)
                  sltiu        s3, s4, 537
                  add          t3, s0, sp
                  sll          tp, s2, s8
                  lb           s8, 2(sp)
                  sb           a2, -46(sp)
                  lb           s3, -30(sp)
                  lb           s8, 4(sp)
                  lbu          t2, -40(sp)
                  andi         s2, s4, -773
                  lb           s11, -52(sp) #end riscv_load_store_rand_instr_stream_1
                  add          s10, a4, a7
                  blt          a0, a4, 13f
                  bltu         s11, t2, 10f
                  andi         s5, s7, 709
                  ori          zero, s8, 1951
                  xori         a5, s11, 1488
                  srli         s7, s8, 27
                  srl          t3, t1, t5
                  bltu         s8, t5, 28f
                  slli         t3, a6, 9
10:               sra          s9, a6, s2
                  addi         a3, ra, -839
                  xor          s9, a0, a4
13:               xor          a0, a7, tp
                  slli         t2, s10, 0
                  srai         sp, t1, 18
                  blt          t0, sp, 34f
                  andi         s5, ra, -1733
                  sltu         zero, t6, s6
                  andi         t4, a5, 924
                  add          a0, t0, s1
                  bgeu         t4, t1, 35f
                  bne          a7, a0, 31f
                  addi         zero, s6, -1613
                  sll          a6, s8, t1
                  slt          a6, s0, s6
                  srl          tp, tp, t5
                  srai         t6, t6, 5
28:               bge          a1, a3, 37f
                  sra          sp, s9, a4
                  bgeu         a7, s9, 36f
31:               slli         sp, s2, 23
                  srai         s5, gp, 6
                  xor          t0, t3, t4
                  la           sp, sub_1
                  srai         t3, t0, 15
                  auipc        a2, 252877
                  lui          s11, 181713
                  add          t0, gp, s4
                  addi         sp, sp, -869
                  andi         t4, s7, 1645
main_j2:          jalr         s1, sp, 869 #jump main -> sub_1
                  bgeu         t1, s9, 51f
34:               slli         gp, s7, 26
35:               sub          s6, s7, a6
36:               sltu         s1, t1, a2
37:               or           s8, t2, t4
                  slli         t4, ra, 11
                  auipc        s5, 100847
                  bge          t5, t3, 55f
                  and          a0, sp, gp
                  slti         s1, a3, -534
                  ori          a6, t3, 1526
                  bge          s9, t3, 64f
                  srli         s7, sp, 23
                  sub          t0, s3, s11
                  bgeu         a7, a6, 61f
                  slli         s8, zero, 30
                  addi         sp, s6, 224
                  sub          s11, t5, s9
51:               beq          zero, t2, 59f
                  and          sp, s3, s10
                  beq          t1, sp, 57f
                  sra          sp, t5, s11
55:               srli         t2, gp, 15
                  bgeu         s11, s2, 72f
57:               srai         t3, a6, 6
                  bgeu         tp, sp, 76f
59:               auipc        s5, 838314
                  xor          a6, s5, zero
61:               beq          t2, s0, 81f
                  andi         s3, s6, -1346
                  sll          t1, s3, s5
64:               slli         t6, t3, 14
                  bgeu         a0, ra, 68f
                  sltiu        s8, a3, 300
                  srli         s7, s2, 23
68:               ori          s8, ra, -396
                  srli         zero, s5, 8
                  bge          t1, t6, 87f
                  sll          a5, s7, t5
72:               xor          t6, s5, gp
                  addi         a6, s5, -1932
                  xor          gp, s1, s3
                  sub          t2, t3, s9
76:               sll          gp, a7, s11
                  sub          t0, a7, t2
                  beq          a5, a2, 86f
                  andi         a5, a0, 510
                  srl          s10, s4, s6
81:               bge          t2, t6, 94f
                  sll          a7, t3, zero
                  bne          s4, t0, 98f
                  srli         t0, s8, 10
                  sra          s5, s6, a6
86:               xor          t1, a3, t4
87:               slt          t0, a7, s10
                  ori          t6, s3, 667
                  beq          zero, a4, 95f
                  sltu         t1, a3, s7
                  addi         sp, a4, -390
                  sll          sp, s1, s7
                  andi         t6, tp, 1496
94:               srai         s7, s1, 1
95:               sltu         a1, ra, s0
                  and          s3, s8, a6
                  andi         s5, ra, 422
98:               sltu         s9, t4, a0
                  lui          a3, 470341
                  bge          t4, a2, 118f
                  bgeu         zero, t2, 121f
                  auipc        s10, 808027
                  blt          a4, tp, 121f
                  sll          zero, t3, a4
                  ori          s10, s7, 651
                  xori         zero, a0, -476
                  andi         t6, s9, 450
                  or           a5, ra, gp
                  or           s9, s7, t2
                  or           s11, gp, s6
                  andi         s7, t0, 696
                  add          t4, a0, a0
                  andi         s3, s11, -141
                  sub          s3, t1, t6
                  addi         a6, s1, 123
                  bgeu         zero, t2, 131f
                  slli         s10, ra, 30
118:              andi         s8, a4, 1656
                  bgeu         a5, s7, 132f
                  slt          a2, t0, s11
121:              bgeu         a5, t6, 125f
                  slti         s0, s11, -906
                  sll          t3, s5, s0
                  srli         a1, t3, 6
125:              blt          a5, t1, 126f
126:              sub          s7, s0, s5
                  add          s11, t1, ra
                  slti         t0, a5, 1677
                  bne          tp, a2, 137f
                  slti         s1, s10, -1961
131:              beq          t1, s7, 139f
132:              add          s6, s7, s9
                  xori         s1, t2, 551
                  sra          gp, a0, gp
                  or           s8, s6, tp
                  lui          t1, 636106
137:              andi         t4, t2, 1064
                  srl          t6, sp, t2
139:              nop
                  and          a6, tp, s10
                  and          sp, t0, a5
                  or           a3, a0, sp
                  bgeu         a2, t2, 152f
                  sltu         s1, a0, t0
                  slt          t3, a2, a4
                  addi         tp, s10, -1182
                  ori          s8, s3, -1016
                  andi         t3, t3, 1662
                  srli         s7, s3, 29
                  andi         zero, s8, 1457
                  slt          s9, a2, a5
152:              sltu         a3, a1, a4
                  nop
                  bltu         sp, s8, 172f
                  nop
                  blt          t1, t2, 174f
                  bgeu         a5, a2, 171f
                  slt          zero, s0, tp
                  bltu         t0, tp, 177f
                  add          a2, t4, s0
                  blt          a5, t0, 164f
                  sll          a6, a1, a2
                  bne          t0, s7, 164f
164:              andi         t0, s11, -1885
                  slt          s10, a4, s4
                  bge          t3, s8, 183f
                  bgeu         s9, a1, 175f
                  blt          s8, s3, 181f
                  xori         s7, a7, -1430
                  and          tp, s3, a7
171:              and          s7, s6, s8
172:              sub          gp, s10, t5
                  srli         tp, s8, 9
174:              bltu         a2, s7, 183f
175:              ori          s0, a0, -211
                  bge          a1, a5, 191f
177:              bgeu         sp, sp, 197f
                  sltu         t1, ra, ra
                  srl          t3, t4, s8
                  blt          s6, t1, 198f
181:              beq          s2, s6, 195f
                  addi         t0, a7, -734
183:              or           a2, s2, s1
                  slti         t4, zero, 18
                  sltu         zero, tp, a4
                  srai         s10, s6, 25
                  addi         tp, s8, -347
                  bgeu         s6, gp, 192f
                  lui          a0, 958390
                  ori          t3, s7, 1099
191:              sltiu        s8, a2, -1489
192:              slli         t1, a7, 7
                  beq          sp, sp, 205f
                  sltiu        t6, s0, 1903
195:              bne          gp, s6, 208f
                  sll          s1, s11, zero
197:              sltu         a0, s10, s3
198:              and          ra, a6, zero
                  nop
                  beq          a2, t6, 204f
                  addi         t1, sp, 96
                  addi         t3, a5, 1944
                  sltu         s2, s11, t2
204:              blt          t5, t4, 210f
205:              lui          s2, 172934
                  addi         s9, s9, -726
                  sltu         s10, t2, s11
208:              nop
                  sra          s1, a5, a4
210:              bge          a5, t0, 226f
                  srl          s8, tp, s3
                  slt          s9, a0, a2
                  and          s6, tp, s10
                  srl          s10, t5, a4
                  addi         sp, s3, -1641
                  bltu         ra, a0, 236f
                  xor          t2, s11, a5
                  andi         s9, s0, -513
                  bltu         a1, s0, 234f
                  bne          ra, a5, 226f
                  addi         s7, s7, 423
                  slt          s1, gp, a0
                  slt          a2, t0, t6
                  xori         s0, t3, -1408
                  and          s8, t4, t0
226:              bge          a7, s11, 241f
                  or           a1, t0, a3
                  slli         a2, s11, 8
                  bge          ra, gp, 249f
                  ori          t2, s8, 510
                  ori          zero, t2, -260
                  slli         s9, t5, 31
                  la           s7, sub_1
                  sra          sp, s0, a4
                  addi         t2, s4, -1906
                  addi         s7, s7, 959
                  xor          tp, s4, sp
                  sub          s0, s6, s4
main_j1:          jalr         s1, s7, -959 #jump main -> sub_1
                  xori         t1, s9, -1007
                  xor          s5, a0, s5
234:              blt          s6, s8, 254f
                  slti         t2, t3, 640
236:              bne          t5, t3, 254f
                  srli         s7, gp, 21
                  bgeu         a2, s1, 253f
                  auipc        a7, 78027
                  srl          t2, t1, tp
241:              sltu         t3, a2, a7
                  sub          t0, ra, s4
                  addi         zero, s4, -266
                  bge          a0, t3, 262f
                  andi         s0, gp, 810
                  sltiu        t4, t6, 1293
                  beq          s1, a6, 264f
                  beq          s0, s1, 249f
249:              addi         s2, s6, -340
                  bltu         a3, a6, 270f
                  bltu         t5, a3, 269f
                  beq          a7, a5, 258f
253:              xori         s6, a5, 1978
254:              auipc        t3, 713589
                  bge          zero, t0, 264f
                  nop
                  lui          t4, 315356
258:              srai         s6, s1, 2
                  andi         ra, a6, -1756
                  slti         s0, sp, 1558
                  auipc        t3, 668725
262:              blt          a1, s5, 271f
                  beq          s4, s3, 271f
264:              add          s1, a5, s6
                  bge          s11, a5, 271f
                  ori          s10, t3, -1428
                  add          a7, s1, s3
                  bltu         s6, sp, 271f
269:              xori         a7, s0, 1758
270:              sub          s0, s3, t3
271:              slti         a6, s4, -50
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            xor          t1, a1, s11
                  slti         ra, gp, 1954
                  bge          s7, s1, sub_1_stack_p
                  srai         t4, a5, 9
                  xor          a7, t4, s2
sub_1_stack_p:    addi         s4, s4, -12
                  sw           s1, 4(s4)
                  sub          s2, s6, a0
                  srai         tp, t4, 19
                  sll          zero, s1, s4
                  slti         zero, s7, 306
                  sra          s1, zero, s7
                  sra          s11, a0, t5
                  srli         t4, tp, 14
                  sub          a1, s3, s8
                  andi         s0, t6, 986
                  nop
sub_1_j3:         jal          s1, sub_2 #jump sub_1 -> sub_2
                  la           gp, region_1+910 #start load_store_instr_stream_4
                  la           sp, region_1+997 #start load_store_instr_stream_0
                  la           s6, region_1+95 #start load_store_instr_stream_1
                  la           s2, region_1+1618 #start load_store_instr_stream_3
                  lb           a0, -13(sp)
                  sb           a4, -858(gp)
                  sb           s0, 1(s6)
                  la           t0, region_1+717 #start load_store_instr_stream_2
                  sb           s1, 14(s6)
                  sb           a2, -9(t0)
                  lb           a7, -6(t0)
                  sb           s4, -1(sp)
                  sb           a3, 12(t0)
                  lbu          s5, -545(gp)
                  lb           tp, -3(s6)
                  sb           t0, -4(t0)
                  lh           t4, 1046(gp)
                  sb           t2, -7(s2)
                  lh           s10, 3(t0)
                  lb           t1, 4(s6)
                  lbu          s1, 4(t0)
                  lb           t3, 9(s2)
                  lbu          s1, -8(t0)
                  lb           t2, -438(gp)
                  sh           sp, -12(s2)
                  sb           a3, 12(sp)
                  sb           s2, -1(s6)
                  lbu          tp, -14(s2)
                  lb           a7, 1(t0)
                  sb           a4, 54(sp)
                  sb           t0, 10(t0) #end load_store_instr_stream_2
                  lbu          s0, 10(s6) #end load_store_instr_stream_1
                  lb           a2, 10(s2) #end load_store_instr_stream_3
                  lbu          s10, -3(gp) #end load_store_instr_stream_4
                  lh           t2, 19(sp) #end load_store_instr_stream_0
                  la           s8, region_1+833 #start riscv_load_store_hazard_instr_stream_0
                  lhu          s11, 23(s8)
                  lb           t6, -40(s8)
                  andi         a1, t2, 444
                  sb           ra, 8(s8)
                  ori          a6, a6, 363
                  lbu          s6, 8(s8)
                  nop
                  lb           t4, 8(s8)
                  lbu          zero, 14(s8)
                  lbu          s5, 14(s8)
                  lh           a7, 25(s8)
                  lhu          zero, 25(s8)
                  sh           sp, 55(s8)
                  lb           a3, 52(s8)
                  lb           s1, -26(s8)
                  lb           s11, -19(s8)
                  lh           a0, -21(s8) #end riscv_load_store_hazard_instr_stream_0
                  lui          s0, 235179
                  slt          a2, a3, a3
                  sra          t4, t2, s10
                  sltiu        s0, zero, 1652
                  srai         s7, s11, 15
                  bltu         t0, s6, 20f
                  bne          s1, a7, 17f
                  xori         a6, tp, -1900
                  blt          s2, s6, 22f
                  xori         t6, s4, 1027
                  slt          s8, s3, tp
                  add          s6, a3, s4
                  add          t3, s0, s11
                  slti         t2, a4, -362
                  bne          a2, t0, 26f
                  bne          tp, a3, 32f
                  addi         s6, tp, -258
17:               bgeu         s1, a4, 18f
18:               nop
                  lui          a2, 795062
20:               slt          t0, s1, t1
                  slti         a0, s5, -696
22:               addi         s9, s4, -1840
                  addi         sp, ra, -1255
                  slli         a2, a2, 6
                  blt          a0, ra, 44f
26:               nop
                  sll          a3, gp, s5
                  slti         s9, a2, -209
                  xori         s6, s11, -1898
                  sltiu        s9, a2, 1745
                  sub          a7, s1, tp
32:               nop
                  nop
                  bltu         sp, gp, 49f
                  add          t1, a7, t0
                  beq          sp, t3, 41f
                  bne          s9, t4, 45f
                  sra          a3, t0, s11
                  addi         t6, a3, -1200
                  sra          sp, t5, gp
41:               bge          t1, t0, 44f
                  andi         ra, s5, 1458
                  xori         s7, t1, 1073
44:               sub          tp, t1, s7
                  la           a5, region_1+1367 #start riscv_load_store_rand_instr_stream_0
                  sb           s7, 8(a5)
                  nop
                  sb           a6, -9(a5)
                  and          t6, s3, t1
                  sltiu        s3, a1, 1610
                  slt          a2, s2, sp
                  sltiu        a3, t0, 6
                  lbu          s2, 8(a5)
                  lui          s11, 980649
                  sb           s3, 6(a5)
                  sb           t5, -12(a5)
                  slti         s7, s7, -256
                  lh           a7, -3(a5)
                  sra          s0, t4, sp
                  sltiu        t0, s4, 1531
                  add          tp, a0, sp
                  auipc        s0, 217417
                  lb           t1, -15(a5)
                  srli         zero, s4, 5
                  sb           t3, 2(a5)
                  srli         a3, a5, 8
                  lbu          s8, -14(a5)
                  lw           t6, -3(a5)
                  slt          s0, t0, t6
                  srai         ra, a5, 18
                  sb           s8, -9(a5)
                  lb           s0, 15(a5)
                  slti         s2, a4, -395
                  lhu          ra, -1(a5)
                  lb           t6, 3(a5)
                  lbu          a1, 4(a5)
                  lhu          s0, -9(a5)
                  lui          t0, 34201
                  lb           sp, -1(a5)
                  slli         zero, t2, 16
                  srl          sp, s2, gp
                  srai         a7, s4, 24
                  lbu          s9, -2(a5)
                  lb           s5, 16(a5)
                  or           zero, t3, t4
                  nop
                  srl          a3, t3, tp
                  lb           s9, 9(a5)
                  ori          t0, s7, -455
                  sltu         a3, gp, s2
                  sb           s10, -5(a5)
                  lbu          t6, 15(a5)
                  sb           s6, 16(a5)
                  lb           s7, -13(a5) #end riscv_load_store_rand_instr_stream_0
45:               srl          t1, a4, s8
                  sra          a1, a3, s1
                  bltu         t0, zero, 62f
                  blt          a4, s10, 50f
49:               lui          s5, 947797
50:               beq          s1, a5, 61f
                  sltiu        s8, zero, -712
                  or           s1, sp, a2
                  nop
                  sll          s1, a3, s11
                  bge          zero, t4, 59f
                  or           t0, a2, zero
                  ori          s5, a6, 704
                  blt          t1, a7, 68f
59:               sltu         a5, t3, a5
                  srai         s11, a1, 12
61:               sll          a2, t0, ra
62:               nop
                  bltu         t4, s10, 81f
                  slti         s10, s11, 325
                  xor          a5, gp, s8
                  lui          a7, 94855
                  sub          t2, s0, t5
68:               slti         s10, t5, -2020
                  andi         s6, t6, 322
                  srl          s0, t0, s10
                  srli         t4, a2, 28
                  xori         t2, s1, -560
                  andi         t6, t4, 552
                  sub          t2, a7, a0
                  bltu         s5, t2, 83f
                  and          a2, s8, s10
                  xor          sp, s9, s2
                  sltu         s10, s1, sp
                  sub          a0, sp, a3
                  slt          s6, s1, a2
81:               slti         a1, s2, 546
                  sub          s10, a3, gp
83:               ori          zero, a2, 1692
                  addi         a5, a1, -91
                  slti         t0, a7, 2004
                  blt          s8, t6, 88f
                  nop
88:               slt          t0, t0, t3
                  lui          s6, 768886
                  bgeu         a3, t3, 105f
                  bne          s2, s7, 105f
                  sltu         s3, zero, s10
                  andi         gp, t3, 985
                  xori         s2, s9, -654
                  or           zero, s5, a4
                  auipc        t4, 923685
                  bgeu         gp, zero, 101f
                  beq          sp, t3, 102f
                  sltu         tp, tp, a0
                  or           s1, s6, s1
101:              auipc        s0, 956814
102:              srai         tp, s0, 31
                  bne          t1, sp, 123f
                  xori         t6, s7, -28
105:              bltu         ra, t1, 108f
                  sll          s0, zero, sp
                  ori          s10, a2, -335
108:              bgeu         s2, a5, 111f
                  nop
                  sltu         zero, ra, a7
111:              xori         a7, gp, 1507
                  bltu         t1, a3, 130f
                  sll          s9, sp, s1
                  srl          a2, t6, a1
                  sll          ra, s1, t0
                  nop
                  srl          zero, t2, t1
                  addi         s1, zero, 278
                  sltiu        t0, s7, -1591
                  xor          s1, s4, s7
                  srai         s8, s8, 13
                  auipc        a7, 888011
123:              ori          s2, s4, 1737
                  slt          a0, t0, t0
                  andi         s6, s4, 1764
                  beq          s8, a4, 137f
                  sub          ra, s9, t2
                  sll          s5, s11, a3
                  beq          s6, ra, 139f
130:              slli         t0, a0, 16
                  bgeu         t0, t6, 137f
                  or           a5, s10, s2
                  bne          t2, s4, 144f
                  xor          zero, s4, s0
                  andi         t1, t4, 653
                  blt          s6, a6, 151f
137:              andi         s1, t2, -545
                  nop
139:              and          s2, a1, s2
                  sra          sp, gp, a2
                  nop
                  auipc        a6, 843715
                  sra          t4, t5, s10
144:              nop
                  sub          a0, ra, a7
                  sub          a7, a6, ra
                  bne          s3, s2, 151f
                  srai         a7, ra, 14
                  slt          a0, s10, t3
                  or           zero, tp, t6
151:              nop
                  srai         t2, s0, 11
                  srai         t0, s0, 10
                  lw           s1, 4(s4)
                  andi         t0, ra, -1434
                  slti         s3, a4, -1048
                  add          a0, s9, s10
                  addi         s4, s4, 12
                  slli         a2, t5, 20
281:              addi x8, x9, 1
281:              jalr x8, x8, 0
sub_2:            add          a1, a5, tp
                  xor          zero, t6, s11
                  srai         a0, ra, 25
                  addi         s4, s4, -24
                  sub          s9, t0, zero
                  sw           s1, 4(s4)
                  auipc        s6, 206298
                  la           sp, region_1+1825 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a0, -6(sp)
                  sb           s6, -8(sp)
                  lbu          s5, 3(sp)
                  sb           a5, -8(sp)
                  sb           s1, -3(sp)
                  lb           t1, -4(sp)
                  lbu          s0, -10(sp)
                  sub          s6, s1, t3
                  sb           s0, -10(sp)
                  srli         a2, zero, 8
                  sb           s10, -4(sp)
                  andi         a6, ra, 1702
                  lb           tp, -11(sp)
                  lbu          a7, -11(sp)
                  lbu          ra, 8(sp)
                  lbu          t2, -8(sp)
                  lb           a3, -8(sp)
                  add          t0, t3, t6
                  sb           a0, -14(sp)
                  sb           a4, -14(sp)
                  lbu          s8, 10(sp)
                  lbu          s9, 8(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s11, region_1+1278 #start riscv_load_store_rand_instr_stream_2
                  lb           s10, 7(s11)
                  lbu          s9, 11(s11)
                  and          gp, s8, s9
                  srli         t1, gp, 17
                  lbu          t0, 11(s11)
                  sb           a5, -7(s11)
                  slli         s1, a6, 13
                  sra          t2, sp, gp
                  srai         s1, s11, 26
                  lh           s0, 8(s11)
                  sltu         t0, s3, s11
                  sb           s6, -15(s11)
                  sb           t4, 9(s11)
                  add          s9, a3, t6
                  sll          t4, s3, zero
                  lb           t3, 5(s11)
                  sltiu        t6, a1, 879
                  add          s1, s4, s1
                  lb           t1, -13(s11)
                  auipc        a7, 992337
                  sub          s10, s8, t1
                  andi         zero, t2, -1510
                  sw           a3, -6(s11)
                  lw           t4, 10(s11)
                  and          gp, s5, a0
                  slti         s8, a5, -324
                  slli         t0, t5, 3
                  sub          s0, s0, s0
                  or           t3, t4, gp
                  slli         sp, tp, 25
                  slti         s2, t2, -768
                  ori          a0, t2, -766
                  sh           t0, 4(s11) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_1+1604 #start riscv_load_store_hazard_instr_stream_4
                  sw           a0, 240(s8)
                  slli         ra, t0, 23
                  sb           a2, 240(s8)
                  lh           t1, 240(s8)
                  add          gp, s11, t5
                  sb           a6, -33(s8)
                  sb           a5, -33(s8)
                  lbu          a3, -93(s8)
                  sb           zero, -93(s8)
                  lbu          t3, -93(s8)
                  lb           a1, -93(s8)
                  srl          t6, gp, a0
                  sb           s6, -215(s8)
                  srai         s6, a3, 18
                  lbu          gp, -215(s8)
                  sra          gp, s2, a2
                  lbu          s2, -215(s8)
                  sh           s1, -54(s8)
                  andi         zero, a6, -1762
                  lhu          s2, -54(s8)
                  sb           s9, 11(s8)
                  nop
                  sb           s9, 11(s8) #end riscv_load_store_hazard_instr_stream_4
                  la           a6, region_0+1937 #start load_store_instr_stream_2
                  la           sp, region_0+268 #start load_store_instr_stream_1
                  sb           s9, -1(a6)
                  la           s2, region_0+1898 #start load_store_instr_stream_0
                  sb           s0, 37(sp)
                  lbu          t6, 16(a6)
                  lb           s11, -59(sp)
                  lbu          a1, -61(s2)
                  lbu          ra, 3(s2)
                  lh           s10, 1(a6)
                  la           s9, region_0+1984 #start load_store_instr_stream_3
                  sb           s10, 43(sp)
                  lbu          s5, -335(s9)
                  sb           a1, -9(a6)
                  lb           a7, -1195(s9)
                  lb           s0, -4(a6)
                  lbu          gp, -482(s9)
                  lb           a7, -1978(s9)
                  lh           s5, 7(a6)
                  lb           s1, 43(s2)
                  lbu          s1, -32(sp)
                  lh           a5, -1836(s9)
                  lbu          t6, 31(sp)
                  lb           a0, -14(a6)
                  lbu          tp, -1856(s9)
                  lw           s5, -54(s2)
                  lbu          a5, -699(s9)
                  sw           t6, -54(s2)
                  lb           s1, -1374(s9)
                  lb           s10, -48(sp)
                  lb           s10, 31(s2)
                  lhu          a1, 13(a6) #end load_store_instr_stream_2
                  sb           a3, -1979(s9) #end load_store_instr_stream_3
                  sb           a6, 44(sp) #end load_store_instr_stream_1
                  lb           s7, -41(s2) #end load_store_instr_stream_0
                  la           t0, region_0+340 #start load_store_instr_stream_1
                  la           t4, region_0+1523 #start load_store_instr_stream_2
                  la           s3, region_0+461 #start load_store_instr_stream_0
                  lh           ra, 9(t4)
                  sb           a0, -87(t0)
                  sb           s5, -52(t0)
                  sb           a6, 833(s3)
                  lb           s9, 79(s3)
                  sh           s8, 15(t4)
                  lbu          s7, -61(t4)
                  lb           s0, 942(s3)
                  lbu          a6, -67(t0)
                  sb           zero, 1320(s3)
                  lbu          t3, 142(t0)
                  lb           a1, -18(t4)
                  lbu          tp, -220(s3)
                  lw           s7, -100(t0)
                  lb           s10, -192(t0) #end load_store_instr_stream_1
                  lb           s2, 14(t4) #end load_store_instr_stream_2
                  lbu          t6, 258(s3) #end load_store_instr_stream_0
                  la           gp, region_1+1867 #start riscv_load_store_hazard_instr_stream_2
                  sw           a5, -3(gp)
                  slt          sp, t4, t5
                  addi         s2, ra, 149
                  sw           a5, -3(gp)
                  sw           t4, -3(gp)
                  sb           gp, -3(gp)
                  sb           s1, -3(gp)
                  lw           s1, -3(gp)
                  sh           s7, -3(gp)
                  sw           s5, -3(gp)
                  sh           s2, -3(gp)
                  lui          s7, 20150
                  lh           t2, -3(gp)
                  lb           a7, -3(gp)
                  sb           a6, -3(gp)
                  sw           gp, -3(gp)
                  sb           t5, -3(gp)
                  sw           t6, -3(gp)
                  sb           a2, -20(gp)
                  slli         s1, s4, 17
                  slt          t4, s3, s0
                  lbu          s10, -20(gp)
                  lbu          a1, -12(gp)
                  lbu          t3, -12(gp) #end riscv_load_store_hazard_instr_stream_2
                  la           a2, region_1+1156 #start load_store_instr_stream_2
                  la           s3, region_1+1721 #start load_store_instr_stream_3
                  la           s0, region_1+624 #start load_store_instr_stream_0
                  sb           sp, -246(s3)
                  lbu          s6, 31(a2)
                  la           tp, region_1+868 #start load_store_instr_stream_1
                  sb           t5, 59(s3)
                  la           t3, region_1+542 #start load_store_instr_stream_4
                  lb           s8, -59(a2)
                  sb           t2, 182(t3)
                  lb           a3, -49(a2)
                  lb           a6, 220(s3)
                  sb           s10, -31(t3)
                  sb           s10, 3(s0)
                  lh           a3, 187(s3)
                  lhu          s6, 238(tp)
                  lb           s8, 114(tp)
                  lh           t6, -64(t3)
                  lb           a5, 204(tp)
                  lb           s2, 192(s3)
                  lw           s1, -40(a2)
                  lbu          s8, 71(tp)
                  sb           s6, -42(a2)
                  sb           tp, 102(t3)
                  sb           t3, 185(s0)
                  lbu          t6, -228(tp)
                  lbu          s7, -45(a2)
                  lb           t0, 80(tp) #end load_store_instr_stream_1
                  sb           s9, 80(s3)
                  lbu          s8, -57(a2)
                  lb           s8, 135(s0)
                  lw           s1, 235(s3) #end load_store_instr_stream_3
                  lh           a6, -54(t3) #end load_store_instr_stream_4
                  lhu          a6, 220(s0)
                  lbu          t2, -61(a2)
                  sb           s3, 31(a2) #end load_store_instr_stream_2
                  lw           a0, 72(s0) #end load_store_instr_stream_0
                  la           s1, region_1+709 #start riscv_load_store_hazard_instr_stream_1
                  lb           t3, 1054(s1)
                  lbu          t2, 1054(s1)
                  sub          zero, a5, s10
                  lb           t3, 1054(s1)
                  lb           a6, 1054(s1)
                  lbu          a3, -333(s1)
                  lw           a1, -333(s1)
                  lw           t6, -333(s1)
                  xor          t3, s3, t3
                  sb           s0, -333(s1)
                  sb           a3, -333(s1)
                  lhu          s5, -333(s1)
                  add          gp, s8, a3
                  sw           t5, -333(s1)
                  xori         zero, s10, 406
                  srl          s5, tp, t5
                  lw           a3, -333(s1)
                  slti         s10, a2, 514
                  addi         a0, a2, 446
                  lb           s2, -333(s1) #end riscv_load_store_hazard_instr_stream_1
                  la           t3, region_1+1550 #start load_store_instr_stream_1
                  lbu          s11, -905(t3)
                  la           a3, region_1+169 #start load_store_instr_stream_0
                  lbu          s8, 18(a3)
                  lb           t1, 39(a3)
                  lb           s7, 80(a3)
                  sb           a2, -954(t3)
                  sb           s0, -6(a3)
                  lbu          a2, -212(t3)
                  sh           t4, -502(t3)
                  lb           s3, -1087(t3)
                  lbu          zero, 241(a3)
                  lh           a1, 165(a3)
                  sb           s6, 336(t3)
                  sb           a7, -98(a3)
                  lb           s7, 166(a3)
                  lw           tp, 386(t3)
                  lhu          s1, -1520(t3)
                  lhu          t4, -666(t3) #end load_store_instr_stream_1
                  lhu          tp, -167(a3) #end load_store_instr_stream_0
                  la           sp, region_1+589 #start riscv_load_store_rand_instr_stream_4
                  srli         s11, a6, 25
                  sb           a4, 10(sp)
                  sll          s1, s5, s5
                  lb           t1, -6(sp)
                  sb           t5, -14(sp)
                  sub          gp, a2, a0
                  sra          a3, gp, t0
                  srai         a3, s8, 21
                  lhu          zero, -1(sp)
                  addi         s11, t4, 965
                  sb           s4, -3(sp)
                  sb           s3, 4(sp)
                  slli         tp, s7, 7
                  lb           ra, 2(sp)
                  ori          a7, s6, -735
                  lhu          ra, -9(sp)
                  sb           ra, 16(sp)
                  andi         t0, s4, 20
                  xori         s5, a3, 1672
                  sb           a5, 2(sp)
                  sub          s11, s10, s10
                  lbu          t6, 11(sp)
                  auipc        a1, 1019264
                  lb           gp, -9(sp)
                  srl          s2, a6, s10
                  ori          s2, zero, 9
                  sh           s7, -15(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1976 #start riscv_load_store_rand_instr_stream_3
                  lbu          a3, -151(sp)
                  lui          zero, 831492
                  srai         s2, s9, 16
                  sb           a1, 8(sp)
                  lbu          s9, -216(sp)
                  lbu          s1, -210(sp)
                  srli         s6, s3, 8
                  lbu          a3, -239(sp)
                  sb           a1, -33(sp)
                  slti         t0, s3, -253
                  lb           zero, -213(sp)
                  lhu          a1, -210(sp)
                  addi         s0, a7, 1427
                  lhu          t4, -226(sp)
                  slti         s10, t0, 992
                  lbu          a3, -66(sp)
                  lb           s11, -181(sp)
                  sh           a3, -118(sp)
                  lb           s3, -231(sp)
                  lh           t2, -110(sp)
                  lhu          gp, -214(sp)
                  lhu          t6, -138(sp)
                  slli         s1, a5, 29
                  lhu          ra, -200(sp)
                  xor          t0, s10, ra
                  nop
                  lhu          t0, -126(sp)
                  srl          a6, s4, s5
                  sll          a6, s6, ra
                  ori          s8, zero, -1190
                  lbu          t0, -25(sp)
                  sb           ra, -169(sp)
                  sb           a1, -133(sp)
                  sb           s11, -86(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s10, region_1+102 #start load_store_instr_stream_1
                  la           t3, region_1+1877 #start load_store_instr_stream_0
                  lb           s1, -35(s10)
                  sb           t0, -2(s10)
                  sb           a7, -43(t3)
                  lw           s7, 103(t3)
                  la           a3, region_1+1993 #start load_store_instr_stream_2
                  lh           s11, 109(t3)
                  sb           s5, -24(a3)
                  lbu          a5, 57(s10)
                  lbu          s0, -12(a3)
                  lb           s8, -31(a3)
                  lb           a5, 42(t3)
                  sh           sp, -39(a3)
                  lbu          a1, -5(s10)
                  sb           a2, -64(s10)
                  sb           tp, -38(a3)
                  lbu          zero, 24(t3)
                  lb           s0, -17(a3) #end load_store_instr_stream_2
                  sb           gp, -7(s10) #end load_store_instr_stream_1
                  lbu          a5, -7(t3)
                  lb           a1, -71(t3) #end load_store_instr_stream_0
                  la           sp, region_1+221 #start riscv_load_store_rand_instr_stream_0
                  lui          s9, 154126
                  xor          a2, a2, s4
                  sra          tp, a2, t3
                  srai         t0, s8, 29
                  slt          s9, a1, a7
                  lbu          t3, 3(sp)
                  sh           a3, -15(sp)
                  lb           a0, 14(sp)
                  lh           a6, 3(sp)
                  or           a2, s2, s5
                  xor          a6, s3, s1
                  lh           s7, -7(sp)
                  lh           tp, -7(sp)
                  sh           a5, 13(sp)
                  nop
                  sb           s6, -15(sp)
                  srai         t2, t0, 15
                  sb           t1, -10(sp)
                  slli         s9, s5, 11
                  sra          a2, s10, t1
                  nop
                  slli         s11, s8, 21
                  addi         s3, a4, -1045
                  sb           a2, -10(sp)
                  sb           tp, -7(sp)
                  slti         s3, s2, -982
                  srai         t6, s2, 6
                  lb           s5, 14(sp)
                  lb           t0, -12(sp)
                  srli         a6, t0, 24
                  xori         s9, a1, 1015
                  sltu         s11, a2, a3
                  srl          gp, a2, tp
                  lhu          t0, 1(sp)
                  lbu          t4, -8(sp)
                  sb           s8, 12(sp)
                  lb           a5, -9(sp)
                  slli         t3, s4, 9
                  slli         a3, a5, 16
                  lb           a0, 4(sp)
                  sltu         s0, s0, s6
                  xori         gp, s0, -637
                  lhu          s3, 7(sp)
                  and          s0, s0, t4
                  lbu          t4, 8(sp)
                  slti         s6, s1, -594
                  and          t0, a5, s9
                  sh           t6, -15(sp)
                  sb           zero, -12(sp)
                  sra          s0, t5, tp
                  sb           s5, -8(sp)
                  lw           ra, -1(sp)
                  lb           a0, 4(sp)
                  sub          a0, gp, gp
                  lbu          tp, 6(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_1+1349 #start riscv_load_store_hazard_instr_stream_3
                  lh           t1, -391(s10)
                  lbu          a2, -391(s10)
                  lbu          s8, -778(s10)
                  xori         t6, t3, -532
                  lb           s6, -456(s10)
                  lb           t3, -456(s10)
                  sltu         s1, t6, t4
                  lhu          s8, -481(s10)
                  lhu          t0, 283(s10)
                  slt          gp, a1, a2
                  sb           s0, 283(s10)
                  xor          t6, s9, a0
                  sh           a3, -1277(s10)
                  sb           s11, -126(s10)
                  sb           gp, -126(s10)
                  lb           s5, -126(s10)
                  sb           t6, -126(s10)
                  and          t1, s3, s8
                  lbu          s6, -642(s10)
                  andi         s7, s2, 1219
                  sw           s4, -797(s10)
                  lbu          s1, -797(s10)
                  nop
                  lbu          ra, -350(s10)
                  lbu          gp, -687(s10) #end riscv_load_store_hazard_instr_stream_3
                  sltiu        a1, t2, -970
                  lui          a6, 231368
                  blt          a2, a6, 11f
                  nop
                  sll          t1, sp, gp
                  srl          s11, s8, t0
                  bge          a3, zero, 17f
                  bltu         s8, t6, 25f
                  or           t1, s1, t6
                  or           a7, a0, t5
                  lui          sp, 291677
11:               slti         s2, t6, 1932
                  slt          s10, s9, a3
                  bltu         t5, s7, 25f
                  bgeu         t1, s7, 16f
                  sltu         a3, zero, a1
16:               bge          s10, a6, 33f
17:               andi         a3, tp, 1427
                  sra          s3, zero, s11
                  beq          a2, a5, 31f
                  beq          a1, s5, 34f
                  andi         s6, a6, -1245
                  slli         s5, a3, 27
                  sltiu        s8, s0, 615
                  andi         t3, s8, -95
25:               nop
                  or           s0, a4, s6
                  slti         s6, t3, 406
                  slli         t6, s4, 14
                  sltiu        s1, s1, -1552
                  auipc        s1, 1041105
31:               andi         t1, a0, -138
                  and          a7, t2, s0
33:               andi         t0, ra, -446
34:               or           s10, a7, t2
                  lui          s1, 436597
                  slti         s2, s10, 1062
                  beq          sp, s2, 45f
                  bgeu         a7, t0, 57f
                  lui          s7, 850278
                  add          sp, tp, s7
                  xor          a1, s6, t2
                  blt          a5, s6, 58f
                  beq          s4, s1, 54f
                  bne          s7, t6, 58f
45:               lui          a1, 723422
                  bne          s5, a3, 48f
                  sll          s2, s2, a4
48:               ori          s1, s3, -1437
                  bne          t0, a1, 63f
                  andi         sp, t0, -1374
                  and          t3, t4, t5
                  sll          s7, a3, a0
                  srl          a2, t2, a5
54:               blt          sp, t5, 57f
                  srl          s6, t4, t4
                  srai         s11, a1, 18
57:               srli         s8, zero, 11
58:               beq          t0, a6, 75f
                  sll          s3, a7, s11
                  bne          s11, s10, 65f
                  bge          s0, a0, 69f
                  xori         a6, s2, 1666
63:               and          s2, gp, a6
                  srl          s2, t3, t5
65:               addi         s8, a4, 1272
                  ori          gp, s1, -479
                  and          zero, s8, a3
                  beq          a2, zero, 78f
69:               slt          s11, t2, sp
                  ori          t4, a5, -118
                  bltu         t1, t0, 72f
72:               sub          s9, tp, ra
                  ori          s9, s11, 1362
                  auipc        s5, 290871
75:               sub          s0, t0, s3
                  sra          s7, s3, s8
                  sltu         s9, gp, s11
78:               xori         a6, s1, -874
                  srl          sp, a6, tp
                  auipc        s11, 960374
                  sltu         tp, s9, a0
                  xor          t4, s9, s0
                  bgeu         t2, s4, 100f
                  sll          ra, s8, a1
                  xor          s11, gp, tp
                  lui          a7, 348411
                  addi         a7, s3, 1694
                  slti         a6, t3, -1862
                  slli         s11, a6, 7
                  sub          a7, s6, t2
                  add          tp, s2, zero
                  beq          a4, a0, 108f
                  nop
                  bne          gp, s0, 95f
95:               srli         tp, ra, 24
                  auipc        s9, 959238
                  blt          a0, s6, 110f
                  slli         s5, s0, 31
                  add          s6, tp, t4
100:              and          s10, s6, s11
                  slli         t4, t0, 22
                  auipc        zero, 925188
                  blt          t5, s6, 122f
                  xor          a0, a4, a5
                  beq          s3, t6, 114f
                  srli         a7, s10, 26
                  auipc        a2, 931793
108:              srli         a5, t4, 28
                  bgeu         gp, a5, 122f
110:              slt          t4, s9, sp
                  add          a6, a2, s6
                  nop
                  auipc        a0, 560202
114:              sll          tp, t1, s6
                  bge          s11, s7, 124f
                  blt          s4, s9, 129f
                  blt          s3, a0, 120f
                  srli         s1, a7, 28
                  addi         s3, t6, -819
120:              or           gp, t4, s2
                  ori          s10, t5, -1002
122:              xor          s9, a2, s0
                  bgeu         a2, t0, 132f
124:              sra          tp, s11, a5
                  ori          zero, tp, -244
                  nop
                  lui          t4, 737885
                  srli         s9, t6, 13
129:              bge          a1, a7, 134f
                  or           tp, zero, t3
                  xor          a7, s0, s9
132:              xori         gp, sp, 524
                  or           a0, t6, a2
134:              bge          s0, a2, 147f
                  add          s5, s6, s2
                  nop
                  sra          tp, s3, s10
                  ori          t4, s5, -1718
                  lui          t6, 444536
                  slli         zero, t4, 0
                  blt          s1, t5, 151f
                  slti         t2, t2, 745
                  add          zero, s0, a3
                  slt          tp, t3, t5
                  srai         a0, s0, 5
                  sra          t1, a0, sp
147:              auipc        a0, 6071
                  slt          a6, t4, a1
                  or           t4, ra, a5
                  slti         a7, a3, -94
151:              lui          a7, 18204
                  addi         a2, ra, -1752
                  nop
                  srl          t4, t6, s2
                  bgeu         s2, s9, 172f
                  srai         t1, s2, 28
                  sltu         s10, t0, s7
                  xor          t3, tp, a1
                  bne          t1, s7, 173f
                  or           s9, s6, a7
                  auipc        sp, 926028
                  sll          sp, s9, a2
                  bge          t3, s4, 164f
164:              blt          zero, tp, 172f
                  ori          a7, s7, -1053
                  slli         s11, a3, 3
                  sub          s0, t3, tp
                  bge          ra, t1, 181f
                  nop
                  sltiu        t2, t1, 753
                  bge          s10, s8, 184f
172:              slt          s1, t2, a1
173:              sltu         t6, t1, a7
                  lui          sp, 686257
                  add          a6, s11, s9
                  nop
                  srai         a3, t4, 1
                  slt          s11, a0, s7
                  blt          s11, zero, 190f
                  blt          s2, t6, 197f
181:              lui          s2, 929961
                  lui          s3, 732018
                  bgeu         a2, s5, 191f
184:              sub          s2, a7, zero
                  bltu         s3, tp, 196f
                  srl          s2, s7, s8
                  slti         s5, s6, -1204
                  srli         gp, ra, 2
                  auipc        t1, 390220
190:              srai         zero, t2, 30
191:              sra          s11, s7, t3
                  sltu         s3, a3, a2
                  beq          tp, s3, 195f
                  bne          a3, a2, 210f
195:              bltu         a1, t3, 197f
196:              auipc        a0, 143295
197:              andi         zero, t5, 1528
                  sub          s9, t0, a0
                  sltiu        a2, s2, 1222
                  xor          tp, sp, t2
                  slt          zero, a6, t4
                  bge          s2, s0, 211f
                  add          gp, s7, a5
                  bltu         s7, t4, 221f
                  nop
                  xori         s1, s3, 177
                  sltiu        s5, s4, 1041
                  srai         gp, s7, 6
                  beq          s0, a1, 223f
210:              nop
211:              bne          t6, tp, 223f
                  slli         t1, s1, 8
                  srl          s5, s4, t4
                  slti         t4, t1, 1107
                  bltu         zero, s10, 234f
                  bne          s3, t3, 228f
                  xor          a3, t3, gp
                  ori          ra, t4, 1118
                  bne          t2, s11, 237f
                  bltu         t2, t6, 229f
221:              beq          tp, a0, 222f
222:              srli         a6, tp, 2
223:              sltu         a0, t3, gp
                  auipc        s6, 225159
                  xor          s2, s4, a5
                  srai         a2, s7, 22
                  blt          t0, s1, 243f
228:              ori          s2, zero, 491
229:              slti         s1, a6, -528
                  xor          s9, s10, s8
                  bltu         tp, s6, 250f
                  lui          t3, 893359
                  lui          a7, 461240
234:              ori          s0, a5, 1147
                  sll          t1, s6, s6
                  lui          s3, 623689
237:              bltu         zero, a2, 251f
                  srli         gp, gp, 4
                  sltu         a2, s3, t3
                  slli         t6, a7, 30
                  slt          a1, a2, a2
                  xori         t4, a4, 428
243:              srli         s9, s3, 21
                  sltiu        s6, t4, 618
                  lui          s5, 64911
                  andi         s0, s3, 1702
                  slli         t3, t5, 31
                  bge          tp, sp, 259f
                  or           t6, s3, a4
250:              add          tp, sp, s2
251:              addi         a0, gp, 1150
                  sltu         gp, s3, t1
                  slti         sp, s5, 795
                  beq          s2, a6, 271f
                  bge          s3, s1, 260f
                  bge          s4, a4, 265f
                  blt          gp, s9, 271f
                  or           s3, s9, a6
259:              slt          a5, s11, t6
260:              sltiu        t3, ra, -1178
                  add          s2, a6, s5
                  auipc        s7, 293267
                  beq          s11, s3, 276f
                  bne          a1, s10, 273f
265:              xor          a5, t6, zero
                  beq          t1, a2, 278f
                  and          tp, ra, ra
                  sub          t6, t2, s8
                  beq          s10, a7, 279f
                  slti         s6, a0, 285
271:              xori         t3, t1, 789
                  srai         sp, t4, 29
273:              xori         t1, s0, -1859
                  beq          s0, s2, 283f
                  andi         s3, s8, 575
276:              slli         tp, sp, 21
                  andi         a2, a5, 18
278:              sltiu        gp, a6, 1065
279:              slli         a1, s6, 7
                  add          t2, t5, t1
                  lui          s7, 869197
                  blt          t1, a5, 296f
283:              srli         s1, tp, 1
                  sltiu        s6, s8, -1670
                  xor          t2, t1, s10
                  bgeu         a4, a5, 288f
                  sltu         zero, s10, a2
288:              nop
                  add          s7, a3, a5
                  srai         s9, t4, 3
                  srli         t6, t2, 8
                  andi         a6, s2, 1468
                  add          t6, ra, a0
                  lui          s1, 317923
                  sub          t1, s11, a6
296:              lui          zero, 75520
                  bge          a3, t3, 308f
                  sltu         s3, a5, a1
                  and          gp, gp, s2
                  la           s0, region_1+532 #start riscv_load_store_rand_instr_stream_1
                  lbu          s9, 878(s0)
                  srli         s8, t3, 18
                  lbu          a6, 1127(s0)
                  slti         ra, s5, -851
                  add          s6, a3, s4
                  ori          s1, sp, 1884
                  xori         s9, t1, 276
                  slli         t1, a7, 6
                  xor          t3, s4, t3
                  sb           ra, -27(s0)
                  or           t6, a0, s5
                  xor          s1, t0, sp
                  slli         s10, s4, 27
                  srai         a1, t0, 29
                  lhu          s11, 14(s0)
                  lui          zero, 414568
                  lb           a0, -414(s0)
                  srl          s11, t6, gp
                  lh           s11, 994(s0)
                  lhu          a1, 22(s0)
                  xor          s5, t3, t1
                  xor          t6, t5, t6
                  lhu          s3, 284(s0)
                  ori          s2, ra, 1107
                  sh           s4, -512(s0)
                  or           a0, t2, a1
                  add          tp, a0, s7
                  add          s2, a7, s4
                  lb           gp, 73(s0)
                  lb           tp, -356(s0) #end riscv_load_store_rand_instr_stream_1
                  srl          s10, t2, zero
                  blt          t3, a5, 309f
                  srai         s0, a3, 31
                  srl          t1, s8, s10
                  sub          s11, s5, a2
                  sll          s2, t2, s4
                  beq          zero, ra, 322f
                  lui          s2, 167596
308:              sll          s5, s10, tp
309:              auipc        a2, 237316
                  addi         t0, a5, -254
                  lui          s1, 417597
                  sra          s7, s11, t2
                  lui          s10, 109535
                  nop
                  bne          s11, s2, 334f
                  blt          a2, a7, 333f
                  srl          sp, a0, a6
                  and          tp, s3, a0
                  bge          t3, a6, 337f
                  xor          t2, t6, a7
                  bltu         s7, s2, 335f
322:              bge          s4, s2, 334f
                  addi         a2, s10, 1107
                  xor          a3, s1, s8
                  lui          s11, 636169
                  srai         zero, a2, 0
                  sub          t1, t0, s2
                  sltiu        ra, s1, -1205
                  blt          s7, s5, 331f
                  sll          t4, a3, t0
331:              bne          t1, s9, 344f
                  sltiu        gp, gp, 1295
333:              xori         s9, a4, -1511
334:              auipc        a0, 542345
335:              bgeu         t2, zero, 351f
                  sra          a3, s5, a1
337:              blt          a3, t4, 356f
                  or           t6, a3, t2
                  sra          sp, sp, s5
                  bltu         s4, s10, 357f
                  beq          a4, a6, 354f
                  addi         s5, zero, -1319
                  sra          s11, t1, t1
344:              slti         tp, a3, 868
                  bltu         a6, ra, 346f
346:              xor          t0, a4, s0
                  xori         tp, ra, -334
                  sll          ra, s4, ra
                  slt          s8, a4, s11
                  slt          zero, t1, s3
351:              sub          t3, t2, s8
                  and          tp, sp, t1
                  and          s2, t1, t2
354:              srli         t4, a5, 12
                  slli         a3, t6, 5
356:              sra          s6, a7, s2
357:              lui          a3, 567529
                  xor          s1, t2, sp
                  sll          a3, sp, tp
                  andi         a2, s11, 480
                  sub          a3, s2, t3
                  sll          sp, t6, s9
                  bltu         t0, a0, 371f
                  slli         t2, t3, 6
                  sra          t0, tp, a5
                  bltu         s11, s2, 367f
367:              xor          sp, t4, s9
                  bltu         a5, t2, 371f
                  sltiu        s10, t3, -77
                  add          gp, s7, t5
371:              beq          s4, s0, 385f
                  slli         s0, s7, 6
                  lui          s3, 27381
                  beq          ra, s3, 385f
                  sll          t6, zero, s9
                  or           tp, tp, s9
                  and          s6, s8, t1
                  sltu         a3, t2, s11
                  xori         a6, a5, 662
                  ori          s10, a1, -1495
                  bgeu         a6, a3, 383f
                  add          sp, s8, s1
383:              add          a0, a0, s2
                  slt          a3, zero, s7
385:              slli         s10, a3, 29
                  nop
                  slli         a1, a0, 7
                  xori         a6, a4, -1500
                  sltiu        t3, t2, -89
                  sra          tp, s0, s11
                  sll          tp, s1, a4
                  sub          a5, a3, t4
                  slti         s10, s10, -1528
                  andi         tp, s10, 145
                  sltu         a6, a5, t3
                  sltiu        s7, s10, -1334
                  slt          t4, t4, a1
                  lui          t4, 611343
                  srai         s3, s7, 28
                  nop
                  andi         s5, a6, -216
                  bge          s0, t3, 414f
                  bgeu         s9, a1, 404f
404:              srl          t1, s5, s4
                  slti         s5, s6, -1071
                  bgeu         t4, t0, 414f
                  srl          s2, t5, s3
                  sll          t2, s2, s5
                  slti         a5, a3, 1710
                  beq          t0, s2, 424f
                  sll          t3, zero, s5
                  auipc        s1, 56462
                  blt          sp, s11, 414f
414:              blt          sp, s3, 431f
                  sll          s6, zero, t5
                  bgeu         a4, a6, 425f
                  nop
                  ori          sp, s10, 482
                  sra          tp, s0, s9
                  and          s6, t4, a0
                  ori          t6, s0, 1352
                  sll          t2, t4, s3
                  lui          gp, 896962
424:              auipc        s3, 74607
425:              bge          t5, s5, 427f
                  addi         a7, s1, -156
427:              sra          a2, a6, zero
                  srli         a5, t3, 8
                  bge          a7, s2, 440f
                  lui          s9, 1039717
431:              or           s6, s5, t5
                  xor          t1, s6, s7
                  and          ra, a7, zero
                  beq          a2, a2, 446f
                  sltiu        s1, s5, -320
                  bge          s6, t0, 444f
                  sll          s10, a6, a5
                  and          a7, t0, t0
                  bgeu         t5, tp, 455f
440:              bge          s3, t6, 459f
                  bge          a3, a1, 450f
                  srai         s11, t3, 7
                  sub          t6, a5, s4
444:              and          a2, t4, a1
                  nop
446:              sra          a1, a3, s9
                  and          a7, a6, t5
                  sltu         ra, t1, t4
                  beq          s1, sp, 462f
450:              bgeu         t1, t6, 467f
                  beq          tp, zero, 469f
                  andi         sp, s11, -491
                  bltu         t6, s1, 456f
                  srai         s0, gp, 26
455:              sra          t0, t2, a5
456:              bgeu         a7, s8, 475f
                  lui          a2, 408846
                  xor          a6, s9, a3
459:              sll          a7, ra, zero
                  bge          s3, s10, 477f
                  slli         tp, s7, 31
462:              or           s1, s9, a7
                  sltu         s2, t6, a1
                  sltu         a2, s4, t6
                  bne          t6, s6, 481f
                  srai         s3, a4, 13
467:              bgeu         t5, a7, 481f
                  sub          t2, s7, tp
469:              slt          s7, t6, s6
                  bltu         a2, a5, 480f
                  blt          s3, t4, 484f
                  add          s2, a6, s0
                  lui          s11, 632477
                  srl          s1, s4, s5
475:              sltiu        s3, s1, -175
                  beq          tp, t5, 481f
477:              xori         a1, zero, 715
                  xor          t0, t0, a2
                  add          s2, a1, s3
480:              bgeu         s0, gp, 489f
481:              xor          a5, a7, a6
                  srai         s6, s11, 14
                  blt          gp, s1, 496f
484:              bgeu         zero, s1, 501f
                  blt          t0, s10, 502f
                  slli         a2, a0, 15
                  beq          zero, sp, 489f
                  srai         a3, t2, 7
489:              slli         s5, s6, 8
                  and          s3, ra, s2
                  slt          s1, s8, s4
                  lui          t3, 711496
                  slli         s11, s0, 24
                  blt          t3, a2, 502f
                  add          t1, s7, t4
496:              sll          sp, t6, t0
                  blt          s2, s10, 515f
                  srai         s8, tp, 14
                  bgeu         gp, s11, 513f
                  sra          s11, a6, s0
501:              srai         s1, a0, 21
502:              nop
                  bne          a7, s9, 512f
                  sll          s9, s10, s5
                  sra          zero, s11, s0
                  bgeu         t2, ra, 518f
                  slt          s9, s3, a5
                  and          ra, t0, t5
                  and          s6, a3, s5
                  slt          t3, s10, t4
                  slli         t6, tp, 8
512:              bne          a7, sp, 526f
513:              bgeu         s2, s11, 518f
                  bne          a4, a2, 525f
515:              slli         s11, a6, 27
                  sll          t4, t0, t1
                  srli         t3, t0, 2
518:              xor          s2, a0, s7
                  sltu         s1, s4, s9
                  bne          t3, t6, 534f
                  and          a7, a5, sp
                  beq          s2, ra, 541f
                  sltu         t6, zero, zero
                  or           s2, s5, a6
525:              lui          ra, 476434
526:              sll          s9, a7, a4
                  sub          gp, s0, t2
                  srai         zero, s1, 18
                  sll          s3, tp, a4
                  and          t3, gp, tp
                  sll          a5, a1, t5
                  sub          t2, a4, a6
                  bltu         sp, t1, 549f
534:              nop
                  sub          ra, a0, ra
                  slli         a5, s8, 24
                  sll          a6, t4, t3
                  slli         s7, t3, 24
                  beq          zero, t1, 551f
                  slli         a1, t2, 23
541:              bgeu         a0, t6, 542f
542:              xori         s1, t1, 997
                  sub          s7, gp, s9
                  add          s7, t5, s2
                  sub          ra, t2, t1
                  slti         s7, a6, -851
                  auipc        a3, 652275
                  sltiu        sp, t3, -1237
549:              sra          sp, ra, t0
                  andi         t6, t5, 1720
551:              bne          a0, t6, 570f
                  srai         a5, s1, 13
                  srli         a1, s10, 2
                  srl          tp, t2, s0
                  xori         a2, s5, -1512
                  sltu         sp, s8, t5
                  slli         tp, t1, 31
                  lui          t3, 298777
                  xori         a0, s0, -605
                  srli         s8, a7, 3
                  beq          s7, t6, 570f
                  xori         zero, ra, -1239
                  sltiu        sp, s7, -1718
                  auipc        s5, 60914
                  blt          s10, s10, 574f
                  addi         s8, s2, 1595
                  add          zero, s3, s3
                  srli         s7, t1, 5
                  sltiu        a2, ra, 1144
570:              bltu         gp, a1, 572f
                  bge          s0, s4, 574f
572:              sltu         t0, s5, s0
                  bgeu         s2, a5, 574f
574:              auipc        s2, 295908
                  sub          s10, t2, s4
                  andi         t4, ra, 1704
                  slti         s6, s10, -408
                  lw           s1, 4(s4)
                  slt          a2, a7, a7
                  addi         s4, s4, 24
                  nop
                  sub          a0, gp, t0
                  sltiu        t1, t1, 469
                  lui          s7, 17329
                  srli         s7, a3, 2
1030:             addi x28, x9, 0
1030:             jalr x28, x28, 0
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
.word 0x507811a0, 0x8cdd85f5, 0xa43016f3, 0x0629afb3, 0x0d4e08d8, 0x54cf79c5, 0x2ee0d2ba, 0x7fa601c5
.word 0x86d0a300, 0x33ce86ba, 0xca647c31, 0x64eb1dcd, 0x6cc6a904, 0x43c1e10e, 0xcc2fba77, 0x5fe807ca
.word 0xbd38619c, 0x9a05870c, 0xfef5ee59, 0x8ca8500f, 0x994acfdd, 0xf42193d7, 0x134b67f9, 0x739ee6ac
.word 0x7732d48b, 0x4b0f52b1, 0xc5e012ef, 0xb8860dc1, 0x6218d9cf, 0xbc94d33d, 0x680501ca, 0x380bdfa4
.word 0xd6b0a123, 0xee4803e1, 0x83c672a2, 0x8795364d, 0x112a8a3e, 0xc5dfd3d1, 0x11f82fac, 0x9dff18ac
.word 0x391c3500, 0x45b8bc90, 0xcec91918, 0x6f82deda, 0x4ba62556, 0x25a6fa04, 0x484e4f02, 0xcd54337e
.word 0xc5beb12f, 0x05e9c386, 0x7b02d283, 0x2b92231b, 0x6130943e, 0x9373c572, 0xbf496892, 0x48a4fad3
.word 0xf0c06bed, 0x16ba1696, 0xb672f238, 0x55353134, 0xc5afd5d4, 0x9e366fb9, 0xee4db559, 0x1783231b
.word 0x8fbac7a5, 0x4b17f3f6, 0xac211080, 0x874abb27, 0x7590ee5a, 0xbbcff8c1, 0xb20d05d5, 0xcf7fde8c
.word 0x1f69fb2b, 0x2b4de243, 0xc3ecb74b, 0x0ffec059, 0x8c4939fa, 0x61894ebc, 0xf7e47a60, 0x3f92054e
.word 0x4c4fdac5, 0x6d526000, 0xf053cc11, 0xc3b4237c, 0xca03a2a1, 0x672c887d, 0x0a8bc518, 0x3202d055
.word 0x6a24b914, 0x6b016970, 0x722c3ceb, 0x488fb8fd, 0x89b0e09b, 0x337f3f7b, 0xe1f5871b, 0xfbc8264a
.word 0x02248e51, 0xeced5c3f, 0xa3429341, 0xca4a4a86, 0x45e51259, 0x0a905bc2, 0xf6dfb520, 0x056d5bcf
.word 0xa626707e, 0x0784b30f, 0x32cce897, 0x3e17b8e6, 0x9c94dab2, 0x43b6e2d0, 0x7750850a, 0xff438103
.word 0x08f45bb8, 0x7f02f390, 0x927a13fa, 0x38f2a35f, 0xa493502d, 0x49d47f97, 0xb9147622, 0xc28ffef4
.word 0x02ce9afa, 0x8419a24c, 0xc4dd2c01, 0xe5a1f568, 0xcd6a75e9, 0x5b8394bb, 0x68ad43d2, 0x50c9d1aa
.word 0xf6ab8cb7, 0xe5b268f1, 0xb39e2437, 0x9c28560e, 0x2dc435f1, 0x2a7cb08c, 0xabb6cb95, 0x02a3d26b
.word 0x8555abaf, 0x4679fc46, 0x5e13b61f, 0x2926b1c4, 0xb4c43ddd, 0x15c3e175, 0x9905f095, 0x62de5725
.word 0x49cca912, 0x170885b4, 0x26804641, 0x10d20199, 0x88ebc29d, 0x84b1e157, 0x0161e271, 0xa39580f6
.word 0xecd836fd, 0xcfce99bb, 0xb7e65b5f, 0x7693b21d, 0xff71f50b, 0x8a215268, 0xa58b42ab, 0x81dc24e1
.word 0xa465dd0d, 0x9e4843d1, 0xfd62d453, 0x34ff0465, 0x7a8d4ed6, 0xe81e1c84, 0x256c73e8, 0xfd7b9e74
.word 0x09fc96db, 0xecb02aa7, 0xe06e3052, 0xa44961d7, 0x60f16e56, 0x9521a2eb, 0xac35251a, 0xb3d67019
.word 0xb5907053, 0x7829da57, 0xa7a73567, 0x17460a43, 0x383c076c, 0x54132b79, 0xb64db491, 0x45b5b7bd
.word 0x4d850c3f, 0xf27de523, 0x554ec098, 0x626a7b2d, 0xc6d52106, 0x86d66f9f, 0x00803594, 0xb45ba44f
.word 0xf92060d2, 0xb2af6e2d, 0xf5f41dbf, 0x9422c439, 0xb7fd72f2, 0xd7bf4d33, 0xd03e4ce4, 0x803c7854
.word 0x9d5ac02e, 0xb624ae41, 0x722f0855, 0xd38c031d, 0xdaff03f6, 0xeefb4fda, 0xefafdca8, 0xbf6a47f8
.word 0x006e10d0, 0x826bc715, 0x9e74858d, 0x71c39e17, 0x0aa9b3ec, 0x5db3d2f3, 0x0c7b424a, 0x998be834
.word 0x5f94eecb, 0x65b125be, 0x85f153e0, 0x40bc6fed, 0xa7231a05, 0xb165e363, 0xfb6724e3, 0x548f38ce
.word 0xfbb394a8, 0xc690881a, 0x9ba36abd, 0x672b3a8a, 0x262502ca, 0xf22223e1, 0x4b217907, 0x36816236
.word 0xce591ad1, 0x3a1213d1, 0x44bc7e8c, 0x1a20b382, 0x4725997a, 0xf9546626, 0x3e1f08ad, 0x92781fdc
.word 0x2b691249, 0x57b495cf, 0xa5317e90, 0xcf753d9d, 0xce756969, 0x6338e9c8, 0x9e349796, 0x21f6db44
.word 0x9ae2cf81, 0x2b14c2b0, 0xfe0233af, 0xa95efd71, 0xe281c01f, 0xe6939d2f, 0xdbd12823, 0x829c48b1
.word 0xa3619c6e, 0x0c6f898c, 0x327d5873, 0x60eefa6f, 0x2636b7ff, 0x1ccc207b, 0xe477516a, 0x5e2fc855
.word 0x5d64313f, 0x93be1273, 0xa44bf94f, 0xb8577f19, 0x7ef361d6, 0xdd0c32bd, 0x6dcfa7d0, 0xd38321c5
.word 0xa4751841, 0x320435cf, 0xc74703c4, 0x338c8bc4, 0xdca2e403, 0xd02dcdb1, 0xdff411a4, 0x00fab387
.word 0x6dbd12df, 0xec77c5f6, 0x77d0d527, 0xb5faa3fe, 0x93f15869, 0xf2545f11, 0xa972e28f, 0x0c68c833
.word 0xfa480972, 0x65ab7cd1, 0x137b373e, 0x46b54a45, 0x6d6aa005, 0xf1c4e26f, 0x19f5b7e8, 0x1615a235
.word 0x5caa5e61, 0x9441901c, 0x7a45c5f3, 0xb04b0730, 0xa93e9ff8, 0xbb9edc50, 0x7edb767c, 0x55db3b59
.word 0xb8bea186, 0x6587b135, 0x6de0c5bf, 0xbe406822, 0x7da5f0f4, 0x6e5e542b, 0x3145ed51, 0xfef8a134
.word 0x2c90a466, 0x0ae8093d, 0x873e36d2, 0x687474c2, 0x05485c81, 0x0866f7b3, 0x3b7bb7ea, 0x57c0f529
.word 0x34d2cebf, 0x91cf317f, 0x284528fa, 0x5c486694, 0x3ab40541, 0x55b53bec, 0x136765a5, 0x214fb0ce
.word 0x1c354549, 0xb13d7df9, 0xed402c12, 0x56987946, 0x7520e4f1, 0xb8d1b998, 0xfdaf1f1f, 0x0c364f0d
.word 0x98449dbf, 0x25e73911, 0x39b90887, 0x8d5e5ecc, 0x0856d88c, 0x64faecf6, 0x1a78c53c, 0x00afc71e
.word 0xcca0d1df, 0x43402b0c, 0x547b4470, 0xd4faa075, 0xa8ab8b2f, 0xd186748d, 0x03c6d5b4, 0x4a3d30b1
.word 0xb4dc7ddb, 0x7adba4ff, 0x83706aa3, 0x510a5c7e, 0x7977ed54, 0x0608f332, 0xcf5e0eda, 0x9c37e9c0
.word 0x64912862, 0x26e13f07, 0x8e59c0c6, 0x987fdb8c, 0x3402b981, 0x04a4aaad, 0xc32178c6, 0x1d91f0c1
.word 0xb77b81c6, 0x11d903cb, 0x05754078, 0x483101da, 0xeaad274f, 0xed1f0278, 0x23d99772, 0xf3a282b5
.word 0x67d0840c, 0x93efd257, 0xf2ab2cd1, 0x1ebdea33, 0x7fd09fc7, 0xa4beb7f3, 0x8dd3a5ea, 0xafe82887
.word 0x4c10328e, 0x311d5d48, 0x398985ca, 0x0193c91b, 0xf3bf0476, 0x500f2cb3, 0x1e8b2200, 0x61dec3a0
.word 0x41e8d85d, 0xc530cb0d, 0x28111dcf, 0xdbbd1d46, 0xc8cecd2b, 0xe0d43391, 0xedf77ddc, 0xc08dee7d
.word 0x163004d8, 0xa2471a7b, 0x5c001ee9, 0xc944e252, 0xad2a92af, 0x21766907, 0xcfb755ce, 0x180a5d7c
.word 0x71188538, 0x9dcc21f9, 0x6303ff8b, 0x8c0d647c, 0xedfa4c37, 0xb6f9e04a, 0x49030374, 0x5b981d4e
.word 0xdc73209b, 0x0302dfc4, 0x8355365a, 0xaf3671e0, 0x450a9de3, 0x22b461f4, 0x45d88657, 0x9918a8ad
.word 0xa34ce5ec, 0xd2ad2690, 0x73babb31, 0x655ea10f, 0x4bf1de35, 0xdf9a26c0, 0x32f62f39, 0xde0b03f8
.word 0x4cd13131, 0x404b2f05, 0xf4d20799, 0xb68bfd20, 0x440a0dbc, 0xb9b33376, 0x23c2282e, 0x461fff2d
.word 0x0b0b1d6e, 0xb39b9a9d, 0xaa64c9fa, 0xba8fa294, 0x19f30f8d, 0x504f057c, 0x845e1078, 0xd3a8f9dc
.word 0xbb174053, 0xe0bbf326, 0xd46a6460, 0x7fccffec, 0xe93f9675, 0xce761acb, 0x03fb06f4, 0xd9c7ae2f
.word 0x502179c2, 0x6c0ae045, 0x45e28fca, 0xc3ccded3, 0x11139048, 0x7c75a07e, 0xe6459a27, 0x34f6041a
.word 0x2197be56, 0xd058defd, 0xeb18e881, 0xbbe5f059, 0x15029fb2, 0xb35b2d9c, 0x2dcfc1bd, 0x39d69548
.word 0x8f31c011, 0xd95522ef, 0x4e34b489, 0x47566ab2, 0x63791b90, 0x3bee6200, 0xfcda4216, 0x9838da82
.word 0x89af22a1, 0xed1ea444, 0xc717c61a, 0x99069e8f, 0xb9866635, 0x28733edb, 0xf1626e84, 0x07153260
.word 0x3e05f1c0, 0x2587c6de, 0xdcfc9f94, 0x02e48769, 0x6da173f5, 0xde7e9ec6, 0x703b5d4a, 0x970533ef
.word 0x9d697904, 0x71f0cfa2, 0xabdefed5, 0xf7b1b5c8
.section .region_1,"aw",@progbits;
region_1:
.word 0x26cc74b7, 0x03b997b8, 0xcb4bb36d, 0x8483679c, 0x7cc4f149, 0x08b7c079, 0xd266b8bb, 0x9645ca20
.word 0xe04a3676, 0x77a32fdb, 0xd350a24f, 0xabbeea13, 0x7df86142, 0xb96470c2, 0xf9b3597a, 0x05bad3b1
.word 0x0e408b12, 0x912d3293, 0x3528ebf5, 0xef85f47d, 0x790088ad, 0x1614e6a3, 0x710298f6, 0x38501338
.word 0x70d193ee, 0x6ec039bf, 0xe8ea9892, 0x16cc0cd7, 0xcc4f2ca5, 0x09a53702, 0x73f713bb, 0x2895e398
.word 0x75d17fa7, 0x6b33f16c, 0xc17b551d, 0x1256cb79, 0x0d21b6e8, 0x9ddee243, 0x8f6b14aa, 0xe09a361e
.word 0x4fd8726f, 0x82558049, 0x0896a25a, 0x540e30a8, 0xa8ca18c1, 0x67a2092c, 0x00369ed2, 0x014f8ec8
.word 0x9815f8d6, 0x76fee965, 0xe5596d23, 0x41a05eca, 0xef021a2b, 0x25b52f5c, 0xa926aa6d, 0x561d7d84
.word 0x4eb16ae7, 0x033004c7, 0xa302356c, 0x2abfddc6, 0x4a41a88e, 0x601e754b, 0x83ab4536, 0x7b72e41d
.word 0x1bb49095, 0x1943827d, 0x68d85bac, 0x329cf9ea, 0x331a0e32, 0x3f01d674, 0xae173044, 0x564d2ac7
.word 0x6700f847, 0x915e49a3, 0x5d7ae2ed, 0xfe0bbd46, 0xd766f7d0, 0xef34d486, 0x66b31126, 0x1e68bcf9
.word 0x8be26751, 0x79dc8faf, 0xd1905fb4, 0xf0dc7d0f, 0x2d8b585f, 0xbed312b3, 0xd7499118, 0xc7da066e
.word 0xa18d156b, 0x887cba97, 0x70c70d57, 0x795d502c, 0x9e84f4b5, 0x831234d4, 0xc598e333, 0x942e9ba3
.word 0xaa1bf848, 0xf3357222, 0xfca93450, 0xc49552cb, 0x13ac9d65, 0x803b1fe0, 0x604165a6, 0xbb6a3a5a
.word 0x04b2729f, 0xb09a0d8d, 0x9d53d524, 0xf17d28fc, 0x2e781f9e, 0x8247cf55, 0x1145768f, 0x838bfca1
.word 0x39fce545, 0xf6a703c3, 0xecdff868, 0xf9aa66f0, 0xfe61e054, 0x3f449cbc, 0x04bc3658, 0xc705fbd4
.word 0x9def7e50, 0xa841b85b, 0x0588a691, 0x1336792a, 0xe4864ea3, 0x8d078017, 0xc3e3a1dc, 0xd02e7c74
.word 0x9a21dbeb, 0xcc03afcb, 0xa312075a, 0xd506cc98, 0x5ddac730, 0x53ae1dd5, 0x877b8749, 0xb56cf3ef
.word 0xe3361128, 0x2a36dd1b, 0x8610c8af, 0x03e61fcb, 0xa5055dcb, 0xf08f206a, 0xdb4ee586, 0x086cfbe8
.word 0x4959f4d5, 0xead4ca2f, 0xf2314e0a, 0x4860df1a, 0xab02e5b4, 0xc5d7bc64, 0x0d34cb5a, 0x7b8c205e
.word 0xe28c198f, 0x2ac9fa4e, 0x1e757e19, 0xbdc8e315, 0xcffaacad, 0x428c8b9a, 0xc4dc9c4f, 0x8c4020da
.word 0x872eb98f, 0x94e71deb, 0xdebf8ba0, 0x6085b8ce, 0x12baf56b, 0x762702c9, 0x333025e7, 0x7a37d64e
.word 0x210f1926, 0xb1bc8abb, 0xd941cebd, 0x0ddfd218, 0x13d5377d, 0xa1a0d0b7, 0xa587e02b, 0xe63341b0
.word 0xf886ba2a, 0x0afb1c2a, 0x438cf58a, 0xf6bc73b0, 0x79c66533, 0x0918408f, 0xe7f2bd7f, 0x1e4625c7
.word 0x40bc8b90, 0xdd27e97f, 0x7348a5b9, 0x7334678f, 0x4e448b57, 0x34292977, 0x4e5fd2c2, 0x880bb3bb
.word 0x44ac13a1, 0xaebe5867, 0x1b122477, 0x282bac8f, 0x0a090cec, 0xe30878e4, 0xcbe8a434, 0x0cbc80ad
.word 0x32d0b2d6, 0xd64e756f, 0xb4c50e3f, 0xdd10be18, 0x3094b61b, 0x981129e0, 0xd4165bcb, 0x325e3a89
.word 0xe26a8cee, 0xf0e36204, 0xb9e95743, 0x86728c43, 0x0b43eca3, 0xb382b12f, 0xec6f5301, 0xe5b502ec
.word 0xf0172e3d, 0xfe834773, 0x72ee758f, 0xe6f2e00b, 0x966890a0, 0x3247af1f, 0x8e74b309, 0xf93dbe70
.word 0x7ec6ad5f, 0xa4c9bd66, 0x3de0f098, 0x64a5ddef, 0x8e1e0e74, 0x385ca33c, 0x4ab8d54f, 0x27e42c07
.word 0x433bf6b6, 0x075c1009, 0x1bf04d94, 0xeebe0e1a, 0x1f2749ba, 0x691761e4, 0x7c81965f, 0xc6f6b5b6
.word 0x3cced4bd, 0x8d26c017, 0x24eaf83f, 0x6895cdfd, 0xdb29e978, 0xa9371a2b, 0x2ff9a6e8, 0xf245daf3
.word 0x0580efb9, 0x43e3c4d3, 0x68197aec, 0x92667faa, 0xaa1d0746, 0x8338e963, 0x1c6ebe55, 0x6e10a964
.word 0xe3d081e0, 0x4588a708, 0xd9992450, 0xd45fbd93, 0x91b5d793, 0xc41b2f4b, 0x07aa1945, 0x2cf20467
.word 0x5231cbcd, 0x6aa39b0a, 0xff87b7d7, 0xf9146b9c, 0xa5714298, 0xd286f446, 0xf2955f32, 0x541151c5
.word 0x3c89a396, 0x1d2fedd3, 0x1f7908d9, 0x95554bd7, 0x85c3475e, 0x5b1ff64c, 0x9227c613, 0xe48c5b7c
.word 0x81ca2473, 0x0e824900, 0x023ef63c, 0x94377952, 0xa1cedcb5, 0x828a3735, 0x1afe1f5d, 0xa3d171a9
.word 0x5c46ffcd, 0xa9157224, 0x9a5a225b, 0x9aa7efcf, 0xdb3beb11, 0x312f5ceb, 0x890a31e4, 0xea1acf1c
.word 0xf4bc3abd, 0x0452c5ac, 0xfde0341c, 0xce066435, 0x8cbfaba4, 0x573ab791, 0x5a059066, 0x32c57cf7
.word 0x067766dc, 0xf55a55fe, 0x67784773, 0xf47c44e5, 0x145ddda7, 0x21d54c40, 0x23477d05, 0xa45495b4
.word 0x83eefbff, 0x3a816a00, 0x3736d263, 0x1e9679eb, 0x27cd522a, 0x81dafb74, 0xb0240807, 0x3c8b4621
.word 0x0cdc5f2f, 0xa7436429, 0xec8d558f, 0xb55bf8d7, 0xc0018a37, 0x36a6e9be, 0xdc3cbc06, 0x81045200
.word 0x937e9609, 0x92437575, 0x53cf3932, 0xcfd41621, 0x184c6422, 0x2c5331ff, 0x367e33d3, 0xcd8f2c49
.word 0x92f11bad, 0x9e20883e, 0x8d3a70f1, 0xa541c8e0, 0x72ad3dba, 0xbef1a023, 0x1e6bfca8, 0x81d4d020
.word 0x463bffd9, 0xc31ddf5c, 0x25a62849, 0xe589318e, 0xe61a5aad, 0x49fa86ab, 0xe4a25d47, 0x5d00d6a2
.word 0x7b3db2a3, 0xe608e38e, 0xcf99f0c5, 0xe2fd723c, 0x67bdc09f, 0xaea2a6e6, 0xdf5d364b, 0x6e8448ac
.word 0x2523a79c, 0x14173fc6, 0xf027c871, 0x7d98ad46, 0xfefee4d1, 0xcab8953b, 0x5622169f, 0xaf1da0c0
.word 0xfef94d5c, 0x342113d5, 0x680c0b25, 0x18b9798c, 0x55a5a24b, 0x24b9063e, 0x92816d9c, 0x80e2c877
.word 0x2d1a722b, 0xec842137, 0xe817500d, 0x3f197328, 0x5ece7116, 0xf1a8a757, 0x3aef870a, 0xfbb8b9c0
.word 0xc10f1a89, 0x8276d33a, 0xa0ddfe40, 0x6857bb40, 0x3982f94a, 0xe9af2b46, 0xfd35e22c, 0xb98a2d2d
.word 0x4deb6df4, 0x45c98776, 0xfa068c8b, 0xcc7441e1, 0x4e4e53fd, 0xcf525bcc, 0x3d6435d7, 0x11c7d69b
.word 0x3d88c601, 0x25b0546e, 0xfc36d816, 0xbbcc61db, 0x5b22c8f5, 0xa57cba63, 0xec706839, 0xdcb7e888
.word 0x139f2c0d, 0x91244581, 0x747d5836, 0x94feaec8, 0x499b08cd, 0x96fa018e, 0x6d6b2ce9, 0x766d9a9c
.word 0x18c35f8e, 0x02ee1b71, 0xee25a1a5, 0x6041c60c, 0xcaa31057, 0xba107170, 0xf5d77bfc, 0xf35ac2d7
.word 0x14402082, 0x7853a6fa, 0x6a652577, 0x5e5c658a, 0x48ba7003, 0xe8d569fc, 0x72753cf5, 0x50fa0e9a
.word 0x3b24e303, 0xc323c510, 0xf56bdb56, 0xa33529d7, 0xe2c333a1, 0x41d3f750, 0x22472b0d, 0x97f664c8
.word 0x61d296fd, 0xd3c08da3, 0x9d71147f, 0x1053dfea, 0x3b510326, 0xf4016872, 0x438d795a, 0x78d7c701
.word 0x03f5dbf3, 0x78718c7a, 0x93cdd249, 0x0e7745f9, 0x02e569d0, 0xc0de7e58, 0xbc9f12d1, 0x7e4d5fb4
.word 0x28e37140, 0x3da807a1, 0x077fe2df, 0x0bb26ae1, 0x08624762, 0xa8e25039, 0x2e6cd951, 0xcb2f7e51
.word 0xcb4d09dd, 0x965684b1, 0x0559260c, 0x86b31e2f, 0x3cf54e4d, 0x09a03356, 0x6d306426, 0x90ec7c4f
.word 0xac96f6ab, 0x51b94c2a, 0x9c07b56a, 0xcd84ab94, 0x12d12cdb, 0x365b00d0, 0xcd271d64, 0x4f8befed
.word 0x8092e8df, 0x79d2ba8c, 0x03c42d0c, 0xa4baeb3f, 0x8a81bfbf, 0x07028c40, 0x69510c13, 0xcf04d997
.word 0xbf4dc4bc, 0xa9186c4c, 0x62165faa, 0x6d64ed8a, 0xde59ea87, 0xcf87ac9a, 0xd9eeea74, 0xb122c996
.word 0xfc64e209, 0x7abbc8e7, 0x80c49952, 0x3e7f8bec
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x14, x20, zero
                  csrr x5, 0x300 # MSTATUS
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 31
                  bne x5, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x5, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x5, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x5, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x5, x28, ecall_handler
                  li x28, 0x1
                  beq x5, x28, instr_fault_handler
                  li x28, 0x5
                  beq x5, x28, load_fault_handler
                  li x28, 0x7
                  beq x5, x28, store_fault_handler
                  li x28, 0xc
                  beq x5, x28, pt_fault_handler
                  li x28, 0xd
                  beq x5, x28, pt_fault_handler
                  li x28, 0xf
                  beq x5, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x20, x14, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x14, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x14, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x20, x14, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x20, x14, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x20, x14, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
