.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x7554e1f4
                  li x1, 0x2d8daaf3
                  li x2, 0x0
                  li x3, 0xc
                  li x4, 0x80000000
                  li x5, 0x8ce256ac
                  li x6, 0x2
                  li x7, 0x0
                  li x8, 0xbf3a447b
                  li x9, 0x80000000
                  li x11, 0x0
                  li x12, 0x7
                  li x13, 0xc
                  li x14, 0xf15dc985
                  li x15, 0xfd8e642d
                  li x16, 0x2
                  li x17, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xfc69cc00
                  li x25, 0xb3c9de22
                  li x26, 0x6dc59b1e
                  li x27, 0x339ab946
                  li x28, 0xd
                  li x29, 0x0
                  li x30, 0xbbcfb883
                  li x31, 0x80000000
                  la x18, user_stack_end
main:             la           s5, region_0+768 #start riscv_load_store_rand_instr_stream_0
                  slli         t3, zero, 20
                  sb           a0, 5(s5)
                  lb           t3, 1(s5)
                  lw           sp, 12(s5)
                  lhu          t2, 4(s5)
                  andi         s9, tp, -915
                  andi         t0, ra, -693
                  slti         t0, t5, 105
                  slti         sp, ra, -1633
                  srli         a5, s11, 7
                  or           a4, t0, s10
                  xor          t6, a2, tp
                  lhu          sp, -10(s5)
                  addi         a1, t3, 1502
                  or           sp, a6, t5
                  or           s9, s5, t3
                  slti         t1, s4, -1250
                  nop
                  lui          s0, 993786
                  lbu          s9, 10(s5)
                  lh           s0, -12(s5)
                  lhu          s8, 0(s5)
                  xor          t0, gp, s10
                  slli         ra, a2, 11
                  srai         s8, gp, 3
                  sb           t0, -9(s5)
                  srli         a7, sp, 18
                  sb           s7, -3(s5)
                  sb           t6, -6(s5)
                  or           zero, t6, s2
                  sltiu        s8, s10, -67
                  lbu          s11, 10(s5)
                  lbu          a7, 11(s5)
                  or           s9, t6, a1
                  srai         t3, s9, 0
                  lb           t5, 1(s5)
                  xori         a4, a7, -635
                  sb           t4, -11(s5)
                  and          s11, a1, sp
                  lb           gp, -5(s5)
                  sb           ra, -14(s5)
                  lbu          a5, -15(s5)
                  sub          s10, a3, s4
                  sltu         t0, s2, s9
                  sb           t1, 3(s5)
                  lbu          s10, -2(s5)
                  slli         tp, a4, 10
                  sh           a7, 16(s5)
                  sltu         s8, a5, ra
                  andi         s8, s2, -1737
                  xor          a3, tp, t5
                  lbu          s0, -9(s5) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_1+1189 #start riscv_load_store_hazard_instr_stream_1
                  sh           s3, -685(t0)
                  and          s0, s10, s8
                  lui          sp, 737852
                  sw           s10, -685(t0)
                  sll          t2, t4, s7
                  or           a1, s2, t5
                  lhu          a5, -685(t0)
                  sb           s8, -685(t0)
                  sb           s11, -854(t0)
                  lb           a5, -854(t0)
                  sb           tp, -854(t0)
                  sb           s8, -854(t0)
                  lbu          s11, -854(t0)
                  lbu          s6, -846(t0)
                  lb           a4, -846(t0)
                  lbu          t1, -846(t0) #end riscv_load_store_hazard_instr_stream_1
                  la           t0, region_1+663 #start load_store_instr_stream_1
                  lb           s3, 460(t0)
                  la           s8, region_1+857 #start load_store_instr_stream_2
                  la           t2, region_1+1762 #start load_store_instr_stream_0
                  sh           zero, 1051(t0)
                  lhu          s9, 13(s8)
                  lb           t5, 138(s8)
                  sw           t6, 1189(t0)
                  lbu          s7, 112(t2)
                  lb           a7, 123(t2)
                  lh           a1, 963(t0)
                  lw           s1, 14(t2)
                  lbu          s11, 67(s8)
                  sb           t2, -139(t2)
                  sb           s0, -134(s8)
                  lb           t1, -172(s8)
                  lbu          t6, 188(t0)
                  sb           s4, 201(t2)
                  lbu          t6, -235(s8)
                  lh           a4, -203(t0)
                  lbu          a5, 220(s8) #end load_store_instr_stream_2
                  sb           a4, 237(t2)
                  lb           s0, -29(t0)
                  lh           a7, 861(t0) #end load_store_instr_stream_1
                  sb           t5, -111(t2) #end load_store_instr_stream_0
                  la           t2, region_1+1131 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s1, 131(t2)
                  lh           s9, 131(t2)
                  lh           a4, 131(t2)
                  lhu          s8, 131(t2)
                  lh           s11, 131(t2)
                  sb           s1, 131(t2)
                  lhu          a3, 131(t2)
                  auipc        ra, 1026712
                  sh           s8, 131(t2)
                  add          a6, t0, s4
                  sh           a4, 131(t2)
                  sh           s6, 131(t2)
                  slt          s1, a3, a7
                  auipc        a3, 923184
                  lh           s8, 131(t2)
                  slli         s3, s0, 6
                  lh           s0, 131(t2)
                  sb           t5, 131(t2)
                  and          t6, t4, gp
                  lhu          ra, 131(t2)
                  lh           a6, 131(t2) #end riscv_load_store_hazard_instr_stream_0
                  la           s0, region_1+1240 #start riscv_load_store_rand_instr_stream_1
                  andi         t3, t6, -1813
                  lb           a5, 593(s0)
                  sh           t5, -722(s0)
                  srai         s11, s2, 19
                  lui          sp, 655304
                  lbu          a7, 375(s0)
                  ori          sp, s10, -668
                  sll          t5, t6, t3
                  add          t5, a6, t3
                  lb           s5, -975(s0)
                  lbu          t0, -932(s0)
                  srl          s4, s11, t5
                  ori          s10, t1, -1655
                  lhu          t5, -164(s0)
                  lbu          ra, 33(s0)
                  lb           t2, -918(s0)
                  lb           tp, 429(s0)
                  sb           s11, -491(s0)
                  srl          t0, s3, t4
                  sra          s3, a5, s8
                  or           t3, t2, s10
                  srl          a7, t4, s1
                  sb           tp, -107(s0)
                  lbu          t5, -663(s0)
                  ori          sp, s2, 1940
                  lh           gp, -114(s0)
                  lhu          sp, 150(s0)
                  lh           a6, -532(s0)
                  sw           s8, 696(s0)
                  lbu          s9, -607(s0)
                  sra          a6, tp, gp
                  ori          s4, t2, -1452
                  lbu          a2, -40(s0)
                  addi         a1, a5, -980
                  lw           s9, 92(s0)
                  srli         s3, a4, 4
                  sltu         a4, t3, a3
                  sra          t1, t5, s6
                  lhu          s8, -714(s0)
                  sw           a0, -340(s0)
                  lh           s3, -324(s0)
                  auipc        s5, 1011555
                  lh           a5, -510(s0)
                  sb           s5, -1122(s0) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1556 #start riscv_load_store_hazard_instr_stream_2
                  lb           a2, -7(sp)
                  addi         s11, s4, 1488
                  lui          a1, 550836
                  sb           a4, -7(sp)
                  sb           a2, -7(sp)
                  lb           a1, -7(sp)
                  sb           a4, -1(sp)
                  sb           t5, -1(sp)
                  sb           s8, 2(sp)
                  sb           zero, 9(sp)
                  slt          s5, s6, tp
                  sb           gp, 9(sp)
                  sb           s8, 9(sp)
                  lh           a1, 16(sp)
                  lui          gp, 99905
                  lhu          t2, -12(sp)
                  lh           t5, -12(sp)
                  sh           gp, -12(sp)
                  lb           s6, 13(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1097 #start riscv_load_store_rand_instr_stream_2
                  nop
                  lb           s8, 376(sp)
                  slt          t5, t5, tp
                  lhu          t6, -613(sp)
                  slti         t0, tp, 742
                  lbu          a7, 826(sp)
                  lb           a6, -111(sp)
                  lb           s8, -984(sp)
                  lbu          a3, -482(sp)
                  sll          zero, s7, s10
                  lbu          s4, 22(sp)
                  lbu          s1, 98(sp)
                  slt          s4, zero, s3
                  lbu          s10, 716(sp)
                  sw           a0, -297(sp)
                  lbu          a2, -679(sp)
                  lb           t1, -990(sp)
                  lb           s3, 561(sp)
                  lb           a6, -314(sp)
                  lbu          s9, 596(sp)
                  lhu          t1, -575(sp)
                  lb           s0, 802(sp)
                  slt          a1, s0, s3
                  lh           t1, 183(sp)
                  sltiu        zero, s2, -761
                  add          s8, s6, gp
                  lh           tp, 451(sp)
                  lb           s8, -980(sp)
                  srl          s4, s5, s5
                  sltu         ra, a6, s5
                  lbu          s10, 831(sp)
                  lhu          a5, -707(sp)
                  slli         t1, s1, 22
                  srli         zero, s5, 3
                  lb           a5, 756(sp)
                  addi         s4, s10, -1578
                  and          t0, t0, s4
                  addi         gp, s0, -695
                  lb           t2, 390(sp)
                  lbu          a3, 242(sp)
                  lhu          t3, -973(sp)
                  sb           t6, 792(sp) #end riscv_load_store_rand_instr_stream_2
                  srli         a6, a3, 12
                  slt          gp, s7, t1
                  sll          s1, a7, gp
                  bne          s2, t4, 5f
                  xor          a6, s1, a4
5:                xori         s11, a5, 334
                  auipc        a3, 195616
                  or           s1, s9, t2
                  sll          sp, tp, tp
                  slt          s8, t5, a1
                  nop
                  or           s1, ra, a0
                  sra          ra, t2, tp
                  bgeu         s1, t3, 15f
                  ori          s4, a6, -1720
15:               addi         s11, s2, -1249
                  xor          s1, s8, t2
                  sra          s5, s1, zero
                  ori          a7, t4, 110
                  sll          a3, a6, a2
                  or           s9, s5, a4
                  sll          s6, a5, a4
                  sub          s3, a4, t2
                  slti         t3, s6, 779
                  bltu         s0, s2, 37f
                  sltiu        t6, t0, 559
                  add          s1, s3, s6
                  slti         s0, s7, 1206
                  sub          ra, s9, a1
                  sll          sp, sp, t3
                  xor          s1, s10, zero
                  bgeu         s6, s6, 37f
                  bne          s6, tp, 46f
                  srli         a5, s0, 29
                  andi         s6, s0, -1361
                  srli         t5, a5, 22
                  ori          a7, s4, -1548
37:               or           a4, t0, a0
                  slti         tp, a0, 930
                  slti         t3, a7, -1431
                  xor          zero, s4, a4
                  nop
                  bge          s7, s7, 54f
                  sub          s1, a2, t0
                  or           a4, s3, s5
                  sltu         s6, s10, t1
46:               nop
                  xori         t5, s8, 1421
                  sra          a5, zero, a4
                  slt          ra, a1, a3
                  bgeu         s0, a7, 64f
                  sub          zero, a2, sp
                  ori          tp, tp, 1448
                  and          a2, sp, s3
54:               lui          a1, 712090
                  ori          a7, s5, 1755
                  sra          a6, zero, t2
                  or           sp, a3, s4
                  sll          a5, t5, t6
                  and          s4, s1, s7
                  sltiu        tp, a0, 822
                  sub          s4, t1, s2
                  srai         a6, s5, 5
                  bne          s11, s9, 80f
64:               auipc        a7, 450851
                  beq          s1, s5, 71f
                  bne          s3, s3, 73f
                  sra          t1, t0, s11
                  add          t2, s3, t4
                  srli         s7, s7, 0
                  srai         a5, s1, 30
71:               sra          t6, t5, a0
                  beq          t2, s2, 73f
73:               addi         s10, s8, 55
                  slli         t5, a0, 3
                  la           s5, region_1+408 #start load_store_instr_stream_1
                  la           gp, region_1+243 #start load_store_instr_stream_4
                  lhu          t6, -31(gp)
                  la           s0, region_1+947 #start load_store_instr_stream_0
                  la           t2, region_1+676 #start load_store_instr_stream_3
                  lbu          s9, 45(s0)
                  lbu          s4, 14(gp)
                  lbu          a4, 10(s0)
                  lb           a5, -179(s5)
                  lw           a3, -59(gp)
                  lb           t0, 137(t2)
                  lbu          s4, -52(gp)
                  lw           a4, -128(s5)
                  lbu          sp, 87(t2)
                  lb           s3, -197(t2)
                  lb           zero, -33(s0)
                  lb           a7, 3(gp)
                  sb           ra, 125(t2)
                  lbu          zero, 13(gp)
                  sh           s9, -45(s0)
                  sb           s1, -254(s5)
                  lbu          s8, 63(s0)
                  la           a1, region_1+260 #start load_store_instr_stream_2
                  lb           s4, -191(s5)
                  lbu          t3, 235(t2)
                  lh           s11, 54(a1)
                  lb           a2, 459(a1)
                  lbu          t0, 14(gp)
                  lbu          s9, 8(gp)
                  sb           a7, -13(s0)
                  lb           t5, -123(a1)
                  lb           s4, -46(s0)
                  lbu          t0, -211(s5)
                  sw           a6, 61(s0)
                  sb           s0, -181(a1)
                  lh           s4, 170(t2)
                  sh           t5, -57(gp) #end load_store_instr_stream_4
                  lh           s9, 5(s0)
                  sb           s2, 38(t2) #end load_store_instr_stream_3
                  sb           gp, 1694(a1) #end load_store_instr_stream_2
                  sb           t2, -196(s5)
                  lb           s6, -43(s5) #end load_store_instr_stream_1
                  lbu          t1, 64(s0) #end load_store_instr_stream_0
                  bge          s5, tp, 76f
76:               or           t0, s0, s11
                  bge          zero, s3, 85f
                  auipc        s6, 305733
                  bge          a5, t3, 95f
80:               bgeu         a5, s11, 87f
                  slti         s9, a5, 1997
                  bltu         t1, t4, 99f
                  xori         a3, a4, 1081
                  sltu         s4, s0, ra
85:               srli         s11, t6, 19
                  addi         s10, s0, 2007
87:               nop
                  slli         t6, zero, 19
                  sra          s9, ra, a7
                  or           a5, s8, a6
                  beq          s3, zero, 98f
                  sll          s1, t4, gp
                  bge          a1, s9, 97f
                  srli         t5, t5, 28
95:               or           a4, a5, s0
                  blt          zero, s10, 113f
97:               xori         a3, a7, -442
98:               add          s3, tp, t0
99:               lui          s1, 180791
                  auipc        zero, 949925
                  blt          zero, a6, 103f
                  bltu         s4, a5, 120f
103:              slt          tp, s2, t2
                  auipc        t5, 657713
                  auipc        t6, 916570
                  slli         t3, s3, 13
                  xor          s3, a1, a7
                  ori          s1, t3, -978
                  nop
                  add          s3, ra, a5
                  addi         a2, a0, -1622
                  bne          sp, tp, 118f
113:              andi         t2, s2, -190
                  ori          a1, a7, -1628
                  xor          s1, a2, s3
                  nop
                  sll          s5, s7, s6
118:              sra          s10, s9, a4
                  slt          s5, s4, s5
120:              auipc        t2, 260976
                  bltu         t4, s11, 130f
                  sltu         s7, gp, s4
                  bne          a0, s9, 130f
                  srli         t6, t2, 5
                  lui          sp, 556898
                  bne          s5, ra, 133f
                  and          a6, s9, s4
                  slti         a6, s9, -993
                  bge          s2, s2, 147f
130:              sltiu        a4, a1, 1207
                  bne          a4, a5, 138f
                  sra          t1, s11, a7
133:              sltiu        t2, a7, -1910
                  bgeu         sp, a5, 138f
                  slti         t1, s3, 1855
                  bne          s11, t0, 143f
                  add          a5, a5, a7
138:              addi         a5, t5, -481
                  srl          s11, t3, s3
                  andi         s7, a2, 1603
                  beq          a6, t5, 142f
142:              bgeu         a0, a6, 149f
143:              slti         s8, s8, -163
                  slti         a7, a7, 636
                  andi         a3, t0, -1640
                  blt          a1, s8, 147f
147:              nop
                  or           s9, gp, s7
149:              xor          a4, s10, zero
                  la           tp, sub_1
                  xori         s9, s9, 163
                  add          a7, a1, t1
                  addi         tp, tp, -661
                  slti         gp, s5, -1000
                  and          t5, s9, t3
                  lui          t1, 31737
                  lui          sp, 619248
main_j1:          jalr         tp, tp, 661 #jump main -> sub_1
                  srl          a6, s10, s5
                  srl          t3, s11, t4
                  srl          s10, a2, s11
                  auipc        t6, 473911
                  add          a5, t3, a0
                  bne          t2, a1, 157f
                  nop
157:              auipc        s4, 908998
                  sltu         t6, a5, a4
                  slli         a3, s5, 19
                  bge          a6, a2, 161f
161:              sltu         t6, sp, t3
                  slli         t3, a4, 31
                  bltu         s8, zero, 169f
                  blt          t1, a6, 177f
                  xori         a5, sp, 343
                  srl          t2, a0, t1
                  xor          t0, s4, t3
                  ori          s4, a3, -1389
169:              nop
                  bltu         s10, s8, 184f
                  sltiu        a7, a5, 907
                  bltu         t4, s4, 174f
                  ori          t3, a2, 829
174:              slti         a3, s7, -2045
                  andi         t1, t1, -524
                  sltu         t6, t4, gp
177:              beq          s3, a3, 191f
                  and          s8, ra, s7
                  slt          a1, s5, t0
                  sub          s10, a7, t1
                  bltu         s1, s0, 188f
                  sltu         a7, s9, t2
                  beq          gp, a2, 192f
184:              sltu         a1, s7, s5
                  nop
                  slt          s1, a4, s6
                  add          s0, t6, s5
188:              lui          zero, 655079
                  slti         s1, t1, 118
                  nop
191:              ori          a4, a0, -555
192:              add          s8, s9, a2
                  and          zero, s6, tp
                  sra          a6, zero, t3
                  bltu         s9, ra, 196f
196:              sltiu        s9, tp, 416
                  sub          s0, s7, a7
                  srai         t2, s2, 12
                  sltiu        sp, a6, -1422
                  sltiu        t6, s11, -569
                  sub          a4, s4, t1
                  andi         gp, tp, -1902
                  bge          ra, sp, 210f
                  bltu         a3, s0, 206f
                  andi         sp, a6, 1781
206:              xor          a6, s2, s0
                  sltu         a4, zero, s10
                  and          a5, s9, a6
                  ori          t2, a0, -295
210:              bne          t0, s7, 227f
                  andi         s7, t4, 1567
                  beq          s9, t0, 219f
                  srai         a1, a3, 26
                  and          gp, a2, gp
                  add          sp, s8, s0
                  slli         t5, a0, 2
                  bgeu         t3, s3, 223f
                  andi         t5, s10, 429
219:              sll          s3, ra, t0
                  bltu         a4, a6, 224f
                  sub          s7, a5, a0
                  blt          zero, s4, 238f
223:              slti         a3, sp, -1801
224:              sltiu        t2, s0, 1033
                  andi         zero, s6, 1735
                  srli         s3, s0, 29
227:              xor          gp, t6, s8
                  nop
                  sra          s1, s9, s6
                  sub          sp, s9, t1
                  addi         a4, a0, -1414
                  srai         s11, s0, 18
                  andi         a6, s5, 1675
                  auipc        t5, 23751
                  sub          a6, s11, a2
                  slti         a4, gp, 1779
                  srl          a4, sp, s4
238:              add          t2, t2, a6
                  xori         a6, s2, 560
                  sll          a2, t2, s9
                  lui          t0, 671889
                  sub          t6, t1, s7
                  blt          sp, t1, 249f
                  sltu         s3, t6, zero
                  slli         a5, a4, 6
                  bge          zero, a4, 263f
                  and          t6, s0, sp
                  bltu         a7, zero, 266f
249:              nop
                  and          tp, t1, t6
                  sll          t1, a0, t0
                  ori          a7, a2, -2016
                  sub          a6, zero, t1
                  bgeu         a5, t6, 261f
                  bne          s0, s7, 262f
                  srl          t5, a5, t1
                  srl          t3, s1, tp
                  andi         a7, t4, -757
                  or           s8, s2, s6
                  slti         sp, tp, 679
261:              bne          a0, ra, 265f
262:              nop
263:              bge          a1, s5, 280f
                  lui          t3, 85747
265:              slli         t6, a1, 16
266:              sra          t2, s11, s8
                  bge          s1, t5, 285f
                  bne          t4, a3, 276f
                  bltu         a1, a4, 276f
                  blt          s8, t4, 282f
                  bne          t5, s9, 283f
                  and          s10, zero, t2
                  ori          s0, t2, 970
                  sltu         s3, ra, gp
                  or           a7, t3, a4
276:              bgeu         s8, t1, 277f
277:              xori         s1, t0, -186
                  sltiu        a4, s2, -1878
                  srai         t3, t4, 17
280:              xor          a5, t1, t1
                  or           s11, s5, s5
282:              sll          s10, s2, s11
283:              srli         tp, s9, 13
                  slt          ra, s10, s7
285:              sltu         a3, s0, a7
                  andi         tp, a1, 1275
                  srl          a5, t3, a5
                  and          s4, t3, s11
                  bge          s4, sp, 296f
                  and          a7, t5, s9
                  nop
                  sra          s10, t4, t2
                  bge          s8, t6, 306f
                  auipc        a2, 999820
                  ori          a6, s11, 524
296:              xori         a7, a1, -1033
                  sltiu        a4, t6, 620
                  slli         sp, s3, 5
                  sltiu        s6, a0, 1239
                  blt          s9, s5, 304f
                  sll          s1, s8, s7
                  bge          ra, s10, 304f
                  bltu         a1, zero, 320f
304:              beq          a6, s1, 310f
                  or           t1, s2, t3
                  la           s8, region_0+788 #start load_store_instr_stream_1
                  sb           a3, -43(s8)
                  lb           t2, -57(s8)
                  la           s4, region_0+1587 #start load_store_instr_stream_0
                  lbu          s10, 59(s4)
                  lb           s3, 33(s8)
                  lbu          s3, 10(s4)
                  sh           t4, 22(s8)
                  lbu          a1, -4(s8)
                  sb           t2, 0(s4)
                  lb           a3, 16(s4)
                  lb           a7, 15(s8)
                  lb           zero, 42(s8) #end load_store_instr_stream_1
                  sb           s3, 5(s4)
                  sw           a5, 5(s4) #end load_store_instr_stream_0
306:              and          s1, gp, s9
                  auipc        s0, 12511
                  sltiu        s6, t6, 1052
                  add          a1, a2, a2
310:              and          a2, tp, a2
                  sltiu        a6, a3, 1211
                  sltiu        a5, t4, -602
                  or           gp, s2, a3
                  addi         sp, t0, -52
                  lui          s9, 253477
                  or           t5, s0, s4
                  bne          a1, a5, 335f
                  srai         s8, t1, 14
                  beq          tp, a2, 320f
320:              srl          zero, t4, zero
                  srai         tp, a4, 26
                  add          s10, tp, t5
                  slli         a6, t1, 0
                  and          tp, gp, a0
                  bne          s11, s10, 332f
                  bge          s10, s0, 332f
                  and          sp, s1, t3
                  sra          s8, t2, a7
                  add          t6, t5, a0
                  slti         s8, t0, 790
                  bgeu         s2, ra, 333f
332:              andi         s4, a4, 1709
333:              ori          s6, a3, -1134
                  slt          s0, t0, s4
335:              slti         s7, t5, 589
                  srl          t6, a1, t0
                  add          s7, t3, s4
                  slli         s4, a0, 13
                  or           s0, t6, t2
                  bge          zero, t5, 353f
                  andi         s8, s10, 182
                  lui          a1, 414281
                  slti         t5, tp, -1963
                  slt          s9, s9, sp
                  lui          t3, 594422
                  lui          s7, 538005
                  lui          s7, 855844
                  slti         sp, a5, -1771
                  bge          s0, t0, 353f
                  auipc        t1, 988698
                  auipc        s4, 499127
                  bltu         t1, ra, 353f
353:              addi         s9, tp, 1593
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            ori          s9, s6, 746
                  lui          a6, 156020
                  beq          tp, t3, sub_1_stack_p
                  srli         s11, s10, 27
                  nop
                  andi         a3, s10, 1575
sub_1_stack_p:    addi         s2, s2, -56
                  auipc        a5, 243369
                  xori         t5, s4, 809
                  and          s4, s7, a6
                  sw           tp, 4(s2)
                  andi         a1, t2, -598
                  or           s5, sp, s5
                  nop
                  bne          t3, s5, sub_1_j2 #branch to jump instr
                  srli         t2, gp, 6
                  slt          s10, a0, s4
                  srli         t5, s6, 27
sub_1_j2:         jal          tp, sub_2 #jump sub_1 -> sub_2
                  la           s7, region_1+1476 #start riscv_load_store_rand_instr_stream_3
                  lbu          s8, -182(s7)
                  ori          a6, t6, 597
                  ori          t5, s2, 1503
                  slti         a5, t5, -697
                  and          t5, zero, s2
                  lhu          t1, -338(s7)
                  lb           s8, 405(s7)
                  lb           s3, -1167(s7)
                  sh           s10, -402(s7)
                  lhu          sp, -1012(s7)
                  lb           a1, -409(s7)
                  sltiu        a7, a1, 820
                  lbu          a5, -1296(s7)
                  srli         a2, a3, 16
                  lb           zero, -994(s7)
                  addi         s3, a2, -969
                  sltiu        zero, a5, -1262
                  sb           s7, -1201(s7)
                  slt          s0, s8, gp
                  lbu          s6, 361(s7)
                  sltu         s10, a6, s0
                  lbu          t1, -769(s7)
                  lb           a7, -1183(s7)
                  sb           t0, -206(s7)
                  lb           s8, -522(s7)
                  sh           a4, -544(s7)
                  lb           s11, 523(s7)
                  srai         a5, gp, 7
                  lh           s10, -628(s7)
                  lbu          t0, -351(s7)
                  lb           a3, -478(s7)
                  sll          s3, ra, t1
                  sh           ra, 136(s7) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1730 #start riscv_load_store_hazard_instr_stream_3
                  lb           s8, -224(sp)
                  lbu          t0, -224(sp)
                  slt          t3, s9, s9
                  add          t6, s2, s0
                  lb           s3, -224(sp)
                  lhu          t1, -224(sp)
                  lh           zero, -224(sp)
                  sh           s7, -224(sp)
                  lh           t5, -224(sp)
                  lh           a4, -224(sp)
                  sb           a2, -30(sp)
                  lhu          s5, -30(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           s10, region_1+849 #start load_store_instr_stream_4
                  la           ra, region_1+1068 #start load_store_instr_stream_2
                  la           s0, region_1+1141 #start load_store_instr_stream_1
                  la           s5, region_1+1817 #start load_store_instr_stream_0
                  lh           s1, -841(s10)
                  lbu          tp, 43(s0)
                  la           s3, region_1+774 #start load_store_instr_stream_3
                  lbu          sp, -12(s3)
                  sb           a0, 61(ra)
                  lbu          a5, -15(s3)
                  lb           zero, -12(s5)
                  sh           s1, 27(s0)
                  lb           a7, 8(s3)
                  sh           t5, 973(s10)
                  sb           a0, 8(s5)
                  lbu          t3, 4(s0)
                  lbu          t6, -42(ra)
                  lhu          s1, -671(s10)
                  lb           zero, 4(s5)
                  lb           s11, 0(s3)
                  lbu          s4, -39(s0)
                  lhu          a5, -188(ra)
                  lh           a3, 59(s10)
                  lbu          s1, 234(ra)
                  lb           t3, -15(s5)
                  lhu          t6, 545(s10)
                  lbu          s7, 15(s3) #end load_store_instr_stream_3
                  lbu          t1, -199(ra)
                  sb           s11, -58(ra)
                  sb           s6, 10(s5)
                  sh           s3, 120(ra)
                  lhu          s7, 147(s10)
                  lbu          s4, -67(ra)
                  sb           s10, -15(s0) #end load_store_instr_stream_1
                  sb           s0, -303(s10)
                  sb           s8, 207(ra)
                  lhu          s4, 437(s10)
                  lh           a1, 154(ra) #end load_store_instr_stream_2
                  lb           t1, 814(s10)
                  lb           t0, 1117(s10) #end load_store_instr_stream_4
                  lb           s4, -12(s5) #end load_store_instr_stream_0
                  la           t6, region_1+164 #start riscv_load_store_rand_instr_stream_0
                  ori          s8, a1, -1203
                  srli         tp, t5, 25
                  lb           s4, 1(t6)
                  addi         t1, a3, 1973
                  lhu          s5, -10(t6)
                  lui          a5, 758104
                  lbu          a6, -4(t6)
                  nop
                  sw           s8, 0(t6)
                  lb           s3, 13(t6)
                  srai         s4, sp, 31
                  add          s8, a5, s2
                  add          s11, s0, t2
                  lbu          ra, 10(t6)
                  sb           s4, 3(t6)
                  lb           s6, -9(t6)
                  sh           s11, -2(t6)
                  srai         a7, t1, 0
                  srai         s11, t3, 0
                  lui          a7, 224918
                  slli         a6, s11, 19
                  lbu          s1, 15(t6)
                  lb           s6, 7(t6)
                  lb           a5, 0(t6)
                  sra          tp, a5, t3
                  sb           t4, -15(t6)
                  lb           gp, -9(t6)
                  lbu          s5, 16(t6)
                  sh           ra, -2(t6)
                  sb           s10, 7(t6)
                  slt          s1, ra, t0
                  auipc        tp, 376415
                  lbu          s3, 12(t6)
                  lb           s6, -11(t6)
                  ori          s11, s1, 1158
                  srl          a5, t3, s8
                  srl          t1, s7, t5
                  andi         s0, t5, -1485
                  sw           a6, 8(t6)
                  auipc        zero, 836919
                  sll          a5, t4, s1
                  lbu          zero, 5(t6)
                  sw           a2, -8(t6)
                  sw           ra, 0(t6)
                  lbu          tp, 7(t6)
                  addi         s6, s4, -1612
                  lb           a2, -13(t6)
                  sh           s2, -14(t6)
                  sb           a6, -12(t6)
                  srai         s0, a3, 8
                  lb           s8, 12(t6)
                  sb           tp, -15(t6) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_0+814 #start riscv_load_store_rand_instr_stream_4
                  sub          s0, s5, s3
                  auipc        gp, 540473
                  sub          gp, a2, gp
                  slli         s0, tp, 4
                  sltiu        s7, s6, -604
                  lbu          s9, -663(t1)
                  and          a5, a0, a3
                  sll          s6, s8, s9
                  sb           t4, 140(t1)
                  srai         t0, s11, 3
                  sra          s4, a4, a5
                  lb           s4, -131(t1)
                  sub          sp, sp, s3
                  and          t0, s6, s8
                  slli         gp, gp, 21
                  slti         t6, tp, -245
                  lbu          a6, -571(t1)
                  sb           a1, -483(t1)
                  lh           s10, -662(t1)
                  sra          a3, s0, a2
                  lw           s3, -766(t1)
                  srli         t3, a1, 16
                  sra          tp, s7, t4
                  lbu          a5, -725(t1)
                  lbu          s5, 355(t1)
                  nop
                  nop
                  lhu          sp, 462(t1)
                  xor          s0, s4, gp
                  sra          a6, tp, s7
                  lb           t5, 754(t1)
                  sb           gp, 408(t1)
                  sll          a7, s8, zero
                  xori         s3, ra, 911
                  lb           a7, 663(t1)
                  lb           s5, 692(t1)
                  sltiu        a3, zero, 257
                  lh           a2, -164(t1)
                  lhu          a2, 1012(t1)
                  sb           s4, -503(t1)
                  lh           a5, -346(t1) #end riscv_load_store_rand_instr_stream_4
                  la           s6, region_0+924 #start load_store_instr_stream_1
                  la           ra, region_0+986 #start load_store_instr_stream_0
                  lbu          a4, 843(s6)
                  lbu          s9, 3(ra)
                  lbu          t2, -3(ra)
                  lbu          a6, -208(s6)
                  lb           sp, -4(ra)
                  lh           s11, 12(ra)
                  sb           ra, 943(s6)
                  sb           s9, -605(s6)
                  lb           s4, -529(s6)
                  lw           zero, 2(ra)
                  sb           gp, -8(s6)
                  sb           t2, -95(s6) #end load_store_instr_stream_1
                  lbu          gp, 7(ra) #end load_store_instr_stream_0
                  la           s6, region_1+757 #start load_store_instr_stream_2
                  la           s0, region_1+1776 #start load_store_instr_stream_3
                  lbu          s9, -36(s6)
                  la           s3, region_1+1518 #start load_store_instr_stream_1
                  lh           s8, 126(s0)
                  lh           s9, -4(s3)
                  sb           a3, -11(s3)
                  lw           zero, -65(s6)
                  la           a6, region_1+1380 #start load_store_instr_stream_0
                  lb           zero, -252(s6)
                  lb           s8, 233(s6)
                  lbu          a2, 146(a6)
                  sw           s8, 36(s0)
                  sb           sp, 129(s6)
                  sw           a0, 10(s3)
                  lb           s5, 150(a6)
                  lbu          s4, -114(s0)
                  sb           a7, 1(s3)
                  lb           a1, -5(s3)
                  lbu          a3, -230(a6)
                  lb           a7, -5(s3)
                  lb           t5, -18(s0)
                  sh           a7, -70(s0)
                  lbu          sp, -16(s3)
                  lb           t2, 205(s6)
                  sw           a7, -10(s3)
                  sb           a7, -85(s0)
                  sb           t6, -59(a6)
                  lbu          t3, -59(s6)
                  lh           s9, 154(s0)
                  lw           t2, 10(s3)
                  lbu          zero, -93(s0)
                  lb           s7, -8(s6) #end load_store_instr_stream_2
                  lbu          t2, -121(s0)
                  lb           s1, 43(s0) #end load_store_instr_stream_3
                  lhu          s11, 0(s3) #end load_store_instr_stream_1
                  lb           t6, -109(a6) #end load_store_instr_stream_0
                  la           sp, region_1+673 #start riscv_load_store_hazard_instr_stream_2
                  lb           s1, -235(sp)
                  lbu          s5, -235(sp)
                  lb           t0, -179(sp)
                  sb           t5, -179(sp)
                  slt          a4, t0, s7
                  sh           a5, 1(sp)
                  sb           tp, 171(sp)
                  lw           t0, 171(sp)
                  sb           t6, -67(sp)
                  sb           s0, -216(sp)
                  lw           zero, -37(sp)
                  sw           tp, 215(sp)
                  sb           s8, 220(sp)
                  sb           zero, 202(sp)
                  sw           a5, 135(sp)
                  lbu          s11, 28(sp)
                  lbu          a7, 28(sp)
                  lbu          t1, 28(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           t2, region_0+182 #start riscv_load_store_hazard_instr_stream_1
                  srli         ra, gp, 17
                  lb           s9, 1049(t2)
                  lhu          t1, 1720(t2)
                  slti         a2, s10, 63
                  lb           s0, 1611(t2)
                  lh           s1, 1812(t2)
                  ori          a7, s7, 365
                  sh           sp, 1586(t2)
                  sb           t4, 1381(t2)
                  lbu          s7, 1433(t2)
                  lbu          s1, 1433(t2)
                  lbu          t3, 1433(t2)
                  lb           a1, 1433(t2)
                  lb           t6, 1433(t2)
                  and          s6, s2, t1
                  sub          gp, s10, a3
                  lbu          a6, 1433(t2)
                  sw           tp, 686(t2)
                  lb           a5, 1337(t2)
                  lbu          s10, 1337(t2)
                  lui          a6, 687954
                  ori          t1, t6, -1738
                  lbu          s0, 1337(t2)
                  lb           t3, 1337(t2) #end riscv_load_store_hazard_instr_stream_1
                  la           t5, region_1+924 #start load_store_instr_stream_0
                  la           t6, region_1+643 #start load_store_instr_stream_4
                  la           a5, region_1+248 #start load_store_instr_stream_2
                  la           a4, region_1+128 #start load_store_instr_stream_1
                  la           s6, region_1+1995 #start load_store_instr_stream_3
                  lb           a2, 0(t6)
                  sb           s7, -61(a5)
                  sb           s4, -37(a4)
                  lh           s0, -28(a5)
                  lh           s10, -13(s6)
                  sw           t6, -908(t5)
                  lhu          a2, -9(s6)
                  sb           a2, -40(a5)
                  sh           sp, 15(t6)
                  lbu          tp, -3(s6)
                  sb           t3, 1048(t5)
                  lbu          t1, 471(t5)
                  lh           zero, -8(a4)
                  lb           t0, -4(s6)
                  lb           s0, 771(t5)
                  lbu          s1, 0(s6)
                  lbu          a2, -10(s6)
                  sb           ra, 625(t5)
                  lh           sp, -4(a4)
                  lb           s4, 15(a4)
                  lb           a1, 51(a5)
                  lbu          zero, 366(t5)
                  lh           t0, -7(s6)
                  lbu          a2, -630(t5)
                  sh           t6, 10(a5)
                  lb           s1, -61(a5)
                  sb           a3, -8(t6)
                  lhu          sp, -13(s6) #end load_store_instr_stream_3
                  lb           t1, -1(t6)
                  lb           s4, -310(t5)
                  lhu          gp, -26(a5) #end load_store_instr_stream_2
                  sw           tp, -15(t6)
                  sw           a7, -32(a4) #end load_store_instr_stream_1
                  lbu          s5, -13(t6) #end load_store_instr_stream_4
                  lb           s9, 399(t5) #end load_store_instr_stream_0
                  la           s9, region_0+1819 #start riscv_load_store_hazard_instr_stream_0
                  sw           s8, -1671(s9)
                  lb           s7, -1671(s9)
                  sh           sp, -1671(s9)
                  sh           tp, -765(s9)
                  lhu          t3, -765(s9)
                  slti         a5, a1, 1089
                  lh           t1, -765(s9)
                  andi         s4, s4, -292
                  lh           s6, -765(s9)
                  lb           s3, -765(s9)
                  sh           s3, -765(s9)
                  lb           a4, -765(s9)
                  sb           t5, -765(s9)
                  lh           a3, -765(s9)
                  sub          t2, s6, t3
                  lbu          s0, -765(s9)
                  sb           s4, -765(s9)
                  sb           t0, -765(s9)
                  lhu          a3, -765(s9) #end riscv_load_store_hazard_instr_stream_0
                  la           tp, region_1+1259 #start riscv_load_store_rand_instr_stream_2
                  lbu          a3, 24(tp)
                  lhu          s9, 153(tp)
                  sb           t0, -92(tp)
                  lhu          t2, 87(tp)
                  sh           ra, -107(tp)
                  sb           t2, -3(tp)
                  srli         a2, s5, 24
                  add          t2, a6, t2
                  sb           s11, -252(tp)
                  sh           s2, -167(tp)
                  lb           gp, 200(tp)
                  lui          s5, 904930
                  lbu          t3, 163(tp)
                  lh           s6, 217(tp)
                  lb           s3, -2(tp)
                  sb           t2, 36(tp)
                  addi         s4, a4, -907
                  auipc        s8, 408419
                  add          sp, s0, s2
                  lb           a6, 146(tp)
                  lbu          s9, 82(tp)
                  sb           s9, -84(tp)
                  lb           a1, -236(tp)
                  sw           ra, -43(tp)
                  lbu          a6, -228(tp)
                  slli         ra, s10, 4
                  lb           s9, 218(tp)
                  or           t5, t3, tp
                  lw           ra, 49(tp)
                  ori          t6, t3, -1538
                  xor          s0, a4, a7
                  lb           t0, 108(tp)
                  sw           s4, 217(tp)
                  sltiu        t3, s3, -242
                  lbu          t2, 18(tp) #end riscv_load_store_rand_instr_stream_2
                  la           t6, region_0+1654 #start riscv_load_store_rand_instr_stream_1
                  xori         t3, sp, 535
                  lbu          ra, -652(t6)
                  xori         t0, gp, -1212
                  or           s3, s0, s4
                  lb           a2, -1633(t6)
                  sll          a1, t6, s8
                  or           t5, s10, gp
                  lbu          t3, -495(t6)
                  slli         a4, t6, 30
                  lb           s10, -19(t6)
                  sb           ra, -961(t6)
                  lbu          t1, 149(t6)
                  lhu          a4, -664(t6)
                  andi         t3, a6, 106
                  lb           a3, -1483(t6)
                  lui          zero, 436928
                  slt          t5, t3, zero
                  lbu          s11, -1436(t6)
                  sltu         t1, s0, s3
                  lhu          zero, -1632(t6)
                  slli         s4, t4, 19
                  lb           zero, -105(t6)
                  sb           gp, -1373(t6)
                  lbu          t2, -401(t6)
                  ori          s0, a5, 143
                  lh           s6, 198(t6)
                  andi         t3, a4, 1102
                  xor          s1, s3, s3
                  slt          t3, s4, s6
                  nop
                  lh           s4, -1440(t6)
                  sw           a5, 302(t6)
                  lb           a1, -1209(t6)
                  or           s10, t2, s11
                  sll          sp, s7, s10
                  sltu         a6, t4, tp
                  xor          t0, sp, s6
                  lh           a1, -932(t6)
                  sb           tp, -695(t6) #end riscv_load_store_rand_instr_stream_1
                  ori          t5, a5, 869
                  bge          a5, a2, 18f
                  slli         t1, a1, 13
                  addi         t3, s5, 277
                  and          t1, s3, zero
                  srli         ra, sp, 5
                  andi         s10, t3, -123
                  or           s1, s2, a3
                  blt          s10, tp, 9f
9:                slt          gp, s11, s5
                  andi         s10, a1, -565
                  ori          tp, s11, -327
                  bltu         t0, s5, 24f
                  lui          a1, 916938
                  andi         s10, s2, -529
                  bgeu         a1, a0, 21f
                  slti         ra, s1, -1497
                  lui          s1, 929901
18:               blt          a3, a0, 23f
                  xori         a7, s8, -1030
                  andi         ra, s7, -1610
21:               bltu         s8, a6, 39f
                  slli         a5, ra, 5
23:               lui          s4, 467746
24:               or           s0, ra, gp
                  beq          a0, s8, 39f
                  xori         s1, t6, 1331
                  sltiu        s6, a2, 827
                  add          a3, a1, s10
                  srli         t2, s1, 4
                  bgeu         t4, a5, 36f
                  slt          gp, s1, s3
                  beq          tp, a0, 49f
                  addi         s7, s5, 1013
                  andi         s7, t2, 725
                  sltu         s11, a3, t1
36:               slli         t0, t2, 12
                  nop
                  or           t2, a7, s0
39:               srai         t3, a0, 4
                  sra          a7, s0, tp
                  slti         t0, s11, 843
                  and          ra, s0, a0
                  slt          a6, a7, s11
                  blt          t4, ra, 60f
                  addi         a7, a0, 342
                  bgeu         t4, s6, 62f
                  ori          s5, t2, 828
                  add          s4, a0, a7
49:               xori         t0, t6, 698
                  xori         a7, gp, 594
                  bge          a5, t0, 67f
                  or           s7, s11, s2
                  bge          s1, a3, 68f
                  bne          sp, ra, 60f
                  bgeu         t6, s8, 72f
                  bge          s10, s7, 59f
                  sub          a2, t0, t4
                  add          s4, s2, a2
59:               andi         t0, s3, -2036
60:               lui          zero, 407672
                  nop
62:               bge          s11, ra, 72f
                  sltu         a2, t2, t6
                  and          sp, a0, t1
                  and          a3, s4, ra
                  lui          a7, 481111
67:               bgeu         s5, a1, 77f
68:               or           sp, a0, a1
                  blt          t5, tp, 79f
                  bne          s2, a1, 82f
                  nop
72:               xor          a1, t5, t0
                  auipc        a6, 426390
                  xor          s0, s5, s0
                  bne          t3, s8, 94f
                  xori         t6, s4, -748
77:               ori          a2, s7, -265
                  beq          a6, s3, 88f
79:               sra          a2, a6, a1
                  lui          s3, 458395
                  addi         zero, s4, -1690
82:               bne          a6, s1, 85f
                  bltu         zero, a4, 88f
                  srli         s11, s11, 4
85:               sll          a1, tp, a4
                  ori          s1, t6, 1381
                  sll          s11, s3, t6
88:               srli         t1, tp, 25
                  ori          t5, a1, 64
                  bne          ra, t3, 96f
                  blt          t1, t3, 96f
                  sltu         s4, s2, s11
                  bltu         a0, s11, 100f
94:               blt          a4, s7, 98f
                  add          s10, s9, a7
96:               andi         a3, a3, -326
                  addi         a2, t6, -1353
98:               sub          t3, s5, s3
                  sltiu        a7, s0, 433
100:              bgeu         t3, a0, 118f
                  and          t1, t6, a1
                  slt          a5, a4, s4
                  bgeu         t0, s1, 118f
                  slti         t1, s11, 1650
                  xori         tp, a1, -86
                  sltu         s4, a3, t0
                  or           a6, t6, t6
                  xor          a6, s6, t0
                  sll          t0, a7, s2
                  srl          s7, a3, a3
                  beq          t2, s8, 121f
                  bltu         s0, t0, 122f
                  slli         a2, s11, 1
                  srl          tp, s6, a5
                  srli         a1, t5, 29
                  add          s6, sp, a1
                  slt          ra, a1, t5
118:              ori          s6, t2, -157
                  slti         s1, s2, 785
                  srl          a2, a0, a4
121:              bgeu         gp, a7, 127f
122:              ori          a6, s4, 150
                  ori          a1, t1, 1862
                  andi         a5, s9, -1331
                  bne          s7, s9, 128f
                  bltu         t5, t4, 136f
127:              srai         tp, s5, 15
128:              bltu         s9, s0, 143f
                  auipc        s10, 687080
                  sra          t0, t2, zero
                  xor          sp, s3, a5
                  bgeu         a1, ra, 148f
                  sra          a5, t4, s10
                  xori         s3, a7, 1057
                  sll          a1, s3, t0
136:              blt          t4, s9, 151f
                  xor          t5, a0, a6
                  add          gp, a6, t1
                  add          gp, t3, t1
                  bge          t0, zero, 146f
                  auipc        ra, 716255
                  sltu         a5, s1, s5
143:              sra          sp, s10, zero
                  and          gp, t6, s0
                  slli         sp, s5, 22
146:              srai         a2, a2, 29
                  andi         a1, a5, -763
148:              bgeu         a3, s11, 151f
                  and          s8, s0, s9
                  lui          s7, 307489
151:              blt          a3, t4, 168f
                  srli         a3, t3, 22
                  sltiu        s7, t6, -1875
                  srl          s8, s10, tp
                  sra          s10, s11, s5
                  andi         a7, t6, -335
                  blt          a3, t1, 174f
                  slti         a3, s3, 530
                  ori          t5, s4, 842
                  auipc        a5, 231880
                  auipc        t2, 428745
                  andi         a5, gp, -594
                  beq          s5, t5, 181f
                  srai         t0, s5, 23
                  srl          tp, s1, s1
                  bne          a5, t4, 170f
                  bgeu         s2, s4, 168f
168:              slli         a2, s1, 5
                  slli         a1, ra, 29
170:              bltu         a2, s8, 175f
                  srli         a3, s0, 24
                  sll          a7, t2, t4
                  or           a1, a0, s6
174:              addi         s0, t6, -1525
175:              or           zero, a0, s3
                  blt          a5, t5, 194f
                  sltiu        sp, a0, -1998
                  sltiu        s0, s9, -1630
                  sll          s6, a1, a0
                  nop
181:              add          s0, s9, zero
                  slti         s5, s7, -1448
                  auipc        s0, 124058
                  slti         s4, s4, 1270
                  bltu         a3, s7, 201f
                  sltu         zero, t5, s2
                  beq          s0, s2, 204f
                  srli         zero, s11, 6
                  andi         s0, ra, -633
                  la           sp, region_0+1831 #start riscv_load_store_hazard_instr_stream_4
                  lh           s8, -1477(sp)
                  sh           a3, -1477(sp)
                  lbu          s5, -1477(sp)
                  sltu         a1, t6, a0
                  sb           sp, -1162(sp)
                  lbu          t1, 44(sp)
                  lbu          a3, -456(sp)
                  lb           s0, -526(sp)
                  sb           t1, -526(sp)
                  andi         a5, a3, -920
                  xori         a5, zero, -1586
                  lh           s0, -807(sp)
                  lb           s3, -678(sp)
                  lbu          s5, -1188(sp)
                  nop
                  lh           s4, -605(sp)
                  lbu          gp, -1161(sp)
                  sra          s1, a7, s0
                  srai         s10, s6, 13
                  sh           s1, -135(sp)
                  sb           a0, -984(sp) #end riscv_load_store_hazard_instr_stream_4
                  sltiu        a1, s6, 968
                  addi         a4, gp, 1726
                  slt          a2, a0, s7
                  srli         s6, sp, 10
194:              sltu         s11, s11, t2
                  slt          tp, a4, a5
                  sra          s7, s1, a1
                  bgeu         t3, s9, 202f
                  bge          s8, t3, 210f
                  sll          a2, gp, sp
                  slti         sp, s5, 1789
201:              auipc        a1, 224790
202:              nop
                  and          t6, a1, t5
204:              xori         s4, s2, -197
                  lui          t6, 785327
                  or           ra, s10, tp
                  add          t3, s8, t3
                  lui          gp, 256529
                  auipc        a6, 233874
210:              srl          a7, s6, zero
                  lui          a7, 1012310
                  bge          s10, s11, 226f
                  srl          t1, t5, tp
                  beq          s9, t5, 224f
                  ori          a3, a4, -2043
                  bne          s3, a1, 223f
                  beq          s0, s0, 229f
                  slli         a3, s3, 6
                  lui          s4, 40878
                  bge          a2, t6, 226f
                  andi         s11, a2, -199
                  and          t5, t3, s3
223:              xori         a5, t3, -837
224:              add          s7, s7, a1
                  xor          s11, s10, tp
226:              xori         s3, s3, -282
                  xori         t5, s11, -1567
                  andi         s7, a6, -306
229:              auipc        tp, 516020
                  auipc        a1, 462018
                  bne          s6, t4, 237f
                  sltu         s1, s0, t4
                  lui          t2, 957014
                  addi         a4, t3, -1392
                  add          t2, t4, a1
                  sltiu        a6, ra, -1287
237:              nop
                  addi         a3, t0, -2003
                  xor          a6, a7, ra
                  ori          s11, a5, 376
                  srli         t5, s8, 15
                  andi         zero, t2, 578
                  sltu         a7, s3, s10
                  lui          a2, 354682
                  nop
                  bne          t6, s5, 251f
                  beq          t4, s1, 266f
                  bge          a4, ra, 264f
                  bge          a2, a3, 252f
                  and          a7, t5, t1
251:              auipc        sp, 366342
252:              blt          tp, s9, 258f
                  srl          s5, zero, a2
                  slt          t3, t6, a4
                  bne          t3, a1, 271f
                  sra          s5, sp, s6
                  sll          tp, t6, s2
258:              sub          a7, s10, s0
                  bge          a5, s0, 274f
                  slt          a6, s1, a2
                  or           t1, t5, ra
                  and          s10, a1, a5
                  xori         s0, s11, -718
264:              sra          t1, s5, tp
                  beq          t5, a0, 275f
266:              sll          t0, t4, s7
                  slt          t2, t2, s4
                  slt          tp, a7, tp
                  or           zero, a3, a4
                  xori         a4, t6, -778
271:              xori         s7, a6, 389
                  beq          s5, s1, 276f
                  slt          a5, t3, t1
274:              and          a6, t3, a7
275:              srai         s0, s10, 27
276:              nop
                  bge          s10, t0, 283f
                  bge          sp, a2, 283f
                  ori          tp, t2, -1363
                  sltiu        ra, s8, 365
                  bgeu         a0, a1, 287f
                  xori         s11, sp, -453
283:              beq          s4, a1, 289f
                  ori          a1, t1, 588
                  and          gp, a6, a6
                  srai         a5, a3, 26
287:              sra          s9, s7, t2
                  slt          s11, t1, s11
289:              bge          zero, s7, 299f
                  slt          s11, t6, sp
                  add          a2, s11, t6
                  blt          t1, s3, 309f
                  nop
                  bne          s6, a5, 299f
                  slli         a7, a4, 23
                  nop
                  xor          s11, a5, s6
                  sltiu        s7, t0, -366
299:              lui          s6, 424156
                  sltu         s7, s4, a4
                  slli         a2, t5, 17
                  andi         a1, s7, 159
                  slt          t2, ra, s2
                  lui          s5, 74788
                  bne          t0, a2, 317f
                  or           s3, a7, a0
                  addi         t2, s2, -131
                  srai         a1, s6, 5
309:              xor          a5, s6, a3
                  bne          s0, a6, 322f
                  sll          a3, t3, s1
                  and          a2, t5, s10
                  sltu         a3, t3, s4
                  sub          tp, s1, t0
                  addi         a5, t4, -20
                  xor          s4, s0, zero
317:              slt          s11, s4, t3
                  sub          s11, a1, s7
                  sltiu        t2, t1, 578
                  or           a1, gp, s7
                  andi         s5, t1, 583
322:              nop
                  sra          t6, t6, a0
                  srli         a2, a5, 27
                  and          a2, s0, tp
                  sltu         s7, s7, t6
                  srli         gp, s2, 3
                  lui          s7, 157731
                  xori         zero, s9, 1635
                  andi         a4, tp, 1954
                  bltu         gp, gp, 347f
                  sub          s9, s2, t1
                  xor          a2, a7, s3
                  blt          s5, t4, 351f
                  bgeu         a3, s4, 349f
                  beq          gp, s3, 354f
                  or           s5, s2, a4
                  nop
                  and          a1, s9, t5
                  addi         a2, a2, -411
                  sll          t0, s6, s9
                  addi         s6, ra, -39
                  xori         s6, tp, 930
                  slt          t2, s3, s1
                  and          s9, ra, s6
                  xori         s9, a1, 619
347:              slli         s6, a7, 12
                  srai         a7, zero, 10
349:              slli         t5, s11, 5
                  sll          s5, s6, a2
351:              srli         s6, s7, 25
                  slti         t2, s11, -1543
                  xor          s0, a4, t1
354:              auipc        s1, 224810
                  xori         a7, t0, -949
                  auipc        a6, 770569
                  ori          a7, s2, 1792
                  sra          t1, a1, t6
                  bge          s9, s1, 375f
                  srai         s5, t4, 9
                  xori         t2, s9, 215
                  or           a2, gp, t4
                  sltiu        t0, t0, 723
                  sltiu        t3, zero, 697
                  slli         s1, t4, 14
                  auipc        s11, 609539
                  sltu         s6, s6, s0
                  sltu         s10, s3, a1
                  andi         zero, ra, -335
                  slt          s4, s0, s11
                  slti         s1, a1, 112
                  nop
                  or           t2, t0, t2
                  auipc        t2, 737420
375:              xor          t5, tp, s4
                  blt          s9, t3, 386f
                  or           s8, s0, a6
                  addi         s3, t3, -244
                  add          s9, s7, s7
                  bge          s5, a6, 395f
                  beq          s1, a7, 384f
                  andi         s0, t4, -686
                  slli         t3, t4, 5
384:              bltu         s0, t3, 385f
385:              andi         s0, t4, 1521
386:              addi         gp, t3, -86
                  andi         a7, t0, -325
                  or           t6, s0, t4
                  add          t2, s0, a0
                  and          s7, a7, t1
                  slli         a7, t0, 12
                  auipc        zero, 986487
                  bge          sp, ra, 411f
                  bltu         s11, t1, 411f
395:              and          a6, s9, s8
                  srl          s5, ra, a0
                  bne          s7, t0, 407f
                  bltu         a6, a0, 417f
                  and          s1, a4, a3
                  nop
                  sltiu        ra, zero, 1218
                  slli         a5, s8, 1
                  sra          a7, a0, t4
                  ori          s10, s6, -14
                  bltu         tp, s3, 412f
                  srl          zero, s3, s5
407:              xori         s3, a7, -635
                  sub          s7, a5, a5
                  sll          t1, s11, a2
                  nop
411:              bne          s9, s3, 416f
412:              auipc        a6, 624888
                  addi         a1, a0, 1542
                  xor          s10, s1, a4
                  and          a7, s0, t3
416:              bgeu         s4, a7, 435f
417:              addi         t1, s7, 765
                  sll          a7, tp, gp
                  or           zero, s9, s2
                  sub          s0, t6, t6
                  addi         tp, a1, -705
                  srai         t3, a6, 0
                  xor          sp, a5, a3
                  xor          sp, s11, s0
                  slli         s8, a2, 7
                  auipc        a6, 486049
                  sub          s0, a2, s10
                  slt          a1, tp, t5
                  andi         s6, a0, 589
                  srli         s8, zero, 7
                  sll          s0, a2, a5
                  add          s9, a3, t3
                  sltu         ra, s3, s8
                  beq          t4, t1, 450f
435:              auipc        s5, 270668
                  lui          t6, 596386
                  nop
                  sltiu        s7, ra, -101
                  auipc        ra, 617951
                  bgeu         t4, t3, 458f
                  nop
                  andi         a7, a4, 225
                  slt          t2, s5, a1
                  add          a6, t0, a6
                  nop
                  slti         s7, sp, -989
                  or           t1, s8, s4
                  sltu         s11, s10, gp
                  bge          s10, a2, 465f
450:              ori          s4, s5, 652
                  and          t6, a5, a1
                  xori         a2, t0, -724
                  xori         s6, s0, -532
                  sltiu        a7, t3, 233
                  la           a2, region_0+1411 #start load_store_instr_stream_2
                  la           t5, region_0+1938 #start load_store_instr_stream_0
                  lhu          zero, 0(t5)
                  lh           s1, -1263(a2)
                  lw           s6, 22(t5)
                  la           sp, region_0+1064 #start load_store_instr_stream_1
                  la           gp, region_0+1817 #start load_store_instr_stream_3
                  lbu          s7, 45(sp)
                  lh           a4, -675(a2)
                  sw           tp, -5(gp)
                  lb           a4, -49(t5)
                  lbu          s6, -33(sp)
                  lb           s10, 13(gp)
                  lbu          s3, -3(t5)
                  sw           a0, -36(sp)
                  lb           s8, 8(gp)
                  sb           s8, 43(t5)
                  lb           s10, -3(gp)
                  lb           t3, -135(sp)
                  lb           a1, -764(a2)
                  lb           t2, 10(gp)
                  lhu          s4, 2(t5)
                  lbu          t1, -642(a2)
                  sb           a6, 2(gp) #end load_store_instr_stream_3
                  lb           s9, 61(sp)
                  lhu          a7, 29(a2)
                  lb           a7, 9(t5)
                  lb           zero, 243(sp) #end load_store_instr_stream_1
                  lb           t0, -238(a2) #end load_store_instr_stream_2
                  sh           t3, 38(t5) #end load_store_instr_stream_0
                  xor          a6, s1, s9
                  nop
                  sra          t0, a1, a5
458:              srai         s11, t2, 1
                  slli         a3, s9, 1
                  sltiu        tp, sp, -1826
                  auipc        s0, 922935
                  slti         a3, tp, 404
                  ori          t1, s8, -1791
                  srli         s6, tp, 1
465:              bne          a2, tp, 470f
                  or           sp, sp, a4
                  ori          ra, gp, -1286
                  or           a5, a2, s9
                  bltu         s9, s2, 475f
470:              srai         t1, s7, 19
                  xori         s4, s7, -345
                  bge          t1, s5, 487f
                  xori         a5, s6, 1177
                  bltu         ra, sp, 481f
475:              ori          s0, s9, -1188
                  andi         s4, t6, -986
                  and          a7, s2, s5
                  bltu         t0, a3, 495f
                  slli         t5, t0, 6
                  sltiu        a5, tp, -700
481:              sll          a1, t1, sp
                  nop
                  srl          zero, a3, a5
                  slli         s0, a7, 11
                  blt          a1, a2, 500f
                  sra          t6, t1, s11
487:              srli         t1, s5, 30
                  lui          s5, 411426
                  slt          a2, s5, a4
                  xor          s8, s9, gp
                  sll          s1, s7, sp
                  sra          a5, s0, t4
                  xori         s3, t2, -1554
                  auipc        s3, 215940
495:              bne          s6, s0, 507f
                  sltu         t5, a3, zero
                  nop
                  sra          tp, t2, t4
                  sll          a7, s7, s9
500:              sltiu        a7, t2, 577
                  bgeu         t6, s10, 511f
                  srli         s10, a1, 9
                  or           s4, s9, s11
                  bge          t4, gp, 510f
                  xori         a7, s6, -899
                  ori          a4, s7, -74
507:              srl          t0, a4, s5
                  and          t2, t4, s4
                  andi         s7, t3, -642
510:              and          a5, a3, t3
511:              srli         tp, s3, 19
                  or           t5, gp, t3
                  bge          t6, a2, 524f
                  bge          tp, t3, 524f
                  addi         s5, s7, -1446
                  bge          t1, s2, 517f
517:              bge          a6, a7, 524f
                  or           s4, s0, sp
                  slt          a1, s11, zero
                  add          a3, s6, a1
                  and          s3, t5, s10
                  lui          a5, 647651
                  or           gp, t4, s3
524:              auipc        s7, 727031
                  sra          a4, a7, s5
                  ori          s9, s1, 563
                  andi         a7, s10, -530
                  lui          gp, 508766
                  add          t1, s11, s10
                  nop
                  add          s5, t0, s0
                  lw           tp, 4(s2)
                  slti         s3, s5, -1692
                  sra          t0, s6, s5
                  addi         s2, s2, 56
                  srli         s3, t4, 18
1023:             addi x7, x4, 1
1023:             jalr x7, x7, 0
sub_2:            bltu         a1, s7, sub_2_stack_p
                  srl          ra, s5, s7
sub_2_stack_p:    addi         s2, s2, -12
                  slli         sp, s11, 17
                  sw           tp, 4(s2)
                  slt          t2, gp, t4
                  addi         s3, s0, -961
                  lui          a4, 987733
                  la           sp, region_1+1848 #start riscv_load_store_rand_instr_stream_0
                  sltu         t2, t0, gp
                  lui          t1, 237814
                  xor          s9, sp, s7
                  lbu          tp, -273(sp)
                  and          a2, sp, s4
                  sltiu        s0, a5, 46
                  lb           a1, -1163(sp)
                  sb           s2, 9(sp)
                  sb           sp, -49(sp)
                  sub          a5, t2, t0
                  ori          t5, a1, -1945
                  sra          t1, s3, s10
                  xor          t6, s5, ra
                  lbu          a5, -1470(sp)
                  lb           s11, -1668(sp)
                  sltiu        s10, t5, -1419
                  srl          a7, t4, s0
                  sltu         t0, t0, s6
                  ori          s0, t5, 875
                  or           s8, s3, t0
                  lbu          gp, -1651(sp)
                  lb           s0, -1737(sp)
                  sra          t6, t4, a6
                  lui          s6, 502494
                  lb           a7, -1119(sp)
                  srl          t1, s5, s11
                  xor          t2, s10, s7
                  sw           s9, -24(sp)
                  auipc        t6, 21581
                  sb           s10, -629(sp)
                  lui          t0, 956554
                  lw           zero, -304(sp)
                  lb           t5, -634(sp)
                  lbu          t5, -17(sp)
                  srli         s4, a0, 25
                  lui          t5, 465498
                  sb           t3, -1067(sp)
                  sb           t0, -881(sp)
                  lh           s8, -886(sp)
                  lb           s10, -1753(sp)
                  lbu          s5, -1477(sp)
                  xor          gp, tp, s8
                  sll          a4, s11, t6
                  slt          a3, a7, a0
                  srai         s10, s2, 6
                  lbu          s5, -1281(sp)
                  lbu          t0, -1366(sp)
                  lb           a6, -1699(sp)
                  lbu          s5, -685(sp)
                  srl          a6, a0, a5
                  sh           a3, -592(sp)
                  lbu          t6, -1773(sp)
                  lbu          a1, -1098(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_0+1136 #start load_store_instr_stream_2
                  lb           gp, 7(t5)
                  la           s11, region_0+1665 #start load_store_instr_stream_0
                  la           a4, region_0+961 #start load_store_instr_stream_1
                  sh           t2, 12(t5)
                  lh           t3, 0(t5)
                  sb           t6, 156(s11)
                  lb           s7, -4(s11)
                  sb           t4, 58(t5)
                  lhu          t6, -549(a4)
                  sb           s1, -33(t5)
                  lb           s3, 15(s11)
                  lbu          gp, 184(a4)
                  sb           ra, -33(t5)
                  sb           t0, -55(t5)
                  lhu          s0, 233(s11)
                  lhu          s10, -117(a4)
                  lhu          t1, 38(t5)
                  sb           s9, -216(s11)
                  lbu          s3, 4(t5)
                  lb           ra, 65(s11)
                  lb           s4, 309(a4)
                  lh           t3, 237(s11)
                  lhu          s4, 20(t5) #end load_store_instr_stream_2
                  sb           s1, 554(a4) #end load_store_instr_stream_1
                  lhu          a5, -33(s11)
                  lh           t2, -229(s11) #end load_store_instr_stream_0
                  la           sp, region_0+307 #start riscv_load_store_hazard_instr_stream_0
                  lbu          t2, -204(sp)
                  lb           t6, -44(sp)
                  lbu          t5, -44(sp)
                  sb           gp, -44(sp)
                  sb           a6, -44(sp)
                  sb           a7, -44(sp)
                  lb           s10, -26(sp)
                  sh           a5, -145(sp)
                  srl          a6, s2, s9
                  lh           s8, -145(sp)
                  sb           s0, -25(sp)
                  and          s3, s4, gp
                  sh           t1, -25(sp)
                  lbu          s8, -25(sp)
                  lh           t2, 47(sp)
                  sh           t6, 47(sp) #end riscv_load_store_hazard_instr_stream_0
                  bgeu         t0, a6, 5f
                  srl          s11, t0, s10
                  auipc        t3, 902794
                  bne          s0, s5, 11f
                  slt          a3, a7, s7
5:                bltu         t0, a6, 14f
                  slt          s1, s8, tp
                  bge          s6, a5, 14f
                  and          s11, s8, s10
                  sra          zero, s11, ra
                  slti         s6, ra, -410
11:               ori          a5, a2, 1093
                  slti         s4, s5, -54
                  sub          a7, s3, s4
14:               and          t2, a7, t4
                  bgeu         s1, s10, 18f
                  sll          s10, a6, zero
                  bgeu         s11, t3, 21f
18:               lui          t3, 990456
                  srai         a6, a0, 23
                  and          t5, s4, a0
21:               andi         s6, s5, 295
                  andi         s7, s10, -954
                  srli         s11, s11, 12
                  sra          s11, t3, s9
                  bgeu         t6, a0, 30f
                  auipc        sp, 342683
                  or           s10, a7, s4
                  xori         s7, a0, 241
                  or           t1, tp, s10
30:               nop
                  or           a4, a7, ra
                  sltu         ra, t5, a1
                  andi         s5, s9, -404
                  add          a1, t2, a6
                  andi         t2, ra, 613
                  sltiu        t2, t2, 726
                  bge          t5, a2, 49f
                  srai         s7, s10, 12
                  sra          tp, t1, t0
                  xori         s6, a0, -1673
                  slti         s4, a6, 108
                  xor          a2, t2, s10
                  auipc        t0, 22156
                  srli         a5, a3, 22
                  bge          s2, t4, 51f
                  srai         s7, a4, 13
                  bltu         t1, t5, 57f
                  bgeu         s10, t0, 56f
49:               addi         a1, s7, 2002
                  sra          ra, a6, s0
51:               nop
                  srai         t3, s3, 14
                  add          a7, gp, s8
                  and          a3, tp, a5
                  sll          s0, t2, t0
56:               nop
57:               add          s11, a2, tp
                  ori          s10, s2, -1243
                  srl          s7, s1, a6
                  nop
                  bgeu         sp, a7, 72f
                  srli         s6, s8, 26
                  slt          s1, s10, s8
                  lui          s10, 334053
                  add          t3, s1, a6
                  nop
                  bne          a3, s6, 82f
                  xori         s6, t1, 55
                  or           sp, a4, s6
                  sltiu        s1, a5, -1235
                  xori         s3, t0, -1485
72:               sltu         t0, t1, t6
                  or           a3, a6, s10
                  srli         s5, sp, 2
                  srai         s11, s1, 16
                  add          s3, ra, t2
                  add          sp, a7, t5
                  auipc        a4, 374783
                  addi         t2, a4, -1234
                  xor          s0, tp, a0
                  sltu         ra, t2, a4
82:               bge          s3, a0, 101f
                  slli         t1, a2, 24
                  bne          s2, s7, 101f
                  bltu         a6, sp, 90f
                  sra          ra, s11, t4
                  bne          a3, a1, 96f
                  blt          t5, s1, 102f
                  ori          gp, sp, -1107
90:               srai         a1, s4, 4
                  auipc        a3, 733785
                  sll          ra, a3, s10
                  xor          gp, s8, s4
                  beq          s6, s4, 104f
                  andi         gp, t2, -1395
96:               nop
                  and          a6, a0, a4
                  bge          t5, t6, 118f
                  srli         a3, a2, 0
                  add          s9, s3, s8
101:              xor          a1, s4, zero
102:              xori         t6, s8, 1142
                  xor          a2, t2, s9
104:              blt          s4, t0, 119f
                  sltiu        s11, s1, 884
                  slti         a3, a1, -892
                  lui          t6, 172217
                  xor          s10, s4, zero
                  xori         a2, sp, -777
                  sll          tp, gp, s4
                  addi         a4, a6, -1020
                  slti         t2, s7, -824
                  xor          s8, s10, s4
                  auipc        ra, 742071
                  bgeu         a3, t1, 117f
                  andi         t0, s8, -951
117:              xori         t0, t3, 492
118:              xor          s8, tp, a6
119:              sll          t1, t0, t0
                  lw           tp, 4(s2)
                  sra          s3, a5, s9
                  addi         s2, s2, 12
                  lui          s7, 938610
                  slti         a1, ra, 671
                  slli         a4, t0, 30
                  xori         gp, t0, 1524
                  ori          a7, s1, -1288
                  sll          a3, s10, s5
                  xori         a4, s2, 668
                  slli         ra, sp, 11
                  and          s6, a4, s10
238:              addi x6, x4, 0
238:              jalr x6, x6, 0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x10, x18, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x19, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x19, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x19, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x19, x7, ecall_handler
                  li x7, 0x1
                  beq x19, x7, instr_fault_handler
                  li x7, 0x5
                  beq x19, x7, load_fault_handler
                  li x7, 0x7
                  beq x19, x7, store_fault_handler
                  li x7, 0xc
                  beq x19, x7, pt_fault_handler
                  li x7, 0xd
                  beq x19, x7, pt_fault_handler
                  li x7, 0xf
                  beq x19, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x18, x10, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x10, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x10, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x18, x10, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x18, x10, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x18, x10, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
