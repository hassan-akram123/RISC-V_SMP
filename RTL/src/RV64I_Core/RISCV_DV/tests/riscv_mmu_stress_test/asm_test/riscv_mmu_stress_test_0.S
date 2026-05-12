.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0x3
                  li x1, 0xfb7eaf84
                  li x2, 0x0
                  li x3, 0xc7063a54
                  li x4, 0xf6cdf84b
                  li x5, 0xc9212e5d
                  li x6, 0xf092b430
                  li x7, 0x9
                  li x8, 0x0
                  li x9, 0xb
                  li x10, 0x80000000
                  li x11, 0x1
                  li x13, 0x6f624dc0
                  li x14, 0xfaf763ef
                  li x15, 0xa
                  li x16, 0xf8355ea5
                  li x17, 0xfd69f016
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0xf1626f27
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x51af7db9
                  li x24, 0xfb116bdf
                  li x25, 0xd
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x30, 0xf89beec0
                  li x31, 0xf2f24aaf
                  la x12, user_stack_end
main:             sltiu        a1, s3, 1757
                  la           s0, sub_1
                  slti         a3, a3, -1515
                  addi         s0, s0, 35
                  srl          t0, t1, s11
                  sll          s2, s10, a7
                  and          s10, a3, a2
                  srli         s5, a5, 31
                  slli         s10, zero, 23
                  lui          s4, 912960
                  xor          s6, a1, s11
                  slt          t0, t6, s3
