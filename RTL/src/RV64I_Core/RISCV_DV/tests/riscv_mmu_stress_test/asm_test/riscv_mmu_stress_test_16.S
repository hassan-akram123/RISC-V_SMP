.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 1
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x2
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0xf37d37ba
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0xc575cd29
                  li x11, 0x80000000
                  li x12, 0xa19d0937
                  li x13, 0xba5effc1
                  li x14, 0x3a053cf2
                  li x15, 0xd
                  li x16, 0x80000000
                  li x17, 0xf416e745
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0xea90c507
                  li x25, 0x80000000
                  li x26, 0x8
                  li x27, 0xf904f8bb
                  li x28, 0x80000000
                  li x29, 0x31532947
                  li x30, 0xf46e2917
                  li x31, 0x80000000
                  la x7, user_stack_end
main:             la           sp, region_0+1281 #start riscv_load_store_hazard_instr_stream_2
                  sb           s8, -8(sp)
                  srl          gp, s7, a4
                  lbu          s9, -8(sp)
                  slli         a4, s8, 4
                  sb           s7, -8(sp)
                  lbu          a7, 3(sp)
                  lb           a1, 4(sp)
                  sb           a4, 4(sp)
                  srl          t5, ra, s8
                  sb           tp, 4(sp)
                  sb           zero, -12(sp)
                  lbu          s1, -12(sp)
                  lbu          t3, -1(sp)
                  ori          s0, t4, -742
                  slt          s0, a1, s4
                  lbu          t1, -14(sp)
                  andi         tp, tp, 1025
                  lui          s6, 356029
                  lbu          s5, -14(sp)
                  sb           s4, -14(sp)
                  sb           sp, -14(sp)
                  sb           s7, -14(sp)
                  lb           s1, -14(sp)
                  lb           t0, -14(sp)
                  sb           a5, -15(sp)
                  lb           s5, 8(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+983 #start riscv_load_store_rand_instr_stream_2
                  sb           a6, 100(sp)
                  lhu          t3, 69(sp)
                  slti         a2, s7, 936
                  lb           s7, 34(sp)
                  nop
                  lhu          a0, 223(sp)
                  lb           a0, 198(sp)
                  lui          t4, 32171
                  sb           s6, 142(sp)
                  addi         s4, s8, -12
                  lb           s4, 104(sp)
                  lui          a1, 38616
                  sb           s1, -222(sp)
                  srl          s1, a1, ra
                  sb           s9, -241(sp)
                  lb           a7, 214(sp)
                  srai         t6, s9, 21
                  slti         s10, gp, 1649
                  slli         a0, a4, 21
                  slti         t6, a2, 458
                  sll          s4, zero, a2
                  sb           t3, -210(sp)
                  addi         t0, s1, -1305
                  auipc        s6, 961103
                  andi         t5, a1, -316
                  lhu          t0, 243(sp)
                  and          t0, s4, a7
                  lbu          zero, -148(sp)
                  lbu          s10, 248(sp)
                  sw           t4, 137(sp)
                  lb           tp, 92(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a0, region_1+892 #start riscv_load_store_rand_instr_stream_1
                  lb           tp, 86(a0)
                  nop
                  slti         a6, a5, -1708
                  slti         s1, s5, 995
                  sltiu        s9, s2, 838
                  lbu          gp, -222(a0)
                  lh           s1, -48(a0)
                  srai         s4, gp, 4
                  sb           tp, -70(a0)
                  lb           tp, 6(a0)
                  sltu         t0, a6, s5
                  lhu          gp, -82(a0)
                  sra          s8, a3, s6
                  lh           a1, 36(a0)
                  andi         t5, tp, 1375
                  sb           s6, 127(a0)
                  slt          s10, a6, s10
                  lb           s6, -173(a0)
                  sb           s3, 233(a0)
                  slt          a6, a1, tp
                  xori         t5, t3, -386
                  sltiu        a6, s8, -1978
                  sh           a6, -40(a0)
                  nop
                  sll          s1, a3, a5
                  sll          t6, s10, s10
                  sb           s5, -116(a0)
                  lbu          zero, -205(a0)
                  lb           t1, -169(a0)
                  slli         zero, s2, 26
                  lb           a6, -165(a0)
                  sll          a4, a6, s2
                  slti         a5, t5, -1223
                  sw           s1, 20(a0)
                  sh           s5, -102(a0)
                  sb           tp, 23(a0)
                  sltiu        a1, s7, -840
                  sra          s7, s1, s2
                  lbu          s1, -246(a0) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1668 #start riscv_load_store_rand_instr_stream_0
                  lbu          s10, -931(sp)
                  lb           s7, -76(sp)
                  xori         s3, a0, -765
                  srl          s3, a0, s7
                  srai         t1, t6, 12
                  lui          t1, 61186
                  or           s9, t2, zero
                  slti         s10, s0, 630
                  sltiu        a2, a5, -76
                  add          a4, sp, t3
                  ori          t1, s5, -724
                  nop
                  add          a5, a0, s2
                  slti         a4, s0, 796
                  lh           a4, -734(sp)
                  sb           s8, -1613(sp)
                  or           s0, a7, sp
                  sh           sp, -226(sp)
                  andi         t0, t4, -1493
                  slli         s3, s4, 1
                  srai         t5, a7, 12
                  xori         s6, s6, -192
                  add          s7, t0, t2
                  sb           a0, -520(sp)
                  sll          s6, s3, s10
                  lb           s6, 55(sp)
                  andi         s5, s9, 319
                  sb           s8, -326(sp)
                  slli         t5, a1, 10
                  sh           s5, 128(sp)
                  lb           t5, -1225(sp)
                  sub          tp, s1, s4
                  xor          a3, a5, sp
                  sll          s7, s5, a2
                  or           s6, sp, sp
                  srl          gp, gp, t5
                  auipc        t3, 881271
                  sh           sp, -72(sp)
                  lui          s3, 53870
                  lbu          a0, -71(sp)
                  and          t3, t5, t1
                  lb           s6, 229(sp)
                  sh           t1, 180(sp)
                  add          s0, s3, s1
                  sb           t3, -757(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_0+1449 #start riscv_load_store_hazard_instr_stream_1
                  lb           s6, -16(s10)
                  sb           a5, -16(s10)
                  sb           tp, -16(s10)
                  srl          t6, tp, ra
                  slli         a5, a6, 16
                  add          s7, s1, t5
                  lh           tp, 11(s10)
                  sltiu        a6, t4, -1940
                  lhu          s6, 11(s10)
                  lw           t1, 11(s10)
                  addi         zero, zero, 857
                  sw           s6, 11(s10)
                  xori         t1, s4, 1881
                  lbu          s9, 11(s10)
                  lb           sp, 11(s10)
                  lbu          a0, 11(s10)
                  lb           t5, -3(s10)
                  lb           zero, -10(s10) #end riscv_load_store_hazard_instr_stream_1
                  la           a1, region_1+1689 #start riscv_load_store_hazard_instr_stream_0
                  sb           a1, -1209(a1)
                  sb           a6, -1209(a1)
                  sb           s4, -1647(a1)
                  lb           a6, -1647(a1)
                  lb           a7, -1647(a1)
                  sh           gp, 299(a1)
                  lb           s8, -1019(a1)
                  sub          s1, a7, a1
                  sh           a7, -1349(a1)
                  lhu          s10, -1687(a1)
                  sb           tp, -1687(a1) #end riscv_load_store_hazard_instr_stream_0
                  la           a7, region_0+935 #start load_store_instr_stream_1
                  lh           s8, -9(a7)
                  la           s9, region_0+1599 #start load_store_instr_stream_0
                  sw           t1, 53(a7)
                  la           t4, region_0+825 #start load_store_instr_stream_2
                  lbu          s4, 5(s9)
                  lb           t3, -6(s9)
                  lh           t1, 11(s9)
                  lb           s8, -18(a7)
                  lbu          a2, -52(a7)
                  lbu          a4, 93(t4)
                  sb           s1, -110(t4)
                  lh           gp, -9(s9)
                  lbu          a4, 62(a7)
                  lb           s5, 104(t4)
                  lb           t5, 1(s9)
                  lb           s6, 58(a7)
                  lh           a5, -191(t4)
                  lh           gp, 55(a7)
                  sh           s11, -61(a7)
                  sb           gp, -8(a7) #end load_store_instr_stream_1
                  lbu          a1, 33(t4)
                  lb           a5, 14(s9)
                  lbu          sp, -34(t4)
                  lbu          a3, 212(t4)
                  lbu          a6, -1(s9)
                  lh           t5, 229(t4) #end load_store_instr_stream_2
                  lbu          s3, 7(s9) #end load_store_instr_stream_0
                  la           s7, region_0+393 #start load_store_instr_stream_0
                  lb           sp, 1348(s7)
                  la           t5, region_0+250 #start load_store_instr_stream_1
                  lbu          t6, -9(t5)
                  lh           s0, -169(s7)
                  lhu          t1, 0(t5)
                  sb           t4, -15(t5)
                  lb           gp, 1013(s7)
                  lh           s10, -157(s7)
                  lh           a7, 423(s7)
                  lbu          a5, -348(s7)
                  sb           s4, -2(t5)
                  sb           s11, -227(s7)
                  sb           s8, 562(s7)
                  sb           t5, -5(t5)
                  sb           s9, -12(t5) #end load_store_instr_stream_1
                  sb           t5, -18(s7) #end load_store_instr_stream_0
                  la           t1, region_0+1236 #start load_store_instr_stream_2
                  la           t5, region_0+152 #start load_store_instr_stream_3
                  lbu          s3, 1370(t5)
                  la           tp, region_0+1700 #start load_store_instr_stream_1
                  lb           s8, 1213(t5)
                  lbu          s1, 37(t1)
                  la           a0, region_0+213 #start load_store_instr_stream_4
                  lbu          gp, -51(tp)
                  lh           a4, 424(t1)
                  sb           a4, 1437(t5)
                  sw           t3, 1559(a0)
                  la           ra, region_0+1674 #start load_store_instr_stream_0
                  lbu          s4, 73(t5)
                  lh           s5, -58(tp)
                  sb           a0, 1140(a0)
                  sh           a0, 198(t5)
                  sh           t0, 1425(a0)
                  sw           t1, 1255(a0)
                  sb           t5, -265(t1)
                  sb           sp, 1166(a0)
                  sh           s11, -16(tp)
                  lb           s9, 61(tp)
                  sb           s1, 1649(t5)
                  lbu          a1, 20(ra)
                  sw           t2, -652(t1)
                  lbu          s10, -50(tp)
                  lb           a5, -47(tp)
                  sb           s2, -690(t1)
                  lbu          s8, 1291(t5)
                  lhu          t6, -42(ra)
                  lbu          zero, 25(ra)
                  lbu          s9, 1383(t5)
                  sb           a7, 20(ra)
                  lb           s3, 84(a0)
                  lbu          s4, 916(a0) #end load_store_instr_stream_4
                  sb           t4, -60(tp)
                  lbu          t3, 759(t5)
                  lbu          t0, 12(ra)
                  lbu          s9, -403(t1)
                  sh           s6, 1436(t5) #end load_store_instr_stream_3
                  lb           a1, 698(t1)
                  sb           s9, 6(tp) #end load_store_instr_stream_1
                  sb           s3, -426(t1) #end load_store_instr_stream_2
                  lhu          s4, -48(ra) #end load_store_instr_stream_0
                  sll          a1, a5, t3
                  slti         s5, t0, -1209
                  bgeu         a3, s8, 12f
                  srli         s3, zero, 12
                  sltiu        gp, s8, -66
                  srai         s4, s5, 11
                  sll          gp, s9, a6
                  slti         t1, a0, 544
                  beq          a6, t4, 10f
                  auipc        s4, 160265
10:               sra          t6, t6, a4
                  blt          s7, s4, 12f
12:               bgeu         t0, s0, 31f
                  addi         t6, a4, 1063
                  slli         tp, s1, 27
                  auipc        a3, 330972
                  srli         s7, t1, 24
                  ori          a3, t5, 270
                  bgeu         gp, s6, 38f
                  xor          s4, zero, s1
                  nop
                  bltu         a2, s1, 31f
                  sra          t4, s1, s8
                  or           s4, s4, s11
                  blt          s10, a7, 37f
                  xor          s4, t4, s8
                  beq          ra, sp, 31f
                  slti         s5, t4, 1203
                  sub          s7, t0, t2
                  slti         a4, a0, 1731
                  auipc        t4, 699563
31:               beq          zero, s8, 43f
                  srl          a5, t0, s11
                  xori         sp, zero, -347
                  sll          s1, ra, s5
                  srli         a1, t1, 27
                  bgeu         tp, a5, 45f
37:               lui          a2, 129879
38:               sra          s10, tp, a2
                  andi         s3, s2, -1845
                  xori         s10, t5, -1667
                  nop
                  bgeu         s11, s3, 61f
43:               sub          s5, a5, s2
                  addi         ra, s3, -1842
45:               sltiu        s1, gp, 324
                  sltiu        a6, a3, 122
                  auipc        s7, 53550
                  srl          t1, t4, s8
                  lui          a2, 922023
                  blt          a7, sp, 54f
                  or           t0, sp, a3
                  sltiu        a7, a6, -1005
                  blt          s0, t6, 55f
54:               addi         a3, a0, -344
55:               srai         a4, tp, 26
                  bgeu         s10, ra, 65f
                  or           a2, s5, s0
                  sll          s9, s1, s5
                  add          s7, a2, s2
                  bge          zero, a5, 63f
61:               slli         tp, t6, 2
                  slli         zero, s0, 9
63:               beq          zero, s9, 70f
                  srai         s5, s2, 7
65:               andi         ra, s3, -358
                  lui          t4, 622563
                  nop
                  and          a7, a2, s10
                  nop
70:               sltu         s0, tp, a1
                  srai         t1, s1, 18
                  xor          t5, a6, s8
                  sub          s8, t1, s3
                  bne          s4, s6, 88f
                  sltiu        t3, a6, 284
                  slli         t5, t4, 22
                  auipc        s5, 706201
                  or           a0, a0, s6
                  sll          s1, s1, t5
                  srli         t3, a7, 28
                  sra          s3, s8, t0
                  ori          a2, a6, -1581
                  lui          t5, 894387
                  nop
                  lui          tp, 952563
                  slt          s10, s0, s11
                  addi         a3, a0, -1877
88:               bge          sp, a0, 96f
                  nop
                  sltiu        s0, a5, 86
                  bltu         t6, tp, 107f
                  sll          s5, sp, s4
                  srli         t0, s7, 12
                  srl          a5, s2, s0
                  slli         t4, a7, 4
96:               or           s7, a3, t1
                  or           tp, t4, a2
                  bltu         t3, s2, 100f
                  ori          zero, t4, -893
100:              bltu         a0, t2, 116f
                  and          tp, s10, s3
                  ori          s5, tp, -457
                  nop
                  slt          a0, zero, s10
                  slli         a5, a6, 29
                  slt          t4, s6, a5
107:              sub          sp, s4, s9
                  add          s8, sp, s3
                  sra          sp, t0, s9
                  sll          tp, t5, s3
                  srai         t6, t0, 22
                  srai         t5, s6, 29
                  bltu         t4, s1, 124f
                  sll          s1, a6, a1
                  xori         a4, ra, -192
116:              sra          tp, s7, t4
                  nop
                  slti         s7, s5, -365
                  xor          s1, a2, gp
                  sll          zero, s10, s6
                  la           s9, sub_2
                  addi         s9, s9, 105
                  bgeu         s4, s7, main_j1 #branch to jump instr
                  auipc        t3, 56664
                  srl          a5, a0, a4
                  xori         s5, t5, 454
                  xori         s0, t5, -1272
                  and          s8, s0, s4
main_j1:          jalr         t6, s9, -104 #jump main -> sub_2
                  ori          gp, a6, -862
                  lui          sp, 981843
                  bltu         s2, s7, 141f
                  bne          ra, s5, 138f
                  slli         s8, gp, 23
124:              and          a5, ra, a5
                  bne          s2, s6, 127f
                  lui          t3, 560506
127:              beq          s3, t0, 135f
                  beq          s7, a6, 148f
                  srai         a6, a6, 8
                  blt          t3, s5, 145f
                  slti         a0, ra, -19
                  xor          t3, t4, a6
                  slli         zero, t1, 30
                  or           sp, t5, s6
135:              lui          t5, 516989
                  bge          zero, s2, 154f
                  sltu         t3, a4, a7
138:              sltiu        s1, t2, 159
                  bge          s8, zero, 155f
                  xor          a0, s8, t2
141:              nop
                  ori          s10, t0, 1737
                  slti         t1, s5, 2022
                  bne          s2, t3, 154f
145:              add          ra, t2, s6
                  sub          s8, s2, s10
                  sltiu        ra, s9, 1365
148:              bne          s9, a0, 150f
                  sltu         s7, t5, a5
150:              add          t0, ra, s2
                  srli         t1, s5, 0
                  slli         a7, t4, 20
                  beq          s2, s3, 161f
154:              xori         a6, t3, -1274
155:              sll          s4, t6, s5
                  xor          zero, s2, s7
                  or           s10, s6, tp
                  slti         sp, t3, -457
                  srli         s4, t3, 8
                  and          a6, s3, s0
161:              bge          a2, s7, 177f
                  auipc        a2, 435644
                  slli         a5, a5, 20
                  and          t3, a4, s6
                  srl          s6, a1, s8
                  blt          s4, s11, 182f
                  srai         s5, s3, 1
                  blt          s3, ra, 178f
                  bgeu         t2, a0, 183f
                  and          a7, a3, a0
                  slli         s4, t3, 5
                  and          a5, s6, s1
                  sltiu        s1, sp, 839
                  lui          t4, 284693
                  bltu         ra, ra, 195f
                  xor          a0, a4, s10
177:              sll          t6, a0, a5
178:              auipc        ra, 653142
                  sll          s0, sp, zero
                  or           s1, t3, t6
                  lui          s4, 787956
182:              blt          s4, s11, 197f
183:              bltu         a0, s8, 190f
                  slti         t3, a0, 1032
                  addi         a6, a6, -874
                  sll          s4, zero, a6
                  lui          a3, 1028767
                  andi         s4, zero, 1902
                  sll          s6, s2, a5
190:              sltu         s3, s7, t2
                  or           s8, s6, a3
                  bltu         t6, a2, 208f
                  addi         a1, ra, 1859
                  sltiu        t4, s2, 92
195:              srli         s7, s11, 22
                  srl          gp, s1, s5
197:              sll          sp, s8, t5
                  sll          t4, t1, s5
                  bge          t1, ra, 201f
                  slt          s5, t6, s3
201:              bltu         t5, s5, 206f
                  xor          s3, a7, s8
                  blt          t0, a3, 223f
                  lui          s1, 683106
                  sra          gp, t2, a2
206:              srl          zero, a1, a2
                  srli         t3, a3, 12
208:              xor          s5, gp, a4
                  srl          s8, t0, tp
                  beq          ra, gp, 219f
                  sra          s9, t6, a0
                  andi         tp, a5, -1920
                  add          s8, s4, s2
                  nop
                  la           s7, sub_1
                  sltu         t4, s10, s9
                  addi         a5, s8, -210
                  srai         t5, s9, 1
                  sltu         s3, s2, s1
                  addi         s7, s7, -680
                  bge          a6, a6, main_j2 #branch to jump instr
                  sltu         s9, t0, t6
                  sub          s9, tp, a1
main_j2:          jalr         t6, s7, 681 #jump main -> sub_1
                  add          ra, s11, t2
                  xor          s1, a1, s5
                  srl          s9, s9, s4
                  bgeu         a7, t4, 228f
                  auipc        s0, 931325
219:              srli         a3, t6, 23
                  auipc        t6, 993079
                  auipc        s3, 171725
                  srai         s3, t0, 5
223:              sltu         s1, s3, s6
                  sltiu        s3, t1, -842
                  sub          s0, s5, t0
                  bne          a6, a2, 230f
                  sltu         t4, t0, s7
228:              xor          s9, t3, t5
                  or           zero, t3, a3
230:              addi         s10, t1, 318
                  sll          a3, t3, s0
                  auipc        t1, 854618
                  ori          s0, t0, 1133
                  slli         s6, s11, 21
                  ori          tp, s6, 477
                  bne          t2, s11, 255f
                  addi         s4, s1, 332
                  srl          t1, s11, s3
                  sub          t3, s10, s0
                  slli         t1, t1, 16
                  xor          s4, s2, a1
                  add          s10, zero, a6
                  srai         a0, s11, 3
                  or           a6, a4, a3
                  xori         a3, s10, 1536
                  sltiu        t1, tp, 704
                  ori          t5, t4, 246
                  xori         s10, t4, 461
                  bgeu         s7, tp, 250f
250:              addi         a3, t2, 1543
                  addi         ra, a6, -542
                  nop
                  sll          t0, a2, s5
                  sltu         t6, gp, a0
255:              bge          a7, zero, 271f
                  sub          t3, t3, a2
                  auipc        s9, 790783
                  srl          a0, s5, a5
                  auipc        a4, 686238
                  srai         s6, a7, 20
                  bge          tp, zero, 281f
                  addi         t5, s7, -2026
                  sltu         s1, t4, s0
                  sltu         s6, t4, sp
                  xori         s9, s1, -1190
                  srl          s10, a5, a0
                  sll          tp, t3, s1
                  sra          a1, t5, s10
                  sra          s0, s0, s10
                  bge          s5, s0, 272f
271:              lui          ra, 36990
272:              slti         t3, s1, 41
                  srli         ra, t6, 5
                  or           t3, s5, gp
                  add          t6, s9, s6
                  srl          sp, t6, ra
                  sll          a5, ra, s2
                  and          a4, t2, s2
                  lui          a0, 930396
                  bltu         s0, s4, 282f
281:              sll          s3, s3, a5
282:              sll          s6, s9, gp
                  slli         a2, tp, 14
                  xor          s0, tp, s9
                  lui          s1, 271935
                  auipc        s10, 363485
                  lui          t4, 64775
                  nop
                  nop
                  add          a0, sp, s11
                  sll          t3, a1, ra
                  bltu         s6, s10, 301f
                  srai         a3, t0, 12
                  andi         s1, a2, -1528
                  bltu         a6, s6, 314f
                  bgeu         s7, s10, 309f
                  slti         t0, ra, -134
                  sub          t4, a3, gp
                  add          s6, gp, s6
                  srl          s6, t1, s9
301:              lui          a2, 1028191
                  sltiu        a1, s2, 750
                  sltiu        a5, s6, -898
                  add          a2, gp, s7
                  slti         a5, s1, 355
                  ori          ra, t6, 2024
                  xor          a7, a1, s2
                  xori         t6, s5, -35
309:              add          zero, a2, a5
                  nop
                  srai         s3, s3, 27
                  or           t3, s11, s11
                  sub          s8, t2, a7
314:              bltu         ra, s8, 322f
                  slli         t6, t1, 31
                  slt          t1, s4, t4
                  lui          a7, 946703
                  srli         a3, t0, 11
                  srai         s10, a5, 9
                  bgeu         s4, s0, 323f
                  bgeu         s4, tp, 339f
322:              srl          tp, a2, ra
323:              xori         sp, a1, -1651
                  slti         a4, t1, -886
                  sra          a5, a3, a2
                  xori         t3, gp, 1104
                  auipc        a7, 776175
                  nop
                  sub          s6, zero, s0
                  xor          s8, a7, sp
                  and          sp, sp, ra
                  sra          t1, t0, t5
                  xor          t1, s0, ra
                  slt          s5, t4, t0
                  xori         a5, a0, 1089
                  srl          zero, t1, a7
                  bltu         a2, t6, 341f
                  ori          a1, t5, -973
339:              slti         s9, t0, -795
                  sltu         s9, s5, a3
341:              addi         t4, t5, 1136
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sltiu        s10, s3, 1390
                  sltiu        a4, gp, -1478
                  bge          a4, t5, sub_1_stack_p
                  add          a2, t2, s11
                  add          tp, a0, a6
                  sra          s9, s10, s5
sub_1_stack_p:    addi         t2, t2, -36
                  sw           t6, 4(t2)
                  slli         s0, a4, 24
                  ori          tp, t4, -264
                  or           t5, tp, sp
                  la           s0, region_1+56 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a4, 161(s0)
                  lb           s3, 161(s0)
                  lb           gp, -11(s0)
                  lb           a4, -11(s0)
                  xor          gp, t6, t0
                  lbu          t6, -15(s0)
                  lbu          s1, -15(s0)
                  lb           a2, -15(s0)
                  lb           sp, -15(s0)
                  sra          s8, a1, s1
                  lbu          a2, -15(s0)
                  lb           s10, -15(s0)
                  sb           s8, -15(s0)
                  lbu          a2, -15(s0)
                  lb           s9, -15(s0)
                  xori         a4, s0, -1428
                  lbu          s10, -15(s0)
                  lbu          t1, -15(s0)
                  lb           s6, -15(s0)
                  lbu          a5, -15(s0) #end riscv_load_store_hazard_instr_stream_1
                  la           t1, region_0+1223 #start load_store_instr_stream_1
                  lbu          gp, -112(t1)
                  la           a5, region_0+1264 #start load_store_instr_stream_0
                  sb           t4, -224(t1)
                  lb           a0, 45(a5)
                  sb           s7, 6(a5)
                  lbu          a2, -250(t1)
                  sb           a7, -45(a5)
                  lb           a4, -194(t1)
                  lhu          s7, -27(t1)
                  sb           s5, -31(a5)
                  lh           gp, 50(a5)
                  lb           s6, 214(t1)
                  sb           a4, 131(t1)
                  sh           t1, 26(a5)
                  sb           t1, 26(t1)
                  lb           t4, 48(a5)
                  lbu          a2, -256(t1)
                  lbu          zero, -233(t1) #end load_store_instr_stream_1
                  lbu          t4, 28(a5)
                  lb           ra, -38(a5) #end load_store_instr_stream_0
                  la           s5, region_1+816 #start riscv_load_store_rand_instr_stream_1
                  andi         s9, t2, 1337
                  lbu          t5, -157(s5)
                  lb           zero, 157(s5)
                  lbu          t0, 603(s5)
                  lb           sp, 637(s5)
                  lbu          tp, 1137(s5)
                  add          a7, s1, s2
                  lb           s8, 1096(s5)
                  xor          a0, s2, t0
                  lbu          t4, -703(s5)
                  lhu          a4, 270(s5)
                  sb           t2, 1141(s5)
                  nop
                  sb           t3, 22(s5)
                  lbu          t1, 359(s5)
                  lb           t1, 646(s5)
                  slt          a2, t1, t4
                  lb           s1, 1101(s5)
                  lb           ra, -474(s5)
                  sb           a5, 95(s5)
                  srl          t1, t2, gp
                  ori          gp, t2, 1546
                  sll          s8, s8, t4
                  auipc        a6, 154812
                  sw           s3, 1064(s5)
                  srli         t4, a7, 31
                  srai         t4, s3, 14
                  lbu          tp, -790(s5) #end riscv_load_store_rand_instr_stream_1
                  la           ra, region_1+1321 #start load_store_instr_stream_0
                  la           sp, region_1+1169 #start load_store_instr_stream_1
                  lb           t5, 15(sp)
                  lb           t6, 6(sp)
                  lbu          a2, -15(ra)
                  lb           s5, -13(sp)
                  lbu          s4, 0(ra)
                  lb           t4, -6(sp)
                  lbu          a0, -5(ra)
                  lh           t3, 11(ra)
                  lb           t0, -15(ra)
                  lb           s6, 8(ra)
                  lbu          s7, -8(sp)
                  lb           a4, -1(sp) #end load_store_instr_stream_1
                  lbu          s1, 4(ra) #end load_store_instr_stream_0
                  la           s5, region_0+598 #start riscv_load_store_rand_instr_stream_0
                  sltu         a5, t6, s3
                  slt          s8, gp, s3
                  sw           s8, -42(s5)
                  sb           s6, 64(s5)
                  slli         a0, s7, 10
                  sub          t0, sp, s9
                  andi         a0, t5, 1372
                  slt          zero, t5, tp
                  sltiu        s7, s7, 1674
                  lb           t5, -14(s5)
                  add          a3, s6, s10
                  slti         ra, s8, 1717
                  srai         s4, zero, 21
                  sb           t0, -27(s5)
                  sll          s7, t1, t6
                  slti         s7, s11, 21
                  xor          a3, s5, t0
                  lbu          t5, -55(s5)
                  srl          ra, s6, a7
                  sw           s5, 54(s5)
                  lw           a1, 58(s5)
                  sb           a7, 15(s5)
                  lbu          t0, 49(s5)
                  sw           a1, -46(s5)
                  sb           a1, -7(s5)
                  auipc        t3, 998624
                  lb           s4, -38(s5) #end riscv_load_store_rand_instr_stream_0
                  slti         gp, s0, 971
                  auipc        a3, 4144
                  slli         zero, t3, 23
                  beq          sp, s10, 23f
                  slli         a4, s9, 10
                  bne          s0, t2, 17f
                  lui          sp, 296543
                  srli         t0, t3, 2
                  xor          a3, a4, s5
                  slt          s9, s5, tp
                  bltu         s11, s10, 28f
                  slti         a5, zero, -777
                  slli         s9, t0, 0
                  ori          a1, a7, 1514
                  blt          a1, t6, 29f
                  xori         s1, s6, -1480
                  srai         a3, s2, 13
17:               bltu         a2, gp, 25f
                  srl          s9, sp, t0
                  srai         s7, ra, 13
                  sltu         s0, gp, a1
                  sra          a4, t2, s8
                  bgeu         t2, gp, 39f
23:               addi         t3, s5, 1944
                  blt          a7, s8, 41f
25:               srai         s0, s11, 28
                  lui          gp, 1045395
                  and          s8, tp, s7
28:               sltiu        a3, tp, -1098
29:               andi         a1, a0, -1021
                  sll          s9, s3, a4
                  xori         s3, s4, -565
                  slt          s4, t5, ra
                  slt          a5, a5, s3
                  sltiu        t5, t6, -59
                  srl          s3, s8, s1
                  xor          t6, zero, s2
                  slti         s6, s2, -326
                  ori          s9, t4, -88
39:               srl          a6, s0, s6
                  sltiu        s1, sp, -1110
41:               bltu         a7, a3, 42f
42:               andi         t4, s10, -996
                  slt          s3, ra, s9
                  bne          t6, s9, 64f
                  bne          a0, t5, 52f
                  bne          a5, a5, 59f
                  srai         sp, ra, 29
                  sltiu        a7, s5, 265
                  xori         s3, s5, -1987
                  slt          gp, zero, ra
                  sra          a0, a2, a1
52:               srai         a4, s4, 28
                  bge          s7, a4, 71f
                  beq          s2, a3, 72f
                  andi         tp, t0, -1443
                  andi         gp, a3, 24
                  or           ra, a6, s9
                  bgeu         ra, t1, 66f
59:               srai         a1, s9, 16
                  slli         t4, tp, 23
                  xor          s7, zero, s5
                  bltu         t3, a6, 64f
                  nop
64:               nop
                  bne          a5, t2, 68f
66:               bge          gp, a0, 82f
                  xor          a2, s9, s7
68:               srai         a5, a3, 27
                  andi         a3, t5, 1504
                  xor          sp, t6, a0
71:               sltu         s0, t3, s10
72:               nop
                  srli         t0, s3, 18
                  sltu         s7, s4, t4
                  srl          s10, tp, a4
                  slli         s6, a0, 12
                  nop
                  bge          s0, gp, 85f
                  andi         a3, s4, -1308
                  lui          a1, 552345
                  sub          t6, s4, s10
82:               bge          s11, a1, 89f
                  nop
                  lui          t6, 250226
85:               ori          s9, s8, 628
                  sll          s8, a2, tp
                  beq          s8, t1, 90f
                  andi         t5, a5, -964
89:               xori         tp, a4, 1941
90:               xor          s3, a2, s1
                  beq          sp, s10, 96f
                  blt          s0, s7, 106f
                  xor          s9, t3, s11
                  sra          tp, t6, gp
                  srai         a6, t2, 20
96:               sra          s3, t2, tp
                  slli         a1, a4, 28
                  srai         s4, s9, 14
                  or           a2, a4, s5
                  lui          t4, 639350
                  add          t4, s11, s6
                  lui          s10, 446558
                  auipc        t4, 984128
                  bge          a1, a4, 117f
                  xor          a6, gp, a4
106:              bltu         t4, s6, 112f
                  add          s6, s6, tp
                  bltu         s7, a3, 111f
                  sra          s5, a4, s4
                  ori          t5, a5, 1066
111:              xor          s9, s8, s1
112:              slti         s1, tp, 1047
                  srl          a2, a7, s4
                  sub          s10, s5, a6
                  slti         s10, s3, -1267
                  xor          s3, a0, s8
117:              slti         sp, t2, 134
                  blt          t1, gp, 137f
                  slti         s8, s6, -927
                  addi         t4, s8, 1977
                  sll          s7, t1, t0
                  sra          s4, s4, s8
                  xori         s5, s3, 1170
                  bltu         ra, s6, 144f
                  sra          a2, s10, a5
                  bne          ra, s9, 143f
                  blt          a0, a4, 138f
                  slli         t6, t3, 7
                  sltu         a2, s7, gp
                  sra          s8, a7, a4
                  slti         t3, t6, -270
                  bge          s2, s0, 140f
                  and          s4, tp, s4
                  la           t5, region_0+1956 #start riscv_load_store_hazard_instr_stream_0
                  srl          t3, a7, t6
                  lh           s8, -16(t5)
                  lb           a6, -16(t5)
                  sltiu        ra, s7, -1618
                  lb           a1, 13(t5)
                  srli         tp, s2, 6
                  lbu          a4, 13(t5)
                  sb           zero, 13(t5)
                  lb           s5, 13(t5)
                  lbu          t1, 13(t5)
                  sb           s0, 13(t5)
                  sb           s2, 13(t5)
                  sb           t1, 13(t5)
                  lb           s4, 13(t5)
                  slli         s9, t1, 27
                  lbu          t0, 13(t5)
                  lbu          s1, 13(t5)
                  lbu          a7, 13(t5)
                  sb           ra, 13(t5)
                  add          a5, tp, a4
                  lbu          a4, 13(t5) #end riscv_load_store_hazard_instr_stream_0
                  bge          s4, zero, 137f
                  andi         s3, a6, 499
                  add          t6, zero, zero
137:              srai         s0, a6, 30
138:              ori          a5, t2, -1809
                  srai         s6, s8, 30
140:              auipc        zero, 352695
                  bltu         t1, s11, 161f
                  or           s9, s10, t0
143:              sra          a3, tp, s8
144:              sra          s3, a3, s4
                  srl          s4, t2, gp
                  bge          t1, s5, 153f
                  bne          s1, a6, 160f
                  slt          sp, t1, a1
                  sub          zero, tp, s9
                  sub          zero, s4, t4
                  auipc        sp, 47531
                  lui          s5, 562650
153:              sll          a4, s3, zero
                  slt          a0, a2, s10
                  add          zero, s9, a2
                  beq          s11, s6, 173f
                  srli         t6, s11, 6
                  slli         s9, s4, 24
                  lui          a5, 161901
160:              xor          s10, s9, s9
161:              sra          s4, gp, s1
                  lui          a0, 1037253
                  srli         t6, s9, 23
                  addi         a5, t3, 514
                  blt          a1, a6, 173f
                  slti         sp, s9, 870
                  srli         s9, tp, 22
                  andi         a2, tp, -809
                  ori          sp, s10, 1157
                  srli         s3, s5, 16
                  xor          t5, zero, s3
                  sub          s6, s8, a0
173:              blt          a4, sp, 187f
                  add          zero, s4, a2
                  lui          t5, 587555
                  xori         gp, zero, 360
                  xor          t3, a7, a1
                  and          sp, s1, t1
                  add          s4, s4, a3
                  or           s6, s2, s2
                  andi         a3, ra, -307
                  sltu         s5, a7, s3
                  srai         a1, s10, 4
                  sub          t1, s10, s5
                  srli         t4, t4, 21
                  srl          s0, t4, s5
187:              andi         s8, a0, -1246
                  or           s10, sp, t4
                  and          ra, ra, s1
                  bltu         a1, s11, 193f
                  add          s3, s10, t4
                  bltu         t3, s4, 199f
193:              bgeu         a2, sp, 201f
                  and          tp, s7, t6
                  srai         ra, tp, 7
                  sub          t3, s10, a4
                  xori         a5, s11, 637
                  srl          sp, s3, a0
199:              and          s10, s3, t3
                  slt          a6, t2, s11
201:              slt          t0, a0, s5
                  lw           t6, 4(t2)
                  addi         t2, t2, 36
                  sll          a0, t0, a3
                  andi         a4, t6, -1741
                  sltiu        s10, tp, 151
354:              addi x22, x31, 1
354:              jalr x22, x22, 0
sub_2:            bne          a0, s2, sub_2_stack_p
sub_2_stack_p:    addi         t2, t2, -64
                  and          s6, s3, s11
                  sra          a4, t4, a5
                  sw           t6, 4(t2)
                  add          a0, s10, a6
                  la           sp, region_1+715 #start riscv_load_store_rand_instr_stream_0
                  lh           tp, 11(sp)
                  lbu          tp, 6(sp)
                  slli         a2, a5, 6
                  lbu          s5, -13(sp)
                  sltu         s10, s11, a0
                  lb           t5, 2(sp)
                  sub          t6, a6, sp
                  add          a1, s7, zero
                  ori          a7, t5, 1861
                  sb           s3, 10(sp)
                  andi         s1, t6, -1850
                  lb           s1, -8(sp)
                  xor          gp, a0, t3
                  srai         a5, a2, 31
                  lb           ra, -2(sp)
                  lbu          a6, -1(sp)
                  lb           s1, -9(sp)
                  lbu          a7, 3(sp)
                  sb           t6, -5(sp)
                  xori         a4, s1, 53
                  lbu          s3, -10(sp)
                  lb           s4, -1(sp)
                  lb           a5, 0(sp)
                  lbu          t6, -12(sp)
                  lb           t4, 0(sp)
                  slti         a0, t4, -128
                  and          s7, ra, s11
                  sb           t6, 10(sp)
                  auipc        s5, 49488
                  andi         a2, t1, 1949
                  sltu         s9, gp, a0
                  lh           t6, 9(sp)
                  sh           a6, -15(sp)
                  lb           a1, 8(sp)
                  addi         s5, s3, 1553
                  lh           a5, 3(sp)
                  srai         a3, s10, 4
                  lb           s7, -9(sp)
                  lb           a5, 16(sp)
                  lhu          gp, -7(sp)
                  lbu          gp, 4(sp)
                  srai         t3, sp, 27
                  lbu          s5, 16(sp)
                  lb           s6, 2(sp)
                  lh           zero, -15(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_0+966 #start riscv_load_store_rand_instr_stream_2
                  srl          a1, s2, gp
                  slt          t4, s9, t6
                  sw           a6, 14(s9)
                  srl          t4, a0, a0
                  lb           a1, -16(s9)
                  lui          s5, 893341
                  lw           s3, 6(s9)
                  or           s4, ra, a1
                  sb           s9, -11(s9)
                  sub          t1, a0, s2
                  xori         a0, ra, -1046
                  srai         s6, a7, 23
                  add          t1, t6, ra
                  or           a3, a1, t2
                  xori         a3, a6, -97
                  slli         a5, a5, 18
                  srl          sp, a5, a2
                  lbu          a7, -14(s9)
                  lbu          t4, 2(s9)
                  lb           t0, 14(s9)
                  lb           s0, -14(s9)
                  xori         t6, t5, -1531
                  sra          t6, ra, s10
                  lh           a4, -2(s9)
                  lbu          s3, 1(s9)
                  xor          s10, t3, s1
                  auipc        zero, 365782
                  lw           a4, 2(s9)
                  lb           a4, -13(s9)
                  ori          a1, t0, -998
                  sltiu        ra, s9, -1000
                  sltiu        a7, a5, -183
                  slti         sp, a0, -667
                  sb           s1, -5(s9)
                  lhu          a4, 12(s9)
                  lbu          a4, -9(s9)
                  lb           a1, 6(s9)
                  xor          s5, s11, tp
                  lb           sp, 1(s9)
                  lb           t5, 5(s9)
                  xor          t4, s6, a5
                  xor          s10, s6, s3
                  xori         s0, s3, 426
                  srli         tp, t3, 19
                  or           tp, a0, a4
                  srai         t1, a4, 31
                  lhu          a1, 2(s9)
                  or           s5, zero, s1
                  srl          s5, a1, a1
                  sh           t1, -4(s9)
                  lbu          s1, 13(s9) #end riscv_load_store_rand_instr_stream_2
                  la           a4, region_0+830 #start load_store_instr_stream_2
                  la           s5, region_0+333 #start load_store_instr_stream_1
                  la           t1, region_0+402 #start load_store_instr_stream_3
                  lb           s6, 181(t1)
                  la           ra, region_0+81 #start load_store_instr_stream_0
                  lh           tp, -9(s5)
                  lbu          a0, 968(ra)
                  sw           a3, 7(s5)
                  lb           s10, 144(a4)
                  lw           tp, 42(t1)
                  lb           s8, 14(s5)
                  sb           s2, 17(a4)
                  lbu          s0, -53(a4)
                  sb           a7, -2(s5)
                  lb           s9, -228(t1)
                  lb           s1, 620(ra)
                  lb           s4, -12(a4)
                  lbu          tp, -2(s5)
                  sb           s8, 65(a4)
                  lbu          t6, 142(ra)
                  sh           t2, 11(s5)
                  lb           s10, -242(t1)
                  lbu          s0, -12(s5)
                  lbu          s3, -217(a4)
                  lb           a6, 1742(ra)
                  sw           t3, -170(t1)
                  lbu          sp, -6(s5)
                  lbu          zero, -57(a4) #end load_store_instr_stream_2
                  lh           s4, -158(t1)
                  lbu          a6, 206(ra)
                  lhu          a0, 130(t1)
                  sb           s1, 12(s5)
                  lbu          gp, -11(s5) #end load_store_instr_stream_1
                  sw           a7, 147(ra)
                  lb           t6, 904(ra)
                  lh           t0, 1141(ra)
                  sb           a3, 177(t1)
                  lbu          s8, 231(t1) #end load_store_instr_stream_3
                  sb           s6, 673(ra) #end load_store_instr_stream_0
                  la           s3, region_0+1109 #start load_store_instr_stream_0
                  la           tp, region_0+576 #start load_store_instr_stream_1
                  sh           s9, 5(s3)
                  sb           a5, 62(s3)
                  sb           a5, 8(tp)
                  lh           sp, 29(s3)
                  lb           a3, 60(tp)
                  lb           s8, -5(s3)
                  lhu          a1, -4(tp)
                  lbu          a4, -60(tp)
                  lb           t1, 25(tp)
                  lbu          t4, 18(s3)
                  lb           t6, -40(s3)
                  sb           t2, 62(s3)
                  lh           s0, -10(tp)
                  lbu          t6, 55(tp)
                  sb           zero, -7(s3)
                  lb           s6, 7(tp)
                  sh           ra, -4(tp)
                  sb           tp, -21(tp) #end load_store_instr_stream_1
                  lbu          s1, 60(s3) #end load_store_instr_stream_0
                  la           a0, region_0+896 #start load_store_instr_stream_0
                  la           t3, region_0+1843 #start load_store_instr_stream_2
                  la           tp, region_0+215 #start load_store_instr_stream_1
                  sb           zero, -16(tp)
                  lb           a2, -15(a0)
                  lbu          a2, 6(a0)
                  lb           a3, -80(t3)
                  sw           s0, 5(tp)
                  sb           s7, 9(a0)
                  lbu          a2, 5(a0)
                  lb           s10, -10(tp)
                  sh           a1, -5(tp)
                  lh           ra, 12(a0)
                  lhu          ra, 15(tp)
                  lbu          s8, -1300(t3)
                  lb           a3, 9(a0)
                  lbu          a3, 15(a0)
                  lb           t0, -21(t3)
                  lb           a7, -7(a0)
                  sh           zero, 5(tp)
                  lbu          s3, 11(a0)
                  lbu          s8, -1484(t3)
                  sh           sp, -11(tp)
                  sb           t6, -3(tp) #end load_store_instr_stream_1
                  lbu          s7, -326(t3)
                  lb           t1, -1094(t3) #end load_store_instr_stream_2
                  sb           zero, -1(a0) #end load_store_instr_stream_0
                  la           sp, region_0+1619 #start riscv_load_store_hazard_instr_stream_1
                  sb           t0, -57(sp)
                  lw           zero, 5(sp)
                  lb           t1, 28(sp)
                  srai         t6, s4, 18
                  sb           gp, 28(sp)
                  lb           t1, 20(sp)
                  xor          s5, a2, a7
                  sra          s0, t2, s6
                  sb           a0, -30(sp)
                  sb           gp, -30(sp)
                  lh           s1, -7(sp)
                  lbu          t5, 34(sp)
                  lui          s6, 869354
                  sb           a0, 24(sp)
                  lb           t1, 24(sp)
                  sb           s6, 24(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           s3, region_0+717 #start riscv_load_store_rand_instr_stream_1
                  sltu         s7, a5, s4
                  lbu          a0, -74(s3)
                  xori         s6, zero, -1594
                  lbu          tp, -532(s3)
                  slti         s9, s11, -986
                  and          s8, s5, t1
                  srli         t5, a5, 24
                  xor          a1, s5, s1
                  srai         a5, t2, 28
                  sub          s1, t3, tp
                  lw           t3, 999(s3)
                  lbu          s7, 1214(s3)
                  sb           gp, 342(s3)
                  srai         a7, s0, 16
                  sh           s4, 983(s3)
                  slt          a3, a5, t2
                  xor          a1, a6, t3
                  nop
                  sub          s8, s11, t2
                  add          s7, a2, t6
                  xori         tp, a3, -1788
                  sb           s3, 1098(s3)
                  and          s7, s2, ra
                  srl          a1, s10, a2
                  lbu          s9, -524(s3)
                  srl          sp, s11, s3
                  lb           sp, -224(s3)
                  sb           a4, 1161(s3)
                  lbu          a7, 1180(s3)
                  slli         a7, s4, 27
                  auipc        s7, 706006
                  nop
                  lb           t6, 1039(s3)
                  xor          t3, tp, t3
                  or           t0, a2, s11
                  lui          s0, 521734
                  sb           s5, 369(s3)
                  nop
                  and          gp, a7, a7
                  lui          t1, 788660
                  lbu          t1, -524(s3)
                  lhu          s9, -715(s3)
                  and          s10, a7, t3
                  sb           a1, 606(s3) #end riscv_load_store_rand_instr_stream_1
                  la           s8, region_1+1294 #start riscv_load_store_hazard_instr_stream_0
                  lb           s0, -59(s8)
                  lhu          t1, 40(s8)
                  sh           s1, -26(s8)
                  sb           s6, -26(s8)
                  slli         a2, a6, 2
                  lb           a1, 66(s8)
                  xori         sp, a2, 257
                  lw           gp, 66(s8)
                  add          s0, s0, sp
                  sh           a7, 66(s8)
                  lb           a1, -119(s8)
                  sb           ra, -119(s8)
                  lbu          a6, -63(s8)
                  sub          s3, t2, s10
                  lhu          a0, 134(s8)
                  ori          t6, t5, 655
                  sw           t3, -58(s8)
                  lb           s3, 88(s8)
                  sb           tp, -81(s8)
                  sb           t3, -81(s8)
                  sb           a6, -81(s8)
                  slli         tp, a0, 16
                  lb           s9, -81(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+842 #start riscv_load_store_hazard_instr_stream_2
                  sb           s11, -11(sp)
                  lbu          s4, -11(sp)
                  lb           s9, -11(sp)
                  sra          tp, s1, a2
                  lbu          s3, -11(sp)
                  lbu          a1, -11(sp)
                  sb           zero, -11(sp)
                  sb           t2, -11(sp)
                  lb           s3, -11(sp)
                  lb           t4, -11(sp)
                  sub          s0, s3, t1
                  sb           t2, -11(sp)
                  add          a6, a5, s10
                  sb           t6, -11(sp)
                  lb           s0, -11(sp)
                  srai         s8, ra, 2
                  lbu          a7, -11(sp)
                  lbu          a5, -11(sp)
                  lb           s8, -11(sp) #end riscv_load_store_hazard_instr_stream_2
                  sltiu        s1, t4, -883
                  xor          s6, s10, a3
                  xor          t5, sp, s2
                  blt          tp, a5, 9f
                  bgeu         a2, t3, 12f
                  bge          s10, s5, 8f
                  slt          s1, s8, a0
                  xor          t4, gp, s1
8:                add          a4, ra, a4
9:                add          s9, s0, a5
                  and          a2, s6, s11
                  srli         s1, ra, 26
12:               xor          s1, s9, s6
                  bltu         t4, tp, 33f
                  nop
                  add          s1, ra, t2
                  slli         t6, a2, 5
                  or           s9, tp, t2
                  xori         s3, a3, 961
                  blt          s5, s5, 23f
                  bgeu         t5, a3, 31f
                  sub          a3, t5, a4
                  and          a4, s6, sp
23:               srl          s4, s0, s10
                  sltu         a5, s3, t6
                  lui          a0, 644234
                  or           t0, s7, s2
                  bgeu         t6, sp, 38f
                  or           t1, s7, s1
                  slli         t1, a0, 9
                  beq          a2, t0, 42f
31:               and          a0, gp, t3
                  bgeu         s0, zero, 43f
33:               sra          a6, s1, t2
                  srai         t3, s1, 22
                  addi         sp, s9, 568
                  slti         tp, s3, 40
                  bgeu         t6, s6, 42f
38:               srl          s8, t1, a4
                  add          s1, t2, a1
                  slti         a3, s10, -478
                  ori          a2, t0, -1518
42:               srl          gp, s8, a7
43:               beq          t1, s8, 58f
                  slti         t6, a1, -631
                  nop
                  or           t6, s1, a4
                  add          gp, s7, a4
                  andi         s5, s9, -1635
                  blt          t6, s5, 61f
                  blt          a3, t1, 51f
51:               ori          s8, t6, 673
                  sltu         ra, a6, s5
                  bltu         a4, gp, 73f
                  sltiu        ra, s10, -652
                  bge          sp, zero, 70f
                  ori          t1, zero, -740
                  bge          s7, a3, 67f
58:               add          a6, a7, a7
                  slli         a0, zero, 5
                  slt          a2, a0, s7
61:               bne          ra, s11, 78f
                  beq          s6, zero, 78f
                  xori         s9, sp, 1884
                  srl          t3, ra, s3
                  sltiu        s5, t3, -200
                  bgeu         s6, sp, 78f
67:               bgeu         t0, a6, 79f
                  slt          t6, s1, t2
                  add          s7, a0, a7
70:               slti         t6, gp, 105
                  lui          zero, 548862
                  sltu         s7, t2, a1
73:               xori         a0, a7, 1826
                  slt          a2, sp, a1
                  beq          s0, s2, 87f
                  nop
                  bltu         a5, a6, 87f
78:               bgeu         s7, t4, 87f
79:               slti         s9, t0, 1491
                  sltiu        s10, a3, -1579
                  nop
                  add          s5, a6, a0
                  or           a0, s2, t5
                  or           s8, a6, gp
                  andi         s9, t3, 308
                  sltiu        t1, s5, -1090
87:               nop
                  xor          a3, s10, s11
                  auipc        ra, 696765
                  bltu         a2, a3, 97f
                  slti         sp, a7, -1600
                  bne          a1, s10, 100f
                  bne          a2, t6, 109f
                  bltu         s2, t6, 106f
                  and          s0, s6, t4
                  sra          ra, s2, s7
97:               srli         zero, s11, 20
                  bltu         t0, a5, 105f
                  beq          tp, t1, 115f
100:              andi         gp, s3, 567
                  slti         s10, s3, 850
                  sub          a7, s6, ra
                  beq          s9, t2, 123f
                  srai         a4, gp, 14
105:              nop
106:              bne          zero, s10, 117f
                  add          a5, ra, a6
                  sll          a5, t4, a4
109:              bgeu         t4, t3, 129f
                  sub          sp, t2, a3
                  lui          s10, 1024916
                  xori         a7, s11, 1403
                  beq          gp, a4, 121f
                  addi         s4, s2, -1683
115:              sltiu        a5, a5, 2020
                  beq          ra, s11, 133f
117:              slti         t3, t5, 1896
                  addi         a2, s9, 749
                  xor          a0, ra, s6
                  slti         a6, a4, 1182
121:              and          s4, s3, gp
                  slli         t4, t1, 0
123:              bne          a4, tp, 135f
                  blt          t5, ra, 134f
                  blt          t3, s8, 140f
                  sll          s9, s5, zero
                  sll          t1, t2, t2
                  bltu         tp, a3, 144f
129:              sub          s3, sp, s8
                  slt          s5, s1, t6
                  sltu         a5, a1, a3
                  sub          a5, a0, t0
133:              nop
134:              sll          sp, tp, t2
135:              slti         s5, gp, 1224
                  slti         a0, s0, -967
                  sltiu        s3, t0, -543
                  ori          t1, s11, 88
                  sll          t0, t3, a7
140:              bge          s7, sp, 151f
                  srai         s1, s4, 3
                  auipc        s9, 405671
                  and          a1, a2, t4
                  la           t1, region_0+158 #start riscv_load_store_hazard_instr_stream_3
                  sra          t4, a4, s1
                  lb           t0, -4(t1)
                  lb           t0, -15(t1)
                  sub          a5, ra, s2
                  sw           s4, -14(t1)
                  auipc        t5, 108886
                  lh           s7, -2(t1)
                  sh           s0, -12(t1)
                  sb           a3, -12(t1)
                  lb           a0, -12(t1)
                  sw           s9, -6(t1)
                  lb           gp, 16(t1)
                  sra          s3, s10, s2
                  sh           s5, -10(t1)
                  srli         t5, a4, 27
                  lhu          a3, 2(t1)
                  lw           s3, -14(t1)
                  sb           a6, 1(t1)
                  sb           a2, 2(t1)
                  lb           gp, 13(t1)
                  lbu          sp, 13(t1)
                  lb           a2, -9(t1)
                  slt          sp, t5, s0
                  sb           tp, 13(t1)
                  sh           t5, -4(t1)
                  sb           a5, -5(t1) #end riscv_load_store_hazard_instr_stream_3
144:              sltu         t6, s4, t0
                  addi         s4, t0, 250
                  auipc        s8, 363834
                  sll          ra, gp, gp
                  slt          t1, t0, s1
                  nop
                  bge          tp, a4, 170f
151:              or           s10, t0, a4
                  ori          a6, tp, 689
                  xor          t3, t6, s10
                  nop
                  sltu         a0, t5, ra
                  slti         a1, a2, -1226
                  slli         a2, t2, 23
                  srai         a7, a3, 0
                  beq          a6, a7, 164f
                  andi         a5, a5, 497
                  slt          t3, s2, a3
                  xor          a3, s9, t5
                  srli         t1, s4, 3
164:              srl          s6, t6, a5
                  andi         s4, a6, -377
                  srl          a5, s9, s1
                  nop
                  ori          sp, s1, -1602
                  srli         a2, t2, 29
170:              xori         a4, s4, 370
                  sub          gp, gp, a4
                  srl          zero, tp, a6
                  sub          s10, ra, t6
                  sll          a4, t0, t2
                  slti         s4, s0, -1502
                  blt          s10, t1, 177f
177:              sltiu        a1, a2, -606
                  or           s4, s4, a4
                  nop
                  srai         tp, a6, 22
                  lui          s9, 696640
                  bgeu         s6, ra, 197f
                  sra          a1, s2, s10
                  add          sp, s6, s8
                  sub          a7, s9, t3
                  beq          s6, ra, 198f
                  or           a2, s6, a3
                  andi         a0, s3, 402
                  auipc        a1, 613710
                  sltiu        a1, s9, 1602
                  auipc        a5, 44946
                  bgeu         s1, sp, 204f
                  lui          t6, 88040
                  bge          s11, a6, 206f
                  sll          s7, s10, a1
                  and          gp, s6, s9
197:              srai         s4, s8, 25
198:              xor          s0, a5, gp
                  ori          gp, a2, 89
                  bltu         a2, s0, 207f
                  sll          t0, t6, s3
                  beq          tp, s11, 205f
                  sltiu        a4, a0, -1180
204:              add          a3, a4, t0
205:              ori          a6, ra, 789
206:              ori          s1, t4, 1240
207:              slt          s7, t3, a5
                  sll          t3, s10, s10
                  andi         t6, a5, 1007
                  ori          a6, t1, 728
                  beq          gp, ra, 227f
                  nop
                  or           gp, s0, a7
                  xor          a4, gp, s5
                  lui          a7, 71570
                  sra          t5, t0, s6
                  srl          ra, t2, s10
                  bltu         s1, s11, 224f
                  bge          s0, tp, 228f
                  xor          zero, s7, a2
                  sub          a4, t6, s6
                  xor          s6, s7, s3
                  beq          t3, s11, 235f
224:              srl          s3, s5, a5
                  andi         a5, t0, -1824
                  sll          s0, ra, ra
227:              srl          t6, s6, t4
228:              slt          t1, s10, s5
                  sltiu        t1, a1, 1376
                  bge          s4, s5, 234f
                  addi         s7, s6, -1240
                  nop
                  or           s5, s3, s5
234:              sltu         ra, a0, t6
235:              slt          t3, s0, t5
                  andi         s4, t5, 831
                  blt          a6, sp, 247f
                  bge          a6, s4, 246f
                  auipc        t4, 854864
                  ori          s5, a0, -206
                  xor          t0, zero, s6
                  or           a1, a6, a1
                  sra          t5, s10, t5
                  bgeu         s1, s1, 256f
                  slt          a5, t5, s1
246:              blt          s11, s10, 257f
247:              sltu         s1, s8, t2
                  add          ra, s7, a4
                  andi         t5, t4, -1723
                  andi         s7, s4, -1468
                  sra          s3, a3, t0
                  add          a5, tp, zero
                  srli         t0, a7, 28
                  sltiu        zero, a0, -543
                  nop
256:              slli         s8, s5, 0
257:              slt          t0, zero, s8
                  sub          s0, t6, a5
                  lui          a2, 306217
                  lui          t6, 925356
                  nop
                  slli         a5, gp, 13
                  sll          a7, a5, a4
                  srli         s10, t5, 30
                  bge          sp, a6, 281f
                  bltu         s10, t2, 286f
                  addi         tp, a3, -1687
                  sll          s0, s1, s7
                  srli         t4, a7, 26
                  slli         a1, a7, 12
                  sra          s5, a1, s9
                  slti         t3, ra, -976
                  add          s9, a6, gp
                  or           t6, sp, a1
                  blt          a1, s5, 282f
                  srl          s1, a7, s9
                  bltu         s11, tp, 289f
                  sll          t3, s10, t0
                  slti         t0, s1, 1493
                  bltu         s8, a2, 289f
281:              bge          a3, s6, 288f
                  la           a4, region_0+259 #start riscv_load_store_rand_instr_stream_3
                  sb           s6, 3(a4)
                  lbu          zero, -163(a4)
                  slli         t6, a7, 19
                  lh           s7, 219(a4)
                  sb           s0, 248(a4)
                  or           s3, sp, t3
                  xor          zero, a1, t6
                  lb           ra, -200(a4)
                  sb           a5, 143(a4)
                  auipc        t6, 1001610
                  sb           s4, 202(a4)
                  xor          t6, s5, s1
                  sub          t5, sp, s0
                  slli         sp, a3, 10
                  sh           ra, -45(a4)
                  sltu         a2, t5, a3
                  lbu          t0, -125(a4)
                  auipc        a5, 327547
                  slt          s3, t6, s1
                  srli         s1, a1, 2
                  lw           s0, -191(a4)
                  sb           s8, 206(a4)
                  sw           s0, 165(a4)
                  and          s4, s9, a5
                  ori          t0, t6, 595
                  slt          s0, a0, s7
                  srai         tp, a7, 5
                  add          s1, s10, gp
                  lhu          a0, -171(a4)
                  lhu          s6, 187(a4)
                  auipc        a3, 596486
                  add          tp, zero, s2
                  lbu          s9, 135(a4)
                  lbu          s4, -57(a4)
                  lh           a7, -137(a4)
                  and          t0, s5, s10
                  ori          a7, s5, 1453
                  sh           a5, 169(a4)
                  and          ra, a2, a3
                  lbu          t1, 58(a4)
                  lb           s4, 2(a4)
                  and          a7, s10, a4
                  lhu          zero, -157(a4)
                  lb           s3, -182(a4)
                  lbu          a3, 226(a4)
                  lbu          ra, -135(a4) #end riscv_load_store_rand_instr_stream_3
282:              add          t4, s0, a4
                  srl          t4, t3, ra
                  slti         a5, s3, 1153
                  andi         t6, sp, -866
286:              or           a6, s2, t2
                  lui          a1, 439017
288:              and          t4, s1, a1
289:              ori          s4, a7, -440
                  bgeu         t2, t3, 296f
                  nop
                  slt          t3, a5, s9
                  lui          a1, 1046559
                  slt          a0, t6, a6
                  bge          t1, s7, 315f
296:              andi         ra, a7, -1081
                  sra          s6, s6, ra
                  slli         s8, a5, 21
                  nop
                  srl          tp, t2, s1
                  sltu         s3, a4, s11
                  add          a1, gp, t2
                  la           t6, region_1+657 #start load_store_instr_stream_4
                  la           t4, region_1+790 #start load_store_instr_stream_2
                  sb           gp, 26(t4)
                  lbu          t3, 148(t6)
                  la           s5, region_1+1944 #start load_store_instr_stream_0
                  la           a3, region_1+1945 #start load_store_instr_stream_3
                  lb           gp, -179(t6)
                  lh           s1, 191(t6)
                  lbu          a5, -150(t6)
                  lbu          a2, -47(t4)
                  la           s0, region_1+1735 #start load_store_instr_stream_1
                  sb           s8, 39(s5)
                  lbu          s8, 18(a3)
                  sb           t4, 13(t6)
                  lh           s9, -5(s0)
                  lhu          a6, 44(s5)
                  lhu          t3, 30(t4)
                  lb           s3, 45(t4)
                  sh           s5, 54(s5)
                  lbu          t0, -25(s5)
                  lhu          t0, -23(a3)
                  sb           s0, 10(s0)
                  sb           s1, -44(a3)
                  sb           s5, -16(s0)
                  lb           s3, -12(a3)
                  lh           a5, 43(a3)
                  lbu          t3, -6(s0)
                  lb           s7, -46(a3)
                  lbu          s7, 4(a3)
                  sb           s11, -45(t6)
                  lbu          s8, 26(t4)
                  sb           s0, 49(t6)
                  lbu          a6, -12(s0)
                  lbu          gp, 158(t6)
                  lbu          s8, 160(t6)
                  sh           t0, -165(t6) #end load_store_instr_stream_4
                  sb           t6, 54(t4) #end load_store_instr_stream_2
                  lbu          s4, -53(a3)
                  lb           a1, 48(s5)
                  lh           a6, 41(a3) #end load_store_instr_stream_3
                  lb           a6, -5(s0)
                  sh           a0, -5(s0) #end load_store_instr_stream_1
                  lb           ra, -64(s5) #end load_store_instr_stream_0
                  beq          t0, a5, 308f
                  sltiu        zero, sp, -341
                  sub          a2, t1, s7
                  sra          ra, s6, s2
                  sll          t0, t2, t5
308:              sltiu        a0, a6, 737
                  or           s8, a4, t3
                  nop
                  xor          a3, ra, t2
                  sltiu        gp, s5, -637
                  nop
                  xori         s5, tp, -688
315:              nop
                  slt          tp, s6, t2
                  slti         t3, s9, 1718
                  add          s0, sp, s8
                  srli         s0, t3, 2
                  nop
                  sub          a1, t0, s6
                  auipc        zero, 954707
                  lui          tp, 13214
                  bgeu         s8, a5, 344f
                  xori         a4, t6, -1062
                  lui          tp, 23079
                  andi         zero, s10, -1447
                  slt          a1, t1, a1
                  slli         t6, t1, 19
                  blt          s2, s6, 337f
                  sra          zero, a7, gp
                  sltu         a1, t1, s7
                  sltiu        s4, s3, 988
                  srai         t4, a1, 24
                  sub          a7, t3, ra
                  sltu         t4, a1, a3
337:              bltu         a3, t2, 349f
                  sltiu        a6, t4, 1552
                  srli         a2, s8, 4
                  srai         tp, s3, 17
                  slli         zero, t5, 2
                  slt          ra, t5, sp
                  srai         a0, sp, 22
344:              xor          a2, s10, ra
                  sll          s9, s2, s10
                  nop
                  sll          s10, a5, a6
                  xor          s4, s7, a2
349:              srli         t4, s0, 10
                  sra          a3, t4, tp
                  lui          zero, 59250
                  bne          t6, s9, 364f
                  slt          s3, t2, s10
                  beq          s5, s4, 370f
                  andi         s5, a1, 439
                  bltu         t0, t6, 372f
                  slt          sp, a0, s5
                  add          s6, t2, t0
                  ori          s3, t5, 1157
                  sll          a5, t0, t6
                  auipc        s7, 744436
                  sll          s0, tp, s4
                  xor          s6, s1, a1
364:              sra          s9, a4, a7
                  slt          s5, sp, t1
                  slt          s5, s8, s0
                  bne          tp, s7, 377f
                  bge          s2, s4, 380f
                  slt          s8, a7, s7
370:              or           t1, s5, a2
                  slti         a2, a4, 41
372:              bge          a7, a7, 375f
                  srl          s7, a3, t2
                  slti         s1, s6, -1971
375:              bltu         sp, t5, 391f
                  bltu         s9, a3, 377f
377:              bge          s4, t5, 388f
                  slt          s1, a3, t2
                  sub          t6, s9, a4
380:              sll          s10, s4, s7
                  auipc        sp, 61482
                  beq          sp, s7, 402f
                  lui          s7, 342933
                  beq          zero, t1, 396f
                  nop
                  sltiu        a0, s0, 746
                  ori          t3, ra, 490
388:              sub          sp, s2, s7
                  slt          a0, s3, s2
                  xori         a5, t0, 310
391:              slti         s8, s1, -567
                  nop
                  xor          a7, t4, s6
                  andi         s1, s1, -48
                  addi         t4, t0, -1631
396:              sub          zero, ra, ra
                  ori          tp, t2, -1900
                  and          t6, a5, sp
                  sra          t3, a4, s6
                  sltu         s4, t2, sp
                  lui          s4, 801285
402:              lui          s10, 581020
                  slt          a2, t3, zero
                  srai         gp, gp, 3
                  srli         t4, gp, 11
                  bltu         a4, t3, 410f
                  andi         gp, a6, 1557
                  andi         s9, t4, -1817
                  ori          tp, sp, -945
410:              beq          tp, a6, 427f
                  sltu         a7, a7, s4
                  or           t4, zero, s9
                  ori          a0, t4, 1633
                  srl          ra, a2, t3
                  slti         s1, a4, -1109
                  slti         t3, sp, -1896
                  slt          s5, t1, s8
                  sltu         t6, t2, s9
                  bltu         sp, t1, 427f
                  srl          a6, t0, t6
                  auipc        s10, 396217
                  bne          a5, s5, 433f
                  bgeu         t0, t0, 431f
                  xor          t6, s6, a3
                  bne          s1, tp, 440f
                  beq          a3, a7, 436f
427:              bne          t0, gp, 439f
                  bne          ra, s8, 439f
                  add          t0, t0, s11
                  sltu         t0, a4, s7
431:              nop
                  sra          t0, zero, t4
433:              slti         sp, s8, 534
                  slti         tp, tp, 644
                  sll          sp, s0, s0
436:              sltiu        t6, t0, -1486
                  bgeu         ra, s0, 452f
                  bne          a4, a2, 448f
439:              bgeu         s2, s0, 447f
440:              add          a2, tp, a6
                  blt          a1, s4, 454f
                  lui          s8, 988374
                  slli         s9, gp, 6
                  add          s5, t2, a2
                  sltu         t4, t1, s6
                  ori          a3, t2, -524
447:              addi         a4, gp, -1160
448:              sll          ra, s1, s6
                  sltu         s8, t4, a4
                  bltu         s3, s8, 454f
                  slt          s5, t2, a0
452:              addi         t1, t1, -82
                  sub          sp, a6, gp
454:              srli         t5, t3, 2
                  lw           t6, 4(t2)
                  addi         a0, t5, -1028
                  sra          a3, s0, s7
                  auipc        s7, 638191
                  slli         t5, a0, 11
                  andi         sp, zero, -2030
                  auipc        s1, 80109
                  sll          s8, s10, t6
                  addi         t2, t2, 64
                  andi         s9, s4, 140
879:              addi x21, x31, 1
879:              jalr x21, x21, 0
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_2:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_3:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_4:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_5:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_6:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_7:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_8:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_9:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_10:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_11:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_12:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_13:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_14:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_15:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 0x1f
                  beqz x21, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x18, x7, zero
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x21, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x21, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x21, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x21, x22, ecall_handler
                  li x22, 0x1
                  beq x21, x22, instr_fault_handler
                  li x22, 0x5
                  beq x21, x22, load_fault_handler
                  li x22, 0x7
                  beq x21, x22, store_fault_handler
                  li x22, 0xc
                  beq x21, x22, pt_fault_handler
                  li x22, 0xd
                  beq x21, x22, pt_fault_handler
                  li x22, 0xf
                  beq x21, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x7, x18, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x18, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x18, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x7, x18, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x7, x18, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x7, x18, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
