.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x597848db
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x6
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x1179154b
                  li x10, 0x0
                  li x11, 0x86720662
                  li x12, 0xc269f04
                  li x13, 0x0
                  li x15, 0xf8a01137
                  li x16, 0x80000000
                  li x17, 0x4
                  li x18, 0x3
                  li x19, 0x0
                  li x20, 0xa558b95
                  li x22, 0xebb93843
                  li x23, 0x80000000
                  li x24, 0xd
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0xf3b85383
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x0
                  la x14, user_stack_end
main:             la           sp, region_1+589 #start riscv_load_store_rand_instr_stream_5
                  lbu          tp, 719(sp)
                  sh           t1, 1261(sp)
                  lb           gp, 994(sp)
                  lb           a2, -454(sp)
                  addi         ra, s2, 47
                  ori          a3, a6, 1054
                  lhu          t3, 1375(sp)
                  sb           t6, -392(sp)
                  lbu          zero, 1143(sp)
                  lbu          t2, 1237(sp)
                  lbu          a7, 1053(sp)
                  slti         a2, s8, -156
                  sra          s8, s7, t0
                  lw           s6, 87(sp)
                  slt          s10, s3, s3
                  lw           s10, -441(sp)
                  sh           a0, 1077(sp)
                  sb           tp, 707(sp)
                  addi         s9, s10, 1889
                  lbu          s2, 194(sp)
                  lhu          s10, 1387(sp)
                  sw           s3, 187(sp)
                  lhu          s10, -497(sp)
                  lhu          tp, 923(sp)
                  lb           a6, 676(sp)
                  xori         ra, a5, -1271
                  addi         s0, a5, -451
                  sltu         s0, t0, a3
                  lh           a1, 641(sp)
                  lb           ra, -560(sp)
                  lb           a7, 598(sp)
                  lb           a3, -207(sp)
                  lhu          s11, 541(sp)
                  lbu          a1, 587(sp)
                  sb           sp, 1008(sp)
                  slli         t1, a6, 6
                  lbu          a6, 568(sp)
                  addi         s9, zero, 902
                  lbu          s9, -101(sp)
                  sltiu        s0, a4, 1439
                  sb           s10, 1008(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1694 #start riscv_load_store_rand_instr_stream_4
                  srli         t0, s9, 1
                  andi         t4, s8, 1727
                  lb           s9, 43(sp)
                  auipc        t2, 753112
                  sltu         s6, sp, tp
                  sra          s7, s5, sp
                  sra          s9, s6, s5
                  add          tp, s5, tp
                  slli         a7, ra, 27
                  lw           a6, -46(sp)
                  sw           a5, -54(sp)
                  sh           s4, -28(sp)
                  add          s0, t6, tp
                  lb           a6, 30(sp)
                  lb           t5, 23(sp)
                  lh           s7, 20(sp)
                  sltiu        s11, a2, -2030
                  slli         s7, s8, 6
                  lb           s1, 39(sp)
                  lb           t1, 59(sp)
                  sw           tp, -26(sp)
                  lbu          a3, 57(sp)
                  add          t0, a5, s1
                  addi         s4, s10, 1297
                  add          s4, s5, a7
                  nop
                  add          a6, a1, a0
                  srl          t3, s0, t2
                  sll          a3, s6, gp
                  slti         t6, s1, -1522
                  and          s2, zero, s7
                  slt          s10, s1, t5
                  lui          tp, 122183
                  nop
                  slt          s11, s4, t3
                  lh           t2, -20(sp)
                  lb           t3, -19(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_0+445 #start riscv_load_store_rand_instr_stream_1
                  sb           s6, -190(a0)
                  slt          s9, s2, t4
                  sb           a2, -94(a0)
                  slt          t4, s6, a3
                  srli         sp, s4, 16
                  add          a1, t5, a3
                  andi         s2, zero, 1358
                  lb           ra, -222(a0)
                  lb           a6, -20(a0)
                  sll          a1, a1, s2
                  sb           s7, -63(a0)
                  sb           t4, 152(a0)
                  srai         t2, s2, 28
                  srai         s2, t2, 25
                  nop
                  lui          s2, 771310
                  sb           tp, -87(a0)
                  sb           a6, 6(a0)
                  lbu          s7, -35(a0)
                  lui          a7, 23465
                  lb           a2, -8(a0)
                  sb           s1, 142(a0)
                  sb           s5, -38(a0)
                  lb           s7, 250(a0)
                  lw           sp, 35(a0)
                  sub          t1, a4, a7
                  lb           s6, -38(a0)
                  sltu         t5, a1, s4
                  lui          a3, 494787
                  sb           a5, -126(a0)
                  addi         s8, a3, -1817
                  sltiu        t0, s1, 215
                  lbu          a3, 98(a0)
                  lh           s4, -179(a0)
                  slli         s11, s6, 14
                  auipc        t2, 150370
                  srl          a6, a1, a4
                  lbu          s10, -152(a0)
                  lbu          s0, -95(a0)
                  lbu          s7, 251(a0)
                  lb           a5, -68(a0) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1717 #start riscv_load_store_rand_instr_stream_0
                  lb           s2, -29(sp)
                  srl          a7, s7, a4
                  xor          a5, a7, t4
                  auipc        tp, 615013
                  xori         t5, s3, 112
                  sb           gp, -20(sp)
                  sh           sp, -41(sp)
                  srli         a7, t4, 12
                  sb           s1, -58(sp)
                  srai         t1, s10, 27
                  sb           a3, 56(sp)
                  sll          t3, a6, t0
                  lh           a7, 35(sp)
                  sb           s1, -13(sp)
                  auipc        a3, 905664
                  lbu          s0, -33(sp)
                  lbu          s11, -59(sp)
                  lbu          zero, -40(sp)
                  lb           zero, 10(sp)
                  lui          t6, 67760
                  lbu          s0, -34(sp)
                  lbu          a0, -38(sp)
                  lhu          t3, 61(sp)
                  lb           t3, 44(sp)
                  andi         gp, s7, 560
                  lb           s11, -52(sp)
                  sb           s5, -56(sp)
                  lb           a0, -58(sp)
                  lb           s1, -54(sp)
                  sb           s7, 52(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1725 #start riscv_load_store_rand_instr_stream_3
                  slti         a7, t5, 1620
                  slli         s9, s4, 31
                  srli         tp, t1, 5
                  xor          t1, t0, t5
                  lb           t6, -95(sp)
                  lb           ra, 100(sp)
                  sll          s4, s4, t3
                  lb           a2, 94(sp)
                  srl          s1, ra, s0
                  lb           tp, -36(sp)
                  sh           s8, -213(sp)
                  lb           t5, 96(sp)
                  slt          tp, t2, t2
                  addi         a1, s9, 117
                  lh           a2, 203(sp)
                  sll          s10, a4, a4
                  sltiu        s9, t4, -355
                  lb           a0, -242(sp)
                  lbu          t3, -72(sp)
                  slti         s0, a3, 1299
                  sb           gp, -112(sp)
                  sb           s9, -19(sp)
                  lbu          gp, 218(sp)
                  lbu          s9, -256(sp)
                  sh           t6, 61(sp)
                  andi         s10, s1, 1589
                  lb           a0, -88(sp)
                  nop
                  slli         t4, s4, 17
                  sll          s1, gp, zero
                  lbu          s11, -169(sp)
                  sb           s0, -144(sp)
                  sb           a1, 129(sp)
                  slti         a7, s9, 2003
                  addi         t5, s10, -1318
                  slti         t2, t6, -1252
                  sub          t2, t5, s0
                  add          s10, a4, gp
                  sub          t5, a3, s6
                  nop
                  slt          a7, s4, t0
                  andi         a1, a1, 1830
                  ori          t2, s6, 1221
                  lw           a6, -37(sp)
                  lhu          ra, 105(sp)
                  lb           t4, 80(sp)
                  slti         ra, s5, 432
                  lb           t0, -156(sp)
                  ori          s10, zero, 1835
                  and          t6, t5, s1
                  xori         a0, sp, 799
                  lh           a6, 99(sp)
                  sb           t3, 113(sp)
                  sb           s7, -56(sp)
                  xori         t4, s8, -1755
                  lbu          t6, -152(sp)
                  lb           a5, -138(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a3, region_0+492 #start riscv_load_store_rand_instr_stream_6
                  lh           gp, -146(a3)
                  srli         ra, sp, 7
                  lbu          tp, -208(a3)
                  lh           s10, 146(a3)
                  sll          a7, sp, sp
                  lb           s7, -96(a3)
                  xori         t3, s8, 353
                  lhu          s7, -76(a3)
                  sll          a0, s10, s8
                  sw           a4, 180(a3)
                  lb           t6, 256(a3)
                  lb           s10, -95(a3)
                  lb           sp, 210(a3)
                  sltiu        t5, s6, -1888
                  xori         s10, a4, -233
                  sb           t2, -9(a3)
                  auipc        a0, 265753
                  sltu         zero, tp, t5
                  addi         zero, a1, -1906
                  lbu          sp, -176(a3)
                  sll          t6, a0, s10
                  sw           s6, -148(a3)
                  lb           t3, 243(a3)
                  andi         s7, s7, -888
                  slli         a1, a1, 16
                  xor          t3, t4, a0
                  lui          s4, 626909
                  lbu          t6, -34(a3)
                  lh           a2, 220(a3)
                  lb           gp, -47(a3)
                  lb           t5, -231(a3)
                  sh           t0, 74(a3)
                  sb           a0, 81(a3)
                  add          t4, a3, s5
                  xori         zero, s3, -1727
                  xori         s11, s8, -702
                  lhu          gp, 170(a3)
                  lhu          s9, -196(a3)
                  slti         t2, a4, 179
                  lbu          a0, -79(a3)
                  nop
                  slli         s4, t3, 29
                  lb           a6, -71(a3) #end riscv_load_store_rand_instr_stream_6
                  la           t6, region_1+1954 #start riscv_load_store_rand_instr_stream_2
                  xor          s2, tp, a3
                  lb           sp, -210(t6)
                  xori         a7, t1, -1833
                  lbu          a3, -76(t6)
                  xori         a2, ra, -146
                  sh           t6, 44(t6)
                  slli         a7, t6, 23
                  lui          a5, 630688
                  lb           sp, -205(t6)
                  sub          s8, a0, s3
                  lui          a1, 500428
                  sra          s10, t5, zero
                  lb           a1, -256(t6)
                  nop
                  sub          a7, a0, a5
                  lb           tp, -157(t6)
                  slti         a1, tp, 260
                  auipc        a2, 411127
                  add          a2, a7, s11
                  slt          s9, tp, t0
                  lb           a3, -143(t6)
                  srli         a1, ra, 23
                  lb           s1, -135(t6)
                  lw           s8, -90(t6)
                  lb           s9, -51(t6)
                  addi         s9, s5, 391
                  lbu          s0, -195(t6)
                  srli         s7, a5, 17
                  srai         s9, s3, 26
                  lbu          s0, -155(t6)
                  srli         tp, a7, 23
                  lui          s2, 554762
                  nop
                  addi         s6, a5, 995
                  sub          s1, gp, s5
                  slti         t4, sp, -393
                  slt          a5, a4, t6
                  xori         sp, s3, -1292
                  sh           s8, -176(t6)
                  srli         s11, s3, 22
                  sh           gp, -198(t6) #end riscv_load_store_rand_instr_stream_2
                  add          s6, a1, s2
                  bgeu         s8, t3, 14f
                  add          a6, s3, a7
                  andi         t3, t4, 222
                  andi         zero, t3, -229
                  and          t0, s10, s7
                  sll          a7, a1, gp
                  slli         ra, a5, 14
                  blt          t3, a2, 11f
                  sra          a7, s3, s11
                  slli         a1, sp, 13
11:               lui          s11, 20363
                  slt          t2, s11, a4
                  and          t1, t6, s4
14:               bne          s10, a5, 32f
                  xor          a3, s8, tp
                  slt          a2, a6, sp
                  srli         s2, s11, 5
                  addi         a3, s1, -1113
                  bgeu         s4, t2, 35f
                  beq          gp, t2, 37f
                  beq          s9, s9, 39f
                  srli         s9, t5, 25
                  bgeu         t3, t0, 31f
                  nop
                  lui          a5, 191789
                  srl          a3, a7, s11
                  slt          t5, t6, t4
                  sra          t0, t4, t3
                  slti         a7, t1, 1404
                  sltu         s4, s7, a6
31:               ori          s2, ra, -645
32:               slli         s1, t4, 14
                  sub          s4, t1, s4
                  bgeu         a2, t6, 47f
35:               andi         t6, sp, -167
                  slt          t6, s11, s3
37:               slli         s8, s10, 24
                  auipc        zero, 330860
39:               bgeu         tp, a2, 50f
                  ori          t3, s6, 712
                  sltu         t2, s3, a7
                  auipc        s8, 672035
                  slt          a1, a6, a4
                  slt          s1, s4, ra
                  lui          s8, 925168
                  slt          a2, s11, s0
47:               sub          gp, gp, s11
                  srai         s10, a0, 27
                  ori          s9, t2, 740
50:               slli         s0, t0, 1
                  add          t2, a6, s1
                  bne          t0, a4, 72f
                  xor          sp, a0, a5
                  srli         s1, s7, 18
                  lui          s10, 831637
                  srl          s11, s10, t5
                  sltiu        s2, tp, 900
                  ori          sp, ra, 1754
                  nop
                  srai         a6, t3, 22
                  bltu         t1, a1, 63f
                  or           a6, t1, sp
63:               beq          s9, s2, 66f
                  sll          s8, a0, t1
                  sll          a2, s2, s1
66:               sll          t2, s10, s7
                  blt          a5, a7, 78f
                  sub          s7, s11, s9
                  sltu         t3, s5, t2
                  slti         ra, s8, -1183
                  xor          t5, t1, s8
72:               ori          a2, s9, -628
                  sra          t2, t6, t3
                  bge          ra, a4, 92f
                  nop
                  bge          s1, s8, 95f
                  bgeu         a7, a0, 87f
78:               xor          a5, s11, a1
                  bgeu         s5, tp, 98f
                  sltiu        s7, t5, 380
                  nop
                  sll          a0, a3, t0
                  auipc        t1, 698980
                  srai         s4, a2, 14
                  bgeu         a0, a5, 87f
                  lui          s6, 295718
87:               slt          t2, gp, s9
                  xor          s8, a1, t1
                  blt          a3, s1, 100f
                  and          t0, a2, s11
                  and          a0, s6, a5
92:               sll          t1, a6, s8
                  sltu         s0, t1, t3
                  lui          a6, 675492
95:               bgeu         a6, a6, 108f
                  bltu         tp, s11, 97f
97:               bltu         a5, s5, 108f
98:               beq          sp, a5, 100f
                  bge          t5, a3, 105f
100:              srl          sp, zero, s3
                  or           a2, s6, s10
                  sub          t0, tp, tp
                  add          t5, t4, t2
                  add          t4, tp, s7
105:              sltiu        ra, s9, 231
                  bne          gp, s11, 115f
                  nop
108:              srli         a0, s1, 2
                  slt          t4, t0, s9
                  lui          sp, 871116
                  sll          a3, a4, a3
                  nop
                  slti         a6, tp, 1573
                  sra          a0, a4, a3
115:              bltu         s5, s9, 118f
                  bgeu         s11, a7, 117f
117:              and          s11, t0, s10
118:              slti         sp, s7, -1108
                  srai         s4, a1, 18
                  blt          tp, s0, 128f
                  slli         ra, t1, 4
                  slt          sp, s11, a1
                  and          t3, a6, s10
                  slti         gp, zero, -739
                  blt          ra, s0, 126f
126:              or           t1, a1, t3
                  lui          a7, 753190
128:              sltiu        a5, t5, 360
                  beq          t2, a3, 131f
                  slli         s1, t5, 30
131:              addi         s6, a3, 386
                  slt          a0, zero, zero
                  add          s0, a7, t2
                  addi         ra, tp, -548
                  add          a2, s7, t2
                  bgeu         t0, a0, 156f
                  bltu         s0, a3, 139f
                  srli         s7, a5, 0
139:              bgeu         a4, a3, 158f
                  lui          s9, 366425
                  bltu         t0, t4, 150f
                  bltu         s8, s0, 150f
                  and          a3, s0, s5
                  and          s11, s6, t6
                  xor          s4, s7, a6
                  bltu         t0, a7, 164f
                  and          t1, ra, t2
                  lui          t5, 885181
                  auipc        s2, 379223
150:              andi         s11, t6, -861
                  xori         s10, gp, 1573
                  sra          a5, s3, s11
                  xor          a7, a7, ra
                  addi         sp, a2, -1084
                  sub          s8, s0, a3
156:              and          zero, a2, t3
                  xor          s6, s9, t6
158:              lui          s9, 265834
                  bgeu         t1, a5, 161f
                  and          s4, t2, t3
161:              or           s10, zero, t5
                  nop
                  beq          s7, a0, 179f
164:              slt          t3, a2, t3
                  add          s8, s10, s0
                  bge          s10, t0, 179f
                  sltiu        a3, a0, -1678
                  srli         t0, t5, 18
                  srai         t3, sp, 7
                  bgeu         t2, s9, 172f
                  add          a3, t1, s5
172:              sltiu        a5, t5, -824
                  add          a1, t1, a3
                  bge          sp, s6, 175f
175:              xori         s10, a3, 1002
                  auipc        s7, 430493
                  blt          a3, t1, 185f
                  srli         s0, s11, 22
179:              bne          s7, t2, 190f
                  bltu         sp, gp, 181f
181:              bge          zero, s8, 184f
                  or           s9, sp, a2
                  beq          a3, t2, 194f
184:              sra          s10, s3, s8
185:              and          a5, a2, gp
                  bgeu         t5, t4, 196f
                  or           gp, t6, s11
                  xori         s8, a6, 1701
                  srli         sp, sp, 29
190:              bne          a1, a0, 208f
                  slti         ra, s8, 2024
                  bgeu         a5, a5, 210f
                  sra          t0, s3, a6
194:              sra          t5, a3, a5
                  bltu         a4, s8, 208f
196:              sub          t1, a6, s0
                  sll          gp, a1, zero
                  srl          t3, tp, s2
                  and          a0, s4, ra
                  add          t0, s2, t2
                  sltiu        s9, ra, 310
                  bne          s6, t1, 213f
                  addi         s11, t0, 1501
                  add          a5, s0, s2
                  sltu         a5, t4, a6
                  andi         s8, t4, 428
                  lui          ra, 353530
208:              xor          s10, s1, s8
                  bne          a1, s1, 215f
210:              add          s7, s4, s6
                  add          t2, s11, s11
                  sub          a3, a7, s3
213:              sltiu        s8, a2, -584
                  sltu         t1, a5, tp
215:              and          s2, s0, s2
                  sll          s9, a1, tp
                  bge          t6, gp, 234f
                  bgeu         t4, a0, 221f
                  beq          zero, a7, 230f
                  bne          t0, a7, 223f
221:              xori         s1, a3, -2027
                  beq          s5, s0, 223f
223:              slli         gp, s4, 2
                  srai         t6, tp, 15
                  srli         sp, a0, 21
                  sub          a6, sp, sp
                  srai         t1, a4, 17
                  blt          s8, a3, 230f
                  slli         a0, s4, 26
230:              bge          s5, t1, 249f
                  blt          s3, s6, 244f
                  slli         s2, s9, 0
                  addi         s4, s1, -628
234:              slt          tp, a0, a0
                  sub          a0, s0, a7
                  add          s4, s9, a2
                  lui          a2, 417512
                  ori          s0, t1, -1750
                  nop
                  auipc        t4, 300016
                  slli         t2, s5, 6
                  sra          zero, t4, gp
                  slti         s10, a5, 945
244:              nop
                  srai         a6, a2, 26
                  and          t4, s3, s4
                  addi         a1, s9, 1341
                  addi         t4, t3, 363
249:              auipc        t0, 817628
                  bgeu         a1, a5, 251f
251:              and          gp, s2, s7
                  sll          tp, tp, gp
                  xori         a2, s10, -1908
                  bne          zero, s2, 272f
                  ori          s9, s8, 1958
                  nop
                  bltu         a7, t1, 263f
                  and          a3, a3, a2
                  add          a7, sp, t3
                  xor          t5, ra, s8
                  addi         tp, t1, -1819
                  addi         s7, a5, -1150
263:              nop
                  ori          t6, sp, -1130
                  bge          t5, a5, 276f
                  and          t5, s8, t6
                  auipc        s6, 748455
                  beq          a6, a6, 279f
                  slli         s2, a4, 9
                  bgeu         s6, sp, 287f
                  sll          gp, a1, a2
272:              xor          a2, s10, s4
                  srl          t0, t1, a5
                  beq          a5, a4, 284f
                  or           a0, s6, t2
276:              and          s9, t4, a3
                  lui          a2, 564519
                  and          t2, t4, ra
279:              and          s10, ra, s8
                  srai         a5, s7, 24
                  bne          s5, s11, 283f
                  sltu         t2, a3, a6
283:              srli         a5, s11, 30
284:              or           t0, s5, s10
                  sub          a6, s7, s5
                  srli         a1, a2, 14
287:              xor          t0, t2, sp
                  slli         s10, zero, 9
                  and          tp, a3, a2
                  slt          a6, sp, a4
                  slti         s4, s7, -312
                  srl          s6, a3, s8
                  blt          s2, ra, 294f
294:              beq          a5, t1, 312f
                  sra          t4, sp, t0
                  bgeu         a1, s7, 298f
                  srl          ra, s9, s11
298:              bge          a4, tp, 307f
                  xor          s8, s3, s8
                  ori          t4, a0, 420
                  andi         s0, a1, -1935
                  srl          t5, a0, t2
                  srai         a2, gp, 3
                  bgeu         t1, a1, 315f
                  add          a0, t3, a0
                  srl          gp, t3, s5
307:              bne          t5, gp, 315f
                  beq          s8, s10, 311f
                  xor          t2, s0, gp
                  lui          a3, 253600
311:              addi         a0, gp, -1451
312:              nop
                  or           tp, s7, t1
                  add          gp, a0, a1
315:              xor          s6, a6, t2
                  addi         a5, a4, 990
                  slli         a3, a5, 8
                  srl          s6, gp, sp
                  nop
                  sll          s1, a3, s8
                  or           a0, s5, gp
                  and          a3, sp, s5
                  andi         t2, sp, 139
                  bltu         a6, s11, 343f
                  ori          s2, t4, -1242
                  ori          t4, a3, 766
                  beq          a3, t5, 343f
                  xor          a6, t6, t3
                  nop
                  sltiu        a0, zero, 1561
                  slti         t6, t1, 700
                  addi         s8, s4, 1694
                  xori         s11, a0, -192
                  bge          t6, a7, 336f
                  slli         s9, a4, 18
336:              addi         t2, s9, 538
                  srai         t4, t5, 29
                  lui          t0, 764964
                  srl          s6, a2, t4
                  beq          zero, zero, 348f
                  slti         a3, sp, 1938
                  lui          t6, 1047963
343:              blt          ra, a3, 362f
                  addi         t2, a3, 295
                  srai         t1, a5, 31
                  sra          a6, s6, ra
                  and          a1, t6, a5
348:              bltu         t6, gp, 361f
                  sltiu        sp, s9, -179
                  bge          s6, s8, 370f
                  beq          s0, t1, 354f
                  xori         a1, a5, -80
                  xori         t0, s4, 1050
354:              sltiu        s4, s4, 748
                  sll          s4, t6, a2
                  addi         t5, a6, 1688
                  bge          t0, sp, 358f
358:              sra          a3, s3, t0
                  nop
                  bltu         gp, t2, 373f
361:              sltu         zero, s1, a7
362:              bltu         s7, s4, 380f
                  slti         s9, s8, -1906
                  and          s8, s4, s10
                  beq          s6, t2, 376f
                  sll          t4, a1, a6
                  sub          sp, ra, a5
                  sub          a3, s9, s8
                  andi         s2, t4, -1752
370:              lui          s1, 99301
                  sltu         t5, s4, t6
                  sll          s2, s1, tp
373:              xor          s8, t1, s7
                  andi         a2, s11, 260
                  slti         tp, ra, -613
376:              ori          t1, t1, -1391
                  srai         s11, s4, 25
                  srai         a7, s11, 21
                  bltu         a4, sp, 381f
380:              beq          zero, s9, 393f
381:              srai         s4, a4, 23
                  beq          t4, s5, 385f
                  xori         a6, a7, -1724
                  xor          gp, a7, tp
385:              nop
                  bltu         t0, t5, 387f
387:              sra          a5, t4, t3
                  slt          s8, a5, zero
                  sltu         a7, t0, a2
                  sltiu        s6, s2, 1752
                  add          t1, s0, s10
                  blt          s8, tp, 411f
393:              sltiu        tp, t2, -208
                  addi         a6, a5, 740
                  bne          a6, ra, 413f
                  sltiu        t4, s1, 1794
                  srl          t5, s5, s7
                  blt          a6, a5, 417f
                  bltu         s6, a0, 412f
                  bne          s0, a0, 403f
                  bltu         tp, zero, 418f
                  srai         tp, t0, 31
403:              bgeu         tp, s8, 413f
                  beq          t0, t5, 406f
                  bltu         a6, t6, 413f
406:              andi         s11, a3, -924
                  sltu         t3, a5, s9
                  sltiu        ra, t1, 849
                  blt          s10, s9, 415f
                  addi         gp, a6, 901
411:              auipc        ra, 203313
412:              andi         tp, a6, 403
413:              sltiu        s4, t6, -764
                  bge          a0, s7, 415f
415:              bne          a0, t6, 417f
                  bgeu         t6, t2, 424f
417:              ori          a5, a2, 6
418:              bge          s0, ra, 421f
                  add          s4, a4, s11
                  ori          a2, a4, 855
421:              lui          ra, 619675
                  sltu         a6, s10, a7
                  slt          t5, s11, tp
424:              and          ra, gp, s0
                  slt          s1, t3, ra
                  and          a2, sp, s5
                  slti         s11, s6, 1427
                  ori          a5, s1, -1147
                  bge          a0, s2, 447f
                  sra          s11, s5, a7
                  sltu         sp, t6, t2
                  bltu         a0, t3, 441f
                  srl          t1, t1, t2
                  add          t0, a4, s8
                  sll          a5, t6, a2
                  sll          a7, s11, t1
                  or           t1, s0, a4
                  sltu         a6, t3, gp
                  slli         s6, a5, 19
                  ori          t3, a1, -979
441:              srl          s1, s5, s8
                  sltiu        s1, a4, -1661
                  xor          a0, s5, a7
                  slt          s0, t0, a6
                  srl          t0, tp, t6
                  and          a7, a2, s11
447:              beq          a7, s3, 448f
448:              bltu         s8, a6, 464f
                  bgeu         gp, s6, 452f
                  sltu         a6, zero, s2
                  slti         s9, a5, 476
452:              srli         t6, t0, 5
                  lui          t1, 311327
                  bltu         s5, t4, 465f
                  slti         t6, s10, 1919
                  bltu         t5, a2, 458f
                  slt          s6, zero, sp
458:              sltiu        t2, s4, 1184
                  add          a7, t6, t3
                  add          sp, a3, s2
                  srli         a6, a0, 23
                  nop
                  sll          s0, gp, t3
464:              srli         a0, t5, 13
465:              srl          ra, t1, a4
                  blt          s4, sp, 479f
                  or           t3, s2, s5
                  slti         t5, zero, 1062
                  bge          a4, a3, 471f
                  or           a5, tp, tp
471:              blt          s8, s9, 482f
                  sltu         t0, a6, s8
                  xori         s6, s11, -886
                  nop
                  lui          t4, 299366
                  srli         ra, zero, 24
                  xori         s4, sp, 567
                  slt          s6, t6, a2
479:              beq          s8, t4, 492f
                  beq          s7, s9, 491f
                  bltu         a2, s4, 501f
482:              xor          t6, a4, t4
                  xor          sp, t4, a1
                  addi         ra, t0, -1565
                  blt          s3, a5, 496f
                  srli         a5, s10, 10
                  sltu         a6, s4, s8
                  nop
                  sra          s0, a1, s8
                  srli         a5, a5, 24
491:              blt          zero, s8, 509f
492:              bltu         a2, tp, 509f
                  sub          a3, a5, t2
                  add          a5, t4, a5
                  andi         s0, a5, 1762
496:              srl          zero, s1, s3
                  bltu         a7, s9, 508f
                  beq          a6, zero, 499f
499:              sltiu        zero, t0, -52
                  beq          tp, s6, 519f
501:              ori          a3, ra, 96
                  and          a3, zero, t3
                  ori          t1, t4, 1362
                  slti         sp, s3, 827
                  xor          s9, a3, t1
                  sra          t5, zero, t3
                  sltu         a5, s11, a0
508:              slti         s0, t0, -619
509:              and          t0, t5, ra
                  bgeu         a6, a2, 526f
                  blt          s10, t3, 512f
512:              slli         s2, s1, 25
                  or           s7, t0, s3
                  la           s0, sub_2
                  and          t5, a0, sp
                  sll          s6, s7, s9
                  addi         s0, s0, -625
                  lui          s7, 363014
                  and          a1, s3, t6
                  ori          s1, t6, 1338
main_j1:          jalr         t1, s0, 625 #jump main -> sub_2
                  srli         s8, a2, 17
                  and          t5, s3, a1
                  nop
                  nop
                  add          zero, ra, a5
519:              addi         s6, zero, 154
                  slli         a2, a6, 17
                  ori          t5, t3, 873
                  andi         t4, t4, 441
                  andi         t2, ra, 879
                  srli         zero, t3, 8
                  ori          s8, a2, -611
526:              srl          t1, t3, a3
                  ori          gp, s10, 80
                  lui          s10, 481789
                  xor          zero, zero, s3
                  srai         gp, a1, 20
                  auipc        s4, 733817
                  bgeu         t6, a2, 545f
                  srli         t5, s10, 28
                  bne          t2, s9, 542f
                  srai         a3, s5, 15
                  auipc        t2, 25555
                  sra          a0, a5, ra
                  sltu         s11, a7, a5
                  or           zero, s1, t0
                  addi         s2, a3, -2044
                  bge          s9, s0, 550f
542:              sub          tp, t6, t3
                  sra          gp, t0, t1
                  ori          a1, a1, 1999
545:              lui          tp, 498308
                  sra          t4, t2, s11
                  bne          a3, a0, 560f
                  beq          s6, s3, 568f
                  bltu         s5, t6, 560f
550:              bgeu         zero, s9, 553f
                  ori          s9, t4, 433
                  lui          s8, 687940
553:              blt          ra, a7, 559f
                  xori         t3, t1, 584
                  ori          a1, t3, 236
                  sra          ra, s0, s6
                  sra          s11, s7, s3
                  bltu         a4, a4, 569f
559:              ori          s10, a0, 274
560:              or           zero, t6, s8
                  blt          s4, a2, 572f
                  andi         s10, a7, 1079
                  sub          sp, s9, s4
                  sll          a6, zero, ra
                  slt          t5, s3, t4
                  bge          t2, t3, 579f
                  bge          t0, ra, 569f
568:              srli         a0, s2, 24
569:              slti         t1, t5, -1912
                  andi         s9, t2, 634
                  sll          a0, t4, gp
572:              bgeu         sp, ra, 590f
                  srl          s4, a1, s5
                  la           a0, sub_1
                  auipc        s9, 189050
                  sub          a6, a2, a7
                  addi         s2, a4, 1147
                  xori         s4, t3, 270
                  sltu         s8, a6, t3
                  addi         a0, a0, -955
                  slt          ra, s10, ra
                  and          t3, a4, a2
                  bne          s10, s3, main_j2 #branch to jump instr
                  slli         tp, s4, 4
                  nop
main_j2:          jalr         t1, a0, 955 #jump main -> sub_1
                  srai         s4, a4, 26
                  beq          s7, t2, 578f
                  sltu         s1, s8, a3
                  or           s9, ra, t1
578:              beq          t1, t5, 580f
579:              addi         s11, s5, -1075
580:              ori          a2, s6, -908
                  andi         zero, t4, -1186
                  blt          t4, s3, 584f
                  nop
584:              bne          t4, a1, 602f
                  slti         s0, zero, -605
                  sra          t0, sp, gp
                  andi         a7, s5, 1205
                  slt          zero, a1, a6
                  bltu         t0, a4, 607f
590:              lui          gp, 781911
                  blt          a2, a6, 610f
                  srai         a5, a5, 9
                  srai         s4, a0, 31
                  and          s11, t5, sp
                  sub          s2, s5, tp
                  sltu         t6, t3, tp
                  srl          a1, a3, a5
                  sltu         a1, s10, gp
                  srai         s9, s10, 16
                  slti         a2, a3, 171
                  nop
602:              bgeu         sp, s11, 612f
                  addi         a3, t3, -1520
                  andi         a6, s6, 1303
                  beq          s5, a0, 608f
                  bltu         zero, a3, 614f
607:              auipc        a7, 108628
608:              srl          s7, zero, s0
                  bltu         s9, s4, 611f
610:              lui          t3, 642042
611:              sltu         a7, s8, s7
612:              bge          t2, s10, 613f
613:              srl          s11, s7, sp
614:              sra          a1, t5, t2
                  slli         s10, s7, 12
                  beq          a4, s11, 634f
                  nop
                  or           ra, a5, s3
                  sltiu        a0, zero, -1523
                  auipc        s10, 983568
                  sltiu        tp, s9, -686
                  sub          s1, a7, zero
                  slti         s9, a3, 476
                  nop
                  slli         s6, s11, 25
                  sltu         a0, s5, a0
                  ori          t2, s11, -569
                  lui          s2, 274521
                  xor          s10, s6, a0
                  xor          t6, t5, s4
                  auipc        t0, 710066
                  lui          s0, 605656
                  srai         a0, t5, 13
634:              bltu         a0, a7, 654f
                  ori          t4, t5, -66
                  and          a3, a4, s5
                  nop
                  or           a5, a1, s6
                  ori          s8, a1, 340
                  or           a3, s2, t1
                  sub          t3, s1, s7
                  lui          t0, 504846
                  bltu         s9, a0, 656f
                  auipc        zero, 90440
                  beq          s2, a6, 664f
                  srli         tp, a2, 21
                  bge          a2, s10, 658f
                  sra          s10, t1, s5
                  srai         a1, s8, 4
                  srli         s9, s11, 15
                  srli         ra, s2, 6
                  srai         s0, sp, 15
                  blt          a5, a2, 664f
654:              xor          gp, a0, s1
                  slli         t2, s3, 8
656:              srl          a2, a1, s2
                  sll          a7, a5, a3
658:              slti         a2, a1, -118
                  lui          a1, 350827
                  xor          s6, tp, a3
                  bltu         s6, s4, 662f
662:              bne          tp, t4, 671f
                  sra          t5, a2, s6
664:              sll          a0, a5, t1
                  sll          t2, sp, t3
                  andi         t0, a4, -1469
                  nop
                  beq          t0, s3, 681f
                  srli         t0, s8, 22
                  lui          a1, 471347
671:              sub          a2, a7, s3
                  blt          t2, t2, 685f
                  and          s8, t2, a4
                  beq          gp, t2, 692f
                  sra          t1, s11, sp
                  add          s4, s4, s10
                  sra          t2, a6, a4
                  slt          a5, s2, a7
                  beq          s10, gp, 687f
                  bgeu         a2, a1, 682f
681:              sll          gp, s2, a6
682:              bgeu         s5, s1, 698f
                  slti         gp, t6, 1526
                  sll          a7, s4, a2
685:              beq          t6, s8, 688f
                  bgeu         t1, s2, 689f
687:              xor          s8, a1, ra
688:              bgeu         t4, t6, 690f
689:              bgeu         t5, t0, 700f
690:              auipc        a5, 53974
                  xor          s11, s5, t3
692:              sltiu        s9, gp, -1653
                  or           gp, s9, a5
                  ori          a0, s3, -1054
                  sra          t4, s2, a5
                  and          ra, t3, a0
                  add          a7, s8, t1
698:              blt          t3, a2, 704f
                  bltu         s1, a5, 716f
700:              beq          t5, a4, 710f
                  bltu         s2, tp, 703f
                  bne          tp, s10, 705f
703:              or           s4, s2, s1
704:              or           t0, a1, s8
705:              bltu         s7, a5, 707f
                  sub          t5, s4, s10
707:              andi         t0, a6, -581
                  sra          s8, s8, a1
                  auipc        t2, 305688
710:              blt          zero, t0, 728f
                  andi         sp, a1, 11
                  or           s10, sp, a2
                  add          gp, a4, a6
                  sub          s2, s1, s7
                  sltiu        a2, s3, -902
716:              slti         a0, a4, -288
                  bltu         s0, a2, 725f
                  or           a3, s8, a0
                  bgeu         sp, s6, 720f
720:              xori         a5, s3, 1410
                  srai         a6, t0, 30
                  la           sp, sub_2
                  sltiu        t5, gp, 1862
                  sltu         ra, a4, t6
                  slli         s0, a0, 12
                  addi         sp, sp, 997
                  or           s2, s5, s5
main_j3:          jalr         t1, sp, -997 #jump main -> sub_2
                  ori          s4, s1, -1204
                  blt          a6, s11, 733f
                  blt          s9, t3, 742f
                  bge          a1, a5, 725f
725:              srai         t0, tp, 22
                  bltu         s2, s2, 728f
                  srl          zero, a5, s7
728:              addi         s2, s4, -1312
                  srl          a5, s0, s0
                  srli         s8, zero, 13
                  addi         s0, s1, 2038
                  or           gp, t0, a4
733:              bltu         t4, s0, 743f
                  sll          tp, ra, a3
                  srli         s6, gp, 14
                  srl          t2, tp, s2
                  xor          s0, t3, a5
                  beq          s2, s2, 756f
                  bne          s5, a4, 759f
                  add          s1, s11, a1
                  srl          s8, a2, s4
742:              sltu         a1, a7, a6
743:              blt          t4, a7, 759f
                  addi         a1, t3, -1234
                  srli         t1, gp, 2
                  bne          sp, s8, 757f
                  srl          s0, a5, s3
                  bgeu         zero, a4, 754f
                  andi         t5, a4, -1279
                  sltu         t5, s3, s5
                  ori          t1, t5, 1193
                  srl          s6, t1, s7
                  bge          tp, sp, 764f
754:              blt          s9, s9, 755f
755:              andi         s6, t2, 914
756:              lui          s7, 206085
757:              xor          s2, a4, t0
                  srai         a1, a4, 1
759:              ori          s2, s1, 2020
                  sltu         t5, a4, t6
                  sra          s6, s8, a1
                  xori         s0, s5, -511
                  andi         s0, s1, 2017
764:              auipc        s9, 225442
                  nop
                  slt          t4, zero, s4
                  xori         s1, zero, 750
                  sub          t3, a4, s7
                  sra          t4, s11, t0
                  bge          t3, a1, 778f
                  or           s1, a3, s2
                  beq          t0, t0, 773f
773:              ori          t0, t3, 405
                  or           a3, a5, a3
                  bltu         gp, s6, 783f
                  sub          s1, s6, a7
                  addi         s0, s7, -1153
778:              bgeu         a4, sp, 791f
                  srli         s6, sp, 6
                  ori          s0, s2, -221
                  or           t3, s4, a4
                  srai         a0, a1, 5
783:              bgeu         t6, s5, 796f
                  and          a5, a3, t3
                  andi         t5, s9, 1875
                  xori         a3, gp, 61
                  auipc        s0, 90185
                  sll          t1, s2, t2
                  slli         s8, a1, 20
                  andi         t1, a2, 1464
791:              blt          s2, s7, 800f
                  sltu         ra, a4, s9
                  auipc        t4, 689740
                  andi         a7, a4, 376
                  beq          a1, s9, 798f
796:              or           s2, t5, t0
                  nop
798:              srai         a0, a1, 3
                  and          s9, a3, a2
800:              lui          s9, 336974
                  nop
                  auipc        s0, 49463
                  beq          a5, s8, 816f
                  andi         t1, s6, 1690
                  bgeu         a2, t3, 808f
                  nop
                  sll          gp, t3, s6
808:              bgeu         t6, a4, 811f
                  srl          s10, s6, tp
                  srai         tp, t6, 27
811:              andi         ra, s0, -1000
                  sll          t0, sp, t0
                  and          s1, t0, s5
                  beq          zero, s1, 825f
                  sra          a6, a0, zero
816:              sltiu        t4, s9, -1324
                  sra          s11, ra, t3
                  or           s2, a7, s4
                  srli         a1, s2, 8
                  ori          t1, t4, -1215
                  sra          s9, zero, a0
                  lui          t0, 1007374
                  blt          t1, t2, 825f
                  xori         t5, t5, -444
825:              auipc        s6, 328701
                  sltiu        s0, a5, -1901
                  nop
                  sub          s8, s3, s0
                  blt          gp, zero, 847f
                  add          t2, t6, s6
                  bltu         a6, s2, 850f
                  beq          t1, zero, 849f
                  add          t6, a0, gp
                  slt          zero, zero, s11
                  slli         t4, t2, 26
                  bgeu         tp, t4, 838f
                  blt          a3, ra, 838f
838:              xor          ra, s5, a1
                  lui          s6, 30286
                  or           t3, s1, a6
                  lui          t3, 93648
                  slli         s9, s3, 0
                  addi         gp, s6, -1099
                  sltu         s9, ra, a6
                  lui          a2, 620465
                  srai         a5, s7, 8
847:              sltiu        a2, s8, -760
                  ori          zero, s5, 389
849:              srl          a1, t0, t5
850:              sltu         a5, t4, s10
                  auipc        a5, 390815
                  bge          ra, t1, 870f
                  xori         s10, a4, -429
                  srl          zero, t1, s10
                  xor          t0, a7, s4
                  nop
                  srai         s7, t5, 10
                  addi         a6, s1, 1771
                  sltiu        s6, s7, -1511
                  blt          tp, s11, 879f
                  slt          ra, s8, a1
                  ori          s6, gp, -1486
                  ori          tp, gp, -1713
                  andi         s11, a1, -1495
                  slti         ra, zero, -1668
                  xor          t3, sp, a7
                  xor          sp, s2, a2
                  sra          a0, a1, s5
                  and          t2, a7, s3
870:              slt          a1, gp, sp
                  blt          tp, s5, 873f
                  addi         t1, t1, 185
873:              or           a5, a3, a6
                  slti         a0, s3, -1203
                  slti         a0, s9, -1124
                  blt          t5, s6, 880f
                  addi         sp, s2, -1221
                  slli         tp, tp, 18
879:              slti         s11, s6, 1201
880:              andi         s1, t6, 1140
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            nop
                  sll          tp, t6, s0
                  sra          zero, zero, a0
                  slli         a6, sp, 5
                  addi         a4, a4, -32
                  xori         a2, s2, 676
                  sll          s6, s0, a1
                  sw           t1, 4(a4)
                  srai         s11, t0, 17
                  bge          s11, s8, sub_3_j6 #branch to jump instr
                  slli         gp, s5, 4
                  sltu         s6, gp, s3
                  sltu         s9, a0, t2
                  sub          s2, s10, tp
                  nop
                  xor          t3, a5, s6
                  sra          a0, t4, s11
                  ori          s2, s11, -1545
sub_3_j6:         jal          t1, sub_6 #jump sub_3 -> sub_6
                  la           a7, region_0+330 #start riscv_load_store_rand_instr_stream_1
                  andi         t6, gp, 1997
                  sb           s3, -56(a7)
                  lui          s11, 69031
                  and          t2, s1, a4
                  srai         gp, zero, 20
                  sw           t1, 2(a7)
                  lbu          t3, -51(a7)
                  lhu          sp, 12(a7)
                  lb           s2, -9(a7)
                  and          a5, s10, s7
                  ori          ra, s8, 809
                  lh           ra, -34(a7)
                  srai         t0, a2, 28
                  lw           a0, 58(a7)
                  or           s6, t5, s1
                  sra          tp, a4, a1
                  sltu         t1, t4, a6
                  lhu          s6, 28(a7)
                  lb           s8, -40(a7)
                  slli         s7, t0, 14
                  ori          t2, a7, -926
                  lb           a0, -51(a7)
                  slt          t5, t3, t4
                  lb           t0, 41(a7)
                  xor          t3, s0, s2
                  addi         t0, t3, 1044
                  lbu          a5, -63(a7)
                  srai         a1, t2, 2
                  lb           s4, -55(a7)
                  lb           t4, 37(a7)
                  lhu          a3, -34(a7)
                  lb           s7, 51(a7)
                  sltiu        a0, s9, 1067
                  lh           t6, 44(a7)
                  slt          t4, s4, s11
                  sltiu        t6, gp, -294
                  sra          a1, t5, s11
                  xori         t4, s8, -1382
                  nop
                  auipc        a6, 106353
                  sh           t2, 38(a7)
                  sltiu        a2, a0, -1076
                  sw           t1, 34(a7)
                  sb           s8, -36(a7) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_0+430 #start riscv_load_store_rand_instr_stream_0
                  auipc        t0, 278097
                  lb           gp, 357(t3)
                  ori          s8, s5, 374
                  nop
                  sll          a5, t3, s0
                  sb           s4, -281(t3)
                  addi         a2, a1, 1071
                  lbu          a6, 627(t3)
                  add          t2, s7, tp
                  lbu          s2, 800(t3)
                  slti         a7, a0, -1897
                  ori          s0, t4, 70
                  and          t0, s7, s0
                  srli         s11, a2, 8
                  sb           gp, 106(t3)
                  lb           s11, 1197(t3)
                  lbu          s1, 102(t3)
                  nop
                  andi         tp, t3, 1957
                  add          ra, t0, a7
                  sb           s3, 439(t3)
                  srl          s10, gp, a0
                  slli         s4, t2, 27
                  lhu          t2, -60(t3)
                  addi         a1, t3, 609
                  andi         s4, a3, -850
                  or           gp, a4, s0
                  sub          s1, t3, gp
                  lb           s11, 1261(t3)
                  ori          t5, s3, -629
                  sll          a6, a6, s2
                  slli         ra, s5, 13
                  xor          a3, zero, s1
                  lh           s7, -80(t3)
                  sll          s7, a7, sp
                  andi         t4, t5, 562
                  lui          t1, 542977
                  lb           s1, 423(t3) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+517 #start riscv_load_store_rand_instr_stream_2
                  lb           s8, 176(sp)
                  lbu          zero, -26(sp)
                  lh           a2, 109(sp)
                  sltu         s6, s10, s11
                  sb           t2, -214(sp)
                  xori         t0, s6, 897
                  srai         s2, s4, 6
                  lb           zero, 194(sp)
                  xori         a2, s0, 1318
                  lbu          t0, -244(sp)
                  auipc        a6, 441851
                  nop
                  slt          s1, a7, s8
                  slt          s11, s0, s8
                  sra          gp, s2, s8
                  lb           gp, -238(sp)
                  sb           ra, -256(sp)
                  lh           ra, -231(sp)
                  lbu          s1, -60(sp)
                  srl          tp, s2, t4
                  sb           s11, 20(sp)
                  srli         t0, s7, 30
                  slt          ra, a1, s1
                  sb           s1, -93(sp)
                  lbu          a6, 140(sp)
                  lb           s1, 32(sp)
                  lb           a3, -137(sp)
                  lb           s6, 178(sp)
                  lb           a7, 132(sp)
                  lbu          a5, -160(sp)
                  lbu          t4, -204(sp)
                  lhu          a5, 39(sp)
                  lb           tp, -180(sp)
                  lb           t6, 102(sp)
                  slli         s1, a6, 7
                  sltiu        a6, a0, 118
                  sh           t2, -49(sp)
                  sub          s1, s11, s1
                  sra          zero, t1, a5
                  slti         s1, a7, 179
                  sltu         t0, a0, s7
                  nop
                  sh           s9, 69(sp)
                  lh           s1, 203(sp)
                  lb           t4, -28(sp) #end riscv_load_store_rand_instr_stream_2
                  la           ra, region_0+1375 #start riscv_load_store_rand_instr_stream_3
                  lbu          s11, 58(ra)
                  lbu          s1, -70(ra)
                  sb           s5, 230(ra)
                  lhu          t2, 247(ra)
                  sll          s10, s9, zero
                  lbu          t0, -62(ra)
                  sltu         s9, a5, s4
                  sltu         s4, zero, s0
                  lbu          s0, 184(ra)
                  lbu          s7, -191(ra)
                  lb           a7, 31(ra)
                  slli         s9, a7, 17
                  sh           s8, 59(ra)
                  lb           a1, 239(ra)
                  srli         s8, zero, 24
                  addi         a6, t5, -1890
                  sra          a3, s8, tp
                  sh           s3, -171(ra)
                  andi         s4, zero, 585
                  lb           gp, -228(ra)
                  slt          tp, a2, ra
                  lw           s9, 137(ra)
                  nop
                  sltu         s0, a1, s11
                  sub          a2, a2, s4
                  xori         zero, s3, 457
                  add          s8, a0, a3
                  sb           s6, -227(ra)
                  xori         a1, t1, -183
                  ori          s11, s3, -1995
                  lh           s8, -91(ra)
                  lhu          a6, -147(ra)
                  lbu          s10, -114(ra)
                  lui          a3, 156040
                  slt          a1, t2, s8
                  lb           zero, -182(ra)
                  lh           a1, 41(ra)
                  lb           t2, 181(ra)
                  sw           s6, 181(ra) #end riscv_load_store_rand_instr_stream_3
                  add          s11, s7, a2
                  bgeu         s0, t4, 15f
                  slt          zero, s9, ra
                  sltu         a0, a6, t1
                  srai         a5, t4, 23
                  bgeu         t1, a7, 25f
                  srli         t3, ra, 1
                  ori          a2, zero, 665
                  nop
                  slt          a1, s5, a7
                  auipc        t2, 777436
                  add          t0, a3, t2
                  lui          s0, 650835
                  andi         s0, zero, -1543
                  bne          a2, s11, 23f
15:               bge          tp, t5, 26f
                  slti         zero, s4, -1459
                  sra          s2, s5, a4
                  xori         t4, s9, 645
                  or           t1, s0, a1
                  slti         a3, a3, 1764
                  sll          a7, a6, a5
                  xori         a7, s7, 516
23:               addi         sp, a3, -1049
                  add          s10, s10, gp
25:               addi         s11, a2, -1330
26:               addi         t6, gp, 590
                  slti         s10, tp, 1050
                  srai         a2, s6, 0
                  or           sp, t6, s2
                  srli         a2, a3, 25
                  blt          s3, t6, 46f
                  slt          a2, s9, a4
                  nop
                  lui          a3, 325900
                  bltu         s2, s0, 48f
                  slli         t6, a2, 22
                  add          t0, a4, a1
                  ori          zero, s11, -652
                  bge          t5, s6, 50f
                  srai         t6, a4, 17
                  sll          zero, zero, gp
                  slti         ra, s0, 1243
                  slli         ra, zero, 11
                  bgeu         s6, t4, 59f
                  slti         t2, a4, -222
46:               lui          a3, 498445
                  nop
48:               blt          t0, s1, 50f
                  bgeu         t5, t5, 62f
50:               bne          s8, s0, 65f
                  add          zero, s11, s3
                  lui          tp, 685584
                  sub          t3, gp, t5
                  sub          s8, zero, gp
                  or           s2, t2, a6
                  nop
                  slti         t2, a5, -1967
                  bge          t0, sp, 77f
59:               or           s6, s9, s9
                  bge          a7, t2, 79f
                  nop
62:               ori          zero, s7, -1216
                  or           s10, s0, gp
                  sltiu        t0, a4, -1226
65:               slt          s9, a3, s2
                  srai         t5, a4, 9
                  sra          a6, s7, a5
                  bgeu         s8, t1, 69f
69:               andi         t5, s9, 339
                  slli         a6, s1, 16
                  bgeu         s2, t3, 91f
                  slt          s2, t5, gp
                  sltiu        t6, a0, 1691
                  sll          tp, s5, zero
                  sra          sp, s0, t1
                  blt          t3, gp, 81f
77:               bne          a1, a4, 89f
                  blt          s2, s6, 83f
79:               bge          sp, t0, 92f
                  srli         a7, t0, 25
81:               blt          s4, s3, 90f
                  andi         a1, s9, -1799
83:               nop
                  add          t6, a7, s2
                  andi         zero, tp, 694
                  lui          s4, 88440
                  and          a5, t4, ra
                  xori         a1, zero, -270
89:               srai         s0, s6, 19
90:               srai         t3, t3, 31
91:               nop
92:               beq          s8, t6, 101f
                  ori          t0, s5, -1958
                  sra          s0, a6, sp
                  srl          t6, s8, a6
                  xor          s1, s1, s0
                  bltu         s2, a2, 105f
                  and          s2, t2, s1
                  andi         t2, s7, -1241
                  srai         a2, a2, 20
101:              addi         gp, t4, 1633
                  xori         s11, s4, -1352
                  sub          gp, a7, zero
                  and          t2, a3, s2
105:              bne          t2, a2, 123f
                  slli         t6, s11, 18
                  slti         a1, s0, -1280
                  xor          t3, tp, s7
                  beq          t2, a2, 110f
110:              xori         a5, s6, 1878
                  slti         a0, s8, 1423
                  nop
                  slt          s9, s3, t5
                  andi         t6, tp, 133
                  xori         t4, a2, 246
                  bge          t1, t1, 122f
                  bltu         a1, t5, 135f
                  sra          gp, a3, s10
                  andi         s11, sp, 197
                  and          zero, s6, t6
                  andi         s6, a3, 1125
122:              lui          s7, 157793
123:              bne          s11, s8, 130f
                  sra          s4, t1, s7
                  slli         a1, s2, 7
                  bge          s7, a1, 144f
                  bltu         s0, gp, 140f
                  bgeu         s0, s1, 144f
                  auipc        t1, 521653
130:              srli         sp, s9, 0
                  lui          s2, 438980
                  sra          s2, s4, s6
                  blt          s10, t6, 146f
                  addi         s8, s3, 1839
135:              bltu         s10, a7, 150f
                  slli         a7, s1, 30
                  sltiu        t5, a3, -1747
                  sltiu        a2, a2, 952
                  sltiu        s4, a2, -1477
140:              beq          t1, s7, 141f
141:              beq          s4, tp, 153f
                  sltu         s4, t6, a6
                  and          a6, a7, t6
144:              srli         sp, s2, 23
                  srai         a5, ra, 11
146:              xori         a1, s1, 86
                  sra          s1, gp, s0
                  xor          a0, s9, a5
                  slli         s8, t3, 18
150:              sltu         s2, s11, tp
                  srai         t0, a6, 6
                  or           a5, s9, t6
153:              ori          t2, s6, -1402
                  bltu         a2, s3, 160f
                  andi         t2, ra, 1867
                  xor          s4, s3, s4
                  sltiu        a0, a6, -392
                  sub          a1, a1, t0
                  slli         a3, t0, 1
160:              lui          s6, 134554
                  sltu         a2, t6, t5
                  srl          a6, t0, t2
                  auipc        t2, 490162
                  andi         a6, zero, 1108
                  bgeu         s9, t6, 184f
                  srl          sp, s9, ra
                  xor          a2, s8, gp
                  sltu         a0, s3, a3
                  sub          tp, s4, s5
                  slt          t5, s7, s2
                  or           s9, a2, s3
                  or           t0, s2, s8
                  srai         a0, t5, 27
                  bge          s9, s2, 193f
                  and          s11, t4, s6
                  ori          s1, gp, -432
                  beq          a3, t4, 185f
                  srai         a7, sp, 16
                  sll          t3, ra, a1
                  lui          s8, 653784
                  beq          a0, t3, 190f
                  bgeu         a6, s2, 195f
                  add          tp, t3, s2
184:              add          s6, s4, s11
185:              sltu         s2, s0, t0
                  addi         s0, a1, -125
                  andi         s4, a3, -502
                  and          s9, t3, s2
                  ori          tp, t2, -1536
190:              slti         s10, s8, 169
                  sra          a3, a5, sp
                  andi         a7, t2, 1368
193:              sub          s11, s8, a7
                  add          t3, s8, s0
195:              bltu         a2, tp, 204f
                  add          tp, s5, a5
                  andi         tp, t4, 1901
                  sll          zero, a2, s9
                  beq          s8, s2, 219f
                  slti         ra, a0, 947
                  add          s7, t1, zero
                  bltu         s6, s9, 218f
                  auipc        s4, 313293
204:              srli         t2, t1, 2
                  auipc        s9, 532830
                  bge          s10, s1, 221f
                  sltiu        sp, s11, 567
                  slti         a1, s3, -996
                  add          t5, s5, s3
                  sltu         a0, s11, s10
                  ori          t6, s1, -1241
                  bltu         s3, s8, 223f
                  andi         t0, t0, -2032
                  slli         zero, s4, 10
                  beq          s5, s9, 217f
                  srli         sp, s5, 2
217:              beq          s1, a5, 226f
218:              add          t5, a0, a7
219:              bgeu         t2, sp, 226f
                  xori         a0, ra, -733
221:              lui          ra, 859649
                  xori         a7, s1, -230
223:              slli         s1, t1, 3
                  andi         s4, s10, -1933
                  xori         s9, s2, -1450
226:              addi         s4, ra, 159
                  sll          s2, gp, a0
                  xori         s9, s6, 304
                  add          a5, tp, s8
                  nop
                  ori          t2, t4, -1106
                  bgeu         a4, t2, 245f
                  or           sp, zero, sp
                  sltu         s7, sp, t1
                  or           t4, s7, a1
                  nop
                  sltu         s10, a2, s6
                  bltu         a3, t1, 243f
                  srli         a3, t6, 28
                  bltu         s3, t6, 258f
                  xor          a7, s10, a7
                  bgeu         s3, s9, 243f
243:              bne          tp, s10, 261f
                  lui          a0, 1002690
245:              add          t5, s5, sp
                  srl          gp, zero, s7
                  slli         a0, s5, 13
                  auipc        t5, 48648
                  sub          a7, a4, sp
                  xor          s8, s5, s10
                  sltu         s6, tp, t6
                  and          s0, s2, s1
                  ori          ra, zero, -1768
                  addi         s8, s7, -388
                  bgeu         sp, tp, 273f
                  srli         gp, t3, 18
                  srl          s11, s7, a3
258:              srl          a5, s5, s2
                  andi         t1, s6, -1888
                  bltu         s6, a6, 273f
261:              nop
                  lui          sp, 767821
                  sra          tp, s5, s7
                  sub          s11, t2, a1
                  xori         sp, t2, -906
                  srai         s9, s10, 30
                  nop
                  sltu         gp, s10, t5
                  bne          t5, a3, 283f
                  bne          a6, ra, 290f
                  auipc        s1, 341913
                  lui          a2, 148959
273:              and          t3, s8, gp
                  bltu         gp, s2, 285f
                  or           tp, s6, t0
                  andi         t1, s0, -651
                  sltiu        s9, s8, -927
                  sub          a3, t5, s7
                  slli         s6, s9, 6
                  addi         a7, t5, -1171
                  sltiu        gp, a7, -541
                  bne          s10, a2, 297f
283:              sll          a1, s10, a2
                  slt          s11, a2, zero
285:              auipc        t4, 359773
                  sub          s4, t2, a3
                  xor          a0, t5, t0
                  srl          a5, s8, s0
                  sltiu        s11, zero, 295
290:              slli         s4, s1, 19
                  sltiu        t5, a3, -1315
                  slti         a2, a1, -1146
                  blt          zero, t1, 298f
                  andi         s4, tp, -384
                  xori         t3, a4, 1173
                  auipc        gp, 467339
297:              beq          s2, s11, 317f
298:              andi         t4, a0, 1048
                  sll          a0, s6, t3
                  xor          ra, s8, sp
                  bne          s8, a4, 314f
                  beq          a2, s9, 317f
                  bne          s11, t0, 319f
                  srai         t1, t0, 6
                  ori          s9, s8, -54
                  auipc        s0, 258770
                  lui          a2, 545367
                  bgeu         s5, a1, 319f
                  bne          a6, s9, 324f
                  srl          s11, a2, gp
                  slti         s11, s1, -599
                  add          s10, s2, t3
                  lui          s6, 481926
314:              bne          tp, s11, 320f
                  xori         a5, t0, -1945
                  srl          s0, tp, t3
317:              slt          s9, s2, s8
                  sll          s9, t0, t2
319:              add          s2, gp, zero
320:              blt          a4, s3, 329f
                  srli         tp, s10, 2
                  xori         s11, a5, -1572
                  or           a0, a2, tp
324:              sub          s6, t5, s7
                  srl          s9, a4, sp
                  auipc        t0, 21326
                  blt          t1, a4, 334f
                  beq          s7, t0, 346f
329:              beq          a7, s11, 344f
                  andi         a1, t0, -1743
                  sub          t4, s6, s11
                  sltiu        s10, s11, 1650
                  sll          a5, t2, a4
334:              ori          a7, t4, 1041
                  add          a5, a6, t3
                  sll          a1, s5, s6
                  sra          s7, s10, sp
                  nop
                  or           a7, ra, s9
                  ori          s7, s0, 1226
                  slt          zero, a6, a5
                  slli         t3, tp, 5
                  ori          a2, s8, 135
344:              slt          s7, a5, t3
                  auipc        tp, 721405
346:              sra          t6, s9, a5
                  nop
                  srai         a0, tp, 10
                  andi         s2, s5, -1745
                  or           s0, s6, a3
                  slli         sp, t4, 31
                  sltu         a1, s5, a7
                  andi         s11, t6, 1043
                  bge          s10, s9, 367f
                  sltu         s10, a3, a5
                  nop
                  srai         s7, a1, 23
                  add          s7, s5, t3
                  bltu         s7, t6, 370f
                  lui          zero, 215839
                  or           t2, a4, a4
                  sub          t6, t5, s2
                  and          s0, a5, s3
                  ori          t1, s2, 1651
                  andi         t2, sp, -1063
                  slti         a2, s5, 863
367:              slti         s6, t3, 567
                  bge          sp, s1, 377f
                  sub          s9, gp, ra
370:              sub          s4, s10, a4
                  sll          s9, s11, t3
                  srai         a5, a4, 10
                  slt          s1, s10, ra
                  xori         t3, t4, -150
                  auipc        a2, 933922
                  bne          s3, t0, 381f
377:              sub          t6, t3, t2
                  srai         ra, t0, 29
                  bge          s7, s4, 388f
                  xori         a0, s9, -870
381:              sra          t6, s0, s6
                  beq          s5, s8, 383f
383:              srli         s9, tp, 29
                  auipc        t5, 71371
                  addi         t3, s11, 1029
                  auipc        a0, 834440
                  sltiu        a7, s3, -99
388:              sra          a3, a3, a4
                  bltu         a5, a5, 391f
                  srl          a0, s8, t4
391:              srai         t4, a2, 16
                  slt          ra, sp, zero
                  auipc        t0, 9417
                  auipc        a3, 128050
                  blt          tp, t0, 408f
                  auipc        t2, 350533
                  slli         zero, a6, 27
                  or           a3, s11, t3
                  srai         s0, t2, 15
                  xori         s10, a5, -846
                  or           s9, t2, s4
                  srli         s1, a6, 27
                  sltiu        zero, zero, -1830
                  ori          s9, t6, -770
                  srli         a0, t2, 0
                  sra          t4, t4, a7
                  sll          t1, a0, s8
408:              sra          s0, tp, sp
                  sll          s9, a7, t2
                  addi         sp, s7, -1924
                  sll          t5, s3, s5
                  beq          ra, s0, 417f
                  bge          zero, s4, 432f
                  nop
                  beq          t6, ra, 428f
                  ori          s11, t2, 2030
417:              sra          a5, sp, s4
                  add          s7, t2, t2
                  sll          s0, gp, t4
                  lui          zero, 859146
                  blt          s2, a7, 435f
                  bge          s0, a7, 442f
                  andi         a6, a6, 1270
                  sll          s6, s8, ra
                  xor          a2, t6, s2
                  andi         s11, t6, -1352
                  bge          s2, s5, 439f
428:              add          gp, t5, s9
                  xor          s1, s3, zero
                  sub          s7, s6, tp
                  bgeu         s5, s3, 439f
432:              sra          ra, a1, a1
                  ori          s7, a0, 587
                  xor          t0, zero, s7
435:              bne          t1, s2, 436f
436:              sltu         t3, s1, a3
                  lui          t5, 586613
                  xor          a0, s1, a2
                  bgeu         s1, a1, sub_3_j8 #branch to jump instr
                  srl          a6, t2, t4
                  srli         sp, s8, 4
                  srli         s4, sp, 7
                  srl          t0, s5, s1
sub_3_j8:         jal          t1, sub_7 #jump sub_3 -> sub_7
                  srai         ra, s6, 5
                  ori          s9, a2, 497
439:              addi         a3, s2, 328
                  auipc        s10, 600171
                  slt          s11, t2, t4
442:              or           s4, t1, tp
                  srl          a6, t2, t3
                  addi         s1, a5, 1396
                  lui          a6, 555587
                  and          a6, t3, zero
                  or           s6, a2, s7
                  xor          s6, s0, s5
                  xor          sp, sp, a7
                  xor          a2, a5, tp
                  sub          s1, tp, t1
                  bltu         a0, sp, 471f
                  auipc        t4, 423928
                  ori          tp, a6, 1389
                  andi         s7, a4, 1594
                  srli         s7, s0, 3
                  blt          a4, a7, 475f
                  nop
                  or           s0, t3, a4
                  ori          t1, a6, -1858
                  sub          s10, s8, t1
                  auipc        s0, 265921
                  xor          a3, t5, a4
                  nop
                  addi         a7, s7, 1316
                  sltu         tp, s8, gp
                  srli         gp, s8, 16
                  srl          t2, a3, s1
                  blt          s0, t0, 487f
                  xor          s6, t6, t6
471:              srai         s8, a3, 7
                  slti         s2, zero, -1731
                  auipc        s4, 952091
                  bgeu         s6, s11, 482f
475:              lui          zero, 369619
                  slti         s2, a7, -941
                  auipc        s10, 206978
                  srai         s8, t6, 28
                  bltu         s6, s6, 497f
                  bne          t3, a4, 486f
                  slli         t3, s11, 21
482:              ori          sp, t2, -86
                  xori         t6, s1, -745
                  sltu         sp, a6, a1
                  andi         s9, t5, -1379
                  blt          s5, t3, sub_3_j7 #branch to jump instr
                  slli         t0, s7, 29
                  ori          sp, t1, -542
                  ori          a0, a5, -498
sub_3_j7:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  auipc        s4, 517590
                  sltiu        a1, a5, 328
486:              slti         a0, s4, -1184
487:              nop
                  or           tp, s10, s3
                  sltiu        t1, s5, -353
                  add          a1, s2, a4
                  srai         s1, s9, 12
                  bne          t3, a7, 499f
                  xori         s1, t6, 437
                  srai         s4, zero, 25
                  xori         s10, t2, -805
                  bne          t6, t6, 499f
497:              xori         zero, a2, 121
                  ori          t6, t0, -87
499:              srai         s9, t5, 19
                  lw           t1, 4(a4)
                  sra          gp, s0, tp
                  sra          a2, ra, a0
                  addi         a4, a4, 32
                  sltiu        s11, tp, -1208
                  slt          s8, a2, sp
                  xor          a0, t1, a5
                  sltu         s2, s5, a5
712:              addi x12, x6, 1
712:              jalr x12, x12, 0
sub_5:            addi         a4, a4, -16
                  sra          a1, a7, t1
                  sll          t5, a3, t4
                  sw           t1, 4(a4)
                  slli         s8, s0, 12
                  la           sp, region_1+258 #start riscv_load_store_rand_instr_stream_0
                  lbu          a5, 5(sp)
                  slli         s10, zero, 2
                  sb           s0, -1(sp)
                  nop
                  sb           t1, 13(sp)
                  sb           t2, -15(sp)
                  srl          a1, a0, t4
                  lbu          tp, -11(sp)
                  lbu          a7, 3(sp)
                  nop
                  sll          zero, t0, t6
                  sltu         a0, gp, s10
                  sll          a6, a7, a6
                  xor          a3, a1, zero
                  lb           s0, -9(sp)
                  sltiu        s11, zero, 37
                  and          s0, s4, s10
                  sb           gp, -4(sp)
                  slt          s6, s9, t6
                  sb           t6, -3(sp)
                  addi         a1, a7, -349
                  lb           s4, 4(sp)
                  lbu          a2, -4(sp)
                  sra          s11, s2, a0
                  srai         s1, a5, 13
                  or           s8, gp, s3
                  lbu          a0, -5(sp)
                  lhu          s1, -14(sp)
                  sb           s11, -15(sp)
                  lbu          t3, 5(sp)
                  sra          t2, t5, s0
                  sh           a4, -12(sp)
                  andi         s2, s10, -831
                  xor          a5, t6, s3
                  xori         t6, a1, 281
                  sh           s11, -8(sp)
                  lb           a6, 10(sp)
                  lh           t6, -10(sp)
                  sub          gp, s9, t5
                  xori         s10, s3, -1796
                  sra          s0, t0, a6
                  slti         a3, a5, 1951
                  add          t0, t0, zero
                  sltiu        ra, a0, 1941
                  srai         s0, a5, 16
                  slt          t6, s4, s2
                  nop
                  and          s0, t4, s5
                  lhu          s7, -8(sp)
                  lb           s10, 8(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+238 #start riscv_load_store_rand_instr_stream_3
                  nop
                  sll          s10, t2, s9
                  sra          zero, s1, a7
                  lb           a3, 8(sp)
                  sb           t6, -14(sp)
                  nop
                  sh           a2, 12(sp)
                  add          a2, s3, a3
                  lb           s4, -16(sp)
                  auipc        a7, 457875
                  sb           a4, 15(sp)
                  sh           a3, 14(sp)
                  lbu          t2, -13(sp)
                  srli         s6, a4, 25
                  lb           s0, 5(sp)
                  lbu          s1, 5(sp)
                  sw           a6, -10(sp)
                  slti         s11, t2, -1118
                  and          s2, s11, sp
                  lb           a6, -5(sp)
                  and          a5, t0, s11
                  lhu          s1, 12(sp)
                  sb           s6, -4(sp)
                  addi         t2, tp, 1010
                  slli         s8, t4, 0
                  sltu         ra, a3, t4
                  sw           t2, -10(sp)
                  addi         ra, s0, -944
                  sra          s7, s3, t0
                  xor          s0, t0, s6
                  slti         t4, s0, -660
                  sb           zero, 10(sp)
                  lb           s4, 1(sp)
                  lb           a2, 14(sp)
                  srli         a5, s3, 28
                  ori          s11, a0, 1163
                  lb           s9, 9(sp)
                  sh           s7, -12(sp)
                  sll          zero, gp, t5
                  lb           s9, 13(sp)
                  add          s9, ra, s11
                  srai         s8, s1, 13
                  lb           t3, -15(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1124 #start riscv_load_store_rand_instr_stream_2
                  lh           a7, 8(sp)
                  sw           t0, 8(sp)
                  lbu          t0, -55(sp)
                  sub          s7, a1, t2
                  srli         t3, zero, 15
                  sll          t2, a7, s0
                  lui          ra, 824630
                  lw           t3, 12(sp)
                  lbu          s9, -9(sp)
                  lw           s4, -52(sp)
                  lbu          a2, -63(sp)
                  nop
                  lhu          s9, 60(sp)
                  nop
                  slti         s11, s3, 150
                  lhu          t3, 28(sp)
                  lh           t4, 60(sp)
                  ori          s0, sp, 2021
                  srl          a3, s3, t5
                  nop
                  sh           t6, 58(sp)
                  sb           a2, 34(sp)
                  sh           a5, 32(sp)
                  sb           s5, -24(sp)
                  addi         t1, tp, -126
                  slli         s2, a5, 12
                  xor          a7, s6, a2
                  andi         a0, a7, 914
                  lb           t1, 23(sp)
                  lh           t6, -2(sp)
                  sub          s0, s9, s9
                  sb           t1, -51(sp)
                  lbu          t3, 36(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a0, region_0+343 #start riscv_load_store_rand_instr_stream_5
                  lb           s6, 195(a0)
                  lhu          s7, -189(a0)
                  auipc        gp, 255386
                  srl          sp, sp, t3
                  lh           t0, -33(a0)
                  lw           s11, 245(a0)
                  srai         t5, s6, 18
                  sra          ra, tp, gp
                  lb           s0, -160(a0)
                  sb           s7, -211(a0)
                  lb           a7, -49(a0)
                  sltu         t4, a0, a6
                  sra          a6, a1, gp
                  xori         s2, a1, 82
                  sb           zero, -32(a0)
                  sb           t1, 69(a0)
                  sb           s11, 224(a0)
                  xor          sp, gp, a0
                  lbu          zero, -68(a0)
                  sb           t5, 232(a0)
                  sb           s0, -143(a0)
                  xor          a3, a3, t3
                  sh           a4, 233(a0)
                  lb           t1, 22(a0)
                  and          a3, sp, s0
                  lb           a2, 200(a0)
                  sb           gp, -68(a0)
                  lbu          sp, -194(a0)
                  lui          sp, 478195
                  srli         t5, t3, 25
                  xori         s8, t2, 539
                  sb           s1, 179(a0)
                  xori         t1, a5, 770
                  srai         t2, t4, 31
                  or           t1, s9, zero
                  lbu          a2, 230(a0)
                  andi         gp, s11, -177
                  slti         a2, a7, 162
                  ori          s9, s10, -1425
                  lbu          s11, -44(a0)
                  andi         t1, s3, -1739
                  lui          s8, 956192
                  xori         s2, s6, -1205
                  sb           t4, 151(a0)
                  xor          t6, t0, t3
                  lb           t4, -89(a0)
                  nop
                  lb           s11, 62(a0)
                  sb           a0, -45(a0)
                  ori          s0, s6, 380
                  and          s8, s11, a0
                  srli         s10, s9, 2
                  lw           tp, 113(a0)
                  lb           s11, -65(a0) #end riscv_load_store_rand_instr_stream_5
                  slti         ra, a3, 871
                  or           a5, t3, tp
                  xor          a3, t0, t6
                  bgeu         s11, s6, 18f
                  sll          s4, t4, a5
                  lui          s2, 845209
                  auipc        s6, 1043912
                  srai         ra, a2, 2
                  auipc        s4, 248913
                  slti         t3, s0, -867
                  sub          tp, s0, t6
                  nop
                  sltu         zero, a1, t6
                  addi         s2, a7, -1413
                  bne          t2, gp, 30f
                  and          t5, s10, sp
                  xori         s0, t5, -580
                  slt          s9, zero, t3
18:               bltu         t0, s5, 38f
                  sll          t6, a3, s11
                  or           s4, a4, t4
                  slti         a5, a7, 1731
                  srai         s8, s6, 22
                  or           t6, s6, t3
                  slti         a7, t0, -1761
                  sub          s1, ra, a3
                  srai         s7, sp, 3
                  add          s6, s8, ra
                  bgeu         t6, s6, 45f
                  add          s7, s6, s5
30:               nop
                  auipc        s11, 269176
                  srai         s9, t2, 6
                  slli         a2, sp, 12
                  srli         a5, t1, 14
                  add          s11, s6, s9
                  bgeu         s6, s11, 51f
                  ori          zero, t4, 1979
38:               and          a2, ra, a1
                  sll          a0, a2, a3
                  bne          a3, s6, 48f
                  bne          t4, sp, 45f
                  addi         s6, s6, -1071
                  bge          s0, s10, 60f
                  srli         a2, zero, 2
45:               or           t0, zero, t6
                  srai         a3, s6, 4
                  nop
                  andi         a5, s7, -502
                  slti         t6, s4, 1814
                  and          a7, a0, s1
                  bge          a1, t2, sub_5_j9 #branch to jump instr
                  slt          s2, a6, s9
                  lui          a5, 745019
sub_5_j9:         jal          t1, sub_8 #jump sub_5 -> sub_8
                  xori         s4, s4, 245
48:               blt          s0, a4, 52f
                  bgeu         t3, a1, 65f
                  and          t3, tp, t5
51:               sltu         s4, t5, a7
52:               sub          t5, a3, s9
                  auipc        s6, 603211
                  bgeu         gp, s8, 66f
                  sub          zero, a3, t4
                  slti         s7, a4, 1222
                  blt          a4, a6, 75f
                  srl          t0, t0, a2
                  ori          a7, a5, 24
60:               sltiu        a2, s11, -1694
                  sub          gp, a7, t0
                  sltu         a3, t0, s6
                  or           t2, s6, gp
                  sra          t5, t3, s9
65:               ori          s1, s7, 948
66:               blt          s1, zero, 75f
                  or           ra, s6, a2
                  srl          a1, s5, s10
                  xor          s9, s6, s9
                  addi         ra, s10, 1342
                  bne          s11, a5, 78f
                  srli         sp, t5, 5
                  srai         a1, s10, 0
                  slt          a5, a0, t4
75:               sltu         s4, a2, a1
                  slli         gp, sp, 19
                  xor          s9, s3, s5
78:               xor          s9, t5, a0
                  slti         t0, s6, -447
                  slti         t0, s4, -1044
                  bne          s1, gp, 96f
                  sltu         a5, zero, ra
                  sltu         s1, zero, ra
                  beq          gp, a4, 93f
                  and          a6, a6, s4
                  and          a3, s1, t1
                  beq          a2, s6, 91f
                  addi         tp, t6, 961
                  srli         a2, gp, 18
                  srai         a2, s0, 21
91:               lui          sp, 196878
                  bltu         a4, gp, 94f
93:               bltu         gp, s7, 104f
94:               slti         s11, s10, 1673
                  blt          a4, a7, 102f
96:               bltu         a4, a4, 97f
97:               bltu         s9, s4, 112f
                  srl          gp, t4, zero
                  srli         a0, t5, 28
                  and          t1, a0, s5
                  srli         a7, a2, 30
102:              blt          s11, s9, 105f
                  lui          a0, 406109
104:              sltiu        s7, tp, -314
105:              ori          s11, s2, 1292
                  auipc        t4, 130538
                  ori          a6, s3, 172
                  or           sp, a5, s7
                  srai         t5, s4, 11
                  blt          a6, ra, 115f
                  slli         s8, s10, 23
112:              andi         t3, a6, 308
                  slt          a7, s10, gp
                  and          a0, s2, a3
115:              sll          sp, s1, t0
                  blt          s2, tp, 127f
                  andi         s6, s3, -213
                  xor          s6, a2, gp
                  bgeu         a2, sp, 125f
                  sra          s0, sp, s1
                  sra          t0, t2, s5
                  srai         s4, t4, 23
                  sll          a6, s11, s0
                  srl          s11, tp, a3
125:              bne          a7, s1, 141f
                  slti         s2, ra, -958
127:              lui          s2, 256084
                  sltiu        a3, t6, 620
                  blt          s5, s6, 134f
                  lui          a2, 889259
                  andi         t3, sp, -54
                  ori          s0, a7, -730
                  andi         tp, s10, -1119
134:              and          s2, a7, s6
                  sltu         s6, t6, s4
                  bgeu         a5, a7, 147f
                  srai         a0, s0, 20
                  sra          s8, gp, s1
                  or           t5, a2, s6
                  beq          s4, a2, 147f
141:              sra          s8, s1, a7
                  sltiu        s10, a6, 863
                  slti         t0, t5, -1201
                  lui          sp, 422466
                  add          s0, sp, a0
                  sub          s6, a1, s11
147:              ori          s1, s7, 716
                  ori          a5, tp, 1220
                  slti         t4, gp, -1798
                  sub          a3, s0, a4
                  and          a2, s2, a1
                  sltu         s9, tp, s3
                  bgeu         a0, t3, 161f
                  bltu         a5, zero, 172f
                  slt          a7, s4, a4
                  add          s8, t4, s6
                  xor          a0, s8, sp
                  bltu         s1, a6, 162f
                  sltiu        s9, s8, -788
                  sub          s11, a0, ra
161:              xori         a1, s10, 661
162:              bge          s5, gp, 174f
                  srli         s4, s10, 14
                  blt          s1, a3, 173f
                  auipc        s4, 617489
                  sltu         t0, a1, t2
                  or           a7, a1, a5
                  or           a7, s7, t1
                  addi         a5, t4, -265
                  auipc        s9, 631455
                  srai         a2, s11, 7
172:              slti         s6, s3, -1054
173:              bltu         t6, a1, 188f
174:              sra          gp, a1, t5
                  slt          t3, s8, a5
                  bltu         t4, s8, 185f
                  sltu         s6, a6, t6
                  sll          t6, a0, a2
                  auipc        t2, 99100
                  auipc        t0, 196207
                  auipc        zero, 113427
                  slti         tp, sp, 1780
                  sra          sp, a1, s8
                  bne          s5, s4, 191f
185:              sltiu        s0, zero, -210
                  blt          ra, s9, 192f
                  or           a1, s3, a6
188:              ori          a5, tp, -687
                  slli         a5, t5, 26
                  sltu         t6, gp, a3
191:              nop
192:              bne          s6, a0, 208f
                  sltiu        t3, s5, 508
                  beq          s6, a2, 211f
                  beq          a3, a0, 197f
                  bgeu         s5, a7, 203f
197:              auipc        t2, 172723
                  sra          s4, a7, s2
                  lui          s10, 624241
                  blt          a0, s8, 216f
                  blt          s6, s4, 212f
                  sltiu        gp, t6, -1928
203:              bgeu         s10, tp, 214f
                  bltu         t4, s8, 215f
                  bgeu         a5, a4, 225f
                  srl          a2, t0, t6
                  bge          ra, s9, 222f
208:              andi         s10, t4, -1828
                  srl          s10, s2, a2
                  sltiu        a7, s3, 830
211:              sltiu        t0, s1, -1775
212:              blt          a6, a7, 216f
                  slli         s7, t6, 30
214:              andi         s2, s3, 266
215:              srai         t1, sp, 20
216:              xori         s1, s1, 1064
                  or           sp, a4, a1
                  sll          a1, t4, s0
                  xori         s7, a7, -1838
                  srai         a6, a1, 3
                  srli         t0, t5, 2
222:              sub          a0, t5, s4
                  bgeu         a4, s8, 224f
224:              nop
225:              lui          s11, 327761
                  srai         a3, t0, 8
                  nop
                  nop
                  slli         a7, a1, 10
                  bne          a3, s8, 235f
                  nop
                  srai         a5, t0, 11
                  bne          t4, t5, 248f
                  bne          a4, a7, 250f
235:              bltu         s7, s7, 242f
                  sra          zero, s4, sp
                  srl          t3, a4, s1
                  xor          s10, t0, t1
                  la           sp, region_1+1722 #start riscv_load_store_rand_instr_stream_1
                  or           s10, s5, zero
                  addi         s8, s2, 1932
                  slt          tp, s10, a3
                  sh           t0, -2(sp)
                  xor          tp, a3, a7
                  lbu          a3, 23(sp)
                  lhu          t6, 34(sp)
                  lhu          s0, -12(sp)
                  xor          a0, a6, ra
                  nop
                  sub          t5, a3, a0
                  nop
                  sub          s1, t0, s8
                  sb           a4, 21(sp)
                  sb           s3, -55(sp)
                  sb           a1, -25(sp)
                  auipc        s4, 571277
                  lb           s1, -61(sp)
                  lh           zero, 22(sp)
                  lb           a5, 24(sp)
                  lhu          gp, -62(sp)
                  lui          tp, 136100
                  lbu          s4, -52(sp)
                  srl          t6, s1, zero
                  sb           sp, 42(sp)
                  lbu          s9, -59(sp)
                  sll          a0, zero, s5
                  lb           s11, -49(sp)
                  nop
                  sh           s5, -6(sp)
                  xori         t0, s8, 1528
                  lbu          s9, -28(sp)
                  lbu          s4, 59(sp) #end riscv_load_store_rand_instr_stream_1
                  lui          t3, 914298
                  bltu         s7, a4, 243f
                  add          s0, gp, t4
242:              andi         a6, a4, -298
243:              slli         s1, s7, 13
                  lui          t6, 726770
                  sltiu        s2, s1, 675
                  xori         t5, zero, -1752
                  ori          s4, a1, -165
248:              and          t5, t5, t5
                  and          zero, s10, gp
250:              lui          zero, 625453
                  xori         t2, a6, -419
                  sltiu        ra, a0, 1161
                  or           s0, a2, s9
                  nop
                  sll          s4, sp, s10
                  ori          a5, t4, -1482
                  sltiu        ra, s2, 1570
                  add          t3, s7, tp
                  sra          s6, s3, s5
                  slt          gp, sp, t3
                  srai         a2, s4, 27
                  slti         s1, a1, 1214
                  bgeu         a1, s2, 278f
                  bne          s9, a7, 281f
                  ori          t6, a3, -563
                  bne          t1, s7, 271f
                  or           s2, a2, a3
                  blt          a6, s4, 272f
                  slti         t5, s9, 978
                  sltiu        ra, t0, 1641
271:              srli         s4, s9, 22
272:              xor          s1, sp, a6
                  slti         a0, a0, -1214
                  addi         s7, ra, 687
                  xori         t4, a2, 1663
                  bltu         t0, s3, 287f
                  and          ra, sp, t6
278:              bne          t4, a0, 294f
                  bge          a4, t3, 296f
                  srli         s9, a4, 13
281:              srl          t2, s4, s10
                  auipc        s7, 21901
                  addi         s1, t1, -842
                  sll          s0, s11, tp
                  xori         s11, s5, -549
                  bltu         t0, t3, 301f
287:              srai         s9, s2, 2
                  sra          t5, t4, s8
                  sltiu        s1, s2, 1945
                  xor          ra, sp, t4
                  srl          a3, s10, t1
                  slli         s4, t0, 21
                  slli         a0, s0, 25
294:              xor          a5, a7, s3
                  lui          s9, 414196
296:              ori          ra, a2, 1334
                  sra          tp, s2, t2
                  add          s11, a3, s9
                  bltu         t6, a5, 315f
                  srl          t1, t2, s4
301:              sltiu        s11, a6, 967
                  sra          t1, a0, s6
                  addi         tp, t0, 573
                  blt          a6, t6, 315f
                  sub          t6, s3, s6
                  bgeu         s1, s3, 315f
                  bge          s4, a5, 312f
                  sltiu        a0, s2, 363
                  auipc        t0, 970659
                  addi         a3, a1, -233
                  bne          t1, s7, 318f
312:              srl          s7, a7, a7
                  bne          a6, zero, 328f
                  auipc        a1, 217080
315:              srli         s2, s0, 30
                  slti         t4, s7, 976
                  blt          s0, t5, 326f
318:              ori          s7, ra, 111
                  sltiu        t5, s3, -470
                  sra          zero, a6, s2
                  sltu         tp, t6, s4
                  srai         s8, s5, 1
                  sltiu        a7, s2, 839
                  sra          s2, a0, s6
                  bge          s0, s11, 333f
326:              bltu         s6, a7, 342f
                  sltiu        a0, a4, 1650
328:              nop
                  blt          gp, s11, 331f
                  slti         s9, a4, -1580
331:              sra          s11, s7, a5
                  sra          t6, a1, a7
333:              lui          s0, 723899
                  and          t2, a2, t0
                  bgeu         s10, s11, 352f
                  bgeu         t6, t5, 351f
                  sll          a7, zero, a4
                  bltu         s3, sp, 342f
                  beq          s0, s9, 343f
                  sll          s1, s10, a3
                  srl          s2, s3, s11
342:              beq          a7, s7, 345f
343:              bltu         ra, s10, 355f
                  blt          s6, s1, 355f
345:              bge          a1, t1, 365f
                  blt          t5, s4, 351f
                  andi         zero, t2, -457
                  srl          a7, s1, a6
                  andi         a7, t4, 1338
                  bltu         s0, a3, 351f
351:              addi         a0, a5, -1883
352:              srai         zero, a3, 16
                  or           a7, s10, s10
                  bgeu         tp, s11, 361f
355:              auipc        s2, 735409
                  sub          a3, s6, a0
                  sub          t1, a3, a7
                  sltu         t6, t1, s11
                  lui          t3, 966599
                  sub          a5, a4, s7
361:              sra          a1, ra, a4
                  sub          gp, ra, s8
                  srai         t1, t4, 14
                  and          a5, t0, a3
365:              blt          s1, t4, 383f
                  bge          t4, s0, 381f
                  srai         zero, s8, 19
                  add          a3, s9, sp
                  auipc        t6, 698527
                  sra          a1, s9, t2
                  auipc        a0, 866181
                  beq          a7, tp, 378f
                  blt          s3, s7, 380f
                  andi         t0, a3, -88
                  bge          tp, a7, 379f
                  addi         s0, s9, 610
                  bne          a2, tp, 392f
378:              srai         s8, s0, 29
379:              xori         sp, s7, 1853
380:              sra          a2, gp, a6
381:              and          t3, t2, s4
                  sub          s10, s10, ra
383:              xor          s11, s9, t6
                  add          s11, t2, a4
                  lui          s6, 460968
                  or           a3, s8, s4
                  srli         a5, t3, 14
                  slli         t6, a0, 31
                  sub          gp, a2, t4
                  auipc        t5, 792806
                  sltiu        a7, gp, -959
392:              beq          t2, s5, 408f
                  sra          a7, t6, s10
                  sltu         gp, s6, a7
                  addi         t4, t1, 2024
                  add          t4, s3, s10
                  beq          t6, a7, 400f
                  slti         tp, t2, -1246
                  andi         s1, a1, -903
400:              andi         t4, a3, -246
                  bltu         t6, gp, 408f
                  bltu         a3, s6, 419f
                  xori         t4, t5, 1448
                  bltu         a2, s3, 415f
                  sra          s6, a5, ra
                  sra          a2, gp, t6
                  nop
408:              lui          t3, 807248
                  slti         s2, t5, 613
                  bge          a0, ra, 425f
                  ori          s1, s8, 2032
                  auipc        s11, 935412
                  add          gp, gp, s2
                  nop
415:              ori          s0, s1, -1977
                  or           t3, a5, s9
                  bltu         a3, s6, 421f
                  slli         t0, a5, 28
419:              or           t6, a0, s6
                  nop
421:              srai         t1, t3, 20
                  slt          a6, a4, a5
                  sll          s7, a7, ra
                  add          sp, ra, s5
425:              beq          s5, s0, 430f
                  addi         s10, a1, -295
                  add          t3, a4, t4
                  sltu         s4, s0, s4
                  bgeu         s11, a7, 444f
430:              andi         t0, a3, 1149
                  sltu         gp, a6, s3
                  ori          a3, a1, 1368
                  sltu         a5, a2, s11
                  nop
                  or           s9, t0, gp
                  addi         a5, t0, -973
                  xori         s6, ra, -549
                  addi         t2, a4, 1889
                  add          t2, t0, a6
                  beq          s3, t6, 441f
441:              sltiu        s11, tp, 1696
                  and          tp, s4, s6
                  auipc        s1, 891395
444:              blt          a2, s6, 460f
                  beq          s3, s8, 463f
                  slli         t5, sp, 28
                  sltu         sp, zero, t4
                  add          s0, a3, s4
                  bne          s7, s9, 456f
                  add          a1, s1, a6
                  and          t2, a2, s10
                  and          t1, t4, t0
                  beq          a1, s3, 469f
                  sltu         s11, ra, t0
                  and          s2, t2, gp
456:              sll          t5, t4, t6
                  bgeu         t0, gp, 466f
                  srl          ra, a0, s10
                  bge          s1, a7, 466f
460:              sub          s2, a4, t1
                  slli         sp, a2, 3
                  srli         ra, s10, 30
463:              sltiu        a5, a1, -595
                  slli         s9, s11, 7
                  bne          ra, a2, 480f
466:              add          s11, s8, tp
                  bge          s8, s3, 473f
                  srai         s0, a3, 17
469:              slt          t6, a0, a2
                  srai         s8, s10, 8
                  srli         a5, t0, 23
                  sll          ra, s9, a4
473:              blt          s7, a2, 490f
                  sltiu        sp, s7, 1283
                  srli         s2, t4, 30
                  bne          a0, tp, 481f
                  sll          s10, s0, a2
                  and          sp, t6, s4
                  or           t5, a2, t4
480:              bge          s0, s0, 492f
481:              srl          t2, s10, s8
                  blt          a6, s8, 490f
                  slli         t3, t5, 26
                  srli         sp, s11, 18
                  lui          s6, 122334
                  srl          a3, s9, sp
                  beq          s2, t1, 496f
                  blt          gp, t2, 499f
                  lui          s0, 570971
490:              sra          s10, s8, s5
                  bltu         sp, t1, 511f
492:              sra          s9, s5, t6
                  sra          sp, s0, s10
                  addi         ra, s8, 1185
                  add          t0, t0, a0
496:              and          s11, s9, a1
                  srli         gp, a0, 1
                  xori         a6, a2, 1377
499:              xori         t0, t4, 1811
                  bgeu         a2, tp, 504f
                  or           t3, s10, s11
                  bne          a4, t0, 513f
                  xor          s10, t3, ra
504:              beq          a6, s6, 508f
                  blt          a2, gp, 507f
                  bgeu         t1, tp, 518f
507:              srai         a6, s8, 26
508:              add          sp, s9, s9
                  srai         s4, s4, 10
                  bltu         t5, a1, 526f
511:              sra          gp, t6, a4
                  sub          t3, s6, ra
513:              sltiu        s9, tp, 286
                  srai         a2, tp, 15
                  bgeu         s2, zero, 519f
                  andi         s4, a6, -895
                  bne          t1, s4, 532f
518:              bge          s0, s11, 534f
519:              sra          s9, a6, a5
                  bgeu         a6, t6, 527f
                  addi         s1, tp, -926
                  bltu         t1, a4, 526f
                  sltiu        s11, s2, -102
                  bge          s10, s11, 531f
                  slt          s11, t2, t5
526:              sub          s2, a2, t4
527:              add          t6, s5, s6
                  slti         s6, a1, 830
                  blt          s6, a5, 549f
                  sltu         s6, s11, s1
531:              xor          t6, tp, a6
532:              nop
                  auipc        gp, 885319
534:              slt          s4, s4, a5
                  addi         a3, sp, -815
                  nop
                  sltiu        t0, a3, 896
                  sltu         s0, t1, a6
                  or           s0, s6, a4
                  auipc        s0, 281919
                  lui          t0, 782507
                  sll          a7, zero, t2
                  add          t2, t1, gp
                  sll          gp, s7, a5
                  bgeu         t3, gp, 560f
                  andi         s8, t3, -1640
                  sltu         t6, gp, s5
                  slti         s8, gp, -717
549:              bge          s7, s3, 555f
                  bltu         s6, s1, 552f
                  auipc        s11, 785405
552:              sub          s4, s0, s9
                  ori          gp, zero, 130
                  or           a7, t2, s4
555:              sub          ra, s4, t2
                  add          a5, t0, a1
                  srli         a0, t4, 8
                  add          t4, s7, s5
                  srl          a2, t1, a0
560:              addi         s0, a7, 982
                  blt          a4, t5, 576f
                  sub          s7, s9, s3
                  bltu         t2, t3, 572f
                  blt          s8, t6, 575f
                  srl          t0, s10, s2
                  bgeu         t4, s10, 573f
                  bltu         s9, a2, 578f
                  xori         a3, s4, -693
                  slt          t5, a7, s5
                  srai         a6, t3, 23
                  slt          s11, t3, s10
572:              sltu         s10, a4, t1
573:              bge          a2, s0, 590f
                  bgeu         a0, s10, 589f
575:              auipc        t4, 166459
576:              beq          s9, ra, 581f
                  andi         a7, a1, 55
578:              bne          a4, s3, 595f
                  sltu         tp, t4, t6
                  slli         t3, a1, 14
581:              sub          ra, t6, s3
                  addi         t4, tp, 647
                  xori         a5, tp, -1429
                  lui          t5, 636323
                  nop
                  slti         s9, tp, 324
                  slt          s11, a3, tp
                  addi         s11, s0, -980
589:              andi         s9, a5, -183
590:              ori          a2, s6, -483
                  add          a2, s6, a1
                  and          s8, s8, tp
                  sra          ra, t1, a0
                  xor          t5, a1, s10
595:              sltiu        zero, s4, -1755
                  slli         t1, a2, 29
                  or           s9, s1, gp
                  xor          zero, s3, a4
                  bge          s2, t5, 602f
                  sll          ra, s8, t0
                  xori         t1, s8, -884
602:              sltu         s10, t6, s7
                  auipc        tp, 496647
                  auipc        s2, 941351
                  bltu         s2, a4, 621f
                  or           s1, a3, s4
                  sll          t3, t2, t1
                  srai         t5, t6, 21
                  ori          s4, t3, 627
                  srl          t5, s0, s7
                  andi         zero, s5, 982
                  and          a5, t5, ra
                  srli         a1, a7, 1
                  blt          t0, sp, 618f
                  xori         t2, s0, -1971
                  sltiu        s7, t5, -847
                  auipc        s10, 899890
618:              sltu         ra, sp, a2
                  xori         t6, t1, 1324
                  srl          t4, zero, sp
621:              addi         t4, tp, -1063
                  slti         s1, a7, 1749
                  nop
                  slt          t5, ra, s0
                  and          sp, tp, s11
                  sub          s1, s6, s7
                  sub          t4, s7, a4
                  bgeu         s1, t2, 629f
629:              andi         s11, a4, -1485
                  auipc        a3, 946405
                  slt          a7, a3, gp
                  auipc        a5, 91267
                  lui          zero, 70926
                  sub          s2, gp, s8
                  sra          s10, a3, t1
                  sub          ra, s4, a6
                  blt          tp, s7, 655f
                  sltiu        s7, a3, -461
                  bge          s0, s6, 648f
                  slt          a7, s10, t0
                  blt          s1, gp, 652f
                  blt          zero, a2, 650f
                  blt          t3, t2, 648f
                  lui          t1, 575355
                  auipc        s1, 930281
                  sra          a3, t3, s6
                  ori          s9, t5, -699
648:              xori         a1, s0, 1024
                  sltu         t6, s8, gp
650:              blt          s10, s8, 655f
                  srai         t5, a6, 18
652:              addi         t2, a5, -828
                  srl          a2, sp, t2
                  sra          s11, a1, t0
655:              ori          s7, t2, -1050
                  bne          t4, s8, 672f
                  sll          t2, sp, t5
                  xor          sp, s8, t6
                  or           t0, s10, a0
                  andi         ra, s6, -1151
                  sub          s6, s4, a1
                  ori          a1, s7, -577
                  bne          s4, s7, 670f
                  auipc        t0, 598208
                  srl          s11, a2, a5
                  slli         tp, s0, 21
                  lui          s2, 509077
                  srl          a1, s6, s3
                  srli         t2, s8, 29
670:              srli         a3, s6, 1
                  sub          t2, a3, sp
672:              auipc        sp, 847670
                  srl          a6, s11, t0
                  sltiu        tp, s11, -151
                  andi         t1, s10, -181
                  bge          sp, t5, 691f
                  xori         s1, s6, 41
                  srl          tp, t1, a1
                  add          zero, t5, t4
                  sub          a3, a0, s8
                  slt          a5, s8, s11
                  andi         t2, s5, 225
                  beq          ra, zero, 687f
                  lui          s6, 205863
                  srai         s7, s11, 26
                  slli         t5, a4, 10
687:              ori          t5, tp, 1757
                  nop
                  slt          a0, s5, s3
                  bltu         ra, a6, 697f
691:              bltu         t3, t4, 706f
                  auipc        s1, 497696
                  blt          tp, tp, 694f
694:              bge          t3, t2, 698f
                  srl          sp, s5, gp
                  bgeu         a7, t0, 713f
697:              bge          s1, t2, 706f
698:              bge          t4, tp, 703f
                  ori          ra, s7, 1453
                  blt          a6, s2, 711f
                  srl          t3, t0, s5
                  slti         s4, a6, -928
703:              or           a2, t4, t4
                  xori         ra, s7, -282
                  srai         s10, s11, 29
706:              sll          t5, ra, t1
                  ori          ra, s11, -998
                  add          s8, s6, s10
                  bltu         a6, a0, 721f
                  ori          t4, s8, 1966
711:              slli         s9, a3, 18
                  srl          t6, ra, ra
713:              srl          s6, a2, s9
                  sltiu        t2, s10, 12
                  slti         sp, s7, -556
                  ori          a0, a0, 1410
                  lui          zero, 174893
                  xor          a2, s10, gp
                  srli         sp, s10, 22
                  slli         t0, a5, 30
721:              or           t1, s7, s7
                  sltu         s1, t5, s3
                  bge          t3, s5, 734f
                  lui          a1, 863809
                  beq          t0, s3, 734f
                  beq          zero, a4, 732f
                  xori         ra, zero, 1043
                  slt          zero, a5, s1
                  and          t0, zero, s11
                  sra          t2, s11, s3
                  xori         a6, a1, -900
732:              bne          a0, t6, 747f
                  sltu         zero, t3, s0
734:              bltu         t2, tp, 751f
                  beq          a1, ra, 743f
                  and          s1, s7, a2
                  nop
                  sra          s10, a3, sp
                  sub          t0, t1, sp
                  beq          s6, tp, 744f
                  nop
                  bltu         t2, a4, 749f
743:              bne          a0, s6, 746f
744:              add          a5, a4, s8
                  slli         t2, s6, 3
746:              andi         s8, s2, 736
747:              sll          s10, gp, s11
                  bgeu         t0, s1, 750f
749:              srl          t4, a0, t5
750:              nop
751:              andi         a1, t4, 1769
                  lui          a3, 489285
                  bge          s6, s3, 771f
                  add          s9, t1, gp
                  bge          a7, t0, 771f
                  auipc        s0, 749145
                  sltu         zero, s4, t6
                  sltu         s7, t1, t2
                  slti         a0, t0, 378
                  bltu         s1, a5, 776f
                  slli         zero, a5, 30
                  blt          s9, tp, 777f
                  auipc        s9, 728268
                  sltiu        s0, s8, -549
                  slli         t4, s11, 26
                  la           s4, region_0+1579 #start riscv_load_store_rand_instr_stream_4
                  sub          t5, t6, s6
                  auipc        tp, 817750
                  lui          s0, 739882
                  sb           ra, 13(s4)
                  sw           zero, 9(s4)
                  lbu          zero, 10(s4)
                  xori         t3, t5, -715
                  lb           s9, 2(s4)
                  addi         t0, a1, 1210
                  lb           s0, 5(s4)
                  sub          s7, t4, s11
                  lbu          sp, 4(s4)
                  sub          s6, s1, s7
                  slti         s10, s6, -172
                  lbu          s8, -2(s4)
                  xori         gp, ra, 367
                  sh           s0, -11(s4)
                  slt          s0, t6, a2
                  sb           a2, -16(s4)
                  andi         t0, s10, 727
                  lbu          t1, 12(s4)
                  lbu          sp, 4(s4)
                  lb           ra, 6(s4)
                  lb           sp, 11(s4)
                  or           s1, s5, sp
                  add          t3, t3, s11
                  srai         s11, tp, 23
                  sb           s1, -12(s4)
                  lb           ra, 2(s4)
                  sub          s0, s5, t5
                  srl          tp, s6, ra
                  lb           s1, 10(s4)
                  or           s2, a4, a1
                  auipc        s1, 663477
                  sb           s5, -6(s4)
                  lhu          zero, 13(s4)
                  nop
                  lbu          t0, -8(s4)
                  sh           s7, 3(s4)
                  lh           a3, 5(s4)
                  nop
                  sltiu        s10, s5, -1403
                  lui          gp, 314508
                  lhu          a0, -15(s4)
                  xori         s10, t0, -2043
                  sb           a6, -15(s4)
                  lh           s7, 7(s4)
                  auipc        s1, 897639
                  lhu          s9, -5(s4)
                  lbu          a1, 10(s4)
                  srli         s10, a6, 19
                  sb           s7, 2(s4)
                  sll          s1, t1, t0
                  auipc        t5, 349573
                  lb           t0, -14(s4)
                  sltu         tp, a5, zero
                  srl          a6, s0, a5
                  sub          a3, s5, s7
                  lb           s6, 8(s4)
                  lbu          t3, -16(s4) #end riscv_load_store_rand_instr_stream_4
                  or           s2, a5, a2
                  or           s11, t6, s1
                  sub          ra, s5, s4
                  srli         s8, gp, 9
                  auipc        ra, 712839
771:              andi         t6, zero, -789
                  or           t1, t4, s11
                  sll          a7, s1, s6
                  beq          t1, t3, 794f
                  slti         tp, a7, -784
776:              xori         s4, sp, -1487
777:              sub          t2, s2, s4
                  bge          a4, a0, 789f
                  sltiu        s6, s6, 474
                  ori          s2, tp, 564
                  slti         t0, s3, -1808
                  beq          a4, zero, 793f
                  beq          s4, sp, 800f
                  bltu         gp, s7, 795f
                  bne          s11, a6, 790f
                  andi         s6, s3, 1281
                  bltu         s9, a7, 788f
788:              srl          sp, t2, a7
789:              blt          gp, s7, 794f
790:              sra          s11, s0, t2
                  ori          s10, t3, 1965
                  ori          s8, t2, 133
793:              sub          s4, a7, a1
794:              bltu         a1, gp, 814f
795:              srl          a6, a7, t1
                  ori          a3, t1, -690
                  bne          s9, s4, 808f
                  and          a3, ra, tp
                  bge          t1, t3, 817f
800:              bge          s6, ra, 816f
                  lui          a5, 502947
                  srai         a2, a1, 18
                  srli         zero, t6, 4
                  add          s9, a7, t0
                  bge          a4, sp, 812f
                  bltu         s4, zero, 814f
                  srli         s0, s1, 24
808:              sltiu        t6, ra, 583
                  xori         t3, t3, 413
                  bgeu         s4, a0, 826f
                  bgeu         s6, t0, 818f
812:              sub          tp, s3, gp
                  ori          s2, t1, -332
814:              slli         s10, a6, 28
                  andi         a3, s2, -1912
816:              srl          a6, s11, t1
817:              sub          a5, s2, t4
818:              lui          s0, 20962
                  or           a1, t2, s8
                  xori         sp, s4, -1374
                  xori         a3, a0, 729
                  lui          t1, 1041210
                  slli         s4, t4, 18
                  lui          gp, 473802
                  xori         t4, a2, -1941
826:              bltu         s5, a5, 828f
                  addi         tp, gp, -96
828:              bge          s10, a3, 843f
                  slli         a7, t0, 7
                  auipc        s4, 1043229
                  bltu         s0, s1, 843f
                  andi         a5, a3, -919
                  sra          s2, a2, a6
                  bgeu         t2, t4, 841f
                  slti         tp, t0, -1237
                  sltu         t4, gp, s3
                  lui          ra, 1025819
                  lui          t0, 708397
                  bltu         a5, t4, 843f
                  bge          s6, s4, 843f
841:              blt          gp, t5, 843f
                  sll          t4, s5, a3
843:              sra          t6, zero, gp
                  addi         s1, s5, 134
                  ori          s10, a5, 1633
                  lw           t1, 4(a4)
                  andi         ra, a4, 809
                  addi         a4, a4, 16
                  xori         t4, t1, -373
                  sltu         s8, s6, s0
                  or           s0, s2, a3
                  sub          tp, a1, t2
                  sub          t5, s3, s6
                  srai         a7, s9, 10
1147:             addi x1, x6, 0
1147:             jalr x1, x1, 0
sub_7:            add          s6, s9, sp
                  ori          t6, t5, 415
                  addi         a5, a3, -1514
                  slt          s4, a2, t2
                  xori         s0, zero, 1944
                  beq          tp, gp, sub_7_stack_p
                  auipc        s8, 564782
                  sltu         s0, tp, gp
sub_7_stack_p:    addi         a4, a4, -60
                  slt          t4, s6, s1
                  srl          a3, t2, t3
                  sw           t1, 4(a4)
                  sltu         s10, s2, t2
                  la           sp, region_1+1885 #start riscv_load_store_rand_instr_stream_1
                  xori         ra, a0, 665
                  and          t6, s8, zero
                  lbu          t0, -54(sp)
                  sltiu        gp, s11, -577
                  sub          t2, t0, ra
                  or           a6, a2, t0
                  lui          zero, 630263
                  sltiu        t0, a6, 977
                  andi         t6, s10, 1446
                  lbu          a2, 36(sp)
                  lb           s11, 62(sp)
                  slti         t0, sp, 827
                  srai         s7, a0, 25
                  ori          s4, gp, -712
                  slli         s2, sp, 30
                  sw           s1, 7(sp)
                  or           ra, t0, a1
                  lbu          t4, 0(sp)
                  sltiu        s11, s11, -1878
                  lb           s0, -24(sp)
                  slti         a1, s2, -1134
                  sll          s8, sp, s4
                  sb           gp, 18(sp)
                  addi         ra, s7, -1363
                  auipc        a6, 1037711
                  lh           s11, 13(sp)
                  sltiu        s9, s5, -144
                  lui          s8, 987094
                  ori          s2, t0, -1550
                  srli         s2, t5, 27
                  sltu         t2, s10, a5
                  nop
                  or           s6, s8, t6
                  sb           a1, 14(sp)
                  lb           a2, 26(sp)
                  sub          ra, s4, a0
                  sra          s9, a2, s1
                  sb           s8, 46(sp)
                  sb           s8, 23(sp)
                  lhu          t1, -31(sp)
                  lbu          a5, -64(sp) #end riscv_load_store_rand_instr_stream_1
                  la           tp, region_1+1298 #start riscv_load_store_rand_instr_stream_9
                  lbu          a0, -16(tp)
                  sra          s0, s0, t4
                  lw           a5, 62(tp)
                  sb           t2, 5(tp)
                  lb           s4, -37(tp)
                  lb           gp, 31(tp)
                  lh           a5, 16(tp)
                  slti         a5, t4, -896
                  lb           a3, -16(tp)
                  sra          t3, s10, gp
                  xor          t4, t6, s5
                  srl          t2, a6, a1
                  auipc        s7, 188655
                  srli         sp, s3, 15
                  auipc        a2, 979556
                  or           a7, s0, gp
                  sb           s5, -61(tp)
                  sll          s6, zero, s11
                  lb           t6, -59(tp)
                  lb           a6, 15(tp)
                  andi         a0, a7, -769
                  and          a6, t5, s3
                  sub          s7, t1, s11
                  lh           a6, 12(tp)
                  lbu          s2, -29(tp)
                  slt          t2, a5, t2
                  slti         s7, t6, 1161
                  lh           a0, -14(tp)
                  slti         t4, s6, -795
                  lbu          t3, -7(tp)
                  lbu          t1, 63(tp)
                  and          a2, s6, t5
                  lbu          a7, 13(tp)
                  lh           ra, -50(tp)
                  sb           s7, 36(tp)
                  lbu          sp, -55(tp)
                  andi         a7, s10, -1088
                  nop
                  sra          t3, s5, s4
                  addi         t0, t5, -1134
                  sll          ra, s7, t0
                  srai         a3, s1, 0
                  ori          s9, t0, 1964
                  andi         t6, t0, 267
                  lbu          s6, 9(tp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+1960 #start riscv_load_store_rand_instr_stream_8
                  srl          a6, sp, tp
                  sb           t3, -47(sp)
                  sltu         s7, s1, s2
                  nop
                  auipc        t4, 1035390
                  lbu          a5, 8(sp)
                  sltiu        a5, a0, -434
                  sb           s9, -17(sp)
                  lhu          a1, -34(sp)
                  addi         t4, sp, 2011
                  or           t6, t5, tp
                  andi         s1, a3, 1683
                  or           zero, a3, a7
                  xori         tp, s11, 1653
                  sltiu        zero, s3, 1091
                  sltu         s0, a6, a1
                  srai         s0, a2, 9
                  sh           s7, 16(sp)
                  lb           s8, -45(sp)
                  slt          t0, t4, gp
                  sb           s2, 9(sp)
                  add          s8, t6, t6
                  lbu          s10, -7(sp)
                  sll          s11, s9, a2
                  sltiu        t5, t1, -1668
                  lb           s0, 6(sp)
                  nop
                  add          t2, a4, t4
                  lbu          a6, 7(sp)
                  add          t5, s4, a6
                  add          t6, t2, t6
                  sll          s4, ra, a3
                  sb           t1, 13(sp) #end riscv_load_store_rand_instr_stream_8
                  la           a5, region_1+469 #start riscv_load_store_rand_instr_stream_7
                  add          t6, t5, s8
                  lui          a0, 938161
                  slt          a3, t6, ra
                  slt          s9, tp, a5
                  sb           s8, 46(a5)
                  lb           zero, 25(a5)
                  xor          s2, t5, t0
                  srl          s1, a4, t6
                  slt          tp, tp, ra
                  or           a0, s4, a6
                  sltu         t2, s11, s8
                  lh           s7, 33(a5)
                  sra          a6, s0, a4
                  lbu          a7, -30(a5)
                  sra          s1, gp, s6
                  lbu          t5, -39(a5)
                  lbu          a6, -54(a5)
                  sb           t4, -29(a5)
                  lbu          a1, 62(a5)
                  sub          s8, ra, t0
                  lbu          tp, 25(a5)
                  slti         a0, a4, 1030
                  sb           t0, -44(a5)
                  nop
                  sb           a7, -30(a5)
                  lbu          a2, 42(a5)
                  nop
                  lb           zero, -46(a5)
                  sra          sp, sp, a7
                  lhu          tp, -35(a5)
                  sh           s0, 17(a5)
                  xori         zero, t6, 195
                  nop
                  lbu          s9, -25(a5)
                  lbu          s9, 28(a5)
                  sltiu        a3, s9, 1232
                  lb           s1, 26(a5)
                  sb           t2, 43(a5)
                  lb           gp, -54(a5)
                  srl          t1, a4, t6
                  sb           a7, 1(a5)
                  auipc        a2, 581872
                  lbu          t2, -20(a5)
                  lb           t4, 9(a5)
                  and          a0, ra, s9
                  sub          s2, gp, s3
                  lui          ra, 936090
                  ori          s9, ra, -1854
                  srl          a3, s2, t0
                  slli         s7, a7, 10
                  lb           s10, 10(a5)
                  lbu          t4, 50(a5)
                  lb           a0, -54(a5)
                  add          s9, s6, s10
                  lh           a2, -13(a5)
                  slt          a6, s11, t1
                  lhu          t0, -15(a5)
                  sw           a6, -5(a5)
                  lhu          s8, -53(a5) #end riscv_load_store_rand_instr_stream_7
                  la           s7, region_0+328 #start riscv_load_store_rand_instr_stream_6
                  ori          t4, t6, 419
                  lb           zero, 685(s7)
                  sltu         s8, zero, a7
                  or           s2, s9, sp
                  slti         ra, a4, -169
                  nop
                  srl          t0, s7, zero
                  slti         a7, a3, 134
                  sub          a1, s3, s11
                  or           s0, s3, zero
                  lbu          a1, -173(s7)
                  add          s10, s8, s2
                  lui          s6, 142278
                  xori         a6, s8, -1841
                  lhu          sp, 1568(s7)
                  ori          a6, t5, 944
                  lbu          s11, -163(s7)
                  sub          gp, s4, t4
                  andi         t6, t1, 1256
                  sll          gp, a1, s1
                  lbu          s9, 794(s7)
                  sb           t4, 729(s7)
                  or           t3, t5, a6
                  slli         s0, s11, 18
                  srai         a7, a7, 1
                  sw           a6, 924(s7)
                  lhu          s10, 1006(s7)
                  lbu          tp, 1201(s7)
                  xori         s10, zero, -1534
                  sub          zero, s2, t5
                  sra          t3, s8, t0
                  slt          t1, a4, a6
                  xori         a3, zero, -1919
                  srl          t1, a4, sp
                  add          s10, s0, s0
                  srli         a2, s1, 14
                  andi         s6, t4, -864
                  andi         s1, t0, 594
                  lhu          s2, 2(s7)
                  sh           a6, 1400(s7)
                  add          t5, a1, t5
                  lhu          sp, -174(s7) #end riscv_load_store_rand_instr_stream_6
                  la           t3, region_1+1384 #start riscv_load_store_rand_instr_stream_5
                  and          s9, t1, tp
                  lhu          a0, 16(t3)
                  xori         t2, a4, -1419
                  andi         s4, zero, -1112
                  lb           a3, 2(t3)
                  andi         s8, a2, -1436
                  sh           a6, 6(t3)
                  sb           s4, 13(t3)
                  lbu          t1, 15(t3)
                  auipc        s4, 881905
                  sll          t6, t3, t6
                  xor          sp, s10, s0
                  lb           ra, -2(t3)
                  lbu          t1, 5(t3)
                  lhu          s11, 8(t3)
                  sb           a1, -1(t3)
                  lhu          t0, -8(t3)
                  lb           s6, 2(t3)
                  lbu          a3, 2(t3)
                  slti         a7, s8, 387
                  srai         a5, a0, 29
                  lbu          a3, -7(t3)
                  sb           a2, 2(t3)
                  or           t4, a1, s2
                  srai         s0, a4, 31
                  lh           a1, -8(t3)
                  xori         t1, t5, -506
                  lui          s9, 986560
                  lbu          tp, -13(t3)
                  sb           s3, 9(t3)
                  sw           a4, 12(t3)
                  lui          a3, 641996
                  sw           s10, -16(t3)
                  lui          a5, 255600
                  srli         t0, s10, 0
                  srai         a5, t2, 28
                  slli         s4, t3, 24
                  add          a5, s11, t4
                  sub          a6, a6, s7
                  lbu          t5, 15(t3)
                  lb           s11, 7(t3)
                  addi         sp, tp, -925
                  sb           s11, -1(t3)
                  sra          t0, a1, a7
                  sb           s7, -1(t3)
                  add          s2, a6, s0
                  sll          gp, s11, a7
                  sb           t5, -4(t3)
                  sb           t1, 14(t3)
                  addi         ra, s11, -906
                  lb           s1, 2(t3)
                  lhu          s4, 16(t3)
                  sb           s4, -5(t3)
                  lb           t6, 1(t3)
                  lbu          a7, -11(t3) #end riscv_load_store_rand_instr_stream_5
                  la           a0, region_1+788 #start riscv_load_store_rand_instr_stream_2
                  sb           a1, 13(a0)
                  auipc        s8, 501935
                  lbu          s6, -3(a0)
                  xori         a3, t0, 40
                  sb           s0, -1(a0)
                  sb           a0, -13(a0)
                  lhu          a7, -12(a0)
                  lb           s0, 13(a0)
                  lhu          gp, -8(a0)
                  slli         t5, ra, 25
                  andi         t3, a1, -881
                  sb           t5, -3(a0)
                  lh           s7, -10(a0)
                  sb           a5, -8(a0)
                  add          s2, s11, ra
                  and          a6, a0, s7
                  add          s6, a0, s3
                  lbu          s2, 9(a0)
                  lbu          a1, -15(a0)
                  sh           s11, 4(a0)
                  lui          s8, 630209
                  lui          t1, 19750
                  sb           t2, 7(a0)
                  add          t3, t0, s11
                  lb           t2, 15(a0)
                  srli         s0, sp, 11
                  andi         s4, t2, -1340
                  lhu          tp, -6(a0)
                  sb           a0, -5(a0)
                  sb           ra, 9(a0)
                  add          s4, gp, tp
                  sb           s10, 0(a0)
                  xori         ra, a7, 1726
                  lbu          s6, -7(a0)
                  and          a7, t5, t0
                  sb           s9, 12(a0)
                  ori          tp, t5, -1919
                  lh           gp, -8(a0)
                  srai         s10, a3, 3
                  lb           sp, -6(a0)
                  sra          s2, s7, t1
                  sra          s2, a2, t1
                  lbu          zero, 3(a0) #end riscv_load_store_rand_instr_stream_2
                  la           t5, region_0+245 #start riscv_load_store_rand_instr_stream_10
                  and          a6, s2, s9
                  lbu          s10, 2(t5)
                  sll          s2, s2, a2
                  sb           a6, -10(t5)
                  lbu          s6, -8(t5)
                  lui          t2, 590337
                  lbu          s10, -12(t5)
                  slt          s10, a1, s5
                  lbu          s8, -14(t5)
                  sb           t4, -14(t5)
                  lbu          t6, -6(t5)
                  sb           t0, -14(t5)
                  lbu          t4, -11(t5)
                  sltu         tp, ra, s5
                  sw           t1, -13(t5)
                  lbu          s6, -15(t5)
                  slli         t4, a7, 10
                  sb           t2, 5(t5)
                  lbu          a6, -16(t5)
                  lh           gp, -1(t5)
                  xor          zero, a7, a2
                  lw           s7, 15(t5)
                  andi         t4, a4, 479
                  lbu          s0, 15(t5)
                  sub          s8, t4, zero
                  lbu          s4, -12(t5)
                  lbu          a1, 10(t5)
                  and          t6, a5, zero
                  srai         zero, s0, 15
                  lbu          s0, 8(t5)
                  sra          t6, t6, ra
                  lbu          s8, 14(t5)
                  lhu          gp, 3(t5)
                  lbu          s0, -10(t5)
                  sh           s11, 15(t5)
                  lbu          t2, -6(t5)
                  and          sp, t5, s2
                  sub          a2, a7, a7
                  lb           t6, -10(t5)
                  sh           tp, 3(t5) #end riscv_load_store_rand_instr_stream_10
                  la           a6, region_0+1728 #start riscv_load_store_rand_instr_stream_4
                  lb           sp, 239(a6)
                  sltiu        gp, a1, -908
                  lhu          gp, -762(a6)
                  lb           s1, -168(a6)
                  sh           a5, -926(a6)
                  slli         t1, zero, 11
                  sb           sp, -242(a6)
                  sb           s5, 249(a6)
                  lb           s10, -1505(a6)
                  lbu          s11, 19(a6)
                  sb           zero, -658(a6)
                  or           s9, a7, t0
                  lbu          a3, -89(a6)
                  sh           s1, -1634(a6)
                  sll          s11, zero, s1
                  slti         a5, s11, 2023
                  lb           s7, -338(a6)
                  lh           s9, 144(a6)
                  xor          s10, a0, a4
                  addi         a3, a1, -1945
                  lbu          a1, -1345(a6)
                  srl          zero, s9, t4
                  sb           s9, -1097(a6)
                  sb           tp, 45(a6)
                  andi         s8, t6, 1671
                  xor          s0, s2, t6
                  lw           s9, -768(a6) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_0+46 #start riscv_load_store_rand_instr_stream_0
                  add          a0, a5, s5
                  nop
                  lw           t2, -10(a6)
                  auipc        gp, 542139
                  slt          s1, a2, s11
                  sub          a3, t2, tp
                  sb           s3, -11(a6)
                  sh           a5, -4(a6)
                  sb           s4, 5(a6)
                  addi         t5, s2, -1074
                  srai         s7, a7, 23
                  lhu          s1, 14(a6)
                  srli         a3, a1, 22
                  sltiu        a0, s1, -602
                  sb           tp, -13(a6)
                  nop
                  add          t4, s0, a0
                  lbu          gp, 15(a6)
                  sltiu        t0, s9, -1602
                  addi         t0, s10, 1432
                  ori          sp, t6, 849
                  add          s11, a2, a5
                  lbu          t1, -4(a6)
                  lb           s7, 16(a6)
                  sltiu        tp, s0, -210
                  xori         s6, tp, 1484
                  lbu          t1, -9(a6)
                  lw           ra, 2(a6)
                  addi         s8, sp, 532
                  nop
                  sh           a3, -14(a6)
                  add          s4, zero, zero
                  auipc        t1, 677962
                  slti         s4, a4, -878
                  sll          tp, s2, s0
                  auipc        a2, 479281
                  lbu          a1, 1(a6)
                  lb           s1, 7(a6)
                  lw           s9, 2(a6)
                  srl          t3, a0, t3
                  lbu          a0, -8(a6) #end riscv_load_store_rand_instr_stream_0
                  addi         t4, s4, 205
                  srai         sp, a1, 18
                  lui          a7, 269360
                  sltiu        s9, a7, 1454
                  addi         tp, t0, 86
                  slli         a6, t3, 29
                  nop
                  addi         s7, s7, 1356
                  sra          a0, s2, t4
                  sll          s11, t3, a1
                  xor          a5, t0, s1
                  blt          s8, s1, 24f
                  srl          a5, t3, s3
                  and          s11, t1, a5
                  sll          tp, s7, t5
                  bge          sp, s9, 29f
                  sra          tp, a4, s11
                  bltu         gp, a7, 30f
                  sub          s8, s6, t0
                  xor          tp, a0, gp
                  sll          a6, a3, s0
                  bne          t3, s0, 27f
                  sltu         tp, ra, a6
                  slt          t4, t6, tp
24:               xori         s7, a3, 1801
                  sll          t5, a7, s7
                  srl          s2, a6, s11
27:               xor          t5, s6, s11
                  srli         a3, a0, 22
29:               slli         ra, a7, 14
30:               sll          sp, t4, a6
                  lui          t6, 992582
                  xori         t3, s9, -730
                  and          gp, a6, a7
                  beq          s10, s8, 35f
35:               srli         t0, t1, 2
                  and          a0, sp, a5
                  ori          a5, a2, 1141
                  xori         t5, s0, -1001
                  bne          t0, s2, 56f
                  srli         t3, t1, 13
                  bne          a6, s0, 57f
                  srli         a0, a0, 17
                  sra          t4, s4, s0
                  add          a5, a4, a6
                  ori          t5, ra, 413
                  bgeu         s0, s7, 54f
                  bltu         sp, a1, 65f
                  sra          s4, a1, s11
                  slti         a0, sp, 1885
                  bge          zero, a2, 57f
                  ori          t2, t0, -843
                  xor          s8, a0, t3
                  auipc        a3, 63926
54:               sltu         s4, a6, a6
                  sub          t0, zero, tp
56:               sltu         a2, a2, ra
57:               bgeu         t3, t2, 58f
58:               auipc        t3, 862110
                  sll          s11, a4, t4
                  blt          s6, a7, 65f
                  auipc        t2, 482172
                  srl          s2, s10, s9
                  or           t5, a0, s4
                  ori          t4, t0, 1295
65:               srli         t1, s8, 18
                  bge          a1, s0, 86f
                  bgeu         s3, t1, 70f
                  srai         t3, gp, 26
                  bge          sp, s3, 75f
70:               bne          s10, sp, 77f
                  slt          s1, t6, t0
                  slti         s7, zero, 1116
                  sltu         a1, a5, s11
                  bne          t1, tp, 90f
75:               sltiu        s10, t5, -100
                  sra          t4, a2, s8
77:               bge          t5, s7, 93f
                  sra          t4, s5, a7
                  andi         t0, t6, -299
                  sra          a0, ra, t3
                  addi         tp, s5, 712
                  srai         a1, sp, 27
                  srli         t3, a0, 23
                  add          s6, t0, s7
                  add          t1, t4, gp
86:               sltu         t5, s6, a5
                  bltu         a1, t6, 106f
                  bgeu         a4, t0, 90f
                  xori         a7, t2, -854
90:               blt          s8, s10, 103f
                  slti         sp, tp, 526
                  sll          s0, s8, s10
93:               sll          t0, t0, s3
                  sll          t0, s7, s9
                  sltu         s7, a7, a0
                  sub          s11, a6, s4
                  and          s7, t2, a2
                  nop
                  srl          sp, sp, s8
                  addi         gp, t5, 676
                  ori          t1, a7, -311
                  slti         t1, t5, 183
103:              sra          tp, s5, s7
                  sll          gp, a6, a5
                  slti         ra, s3, 398
106:              slli         t3, sp, 2
                  bne          s7, a2, 126f
                  slt          a1, a0, zero
                  bne          t4, a7, 113f
                  bgeu         s4, t0, 126f
                  lui          a1, 384716
                  bne          s10, tp, 120f
113:              sltiu        a2, t1, 1183
                  srli         a1, sp, 10
                  bge          s10, t0, 126f
                  sra          s6, s10, a2
                  bltu         zero, s7, 124f
                  beq          a5, s6, 138f
                  sra          s4, s0, s11
120:              bne          sp, s10, 131f
                  sltiu        t4, zero, 1664
                  sll          s8, s6, s4
                  sub          gp, a4, a1
124:              addi         a1, a7, -591
                  blt          a2, a3, 137f
126:              sub          s4, s4, gp
                  bltu         s7, s3, 144f
                  sll          s8, s5, a3
                  sub          s2, t0, sp
                  srai         sp, ra, 17
131:              andi         a3, a5, 903
                  andi         s11, t2, 258
                  slti         t5, s0, -490
                  sltiu        t6, s7, 2028
                  auipc        a6, 855700
                  blt          tp, a1, 141f
137:              and          s4, s8, s3
138:              xor          s0, s5, s6
                  xori         ra, s11, -864
                  xor          s2, gp, a3
141:              andi         tp, s6, -903
                  ori          a1, s5, -406
                  or           t6, a3, a7
144:              xor          a0, gp, gp
                  ori          a6, s9, -1989
                  or           a3, a2, a7
                  ori          a3, a0, 467
                  lui          s2, 149631
                  blt          sp, a7, 151f
                  srli         s2, a0, 13
151:              auipc        a1, 811720
                  sub          s10, s3, t6
                  sll          s9, s10, t3
                  and          s0, a2, s3
                  bgeu         s6, s8, 175f
                  addi         a3, zero, 946
                  srli         s1, s4, 6
                  slt          t6, s6, a3
                  or           a0, t0, t1
                  slti         a3, zero, 440
                  lui          a6, 798675
                  bge          a5, a2, 174f
                  addi         t3, a6, 598
                  addi         s0, tp, -249
                  slt          t5, gp, s6
                  lui          zero, 798873
                  sltiu        a7, gp, -671
                  and          a0, t2, t2
                  sra          t4, sp, ra
                  andi         a0, s6, 591
                  or           s4, t2, s4
                  xori         s9, t0, -746
                  andi         s7, s11, -660
174:              addi         s11, a3, -1577
175:              bltu         a2, a1, 182f
                  srl          tp, a0, a4
                  bltu         t1, zero, 184f
                  slt          s9, t2, s8
                  bgeu         sp, a6, 195f
                  and          ra, t4, s11
                  or           s8, s2, s6
182:              srl          t3, a7, s11
                  add          a7, t1, s6
184:              lui          zero, 120301
                  lui          s4, 591073
                  bltu         s5, s10, 202f
                  beq          a6, s9, 190f
                  bgeu         t0, a2, 207f
                  xor          sp, s3, a7
190:              blt          s1, zero, 203f
                  sltu         t2, s1, s4
                  bge          a6, s7, 206f
                  add          a7, t3, t1
                  addi         s1, ra, -437
195:              add          a2, s3, s1
                  beq          a6, s2, 200f
                  sltiu        s2, a6, 1662
                  sll          s10, a0, a3
                  sltiu        s9, t4, 481
200:              add          zero, ra, s10
                  sub          a7, t3, ra
202:              ori          a2, sp, 2014
203:              nop
                  beq          s2, s1, 205f
205:              xori         a1, a3, 514
206:              beq          s8, s6, 207f
207:              sltu         s8, s8, s1
                  ori          s6, sp, -1026
                  ori          t6, s10, 189
                  sll          zero, sp, a5
                  sltiu        s1, a3, -473
                  beq          a5, a5, 220f
                  sll          a1, t1, ra
                  auipc        s9, 294434
                  slt          s8, s2, ra
                  bge          s1, t3, 227f
                  addi         s1, t0, 231
                  xori         a0, a7, 92
                  slli         s10, zero, 25
220:              sltu         a1, s7, t1
                  beq          t3, s11, 234f
                  bne          s3, s6, 233f
                  sltiu        t1, s3, -1740
                  bne          a6, a6, 231f
                  ori          a7, s5, -33
                  xori         t3, s7, -1202
227:              andi         t3, s3, 1521
                  sra          s7, a0, s4
                  nop
                  ori          s1, zero, -383
231:              srl          a2, s10, s9
                  xori         tp, s0, -1106
233:              slt          t5, tp, zero
234:              sub          t2, s4, s10
                  andi         t5, tp, 1388
                  xori         tp, t1, 1834
                  sub          a5, t1, s2
                  and          a1, t0, a2
                  lui          t1, 255856
                  sltu         s4, t0, s5
                  xor          t5, a0, s10
                  sll          t3, tp, s2
                  srl          zero, t1, a4
                  sltiu        ra, sp, -1331
                  andi         s1, a2, -697
                  ori          a6, t5, 1645
                  andi         zero, s1, 1609
                  ori          t1, a4, 1350
                  bge          a3, t3, 269f
                  ori          s6, a1, 778
                  sltu         s6, t5, s9
                  srli         s11, sp, 30
                  sltiu        t0, s7, -1133
                  xori         s8, tp, -119
                  lui          t1, 658097
                  sltiu        s6, s5, 567
                  addi         t5, s1, -1690
                  bge          t3, a4, 274f
                  addi         a5, a0, 1225
                  sltiu        a5, s0, -718
                  ori          s6, t3, -350
                  sltiu        a6, a1, -1745
                  bge          s8, a6, 269f
                  lui          s11, 225730
                  and          a1, s9, sp
                  blt          s6, s4, 285f
                  nop
                  srli         s7, t1, 17
269:              slt          s0, a7, a3
                  bne          t1, gp, 276f
                  xori         t5, tp, 1161
                  ori          t3, t1, 658
                  xor          s0, s8, s10
274:              srl          t4, s8, zero
                  andi         s1, zero, 750
276:              sltu         a1, s10, s3
                  auipc        t3, 967368
                  sltu         gp, t2, t4
                  bge          t5, sp, 295f
                  or           t0, s2, s4
                  blt          t0, s0, 289f
                  srli         a7, s8, 7
                  blt          gp, t3, 296f
                  xori         t3, s2, -1033
285:              xori         a5, s10, -374
                  sra          tp, a3, s1
                  xor          s11, s3, a6
                  blt          a5, a2, 306f
289:              slli         a0, s2, 28
                  sltu         t4, s9, a0
                  xor          s1, s7, a1
                  nop
                  andi         t5, s8, -1152
                  bgeu         gp, a4, 307f
295:              addi         s11, t1, 1347
296:              sub          s7, t6, a0
                  bge          s8, sp, 308f
                  bgeu         a2, a2, 315f
                  xor          s2, a7, sp
                  add          a0, a5, s10
                  srl          t4, a3, s0
                  lui          a6, 573588
                  beq          a2, s0, 322f
                  nop
                  slt          a1, a5, a1
306:              auipc        t0, 904362
307:              sltu         a2, s9, s6
308:              auipc        a6, 559438
                  ori          t1, s7, -1232
                  slli         a3, s4, 15
                  nop
                  sltu         s10, a0, t5
                  ori          sp, s2, 245
                  add          s11, t5, a4
315:              addi         s0, a3, 1671
                  xori         t2, a0, 1436
                  andi         a5, a2, 1269
                  sub          a5, s5, ra
                  sub          t2, s0, sp
                  srai         t4, a4, 13
                  sltu         a5, s1, t1
322:              bge          a1, s8, 325f
                  and          s4, s11, ra
                  blt          t5, s10, 335f
325:              srli         t0, s6, 27
                  srli         a1, s7, 13
                  addi         s4, a1, 1960
                  lui          s0, 936982
                  slti         a2, ra, 1400
                  sub          a7, a5, a4
                  slt          t4, s8, tp
                  bltu         t5, s1, 351f
                  sltiu        t2, a1, 152
                  slt          tp, s2, ra
335:              beq          s8, s5, 348f
                  xor          zero, t5, t0
                  nop
                  beq          gp, s9, 350f
                  sll          s9, s2, sp
                  or           a1, s4, a6
                  xor          t2, s4, s0
                  sll          s1, s8, t0
                  lui          a3, 494229
                  add          a5, a0, t4
                  xori         s7, a1, 294
                  ori          a2, s9, 101
                  bgeu         gp, s8, 355f
348:              or           sp, a0, s7
                  srai         a2, s0, 11
350:              sltiu        a0, s1, -1012
351:              add          s9, a5, a5
                  ori          tp, s3, -476
                  lui          gp, 220225
                  nop
355:              srai         a7, t6, 2
                  slt          t1, s10, a7
                  srli         gp, s8, 6
                  slli         t0, s9, 3
                  nop
                  sltiu        a5, s1, -1121
                  slti         a3, t1, -1279
                  sll          a2, s5, s7
                  bne          a7, a6, 364f
364:              bne          s6, a1, 377f
                  add          ra, a7, a1
                  add          s10, s6, a7
                  andi         a7, t0, 1602
                  slli         t3, t6, 27
                  bne          s10, sp, 370f
370:              blt          a2, sp, 377f
                  auipc        gp, 150320
                  add          s11, a3, ra
                  bgeu         s10, sp, 379f
                  bgeu         a4, t1, 381f
                  ori          s7, sp, 1560
                  sltiu        a6, a3, -835
377:              and          s6, zero, t2
                  srai         s1, t2, 22
379:              bltu         a5, t2, 383f
                  srai         ra, s10, 29
381:              xor          a6, a6, s6
                  sub          s1, a7, t0
383:              or           s6, s1, a2
                  blt          a0, a0, 400f
                  and          a6, s6, t5
                  bltu         t6, t0, 406f
                  slti         t1, s5, -1221
                  srai         s0, t2, 31
                  sub          gp, s4, a1
                  srl          t6, a0, t3
                  bge          s0, s0, 397f
                  bne          t2, t3, 394f
                  sltu         t1, s6, s6
394:              add          t0, s10, t3
                  add          t0, s8, a4
                  srl          s6, sp, zero
397:              lui          t6, 988360
                  slt          sp, a5, s0
                  sra          zero, a2, s1
400:              bgeu         s8, t6, 420f
                  slli         a0, s8, 15
                  slli         gp, t6, 26
                  beq          a6, s1, 417f
                  auipc        s9, 481681
                  xori         a7, t4, -267
406:              lui          a6, 91441
                  xori         a0, t6, -110
                  auipc        t6, 38570
                  sltiu        s10, t1, -1559
                  or           t1, a4, s1
                  and          s4, s0, sp
                  sltu         s10, t5, s3
                  srl          s2, s3, s9
                  slti         tp, s8, -1483
                  and          zero, s11, a0
                  sltu         s10, t0, s8
417:              srli         s7, s1, 7
                  andi         t4, s6, 1418
                  lui          gp, 944023
420:              slti         zero, t1, -69
                  nop
                  addi         t0, gp, -1297
                  ori          t6, s3, 1215
                  and          a0, a0, s5
                  lui          s6, 223364
                  bge          a2, a4, 442f
                  srli         a0, s8, 15
                  beq          a3, sp, 444f
                  srai         t6, s11, 26
                  bne          s7, sp, 446f
                  slt          a5, s11, s7
                  srli         s1, gp, 1
                  sll          gp, t5, s3
                  srl          t5, s6, a4
                  bge          s1, a6, 443f
                  ori          t5, s0, 1496
                  andi         t1, s7, -891
                  xori         sp, a0, 492
                  slli         sp, t4, 4
                  addi         a0, s7, 494
                  bge          s8, s2, 448f
442:              bne          zero, a4, 447f
443:              or           a3, t1, s2
444:              slli         s9, t6, 31
                  addi         s7, s11, -553
446:              slti         ra, s0, -798
447:              lui          s7, 478855
448:              addi         s10, s2, 1145
                  sll          s11, s4, s5
                  srli         t4, a3, 13
                  srl          s6, s9, a2
                  auipc        s10, 800857
                  srl          s11, t6, s2
                  slti         t0, a4, 131
                  slt          s10, s10, a2
                  and          t6, gp, t6
                  bne          t2, sp, 475f
                  bltu         ra, tp, 466f
                  srl          a6, tp, t5
                  andi         t3, sp, 43
                  auipc        a7, 507746
                  bne          s0, s0, 463f
463:              auipc        sp, 336668
                  ori          a1, a7, 7
                  and          t0, s2, a6
466:              or           s6, a5, sp
                  bge          t6, s7, 469f
                  bgeu         t6, t1, 476f
469:              or           s7, zero, s10
                  sub          a5, s0, a2
                  addi         s2, zero, 364
                  sub          s7, s1, t0
                  bge          a3, t1, 487f
                  auipc        a3, 462929
475:              add          ra, ra, s4
476:              srl          a6, t1, s10
                  addi         t4, s9, 1489
                  beq          s11, t2, 498f
                  bge          gp, t2, 498f
                  bltu         t5, s10, 493f
                  lui          s10, 878243
                  sltu         s2, zero, a1
                  and          sp, s6, sp
                  sltu         s8, s11, a0
                  bne          s2, sp, 498f
                  bge          s5, s2, 492f
487:              nop
                  slti         s2, a3, -1236
                  slt          a7, t5, s11
                  srli         a7, t4, 19
                  sltiu        zero, a4, 1954
492:              nop
493:              ori          t0, ra, -1854
                  blt          t0, t1, 497f
                  bne          s5, a3, 506f
                  sll          s10, t5, s1
497:              slti         t5, t4, 1905
498:              slti         s6, s5, -450
                  bge          a5, s9, 519f
                  srai         s4, t6, 12
                  and          sp, a6, a5
                  andi         s0, s8, 344
                  add          tp, a2, s0
                  bltu         a5, s11, 510f
                  addi         a7, t0, 86
506:              auipc        t3, 290926
                  xori         s11, a3, 584
                  slt          t1, t3, a1
                  auipc        t6, 684974
510:              sra          s9, s5, s1
                  xori         a5, ra, -1141
                  srli         a6, tp, 21
                  bltu         ra, t5, 530f
                  sra          s1, s2, t1
                  lui          s10, 358187
                  xori         s2, t4, -1383
                  xor          ra, s4, t6
                  blt          sp, t4, 525f
519:              andi         tp, s7, -665
                  addi         t6, s11, 669
                  and          s4, a3, a4
                  bgeu         s10, a5, 538f
                  addi         s11, s0, 1812
                  ori          a2, t1, -1214
525:              or           s1, t4, a7
                  xor          s10, s2, a6
                  xori         t1, sp, -1591
                  sltiu        s1, t5, -67
                  srai         s11, s3, 23
530:              sltu         a3, s6, s0
                  bge          t1, gp, 547f
                  andi         s7, s7, -1685
                  slti         t2, s7, 319
                  slt          t5, s4, s9
                  nop
                  addi         t4, a7, 302
                  sltu         s6, a1, s3
538:              bgeu         gp, t5, 539f
539:              add          ra, t6, s6
                  slli         tp, a2, 21
                  sra          s4, s9, t3
                  bltu         zero, sp, 549f
                  auipc        a6, 404098
                  srai         a7, t2, 28
                  bne          s1, a4, 552f
                  blt          t2, s11, 565f
547:              xori         s6, ra, -760
                  bge          gp, t3, 559f
549:              xor          s4, s8, s10
                  ori          tp, a6, -30
                  srai         s11, a4, 8
552:              and          t5, s10, a2
                  ori          s1, s7, -2047
                  sll          s10, t3, s3
                  sltiu        t2, ra, 54
                  sub          s1, a4, gp
                  slti         s8, t0, 765
                  or           t5, t4, s10
559:              srli         t0, s10, 13
                  ori          s9, s8, -571
                  ori          ra, s0, 219
                  bgeu         t5, tp, 578f
                  or           sp, a4, tp
                  nop
565:              sll          t6, s11, gp
                  xori         a2, zero, 691
                  and          s11, t1, s0
                  andi         tp, t0, 1744
                  slt          gp, a3, t4
                  srai         s8, a3, 1
                  bltu         s11, s4, 575f
                  xori         s6, a5, 537
                  xori         a6, s0, -827
                  sub          s10, a6, s11
575:              nop
                  bge          s9, a4, 592f
                  andi         s7, s5, -952
578:              sltiu        s4, s1, -122
                  beq          a0, a4, 591f
                  sll          t5, s9, t3
                  bgeu         t5, t4, 594f
                  ori          s0, zero, -1161
                  bge          s1, s2, 601f
                  xor          tp, t6, a0
                  blt          a2, t3, 590f
                  sltu         a0, s11, a5
                  nop
                  addi         t0, t3, 116
                  sra          a2, gp, s8
590:              beq          s3, a3, 591f
591:              nop
592:              bltu         t1, a0, 603f
                  addi         a7, a4, 1764
594:              lui          s11, 851299
                  xor          a1, s7, a5
                  bgeu         a4, s1, 599f
                  srl          s6, ra, t0
                  and          s10, s7, s1
599:              srl          a1, s0, a0
                  bne          s11, t4, 613f
601:              and          zero, gp, s9
                  srl          gp, s0, a7
603:              srli         s0, s7, 1
                  bgeu         s2, s4, 610f
                  andi         s1, a7, -1312
                  sll          ra, s7, s10
                  addi         s7, a4, 1270
                  blt          tp, gp, 627f
                  srli         s6, s3, 31
610:              bltu         sp, s6, 612f
                  bgeu         tp, s3, 627f
612:              sub          zero, gp, a2
613:              andi         t3, s3, -87
                  slli         t6, s10, 15
                  srli         t2, s5, 1
                  sll          a0, s11, tp
                  sra          a2, a3, s0
                  ori          t0, s8, 297
                  addi         a2, tp, 1184
                  sll          zero, s2, tp
                  lui          a1, 724396
                  bge          s8, a2, 630f
                  blt          t0, a6, 624f
624:              slli         zero, s1, 20
                  or           a2, t5, zero
                  bge          sp, s4, 646f
627:              ori          s9, a2, 1711
                  nop
                  sub          s6, s0, sp
630:              ori          t6, s2, 221
                  blt          s2, t5, 645f
                  bge          zero, s4, 644f
                  lui          t5, 926171
                  sub          t6, s5, s6
                  sll          s2, s3, ra
                  slli         a2, a7, 22
                  xori         a7, s3, 582
                  ori          gp, a0, 974
                  bge          s4, s5, 646f
                  add          ra, t2, t5
                  ori          a5, s3, -1724
                  sub          a5, s10, t6
                  blt          a2, s6, 659f
644:              or           a0, s10, s9
645:              blt          s0, s5, 661f
646:              sub          s11, s6, a4
                  slli         s0, t2, 20
                  beq          sp, gp, 654f
                  and          t1, a6, s6
                  slti         a0, a5, -918
                  bne          a6, s1, 655f
                  xori         s4, zero, -881
                  slli         a3, a0, 26
654:              xori         zero, t6, 1720
655:              srl          sp, s4, a4
                  sltiu        s7, s10, -2009
                  bge          a3, t2, 670f
                  slt          s11, s5, t3
659:              blt          a4, t0, 678f
                  sltu         s4, gp, a4
661:              sll          a7, s5, a0
                  srli         a3, t2, 27
                  blt          zero, zero, 674f
                  sll          s7, t5, s4
                  srl          ra, a2, a3
                  xor          a2, s1, a3
                  sltiu        a5, gp, -924
                  nop
                  addi         t2, t0, -1320
670:              ori          t0, s0, 1223
                  slti         s11, a7, 1348
                  addi         tp, s0, -495
                  lui          t6, 1038992
674:              sll          s10, s10, s7
                  srli         a0, t0, 23
                  sra          s8, a4, t6
                  sltu         t6, t1, a7
678:              slti         t1, s4, -165
                  sub          s10, s4, s11
                  bne          s6, t4, 696f
                  xori         zero, t2, 1916
                  bltu         a3, a6, 700f
                  sltiu        t0, t3, -840
                  bgeu         s5, s6, 701f
                  srai         t4, sp, 15
                  sub          s9, a0, s5
                  or           a7, a7, a3
                  addi         s4, a2, 1081
                  nop
                  and          a7, zero, t4
                  slti         gp, t6, 370
                  nop
                  srli         s9, t0, 23
                  beq          s7, zero, 707f
                  andi         t4, s10, 1170
696:              slt          s8, a5, t6
                  nop
                  srai         t3, a5, 22
                  sra          a1, s4, s6
700:              sub          s11, t4, tp
701:              bne          tp, s5, 706f
                  add          t6, t6, s11
                  nop
                  beq          zero, t5, 711f
                  nop
706:              srai         sp, a3, 10
707:              bne          a1, gp, 727f
                  auipc        a7, 312151
                  ori          t4, t4, -806
                  srli         s8, t0, 14
711:              srl          s2, s4, ra
                  srli         s9, a1, 23
                  ori          s10, t0, -1608
                  sltiu        s4, a5, 685
                  bne          a5, ra, 723f
                  sub          s8, a2, s4
                  srl          s11, t2, ra
                  beq          tp, a0, 725f
                  and          t6, s0, a1
                  slti         t2, a7, -629
                  srl          s2, s7, s7
                  bge          t4, s11, 734f
723:              slti         zero, a2, -1188
                  slt          s8, a5, t3
725:              sltiu        t2, a3, 1976
                  sltu         t0, s6, s6
727:              auipc        t4, 993742
                  slti         t1, s10, 1365
                  sltiu        ra, ra, -57
                  add          t4, zero, t4
                  sra          s1, s9, a5
                  srai         zero, s11, 11
                  xori         a0, sp, -1745
734:              sub          s0, sp, s0
                  sub          t1, t5, tp
                  bgeu         a5, a3, 752f
                  bltu         s10, s7, 748f
                  ori          zero, a4, -1040
                  xor          s1, ra, a7
                  sltu         a5, a1, s3
                  bge          s4, a1, 742f
742:              ori          a3, t2, 328
                  nop
                  srli         s6, a3, 5
                  slli         gp, gp, 30
                  sub          a1, t6, a3
                  bltu         s3, s0, 751f
748:              sra          tp, s7, zero
                  xori         s10, t0, 1000
                  xor          a2, t5, s3
751:              sra          a3, a5, s6
752:              auipc        a2, 33699
                  bltu         a2, s9, 761f
                  auipc        t2, 511487
                  addi         a3, t1, -884
                  slti         t4, gp, 1255
                  srli         a7, t6, 30
                  bne          a7, s9, 765f
                  sltu         gp, s8, t0
                  slt          gp, s7, a7
761:              sll          s2, s3, t3
                  or           a0, gp, s2
                  blt          sp, s6, 779f
                  sltu         gp, t3, s4
765:              sltiu        a0, t6, 1072
                  sll          s7, a3, sp
                  slt          tp, a5, t5
                  beq          gp, t6, 784f
                  xori         s10, t2, -182
                  slt          t6, a7, t2
                  slli         s6, a3, 1
                  sub          s0, a7, gp
                  or           a6, s10, t3
                  sltu         s9, t4, a5
                  sltu         a1, zero, s11
                  nop
                  srai         s7, a5, 25
                  andi         t3, tp, -219
779:              sltiu        gp, a7, -574
                  bltu         t3, zero, 793f
                  bgeu         tp, s2, 794f
                  xori         a3, a1, 1344
                  xori         a6, a5, 1922
784:              slt          s11, a2, s6
                  bltu         a3, a0, 792f
                  addi         s11, s2, -222
                  nop
                  slli         t1, t3, 16
                  sltu         t5, a5, t0
                  sltiu        s0, s2, 1886
                  srai         a7, a2, 31
792:              slli         a2, s3, 10
793:              slli         s7, tp, 4
794:              or           s10, a2, t2
                  sltu         s2, s8, s7
                  lui          ra, 580975
                  blt          t3, s11, 815f
                  srli         a1, a1, 23
                  sub          a0, a4, t1
                  nop
                  bltu         s8, a0, 817f
                  addi         sp, sp, -102
                  slli         a6, a0, 24
                  bge          t0, a4, 824f
                  bge          a6, t5, 807f
                  xori         t6, t4, 462
807:              bne          t5, t0, 824f
                  and          gp, zero, s0
                  sll          s10, t3, t3
                  or           s10, t1, gp
                  sltu         t0, t3, a1
                  sra          t0, zero, t3
                  auipc        s8, 542938
                  bne          s4, zero, 819f
815:              and          s4, s5, a1
                  beq          a6, t2, 827f
817:              addi         s0, t3, 920
                  xor          t6, s5, s8
819:              or           zero, s8, a0
                  srli         s11, s11, 14
                  slt          t1, gp, a1
                  sra          a3, a7, s7
                  blt          s8, a4, 829f
824:              sra          a7, s11, s0
                  ori          s4, a1, 1244
                  bgeu         s3, sp, 846f
827:              bgeu         t0, s3, 840f
                  srl          s10, t0, s11
829:              srli         a7, t5, 16
                  lui          a5, 185021
                  la           sp, region_1+1340 #start riscv_load_store_rand_instr_stream_3
                  auipc        zero, 964650
                  lhu          s9, -6(sp)
                  lw           zero, -8(sp)
                  slt          t5, a6, a4
                  lh           t1, 10(sp)
                  lbu          a3, -9(sp)
                  srli         a2, tp, 19
                  addi         t1, s6, -1832
                  sb           s7, -16(sp)
                  lb           a1, -11(sp)
                  sh           s1, 12(sp)
                  sh           s7, -10(sp)
                  lb           s8, 7(sp)
                  srl          ra, a1, a1
                  lb           t0, -4(sp)
                  sh           s8, -6(sp)
                  sh           t3, -10(sp)
                  lbu          s10, -15(sp)
                  sltiu        a3, t0, 581
                  xori         s10, a2, 1871
                  srai         s10, s3, 10
                  sub          a1, t2, t5
                  lbu          s4, 3(sp)
                  sh           sp, 6(sp)
                  lhu          s7, 6(sp)
                  lhu          s8, 2(sp)
                  lbu          a1, 3(sp)
                  sltu         a3, s1, ra
                  lb           a6, 15(sp) #end riscv_load_store_rand_instr_stream_3
                  or           ra, s3, s0
                  addi         s4, s3, 2004
                  slt          s6, a7, s2
                  auipc        zero, 269315
                  sra          tp, tp, zero
                  srai         t2, s3, 6
                  nop
                  bge          s3, s9, 857f
                  bgeu         t1, gp, 846f
840:              or           t2, a3, s6
                  ori          t5, t5, 1191
                  lui          s6, 302864
                  and          t2, a2, t1
                  sltu         a7, t6, t0
                  beq          a5, a1, 853f
846:              bltu         a2, sp, 865f
                  blt          sp, s2, 848f
848:              bne          s10, s10, 862f
                  slti         ra, a2, -1725
                  xori         a7, s4, -1438
                  bltu         a7, s4, 854f
                  sltiu        s10, s11, 584
853:              sll          s9, s4, s2
854:              ori          t2, a4, -66
                  or           a7, s7, a5
                  bgeu         tp, t6, 862f
857:              auipc        t5, 450644
                  blt          t4, s0, 864f
                  add          a5, a1, zero
                  nop
                  slt          t0, ra, a2
862:              srli         t1, a7, 29
                  xori         a2, s5, -1192
864:              and          s4, t1, s4
865:              slti         sp, s8, 98
                  xori         a0, t3, -1419
                  sra          s4, t2, s0
                  slli         s10, s2, 18
                  xori         a2, a2, 443
                  add          a2, t6, s6
                  sltu         ra, a7, sp
                  sll          a0, sp, s2
                  srli         sp, s11, 21
                  bne          t2, a1, 894f
                  bgeu         s10, t6, 878f
                  bltu         t4, s4, 889f
                  auipc        s7, 626165
878:              and          t2, s3, a7
                  srl          s8, a2, s11
                  bltu         ra, s9, 886f
                  slti         s8, s8, -1021
                  srl          a7, s4, a5
                  add          t0, t3, zero
                  blt          s11, sp, 888f
                  and          s8, t5, s3
886:              bltu         t4, t5, 887f
887:              srai         t5, t6, 31
888:              addi         ra, tp, 1258
889:              slti         a6, a2, -67
                  bltu         s7, a7, 907f
                  auipc        a6, 1018024
                  slt          gp, a5, ra
                  sub          s4, a1, t0
894:              srli         sp, ra, 4
                  xor          sp, t3, t1
                  sltu         s8, zero, a2
                  bne          a0, a0, 910f
                  slt          t4, s0, s4
                  xori         t3, s5, -896
                  bgeu         s9, a0, 920f
                  sub          s1, s6, s4
                  xor          s4, t6, zero
                  srl          a1, a0, t5
                  slt          s9, s1, t5
                  andi         s0, a5, 529
                  xori         a1, s11, 855
907:              and          a2, a4, a1
                  sll          gp, s4, s4
                  srl          s4, tp, s10
910:              auipc        t4, 987072
                  sltu         t0, s2, s10
                  bgeu         ra, gp, 914f
                  slti         a6, a6, 707
914:              srai         ra, s5, 4
                  add          s6, s10, t4
                  srli         a5, s5, 6
                  xor          t1, gp, s7
                  bgeu         a2, tp, 925f
                  ori          a3, sp, 835
920:              srli         s11, s7, 6
                  andi         t6, tp, -1910
                  bltu         t1, s9, 929f
                  srl          s7, ra, t2
                  bltu         t6, s7, 932f
925:              and          a7, s1, s2
                  xor          t0, t3, a4
                  add          t3, s3, a7
                  bltu         s7, s2, 944f
929:              auipc        s1, 640897
                  bne          s6, t6, 948f
                  auipc        t4, 703818
932:              slt          a0, a0, t1
                  lui          a5, 841469
                  sub          s6, s1, a0
                  bne          s0, s1, 947f
                  sltiu        a6, t6, -511
                  nop
                  sub          s4, a2, t4
                  bgeu         s6, s9, 950f
                  srai         s7, a2, 3
                  sltu         s0, s4, a3
                  sra          t5, s9, t3
                  slt          s4, ra, s11
944:              slti         s8, s0, -1639
                  lui          a3, 933818
                  sub          zero, tp, s5
947:              xori         t0, a4, 948
948:              auipc        a6, 735594
                  srl          t4, s11, s9
950:              sltu         a1, a3, a0
                  and          a2, a5, t2
                  and          t3, s11, s2
                  sltiu        a7, s9, 1012
                  slli         a3, a6, 1
                  xori         a2, tp, 3
                  beq          a3, s11, 967f
                  and          s8, s9, a6
                  xor          t1, a6, s11
                  lui          zero, 982544
                  sra          s6, s6, s5
                  auipc        t4, 254968
                  sll          a5, t2, s9
                  bgeu         t1, a6, 964f
964:              xor          a2, t6, t0
                  slti         s9, t0, -769
                  sra          s8, t5, t1
967:              beq          t1, s11, 983f
                  ori          a5, a0, -1743
                  sll          t5, s6, s3
                  beq          s5, a4, 978f
                  beq          a4, s11, 984f
                  srli         a0, a3, 14
                  slli         s10, a6, 25
                  andi         ra, s6, -393
                  blt          s1, a2, 991f
                  bgeu         t5, s5, 990f
                  srl          a5, s8, ra
978:              srli         s9, t2, 28
                  xor          a0, ra, t2
                  ori          s8, s9, 611
                  srli         a1, a6, 13
                  or           s1, s4, s7
983:              bltu         s0, s11, 1002f
984:              nop
                  or           zero, s0, s9
                  auipc        s0, 857701
                  auipc        t1, 857536
                  slt          s7, t2, s6
                  sub          a2, a5, s7
990:              lui          gp, 742633
991:              srli         t5, tp, 22
                  bge          t6, sp, 997f
                  slt          zero, t6, zero
                  add          s7, s3, tp
                  and          s7, a3, a2
                  ori          gp, t1, -963
997:              and          a3, a0, s7
                  auipc        tp, 251309
                  and          t0, a1, a1
                  srl          s9, t2, t6
                  srl          a0, t5, ra
1002:             bltu         a6, a3, 1021f
                  or           s10, sp, zero
                  ori          t1, t6, 1413
                  or           t1, s10, t4
                  sltu         t1, a7, s6
                  slti         zero, t1, -1990
                  add          s10, a2, t2
                  auipc        t4, 77463
                  bne          t5, t3, 1026f
                  slti         sp, a3, -139
                  sll          t0, a7, a1
                  bgeu         a0, a0, 1020f
                  srai         t2, zero, 18
                  sll          s7, a3, s2
                  sra          a3, s8, tp
                  nop
                  sra          s11, a4, t1
                  srl          a2, a5, t2
1020:             beq          s8, t2, 1025f
1021:             and          a6, gp, s6
                  slti         t1, a1, 692
                  auipc        s6, 525208
                  slt          t3, t6, s1
1025:             sll          t1, gp, a6
1026:             andi         s1, a0, -1413
                  auipc        s11, 612538
                  srl          t1, zero, s6
                  srli         t2, s7, 5
                  bgeu         s2, t0, 1047f
                  addi         tp, tp, 1376
                  xor          tp, t4, t2
                  srai         gp, ra, 14
                  slt          t4, a6, ra
                  bge          s4, ra, 1054f
                  srli         a3, ra, 19
                  bne          t1, a7, 1056f
                  bne          s10, a2, 1051f
                  blt          a3, s9, 1046f
                  slli         a6, s7, 7
                  srai         t6, s11, 31
                  nop
                  srli         a0, s5, 12
                  sltu         a6, s11, a4
                  blt          s5, t4, 1051f
1046:             bge          t1, s0, 1048f
1047:             sltu         t1, a3, a4
1048:             srai         s8, a2, 14
                  sltu         s10, a7, a6
                  bne          a4, a7, 1061f
1051:             sra          s6, a4, s8
                  nop
                  sub          t0, a7, a5
1054:             sra          s1, a6, s8
                  addi         a3, sp, 1494
1056:             addi         a2, s6, 180
                  andi         s9, s5, -1547
                  ori          s1, s1, -182
                  srl          s10, t0, s8
                  bge          s11, s1, 1068f
1061:             sra          a1, ra, t3
                  beq          t3, a6, 1063f
1063:             nop
                  slt          a2, a2, t3
                  blt          a5, s9, 1072f
                  slt          a6, s5, sp
                  slti         s1, s2, -1051
1068:             bge          s8, s4, 1082f
                  bgeu         t6, a2, 1085f
                  slt          a6, s8, s10
                  sltiu        t2, s3, -243
1072:             bltu         a2, zero, 1083f
                  slti         s2, s8, 169
                  add          s0, t6, gp
                  slti         gp, gp, -1583
                  addi         a3, a5, -355
                  srl          t5, ra, s6
                  xor          a6, zero, a2
                  addi         s0, a3, -741
                  add          t5, ra, t6
                  beq          s0, a3, 1101f
1082:             nop
1083:             auipc        tp, 38803
                  srai         tp, a0, 11
1085:             auipc        s10, 607432
                  sub          s11, s6, s9
                  sub          tp, a1, s7
                  slt          s8, s9, s1
                  sltiu        zero, gp, -373
                  slt          ra, s3, sp
                  add          gp, a6, a6
                  srai         t4, s8, 28
                  or           gp, t5, s4
                  blt          a3, a1, 1095f
1095:             bne          ra, a5, 1111f
                  srl          a6, a2, zero
                  add          s1, s1, a2
                  slti         t2, a0, 1650
                  srai         a0, t5, 6
                  sra          s6, t5, t5
1101:             slti         t5, a5, 58
                  nop
                  sll          s10, s6, s8
                  bgeu         t0, a5, 1117f
                  bgeu         a3, a6, 1123f
                  srli         zero, zero, 24
                  andi         s7, gp, 1079
                  nop
                  nop
                  add          s6, s8, gp
1111:             srl          s7, a1, s5
                  bne          s1, zero, 1125f
                  and          t2, sp, s5
                  slt          s1, s3, s7
                  lui          t2, 563283
                  sltu         s8, a5, sp
1117:             bne          gp, s8, 1123f
                  srli         t1, t1, 7
                  slli         s2, t0, 12
                  andi         a0, t4, 260
                  nop
                  slt          s2, s11, t3
1123:             slt          a7, ra, t2
                  srli         a3, gp, 27
1125:             srl          a0, a2, t5
                  or           sp, t0, sp
                  bgeu         a6, s8, 1135f
                  sll          s6, s0, s8
                  bltu         tp, ra, 1136f
                  or           s4, zero, t3
                  bltu         s3, s2, 1135f
                  beq          s0, s10, 1148f
                  beq          a7, t2, 1153f
                  lui          t5, 602494
1135:             srai         a5, t5, 11
1136:             bne          s10, t1, 1139f
                  srli         t3, s0, 5
                  nop
1139:             srl          tp, s11, s6
                  or           s7, t6, s3
                  sub          gp, s0, s0
                  andi         sp, a2, 402
                  ori          t4, s4, -438
                  slt          t2, t6, t0
                  xori         t2, s9, 1169
                  auipc        zero, 2450
                  bgeu         s10, s11, 1163f
1148:             slli         t4, t4, 0
                  sra          a5, s4, s6
                  xor          s11, t2, sp
                  and          a2, s4, s8
                  sub          a3, ra, s11
1153:             beq          s5, a4, 1165f
                  beq          a2, s1, 1171f
                  sltu         tp, s8, s4
                  bltu         gp, a7, 1162f
                  and          s4, t2, tp
                  bltu         s2, tp, 1178f
                  srl          a3, a0, s1
                  add          a5, ra, gp
                  bne          a5, t1, 1163f
1162:             sltu         a3, s11, s6
1163:             beq          t2, t6, 1179f
                  addi         s1, a1, -2009
1165:             lui          t6, 886713
                  andi         s0, gp, -1285
                  srai         tp, a5, 10
                  sltu         a3, a2, t5
                  slli         s0, t3, 11
                  blt          t4, s2, 1183f
1171:             xori         a1, a4, -740
                  add          s0, s10, s2
                  bltu         a1, a2, 1192f
                  add          t3, a6, sp
                  addi         t2, s8, -1497
                  xori         a6, gp, 2023
                  nop
1178:             bne          t3, a7, 1192f
1179:             srl          sp, a5, s10
                  sll          s10, s2, a3
                  srl          t4, t5, s5
                  add          s11, a6, s8
1183:             add          a7, a3, gp
                  bge          s9, a5, 1195f
                  bge          s2, a7, 1196f
                  srl          a7, a2, t3
                  ori          s1, a1, -662
                  bltu         a4, a5, 1196f
                  srli         a0, t5, 0
                  bltu         a7, t0, 1194f
                  auipc        a7, 656368
1192:             bgeu         t5, s1, 1198f
                  bge          t6, a6, 1194f
1194:             bge          a5, s9, 1212f
1195:             sub          s6, s6, a4
1196:             srli         t4, a3, 16
                  and          gp, t1, s4
1198:             and          a5, s11, ra
                  and          s6, zero, t5
                  sltu         t2, ra, s9
                  and          t1, s5, s5
                  addi         t2, a3, -44
                  blt          zero, a2, 1216f
                  xori         t1, s9, 170
                  bgeu         t0, a0, 1212f
                  and          s8, s10, s6
                  xori         a5, t0, 1150
                  bltu         a4, a7, 1224f
                  sub          zero, s7, t2
                  ori          a0, gp, 358
                  xori         t6, s1, 7
1212:             sll          s2, t3, t2
                  sra          s7, a6, gp
                  and          a2, zero, gp
                  sra          sp, a5, a4
1216:             srli         sp, t3, 2
                  xor          s7, a6, t2
                  andi         t1, a4, -1654
                  bgeu         a2, a6, 1231f
                  auipc        s6, 881432
                  srli         a0, s2, 23
                  beq          s5, tp, 1229f
                  ori          a1, t3, 1731
1224:             or           s1, s8, s0
                  srl          t6, a4, ra
                  sll          a1, t0, tp
                  ori          t1, s4, -1434
                  sltu         a1, t2, s0
1229:             and          s11, s6, zero
                  auipc        s11, 1041820
1231:             srl          a2, t1, t4
                  sll          s9, s11, s2
                  xor          s4, zero, a3
                  blt          s2, gp, 1250f
                  ori          s1, s10, 1336
                  xor          s1, s5, a3
                  slti         s1, t3, -508
                  xori         gp, ra, -799
                  srli         t2, s3, 24
                  or           s10, s7, t1
                  srl          tp, a0, a2
                  blt          s2, s6, 1249f
                  add          s10, zero, a6
                  add          a7, zero, a2
                  sra          t1, a0, s3
                  slli         t4, s0, 29
                  andi         t4, s1, 1428
                  slti         tp, s1, -619
1249:             srai         sp, a2, 26
1250:             bltu         zero, t0, 1253f
                  slti         s0, a0, 1443
                  and          a6, gp, s10
1253:             bne          a5, s11, 1269f
                  blt          ra, t5, 1274f
                  sll          a5, a5, s4
                  slli         zero, s5, 23
                  or           a7, ra, a5
                  addi         a3, a5, 2030
                  bltu         s2, gp, 1267f
                  auipc        s8, 1043320
                  beq          s3, s9, 1280f
                  bltu         s2, a7, 1267f
                  andi         tp, s4, 1070
                  slt          s7, t5, a7
                  ori          a2, t0, -225
                  slti         gp, a1, 159
1267:             srli         a5, tp, 0
                  and          t5, a3, s7
1269:             slti         t1, t2, 1023
                  bltu         s3, s6, 1283f
                  xori         gp, s6, -1416
                  sra          s11, zero, a5
                  bltu         t6, t0, 1274f
1274:             andi         s4, a7, 251
                  bge          s6, a2, 1282f
                  andi         sp, s4, -1055
                  bne          t3, s1, 1293f
                  auipc        s2, 511077
                  beq          s9, a6, 1292f
1280:             beq          a4, s3, 1296f
                  bltu         s8, a6, 1288f
1282:             slli         a6, ra, 3
1283:             ori          t6, s4, 1576
                  slli         a1, ra, 20
                  sra          a5, s8, s2
                  bgeu         a5, s2, 1299f
                  blt          tp, t0, 1305f
1288:             sltiu        a3, s4, -684
                  add          a3, a0, sp
                  bne          a1, ra, 1293f
                  or           a1, s8, sp
1292:             blt          a5, a0, 1300f
1293:             nop
                  bne          s10, a1, 1300f
                  addi         a6, ra, 399
1296:             xori         sp, s2, -1492
                  sra          gp, s0, s7
                  sra          t4, tp, zero
1299:             and          t0, a6, t4
1300:             srai         t3, s10, 16
                  srai         a1, s2, 7
                  beq          s0, a2, 1322f
                  xor          s4, t3, a4
                  bltu         t6, a6, 1320f
1305:             ori          a6, ra, -2008
                  auipc        a1, 898780
                  bne          sp, zero, 1326f
                  lui          s2, 554258
                  bge          s10, t0, 1320f
                  slli         s9, a6, 12
                  bltu         t6, a6, 1325f
                  andi         t4, s10, -546
                  and          s7, s8, t0
                  sltu         s9, s8, s3
                  bge          s5, s11, 1319f
                  bge          s1, s3, 1317f
1317:             sra          s2, t4, s11
                  sltu         s7, s2, t5
1319:             sltiu        a5, s3, -734
1320:             xor          a6, s3, zero
                  add          gp, s7, a7
1322:             ori          a0, s8, -219
                  sra          s4, s11, s6
                  srl          t2, t3, a3
1325:             bgeu         a3, t5, 1345f
1326:             slt          t4, t0, t5
                  sra          t3, a5, a7
                  xor          s9, a4, s5
                  bltu         t1, t1, 1348f
                  srai         t3, t2, 24
                  sltu         a3, ra, a1
                  bge          a5, a3, 1340f
                  xori         tp, a2, 216
                  auipc        s1, 73789
                  auipc        t3, 253099
                  or           s8, tp, a7
                  bltu         t2, t5, 1343f
                  slli         s4, a0, 20
                  or           s11, a0, t5
1340:             andi         a1, s8, 1167
                  lui          s4, 105788
                  bge          s3, zero, 1358f
1343:             auipc        s0, 154388
                  auipc        t2, 448275
1345:             add          t5, s6, a0
                  nop
                  ori          s9, a6, -1382
1348:             sra          s2, a2, s1
                  bge          a0, a2, 1350f
1350:             slt          s2, s1, zero
                  slt          s4, a2, gp
                  or           t6, gp, s4
                  or           s4, a3, sp
                  beq          t4, tp, 1359f
                  sltiu        a7, s6, 1514
                  sltiu        s2, t1, 719
                  add          s0, sp, s5
1358:             srl          s7, t1, a4
1359:             sltu         s7, zero, s5
                  add          s1, t2, t1
                  slt          zero, s0, t2
                  addi         a2, a4, 1545
                  blt          tp, gp, 1380f
                  xori         a3, a7, 376
                  slt          a3, s2, s6
                  lui          s0, 681124
                  srli         gp, s6, 19
                  ori          t1, a5, -369
                  sra          tp, a5, t4
                  sltu         tp, s10, a1
                  srai         s1, t5, 24
                  slt          sp, s1, a4
                  bgeu         a3, s7, 1375f
                  andi         a1, t1, -319
1375:             slli         t3, s1, 6
                  addi         s7, s4, -1400
                  ori          t0, zero, -1440
                  srli         sp, gp, 27
                  sub          a1, s4, a2
1380:             ori          s7, sp, -206
                  sltu         a1, s4, s11
                  srai         s2, s4, 18
                  srai         s10, s9, 16
                  ori          a1, t6, 625
                  lui          t5, 353619
                  beq          a4, s4, 1389f
                  slti         t5, a0, -687
                  beq          a6, s3, 1389f
1389:             srli         a6, s8, 21
                  addi         s0, a0, 263
                  nop
                  lw           t1, 4(a4)
                  sra          ra, s11, t2
                  addi         a4, a4, 60
                  nop
1875:             addi x17, x6, 1
1875:             jalr x17, x17, 0
sub_10:           addi         a4, a4, -12
                  lui          s0, 633601
                  auipc        t5, 1047493
                  andi         a7, s9, -236
                  sw           t1, 4(a4)
                  add          zero, t5, s10
                  slt          s1, t0, t6
                  slt          t4, s4, ra
                  srli         s2, s1, 5
                  addi         t5, a5, -2010
                  bgeu         s5, s4, 9f
                  xori         s1, s7, 397
                  bge          t3, s2, 7f
                  ori          a6, zero, -83
7:                and          a1, a1, ra
                  sltu         tp, a2, a6
9:                xori         a1, a7, -1521
                  lw           t1, 4(a4)
                  addi         a4, a4, 12
                  sltu         t5, s11, zero
                  slli         s0, s2, 26
                  and          a0, a4, s7
22:               addi x26, x6, 1
22:               jalr x26, x26, 0
sub_6:            beq          zero, a5, sub_6_stack_p
                  ori          a7, t4, 169
sub_6_stack_p:    addi         a4, a4, -40
                  sub          ra, t1, a6
                  sw           t1, 4(a4)
                  sltu         s6, s0, a4
                  slt          t6, s5, s11
                  lui          s4, 481639
                  xor          s2, a7, gp
                  srli         a3, a2, 17
                  la           t1, sub_8
                  sub          s8, a6, t5
                  and          a7, t3, s9
                  ori          a2, a3, 1542
                  addi         t1, t1, 652
                  srai         s2, a6, 7
sub_6_j10:        jalr         t1, t1, -652 #jump sub_6 -> sub_8
                  beq          s3, s1, 10f
                  srli         s1, a1, 23
                  sra          ra, a5, s1
                  slli         t5, s11, 22
                  sltiu        t6, ra, -1876
                  nop
                  bne          s11, s0, 16f
                  bne          s0, a2, 18f
                  and          a3, t0, a5
                  slt          s9, a5, t3
10:               slt          s7, a1, t6
                  auipc        s7, 78989
                  xori         t0, t3, 720
                  addi         t2, tp, -1617
                  sll          t2, s7, s11
                  sltu         s7, s7, t5
16:               addi         a2, a1, 1401
                  slli         a6, gp, 28
18:               sra          s1, a0, t4
                  srl          a5, t4, s3
                  blt          t1, tp, 21f
21:               slt          t6, s11, s3
                  sltu         a0, s6, a2
                  add          sp, s0, t1
                  sra          t0, ra, ra
                  lw           t1, 4(a4)
                  addi         a4, a4, 40
                  sub          a3, s10, gp
45:               addi x12, x6, 0
45:               jalr x12, x12, 0
sub_2:            addi         a4, a4, -40
                  sw           t1, 4(a4)
                  add          zero, t3, t1
                  slti         a3, a5, -311
                  srl          s7, s0, s2
                  la           t0, region_1+583 #start riscv_load_store_rand_instr_stream_0
                  slt          sp, t6, t0
                  sll          s11, t1, a1
                  sra          t6, a4, s2
                  lbu          s10, -28(t0)
                  lh           tp, 123(t0)
                  auipc        a1, 937
                  sb           gp, -204(t0)
                  addi         s9, a4, -972
                  sh           a2, -71(t0)
                  sb           s6, -67(t0)
                  lhu          s10, 11(t0)
                  slli         t6, s1, 7
                  andi         s4, sp, 839
                  srai         t1, s8, 21
                  sltiu        s6, a3, 1228
                  lh           a0, -65(t0)
                  lb           s6, 78(t0)
                  sb           t1, 243(t0)
                  sb           s0, -42(t0)
                  sub          t5, t1, t5
                  auipc        s8, 246438
                  slli         s10, s7, 3
                  sb           s1, 11(t0)
                  andi         a0, gp, 1349
                  xor          t1, s1, s2
                  sb           s10, 130(t0)
                  sb           t6, 196(t0)
                  sll          s2, t6, gp
                  slli         t5, s1, 21
                  lhu          t6, -217(t0) #end riscv_load_store_rand_instr_stream_0
                  sub          tp, sp, t3
                  sltiu        s4, s5, 881
                  xor          t3, a3, s3
                  nop
                  sra          s11, s4, a0
                  srl          a0, t4, s5
                  srai         zero, t4, 16
                  slt          t6, a2, a3
sub_2_j5:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  slli         s10, gp, 21
                  xori         t6, s10, -1420
                  sltiu        a0, s1, -362
                  sltu         a3, ra, s6
                  andi         s6, s0, 1047
                  slt          t5, a6, a0
                  sltiu        tp, s9, 1481
                  andi         t6, a1, -1398
                  bge          a6, t5, 16f
                  or           zero, s4, s2
                  bge          t5, s10, 14f
                  ori          gp, s0, -1936
                  bge          s5, s4, 33f
14:               ori          tp, t4, 1086
                  ori          a0, s3, -734
16:               sra          t2, tp, a5
                  bgeu         s3, t2, 28f
                  srai         s10, s4, 20
                  xori         s6, tp, 80
                  la           t4, region_0+1721 #start riscv_load_store_rand_instr_stream_1
                  srai         a6, a4, 0
                  or           s9, ra, gp
                  or           s6, ra, a3
                  sltiu        t1, s0, -1836
                  sltiu        s6, gp, 1274
                  lbu          s9, 2(t4)
                  lb           a0, -26(t4)
                  srl          a2, ra, a1
                  lbu          s11, 35(t4)
                  auipc        s10, 624786
                  sw           a7, -33(t4)
                  nop
                  slt          s6, a5, a1
                  xor          a1, a0, s8
                  sb           a4, 54(t4)
                  sw           t3, -41(t4)
                  sll          a5, zero, t2
                  sll          t1, t4, t5
                  sltiu        s1, s8, -200
                  xori         s11, s9, -1691
                  sb           s3, -29(t4)
                  and          s0, s11, s2
                  lbu          a5, -14(t4)
                  andi         s9, a3, 65
                  auipc        s11, 674351
                  sb           t1, -29(t4)
                  srai         a1, t6, 4
                  lhu          a1, -21(t4)
                  lb           a6, -18(t4)
                  lh           t1, -1(t4)
                  sb           a6, 51(t4)
                  sll          s2, t0, t4
                  ori          a6, t5, 1121
                  addi         t2, t6, 574
                  lh           s8, -27(t4)
                  lui          zero, 346251
                  lbu          a5, -19(t4)
                  lbu          t0, -60(t4)
                  sb           t6, -43(t4)
                  sll          a2, ra, a4
                  nop
                  sub          t5, s2, a6
                  xor          t2, a7, t4
                  sh           t3, -17(t4)
                  lbu          s0, -40(t4) #end riscv_load_store_rand_instr_stream_1
                  sll          t5, s5, t5
                  bge          s2, t3, 36f
                  addi         a2, s6, 82
                  bne          s7, s11, 26f
                  xori         sp, s1, 824
                  or           t3, s2, a6
26:               lui          s6, 469911
                  blt          zero, a5, 33f
28:               auipc        s11, 1029136
                  srl          gp, a6, a0
                  srl          s10, a1, a3
                  bge          a4, s0, 41f
                  andi         tp, tp, -2047
33:               sltiu        a0, tp, -119
                  sub          sp, s9, a0
                  bne          s2, s11, 51f
36:               auipc        s8, 547791
                  bltu         a0, t1, 38f
38:               slti         a2, ra, 1240
                  bltu         a6, s1, 48f
                  slli         s4, a4, 23
41:               lui          t3, 406196
                  srli         t4, t4, 20
                  slt          gp, a2, t5
                  slli         s1, a2, 16
                  sub          s7, a7, t6
                  xori         a1, s6, 674
                  auipc        t2, 13571
48:               bgeu         t3, s0, 68f
                  slli         s6, t2, 31
                  beq          s1, gp, 65f
51:               bne          t6, tp, 53f
                  bgeu         t0, a3, 67f
53:               lui          s6, 556231
                  xori         s2, a4, 1485
                  slt          t6, s1, ra
                  ori          t1, s9, 1579
                  add          ra, s8, a0
                  nop
                  srl          s10, s9, s8
                  slt          tp, s4, s2
                  sltu         ra, s6, t4
                  and          t3, t3, s3
                  or           ra, s6, ra
                  addi         gp, s9, -3
65:               or           s0, s11, s4
                  sll          s2, a0, s11
67:               lui          t6, 1010046
68:               xori         s7, t4, -1834
                  and          a2, a5, zero
                  slti         a1, s4, -918
                  srai         a7, a6, 26
                  bge          t5, s0, 89f
                  srai         a3, a6, 20
                  bltu         s0, a3, 78f
                  ori          s10, s1, -1640
                  sltiu        s4, s4, 619
                  srai         ra, s0, 16
78:               sra          t4, s0, s5
                  ori          s7, a0, 896
                  nop
                  sltiu        s2, s11, -747
                  srai         a5, s9, 14
                  beq          t1, a7, 99f
                  bgeu         s0, s7, 96f
                  bltu         s0, s0, 90f
                  bge          a6, t0, 89f
                  srl          gp, tp, t6
                  addi         tp, t1, 1288
89:               add          s2, s3, zero
90:               xori         a2, a6, -1446
                  bge          s7, s1, 99f
                  add          a0, s11, a4
                  ori          s10, s7, 560
                  bgeu         t0, ra, 113f
                  bgeu         s5, t3, 101f
96:               bltu         a7, s6, 114f
                  bltu         t6, s8, 101f
                  ori          a7, tp, -28
99:               bltu         sp, tp, 107f
                  and          t0, t0, s11
101:              bne          a1, s5, 109f
                  bgeu         a0, a4, 118f
                  srai         a6, s1, 9
                  bltu         a3, t2, 105f
105:              or           a1, s0, a7
                  ori          a0, s1, 1222
107:              srl          s8, t0, tp
                  xori         ra, s1, 460
109:              slt          a6, t6, a4
                  add          a6, tp, t4
                  slt          s0, t1, s4
                  srl          gp, s2, s10
113:              xori         a3, a2, 1285
114:              sub          s9, s4, a3
                  srli         s4, s3, 11
                  slti         s6, t4, 1015
                  sltiu        s2, a7, -619
118:              xori         a3, a0, 375
                  srli         zero, a0, 0
                  nop
                  slti         a5, zero, -1317
                  slli         t4, s3, 12
                  and          tp, ra, gp
                  auipc        ra, 16590
                  or           a2, s0, a7
                  andi         a6, s1, 326
                  auipc        a7, 164476
                  sltiu        zero, t6, -179
                  or           s4, a7, s10
                  sub          t5, t6, s1
                  or           t2, a2, a0
                  sltu         a5, zero, a2
                  nop
                  slti         s1, a4, -283
                  bge          s1, t4, 150f
                  sub          s8, s1, a5
                  lui          a1, 738742
                  sub          zero, a1, t0
                  slt          s0, t3, ra
                  ori          sp, t5, 480
                  add          t4, s10, s3
                  sltu         t4, s3, s9
                  sltu         s0, a3, ra
                  bne          zero, tp, 154f
                  bltu         s3, t6, 153f
                  addi         s11, s1, 618
                  beq          s5, t3, 153f
                  sltu         s2, s6, s0
                  bgeu         zero, sp, 165f
150:              srl          s0, t6, t4
                  andi         s10, a2, -1237
                  bge          s10, t0, 160f
153:              lui          gp, 459031
154:              bge          a7, ra, 157f
                  sra          s0, s1, t2
                  auipc        ra, 855035
157:              sltu         a6, tp, s0
                  slli         t0, gp, 19
                  bltu         a2, a0, 163f
160:              beq          t2, s11, 161f
161:              sra          s4, s5, s11
                  addi         t6, s7, 1413
163:              slli         t2, a7, 5
                  bne          a5, s2, 180f
165:              nop
                  nop
                  srl          a1, ra, a7
                  bgeu         s5, s3, 174f
                  srai         t0, ra, 11
                  addi         a5, s3, -735
                  ori          sp, a7, -1370
                  sltiu        s4, s1, -1685
                  slt          t5, s5, a3
174:              bgeu         a5, t4, 177f
                  bne          t2, t6, 192f
                  or           s8, zero, t3
177:              nop
                  and          s8, t2, gp
                  slli         tp, s7, 22
180:              blt          t3, s10, 196f
                  sltiu        a0, s11, -199
                  sra          gp, a2, a3
                  lui          t3, 1041612
                  sub          zero, t5, t6
                  slt          s0, tp, t5
                  ori          s8, s4, 1221
                  sll          a2, ra, s0
                  blt          zero, ra, 206f
                  slli         a6, s5, 19
                  beq          a3, s8, 191f
191:              blt          tp, t3, 206f
192:              and          t0, s9, t3
                  or           t0, a1, s9
                  blt          a2, s6, 214f
                  sra          zero, t6, t3
196:              and          a3, s10, s9
                  bne          s3, s1, 212f
                  sra          t5, sp, a0
                  bltu         tp, s3, 218f
                  andi         a0, s5, -259
                  bgeu         zero, s8, 204f
                  add          ra, tp, a4
                  or           s9, s3, ra
204:              and          t1, a5, s0
                  slti         s2, gp, 1490
206:              auipc        s8, 771732
                  xor          s2, t0, zero
                  xor          a7, a4, t1
                  bge          s11, s3, 217f
                  sll          s0, t0, t4
                  slt          a2, s0, s4
212:              srli         s2, s6, 4
                  sltu         s7, t0, ra
214:              add          zero, a3, s0
                  bge          tp, s4, 217f
                  or           s1, s1, s11
217:              sltu         s8, s6, t2
218:              xor          t4, t6, ra
                  andi         a7, s9, -861
                  add          s7, s6, sp
                  nop
                  beq          sp, ra, 227f
                  bge          s7, s1, 234f
                  bge          a6, sp, 228f
                  beq          tp, s8, 245f
                  slt          a7, t3, t3
227:              slli         a7, s6, 11
228:              sll          s9, t4, s7
                  srl          s8, a2, gp
                  add          a7, a4, a2
                  srli         s2, s2, 30
                  slti         a3, s8, -49
                  andi         s2, s2, 1833
234:              auipc        s7, 1041958
                  srl          a1, t4, ra
                  lui          sp, 548749
                  auipc        a2, 935695
                  srl          t3, s8, t3
                  xori         a0, s1, -1297
                  lui          tp, 395383
                  slli         gp, t3, 25
                  bge          zero, t3, 251f
                  ori          a7, s5, 206
                  bltu         a3, s9, 256f
245:              lui          t3, 443952
                  sltiu        t0, a0, -1713
                  sltu         s8, a2, t5
                  nop
                  ori          a0, a0, -1350
                  add          s8, s10, t1
251:              bge          s3, a0, 258f
                  slt          s9, s9, a5
                  sub          s11, t2, s8
                  nop
                  or           s4, t3, s6
256:              nop
                  lui          t4, 946072
258:              auipc        s7, 623697
                  bltu         s2, ra, 266f
                  sltu         t6, s8, s3
                  andi         t3, a4, 266
                  sub          t5, ra, s8
                  bge          gp, t5, 266f
                  srli         t1, sp, 27
                  slt          a7, sp, s10
266:              addi         t6, a3, -177
                  sll          t2, s4, s2
                  or           s6, s1, s0
                  srli         ra, a7, 18
                  lw           t1, 4(a4)
                  addi         a4, a4, 40
                  xori         a3, a6, 373
                  and          a7, s1, t3
364:              addi x7, x6, 1
364:              jalr x7, x7, 0
sub_4:            bge          s5, a5, sub_4_stack_p
                  srl          t2, a2, s1
                  lui          t0, 366506
sub_4_stack_p:    addi         a4, a4, -12
                  nop
                  or           tp, s5, s2
                  slli         t3, t3, 4
                  sw           t1, 4(a4)
                  addi         a2, s5, -1149
                  nop
                  add          t6, t0, a3
                  la           sp, region_0+1191 #start riscv_load_store_rand_instr_stream_2
                  sb           a2, 777(sp)
                  xor          a0, gp, sp
                  lbu          t4, -287(sp)
                  ori          t1, a5, -334
                  slti         s2, tp, -363
                  sh           s8, 267(sp)
                  lbu          t1, -1156(sp)
                  srli         a2, s4, 30
                  lb           s6, -1093(sp)
                  slli         s0, s8, 25
                  lb           a3, 792(sp)
                  xori         s7, s6, -45
                  lb           t0, -391(sp)
                  sw           a4, -1087(sp)
                  andi         a1, s3, 22
                  sltu         t4, a2, s1
                  lw           ra, 261(sp)
                  lbu          s2, 537(sp)
                  lbu          a0, -95(sp)
                  lh           zero, 743(sp)
                  srli         t3, s0, 12
                  lbu          s4, -1136(sp)
                  ori          ra, a1, -715
                  sb           t4, -192(sp)
                  lh           s2, 705(sp)
                  sw           s4, 281(sp)
                  lh           a7, 571(sp)
                  lbu          s4, 274(sp)
                  lbu          a5, 177(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1851 #start riscv_load_store_rand_instr_stream_0
                  lb           gp, 7(sp)
                  lb           ra, -16(sp)
                  srai         s8, t1, 2
                  addi         t4, a4, 3
                  lb           s7, 16(sp)
                  auipc        s7, 515318
                  lb           a5, 0(sp)
                  slt          a2, t2, t3
                  sltu         zero, a1, a6
                  lbu          gp, 16(sp)
                  lb           a1, 14(sp)
                  ori          ra, t4, 1957
                  and          t0, a0, s4
                  lb           t6, -2(sp)
                  add          t3, t4, a3
                  sll          t6, a3, t4
                  auipc        tp, 773492
                  nop
                  srl          ra, a4, zero
                  slti         tp, t0, 1508
                  sltiu        s8, t6, -237
                  lbu          a7, -9(sp)
                  and          s6, gp, t1
                  slti         t5, ra, 1960
                  srai         zero, tp, 8
                  auipc        s7, 12132
                  or           s2, t6, a2
                  ori          s1, s6, 1222
                  lhu          zero, -11(sp)
                  lbu          s2, -16(sp)
                  slli         gp, s5, 12
                  sb           gp, 16(sp)
                  srai         s9, a5, 29
                  sb           a4, -12(sp)
                  nop
                  lui          t4, 1014865
                  sltiu        s6, zero, 940
                  lui          gp, 478776
                  sw           gp, -15(sp)
                  sb           a6, 8(sp)
                  lb           s8, -6(sp)
                  auipc        s10, 879555
                  andi         tp, s9, -1446
                  sltu         s2, a5, t6
                  lb           t5, -9(sp) #end riscv_load_store_rand_instr_stream_0
                  or           a5, s5, s5
                  sll          a1, s2, s0
                  srli         s7, zero, 1
                  add          t6, t6, a2
                  sub          s6, s8, sp
                  sra          t6, t1, t5
                  add          a0, t1, s10
                  addi         ra, t0, 229
                  or           s11, gp, s7
                  bge          s2, ra, 18f
                  slli         a0, s6, 13
                  sltu         tp, t6, a4
                  xor          s2, s1, t0
                  auipc        a0, 819889
                  xor          tp, a1, a0
                  xor          a6, t6, a3
                  bge          a0, s7, 36f
                  sll          a7, s3, s5
18:               bne          s3, a7, 37f
                  ori          t4, a2, 135
                  ori          s1, a4, -1883
                  slli         a6, t5, 3
                  add          a7, a1, a1
                  slti         t4, a5, -1190
                  beq          s1, a3, 30f
                  blt          tp, zero, 43f
                  srai         s1, s2, 17
                  andi         t0, s7, 1523
                  beq          a6, a6, 45f
                  addi         s2, s3, -800
30:               slt          s0, a6, s3
                  srl          s2, s7, s0
                  ori          a0, zero, -256
                  add          a2, gp, a5
                  nop
                  bge          t5, t1, 40f
36:               slt          s4, s2, a4
37:               add          a7, a4, a4
                  beq          s4, s1, 51f
                  add          t5, a7, t4
40:               sll          t6, sp, zero
                  sll          zero, s0, s9
                  beq          ra, s9, 56f
43:               srl          t2, zero, s5
                  srl          sp, a7, a6
45:               srli         tp, tp, 1
                  and          t1, a1, tp
                  slti         a3, zero, -301
                  srl          s4, a5, a2
                  srli         a6, s4, 11
                  blt          t4, zero, 56f
51:               and          zero, s0, a3
                  addi         s4, s9, 346
                  sltu         sp, a5, s3
                  or           s6, ra, s7
                  srai         a1, tp, 27
56:               ori          zero, a7, -174
                  auipc        t3, 237490
                  auipc        ra, 920207
                  srli         s1, s2, 28
                  xori         a2, a3, 472
                  sub          a6, zero, t3
                  lui          t4, 721093
                  or           s8, s6, s8
                  xor          s1, a7, s11
                  srai         s8, s11, 1
                  srai         s4, ra, 1
                  bgeu         a6, s6, 68f
68:               sltu         t0, a3, t3
                  and          a2, s10, t3
                  srai         s7, a1, 11
                  and          ra, s8, s9
                  la           t6, region_1+1675 #start riscv_load_store_rand_instr_stream_1
                  lui          ra, 210217
                  lb           t0, 28(t6)
                  lhu          tp, -27(t6)
                  addi         a2, a6, -1093
                  sh           tp, 49(t6)
                  ori          s7, a7, 1920
                  sltiu        s9, t1, 377
                  sltiu        a6, s8, -1326
                  srl          a1, s5, a2
                  sub          a1, sp, a5
                  sltu         s1, s7, s6
                  sh           tp, -17(t6)
                  ori          s2, a6, -1336
                  sh           s6, -25(t6)
                  lbu          a2, 46(t6)
                  and          s6, s11, s4
                  sltu         t4, a3, s11
                  slli         sp, s0, 28
                  slti         s8, a6, 1474
                  add          zero, t6, s10
                  lb           s4, -7(t6)
                  auipc        ra, 393802
                  sub          s6, t6, t6
                  lbu          a5, 27(t6)
                  lh           s2, -1(t6)
                  slli         t5, a1, 17
                  and          s6, s1, t4
                  add          s11, a3, a1
                  sb           sp, 44(t6)
                  lh           a2, -33(t6)
                  lbu          a5, 48(t6) #end riscv_load_store_rand_instr_stream_1
                  sltu         t4, t1, s4
                  xor          t3, ra, s5
                  and          sp, s6, a2
                  nop
                  slli         s7, sp, 3
                  ori          a6, s3, 149
                  sub          a3, a1, a0
                  sub          zero, t0, zero
                  sltiu        s4, a4, -187
                  sltu         t1, a4, s9
                  andi         gp, a7, 1103
                  xor          s0, s9, s0
                  xori         t0, gp, 1872
                  auipc        a5, 732141
                  add          t6, s2, a1
                  sub          a0, t1, t3
                  sltu         t2, t5, s7
                  ori          t4, t3, 1428
                  andi         s2, ra, 859
                  slli         a6, zero, 18
                  bgeu         t6, t4, 102f
                  sltiu        s4, s9, -757
                  xor          tp, t1, t0
                  sll          t2, t1, t3
                  sll          s2, s10, sp
                  or           ra, s7, t3
                  xori         s9, s7, 1912
                  addi         s10, s2, 1460
                  addi         sp, ra, -1844
                  slli         sp, s10, 25
102:              bne          a1, a5, 111f
                  slli         a2, s7, 14
                  slli         gp, zero, 14
                  xori         t3, t5, -876
                  nop
                  bgeu         gp, t4, 125f
                  auipc        t0, 614820
                  lui          s2, 757782
                  lui          zero, 665146
111:              addi         a1, s2, 579
                  sltu         s10, t4, t0
                  bge          t1, gp, 131f
                  add          t6, s7, t5
                  sra          zero, t2, t2
                  slli         s0, a1, 11
                  ori          t5, a0, -1292
                  or           t1, s11, s10
                  sub          a6, tp, s9
                  sltiu        t1, a0, -644
                  andi         s1, s4, 425
                  beq          a6, gp, 138f
                  sra          s7, t1, s7
                  bltu         s8, t6, 133f
125:              lui          t2, 288328
                  ori          t4, s10, 817
                  beq          s3, t5, 131f
                  bltu         a3, s3, 141f
                  ori          tp, a2, 972
                  sltiu        t2, s2, 1977
131:              bge          a1, s10, 147f
                  slli         s1, gp, 31
133:              sub          a1, t4, s4
                  sra          gp, s5, a7
                  bne          a5, ra, 136f
136:              addi         s0, s9, 24
                  bge          s6, s11, 144f
138:              srli         a2, s7, 29
                  addi         t5, s10, -956
                  beq          s9, t6, 155f
141:              sltiu        a3, zero, 1924
                  beq          a3, a4, 148f
                  slli         a1, a6, 31
144:              slt          a6, a6, tp
                  and          gp, s11, a0
                  bne          s3, tp, 166f
147:              xor          a5, a3, a5
148:              slli         a6, t3, 12
                  blt          tp, t6, 157f
                  or           s8, s9, s4
                  xor          s2, t1, zero
                  lui          sp, 690389
                  ori          s11, t2, -1085
                  addi         s10, t4, 1105
155:              bgeu         t2, a5, 167f
                  slti         zero, t4, -1818
157:              sltu         a3, s6, s9
                  lui          a5, 579518
                  sltu         s6, s7, zero
                  auipc        s7, 52156
                  xor          a6, s5, s8
                  sub          ra, t6, t3
                  andi         s0, zero, 85
                  slti         zero, ra, 44
                  add          a3, tp, a0
166:              sub          s1, t0, a5
167:              ori          a5, a3, -1218
                  add          s9, s6, s6
                  bltu         t5, a2, 179f
                  sll          t4, t1, gp
                  bgeu         s7, ra, 175f
                  blt          a6, a2, 181f
                  bgeu         t5, t1, 182f
                  xori         s1, a4, -1282
175:              beq          ra, s7, 181f
                  lui          s0, 521637
                  auipc        s0, 680055
                  bne          s5, s1, 183f
179:              sub          a7, s4, t1
                  sltiu        a2, s7, 2009
181:              beq          s9, a7, 193f
182:              sltu         s1, t1, t5
183:              bgeu         t0, s0, 200f
                  andi         tp, t5, 1249
                  andi         s2, t6, 284
                  bge          a6, t1, 200f
                  slli         a1, a3, 31
                  beq          a4, a6, 208f
                  bne          s4, tp, 195f
                  srl          s6, t4, s11
                  lui          a7, 77384
                  xor          t3, a5, t6
193:              bltu         t2, t2, 202f
                  and          s4, s0, t2
195:              and          t3, s5, a6
                  nop
                  add          sp, ra, s7
                  bge          s0, s9, 207f
                  srai         sp, s1, 12
200:              sltu         t0, s10, a4
                  bne          t6, t2, 217f
202:              sltu         s1, s1, a6
                  auipc        gp, 974492
                  slti         a0, s5, -373
                  slti         t5, s0, -1007
                  xor          ra, a5, a2
207:              addi         a5, t5, 2012
208:              lui          s6, 896241
                  slti         a3, s8, 72
                  sltiu        a7, s3, -117
                  sltu         t5, a1, s0
                  nop
                  sltu         t1, tp, t6
                  sltiu        t4, a1, -667
                  nop
                  or           s6, t5, s9
217:              xor          t2, a1, s10
                  sltiu        ra, s3, 1564
                  bgeu         a4, s0, 237f
                  srl          a7, zero, s2
                  slti         gp, s6, -1075
                  beq          s10, zero, 240f
                  srl          gp, s0, s0
                  sra          s0, t3, t5
                  bne          a4, s9, 226f
226:              sltiu        a0, gp, 285
                  and          a7, s0, a2
                  and          s2, s7, a0
                  or           s1, a6, s11
                  addi         s8, s0, 364
                  addi         ra, s3, -525
                  xori         t0, a6, 507
                  add          t2, s11, s6
                  bltu         s8, a0, 240f
                  bne          s10, t4, 248f
                  sra          gp, gp, a2
237:              sub          s2, s3, s6
                  slli         t0, s11, 16
                  srl          s6, a6, a2
240:              auipc        a7, 235329
                  bgeu         s8, a7, 260f
                  ori          t4, a0, -1968
                  srai         tp, a7, 20
                  sltu         a3, s10, t5
                  xor          s11, a6, a3
                  srai         t1, a0, 15
                  or           a0, a3, s0
248:              sltu         s2, t4, a5
                  srli         s7, ra, 11
                  srai         sp, s7, 5
                  and          a6, s8, s10
                  slt          a7, s8, a1
                  andi         s11, tp, -1881
                  slli         s8, s7, 9
                  auipc        a1, 970813
                  srai         t1, s7, 27
                  slli         s10, s2, 16
                  bge          t0, a6, 259f
259:              srai         s7, zero, 25
260:              slt          s9, s1, a2
                  xori         t1, zero, 599
                  srai         s9, zero, 9
                  slti         s0, s11, 1005
                  srli         s6, t5, 16
                  bgeu         s9, a3, 273f
                  nop
                  auipc        s9, 1036842
                  srai         sp, a0, 29
                  blt          s2, s3, 279f
                  bltu         a3, s0, 290f
                  blt          s4, a7, 284f
                  sub          t6, a5, sp
273:              sltu         a3, s1, t1
                  nop
                  bne          s2, s6, 285f
                  slti         s4, a3, -1043
                  bne          s6, s7, 292f
                  srli         a5, a0, 14
279:              srli         t4, s9, 9
                  srai         a5, s9, 23
                  srai         a3, s5, 11
                  beq          a5, a1, 286f
                  add          a5, s8, a3
284:              nop
285:              and          zero, a7, s0
286:              slti         s7, a6, -1637
                  sltiu        s4, t2, -787
                  sra          s8, a3, s10
                  srli         s1, t3, 16
290:              bgeu         s6, gp, 294f
                  bne          s11, a6, 307f
292:              bgeu         a1, gp, 299f
                  slti         t4, t1, -919
294:              bge          s8, s2, 312f
                  sll          sp, s11, s10
                  srai         sp, a0, 11
                  srli         gp, s5, 11
                  srli         s10, tp, 25
299:              srli         a3, s7, 8
                  srai         a6, a3, 27
                  srl          tp, s2, s11
                  ori          s7, s5, -1155
                  lui          t2, 303067
                  sub          t1, s1, s9
                  xori         zero, t6, -1618
                  add          a0, a0, s11
307:              bge          s6, sp, 316f
                  bne          t3, zero, 314f
                  ori          t2, tp, -145
                  auipc        t3, 255001
                  srl          t4, t2, s2
312:              and          t0, tp, s0
                  beq          s0, s1, 322f
314:              nop
                  lui          a6, 841261
316:              beq          s11, ra, 328f
                  xor          a5, tp, t3
                  sra          t5, s6, t3
                  blt          s6, t4, 324f
                  slli         s8, a5, 20
                  bge          s10, s6, 341f
322:              xori         t5, s11, 49
                  sltiu        s1, t6, 1592
324:              srai         s11, t4, 8
                  sll          t3, a2, a5
                  and          s10, a6, tp
                  and          t2, s4, s2
328:              sub          s7, s5, zero
                  xori         t2, s1, 1923
                  blt          a5, s9, 334f
                  lui          a1, 160711
                  bne          s4, s2, 349f
                  srl          s10, t2, t5
334:              slt          sp, a3, s10
                  sra          s8, s4, t5
                  blt          a7, s8, 356f
                  blt          t6, a4, 347f
                  addi         a7, s5, -65
                  bge          gp, a6, 340f
340:              slt          t6, a0, t5
341:              add          t4, t6, a3
                  sub          t5, t5, a2
                  xori         a3, s6, -1853
                  sltiu        a5, s3, -2037
                  sltiu        t4, a2, 344
                  srl          a6, a4, s6
347:              srli         t6, t6, 24
                  addi         a6, s11, -1225
349:              bgeu         s1, s7, 353f
                  blt          ra, s0, 360f
                  addi         zero, s11, 838
                  nop
353:              sub          sp, a0, t6
                  srli         a7, s11, 23
                  auipc        s8, 515108
356:              xori         a3, s10, -1922
                  blt          a1, s10, 366f
                  addi         s1, s6, -111
                  slt          a0, zero, s8
360:              slli         sp, s2, 6
                  andi         t2, s0, 775
                  srai         a5, t3, 9
                  sub          a5, t3, s8
                  sltiu        a0, a3, 1376
                  beq          a0, s2, 366f
366:              bne          t5, s9, 382f
                  or           a0, a4, s9
                  xori         a7, t6, -1168
                  xori         t4, a2, 110
                  sub          s1, t5, s1
                  xor          s9, s7, s0
                  slti         s2, s6, 811
                  blt          a4, tp, 391f
                  xori         t1, t2, 243
                  srl          s7, s10, s3
                  addi         s1, t1, 217
                  ori          s0, zero, -580
                  add          s1, s6, s6
                  slti         s7, sp, -1773
                  blt          s5, a0, 395f
                  and          s11, s8, t2
382:              and          s0, s1, a2
                  bltu         t2, ra, 402f
                  add          a2, ra, t1
                  srl          a5, sp, zero
                  slli         a2, s4, 10
                  nop
                  add          a3, s5, t5
                  add          s9, s10, sp
                  or           s2, s5, t4
391:              srli         ra, s2, 6
                  sltu         s6, t3, gp
                  nop
                  srl          a2, t1, sp
395:              andi         t5, t4, -1041
                  slt          zero, a0, s2
                  srli         t1, a6, 25
                  slli         s10, t4, 28
                  or           t4, t2, t0
                  xori         t6, a1, -354
                  or           t3, s4, t3
402:              sub          s1, a4, s8
                  nop
                  bgeu         tp, a6, 422f
                  ori          t5, a7, -989
                  sll          a2, t3, a6
                  srai         sp, sp, 18
                  nop
                  or           gp, sp, s7
                  sltiu        s7, s2, 658
                  andi         t5, s6, 618
                  xori         a6, a6, 1192
                  slt          t3, zero, a1
                  sub          t0, t2, gp
                  ori          gp, s0, -1239
                  beq          s1, gp, 424f
                  add          sp, t1, a1
                  andi         s6, t3, 1344
                  sll          a1, a3, a5
                  beq          a6, a0, 426f
                  auipc        sp, 353951
422:              slti         sp, s5, 498
                  srai         a5, s9, 29
424:              blt          a6, gp, 442f
                  addi         s11, zero, -1683
426:              sltu         a1, a0, s1
                  bltu         t3, t6, 434f
                  xori         a2, a2, 804
                  srl          a0, zero, t1
                  sll          t4, a1, s7
                  bne          t0, s4, 447f
                  blt          s9, t0, 438f
                  sll          a7, a7, a6
434:              bne          t0, a7, 443f
                  bne          t6, a3, 444f
                  addi         a2, s2, 1742
                  beq          t0, a5, 451f
438:              xori         a1, tp, 119
                  sll          s9, a6, s5
                  slt          a2, s3, s0
                  srl          s0, gp, t5
442:              nop
443:              bgeu         s7, a2, 456f
444:              srai         s11, s6, 14
                  sra          s8, a4, s1
                  srai         s7, s1, 26
447:              blt          t4, a7, 460f
                  sltiu        s11, ra, -1073
                  sltiu        a6, s1, -923
                  xor          s7, a3, s8
451:              add          s10, sp, t6
                  auipc        s9, 393705
                  sltu         t2, s0, gp
                  srli         a3, t2, 6
                  addi         s8, a7, 198
456:              and          a6, a5, a1
                  bgeu         t1, t5, 475f
                  sub          a2, a2, t2
                  srai         ra, s9, 30
460:              sub          a3, s2, a1
                  sll          zero, t3, t2
                  sub          a6, t6, ra
                  andi         sp, t2, 1009
                  and          a3, s6, tp
                  blt          a2, s5, 474f
                  bltu         a1, s5, 478f
                  bgeu         s3, s8, 480f
                  bgeu         s11, gp, 483f
                  add          t4, a2, t0
                  beq          s3, s9, 479f
                  sltu         s7, a4, a5
                  auipc        s0, 227389
                  slti         a5, t0, -1756
474:              srli         gp, a2, 31
475:              bge          zero, s0, 476f
476:              auipc        s6, 494129
                  addi         s6, a0, 1538
478:              slt          t3, a6, a2
479:              srai         s8, a6, 1
480:              bgeu         a3, tp, 483f
                  bgeu         s5, s11, 483f
                  xori         s9, gp, -1006
483:              srli         t2, a4, 30
                  andi         a5, t4, -396
                  sra          t6, t1, s7
                  addi         t3, tp, 1082
                  lw           t1, 4(a4)
                  addi         a4, a4, 12
                  addi         t6, zero, -355
609:              addi x26, x6, 0
609:              jalr x26, x26, 0
sub_8:            slli         t4, zero, 15
                  add          s1, a4, a3
                  and          s2, ra, t1
                  beq          a2, s5, sub_8_stack_p
                  or           a5, a7, s5
                  sub          t2, a5, t6
sub_8_stack_p:    addi         a4, a4, -16
                  addi         t5, t3, 1048
                  and          a1, s11, t5
                  and          s8, t2, s4
                  slli         s1, s10, 23
                  sw           t1, 4(a4)
                  slli         a3, a2, 28
                  bge          s2, s0, sub_8_j11 #branch to jump instr
                  xori         zero, a6, 1800
                  nop
                  slti         t6, t5, -549
                  lui          s6, 454917
                  nop
                  add          s7, a4, t2
                  or           s4, ra, t2
                  nop
                  addi         a3, a0, -1541
sub_8_j11:        jal          t1, sub_9 #jump sub_8 -> sub_9
                  la           sp, region_0+1276 #start riscv_load_store_rand_instr_stream_0
                  sb           s1, -13(sp)
                  lbu          a7, -3(sp)
                  lui          s0, 725624
                  lbu          a0, 3(sp)
                  slti         a3, t2, 699
                  lw           zero, 12(sp)
                  lbu          t3, 6(sp)
                  sb           a7, 11(sp)
                  lbu          a7, -3(sp)
                  lbu          a0, -1(sp)
                  nop
                  andi         a1, t3, -1222
                  lw           a5, 0(sp)
                  or           t6, s7, s1
                  lhu          s4, 12(sp)
                  srl          gp, t3, s4
                  slt          a1, s9, a7
                  sh           t2, 6(sp)
                  sb           s1, -1(sp)
                  and          tp, t1, a5
                  or           a0, t2, ra
                  lhu          a5, -4(sp)
                  sub          zero, a4, a6
                  lb           t1, -10(sp)
                  slli         t0, s11, 10
                  sh           t4, -10(sp)
                  lhu          s11, 2(sp)
                  lb           a0, -11(sp)
                  and          gp, t1, a4
                  sltu         s7, ra, t2
                  sb           s1, 10(sp)
                  lbu          a7, 12(sp)
                  sb           s1, 14(sp)
                  lbu          gp, -7(sp)
                  sh           a6, -8(sp)
                  slt          a3, s1, s5
                  lui          s2, 498640
                  srai         t6, t2, 2
                  lw           s10, -12(sp)
                  sh           a2, -2(sp)
                  sll          a6, s4, s8
                  sw           a2, -16(sp)
                  srl          s0, a0, s5
                  sb           zero, -4(sp)
                  sra          s9, a4, a1
                  xori         s4, tp, -951
                  sb           tp, 10(sp)
                  add          s0, t4, t0
                  lui          a0, 398581
                  sb           t3, -15(sp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  andi         s8, s1, -972
                  sltiu        ra, t2, -2014
                  bne          tp, t0, 7f
                  auipc        a1, 869425
                  xor          a3, zero, gp
                  xor          t6, t5, t2
7:                bne          a3, zero, 19f
                  bge          s1, s10, 12f
                  add          s11, a7, sp
                  srli         s7, s10, 13
                  sub          a6, s4, t3
12:               srli         s7, a1, 14
                  and          s8, zero, sp
                  auipc        t1, 273613
                  ori          t5, t2, -390
                  lui          sp, 51040
                  slli         a5, s3, 19
                  sltiu        a0, zero, 1062
19:               bltu         zero, s11, 29f
                  sltu         a1, a6, t1
                  lui          a3, 429525
                  lui          sp, 901941
                  slli         t4, s9, 8
                  nop
                  sra          s8, s2, s10
                  slli         a5, a6, 14
                  xor          ra, s11, s1
                  bltu         t1, a4, 39f
29:               sltiu        t4, ra, 948
                  blt          s10, t0, 44f
                  sltiu        a7, a3, -647
                  sltiu        s0, t1, 1783
                  beq          a3, t5, 41f
                  srl          tp, a4, t4
                  sltu         t2, a1, t5
                  addi         s9, sp, -1388
                  nop
                  xori         a6, s4, -1055
39:               bge          a0, t2, 47f
                  nop
41:               bge          a1, s11, 45f
                  slti         s10, zero, -1493
                  xor          t2, s3, t1
44:               and          s8, s2, t3
45:               srl          a2, t3, t2
                  beq          t6, a0, 65f
47:               and          zero, t0, sp
                  slti         t6, a6, -1319
                  xor          a1, s7, s7
                  bne          a2, a2, 65f
                  bge          tp, ra, 58f
                  ori          a5, a0, 619
                  srli         a5, t4, 30
                  add          a2, a4, s3
                  xor          sp, a0, s10
                  andi         s9, tp, -717
                  beq          a2, a2, 62f
58:               or           t5, a4, a7
                  sltu         s10, s9, s1
                  or           t4, s1, a1
                  srli         t5, s0, 15
62:               slli         a6, t5, 20
                  or           sp, a2, a2
                  auipc        a6, 725550
65:               beq          a2, a1, 82f
                  slli         s4, s8, 22
                  sltu         s11, s7, a5
                  srl          t5, a3, a5
                  nop
                  and          t0, t1, s8
                  blt          s4, s0, 75f
                  srl          s0, s6, t5
                  beq          t3, a0, 76f
                  andi         s10, s1, 1276
                  slti         t5, a2, -472
                  xor          a3, s10, t4
                  bgeu         t1, ra, sub_8_j12 #branch to jump instr
                  andi         s7, s4, -1008
                  slli         sp, s8, 16
sub_8_j12:        jal          t1, sub_9 #jump sub_8 -> sub_9
                  add          s1, t6, t2
75:               srli         t6, s9, 2
76:               xor          t0, s9, t3
                  sltiu        s8, t4, 347
                  addi         t1, s3, 827
                  slli         s0, s10, 26
                  blt          a3, s9, 84f
                  slt          a1, sp, t3
82:               lui          s11, 169121
                  xor          a1, s0, t3
84:               bge          s10, t2, 89f
                  lui          s0, 243951
                  sll          s11, a7, a3
                  sub          s10, a0, s7
                  xor          s10, a2, s3
89:               srai         s0, t4, 1
                  lui          tp, 527943
                  srli         s4, a4, 10
                  srli         s8, a1, 15
                  and          a2, s3, a6
                  bgeu         gp, t0, 99f
                  addi         t1, s3, 269
                  or           s9, t5, s1
                  or           s1, t1, tp
                  addi         s6, zero, -748
99:               bltu         t6, a3, 116f
                  srli         t0, s11, 31
                  srli         t4, s1, 22
                  bltu         s9, s10, 118f
                  beq          sp, zero, 116f
                  addi         t6, t3, 2020
                  srli         t6, t6, 17
                  beq          a1, t2, 126f
                  sll          t2, s0, t3
                  ori          gp, a1, -159
                  add          s11, a2, s3
                  slti         t2, zero, 739
                  sub          s10, t5, t2
                  slli         s6, t4, 2
                  beq          t3, a1, 127f
                  srli         s9, t6, 26
                  auipc        tp, 297490
116:              addi         s4, s0, -316
                  ori          s2, a5, -152
118:              sltu         a2, s4, sp
                  bgeu         s4, a1, 124f
                  or           s7, s3, sp
                  add          t4, t2, s6
                  slti         a0, s7, 1776
                  andi         s0, a7, -2044
124:              bne          a0, t1, 135f
                  and          s9, s0, t4
126:              ori          a1, s5, 1565
127:              srai         a2, t3, 19
                  sltu         a2, s3, t6
                  or           s1, s8, zero
                  add          t2, ra, a0
                  sub          t4, s1, t2
                  add          s4, a1, s6
                  auipc        sp, 796310
                  lui          s0, 478940
135:              ori          zero, s6, -1773
                  sub          ra, a6, s0
                  slt          s1, sp, s3
                  xor          t6, t0, s7
                  sll          s0, s10, a3
                  sub          ra, s8, s4
                  sll          a2, t3, t6
                  auipc        s1, 727115
                  andi         a1, zero, -1873
                  andi         t1, t6, -1136
                  auipc        s11, 303300
                  and          a2, gp, s2
                  slli         a1, a6, 14
                  slli         a2, s1, 6
                  add          s1, s3, a7
                  bltu         a2, a0, 151f
151:              slt          s10, sp, a2
                  add          a6, s6, s0
                  lui          a2, 595061
                  sub          s9, a5, gp
                  blt          s2, s8, 158f
                  srli         s8, sp, 6
                  bne          s9, s4, 161f
158:              sub          t2, t2, s4
                  blt          t4, s0, 173f
                  blt          t3, a2, 165f
161:              ori          a7, s10, 1629
                  slti         t2, ra, 1245
                  ori          t4, t6, -152
                  blt          a6, s6, 169f
165:              bne          a3, t4, 168f
                  sltu         t6, t6, a2
                  srai         s1, t2, 24
168:              sltiu        a3, a4, -285
169:              add          t2, s9, t1
                  sra          s4, t2, s5
                  xor          t1, s4, a6
                  bne          t5, a0, 180f
173:              bne          t4, s9, 180f
                  srl          t0, a7, s8
                  sub          sp, a7, a1
                  bltu         a0, a4, 189f
                  sll          a2, s2, t1
                  beq          a5, s7, 189f
                  bge          s5, s7, 194f
180:              blt          t0, t4, 185f
                  srli         s9, a5, 4
                  xori         s6, a0, 1874
                  sltu         a5, a7, s6
                  andi         s8, s10, 224
185:              addi         t6, s9, 738
                  add          t1, ra, a1
                  blt          s7, a3, 191f
                  nop
189:              nop
                  sub          a0, t6, a4
191:              nop
                  ori          sp, t5, 374
                  slt          s6, a7, s5
194:              srli         tp, ra, 20
                  lw           t1, 4(a4)
                  lui          a3, 561196
                  slti         a0, s9, -584
                  addi         a4, a4, 16
                  slti         gp, s8, -864
282:              addi x26, x6, 0
282:              jalr x26, x26, 0
sub_1:            blt          gp, a0, sub_1_stack_p
                  add          a1, s11, a5
sub_1_stack_p:    addi         a4, a4, -48
                  nop
                  andi         s8, zero, 1593
                  andi         a1, a6, -37
                  sw           t1, 4(a4)
                  or           t5, zero, tp
                  la           sp, region_1+1152 #start riscv_load_store_rand_instr_stream_1
                  lb           s10, 13(sp)
                  sub          s9, s11, zero
                  sb           t6, 7(sp)
                  sb           a2, 8(sp)
                  nop
                  sh           a7, -16(sp)
                  sra          s4, a2, s3
                  auipc        t5, 761140
                  srl          s0, s9, s8
                  sb           a1, 11(sp)
                  xor          a1, s4, a5
                  srli         t2, a6, 5
                  sb           a6, -9(sp)
                  sh           s9, 6(sp)
                  sb           a5, 3(sp)
                  or           zero, s0, s4
                  lb           s9, -9(sp)
                  sltiu        a7, ra, 445
                  sltu         a6, a1, zero
                  add          t5, t1, t2
                  lbu          t0, 13(sp)
                  auipc        a6, 1005689
                  sh           zero, 4(sp)
                  sra          gp, t2, s3
                  sb           s1, -7(sp)
                  lh           a5, -8(sp)
                  lbu          a1, -5(sp)
                  auipc        s8, 253714
                  lh           s9, 2(sp)
                  srli         s11, a6, 29
                  lui          t3, 772861
                  lb           tp, -9(sp)
                  sb           t4, -15(sp)
                  sh           s6, -2(sp)
                  sh           a0, 10(sp)
                  lbu          ra, 6(sp)
                  xori         t4, s9, -1035
                  lh           tp, -6(sp)
                  xori         zero, zero, 1782
                  lb           t0, 1(sp)
                  srli         s7, ra, 5
                  or           ra, tp, s7
                  lbu          s10, -16(sp)
                  sra          s9, s4, s6
                  slt          a7, s7, a2
                  nop
                  lbu          a2, 8(sp)
                  sb           a0, 7(sp) #end riscv_load_store_rand_instr_stream_1
                  or           s4, ra, a0
                  auipc        a0, 964097
                  sub          gp, t2, a0
                  nop
                  slti         t1, s9, 1165
                  bgeu         t0, t1, 15f
                  slt          a2, s8, s10
                  beq          s1, s9, 12f
                  slti         t4, a7, 107
                  bgeu         s5, a0, 20f
                  lui          t4, 225574
                  sll          tp, a6, s6
12:               sub          a1, s5, s0
                  srli         s4, a3, 30
                  blt          a7, s6, 18f
15:               xor          s8, a0, s3
                  xor          t0, t3, s5
                  nop
18:               xor          a2, a1, t3
                  xor          s0, s7, a2
20:               lui          t4, 927740
                  bne          a3, t0, 27f
                  addi         t4, s3, 285
                  bne          a6, s10, 24f
24:               slt          s10, a3, a5
                  bne          a5, a7, 35f
                  lui          a1, 838571
27:               xor          s10, s2, t3
                  addi         ra, t2, -1550
                  bltu         tp, s5, 43f
                  bgeu         t0, a1, 38f
                  srai         a5, a4, 22
                  ori          s9, s3, 1445
                  or           s4, ra, s7
                  bge          s1, t0, 47f
35:               bltu         s11, tp, 40f
                  bltu         t6, s5, 39f
                  bgeu         a0, t2, 45f
38:               add          sp, s7, t0
39:               ori          a1, sp, -2006
40:               or           a0, a6, s5
                  xori         s8, s11, 1045
                  sub          a6, s9, t6
43:               sll          t6, t6, a7
                  andi         s4, a0, 713
45:               slt          a6, s6, ra
                  blt          s11, s9, 66f
47:               bltu         a0, t4, 65f
                  lui          t4, 638889
                  sub          sp, a7, gp
                  beq          sp, t4, 55f
                  bgeu         sp, t6, 56f
                  srli         a7, t2, 21
                  slli         t4, a3, 25
                  sub          s2, a0, s10
55:               sll          gp, a5, s9
56:               beq          a7, t3, 57f
57:               bne          s6, s1, 74f
                  sltu         a3, t4, t5
                  srai         s6, a5, 24
                  addi         sp, s0, -701
                  bge          s7, s11, 73f
                  andi         sp, t0, -1808
                  bne          s6, zero, 70f
                  bgeu         a7, a2, 75f
65:               slt          a7, gp, zero
66:               bge          t1, ra, 78f
                  srli         t2, a6, 12
                  srai         a7, a3, 19
                  or           s2, s3, s10
70:               slli         t2, a3, 25
                  sltu         t6, t5, s6
                  bge          s0, s10, 85f
73:               bne          s0, s1, 82f
74:               slli         s4, sp, 20
75:               srl          a6, a6, t1
                  sra          t6, s2, a4
                  auipc        a6, 624222
78:               addi         a7, s0, 547
                  sra          gp, s11, t4
                  auipc        t3, 764572
                  srl          a7, s7, a7
82:               xori         s7, s10, 1377
                  nop
                  auipc        t5, 181622
85:               andi         ra, gp, -588
                  andi         s0, a3, 1456
                  bltu         a0, a4, 97f
                  la           t0, region_1+1392 #start riscv_load_store_rand_instr_stream_0
                  sh           t3, -6(t0)
                  lhu          t1, 4(t0)
                  sb           a2, 3(t0)
                  srli         a0, sp, 22
                  lhu          a5, -4(t0)
                  lui          t1, 379094
                  sb           s6, 6(t0)
                  auipc        t1, 608134
                  srai         t6, ra, 15
                  lb           s2, 11(t0)
                  lb           t3, 1(t0)
                  lbu          s10, -7(t0)
                  lbu          t6, 1(t0)
                  srli         s0, a4, 20
                  lb           a5, -5(t0)
                  xori         a7, s6, 1658
                  lb           t6, -13(t0)
                  lbu          tp, -2(t0)
                  sb           s4, 7(t0)
                  or           t5, t5, s1
                  lb           tp, 11(t0)
                  lb           a0, -7(t0)
                  sra          a5, s6, s8
                  sb           s3, 8(t0)
                  nop
                  srai         sp, s4, 4
                  sb           a2, -12(t0)
                  lbu          s2, 15(t0)
                  lb           s10, -2(t0)
                  lbu          t2, 12(t0)
                  slt          zero, a2, a5
                  sb           s1, 9(t0)
                  lh           a0, 6(t0)
                  lhu          a3, 16(t0) #end riscv_load_store_rand_instr_stream_0
                  and          t0, tp, a4
                  bne          a3, a5, 109f
                  nop
                  srli         s10, t1, 14
                  srli         s10, a2, 20
                  addi         s9, s10, 578
                  ori          gp, s10, -666
                  sra          ra, a5, a3
                  add          s6, s6, a1
97:               or           ra, s9, a7
                  xori         ra, zero, 582
                  slt          a0, t5, s1
                  xor          zero, t2, zero
                  sltiu        t3, s10, -495
                  bne          a1, s4, sub_1_j4 #branch to jump instr
                  sltiu        s7, s5, 1541
                  nop
                  and          a3, s3, s3
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  bge          t5, a3, 103f
                  nop
                  sltiu        t5, t5, 1482
103:              or           a7, a7, t4
                  or           s2, s9, a4
                  sra          a2, a5, a3
                  ori          a7, t4, 792
                  xor          t2, t2, t2
                  slli         s9, t0, 0
109:              sltu         a6, a4, a1
                  beq          zero, t6, 126f
                  srai         s10, zero, 11
                  bgeu         t2, a2, 127f
                  slti         ra, zero, 1144
                  srai         zero, a6, 7
                  sra          t3, a3, gp
                  sll          zero, s2, zero
                  sub          sp, s4, s6
                  slti         a1, zero, -1656
                  beq          zero, s1, 122f
                  add          t0, a2, a5
                  xori         t6, s1, -592
122:              xor          s4, a7, t3
                  ori          ra, a1, 1927
                  sll          t2, s11, s8
                  and          s0, a2, a3
126:              srai         a1, s7, 7
127:              blt          s11, s2, 139f
                  slt          sp, t6, s0
                  add          s0, t2, a7
                  auipc        s2, 176659
                  slli         s1, s9, 19
                  bne          sp, zero, 133f
133:              slt          a1, a4, a0
                  sll          a5, a4, s0
                  slli         a0, a0, 16
                  xor          zero, t2, sp
                  slli         s2, a1, 6
                  bgeu         s0, t0, 156f
139:              xor          a5, t6, tp
                  xori         ra, s9, -1136
                  xor          t4, t1, a2
                  andi         a3, s1, 1838
                  ori          t6, s8, 373
                  slti         tp, t5, -979
                  blt          s0, a2, 165f
                  lui          a1, 421711
                  add          a1, a1, t0
                  auipc        t4, 626526
                  auipc        s7, 147512
                  sltiu        tp, a6, 646
                  add          zero, s5, t6
                  bltu         s3, a5, 163f
                  srl          t6, a5, a0
                  and          s11, a7, a2
                  bltu         t4, a3, 163f
156:              srli         t4, a7, 16
                  blt          s3, s7, 162f
                  bgeu         s2, sp, 172f
                  xori         a5, t5, 1203
                  slli         s9, a4, 7
                  sltu         a1, s11, s10
162:              sltiu        s6, s3, -149
163:              bltu         t2, a0, 173f
                  slti         t6, s2, -1762
165:              srl          t5, a4, t1
                  beq          sp, s9, 171f
                  auipc        a1, 30386
                  beq          s7, a5, 179f
                  bgeu         a5, zero, 182f
                  auipc        s2, 318780
171:              blt          a5, t1, 180f
172:              andi         a0, s0, -435
173:              sltiu        s8, t2, -604
                  slli         a3, sp, 20
                  sll          a2, s11, s9
                  lui          a5, 706652
                  slti         t3, ra, 96
                  bltu         s1, s0, 193f
179:              srli         s0, a7, 6
180:              sltu         a2, a0, s8
                  sra          a3, a0, a5
182:              add          ra, a5, a0
                  beq          a6, s6, 196f
                  slt          t0, ra, s1
                  srli         a3, ra, 15
                  sltiu        s10, t1, 782
                  or           gp, sp, t6
                  xor          a3, s0, s10
                  slti         s9, s6, -956
                  ori          t0, s11, -287
                  xor          s1, s5, tp
                  add          t0, zero, t2
193:              add          t1, a3, t6
                  lui          s1, 569439
                  and          s4, s9, a3
196:              sltu         a1, gp, t6
                  xor          s2, zero, a5
                  sltu         tp, s1, s3
                  or           a0, t2, s3
                  sltiu        s9, a2, -213
                  slt          t6, s10, s4
                  and          sp, s9, s4
                  ori          s2, s7, 789
                  sltiu        t4, t0, -1446
                  sll          a7, s5, s2
                  bge          s4, s9, 222f
                  blt          a2, s10, 227f
                  sub          a0, s11, a0
                  sltiu        s8, s2, -1206
                  sll          zero, t3, a5
                  and          s8, a2, s2
                  sra          zero, s10, t6
                  bne          a0, t5, 221f
                  auipc        s1, 381242
                  srli         t3, t2, 25
                  xori         t1, ra, 1036
                  add          gp, s8, tp
                  xori         ra, t6, 1932
                  nop
                  sub          t3, t3, gp
221:              xori         t1, a7, -11
222:              sra          ra, ra, tp
                  srl          a2, a1, t4
                  xori         t2, ra, 1657
                  nop
                  sra          s4, s9, s7
227:              srl          s2, a0, s10
                  slt          s6, t5, t4
                  xori         s7, s8, -1503
                  blt          gp, t2, 231f
231:              sltu         a5, sp, t5
                  slt          a5, a0, s2
                  andi         tp, tp, -286
                  sub          s4, t2, a0
                  beq          t0, s8, 240f
                  addi         s8, sp, 1622
                  srli         a1, s1, 17
                  nop
                  beq          t0, t4, 243f
240:              ori          s4, a4, -185
                  and          a1, a1, s10
                  auipc        sp, 809137
243:              srai         s7, t6, 16
                  add          s1, s6, s1
                  bgeu         a5, t4, 252f
                  and          a1, t3, zero
                  addi         t2, a3, 214
                  bge          s7, s2, 258f
                  bne          t4, t2, 259f
                  bltu         s7, gp, 267f
                  add          s0, s8, s6
252:              add          tp, s4, a1
                  lui          s7, 1025531
                  bne          gp, zero, 266f
                  slli         a2, sp, 31
                  srli         s10, s3, 16
                  sub          s9, s10, a0
258:              xor          t6, a7, s11
259:              srai         a1, s1, 5
                  sltu         t5, tp, a0
                  blt          t5, t5, 264f
                  srli         t2, t5, 5
                  nop
264:              add          t5, sp, s11
                  bne          zero, t2, 270f
266:              beq          s1, a1, 272f
267:              srai         s7, t0, 13
                  sltu         a3, s7, t2
                  andi         s4, t2, -1753
270:              and          t0, t4, t2
                  blt          a1, s8, 279f
272:              slt          s8, a1, s3
                  slt          s7, s2, a3
                  srai         s2, a3, 19
                  slti         a5, t1, -1079
                  ori          s4, zero, 1742
                  auipc        zero, 478273
                  slt          a0, s1, ra
279:              and          t2, s7, s5
                  xori         s1, t1, 1492
                  slli         a6, a2, 26
                  sub          t4, t4, t6
                  nop
                  xor          s10, s0, a3
                  andi         ra, a1, -1276
                  sll          t4, s0, s10
                  auipc        t3, 799917
                  blt          zero, s8, 297f
                  sra          a7, ra, tp
                  nop
                  add          sp, s4, s8
                  slt          s6, s8, s0
                  lui          ra, 212435
                  blt          a0, s10, 305f
                  srai         sp, a1, 6
                  xori         t5, t5, -1426
297:              add          gp, s6, a4
                  srli         t6, s8, 26
                  auipc        s8, 143532
                  sltu         s4, tp, s8
                  or           a5, t3, s4
                  beq          a4, sp, 316f
                  srli         t3, tp, 23
                  add          a7, s1, s11
305:              sll          a1, s11, ra
                  sll          s6, s7, s11
                  and          t3, a0, t5
                  auipc        t1, 372907
                  bne          s10, t6, 329f
                  sra          s8, tp, s5
                  ori          t0, s4, -1325
                  srl          zero, s9, t2
                  bne          t5, s4, 321f
                  nop
                  slli         s0, t6, 25
316:              slti         s0, s8, -282
                  addi         sp, s5, 1431
                  bltu         s11, s11, 319f
319:              xor          t2, gp, s2
                  srl          a5, s3, t3
321:              nop
                  xor          a6, s9, a5
                  srai         s0, s1, 27
                  bne          sp, t6, 325f
325:              and          t1, t4, tp
                  sll          s4, a7, s6
                  sll          gp, s9, ra
                  bge          s7, s6, 343f
329:              sltu         t4, s9, s4
                  bne          s9, s6, 333f
                  srai         gp, s1, 30
                  xori         a0, a6, 472
333:              blt          a7, a4, 343f
                  nop
                  sltu         t6, s8, s3
                  srai         a5, a6, 13
                  sll          t2, t4, a2
                  add          s7, s11, t3
                  bltu         t1, tp, 344f
                  nop
                  or           a1, a6, a0
                  andi         a2, sp, -379
343:              bgeu         t2, a3, 347f
344:              sra          t5, s3, t1
                  srli         a0, t6, 25
                  srai         zero, s7, 9
347:              sub          s9, s10, s1
                  sltu         a6, a0, a5
                  srai         s7, s2, 11
                  nop
                  sll          s8, zero, s6
                  lw           t1, 4(a4)
                  nop
                  add          a6, a6, s10
                  lui          t2, 226
                  sltu         s10, s10, a5
                  addi         a4, a4, 48
                  srli         a1, s5, 9
458:              addi x26, x6, 1
458:              jalr x26, x26, 0
sub_9:            xor          s6, s5, a5
                  addi         a4, a4, -56
                  addi         s2, sp, -745
                  addi         s10, s9, -751
                  sw           t1, 4(a4)
                  srai         s9, ra, 2
                  and          sp, gp, s2
                  xor          s11, t6, t0
                  sub          s8, a3, tp
                  andi         t4, t5, 345
                  la           s6, sub_10
                  addi         s6, s6, 532
                  sltu         s0, sp, t3
                  sltu         sp, s8, gp
                  bgeu         a6, s8, sub_9_j13 #branch to jump instr
                  sra          t3, a5, t4
                  xor          a0, a4, a5
                  slt          s7, a5, t3
                  andi         a5, zero, -617
sub_9_j13:        jalr         t1, s6, -531 #jump sub_9 -> sub_10
                  or           sp, t4, t0
                  auipc        t1, 848496
                  sltiu        a2, s10, -1069
                  srli         s1, s9, 22
                  xori         a7, a3, 385
                  ori          a1, s7, -305
                  sra          a0, zero, s9
                  andi         a7, s1, -1318
sub_9_j14:        jal          t1, sub_10 #jump sub_9 -> sub_10
                  srl          s0, t0, t5
                  sltu         s6, a2, s8
                  addi         t2, s11, 2043
                  slli         s7, s5, 2
                  srl          s8, s5, s6
                  bgeu         sp, a1, 11f
                  sra          s11, t6, s9
                  or           s8, s8, t4
                  sra          tp, s3, a3
                  addi         a2, t0, -642
                  slti         a0, s11, 1506
11:               srai         t0, a2, 7
                  blt          a2, a7, 16f
                  slli         s2, s3, 6
                  bgeu         a2, a0, 32f
                  sltu         t4, gp, s11
16:               srai         a0, s9, 16
                  slti         s1, s0, 809
                  xor          t3, s1, a2
                  blt          zero, a5, 27f
                  slt          a7, s1, a3
                  sltiu        s7, t1, 137
                  sra          t4, t1, a0
                  slti         a1, t2, 725
                  sltiu        s8, sp, -642
                  blt          a5, s2, 33f
                  andi         s11, sp, 1439
27:               sll          s2, gp, t5
                  sltu         s1, a3, a0
                  slli         gp, a3, 29
                  andi         t0, a0, 756
                  bge          t3, ra, 32f
32:               and          gp, s0, t0
33:               sra          a3, s9, s11
                  addi         s4, s7, 211
                  add          a7, zero, s2
                  or           s7, s2, s6
                  andi         s6, a5, 1300
                  auipc        s9, 14992
                  andi         a6, t0, 1505
                  andi         t5, s7, 1589
                  xori         s8, s7, -1528
                  srai         t1, t1, 3
                  sltu         t2, s7, s1
                  ori          a5, a6, 241
                  slli         a3, s11, 23
                  xori         t2, s0, 2009
                  sltu         a1, s1, a7
                  and          s0, t0, s2
                  sll          gp, a4, a6
                  andi         t3, zero, -1849
                  bge          t4, gp, 57f
                  bge          t2, a7, 53f
53:               bne          s9, a2, 54f
54:               bne          s7, zero, 55f
55:               slli         a6, a3, 11
                  slt          gp, s4, t5
57:               and          t6, t6, t0
                  lw           t1, 4(a4)
                  srl          zero, gp, s5
                  addi         a4, a4, 56
                  srai         s10, a3, 0
                  sub          gp, t4, a5
92:               addi x3, x6, 0
92:               jalr x3, x3, 0
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
.word 0x579b9fea, 0x7740b978, 0xeb0138fe, 0x9bb6e2fb, 0x4bdea779, 0x11be5231, 0xed6fd12e, 0xffa01e53
.word 0x6d875fae, 0xbee73b2d, 0x0c967ae0, 0xddf95fec, 0x705f35a5, 0x35ce788a, 0x0236d264, 0x6e4e1c31
.word 0x4820e212, 0xaaa832d9, 0x1eafe6be, 0xd812e77d, 0x3f3f1399, 0x28f05842, 0x9e51646f, 0xcdff0d3e
.word 0x97361efb, 0x852e450d, 0xca9fdd56, 0xecaa957d, 0x46d9fa75, 0x1adacc1c, 0x9348103c, 0xc9bbb863
.word 0x6384f262, 0x0b7bb50b, 0xfdf48533, 0x09d8d653, 0x0f7d8f22, 0xc6419033, 0xc9644b98, 0xc8b2c34e
.word 0xb9be8378, 0x2d5c0ff2, 0x74c5f6ec, 0xac2acb90, 0x5d52bece, 0x357517e3, 0xa933c327, 0xe960d496
.word 0x7ed7acd4, 0x33e83b3b, 0x99062458, 0x6d068cc1, 0x318e4114, 0x977fbbe4, 0x5f8658e8, 0x435a1848
.word 0x9310b6f4, 0x7b0f9423, 0x2d950d36, 0x9b2c3e39, 0xdc35ef5d, 0x13ec0268, 0xbf0c5252, 0xf210c3aa
.word 0x87e0817a, 0xab75ecd6, 0x906aa475, 0x005ee732, 0xff80515c, 0xb11a965c, 0x7d7dac35, 0x86af6214
.word 0x6a2d3e04, 0x298d8472, 0x6e00999d, 0x911483f7, 0x809ecafa, 0xc5cb5bd0, 0x1032dbfe, 0xd3570408
.word 0xf57e94ce, 0xb4c07752, 0xcc0eb2e1, 0x43aea88b, 0x169b83dd, 0x503d5117, 0x74f8f457, 0x2636f49a
.word 0x311ed873, 0xa39296e5, 0x2871f6fe, 0x444d314e, 0xcea25d11, 0xde473279, 0x6459ea65, 0xf3c289fa
.word 0xf372351e, 0x397113c0, 0x108adabe, 0x74102ff2, 0x3c55171d, 0x60b8eb1e, 0xc61144fb, 0x5639d2d7
.word 0xa28149fa, 0x54a3b1d4, 0x49aec4c0, 0x04e5c356, 0x502cf9f8, 0x22d617b2, 0xc6002b1f, 0xf85f896e
.word 0xfe035585, 0x2ee57eb0, 0xd86d3929, 0xb930e779, 0xb20fbb89, 0x0f5d66b7, 0x5a8d1b8f, 0x65f1174a
.word 0x964335d3, 0x77632051, 0xff3d3ef6, 0xf22d78fa, 0x8ef154d7, 0x86b4fcf9, 0x69ee5ada, 0x5939cf1f
.word 0x17629261, 0x968724b4, 0xad234c2e, 0x9e763c3f, 0x22d0e607, 0x27cbbda1, 0x17ea2100, 0x4f0ae15b
.word 0xcc1c00d6, 0x4856b6c6, 0x30276978, 0x0419c0ef, 0xf0fa7ecb, 0xf7883199, 0x22eaee31, 0x773898d5
.word 0x35723709, 0xee693b38, 0x2efe17d0, 0x6a86a3fd, 0xb74177da, 0x6eedcb01, 0xbefcb891, 0x51668091
.word 0xd745577c, 0x346bce25, 0x54bd0ce4, 0x8d88b7f5, 0x16be4a5d, 0xf0fcf16a, 0x8bbef73a, 0x1e218cd6
.word 0x906e1068, 0x17d7a52a, 0x8b538a5a, 0xeb8f9651, 0xa7442c4a, 0x39211f1e, 0xfaa164e0, 0x3eb5d7f8
.word 0x4032b756, 0x4effa64b, 0x223a68b2, 0xcaeaf923, 0xd0525ab8, 0x8cf3ca71, 0x3512f388, 0xf6d334f3
.word 0x6de66164, 0xdbfce801, 0x43db8938, 0xbfc20502, 0xb5507658, 0x13ba0f39, 0xf7db3a22, 0x2d9e869a
.word 0x9b45c20e, 0x06c169cd, 0x517bc272, 0x51481e38, 0xb83604e8, 0x34875a10, 0x73af4624, 0x73714188
.word 0xbfe508ee, 0x176b8aa0, 0xde5adfb1, 0xf352bd30, 0xcae9d0fe, 0x66c49564, 0x39e881e3, 0xd255cf6a
.word 0x9aee5bc1, 0x054ae01e, 0xb76e91fb, 0xe948c1c9, 0x71e27460, 0x96d791f8, 0x7f9091e6, 0x18ecd73c
.word 0xd52e1ffd, 0xb86fc827, 0x7f758852, 0x7e405554, 0x8eaa3ae8, 0x945b3501, 0x88ba8feb, 0x5d2cd1e2
.word 0x7055f750, 0x560b263b, 0x404fc4e1, 0x30f0212a, 0x7af8b5e9, 0x8a27eb98, 0x49d612ff, 0x6e76fc58
.word 0x148bf264, 0x9a8c8778, 0x6f24c429, 0xabeb0070, 0x339d15c2, 0x8cc574fa, 0x5b338023, 0x76ff89b9
.word 0x45b649ab, 0x3b8f9053, 0x7f4f96e2, 0x2c5950a7, 0x06cfd0e8, 0x0e99b203, 0xaa6848c3, 0x3b44050d
.word 0x3dd83a16, 0x7739a0bb, 0xa2a3dced, 0xe508f6ea, 0x8a56091c, 0x242818ed, 0x83b50daf, 0xeb9af5b6
.word 0x44e397e1, 0x765e0b1d, 0x72142e5b, 0x8dc542d7, 0x51d09d91, 0xc5e22dfb, 0xbc5fddc5, 0x4c8d0cd0
.word 0x87b84310, 0x5d106620, 0x4669585c, 0x2a24c93f, 0xbe50ff44, 0xe36adf90, 0xf31b9f2f, 0x2bafc0c8
.word 0x88650b0f, 0x24f5d691, 0x9ace337a, 0x71825cac, 0x74fb1df9, 0x7c5b1b5f, 0xe8325333, 0xf59f00d2
.word 0xda4ab441, 0x1e966299, 0x8b3e9572, 0x6eef6f33, 0xa882a305, 0xeba0308f, 0x03ae7cb1, 0x857c6db6
.word 0xfb27a7c1, 0x380fa723, 0x5fd7c67c, 0x0ce9ac1a, 0xb92e7205, 0x9e7a0926, 0xd8ed507c, 0x5a79bd45
.word 0x047201d8, 0xce4dbeeb, 0xdea39775, 0x5df43a4f, 0xe9535547, 0x54c1e340, 0x08daea1d, 0xcb22f7f0
.word 0x2b9a1e81, 0x9e7532a2, 0x577df153, 0xde70c62b, 0xe5d6fec7, 0xb66cd998, 0xe52b27bf, 0x7d3acb73
.word 0x884af667, 0x50b6676d, 0xcf1d6dc2, 0x8ce6c3a4, 0x96fe9cf8, 0x005d2c3d, 0x6caeb6e2, 0xfbab3b4a
.word 0x5e535f54, 0x7a9edebb, 0x234017fe, 0xd440058c, 0xd2aaa651, 0x3324bd23, 0x82114552, 0xf2e1d964
.word 0xb0ad254a, 0xa0199060, 0x28da682d, 0xa5412714, 0xd8e259d3, 0x9c6d0b8e, 0x83be4535, 0x9b294e31
.word 0x4e2d202b, 0xab1389e8, 0x9d483b2e, 0x2ded7c82, 0xb7171946, 0xd03d4b8d, 0xb771e4db, 0xdb9a0c09
.word 0xbc3750ba, 0xae02c788, 0x5ead90d6, 0x71d57a25, 0x1f64c9b5, 0xcb60d01f, 0xf67d8132, 0x9b1c2f2f
.word 0xa6bc5d7b, 0xd1bf35da, 0x617db11f, 0xdf973e75, 0x3fe2e4e4, 0xdceea446, 0x8b3d305f, 0x058c555b
.word 0x8776c6d9, 0xe53ebf42, 0xa67fe519, 0xb5e2ad84, 0x540f61da, 0xb44bad86, 0xca63b178, 0xd406be6b
.word 0x92a1b866, 0x85c849d8, 0xca6946c2, 0x301e3b62, 0xc5228aca, 0x6494f5c2, 0x00a8b554, 0x39c71c89
.word 0x1e66da25, 0xfd41a122, 0x21dc24d4, 0x9b81f88d, 0xe7369653, 0xb352e5da, 0xd5d38af3, 0xecdb9099
.word 0x08ef5636, 0xaae3d0ba, 0x0aeea7c5, 0xd682c125, 0x83608c0d, 0xe42cfcbf, 0xb70ae371, 0xa1b0c800
.word 0x09f8c9b4, 0xf9f78504, 0x88a15e1a, 0x05057cf2, 0xd15f5f22, 0xa877727f, 0x66dde308, 0xcedc7ed5
.word 0x8d751998, 0xa6236bc7, 0x2886fd7c, 0xe72f1ad3, 0x582b75c2, 0x8593e7ee, 0xd1d2ed58, 0x5880c7ec
.word 0xeaa45c79, 0x4158fca4, 0xc691a640, 0x0a66d8f9, 0xa1a3bf78, 0x907e0dbb, 0x0579c78f, 0xc4f63125
.word 0xc37c6054, 0x169cdee4, 0x2e0677b3, 0x617c985f, 0x04bfd478, 0x7b2e87c8, 0x1e5fb786, 0x105df6ce
.word 0xeb4b866b, 0x4709a322, 0x0fe1ba10, 0x41446274, 0xb3d2cc89, 0xe6eb033e, 0x59630f7d, 0xc68c3e47
.word 0x4a19ea58, 0x6aa85687, 0x3ad0ed2f, 0xfcda4a65, 0x91115e60, 0x9584c191, 0x518fb32f, 0x99ea0b27
.word 0xbf9cfa06, 0xe591c0d7, 0xd441da2f, 0x3c2349f9, 0x3d8ef7af, 0x44e873e0, 0x27a8f7ed, 0xea0c16f8
.word 0xfb344b2b, 0x318b573e, 0xaa602677, 0x8486326f, 0x6d120c2f, 0xc60e0309, 0x5dce5cfb, 0xa15f0951
.word 0xc4a99165, 0x3c39d935, 0xb892da9d, 0xebaa5375, 0xe2aa6633, 0x2e49c330, 0xfc161e9b, 0x08f0743c
.word 0xcbff2abd, 0x66b44012, 0x1e69468a, 0xc36eaf9e, 0xd2de5bc6, 0xdeb445a2, 0xf7ed9e35, 0xc222c57f
.word 0xe835495e, 0x17d15f66, 0x2bb2aa2c, 0xffe4ffa8, 0x9dbd7d2b, 0x7b8bd696, 0xcb725347, 0x1716b469
.word 0x0717b14e, 0xf5d448d3, 0x02d566e6, 0x4fee6f29, 0xf08c9df5, 0x8709d84c, 0x113dc29d, 0xdeee5e10
.word 0xf3e79141, 0x47cc8789, 0x65569b73, 0x0a5f2017, 0x098a9a1b, 0x33b1fce9, 0xfaaff5d2, 0xfc2dcd7f
.word 0x6397eb9c, 0x9da1f4b6, 0x9255f0eb, 0x03e8369e, 0x0a90a522, 0x1b77720f, 0xf224fccb, 0xf08bc437
.word 0xeb5c7e18, 0x7adc574a, 0x978441a8, 0x0714e84e
.section .region_1,"aw",@progbits;
region_1:
.word 0x2666c8b1, 0x30608dc4, 0x54538894, 0x38d0ba79, 0x625cc94d, 0x3e1a597e, 0xf43205d8, 0x312f9070
.word 0x2271ea84, 0x9d826dba, 0x4b9c4dbc, 0xfc8b3ef3, 0x4b5b931c, 0xbfb8c784, 0xd3bd5afe, 0x6d54ff04
.word 0x367f17e9, 0xa8ce6d2a, 0x5e3a39a9, 0x17f9d804, 0xf5665612, 0xc7fa3070, 0xca3cd21f, 0x9c98e068
.word 0x32763057, 0x7bfc07aa, 0xb1417033, 0xf12f77ae, 0x920e1d54, 0x594bebdd, 0xdfb3a7e5, 0xea76d033
.word 0xbd019c5b, 0x7ba318b4, 0xc7b65e1b, 0x54b7bb07, 0x26922fb8, 0xe6af9258, 0xb744de39, 0xd85d5f5c
.word 0x5b7ae3cb, 0xdf7f0b4a, 0xd940748f, 0x191b7e13, 0xfe8566e5, 0x0e25daa3, 0x01ece65b, 0xbc2422d8
.word 0xd643eed6, 0xf1ec70b7, 0xd31364ec, 0xfae9f772, 0x2ef79a32, 0xb62a8f91, 0x8f0b7913, 0x86429ffd
.word 0x4dfa1d24, 0x1eb0e02c, 0x59be17e5, 0xc5ac09a1, 0xde0f3115, 0xfe92d85e, 0x171ce23f, 0x045f146b
.word 0xb2414ea4, 0x82911ec5, 0x8cbed190, 0x29b208ce, 0xccd63705, 0x377b8b29, 0x95a0e9b3, 0x3edc1d2d
.word 0x6e76dd3a, 0x0462dd29, 0x9f4157cb, 0xd9fe0c6b, 0x70efd30e, 0xe3604e59, 0x5228b942, 0x187b2bd3
.word 0xd9f02a97, 0xabef2f8e, 0x3ff8f43c, 0x83d48df1, 0x022d5935, 0x163ab230, 0x427a6f00, 0xf24412a2
.word 0xd795c143, 0x3179c9c9, 0x41b3c399, 0x1138cc79, 0x51cc98fa, 0x37f23c6e, 0x3d1fed8c, 0x95a2f9f6
.word 0xe7d8be00, 0x3f279eec, 0x7aef224a, 0xfbd91ab2, 0x3797c4a1, 0x0ff4b930, 0xa76a6bcf, 0x29ed86b1
.word 0xf21145eb, 0x75c45a0f, 0xf7c6e883, 0x494a0578, 0x9279cda6, 0xdf42a9ed, 0x9ed0211f, 0x76caafed
.word 0xb1c49d0d, 0x21fdde35, 0xe5f6b8ab, 0xad0150a5, 0xfe60f1ac, 0x84f93935, 0x5d8c9ea1, 0x6ec0a645
.word 0x6f80bf9a, 0x7730d607, 0xe8d74c9c, 0xea8b1409, 0x6c56c432, 0x812dd278, 0x2d5f6158, 0xfee7773b
.word 0x3543770c, 0xe69b1546, 0x1d265a01, 0x4304b15a, 0x29a7fe0a, 0x33e7157c, 0x223d7381, 0x292c3094
.word 0x400938c1, 0x1e298a4c, 0x68ec2039, 0x0aa572c0, 0x3ea43dc5, 0xadafc08b, 0x28ddbef2, 0x7561cf93
.word 0x43496987, 0x97b765e7, 0xbcf4ce0b, 0xfc99287e, 0xacf196d6, 0x4edc740e, 0x877d255b, 0x47b73a2a
.word 0xadfcdd13, 0x61ae5d33, 0xd202f48b, 0xbe8f57ef, 0x673f0365, 0xb7a00309, 0x6e2b5974, 0x983720b2
.word 0x77fd08f6, 0xd30af92c, 0x1dc683be, 0xdb2666df, 0x99c5920a, 0x375a4526, 0x2ae721c0, 0x99227039
.word 0x34c321d7, 0x36cbb933, 0x29460ac1, 0x751c60a0, 0x341b9479, 0x23547860, 0xd5c2a900, 0x2b29c248
.word 0x8a6a6de6, 0x8addf936, 0xfcfdfceb, 0xd43d7810, 0x56ac9407, 0x767faf73, 0x938c3d37, 0xde7cad2c
.word 0xfc4f6b37, 0xca3b5aaa, 0xf1a239f1, 0x8ac902b6, 0xd63d84e6, 0xfbdc7589, 0x4079e572, 0x33c6b752
.word 0x418aff96, 0x4beebd5a, 0xd4e33c3a, 0x5c3f0c19, 0x98d01a32, 0x574218c3, 0x242ce327, 0x906b7dff
.word 0xfd3e379d, 0xa6fb4fbf, 0x7648a52b, 0xaa5c2906, 0x693045bb, 0x590ac3d8, 0x5a2255d3, 0x173282bd
.word 0x4c149781, 0xb89f9412, 0x4870ec7e, 0x7068dcf8, 0x0689c813, 0x4671195e, 0x45daadbc, 0xe8ff29fb
.word 0x0f6a13c5, 0x4ac4f9a1, 0x44b77fda, 0x24f11f16, 0xbf246a9d, 0x0d094c7b, 0xbc247ea2, 0x98370bf5
.word 0x5fbb7974, 0x37bdd57e, 0x99219420, 0x1f1374a7, 0x0550f5db, 0xc9902856, 0x3761c9c0, 0xfda1dc02
.word 0xf79a93be, 0xdd6fb29a, 0x1d477b91, 0x7e84afc5, 0xa853f7df, 0xd67beaa8, 0x29bfbdba, 0xdd41554d
.word 0x4a9c0162, 0x2b3b4251, 0xa38de853, 0x76d4dabf, 0x7df8b83b, 0x00348b41, 0xe925f396, 0xa7cf21e7
.word 0xa67c0f60, 0x28dce774, 0x56ff91af, 0x7dd7cfd8, 0xdd30a163, 0x1f85731c, 0x8fc00a5c, 0x5637ad3f
.word 0x3bae1f25, 0x5873f104, 0x3b57a8c3, 0x06e67239, 0x3c317961, 0xc5ddc2c9, 0x0200f63d, 0x1cf38adc
.word 0x354b2888, 0xcecd15fd, 0xff1531f5, 0xd9ed7253, 0x83e92fdc, 0x1398aa38, 0xba7444ea, 0xd7afd00c
.word 0x3866b6f7, 0x7c538187, 0xac130631, 0x04a0dbb3, 0xf438e531, 0xe18d97d0, 0xe4ed2a25, 0xf4484511
.word 0x6e0d73b1, 0x2f9cf598, 0xf50abccc, 0xfe43a04a, 0x0df9d217, 0x0a3f6cb8, 0xcb542106, 0x1e63a38c
.word 0x093ec72f, 0xe4799883, 0x3ebac4d0, 0xf8851f3f, 0x77ac046b, 0xe83cd217, 0x8976c971, 0x7bdd423d
.word 0xc9b27098, 0xdaef7c36, 0x9031b3ab, 0x745d0521, 0x28ebb4ee, 0x3bd2c716, 0xa61e08d3, 0x53e77b32
.word 0xb8e31ea3, 0xe5005ed9, 0x1dfbda62, 0x0159ab4a, 0xfcb764e1, 0x1f5a18db, 0x190e1a04, 0x3cf2e7a3
.word 0x0d10a661, 0x9df766d7, 0xedbc8c72, 0xdf34bace, 0xd5850fd6, 0x0c2123ab, 0xeffed62c, 0xc52c2ad3
.word 0x6c5ce28c, 0x650c80f2, 0x6d4886c4, 0xbd467192, 0x3fe1d57f, 0xabe6a157, 0xfc8224bc, 0x1047b06e
.word 0xa0fe413c, 0x0e85f602, 0xe79b68b7, 0x4e2ef203, 0x3baef6e7, 0x9685cf66, 0x97494e27, 0xcda6ec87
.word 0xfa7f62d4, 0xcda98689, 0x44db02e6, 0xd9113c26, 0x527b0fdb, 0xd387135e, 0xcb21fdb0, 0xdb7efa00
.word 0x7ed71466, 0x88a39b50, 0x459088d9, 0xe50e0fc8, 0xfd842700, 0xccd90d54, 0x14500c9a, 0xaefb662d
.word 0xab192e55, 0x1ecf29a0, 0x9d0590a6, 0x1ffa25fd, 0xbf48d778, 0xb81af8ab, 0x35695d70, 0xe1b742f3
.word 0x68225830, 0xc73decdc, 0x1e4de578, 0xe628f90f, 0x7d9cbfb7, 0xdda7f2d5, 0x2f033e2a, 0x76a9a992
.word 0xe14f7095, 0x2095f0a9, 0x86d5c128, 0x80747001, 0xfe18c737, 0x32247ee7, 0x09f90b40, 0xab506d7a
.word 0x1b1a95e4, 0x6cf3d866, 0x34d5774a, 0x08e6eabb, 0x94ff82f8, 0x6d448d93, 0xcd94938e, 0x00a06bac
.word 0xd5305d3f, 0x5265587e, 0x7f2895cc, 0x5117539a, 0x3ee0103b, 0xabc58f18, 0x061cb19a, 0x0d070e63
.word 0x893d12c1, 0x02e1bee8, 0x77a88c88, 0x7328a7d7, 0x3b740c09, 0x0c7c8c56, 0x7f400563, 0x345bd4ca
.word 0x230c83e3, 0xe1657cdb, 0xbb23b8fe, 0xefc96d35, 0x7bd3ca3f, 0x1aebdba8, 0x1fdbef50, 0x16aaf98d
.word 0x5fd06914, 0x4069d9d4, 0xf6a6aaf9, 0xb172b925, 0x671f0381, 0xafd21616, 0xbf16f90a, 0x7d466d4c
.word 0x4726ec13, 0x4dd372d8, 0x2e5681a3, 0x75b45fcd, 0x4a42c55f, 0x42999cb4, 0xb5dd0368, 0x0c4bc484
.word 0x8b95dafe, 0xe5815bf1, 0x388cb672, 0x04a87af0, 0x83858432, 0xae6cb17b, 0x61ee2098, 0x272d7e93
.word 0x692df291, 0xfa80f763, 0x33f25bce, 0x9f34af55, 0x23ea80b3, 0x20fa9cf2, 0x5a365044, 0xa90160e5
.word 0x4700bb75, 0xdeab6132, 0x501ad04e, 0x6728ac91, 0x1c1fb0a0, 0x3c160dd9, 0x763fd3b7, 0x510a85d2
.word 0x7915ad39, 0x4634af51, 0xfa949f6f, 0x1c383481, 0x4eed10be, 0xc13b2934, 0xd86f6ef8, 0x58de2819
.word 0x4f919097, 0xe513c442, 0x8405ac34, 0x6c3ab3c7, 0x9a39fa22, 0x1e1e2861, 0x48c73c5e, 0x1e34189c
.word 0x2710115c, 0xdad1cbbd, 0x86d62c1b, 0x5257fac9, 0xbed15eb2, 0xadadb7e6, 0x039a1994, 0xa74946d8
.word 0x8bb6d9aa, 0x53d29405, 0x543a7912, 0x287999d5, 0x0e0caec5, 0x57d3bbe6, 0xdcff9c98, 0xf634c885
.word 0x5ebaea61, 0xfa825fec, 0x377a8d1f, 0x43123006, 0x47550cf9, 0x750faa43, 0xe0c34102, 0x79cdccb0
.word 0x55d89850, 0x138adc5e, 0x1ce90813, 0x8a4e5b98, 0xe0f623d9, 0x2041e5f9, 0x02e1dcd6, 0xa6958fa4
.word 0x044fe167, 0x4fe06a04, 0x3a1fc6b3, 0x7bf0e126
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x21, x14, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x9, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x9, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x9, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x9, x10, ecall_handler
                  li x10, 0x1
                  beq x9, x10, instr_fault_handler
                  li x10, 0x5
                  beq x9, x10, load_fault_handler
                  li x10, 0x7
                  beq x9, x10, store_fault_handler
                  li x10, 0xc
                  beq x9, x10, pt_fault_handler
                  li x10, 0xd
                  beq x9, x10, pt_fault_handler
                  li x10, 0xf
                  beq x9, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x14, x21, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x21, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x21, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x14, x21, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x14, x21, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x14, x21, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