main_j3:          jalr         t1, s0, -34 #jump main -> sub_1
                  la           t6, region_1+605 #start riscv_load_store_hazard_instr_stream_0
                  lhu          s5, 9(t6)
                  lbu          s3, -165(t6)
                  lb           a4, 164(t6)
                  sb           s1, -13(t6)
                  sw           sp, -177(t6)
                  lbu          s5, -177(t6)
                  sh           s4, 251(t6)
                  lhu          s10, 251(t6)
                  lb           zero, 251(t6)
                  ori          t3, gp, 1624
                  lb           a1, -167(t6)
                  sw           s2, 55(t6)
                  lhu          t3, 55(t6) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1131 #start riscv_load_store_hazard_instr_stream_1
                  sb           t6, -134(sp)
                  lb           a4, -134(sp)
                  lbu          a4, -134(sp)
                  andi         gp, tp, 1413
                  lb           s4, -134(sp)
                  sh           s3, 41(sp)
                  lbu          t6, 19(sp)
                  lbu          s10, 19(sp)
                  sb           a7, 19(sp)
                  lh           s4, 19(sp)
                  lbu          s3, -138(sp)
                  sb           t2, 184(sp)
                  slt          t1, a5, s3
                  sh           a4, 181(sp)
                  lb           t3, 181(sp)
                  lb           s4, 181(sp)
                  lh           s7, 181(sp)
                  lw           t1, 181(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           t5, region_0+170 #start riscv_load_store_rand_instr_stream_0
                  sw           a2, 782(t5)
                  srl          s7, a5, zero
                  sb           ra, 537(t5)
                  sb           a0, 204(t5)
                  lhu          a6, 1278(t5)
                  srli         s3, t2, 13
                  sw           t1, -30(t5)
                  ori          s4, tp, 1938
                  andi         s11, a3, -625
                  sh           s10, 56(t5)
                  lui          s0, 1041248
                  or           t1, a0, ra
                  sh           s9, 334(t5)
                  nop
                  or           s4, a1, sp
                  sltu         s2, s2, a4
                  nop
                  lw           a5, 1674(t5)
                  sll          s2, a6, s1
                  sub          a0, tp, t1
                  sll          s5, a0, a2
                  lb           zero, 1566(t5)
                  sltiu        s0, t1, 939
                  srl          s6, a6, s4
                  xor          s3, a6, s8
                  lh           a3, 1688(t5)
                  sll          a3, gp, t2
                  or           tp, s9, s6
                  srl          t0, s1, zero
                  slti         s4, s0, 467
                  srai         t2, s4, 8
                  or           s8, s3, a0
                  srai         a4, tp, 25
                  lw           a7, 1150(t5)
                  slt          a5, a2, s4
                  or           s1, a0, s4
                  sra          s6, a7, t2
                  sb           a1, -74(t5)
                  sw           a1, 946(t5)
                  lbu          a5, 759(t5)
                  lui          a7, 391953
                  lw           zero, 678(t5) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_0+1836 #start load_store_instr_stream_0
                  la           s6, region_0+1419 #start load_store_instr_stream_2
                  la           a7, region_0+197 #start load_store_instr_stream_4
                  sb           tp, 32(s2)
                  la           s4, region_0+132 #start load_store_instr_stream_3
                  la           s1, region_0+22 #start load_store_instr_stream_1
                  sb           tp, -54(s2)
                  lb           a5, 1283(s1)
                  lb           tp, -146(s6)
                  lbu          s7, 1005(s4)
                  sb           t0, 375(s4)
                  lh           s3, 1410(s1)
                  lbu          s0, -32(s6)
                  lb           s11, 0(a7)
                  sb           t5, 138(s4)
                  lb           s0, 59(s2)
                  lh           s7, 1132(s4)
                  lhu          s7, 288(s1)
                  lbu          a0, 1307(s4)
                  sb           s0, 1717(s1)
                  lb           t5, -1(a7)
                  lb           a0, 1239(s1)
                  lh           a4, 11(a7)
                  sb           t4, 902(s4)
                  sb           t4, 859(s1)
                  lbu          a3, -142(s6)
                  lb           a0, 13(s2)
                  lhu          t2, 165(s6)
                  lh           t5, -15(s6)
                  lbu          s11, 1853(s1)
                  lhu          sp, 233(s6)
                  lhu          s7, -105(s6)
                  sb           a1, 1(a7)
                  lbu          a6, 1019(s4)
                  lbu          tp, -230(s6)
                  lhu          t3, -127(s6)
                  sb           t5, 967(s1)
                  lb           s9, -10(a7) #end load_store_instr_stream_4
                  lb           s9, 603(s1)
                  sh           s5, 191(s6) #end load_store_instr_stream_2
                  lh           a5, 1798(s4)
                  lhu          a6, 346(s1) #end load_store_instr_stream_1
                  lhu          t0, 542(s4) #end load_store_instr_stream_3
                  lbu          s11, 11(s2) #end load_store_instr_stream_0
                  la           gp, region_0+508 #start load_store_instr_stream_1
                  la           t2, region_0+432 #start load_store_instr_stream_0
                  sb           a3, 11(t2)
                  lbu          a5, -447(gp)
                  lbu          s7, -393(gp)
                  lbu          t3, 9(t2)
                  lb           s3, 641(gp)
                  lbu          a0, -9(t2)
                  lb           s10, 14(gp)
                  lbu          t0, -5(t2)
                  lbu          a7, 591(gp)
                  sb           s0, 223(gp)
                  sb           s6, -5(t2)
                  sb           s1, 14(t2)
                  sb           a7, 1(t2)
                  sb           t4, 10(t2)
                  lhu          a5, 1150(gp) #end load_store_instr_stream_1
                  lb           s5, 13(t2)
                  lbu          t1, 7(t2) #end load_store_instr_stream_0
                  bge          t3, s7, 3f
                  xori         gp, s5, -1420
                  srai         s3, s1, 20
3:                bgeu         a7, s9, 20f
                  and          a5, t3, s3
                  xori         s8, s11, 1525
                  srl          zero, t4, a4
                  sub          a3, a2, t3
                  slt          tp, a7, s0
                  srl          s7, t6, a0
                  andi         s2, t1, 1513
                  blt          s10, s9, 17f
                  srli         t2, t4, 12
                  sltu         sp, s5, s4
                  bge          gp, s5, 16f
                  sltu         a4, a0, a5
16:               blt          s3, zero, 17f
17:               auipc        t3, 873210
                  sltu         s11, a5, s3
                  auipc        a3, 436350
20:               blt          t3, t0, 24f
                  and          a0, t1, sp
                  xor          t6, gp, s3
                  sltu         zero, t1, s6
24:               slti         s4, s6, 1376
                  xor          s6, s2, gp
                  slli         t3, t1, 15
                  sll          s9, gp, s9
                  bge          a5, a5, 34f
                  ori          s3, s5, -1138
                  addi         a0, t3, 712
                  slt          s11, s1, s0
                  ori          t2, t0, -1005
                  sltu         t0, ra, ra
34:               sll          a1, t2, s7
                  srai         t2, a6, 11
                  and          a6, s0, s7
                  xor          t1, s10, a7
                  bgeu         sp, a6, 45f
                  sra          s2, s6, s2
                  nop
                  sltu         s7, t2, a2
                  and          zero, t6, a5
                  add          s5, zero, a3
                  srli         a7, a1, 21
45:               xori         s6, s9, -1
                  srl          s7, s3, t4
                  ori          zero, a3, 444
                  add          s2, t4, a7
                  ori          s11, a4, -720
                  xori         a4, a5, 1766
                  or           t1, a5, ra
                  slli         t5, s9, 13
                  srl          s7, t1, tp
                  lui          a0, 430519
                  beq          a2, t1, 65f
                  slli         t2, s6, 1
                  bgeu         a3, zero, 73f
                  bne          zero, a3, 62f
                  bgeu         s8, s9, 70f
                  or           s4, ra, t4
                  srl          s6, tp, s0
62:               or           a7, sp, t4
                  bltu         tp, t5, 78f
                  srli         s3, s5, 15
65:               lui          s6, 564253
                  xori         s7, zero, 1779
                  lui          t1, 575335
                  sltu         s2, t5, a1
                  bge          t5, t5, 80f
70:               srl          gp, tp, s7
                  nop
                  ori          s4, s6, 1161
73:               sll          s10, t5, s9
                  srl          t0, a0, s3
                  nop
                  srl          a7, a7, s10
                  srli         s2, s0, 20
                  la           s3, sub_1
                  slt          t3, t2, a6
                  xori         t2, s9, -1804
                  lui          a1, 517790
                  xori         zero, a6, -1227
                  auipc        t5, 149680
                  xor          s1, gp, a2
                  sub          a1, ra, s11
                  sub          t5, a2, t2
                  addi         s3, s3, 709
                  sub          s8, s5, t5
                  bne          a7, s0, main_j1 #branch to jump instr
                  auipc        a5, 817680
main_j1:          jalr         t1, s3, -708 #jump main -> sub_1
78:               bge          t2, a5, 96f
                  auipc        a1, 984547
80:               or           s4, t0, t5
                  bgeu         gp, s1, 83f
                  lui          a3, 557830
83:               sltiu        s10, s5, 497
                  srli         a7, a3, 4
                  xor          a5, a5, sp
                  auipc        t5, 1038325
                  sltiu        t6, t1, 79
                  slti         s3, t0, -737
                  slti         s7, a1, 1230
                  bltu         a3, s11, 98f
                  add          sp, s1, s3
                  addi         s9, s11, -711
                  add          a1, t5, s4
                  la           t2, sub_2
                  addi         t2, t2, 455
                  sra          a7, s8, a7
                  lui          sp, 442994
                  xori         s4, s3, 878
main_j2:          jalr         t1, t2, -454 #jump main -> sub_2
                  addi         t6, s5, -1807
                  sltiu        a4, s0, 708
                  sub          s5, t0, a0
                  ori          s2, a1, -1392
                  bge          s10, ra, 100f
96:               srl          t2, gp, sp
                  srai         a5, a2, 18
98:               add          s6, t6, t6
                  slti         s5, t1, -819
100:              sltu         tp, a1, s6
                  srli         t3, a3, 18
                  srai         a6, s11, 27
                  xori         s2, s7, 1988
                  add          s0, s0, s1
                  xori         a3, t0, 903
                  bgeu         s2, ra, 113f
                  sra          s7, ra, s3
                  auipc        t1, 881947
                  xor          t5, sp, s3
                  addi         tp, a3, 316
                  auipc        s2, 743359
                  srli         a4, t6, 9
113:              slti         gp, s9, -628
                  xor          s9, s1, t0
                  sltiu        a4, ra, -249
                  slt          s4, ra, s0
                  srl          s1, t6, s9
                  bge          t2, s8, 123f
                  sub          zero, s0, t3
                  sltu         s8, t4, t1
                  bgeu         t4, a3, 124f
                  srai         sp, s4, 9
123:              blt          t6, t5, 143f
124:              blt          a6, s0, 131f
                  lui          tp, 892338
                  slti         s9, s0, -1351
                  srl          a4, t5, t1
                  xor          t5, a1, s7
                  bge          t5, a3, 149f
                  bge          a3, s4, 143f
131:              srai         s7, a3, 29
                  bgeu         t1, s7, 134f
                  slli         a6, s4, 15
134:              sub          zero, zero, sp
                  blt          s1, t0, 153f
                  add          s2, a5, s0
                  nop
                  sltu         a6, s3, t2
                  bne          a0, zero, 154f
                  beq          s1, ra, 151f
                  and          s7, t2, sp
                  srai         t3, t1, 26
143:              slli         t3, s10, 25
                  andi         a3, zero, -1750
                  slt          s10, t4, s3
                  blt          a5, s0, 156f
                  sltu         a1, a3, t6
                  beq          s7, zero, 166f
149:              xori         a5, s1, -616
                  bgeu         s10, zero, 152f
151:              slli         t1, sp, 29
152:              sltu         t5, t1, zero
153:              addi         s5, s1, 1706
154:              nop
                  xori         s5, s3, -856
156:              blt          a7, a2, 157f
157:              srl          s8, s4, s4
                  beq          t1, ra, 173f
                  ori          s4, a5, 50
                  xori         t5, t2, 541
                  addi         sp, t1, 772
                  srai         a6, s2, 10
                  xor          s10, s2, a6
                  slti         a5, a7, -1584
                  sltu         zero, s9, a3
166:              bgeu         a2, s10, 173f
                  slli         s11, s8, 11
                  beq          a2, s1, 170f
                  bge          s0, a4, 175f
170:              add          t1, sp, sp
                  sltiu        t0, s2, 1785
                  sra          a6, t1, s5
173:              and          a6, s9, t5
                  sub          a4, t6, a1
175:              or           s3, s4, s3
                  slli         s5, t0, 8
                  andi         s4, a5, -1561
                  sub          zero, s6, t2
                  sub          a5, sp, s3
                  blt          a0, a6, 184f
                  add          t6, s9, s5
                  bne          s9, a7, 193f
                  xor          t3, s8, s11
184:              xor          a3, s2, a2
                  blt          t4, ra, 190f
                  lui          s10, 45944
                  sltu         t2, ra, s8
                  sra          gp, t5, gp
                  or           s4, zero, sp
190:              ori          a5, a1, 1099
                  sltiu        a5, t4, -686
                  slti         sp, a6, 789
193:              sra          a6, s4, t1
                  srl          s0, a6, a6
                  ori          t3, s0, -911
                  beq          s1, s7, 199f
                  bge          s9, zero, 203f
                  beq          s3, s7, 202f
199:              srl          s1, gp, a4
                  auipc        s1, 473739
                  beq          s0, a0, 208f
202:              bgeu         a7, s4, 210f
203:              sll          tp, s0, s1
                  sll          a1, s2, s2
                  and          t1, t5, a5
                  srai         a7, zero, 9
                  sra          s6, t6, s9
208:              beq          a6, a1, 215f
                  bgeu         gp, t5, 222f
210:              slti         a7, a2, 215
                  ori          s5, s7, -358
                  slti         s7, s11, 599
                  sltu         a0, s10, ra
                  blt          a4, s7, 217f
215:              add          s7, s5, zero
                  add          t2, tp, s4
217:              sltiu        a5, a3, -163
                  sra          s3, t2, t3
                  ori          t3, a0, 706
                  beq          ra, s0, 230f
                  add          s5, a3, s5
222:              beq          s11, a6, 238f
                  nop
                  beq          t4, s6, 235f
                  andi         s8, s1, 1162
                  sltu         a0, s8, ra
                  auipc        s7, 652953
                  sra          s0, s4, t4
                  ori          t3, a6, 880
230:              xori         s4, s1, -470
                  srli         t5, s7, 31
                  xori         s4, s8, 1120
                  xori         tp, s10, -1765
                  slt          s5, s9, a7
235:              srl          t0, a2, s1
                  bltu         s9, ra, 251f
                  bge          s1, s0, 257f
238:              blt          s4, sp, 243f
                  blt          t5, a2, 256f
                  bne          tp, s4, 258f
                  nop
                  sll          t3, a1, s0
243:              nop
                  slli         s6, a5, 7
                  addi         a7, sp, -159
                  ori          a5, s2, -411
                  srl          s0, s1, s10
                  xori         s9, a2, 425
                  slti         sp, s5, 1645
                  slli         t1, a0, 4
251:              add          s0, a1, t1
                  blt          ra, s3, 254f
                  bge          s1, t1, 258f
254:              xori         a7, s2, -308
                  bge          s11, a4, 258f
256:              srai         a6, a6, 22
                  la           t3, region_0+1738 #start riscv_load_store_rand_instr_stream_1
                  sb           a3, 63(t3)
                  sltu         s5, a7, t0
                  lbu          s1, -11(t3)
                  and          t0, s1, a3
                  ori          s9, s10, 520
                  sh           s1, -38(t3)
                  xori         s0, s2, 808
                  xori         s6, s8, 191
                  lhu          s5, -82(t3)
                  sll          a6, a1, tp
                  lb           s6, -39(t3)
                  sb           a5, 11(t3)
                  lbu          t5, 15(t3)
                  lh           a4, -70(t3)
                  or           t6, t1, a7
                  sltu         a1, t1, s2
                  srli         a0, t6, 15
                  sb           t0, 131(t3)
                  slli         t6, ra, 8
                  lui          s0, 120192
                  srai         s4, a2, 5
                  and          s8, zero, t3
                  ori          t2, gp, -646
                  or           t6, a3, a5
                  lbu          s7, -83(t3)
                  lui          a7, 937963
                  or           s4, a0, gp
                  srli         s0, a7, 15
                  xor          a5, s4, a2
                  sw           a6, -190(t3)
                  xor          s10, zero, a6
                  add          t1, t2, t5
                  lb           t0, 117(t3)
                  sb           t0, 40(t3)
                  lw           t6, 246(t3) #end riscv_load_store_rand_instr_stream_1
257:              add          gp, a5, s7
258:              slti         s0, a7, 1634
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            nop
                  bltu         s3, a1, sub_2_stack_p
sub_2_stack_p:    addi         a2, a2, -12
                  ori          t0, a1, -2021
                  nop
                  sw           t1, 4(a2)
                  slli         a1, s2, 31
                  la           s5, region_0+341 #start load_store_instr_stream_3
                  la           t1, region_0+25 #start load_store_instr_stream_2
                  la           a1, region_0+780 #start load_store_instr_stream_0
                  sb           s11, 68(t1)
                  la           s2, region_0+1918 #start load_store_instr_stream_1
                  lbu          t5, -213(s5)
                  sb           a1, 13(s2)
                  lbu          gp, 212(s5)
                  sh           a4, -446(a1)
                  sb           s9, -362(a1)
                  la           a7, region_0+734 #start load_store_instr_stream_4
                  lw           tp, 11(t1)
                  sb           a0, -640(a1)
                  sb           t5, 256(a7)
                  lbu          a6, -6(s5)
                  lb           s10, 191(a7)
                  lbu          a4, -5(s2)
                  lw           a0, 190(a7)
                  sb           a1, -222(s5)
                  lbu          t5, -120(s5)
                  lbu          a6, 977(a1)
                  sb           a0, 0(s2)
                  lbu          s11, -351(a1)
                  sb           a1, 189(t1)
                  lb           a0, 180(a7)
                  lbu          s8, -52(s5) #end load_store_instr_stream_3
                  lb           t6, 11(s2)
                  sb           t3, 121(t1)
                  sb           gp, -234(a1)
                  sh           t2, 11(t1)
                  sb           a4, 13(s2) #end load_store_instr_stream_1
                  lb           s7, 217(a7) #end load_store_instr_stream_4
                  sb           a1, 560(a1)
                  sb           zero, 216(t1) #end load_store_instr_stream_2
                  lbu          t5, -25(a1) #end load_store_instr_stream_0
                  la           tp, region_0+1815 #start riscv_load_store_hazard_instr_stream_0
                  sb           sp, 14(tp)
                  sll          s7, s3, a3
                  lw           a5, -7(tp)
                  sh           s0, -7(tp)
                  lb           a7, -7(tp)
                  sb           s9, -7(tp)
                  lbu          t5, -7(tp)
                  sh           t0, 1(tp)
                  lb           s10, 1(tp)
                  lhu          a6, 1(tp)
                  sltu         t5, s6, a0
                  lbu          s4, 1(tp)
                  lhu          s10, 13(tp)
                  sltiu        t2, s4, -698
                  lbu          a0, 13(tp)
                  sh           t5, 13(tp)
                  lh           s1, 13(tp)
                  lb           s0, 13(tp)
                  sh           t6, 13(tp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+271 #start riscv_load_store_rand_instr_stream_2
                  srli         s7, zero, 29
                  ori          t2, s7, 936
                  and          s11, s9, sp
                  srai         s9, a5, 20
                  lhu          t0, -11(sp)
                  sltiu        a3, s3, -1085
                  sb           t0, 13(sp)
                  lb           s8, -15(sp)
                  lb           s7, -6(sp)
                  auipc        t3, 951825
                  or           s1, a7, s6
                  lb           s11, -11(sp)
                  slli         tp, zero, 2
                  sh           a2, 9(sp)
                  andi         t3, s6, 816
                  sb           s2, -14(sp)
                  sh           a4, 5(sp)
                  sltiu        a3, s6, -350
                  sb           t6, 3(sp)
                  lb           t6, -8(sp)
                  srli         a3, t6, 24
                  slt          a0, a5, t6
                  lbu          s6, 5(sp)
                  sb           a6, -14(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a1, region_1+14 #start riscv_load_store_hazard_instr_stream_1
                  lb           sp, 137(a1)
                  addi         gp, a2, 712
                  lbu          s7, 97(a1)
                  sh           s6, 154(a1)
                  lb           a4, 154(a1)
                  lbu          s9, 219(a1)
                  lhu          s7, 24(a1)
                  sb           s4, 24(a1)
                  sh           s10, -14(a1)
                  sb           s5, 201(a1)
                  sb           s1, 159(a1)
                  lw           s11, 6(a1)
                  lhu          s9, 16(a1)
                  sh           a4, 16(a1) #end riscv_load_store_hazard_instr_stream_1
                  la           s2, region_1+1162 #start riscv_load_store_rand_instr_stream_1
                  lhu          s6, -58(s2)
                  lbu          a7, 1(s2)
                  sh           t5, 192(s2)
                  sb           s11, -179(s2)
                  sb           s2, 177(s2)
                  and          s8, a4, a5
                  sw           a4, 214(s2)
                  lb           zero, -255(s2)
                  sll          t2, s9, a4
                  lhu          a6, 116(s2)
                  add          tp, sp, t5
                  sb           s10, 150(s2)
                  lw           t3, 238(s2)
                  slli         a1, tp, 9
                  lb           s5, -55(s2)
                  lb           a3, -4(s2)
                  lh           a6, -232(s2)
                  lw           t2, -226(s2)
                  sb           t0, -62(s2)
                  lb           a1, 13(s2)
                  lbu          s6, 248(s2)
                  sltu         a5, s8, s5
                  lb           s0, 197(s2)
                  lhu          s0, 68(s2)
                  lhu          t6, 128(s2)
                  lbu          a6, -155(s2)
                  lb           t3, -116(s2)
                  lb           a3, 95(s2)
                  sh           ra, -156(s2)
                  lbu          s7, -145(s2)
                  lb           t3, 236(s2)
                  add          a5, t2, s11
                  auipc        t0, 813692
                  sll          a7, s8, s8
                  sll          a6, a4, t0
                  sb           s4, 69(s2)
                  or           s9, a3, gp
                  ori          t5, a2, -1099
                  sltiu        s7, t6, 510
                  lb           sp, 104(s2)
                  add          s3, a2, a7
                  srli         s4, t1, 12
                  lb           a1, 24(s2) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_1+1988 #start load_store_instr_stream_1
                  sb           a0, 7(s1)
                  la           s4, region_1+855 #start load_store_instr_stream_0
                  lb           tp, 6(s1)
                  lb           t5, 64(s4)
                  sb           a6, 1(s1)
                  sh           s9, 10(s1)
                  lb           a5, -20(s4)
                  sh           a6, -10(s1)
                  lhu          t5, -197(s4)
                  sh           tp, -10(s1) #end load_store_instr_stream_1
                  lh           sp, -59(s4)
                  lbu          a7, 144(s4) #end load_store_instr_stream_0
                  la           sp, region_0+210 #start riscv_load_store_rand_instr_stream_3
                  sw           s10, 10(sp)
                  sw           t2, 46(sp)
                  sb           s9, -64(sp)
                  lhu          t6, 2(sp)
                  sltiu        a6, ra, -1748
                  sll          s9, s9, t2
                  and          a5, s6, a6
                  lbu          s4, 37(sp)
                  lb           t1, -4(sp)
                  sb           s5, -8(sp)
                  sra          s10, t6, t6
                  auipc        s9, 470173
                  lbu          t1, 31(sp)
                  sb           s1, -59(sp)
                  slli         s0, t4, 20
                  srli         t5, t6, 9
                  lb           a3, -46(sp)
                  add          a4, a5, s7
                  srl          t6, s0, t5
                  sw           gp, 42(sp)
                  lb           s7, -33(sp)
                  slt          t0, s6, a0
                  and          s2, sp, a1
                  lbu          t1, 18(sp)
                  lb           tp, -39(sp)
                  sb           s2, 27(sp)
                  sh           a5, 4(sp)
                  lb           a7, 21(sp)
                  addi         s11, a7, 381
                  slt          s6, a0, a3
                  nop
                  sw           zero, -46(sp)
                  lhu          s2, -58(sp)
                  lb           gp, -61(sp)
                  srl          s2, s10, t1
                  and          s2, a3, s6
                  lh           zero, 22(sp)
                  lhu          t5, 38(sp)
                  lb           s7, -1(sp)
                  lb           s6, 17(sp)
                  lw           s5, 10(sp)
                  lw           gp, 22(sp)
                  lbu          s7, 33(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t1, region_0+973 #start riscv_load_store_hazard_instr_stream_3
                  lhu          a0, 253(t1)
                  lb           s7, 253(t1)
                  sh           sp, 253(t1)
                  lbu          s0, 253(t1)
                  lhu          s5, 363(t1)
                  lbu          t0, -422(t1)
                  lbu          s8, -422(t1)
                  sb           s11, -422(t1)
                  lb           t3, -422(t1)
                  sb           a1, -422(t1)
                  lbu          a7, -422(t1)
                  lb           s0, 53(t1)
                  sb           a3, -362(t1)
                  sb           t5, -362(t1)
                  lbu          s9, -362(t1)
                  lui          a6, 954294
                  lb           s0, -362(t1)
                  sh           s11, 867(t1)
                  sb           t1, -858(t1)
                  lhu          a3, 953(t1)
                  lw           s9, -117(t1) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_0+1170 #start riscv_load_store_hazard_instr_stream_2
                  sh           s0, -12(sp)
                  lh           a3, -12(sp)
                  lhu          tp, -12(sp)
                  xor          gp, ra, t0
                  sb           s7, -12(sp)
                  lh           tp, -12(sp)
                  sub          s6, gp, a1
                  ori          s4, gp, -1556
                  auipc        a4, 403173
                  slti         s7, t2, -1309
                  sb           s3, -12(sp)
                  sh           t2, -12(sp)
                  add          s3, s3, s3
                  sh           s5, -12(sp)
                  lh           s7, -12(sp)
                  sb           s11, -12(sp)
                  sh           a1, -12(sp)
                  lbu          a3, -12(sp)
                  sh           a2, -12(sp)
                  sh           a6, -12(sp)
                  lbu          s11, -12(sp)
                  lb           t0, -12(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+644 #start riscv_load_store_rand_instr_stream_0
                  sra          gp, s1, s5
                  lbu          zero, -36(sp)
                  addi         s4, s6, 338
                  andi         a1, s1, 962
                  sltiu        s4, s6, 1646
                  lw           s7, -56(sp)
                  lb           s0, -11(sp)
                  sltiu        s4, a1, -1065
                  srli         s0, zero, 2
                  lbu          tp, -1(sp)
                  andi         zero, t0, 961
                  lui          zero, 474714
                  slti         s2, t5, -1232
                  lb           t3, -28(sp)
                  lb           zero, 47(sp)
                  sltu         s6, a4, a6
                  xori         s4, tp, -1385
                  lh           t2, 46(sp)
                  srai         s5, a4, 14
                  lhu          a4, 10(sp)
                  nop
                  sltu         s2, s1, a5
                  auipc        tp, 544543
                  nop
                  srli         t3, t5, 18
                  xori         t3, s2, -1916
                  slli         s1, tp, 18
                  xori         s10, s8, 152
                  lb           a3, -57(sp)
                  lbu          gp, -59(sp) #end riscv_load_store_rand_instr_stream_0
                  xor          s5, a7, tp
                  lui          s3, 38078
                  lui          t0, 74432
                  bgeu         s9, t0, 15f
                  slti         tp, a2, 778
                  and          a6, a2, a2
                  or           a1, a0, a1
                  or           t3, s2, s0
                  beq          a2, s10, 21f
                  addi         s2, s0, -1840
                  beq          s11, t3, 23f
                  add          zero, sp, s10
                  srli         s4, ra, 14
                  bge          s0, s0, 26f
                  bne          s2, a0, 27f
15:               add          t5, s7, t6
                  slli         t2, s11, 27
                  srl          zero, s7, t3
                  sra          s8, a0, a4
                  and          s8, s1, t4
                  srli         sp, s8, 10
21:               and          s10, s1, a5
                  slt          t6, tp, a2
23:               nop
                  beq          s10, s8, 38f
                  srl          gp, a5, s0
26:               sltu         tp, s11, a5
27:               sltiu        s6, t1, 1660
                  srli         s0, s3, 4
                  sll          sp, tp, sp
                  beq          t6, t3, 31f
31:               srai         a1, a5, 11
                  lui          a6, 35950
                  lui          s6, 654035
                  slt          gp, s11, sp
                  srai         s5, s8, 11
                  srl          t3, a5, a2
                  sll          t5, a7, s8
38:               beq          s9, t4, 57f
                  bgeu         t2, t4, 51f
                  sra          s6, sp, a4
                  sub          s1, t1, sp
                  slt          t5, a5, a7
                  xori         s1, s3, -218
                  nop
                  or           s10, a7, s5
                  xor          a3, t4, t0
                  sub          t6, s2, a1
                  and          s5, s11, s9
                  xor          t5, t2, sp
                  slli         s6, s0, 30
51:               slt          t1, t5, sp
                  and          a4, s9, gp
                  slli         s9, zero, 1
                  sltiu        s10, gp, -388
                  addi         s11, a6, -1323
                  ori          a7, s5, 1585
57:               bgeu         s4, a0, 63f
                  sub          s1, s4, s4
                  andi         a1, s10, 310
                  slti         a3, s10, 5
                  lui          a1, 686623
                  srl          a0, a6, t5
63:               slli         t6, s4, 27
                  or           t3, s4, zero
                  and          sp, t5, gp
                  andi         t3, t6, 1857
                  bgeu         a0, t6, 80f
                  bge          tp, t4, 80f
                  nop
                  srli         t2, t4, 29
                  xor          s0, a7, s7
                  add          s5, ra, s2
                  ori          t3, sp, -1842
                  slt          a0, t2, s9
                  beq          t6, a3, 82f
                  slli         a0, s10, 3
                  srli         s8, ra, 9
                  ori          s8, sp, 1967
                  sll          gp, t5, t2
80:               add          s7, a3, s8
                  add          gp, s0, s11
82:               slt          t1, s4, t4
                  slt          gp, s9, s5
                  addi         a5, a2, -1329
                  srli         s3, s4, 8
                  bltu         a6, t6, 99f
                  add          a6, s4, s1
                  xori         s1, a0, 156
                  xori         t0, s9, 630
                  auipc        s2, 815222
                  nop
                  srli         s8, t0, 26
                  srli         t2, a1, 12
                  srl          a6, s9, t0
                  srai         s0, t6, 14
                  ori          a0, s9, -1885
                  srli         s7, t0, 15
                  andi         a7, t2, 59
99:               beq          s2, s8, 103f
                  sltu         a4, s11, a4
                  bne          s1, s3, 104f
                  slli         s0, a6, 19
103:              srli         s9, t1, 5
104:              bge          t5, s2, 106f
                  slli         a0, s9, 13
106:              sub          s1, t2, tp
                  sll          a0, t0, zero
                  sub          a7, s3, t3
                  srli         t2, s11, 18
                  bgeu         a5, s0, 117f
                  sub          s0, a4, a1
                  srl          s6, t2, s3
                  ori          t1, s8, -848
                  addi         sp, s7, -1521
                  slti         t0, a4, -1280
                  sll          zero, t2, a4
117:              and          sp, s11, s6
                  bltu         gp, s9, 122f
                  blt          t6, s8, 128f
                  add          a3, a7, s6
                  add          s11, t6, t2
122:              sll          s10, s0, ra
                  or           s6, s1, t5
                  auipc        s4, 903167
                  sra          t0, ra, t5
                  sll          sp, t0, sp
                  xor          s3, a2, s1
128:              srli         sp, a7, 5
                  andi         t3, a4, 370
                  add          sp, s8, a2
                  slt          zero, a3, a4
                  xori         s2, s6, 495
                  bne          sp, t1, 146f
                  slt          s5, s7, s0
                  sltiu        s2, s1, -227
                  or           s0, s8, zero
                  sub          t2, s4, s4
                  sltu         s10, t5, t2
                  sltu         t0, a6, t0
                  sltiu        t1, s10, 1000
                  and          s7, t5, a3
                  srli         s7, s5, 14
                  addi         s3, zero, -181
                  xor          s10, a2, a5
                  add          a4, s10, ra
146:              srl          s2, t6, a6
                  bge          s1, a2, 154f
                  add          s6, s1, s3
                  or           t0, t2, s8
                  sltiu        s3, t2, 213
                  nop
                  or           t1, s9, gp
                  slt          s5, a2, t2
154:              sll          s10, t3, s10
                  andi         gp, t5, -1715
                  slt          t2, t6, s2
                  xori         a6, s7, 1851
                  sltiu        s4, a0, 959
                  or           t0, s6, a6
                  srli         a7, s2, 7
                  xori         t6, s3, 356
                  beq          gp, a0, 165f
                  srai         a4, s4, 3
                  xor          s1, s6, a3
165:              sra          a4, s3, t3
                  xor          s5, s2, a6
                  la           tp, region_0+1068 #start load_store_instr_stream_0
                  la           a1, region_0+911 #start load_store_instr_stream_1
                  lh           s10, 236(tp)
                  lw           s1, -11(a1)
                  lbu          s11, 232(tp)
                  lb           s6, -6(a1)
                  lbu          sp, 52(tp)
                  sb           t3, 15(a1)
                  sb           sp, -113(tp)
                  lb           s3, 15(a1)
                  lb           s9, -1(a1)
                  lb           s11, -39(tp)
                  sb           gp, -181(tp)
                  lh           s5, -15(a1)
                  lw           t3, 1(a1) #end load_store_instr_stream_1
                  sb           t4, -1(tp) #end load_store_instr_stream_0
                  ori          a1, t4, 70
                  bltu         ra, a5, 188f
                  slti         a7, a4, -109
                  and          s2, ra, sp
                  addi         a3, sp, -1933
                  auipc        s1, 472959
                  sltu         s1, tp, s5
                  ori          s1, a4, 60
                  ori          t3, s2, 202
                  addi         t6, a2, -281
                  blt          t3, s3, 196f
                  srl          a3, gp, a5
                  sltiu        s3, s9, -208
                  auipc        t5, 127096
                  or           s2, a2, tp
                  lui          s4, 322276
                  ori          s2, zero, -1872
                  add          gp, a4, a6
                  slli         a5, s5, 14
                  slli         t0, s11, 14
                  sll          s2, s1, s5
188:              or           s7, t0, s8
                  sra          s3, a6, tp
                  or           t2, s2, zero
                  srl          t1, zero, t6
                  xori         a5, s1, 1905
                  xor          s10, a7, t5
                  ori          t1, a2, -1570
                  bne          s4, a7, 210f
196:              sll          s2, t0, s5
                  sub          a3, s6, ra
                  sltu         a5, a7, s10
                  lui          s10, 527210
                  slli         tp, a6, 3
                  sll          s11, s7, ra
                  xor          t6, zero, t1
                  bltu         s9, s4, 210f
                  add          t5, t0, a0
                  sll          a0, a4, t6
                  sll          a7, s10, s3
                  slt          sp, s7, t0
                  slt          s9, a2, a7
                  bne          s11, a5, 214f
210:              blt          a2, t0, 225f
                  srli         s4, t3, 8
                  and          s1, t6, t2
                  srai         s7, t2, 12
214:              sll          a5, s10, s4
                  lui          s10, 359701
                  bge          zero, a3, 218f
                  sltiu        a3, tp, 772
218:              srai         s2, s11, 7
                  nop
                  sltiu        s0, a4, -1812
                  srl          t3, a1, t4
                  srli         s9, s5, 16
                  lui          t3, 445895
                  sll          a4, t1, a6
225:              sub          s7, s3, a0
                  xor          a4, sp, t0
                  ori          t2, s8, 1946
                  sltu         t6, a0, t4
                  or           s5, s7, s11
                  ori          a7, s1, -1539
                  sltiu        gp, a7, 1551
                  andi         s6, s0, -872
                  or           s8, a7, a0
                  andi         s8, ra, 825
                  blt          s3, s3, 255f
                  bge          s6, sp, 249f
                  blt          t5, tp, 241f
                  slti         t0, t1, 1448
                  srli         gp, s7, 2
                  slt          s6, s5, zero
241:              sub          s7, s5, tp
                  sll          gp, s6, s3
                  srli         zero, s11, 26
                  or           s3, t3, s5
                  srai         t5, t4, 19
                  andi         t3, s2, -1102
                  lui          gp, 641217
                  lui          t6, 962196
249:              bne          a7, tp, 253f
                  bge          a1, ra, 262f
                  srl          sp, s3, a5
                  lui          t6, 444914
253:              ori          t5, t5, 618
                  sltiu        a7, s3, -178
255:              andi         s7, s5, 1972
                  srai         sp, s0, 21
                  slli         sp, s3, 15
                  xori         tp, a6, 896
                  auipc        zero, 884075
                  xor          s3, t6, s2
                  xor          a3, t4, a7
262:              slli         a0, a4, 11
                  slti         a3, gp, 1464
                  addi         t3, sp, -519
                  nop
                  and          tp, a2, sp
                  xori         gp, t3, -702
                  sltiu        a0, s8, -1127
                  xori         s4, t1, 1224
                  add          s11, s3, t3
                  bgeu         a4, a3, 290f
                  xor          zero, s2, sp
                  ori          s6, s7, 652
                  srl          s5, a6, t5
                  srai         s9, s10, 18
                  ori          s5, ra, -1200
                  slti         t6, a3, 1383
                  xori         a5, s4, 323
                  bge          gp, a3, 286f
                  sll          a6, s1, s8
                  sll          sp, zero, s3
                  add          s3, t4, s1
                  bgeu         t6, a7, 284f
284:              auipc        a3, 114262
                  and          s2, a6, sp
286:              nop
                  sltiu        sp, tp, -1436
                  srai         a3, tp, 17
                  and          s6, s4, s5
290:              andi         t0, s1, -1321
                  la           a6, region_1+311 #start load_store_instr_stream_3
                  lhu          tp, 89(a6)
                  la           a1, region_1+522 #start load_store_instr_stream_2
                  la           t0, region_1+1677 #start load_store_instr_stream_1
                  sb           t2, 74(t0)
                  la           s5, region_1+534 #start load_store_instr_stream_0
                  lbu          a3, 44(a6)
                  lb           s7, -166(a6)
                  lb           a7, 225(a1)
                  sb           s2, -224(t0)
                  lb           s1, 128(t0)
                  lbu          s11, 141(a1)
                  lbu          t5, 165(s5)
                  lhu          zero, 235(t0)
                  lbu          a5, -30(a6)
                  lhu          s9, -142(s5)
                  lbu          s8, -71(t0)
                  lb           s3, 191(s5)
                  lbu          t5, -109(t0)
                  lbu          t2, 255(a1)
                  lb           s4, -232(a6)
                  lhu          a3, -222(a1)
                  lbu          s9, -221(s5)
                  sb           t5, 162(t0)
                  lbu          t6, -82(s5)
                  lw           s2, -33(t0)
                  lb           gp, -68(a6)
                  lb           s11, -134(t0)
                  sb           a1, -104(a6)
                  lbu          s10, -166(a6) #end load_store_instr_stream_3
                  lh           a3, 96(a1) #end load_store_instr_stream_2
                  sb           gp, -209(t0) #end load_store_instr_stream_1
                  lh           s10, 244(s5)
                  sh           s8, -48(s5) #end load_store_instr_stream_0
                  slti         t2, ra, -1283
                  bne          a5, s7, 305f
                  add          s5, s4, t0
                  slli         s9, s1, 27
                  xor          a3, s6, a5
                  sltu         a5, a5, a3
                  blt          sp, s7, 310f
                  andi         a5, s6, 1077
                  blt          s9, t2, 301f
                  sltiu        tp, a7, -737
301:              or           a7, s7, t1
                  add          tp, s2, a1
                  bge          t2, zero, 318f
                  bge          s10, a0, 311f
305:              sub          s7, s10, t2
                  xor          a6, s0, t0
                  beq          s0, s2, 310f
                  srli         sp, s1, 10
                  blt          s3, sp, 322f
310:              sra          t5, s10, t6
311:              nop
                  auipc        s5, 563297
                  sub          s6, s9, t4
                  nop
                  blt          s11, t4, 324f
                  sltu         s6, a6, s0
                  xori         t0, s7, 1743
318:              srli         s10, ra, 28
                  srli         s6, a5, 0
                  addi         t0, a5, -1066
                  beq          t0, a2, 326f
322:              or           t5, a2, a6
                  ori          s1, s5, -1253
324:              sra          t6, s5, t4
                  andi         a0, s8, -1250
326:              srai         s2, s3, 11
                  bgeu         s11, t1, 342f
                  slt          t3, a4, a0
                  srli         t3, s5, 7
                  bgeu         t0, a7, 343f
                  blt          s3, a6, 338f
                  sll          s8, a6, t6
                  and          t5, t2, s11
                  xori         s8, a5, 1400
                  beq          s10, s6, 347f
                  sltiu        s0, s0, 1235
                  addi         a5, t5, 1034
338:              xor          s9, t2, s11
                  auipc        a3, 571992
                  lui          t5, 615181
                  slti         tp, a7, -1015
342:              bltu         t6, zero, 356f
343:              bgeu         s6, sp, 346f
                  bgeu         t6, s4, 351f
                  sra          t0, t3, a5
346:              srai         sp, t2, 28
347:              xori         s11, zero, -1671
                  srl          a0, s5, s3
                  auipc        a1, 204103
                  add          a6, s3, s1
351:              sltu         s0, s1, s1
                  bgeu         s2, a6, 365f
                  or           s11, s2, s3
                  beq          tp, s4, 360f
                  and          a4, a2, t1
356:              addi         sp, s6, 1971
                  and          s0, s10, t2
                  slti         a7, a6, 1935
                  sra          t1, s5, s9
360:              and          s1, t0, s9
                  andi         s3, s7, -1598
                  slti         t1, t4, -1017
                  bltu         a0, gp, 382f
                  xor          t5, gp, t3
365:              nop
                  andi         s2, t0, -15
                  srli         a3, t4, 0
                  xori         sp, a7, -1117
                  beq          gp, s3, 382f
                  auipc        t3, 760236
                  sltu         s10, s0, s9
                  sub          t1, t4, s6
                  srl          s10, s3, a1
                  srl          t3, s6, s9
                  and          s3, zero, s0
                  and          gp, a7, s0
                  xori         a4, s8, -668
                  xori         a6, a2, -1751
                  addi         sp, t1, -1172
                  srl          tp, a4, t4
                  lui          s7, 36048
382:              lui          s9, 422680
                  nop
                  sra          s8, a0, a1
                  sltiu        t2, s9, -1610
                  srai         s6, a0, 25
                  xori         t6, ra, -1211
                  sltu         s3, t6, t3
                  andi         sp, s9, -1135
                  sub          s6, t1, t5
                  add          s4, a3, s9
                  ori          s2, t1, -1178
                  blt          t2, s1, 405f
                  slli         t2, gp, 1
                  slti         s9, s3, -1602
                  bne          a7, s0, 398f
                  addi         s10, s11, 1799
398:              sub          zero, gp, a6
                  slt          s9, s3, t4
                  blt          a2, s11, 403f
                  auipc        t3, 35884
                  srai         a6, s4, 27
403:              nop
                  slli         a6, s7, 30
405:              or           a7, t4, a3
                  andi         gp, sp, 1552
                  auipc        t1, 500627
                  blt          a5, t3, 421f
                  sltiu        s11, s4, 1658
                  slti         s6, t6, -887
                  srai         a5, s7, 20
                  sub          t2, t0, s3
                  andi         sp, s11, -1417
                  sltiu        gp, s11, 500
                  andi         t2, t4, -624
                  add          gp, s9, sp
                  auipc        sp, 872374
                  sll          s6, s5, a0
                  sub          s9, s10, gp
                  lui          t5, 445648
421:              bltu         s2, a3, 434f
                  slli         s2, a6, 24
                  ori          s0, gp, 472
                  sltiu        s10, sp, -414
                  or           t2, s6, t1
                  andi         t0, a7, 1557
                  ori          s8, s10, 534
                  slli         s2, t5, 26
                  xori         s9, s11, 1040
                  or           s8, a6, tp
                  and          a6, t6, a6
                  ori          s7, a5, -716
                  ori          zero, s9, 90
434:              xor          s1, a5, s11
                  sub          a4, gp, t6
                  bltu         a1, a1, 455f
                  bge          zero, t2, 442f
                  sub          a0, a3, a6
                  nop
                  sub          t2, a4, s6
                  bgeu         a0, a4, 448f
442:              add          s9, s8, s4
                  sll          t6, a3, s2
                  xor          s11, a0, s8
                  nop
                  sll          s0, a3, t5
                  bgeu         s7, s11, 456f
448:              and          s1, gp, t3
                  srai         t0, a2, 1
                  auipc        sp, 892626
                  nop
                  beq          a0, sp, 459f
                  srai         t2, a6, 31
                  sra          s2, s10, s5
455:              sltu         sp, tp, t1
456:              addi         s2, zero, 1153
                  bltu         sp, gp, 459f
                  slti         a1, s7, 116
459:              srai         a7, a1, 31
                  srli         s3, gp, 7
                  lw           t1, 4(a2)
                  add          t2, a2, t5
                  xor          a4, s5, a6
                  slt          s10, s1, s3
                  auipc        t0, 610328
                  addi         a1, t0, -1020
                  addi         a2, a2, 12
                  slti         a3, s10, 1941
                  xori         s2, t6, 1382
                  srl          s0, a3, t0
                  ori          s0, t2, 900
801:              addi x28, x6, 1
801:              jalr x28, x28, 0
sub_1:            beq          a1, s9, sub_1_stack_p
sub_1_stack_p:    addi         a2, a2, -32
                  sra          a0, s2, s3
                  sw           t1, 4(a2)
                  auipc        s7, 4755
                  andi         s5, t0, -673
                  srli         s10, sp, 24
                  srl          s0, a1, zero
                  ori          a7, s5, -1083
                  sltiu        s4, a4, 1587
                  la           s9, region_0+361 #start load_store_instr_stream_0
                  la           t6, region_0+282 #start load_store_instr_stream_1
                  lb           s8, 12(s9)
                  la           s10, region_0+415 #start load_store_instr_stream_2
                  lw           a4, -170(t6)
                  lb           a0, -109(t6)
                  lbu          s7, 14(s9)
                  lh           a3, 11(s10)
                  lbu          t5, -17(t6)
                  lh           a6, 63(s10)
                  lbu          s8, 189(t6)
                  sb           s10, -14(s10)
                  lh           a0, 11(s9)
                  sh           s6, 44(t6)
                  sb           s5, -235(t6)
                  lbu          s4, 20(s10)
                  lbu          a4, 127(t6) #end load_store_instr_stream_1
                  lhu          t1, 11(s10)
                  lhu          tp, 31(s10) #end load_store_instr_stream_2
                  lb           t0, -1(s9)
                  lb           a0, 6(s9) #end load_store_instr_stream_0
                  la           s8, region_1+1091 #start riscv_load_store_rand_instr_stream_0
                  lh           t3, -297(s8)
                  sub          a4, s5, t5
                  add          s11, a2, tp
                  sh           s7, -65(s8)
                  nop
                  lbu          a5, -662(s8)
                  sb           s4, -709(s8)
                  xor          t2, t3, a4
                  lhu          s5, 695(s8)
                  sb           a2, -434(s8)
                  add          t3, s9, s8
                  sb           s10, 72(s8)
                  lbu          s6, 810(s8)
                  sh           tp, 891(s8)
                  sh           s7, -273(s8)
                  or           s9, a1, t1
                  lbu          s5, 83(s8)
                  sw           a4, -727(s8)
                  lbu          t1, 884(s8)
                  addi         a1, a7, 394
                  sltiu        t6, gp, -364
                  addi         s0, t0, -1598
                  srai         a3, s5, 9
                  lb           s2, 328(s8)
                  srli         a5, t6, 18
                  andi         t1, s8, -360
                  and          sp, t0, s7
                  auipc        a7, 77999
                  lw           t5, -187(s8)
                  lbu          t1, -804(s8)
                  add          s10, s9, s10
                  lb           zero, -368(s8)
                  sh           tp, -351(s8)
                  sb           t2, 84(s8)
                  slli         t5, ra, 30
                  lbu          tp, 167(s8)
                  lb           a7, -685(s8)
                  lhu          t6, -1041(s8)
                  xori         s10, t3, -1734
                  lbu          s2, -460(s8)
                  lbu          a5, -879(s8)
                  srai         s1, t2, 25
                  lb           a0, 166(s8)
                  lb           zero, -990(s8) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+1721 #start riscv_load_store_rand_instr_stream_1
                  lb           t6, -12(s11)
                  slt          s7, sp, t1
                  srl          s9, a6, a1
                  lbu          s6, 5(s11)
                  ori          gp, t4, 1304
                  lhu          s1, -1(s11)
                  lbu          t5, 16(s11)
                  lbu          tp, 6(s11)
                  sb           t3, -14(s11)
                  andi         s3, a2, 1909
                  slli         s7, s6, 10
                  slt          s0, t1, a5
                  or           a6, s10, s0
                  sll          s10, a5, a4
                  sb           s6, 8(s11)
                  xori         s0, s1, -1029
                  sh           s1, -3(s11)
                  slt          a3, sp, s1
                  nop
                  srai         a4, tp, 28
                  lbu          a1, -2(s11)
                  or           a7, a2, t2
                  sb           gp, -11(s11)
                  xor          s10, a6, s0
                  lbu          t6, -3(s11)
                  sh           a0, 1(s11)
                  sh           t2, -1(s11)
                  srl          s0, t6, a4
                  lbu          s9, -15(s11)
                  lbu          s5, -2(s11)
                  nop
                  lh           a3, 7(s11)
                  slli         s6, a1, 24
                  sltu         s10, s11, t4
                  andi         a4, zero, 1878
                  lb           tp, -2(s11)
                  lbu          t5, 0(s11)
                  lb           s8, 14(s11) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_1+630 #start riscv_load_store_hazard_instr_stream_1
                  sb           zero, 69(s1)
                  sb           s9, 565(s1)
                  add          t5, tp, t3
                  xor          s5, t4, s2
                  lb           a6, 229(s1)
                  sb           s8, 229(s1)
                  sltiu        a7, t3, -1736
                  lw           s7, 1334(s1)
                  lbu          t1, 1334(s1)
                  sw           a3, 1334(s1)
                  lh           s8, 1334(s1)
                  lb           s0, 1334(s1)
                  sltiu        a3, t2, -2025
                  lw           s8, 1334(s1)
                  sh           t1, 1334(s1)
                  lb           s8, 1334(s1)
                  lb           a3, 1334(s1)
                  lbu          s3, 1334(s1)
                  sw           s5, 1334(s1) #end riscv_load_store_hazard_instr_stream_1
                  la           s7, region_0+878 #start load_store_instr_stream_4
                  la           t6, region_0+1049 #start load_store_instr_stream_3
                  la           t0, region_0+370 #start load_store_instr_stream_2
                  lh           sp, 12(t0)
                  la           s10, region_0+595 #start load_store_instr_stream_1
                  lb           t5, 15(t0)
                  la           s3, region_0+668 #start load_store_instr_stream_0
                  lhu          s4, -47(s10)
                  sb           a4, 10(s10)
                  lb           s8, -7(t0)
                  lb           s4, -937(t6)
                  sb           t4, 863(s7)
                  sb           a4, 62(s10)
                  lb           t5, 1105(s7)
                  lh           s11, 418(s7)
                  lhu          a6, -138(s3)
                  sb           s7, 64(s10)
                  sb           s11, 257(t6)
                  lh           s11, 188(s3)
                  lw           a7, -370(s7)
                  lbu          s9, -160(t6)
                  lh           s1, -86(s3)
                  lhu          a0, 4(t0)
                  lb           t2, 129(s3)
                  sb           s1, 987(s7) #end load_store_instr_stream_4
                  lb           zero, 2(t0)
                  lbu          a3, 24(s10)
                  sh           s1, 23(s10)
                  sb           a4, 103(s3)
                  lbu          t2, -14(t0)
                  sb           t1, -53(s3)
                  lbu          t1, 664(t6)
                  lb           a5, -21(s10)
                  lbu          a6, -13(t6)
                  sb           a7, 8(s10) #end load_store_instr_stream_1
                  lbu          t3, 15(t0)
                  lh           s2, 212(s3)
                  sb           a6, -11(t0)
                  lw           s6, -14(t0) #end load_store_instr_stream_2
                  sw           a1, -157(t6) #end load_store_instr_stream_3
                  lb           zero, 175(s3) #end load_store_instr_stream_0
                  la           sp, region_1+961 #start riscv_load_store_hazard_instr_stream_0
                  slti         s0, t6, 1073
                  sb           t4, -35(sp)
                  lb           s1, 64(sp)
                  lb           a1, 64(sp)
                  lb           gp, -7(sp)
                  lbu          s7, -7(sp)
                  lbu          s9, -7(sp)
                  lhu          s4, -7(sp)
                  lb           t3, -4(sp)
                  sb           a1, -20(sp)
                  sb           t3, 33(sp)
                  lbu          s7, -14(sp) #end riscv_load_store_hazard_instr_stream_0
                  nop
                  beq          s2, a6, 20f
                  sll          tp, t4, zero
                  sltiu        a7, tp, -253
                  bge          tp, s4, 11f
                  bltu         a5, s5, 9f
                  ori          sp, a2, -1325
                  xor          sp, sp, ra
                  nop
9:                sll          s11, s5, a4
                  slt          a7, a6, s1
11:               bge          a3, t5, 19f
                  beq          s5, t5, 32f
                  beq          t0, sp, 25f
                  bne          s6, a5, 16f
                  sltiu        a3, t3, 1386
16:               sra          s4, s9, a3
                  slti         a3, a0, 359
                  srl          t5, s5, s1
19:               bge          s8, tp, 39f
20:               xori         s6, a1, -219
                  slt          a6, ra, s3
                  slti         s5, a0, -956
                  srli         t2, s9, 22
                  andi         s8, zero, -1741
25:               add          s10, s5, a7
                  beq          s11, s8, 34f
                  blt          tp, t0, 32f
                  blt          a2, t5, 35f
                  slti         s11, t1, -1668
                  bge          s8, s8, 43f
                  nop
32:               xor          t5, a6, a0
                  srai         zero, a6, 30
34:               srai         t2, s10, 25
35:               add          gp, s3, zero
                  srl          s4, s0, t5
                  addi         t1, a0, 554
                  srli         s6, a4, 31
39:               lui          t0, 282421
                  sltu         t3, t5, ra
                  auipc        t1, 921421
                  add          s0, t1, a6
43:               bne          t0, t1, 46f
                  and          s7, s8, a4
                  bge          t3, a7, 52f
46:               srl          tp, s5, t5
                  auipc        a5, 936227
                  bge          s0, t2, 67f
                  srli         s8, t4, 2
                  srai         t0, t6, 12
                  lui          gp, 198362
52:               srl          s10, a5, s2
                  and          t6, t6, a7
                  or           s10, s7, ra
                  bltu         s4, sp, 64f
                  sltu         s7, a2, zero
                  sra          s9, s2, t0
                  sltiu        s5, a1, 124
                  srli         a5, a4, 18
                  andi         gp, t0, 1795
                  or           s2, s7, tp
                  xori         s7, a2, 966
                  slli         t1, t0, 19
64:               sub          tp, t6, a0
                  and          s0, gp, s11
                  auipc        zero, 839142
67:               ori          s9, t0, -1460
                  sll          t2, a4, s1
                  blt          tp, t1, 79f
                  bne          s9, s8, 90f
                  xori         tp, a4, 465
                  lui          sp, 678614
                  sub          s8, s3, sp
                  srl          t6, s6, s0
                  xor          t2, a5, s1
                  sra          s4, ra, s4
                  and          sp, s11, a7
                  bne          s10, ra, 93f
79:               slt          s11, s7, s7
                  slti         s9, s5, 1506
                  and          s2, a0, t3
                  ori          t3, t4, 913
                  srl          t3, s5, s5
                  lui          tp, 507704
                  auipc        s6, 1006674
                  nop
                  blt          t6, a3, 91f
                  bltu         a1, s4, 92f
                  srl          sp, t0, t2
90:               slt          a3, a7, s3
91:               beq          a6, a6, 109f
92:               slt          a6, sp, t2
93:               or           s8, sp, s1
                  srl          s9, s7, s5
                  and          t1, a4, s2
                  andi         t2, t5, -1402
                  xor          a1, t4, gp
                  slt          t0, s2, a3
                  sltu         s6, s6, t1
                  xori         a0, t4, -665
                  slli         t6, ra, 21
                  add          t2, t0, s3
                  xori         a3, a0, -99
                  sll          t6, s7, s8
                  lui          t0, 595412
                  lui          t0, 511977
                  addi         s11, s1, 1991
                  srl          gp, s11, s5
109:              srl          a1, s11, a7
                  add          s0, t6, t0
                  beq          tp, s9, 117f
                  or           t5, s8, s0
                  addi         a0, a7, 525
                  slt          s8, a7, s0
                  andi         t2, t6, -195
                  srl          s7, tp, t0
117:              addi         zero, a1, -911
                  andi         s4, gp, 936
                  slti         a4, s3, 1691
                  sub          a1, a4, t2
                  ori          s10, a4, -1277
                  srli         s7, a4, 7
                  srl          a6, a4, zero
                  sra          s9, s8, t1
                  bltu         t0, s6, 128f
                  srli         t2, ra, 0
                  slt          s9, s4, t6
128:              sub          s9, a5, a0
                  ori          a0, s11, 1552
                  slli         s0, a1, 22
                  srl          s1, a0, a3
                  sub          zero, s10, a5
                  xor          s7, t0, s4
                  blt          s5, a5, 146f
                  bge          a6, s9, 138f
                  bne          a3, t5, 142f
                  bne          a4, t5, 152f
138:              and          a1, s4, s3
                  bgeu         a6, a0, 147f
                  lui          s1, 471327
                  beq          a3, zero, 157f
142:              xor          t2, t6, s1
                  sltiu        a0, t2, -815
                  bgeu         a6, t3, 148f
                  beq          s11, a2, 163f
146:              andi         s3, t6, 1436
147:              sra          s9, s6, s6
148:              and          s0, s4, t3
                  addi         s4, a2, -1488
                  or           s7, a6, s5
                  srl          a7, a0, tp
152:              lui          s2, 173708
                  nop
                  sltiu        a1, t4, -1712
                  slti         s6, t1, 743
                  sltiu        t2, gp, -705
157:              sra          zero, a1, s2
                  sub          zero, s11, tp
                  sra          t1, t0, s0
                  xori         a1, t5, 1557
                  sra          s4, tp, zero
                  bltu         t3, s3, 165f
163:              bgeu         s2, s4, 171f
                  sltiu        a3, s11, 1812
165:              sltiu        s9, tp, 713
                  or           s2, a4, t1
                  srl          s4, s6, a3
                  bgeu         s3, s5, 188f
                  bge          a1, t4, 184f
                  nop
171:              ori          t3, a4, -223
                  slt          t0, a4, t6
                  add          a7, a7, tp
                  srli         a0, t6, 11
                  beq          a7, t0, 195f
                  sub          s10, a4, a4
                  bge          s2, gp, 181f
                  add          zero, s3, tp
                  slti         gp, s10, 531
                  beq          s3, s10, 182f
181:              slli         s11, a2, 26
182:              blt          tp, t3, 191f
                  sll          s0, s0, ra
184:              andi         s11, t3, -522
                  and          a1, t2, a3
                  xor          t5, s9, s9
                  slli         t5, gp, 20
188:              andi         s6, a3, -1421
                  slli         s10, a3, 12
                  slli         t1, a2, 29
191:              sra          a4, s4, a6
                  slti         gp, s5, 1016
                  auipc        a4, 169702
                  ori          a5, t2, -439
195:              xor          s0, a7, ra
                  sra          s2, s1, a0
                  slt          s3, s7, s10
                  xori         a5, zero, 1741
                  bne          t1, s1, 219f
                  add          gp, sp, gp
                  bne          s5, s4, 211f
                  lui          s10, 682000
                  xori         t5, s11, -1073
                  slti         a7, t0, -1763
                  nop
                  sltiu        a5, s6, 368
                  add          s2, tp, sp
                  auipc        t1, 215838
                  sll          t6, s0, s11
                  and          gp, t0, gp
211:              xori         s1, t4, 1877
                  ori          s10, s10, -832
                  auipc        s1, 818289
                  bltu         a3, s3, 233f
                  slli         t1, sp, 6
                  sll          sp, s8, gp
                  ori          t0, t6, -1332
                  nop
219:              sltiu        s9, t6, 1284
                  ori          s3, sp, 741
                  lui          sp, 952700
                  beq          t4, s1, 229f
                  sltu         a1, s11, s9
                  sub          s11, a5, zero
                  srli         s8, a6, 13
                  sltu         a1, zero, a1
                  bltu         s11, t1, 235f
                  bltu         t3, sp, 231f
229:              andi         a4, s0, -1643
                  or           a0, t1, zero
231:              slti         t5, t1, 382
                  slt          a5, t1, s9
233:              and          s7, s5, t2
                  xor          t5, a4, a1
235:              sltu         s10, t6, s8
                  nop
                  ori          a1, sp, 1779
                  srai         s7, s7, 14
                  blt          t5, ra, 251f
                  auipc        s2, 393794
                  bne          t0, s1, 244f
                  bge          tp, t1, 254f
                  auipc        sp, 610587
244:              xori         t3, a3, -1365
                  beq          tp, t5, 252f
                  blt          s2, t4, 251f
                  sltu         s4, s8, s10
                  addi         s7, t2, 1687
                  sub          a4, s1, ra
                  sub          t5, a5, a1
251:              sub          s10, s6, s10
252:              srli         s2, a3, 21
                  srl          a1, t5, s8
254:              blt          sp, a6, 261f
                  xori         t6, tp, -1554
                  srli         s5, s11, 28
                  sltiu        t2, t5, 1971
                  add          s4, a5, ra
                  nop
                  andi         a1, t0, -19
261:              sra          a6, a3, s2
                  xori         s8, s7, -735
                  and          a0, s2, s4
                  blt          a7, t6, 279f
                  xor          gp, a6, a6
                  slti         s5, a2, -1272
                  slt          s6, a1, s10
                  blt          s6, a7, 279f
                  auipc        s10, 807390
                  slli         zero, s1, 1
                  addi         zero, a1, 1949
                  sll          t3, t0, a7
                  andi         s8, a6, 1130
                  srl          s3, s6, s11
                  nop
                  addi         a7, t0, 5
                  slt          zero, s6, t5
                  bltu         s10, a5, 279f
279:              slli         zero, sp, 25
                  lw           t1, 4(a2)
                  slti         a7, a4, 203
                  srai         a0, a3, 24
                  sub          gp, s2, s9
                  slt          sp, s1, a4
                  ori          s4, a3, -1892
                  slti         a5, s1, 88
                  addi         a2, a2, 32
                  srl          s8, a3, s0
                  ori          a5, t2, -1434
                  sltiu        t0, s10, 137
                  sub          s9, s2, t3
481:              addi x3, x6, 1
481:              jalr x3, x3, 0
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
.word 0x3b3f2570, 0xe59ef42c, 0x70ba6ec0, 0x17c29815, 0x7836c09e, 0x9df7a214, 0x7b687e90, 0x0bafb4c0
.word 0x30ce4580, 0x5a740c56, 0xdcb618e2, 0x1fb7c384, 0xf6937981, 0xafc6b32b, 0x740f0d90, 0x730050d0
.word 0xe40cd476, 0x42279dc0, 0x553beace, 0x1655241e, 0x5ba26828, 0x2f1ec249, 0x3b7b836b, 0x12a24261
.word 0x84be9713, 0xf2d6d755, 0xabf76b4c, 0x415b3d06, 0x25d97e88, 0xccff8ff7, 0xd4a79b17, 0x4f8b6164
.word 0xb0566814, 0xa265d31d, 0xf9f25b6e, 0xe0e6e5de, 0x7d3de49e, 0x76d02393, 0xa59898b3, 0xd7ec75ab
.word 0xc643aebe, 0x44da577c, 0x96f032b3, 0x8e3a85f1, 0x9b95864d, 0xcb21cc7d, 0x67854e70, 0x6e3e8c08
.word 0x1e16000d, 0xaddb299b, 0xf2ab8369, 0xc08942da, 0xce171e58, 0x987d2045, 0x9a31197b, 0xde189637
.word 0x216f98b8, 0x849ace8f, 0x9888df81, 0x388a5ac1, 0x000faf90, 0xb35562f8, 0x01f76e41, 0x5a8850a9
.word 0x6554529c, 0xbb8d829f, 0x4bcfdd41, 0xf5da12bf, 0x20d806e9, 0x582ab921, 0x22dc7e79, 0x50745842
.word 0x984538cd, 0xda5589fe, 0x6d0ea836, 0x40619d3e, 0x29e1a302, 0x96170e45, 0xd99f5838, 0x8e8cc51b
.word 0xb25bc2b6, 0x43405bce, 0xfb9d929d, 0x399cdec4, 0x7e62678e, 0xd91688d8, 0xd8eca695, 0x16cb6107
.word 0x05f6bbc0, 0x34b6006a, 0xa23e69a3, 0x7199690c, 0xef32b9c2, 0x0a675a64, 0xa07a3a8e, 0x5699f7be
.word 0xd5141502, 0x2df01f1d, 0xc01e9f0c, 0xedd5da4c, 0x23e242dc, 0xd31109a0, 0xc7574d66, 0x35add789
.word 0xebc3836f, 0xbe833050, 0x6071086b, 0xfdaec349, 0xae37f613, 0x6861b7df, 0xe5c8106a, 0xd9bee59a
.word 0xd700b8c1, 0x7d07160c, 0x25f645b3, 0xb3561519, 0x443cc1f0, 0x6cd330d6, 0xf4d9f4c4, 0x79448c4a
.word 0x53c295b6, 0x6ce3335f, 0xc943573d, 0x4b8ce981, 0xb025b716, 0xf4449dba, 0x6d7759bd, 0x5ed3f589
.word 0x0e4095b3, 0xeed11344, 0xe04b5a6c, 0xe6d9ebc7, 0x2545f07f, 0x956f4d74, 0x39382dd3, 0xdcb8ed19
.word 0x1ab8909b, 0x21be26fb, 0x5e8dbf45, 0x0bc5688b, 0xfd3cc528, 0xc94ddf10, 0x8d7efc54, 0x9426fac2
.word 0x81da05ce, 0xe3341422, 0x2b38e324, 0x3289c025, 0x46236902, 0x97dec5c1, 0xb04ce9c4, 0x7573db18
.word 0x021c6947, 0x35d7ad13, 0xd45df837, 0xad8a96ba, 0x492101ab, 0x41ed46cb, 0x3bd4bf5c, 0x62beb8fa
.word 0x04a9e86c, 0x0e545487, 0xd8df066f, 0x777bcb4d, 0xf93ea766, 0x2fc78940, 0xe7a95501, 0x616a1dfb
.word 0xddfc5ddf, 0xf9572537, 0x145ca877, 0x2eb42c36, 0x3288b700, 0x9d90bcbe, 0xd9a26d7f, 0xf981c080
.word 0xf9e5cf32, 0x12816a5a, 0x50fd385a, 0x68a24226, 0xa3f5525a, 0xf796e24c, 0xe19ba970, 0xaf9b2f3e
.word 0x63216a6b, 0x09960560, 0xe85ec9c9, 0x7917f87d, 0x928f575c, 0xaff80f0c, 0x9e17db78, 0xec3ff905
.word 0x554aea03, 0xb6ed34c4, 0x5743078c, 0x1d5ea1af, 0x63b07c6b, 0x44b53f2e, 0xb1b83cb6, 0x2e7af626
.word 0xafa578a8, 0x2710da18, 0x1a1d27c0, 0x418ce5e7, 0xd60de570, 0xde4a28b3, 0x752008df, 0xd2ca1a36
.word 0x12259ce7, 0xc6f9fb60, 0xb9eaa952, 0x8823ccf2, 0x0962e2e0, 0xec9c9f3e, 0xfa863bdf, 0xae857de8
.word 0x00e6232e, 0x300abb66, 0x9ec7159a, 0xcb990854, 0x84442f8c, 0x32ba73ea, 0x23a5b039, 0xfb27ebeb
.word 0x65ad310e, 0x8afa99bc, 0xb5f592a5, 0x114eb477, 0x62e3e1fb, 0x3e6ca97d, 0xedf7ae2a, 0xb53af9a4
.word 0x275839ff, 0xbe3d8022, 0xd194f014, 0x13e9d189, 0xe5edb5b2, 0xd86ee841, 0x84d4ff4d, 0x17ab0a74
.word 0xba51082c, 0x049610a6, 0xf000c4a4, 0xea145b28, 0x35b36fd9, 0x1660f056, 0xe94599d5, 0x3aa5589a
.word 0x6c55b7ef, 0x498d19ae, 0x97195617, 0xbd006920, 0xd660b1dd, 0xff0a2ecd, 0x214e900b, 0x98120637
.word 0x73365de7, 0xffc26664, 0x33950be4, 0x7486dcec, 0xd04098be, 0xea412fe6, 0x173974d3, 0x1400d620
.word 0x8c634231, 0x1dd932f7, 0x69d1b6c6, 0x252a5420, 0x4de21ea1, 0xd9b0daa4, 0x72d10b44, 0x455afe64
.word 0xfe49ec5d, 0x262a8607, 0x6ead843f, 0x93732082, 0x47e9fbeb, 0xde7090c6, 0xdfa25aca, 0x74562c79
.word 0xd4203e0e, 0xace9f5c0, 0x1a4d0224, 0x05bd5ee4, 0xb0edf880, 0x3243389a, 0xbbf64537, 0x9d32d771
.word 0xe89400d3, 0x142b3e8a, 0x1b2a8729, 0xde18cca5, 0x224e8a61, 0xdd3e4723, 0x80233045, 0xb22faae2
.word 0x2f12e6fc, 0x70f695d0, 0x6fc79340, 0xa17658d8, 0x3d635154, 0xacf3fa72, 0x621fe30d, 0x5e005b5a
.word 0x24a433f8, 0xd7c84f5a, 0x5c24c545, 0x09f3fdfa, 0x8bf927a9, 0x50274994, 0x0b7d4088, 0x714d32ed
.word 0x01c2fa1d, 0x2d8a3f00, 0x0c6bd66e, 0xd23fda32, 0xb68c9438, 0xad5aff6b, 0x017b06d2, 0x17d0a7a8
.word 0xd4143c8c, 0x2407dd10, 0xc6eb485b, 0x719c3b49, 0x041282bf, 0x080fee9a, 0x56fd8418, 0xad1d8e54
.word 0x45eb93e9, 0xf377d3db, 0xbca2dfd9, 0x0849c441, 0xc7343bbc, 0xb5f4d29f, 0x24ebe75a, 0x76d23875
.word 0x307e087f, 0x1882e06c, 0xa6fb0ebe, 0x662cdae7, 0x2d369bf3, 0xaa192788, 0xcf414760, 0xa8a899a9
.word 0x5ec1bc66, 0xad383ee8, 0xcc404a1e, 0xe6c38527, 0xa576974d, 0x5b87ad59, 0x95e82c45, 0x06b21f42
.word 0xf54d304c, 0xec9e54fb, 0x0fd1b8a7, 0x4989a0f4, 0xa510d826, 0x8b91ab97, 0xfa300929, 0x4baee12f
.word 0x50c9c236, 0x18955e2f, 0x65ccfd67, 0xcee343f5, 0x61e4c7ac, 0x61f16358, 0xec1aec75, 0xeeb01632
.word 0x203a9cc1, 0x5be92b1d, 0xaf3c65c0, 0x08bdca60, 0x2b711b47, 0x677b479a, 0x51e166e9, 0x3b83307d
.word 0xef74c075, 0x166b0f9e, 0x859ddc44, 0x14409f8f, 0x5b34a102, 0xe695c55b, 0x5ce60cfc, 0x73fcf339
.word 0xbe396500, 0x2baec636, 0x8149268c, 0xbf89e674, 0xee1c0773, 0x876f7fe3, 0x7b5659c5, 0x45a4aa64
.word 0xab787950, 0xd2718d28, 0xdd3e0ef7, 0xc688b1d7, 0xb75b6049, 0x9b55134f, 0xd93f912c, 0xdb31d049
.word 0x862f6f8d, 0xecadd7f9, 0xa7ad76e1, 0x7e12d1b2, 0x60facb6a, 0xc9f3671e, 0xe7f9653c, 0xb6841ec7
.word 0x2c5f5b37, 0x9f7bcdec, 0xb6ccf7ca, 0x277e4327, 0x4e06749c, 0x3d7f4900, 0x4b5b8bcd, 0x73cd9fb8
.word 0xf7ae9c93, 0x8653b0ab, 0x4b7d2f7b, 0x242e39b8, 0x0ba3ec2f, 0xc8141491, 0xc22ad1b7, 0x92e8375f
.word 0x5500c80f, 0xdadc56c2, 0x97756143, 0x8823805c, 0x38b5f2c9, 0xc3612489, 0x4338be6e, 0x8b2dbbee
.word 0x49553c47, 0x68eda88f, 0xf3654f43, 0x92e7f0e7, 0xd1e26e7c, 0x50873463, 0x303fb9d0, 0xa04e59a1
.word 0x32b37cf3, 0x970ad5a1, 0xe5f9cfe5, 0xef809744, 0x71c8a983, 0x706842d3, 0xb083701a, 0x266222cd
.word 0x53ecc952, 0x7dee8d98, 0x8d65a38b, 0xad8cacbe, 0x5a386adf, 0xbe57a023, 0xded1d8a0, 0xd0381d00
.word 0xd280e12c, 0x64cc1a4a, 0x6e2aff51, 0xf5b21cee, 0x3e705fa7, 0xf05da727, 0xf2bfe7fc, 0x70b5e81f
.word 0xd1efa275, 0x4b4072f2, 0xc1b5ff74, 0xaf8ac10b, 0x9870733e, 0x82216644, 0x39f76edf, 0xcc35244a
.word 0x8d7a1442, 0xbf3795db, 0x63f6ce07, 0x7234e962, 0x77570318, 0x24c4fc51, 0x70a99902, 0x94401b09
.word 0x257a89e5, 0x7e447135, 0x6fd8fcc1, 0x78e1dfd0, 0xbda6f1c3, 0x4ace8d48, 0x54d0102c, 0xc8a49cc7
.word 0x968f2160, 0xee8e27cf, 0x00fa7d3b, 0xcae1c764, 0x13c2f0c0, 0x05c677a3, 0xa0a1daf0, 0x30988821
.word 0x91ca111b, 0x1f76e6c4, 0xd0a53da1, 0x4772175e
.section .region_1,"aw",@progbits;
region_1:
.word 0xba4b90e7, 0x6387c477, 0x07316f9f, 0x21c97130, 0x26f928c4, 0xac2a77dd, 0x1822c6eb, 0x706a2e88
.word 0x4ff7894a, 0x3f7c1cf3, 0x90861139, 0x45406a92, 0x3123b541, 0xbc34abdf, 0x9eab0b1b, 0x5d0037d1
.word 0x2d9fef0e, 0x6e09e73d, 0x291f2ff9, 0xf0686402, 0x3dca5885, 0x3af61469, 0x6450a6cd, 0x0c98eb71
.word 0x965fe56a, 0xb4e7220a, 0x9a33d6e5, 0x55a32909, 0x944f2476, 0x1fe7f080, 0x1575d497, 0x9b3d020a
.word 0x24a92706, 0x2f6a7c6c, 0x44e866fb, 0x1e00788d, 0xfaa7f577, 0x5e2f6b6f, 0x4a3cf3ee, 0x237ce29b
.word 0xb568d67b, 0xd9c060d8, 0x6b14142e, 0xf15e45a2, 0xc81509e5, 0x075ca60a, 0x790a6d4e, 0x6a1bdb9e
.word 0x2ecdc93b, 0x365c5af0, 0x212b1fa9, 0xd91f6afa, 0x3314aeba, 0x74cc5f3a, 0xdb646bdd, 0xb064527d
.word 0xed63d142, 0x361807b6, 0x4573b565, 0xd1e121dc, 0x987d87f8, 0x1e745d36, 0x0edb502b, 0x9783b701
.word 0xd9cc7ce1, 0xcd365816, 0xd8a3b425, 0x06011307, 0xb6e2c84a, 0x588370c4, 0x7a194188, 0x433ac437
.word 0xf88324e4, 0xca3b582f, 0xb500096d, 0x79c91ed5, 0x9deb315c, 0x9e088fd7, 0xde76c057, 0xa3c1f7c7
.word 0x24170629, 0x310c6272, 0x8b749221, 0xdc876717, 0xdf1ca8a0, 0x431d1321, 0x9ab28ac9, 0xe868aaea
.word 0x2769bc78, 0x1cc25b4a, 0x17c1c576, 0x221e17d2, 0x8895db42, 0xad417de4, 0xb4f9547e, 0xb23d3f2f
.word 0xfb57b572, 0xa1da337a, 0xca10f34b, 0x9e55c7f3, 0xdb6486cb, 0x420ea003, 0x7d298a70, 0x5f962fe4
.word 0xc3737a4a, 0xf69cae41, 0xadb6c266, 0x1bcb2127, 0x4d694369, 0x3611e22c, 0x209d1b5e, 0x2a807903
.word 0x55b6b510, 0xc19786ab, 0xe57a2214, 0x8ebbe99d, 0x257fda92, 0x3a0170de, 0x00c1311a, 0x1af3bdbc
.word 0x7c238a51, 0xdb4abcd8, 0x33648078, 0xab8eb8f1, 0xb12f2dff, 0x6aca2096, 0x39bcd2f7, 0x40c7ef14
.word 0xc946c91d, 0xa6d26f0d, 0x2c0b309b, 0xb3c37341, 0xbc7c0329, 0x2aef30bf, 0x71ddaecc, 0xf5b62f8b
.word 0x3e497c5a, 0xb7c9ff23, 0x8c17e3a9, 0xb875028b, 0x48d5140b, 0xc37e6dfe, 0xe71576fb, 0x95fcf445
.word 0x333133c3, 0x5142d7a2, 0xebe83266, 0xbeeb7539, 0xd959c6f9, 0xac6ff7a5, 0xf970b15c, 0xfc11ca39
.word 0xf88e94ac, 0xb913437f, 0x095e3269, 0xc035e9ba, 0x4b8c5eb3, 0x33ea5269, 0x2c281cd7, 0x3319918b
.word 0x1c71a2d6, 0x2138385f, 0x96893c7e, 0x918989d7, 0x0d8976bb, 0xa1db8da5, 0x435e54fd, 0xa47da167
.word 0xf52f5edd, 0x3bb3c578, 0x77a92ced, 0x1d1ecb42, 0x17310777, 0xb415c03e, 0x80afcb7e, 0xdf268b67
.word 0x2572dd9e, 0xaf05c843, 0x31c95017, 0x82cb4fdd, 0x6ea50a19, 0xdda9f2f7, 0x8ad7cf96, 0x2abccdd8
.word 0x49c11ef9, 0x6cb06a86, 0x0db531bb, 0x8f3d5d09, 0x427544a1, 0x1b1d6a5f, 0xb0c81822, 0xb80d5427
.word 0x9fd8e618, 0x20c0e930, 0x612e2b57, 0x77561c9d, 0xe40b7aa9, 0x63907dd4, 0x8667c4af, 0x41ee1239
.word 0x3201a18c, 0x3b1c44d8, 0x57f32f52, 0x8262359b, 0x6fe704b1, 0xc1f7402f, 0x265a135e, 0xbc0f845f
.word 0x5164bda5, 0x19f7c686, 0x959ee2e5, 0xdf0445d4, 0xf3bcec1e, 0x0b13cd9f, 0x259f754f, 0x37980296
.word 0x5f112ab6, 0xd1cdc13d, 0x55c73df9, 0xfa28546f, 0x45a41494, 0xd406d5a5, 0xec3d24ef, 0xdfcb157a
.word 0x3ddf4ef3, 0xe2a27d37, 0x5a2c8bb0, 0x73781a6c, 0x7e978d84, 0xbfda40a9, 0x5d7c77a1, 0x6cab27a6
.word 0x4e6d4526, 0x8ea3a81e, 0x75ecd0ec, 0xd1931f2b, 0x1a5b225f, 0xc0b8ec35, 0x52553966, 0x6660b76e
.word 0xbf040031, 0xbe345ed2, 0x86e493f3, 0x50d631bf, 0xfcf39139, 0x9542f1d8, 0x8d1af8d9, 0x387402cd
.word 0x9eb5e0de, 0x2f3883d0, 0xdd88314c, 0x2c39ba38, 0xd48a01b4, 0x673f6c4c, 0x2b997904, 0xdadb2c74
.word 0xa7370e79, 0xfe9e4bd3, 0x582483a7, 0x822982d4, 0x170ba72c, 0xf4feba63, 0x45581344, 0x9a8082c2
.word 0x34b2fc79, 0x7ef7c97a, 0xaf490203, 0xa7ed359a, 0x693f90fa, 0xf7b30f96, 0x8e34e44b, 0x2d093a74
.word 0xa852fd12, 0x67da5f42, 0x5f5c208b, 0xf87e0044, 0xb356f1cf, 0x214c893b, 0xc0770005, 0x88aaa3ce
.word 0x54b4489e, 0x6a817f4f, 0x422c04c1, 0xe4141a68, 0x1ce70581, 0xd1bb4ec0, 0x633a3104, 0x54638cb2
.word 0x1ec2db57, 0xa84f578f, 0x13c426ad, 0x86e43891, 0x20d942e6, 0x965891c6, 0x845a4fea, 0x07b73379
.word 0x533ffd05, 0xbcf65d52, 0x874498a8, 0x2beaa14d, 0xc7224fcd, 0x54081d7f, 0x6ad2febe, 0x932021a0
.word 0x83efe09f, 0x7b480720, 0x83bb6840, 0x9f1d3ce5, 0xa9bdae5d, 0x528d54f5, 0x643078c4, 0x3b807677
.word 0x0b974526, 0x1dde6aa5, 0xd3a5c49e, 0x30288237, 0x0a11f0bd, 0xc980189d, 0x59c5d39b, 0x91f1e98d
.word 0xea1f0910, 0x1c3af321, 0xee049a3e, 0xb8527d24, 0x65c2d760, 0x3c04549c, 0x94a1e58b, 0xa8caa7e6
.word 0x5da2a036, 0x85654de0, 0x9eccf520, 0xd0889da9, 0x6d9493ac, 0xd8bda871, 0xab5e9d02, 0xfd07f9ec
.word 0x509143a1, 0x6e217399, 0x300954c5, 0x0d948d97, 0x6cffab1e, 0x488b563b, 0x2bdfead7, 0x0c83aed2
.word 0x8defff46, 0xf56d337b, 0x98555d6e, 0xef39b349, 0x6d1c1aa2, 0xaf352075, 0x6eca3325, 0x55238827
.word 0x10d83518, 0xc6f9c7fd, 0xb66cb0d5, 0xd10f7dd1, 0xadde7baa, 0x2bd7b1b4, 0x52c38910, 0x6ad2734c
.word 0x7da2969f, 0xeee7a10c, 0xc04f5535, 0x977a32b5, 0xfde9ba7d, 0x7ea00e80, 0x4af84164, 0x4b0ca246
.word 0xed1357ca, 0x287012cc, 0x70765b9b, 0x6532ea0a, 0x0307b00f, 0xda019da6, 0x3c3919ba, 0x7d163d33
.word 0x4b2aedae, 0x53379557, 0x08838293, 0x1354bda2, 0x699d703b, 0x5a099a75, 0xa1ff88a8, 0x136c7b5a
.word 0xc503727b, 0xc30a8e3d, 0x045a2994, 0xee59107e, 0xc76dc90b, 0x12913af5, 0xc48cdb07, 0xd064e729
.word 0x756da421, 0xe8c3f8af, 0x2907b75b, 0xf1e90837, 0xee902878, 0x4d606ad1, 0x94751bcb, 0x7d391fed
.word 0x3560c9a7, 0xff74b232, 0x1c8fa9d1, 0x075a7c23, 0x4e9ed67f, 0x9af0cfed, 0xf7469ee3, 0x163432e0
.word 0xd7941552, 0x1c931736, 0x27f0a2c2, 0x2bae4426, 0x677650fd, 0xb93ba92f, 0xbbcd42e7, 0xf9112df1
.word 0xd74848e0, 0xb0526542, 0x4ffc5ad7, 0xe99b35a4, 0xdd29fc14, 0x2fa20552, 0x60eada27, 0xb53d9a88
.word 0xf04d2973, 0xd1ee5bc0, 0xf5f54da0, 0xcd59dae3, 0x920d1b58, 0xa780261d, 0x11e0dd22, 0xc7e4a439
.word 0x14437f8d, 0x27c4e358, 0x9133a645, 0x3b701ec0, 0xcbb30308, 0x71708a83, 0x2f97570b, 0xb8da7c50
.word 0x5bd2eb60, 0x5049208e, 0xdf4576f3, 0x37c6286c, 0x64545926, 0xcc2ffd88, 0x3f0cef22, 0xbf5ab0de
.word 0x7012229f, 0xa1c0d6a1, 0xb6e917e7, 0xc786a629, 0x1996ed37, 0xe6185861, 0xd5dd039b, 0x353541ea
.word 0x2c2ef53d, 0xd9aa27f1, 0x0dd808a7, 0x215aca83, 0xf9291762, 0x3aebafbe, 0xec7e9930, 0x3b201ffc
.word 0x4378f51f, 0xf4268df6, 0xe240a52f, 0xf26ab12b, 0x87e09541, 0xa522b81a, 0xa41f04e5, 0xd7d4086b
.word 0x809c6d8a, 0x9f65c103, 0x8ae4ee41, 0x8af14c26, 0xd3663c13, 0x69ac89f3, 0xb56dbc9c, 0xff9c8b09
.word 0xccc9f190, 0x927b6583, 0xf8af6bf7, 0x9edb9d04, 0x348754bd, 0x13f8a090, 0xd5625bc5, 0x8d11e889
.word 0x0e544e9a, 0x97dd3e3a, 0xd432b274, 0xdf85f9f1, 0x4e1a16f5, 0x7b40fdc0, 0x05f6d3c8, 0xe5e5ee9c
.word 0x809c6a8c, 0xd2d0f4a4, 0xf1d1db4b, 0x4d25a551
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x29, x12, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x27, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x27, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x27, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x27, x26, ecall_handler
                  li x26, 0x1
                  beq x27, x26, instr_fault_handler
                  li x26, 0x5
                  beq x27, x26, load_fault_handler
                  li x26, 0x7
                  beq x27, x26, store_fault_handler
                  li x26, 0xc
                  beq x27, x26, pt_fault_handler
                  li x26, 0xd
                  beq x27, x26, pt_fault_handler
                  li x26, 0xf
                  beq x27, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x12, x29, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x29, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x29, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x12, x29, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x12, x29, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x12, x29, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
