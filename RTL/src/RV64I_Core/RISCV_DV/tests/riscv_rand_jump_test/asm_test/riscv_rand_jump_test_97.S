.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0xe6c565d0
                  li x1, 0xd3216b16
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0x5
                  li x6, 0x80000000
                  li x7, 0x2
                  li x8, 0x80000000
                  li x9, 0x36f2c745
                  li x11, 0xff28287e
                  li x12, 0x886e8da6
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0xf6e6e67d
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x20, 0xf34fd652
                  li x21, 0x3
                  li x22, 0x3
                  li x23, 0x0
                  li x24, 0x403e3dc
                  li x25, 0xa0a31207
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xf28fbfc9
                  li x31, 0xf55d8238
                  la x19, user_stack_end
main:             la           a4, region_0+1221 #start riscv_load_store_rand_instr_stream_11
                  or           t3, a7, s0
                  sb           a5, -8(a4)
                  sb           a5, 10(a4)
                  lb           t4, 2(a4)
                  sb           ra, 1(a4)
                  slt          s8, gp, t4
                  sb           s1, -3(a4)
                  or           ra, a6, t5
                  and          s6, s3, s7
                  lui          gp, 577655
                  lbu          a2, -7(a4)
                  sb           tp, -15(a4)
                  lw           t2, -13(a4)
                  lbu          a1, 9(a4)
                  srli         s4, s1, 21
                  lb           s10, 10(a4)
                  lhu          s2, -11(a4)
                  lbu          s1, -14(a4)
                  andi         s8, s4, -1809
                  lbu          s9, 4(a4)
                  sb           t6, 12(a4)
                  sltiu        s4, a7, -1205
                  sltu         sp, s6, s9
                  lbu          a7, -7(a4)
                  sb           a4, -14(a4)
                  slti         s7, tp, 1823
                  srli         t5, s9, 28
                  sb           t3, -3(a4)
                  auipc        a3, 998305
                  lhu          s2, -9(a4)
                  sb           s3, -16(a4)
                  sb           s10, -14(a4)
                  and          s9, t2, a0
                  lb           t2, -8(a4)
                  add          a3, t4, a3
                  sb           a3, 14(a4) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1216 #start riscv_load_store_rand_instr_stream_8
                  lbu          a1, -233(sp)
                  lbu          t1, -119(sp)
                  lb           zero, -1117(sp)
                  lb           s2, -646(sp)
                  slti         s5, tp, 167
                  slt          s4, tp, t1
                  sb           t6, -247(sp)
                  sh           t0, -1150(sp)
                  lbu          t5, 450(sp)
                  sb           s2, 447(sp)
                  lbu          a4, 355(sp)
                  lw           s9, -1056(sp)
                  srai         gp, s7, 29
                  xor          a1, s0, t4
                  lh           s9, -556(sp)
                  sll          a6, s10, s6
                  lb           s4, -1033(sp)
                  slt          zero, t1, a5
                  lbu          a2, -321(sp)
                  lh           t2, -648(sp)
                  sh           t1, 698(sp)
                  srli         gp, a2, 22
                  lbu          zero, -293(sp)
                  xor          s7, ra, a4
                  lb           s8, -967(sp)
                  lbu          tp, -321(sp)
                  sh           s11, -698(sp)
                  sltu         t1, s5, s7
                  lbu          t4, 562(sp)
                  lbu          zero, 255(sp)
                  sltu         s8, zero, s4
                  lh           a5, 56(sp)
                  lhu          s0, 510(sp)
                  lhu          t0, 550(sp)
                  sh           s2, 164(sp)
                  sb           zero, -151(sp)
                  lh           s0, 674(sp)
                  lbu          s2, 648(sp)
                  lb           s0, -213(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1116 #start riscv_load_store_rand_instr_stream_9
                  sub          s10, s1, s4
                  sb           a6, -911(sp)
                  sh           zero, -138(sp)
                  sb           s2, 167(sp)
                  lh           a4, -1006(sp)
                  and          zero, t5, s9
                  sb           t5, 9(sp)
                  sb           s10, -149(sp)
                  slt          s4, a7, sp
                  lb           s8, -453(sp)
                  sb           t1, 794(sp)
                  lw           s0, -92(sp)
                  lhu          t5, -218(sp)
                  sh           t1, -476(sp)
                  addi         t4, s6, -938
                  sh           s9, -436(sp)
                  slli         s6, zero, 4
                  lbu          s9, -461(sp)
                  lb           t0, -820(sp)
                  addi         t0, s2, 1343
                  lb           t4, 308(sp)
                  lbu          s11, -1075(sp)
                  lb           t2, -803(sp)
                  slli         gp, s7, 7
                  slli         s0, gp, 22
                  srli         ra, a0, 20
                  lbu          s11, -729(sp)
                  lb           a5, -551(sp)
                  andi         gp, t3, -1859
                  slli         t5, a2, 19
                  lh           s10, -264(sp)
                  sh           s0, -86(sp)
                  sll          a3, zero, s4
                  lhu          s11, 528(sp)
                  ori          zero, s1, 1712
                  srl          gp, a2, s11
                  sb           s10, 418(sp)
                  lb           s2, -651(sp)
                  sll          t0, a3, s5
                  sb           t3, -1105(sp)
                  lbu          t4, -143(sp)
                  lb           t5, -140(sp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+1944 #start riscv_load_store_rand_instr_stream_0
                  srli         t3, s0, 2
                  sb           t4, -64(sp)
                  lh           s5, 36(sp)
                  sra          t2, s0, t3
                  srai         s9, a7, 31
                  lbu          s0, 6(sp)
                  lbu          s9, -41(sp)
                  sb           a0, -64(sp)
                  srli         t4, s8, 26
                  sltiu        a6, s10, 1369
                  lb           t2, -13(sp)
                  srl          s0, a2, tp
                  lbu          s9, 13(sp)
                  lhu          a7, 8(sp)
                  slt          s2, t5, s11
                  lw           a3, -48(sp)
                  sb           t5, -11(sp)
                  sll          s1, a5, s4
                  add          a5, zero, t6
                  and          t0, t6, gp
                  lbu          t5, -37(sp)
                  srai         s4, s5, 12
                  sh           t4, -16(sp)
                  lb           s4, -35(sp)
                  sb           s5, -37(sp)
                  addi         s8, t0, -1902
                  ori          s5, s8, -89
                  lbu          a5, -46(sp)
                  slt          s5, tp, t5
                  sw           a0, -4(sp)
                  lh           a1, -8(sp)
                  slt          t1, s10, a2
                  lb           zero, -55(sp)
                  sb           s8, -43(sp)
                  andi         s0, t4, -326
                  lbu          a3, -19(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+820 #start riscv_load_store_rand_instr_stream_4
                  lbu          s4, 1043(sp)
                  slli         zero, t1, 28
                  lhu          s10, 338(sp)
                  sh           a2, -340(sp)
                  add          a7, s10, a7
                  lbu          s5, -235(sp)
                  lbu          a7, 150(sp)
                  or           tp, s3, tp
                  ori          s2, s3, -1140
                  lui          t4, 12994
                  nop
                  lb           s5, -714(sp)
                  ori          a3, a0, -507
                  lb           s5, 1157(sp)
                  lbu          s0, -31(sp)
                  lh           a2, -566(sp)
                  slti         s1, s7, -339
                  xor          s6, t3, a5
                  lw           ra, 236(sp)
                  lb           s5, 1106(sp)
                  sub          s6, t0, zero
                  lbu          a4, -473(sp)
                  lw           t3, -112(sp)
                  lb           a5, 90(sp)
                  sltu         s1, a0, a1
                  xori         s5, t1, -1579
                  sltiu        a4, t3, 794
                  xori         t1, s8, 1168
                  sb           t2, 1171(sp)
                  lbu          a2, -705(sp)
                  srai         gp, gp, 25
                  srli         s2, gp, 24
                  sb           s11, -199(sp)
                  lw           s7, -504(sp)
                  lhu          s4, -290(sp)
                  lui          s7, 336829
                  andi         s9, t2, -506
                  lb           s2, 252(sp)
                  sra          a6, s2, s9
                  add          s10, t2, s1
                  sra          a7, gp, a7
                  slti         a7, s2, 1369
                  auipc        s7, 827361
                  ori          s4, a2, 1154
                  lb           zero, -301(sp)
                  sb           sp, -195(sp) #end riscv_load_store_rand_instr_stream_4
                  la           tp, region_1+975 #start riscv_load_store_rand_instr_stream_3
                  sb           a0, -64(tp)
                  sub          s4, tp, t1
                  sb           s6, 422(tp)
                  lb           ra, 988(tp)
                  lbu          t1, -973(tp)
                  sll          a2, s5, s9
                  lhu          s6, 319(tp)
                  srli         s2, t6, 2
                  sub          s5, s5, a5
                  sub          a3, a4, a3
                  lbu          s4, -395(tp)
                  lbu          t5, 663(tp)
                  sb           t0, 445(tp)
                  lb           a3, 385(tp)
                  sub          t3, s6, s6
                  srai         s1, s11, 15
                  sll          s1, s7, a4
                  lh           zero, 955(tp)
                  add          s8, t3, a5
                  and          t2, s9, a3
                  lui          t3, 373518
                  srli         s9, s5, 3
                  sb           t6, 225(tp)
                  lbu          sp, 668(tp)
                  ori          a7, a6, 183
                  lbu          s7, -594(tp)
                  slti         s6, t3, -1851
                  lbu          t2, -765(tp)
                  slt          s7, s1, s1
                  lui          s4, 82738
                  lb           a1, -671(tp)
                  or           a3, a2, t0
                  sh           s0, 355(tp)
                  lh           s7, 265(tp)
                  lb           s8, 403(tp)
                  lbu          s7, 361(tp)
                  lb           a1, -828(tp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1770 #start riscv_load_store_rand_instr_stream_7
                  sltu         s9, s11, s3
                  sb           a2, -93(sp)
                  addi         s8, s8, 1835
                  or           s10, ra, t3
                  slt          t2, s6, zero
                  srai         s7, s1, 27
                  srl          a7, t1, tp
                  sh           tp, 54(sp)
                  lbu          s10, -89(sp)
                  slti         tp, t6, -1365
                  srli         a5, s8, 3
                  srli         s5, sp, 4
                  srl          a4, gp, gp
                  slt          ra, a3, s7
                  lw           a5, -246(sp)
                  lbu          s0, -52(sp)
                  lbu          s10, -90(sp)
                  lb           s0, -154(sp)
                  srli         t3, t4, 9
                  sltiu        s4, s11, -1944
                  srl          t4, a4, s10
                  xori         t1, s6, -183
                  xori         s0, a7, 1487
                  lbu          s7, -121(sp)
                  sh           t4, -84(sp)
                  srl          s9, s10, s7
                  addi         s10, a0, -874
                  and          t3, zero, a3
                  and          ra, t3, t4
                  addi         s7, a3, -1343
                  addi         s11, t0, -2041
                  lb           s11, -43(sp)
                  xor          a6, s9, a6
                  auipc        s10, 429159
                  sub          a4, t1, a1
                  slt          t0, a5, a4
                  lb           s5, -1(sp)
                  lb           a3, -137(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+111 #start riscv_load_store_rand_instr_stream_6
                  lbu          s1, 104(sp)
                  lb           t2, 28(sp)
                  lb           a7, 94(sp)
                  sw           zero, 105(sp)
                  add          a7, t4, gp
                  sra          t0, t0, s10
                  nop
                  sra          s7, t5, t0
                  ori          s11, s7, 1631
                  lh           ra, 179(sp)
                  lb           a2, 181(sp)
                  sub          s11, a1, a1
                  sltiu        t1, s5, 107
                  xor          t0, zero, a6
                  sltu         s5, a3, s10
                  lbu          a4, 192(sp)
                  sltu         t5, s1, s1
                  lbu          zero, -83(sp)
                  srl          t3, gp, a7
                  sb           a3, 137(sp)
                  xor          a6, t2, s0
                  srai         a5, zero, 0
                  sb           a7, 197(sp)
                  xori         s4, s7, 634
                  sltu         s5, s7, s6
                  nop
                  srai         s8, t3, 1
                  sb           t0, 70(sp)
                  add          a6, a4, s7
                  sw           s7, -111(sp)
                  andi         zero, sp, -954
                  addi         a1, tp, -750
                  sh           s3, 255(sp)
                  lbu          s2, 250(sp) #end riscv_load_store_rand_instr_stream_6
                  la           tp, region_0+323 #start riscv_load_store_rand_instr_stream_2
                  sb           a2, -24(tp)
                  lb           s4, 51(tp)
                  lb           ra, 44(tp)
                  slti         t2, a5, 938
                  sb           a3, 31(tp)
                  lb           gp, -20(tp)
                  sb           tp, -41(tp)
                  sb           a2, 46(tp)
                  sltu         t0, a7, s9
                  lbu          s11, -38(tp)
                  add          t2, t2, a4
                  lb           s4, -42(tp)
                  lb           s7, 2(tp)
                  lbu          s10, -47(tp)
                  sb           t3, 20(tp)
                  andi         s4, gp, 566
                  add          t2, s11, tp
                  srli         a4, s5, 6
                  lb           a6, -33(tp)
                  nop
                  xor          a7, a7, a4
                  nop
                  lbu          s2, 10(tp)
                  add          a6, t5, s3
                  lbu          sp, 9(tp)
                  sb           s8, 14(tp)
                  lb           s0, -16(tp)
                  sb           a3, 10(tp)
                  lbu          gp, 22(tp)
                  lhu          s11, 39(tp)
                  lhu          ra, 57(tp)
                  lb           s9, -44(tp)
                  lw           ra, -35(tp)
                  sb           s7, -46(tp)
                  sll          sp, s8, a4
                  lbu          s7, 14(tp)
                  lw           s8, -27(tp)
                  sb           zero, 58(tp) #end riscv_load_store_rand_instr_stream_2
                  la           a4, region_0+1921 #start riscv_load_store_rand_instr_stream_1
                  lui          t4, 975375
                  add          sp, s9, ra
                  slli         t3, tp, 19
                  sh           a5, -593(a4)
                  add          t5, a3, s2
                  sb           t1, -1270(a4)
                  andi         s11, s2, 411
                  xor          s7, s9, tp
                  add          s9, tp, s10
                  sb           s10, -1188(a4)
                  lw           tp, -437(a4)
                  lhu          t4, -1311(a4)
                  srl          tp, ra, a1
                  sb           t2, -2(a4)
                  sb           s5, -1725(a4)
                  ori          s2, t2, -1151
                  slti         a5, a0, -1188
                  sb           a7, -407(a4)
                  lbu          s6, -1592(a4)
                  slti         t1, s3, 1670
                  lui          t1, 991951
                  sb           s6, -651(a4)
                  sb           a7, -690(a4)
                  sb           s4, -1484(a4) #end riscv_load_store_rand_instr_stream_1
                  and          a5, t5, s10
                  srl          s1, s5, t2
                  or           t4, s0, a3
                  srli         t3, zero, 26
                  bne          s6, a0, 17f
                  srli         t2, gp, 2
                  or           s8, s8, t0
                  and          t5, a2, a6
                  sra          s10, ra, s7
                  andi         gp, zero, 6
                  bne          t1, tp, 12f
                  or           a2, s1, s5
12:               srai         a4, s4, 22
                  addi         s0, s2, -701
                  slt          t1, s4, t1
                  blt          s6, t3, 21f
                  bge          a0, a0, 17f
17:               slt          s9, s3, s6
                  xor          s11, a6, s8
                  slti         s8, a5, -1154
                  sub          a2, a1, a5
21:               xori         t2, sp, 416
                  bne          ra, s3, 26f
                  blt          a4, s8, 39f
                  add          t4, zero, s11
                  lui          s0, 689361
26:               sltiu        s2, t0, -1577
                  bltu         s5, t5, 47f
                  ori          s7, a5, 1803
                  ori          s10, gp, 1327
                  slt          s0, zero, s11
                  srl          zero, a6, tp
                  auipc        s11, 248530
                  sltu         s10, a7, s4
                  bltu         sp, a4, 43f
                  or           a4, t5, a1
                  beq          a2, a6, 56f
                  sltiu        t1, a7, 1024
                  andi         a6, a2, -1426
39:               and          t4, a0, t6
                  auipc        s9, 632334
                  slt          s8, s8, tp
                  andi         t4, a5, -683
43:               nop
                  sltiu        t3, s7, 1766
                  slt          s6, s2, s10
                  beq          a7, s11, 48f
47:               bltu         a1, s4, 55f
48:               andi         s10, a0, 1676
                  lui          t1, 397914
                  xori         s10, a4, -321
                  xori         zero, t6, 708
                  auipc        s0, 585963
                  srai         a2, a6, 9
                  slli         a3, s5, 1
55:               nop
56:               andi         ra, t4, -951
                  sll          t3, s6, s8
                  auipc        t4, 155996
                  andi         s7, s9, 1342
                  sll          a5, s5, a4
                  bne          a1, s2, 68f
                  sltu         s7, a6, t1
                  and          s7, s4, tp
                  xor          t5, tp, t4
                  sra          t2, s6, t1
                  xori         a4, t2, -1432
                  blt          a7, zero, 87f
68:               add          s6, gp, a4
                  bne          a0, s7, 81f
                  lui          a1, 296815
                  add          gp, s2, s5
                  nop
                  bne          s0, s9, 78f
                  slli         ra, t0, 0
                  xor          t4, t3, s0
                  blt          a5, s0, 92f
                  auipc        s9, 267735
78:               or           a1, s0, s6
                  sub          a6, a1, t0
                  slt          tp, s11, tp
81:               slt          s0, t5, s0
                  bltu         zero, a6, 98f
                  nop
                  ori          a6, a3, -765
                  and          a6, a6, s9
                  addi         a1, s2, 1706
87:               and          s0, a1, a4
                  bne          a6, ra, 93f
                  andi         s6, t6, -1308
                  and          s2, a7, s5
                  slt          t5, s7, s2
92:               sll          sp, s2, a5
93:               bgeu         t3, s8, 97f
                  ori          gp, t4, 1363
                  bltu         a0, s10, 105f
                  xor          t3, t0, s7
97:               srai         t3, a1, 11
98:               srli         s9, a1, 30
                  slti         s4, a7, -1064
                  sra          s11, zero, sp
                  add          a6, s10, sp
                  bge          s9, s2, 108f
                  lui          gp, 744334
                  beq          a4, a4, 112f
105:              bge          zero, t0, 121f
                  bne          s6, t5, 126f
                  ori          t3, a2, -566
108:              sra          s10, s7, a1
                  ori          a4, tp, -1940
                  sltu         a3, s3, a5
                  xor          t1, gp, t0
112:              xor          t3, s0, s10
                  bltu         a3, ra, 114f
114:              bgeu         a5, t4, 130f
                  addi         t0, zero, -1014
                  slti         a3, s6, 817
                  bgeu         s5, ra, 131f
                  sll          s2, a0, s6
                  lui          s6, 206550
                  or           t5, s6, sp
121:              beq          s4, t1, 141f
                  beq          t6, t6, 140f
                  lui          s4, 795895
                  add          t5, s11, s10
                  bge          t6, tp, 129f
126:              beq          s3, t1, 127f
127:              slt          s2, t1, t6
                  auipc        s1, 331063
129:              sll          a2, s10, t0
130:              xori         a2, s6, 828
131:              bltu         t4, s1, 139f
                  nop
                  sltu         t0, a4, s10
                  sub          s5, s3, s1
                  or           s6, s5, s5
                  bge          a1, t1, 152f
                  sltiu        s5, t3, 23
                  xori         t1, t3, 1213
139:              blt          a0, s0, 141f
140:              sltu         t0, a6, a6
141:              andi         s6, ra, -412
                  srli         sp, tp, 16
                  sub          ra, s5, a3
                  or           zero, a5, t1
                  slt          a7, t2, s0
                  slti         a3, a5, -116
                  sltu         a4, s11, s3
                  sub          gp, a3, s2
                  beq          zero, ra, 169f
                  bge          t5, t3, 159f
                  xori         gp, s5, 1785
152:              bne          t5, a0, 166f
                  addi         s1, t0, -1346
                  slti         s8, a6, 1770
                  sltiu        s9, a4, -467
                  ori          gp, t0, -1437
                  sltu         a4, t2, a0
                  addi         s8, ra, -1299
159:              xori         s10, s6, -981
                  nop
                  and          sp, t6, a1
                  add          s4, s5, zero
                  xor          s8, s7, tp
                  bge          sp, a5, 168f
                  and          a5, s4, t0
166:              sub          s10, s4, s4
                  srai         a4, s9, 20
168:              andi         a2, t2, 1015
169:              slli         t2, a3, 20
                  slt          s11, t1, s11
                  blt          t5, s4, 177f
                  bge          a1, sp, 185f
                  sub          a2, s0, a7
                  beq          s8, s4, 180f
                  slli         a6, ra, 10
                  sra          a1, s1, s0
177:              bge          t1, t6, 197f
                  bltu         ra, a4, 185f
                  or           s10, s11, gp
180:              sll          tp, tp, gp
                  slti         s11, a2, -1238
                  bne          t5, s2, 187f
                  bne          s3, t4, 187f
                  add          t2, s4, ra
185:              bgeu         a7, a3, 187f
                  bltu         s4, s3, 202f
187:              or           a3, s0, a2
                  nop
                  nop
                  srli         sp, a3, 18
                  blt          s7, a4, 211f
                  sub          tp, zero, ra
                  sub          s9, a2, a7
                  slt          a1, t3, s0
                  slti         t3, s7, 1450
                  srli         s7, tp, 31
197:              sltu         s10, a3, s7
                  bltu         s0, s3, 203f
                  nop
                  sltu         t5, a4, s5
                  sub          t0, a3, a4
202:              and          s4, s4, t5
203:              ori          a2, s9, 27
                  sll          gp, a7, tp
                  lui          s4, 680627
                  add          s0, s4, t2
                  and          s6, tp, ra
                  slli         ra, t6, 25
                  xori         s0, s9, -1981
                  srl          gp, s10, a7
211:              add          s7, s3, a5
                  xori         zero, a1, 1463
                  bne          s8, zero, 229f
                  ori          s2, t0, -364
                  srli         s8, tp, 19
                  lui          a2, 661011
                  auipc        s0, 639099
                  nop
                  srl          s8, s11, t3
                  addi         s7, s7, 281
                  sub          t4, zero, a7
                  bge          tp, s1, 238f
                  andi         t0, t1, 1450
                  nop
                  add          s7, t0, t0
                  or           s4, s3, t3
                  srli         t4, t6, 16
                  add          sp, a3, tp
229:              beq          t1, a0, 249f
                  lui          a3, 512065
                  bge          s5, s8, 232f
232:              sltiu        s8, s6, -1465
                  srl          t1, ra, a2
                  xor          a5, a1, a4
                  or           s1, a1, a7
                  blt          t0, s5, 256f
                  bge          t0, t1, 255f
238:              bltu         s4, a3, 248f
                  bne          t6, s5, 255f
                  slli         a3, a2, 18
                  sltu         s4, gp, a6
                  auipc        t3, 1043979
                  sub          a6, t1, a5
                  bge          s10, s7, 252f
                  sll          s9, t5, gp
                  or           s0, ra, s10
                  addi         a6, tp, 431
248:              add          a6, s9, t0
249:              sltiu        s8, a0, 930
                  sltu         s5, tp, a5
                  sltiu        t5, t3, -1210
252:              or           sp, t3, s7
                  xori         a2, s6, -1454
                  xori         s10, t5, -1796
255:              bge          t5, s5, 267f
256:              slti         a1, s2, -701
                  blt          s2, a1, 261f
                  ori          s4, s7, 81
                  sll          s6, t0, s8
                  beq          ra, s3, 264f
261:              srl          sp, t1, s6
                  slt          a5, s10, sp
                  andi         ra, s3, 1150
264:              xor          t2, zero, t6
                  sra          s4, s6, s11
                  xori         s6, s2, 2036
267:              sltu         s0, s10, tp
                  bge          a0, t6, 288f
                  auipc        s7, 604275
                  srl          s0, a1, t1
                  sra          t1, ra, t1
                  add          s9, s7, a0
                  and          s11, s11, s0
                  sra          s0, a7, a2
                  srai         a5, s11, 9
                  sltu         a6, t6, t4
                  add          s10, s3, t0
                  andi         s8, ra, 241
                  slli         a7, t3, 27
                  ori          s5, s6, -250
                  blt          a2, s1, 287f
                  blt          t3, s9, 289f
                  bge          s7, zero, 303f
                  addi         sp, a1, -1219
                  sltiu        a3, t0, -1589
                  auipc        a7, 922279
287:              bltu         s8, s11, 301f
288:              ori          s4, t3, 2046
289:              bge          s5, s2, 309f
                  add          sp, sp, zero
                  slti         s8, t0, 514
                  xor          t0, t0, s6
                  sltiu        a5, sp, 1944
                  bne          s5, s10, 299f
                  srli         s4, gp, 11
                  sub          a3, s6, s0
                  andi         s4, a4, -1157
                  addi         ra, s9, -942
299:              xori         s5, t3, -1176
                  srli         a3, a1, 30
301:              bne          t4, t0, 321f
                  bltu         s6, zero, 303f
303:              or           tp, a4, s1
                  add          s10, s10, s9
                  sll          sp, t4, s3
                  bgeu         s11, s7, 318f
                  srli         a4, s0, 2
                  srl          t5, a1, t2
309:              slli         s11, zero, 6
                  slt          t5, sp, a6
                  bgeu         t6, s1, 324f
                  or           a7, s8, t0
                  beq          a2, t5, 329f
                  andi         t2, a4, 774
                  srai         tp, a4, 29
                  slti         sp, sp, 1010
                  bgeu         t1, t1, 327f
318:              beq          t0, a7, 319f
319:              bge          a6, s3, 327f
                  slti         a7, a2, 390
321:              xori         tp, gp, -2009
                  bge          s3, gp, 342f
                  ori          s11, t2, 1205
324:              lui          t4, 786931
                  xor          t2, a5, s8
                  addi         t1, a7, -1014
327:              or           s7, s10, t1
                  sub          t2, s5, ra
329:              xori         t0, s11, -198
                  sltu         a2, t1, s2
                  sll          s10, s6, s9
                  srli         s1, t1, 16
                  beq          a5, t1, 337f
                  addi         a1, s3, -802
                  slti         s6, s11, -1693
                  slti         s2, s11, -1543
337:              beq          s0, t6, 341f
                  srl          zero, a4, s5
                  or           s6, s11, s9
                  beq          a3, a3, 342f
341:              ori          s6, s11, 951
342:              srai         ra, s5, 4
                  sltu         a6, t3, s6
                  slli         s9, a3, 2
                  bgeu         zero, a7, 361f
                  sltiu        t2, t1, -1037
                  beq          s1, t1, 352f
                  addi         s7, s5, -1333
                  blt          sp, t5, 358f
                  sltu         s11, a5, gp
                  xor          a5, s4, s11
352:              bge          s8, t5, 368f
                  xor          a6, s3, s6
                  andi         t0, t0, -1358
                  srai         s4, tp, 28
                  and          t2, a2, s6
                  nop
358:              blt          t3, s4, 374f
                  xor          s1, s5, a4
                  sltu         a6, zero, t1
361:              auipc        a3, 404687
                  addi         t5, s10, 1848
                  or           zero, s7, s0
                  blt          s0, s3, 382f
                  bgeu         s10, t4, 371f
                  sltiu        a7, a6, -1927
                  xori         t1, s9, 1399
368:              sra          t5, t6, t5
                  or           a1, sp, a6
                  blt          s1, a7, 372f
371:              auipc        s11, 658243
372:              or           s11, t5, s7
                  andi         s11, s10, -1873
374:              nop
                  sub          s8, s7, t3
                  slti         a6, a3, 1737
                  slli         t3, t6, 27
                  and          a5, t1, gp
                  sll          t2, a5, s10
                  ori          sp, s4, -1594
                  slti         a4, t4, -1722
382:              srl          tp, a4, s4
                  slt          s4, a1, t2
                  bltu         t6, s5, 392f
                  beq          a6, s5, 401f
                  sltiu        s11, s9, -1572
                  nop
                  add          a6, a2, s9
                  bne          s0, a2, 405f
                  and          s7, a1, a4
                  add          t5, a3, t1
392:              sub          t4, s7, a6
                  xori         s5, s9, 1367
                  sltiu        t2, s2, -1966
                  ori          t0, s7, -1669
                  sra          a7, s4, tp
                  andi         s8, a5, -46
                  auipc        sp, 1047468
                  bne          t3, s9, 405f
                  sltiu        s6, t4, -1224
401:              bne          a3, s3, 421f
                  addi         a6, s1, -171
                  auipc        t1, 1001946
                  bltu         t6, s5, 424f
405:              nop
                  lui          s9, 541219
                  and          t3, t2, t6
                  lui          s0, 12485
                  xori         t0, s4, 1015
                  sra          tp, s2, sp
                  and          a5, t3, s11
                  slli         s9, s4, 17
                  slli         a2, ra, 16
                  ori          s11, t2, 62
                  add          s5, a1, s4
                  or           s2, s5, zero
                  nop
                  auipc        s11, 169780
                  sltiu        t2, a3, 1791
                  sltiu        a6, a5, -621
421:              slli         t1, t4, 17
                  xor          a2, a7, s10
                  blt          s1, s4, 429f
424:              srli         t1, s10, 14
                  or           ra, t0, s8
                  srai         a7, t4, 22
                  lui          s9, 671933
                  auipc        a4, 350524
429:              andi         s6, a2, 171
                  bne          t6, s9, 446f
                  bge          ra, s1, 432f
432:              xori         a7, a5, -1176
                  bgeu         a0, a6, 434f
434:              slti         t3, a5, 1055
                  sub          s11, s3, t2
                  ori          s0, t1, -536
                  or           s8, a6, a3
                  slt          t2, a5, s7
                  srli         s9, tp, 3
                  bgeu         s5, t2, 444f
                  andi         t3, t3, -435
                  blt          a0, a2, 444f
                  ori          t5, s10, 800
444:              xori         s1, a3, 1347
                  sra          s8, gp, s9
                  sltu         s10, s9, s9
                  sra          t3, s10, s4
                  sra          a4, sp, tp
                  srli         s0, s1, 2
                  la           gp, sub_3
                  slt          a3, s9, s5
                  addi         gp, gp, -357
                  sltu         s5, t4, s8
                  sltiu        a2, tp, -1871
main_j3:          jalr         s0, gp, 357 #jump main -> sub_3
446:              blt          a7, s7, 450f
                  srli         s7, t3, 26
                  addi         a6, s5, -1479
                  bgeu         ra, a6, 454f
450:              bne          a3, sp, 460f
                  bge          s4, s11, 459f
                  ori          t2, s9, -1623
                  beq          zero, a5, 461f
454:              bltu         t5, ra, 474f
                  ori          s11, a5, -927
                  addi         a6, a1, 19
                  slti         s7, s5, -681
                  auipc        sp, 215772
459:              xor          t1, s2, a2
460:              slli         s9, t1, 2
461:              slt          ra, ra, t2
                  srli         s5, tp, 29
                  addi         a1, sp, -1925
                  srai         a4, t3, 14
                  lui          s0, 75499
                  andi         sp, t4, 1942
                  and          t4, zero, s4
                  andi         s2, s8, 1477
                  bne          s5, zero, 478f
                  bge          s7, s9, 486f
                  sub          ra, s3, t5
                  sub          s1, s0, gp
                  sub          sp, t0, s2
474:              bltu         s11, a0, 479f
                  xor          s0, a3, s10
                  add          tp, zero, s6
                  bne          gp, a2, 497f
478:              bge          a5, t3, 485f
479:              addi         a2, s10, -826
                  bltu         t0, a2, 496f
                  and          a2, t4, s0
                  andi         t3, t1, -1241
                  or           s0, s0, t1
                  blt          s4, t4, 502f
485:              bne          a0, a4, 505f
486:              or           t2, ra, a4
                  xor          a6, t6, t4
                  bgeu         a3, a7, 490f
                  sll          s7, t5, s4
490:              nop
                  add          a1, tp, s1
                  nop
                  srl          a5, a1, t3
                  sub          a4, s3, tp
                  and          a7, t5, s6
496:              add          a3, s7, s8
497:              bne          sp, t0, 510f
                  sra          s5, s8, a6
                  beq          s7, s7, 511f
                  lui          t1, 4021
                  addi         t0, t2, -255
502:              auipc        a4, 233380
                  srl          s2, s3, t4
                  bne          a4, s10, 518f
505:              srli         s6, s7, 9
                  nop
                  srai         s8, s10, 9
                  bge          s10, s7, 512f
                  srai         t0, t5, 30
510:              sltu         sp, ra, t0
511:              sra          s2, a1, a3
512:              xor          a1, t5, ra
                  srli         t3, s3, 14
                  or           s7, s11, a0
                  bgeu         t1, ra, 531f
                  bgeu         t6, s2, 522f
                  sltu         t3, s3, a4
518:              nop
                  sltiu        t5, a7, 259
                  bltu         sp, a3, 524f
                  andi         s0, t4, 1103
522:              sub          a6, t0, s6
                  nop
524:              beq          s8, s6, 544f
                  sra          t0, s3, a5
                  nop
                  and          t4, s0, s8
                  slti         t4, s10, -1141
                  and          a1, gp, gp
                  srai         a3, t4, 14
531:              srli         s9, t4, 23
                  sltiu        s10, s2, -1625
                  add          t0, sp, zero
                  sltiu        t1, t5, 815
                  beq          a6, a0, 551f
                  sll          a1, a2, t1
                  blt          zero, a7, 557f
                  lui          s11, 689291
                  bne          a3, t2, 540f
540:              srli         s11, s11, 17
                  sra          sp, gp, a3
                  lui          ra, 409031
                  add          a5, s6, s8
544:              sll          a5, t3, a3
                  sub          s2, s6, t1
                  xori         s6, a4, 776
                  auipc        s2, 858561
                  bgeu         s0, t0, 552f
                  beq          a0, s9, 565f
                  blt          t4, a1, 563f
551:              srli         s4, t0, 9
552:              bne          gp, a7, 568f
                  slli         s2, sp, 23
                  ori          t0, tp, 1934
                  addi         s5, s6, -942
                  bne          s0, zero, 572f
557:              lui          s7, 948987
                  sra          s1, t2, a2
                  ori          s6, t2, 53
                  sltiu        sp, t1, -645
                  andi         a6, zero, -891
                  bgeu         t5, t5, 576f
563:              andi         s8, t1, 109
                  blt          a6, t6, 574f
565:              nop
                  blt          t4, s10, 571f
                  srai         s5, s10, 20
568:              sra          t2, a3, a2
                  sll          t2, a3, s3
                  ori          s2, t0, 261
                  la           s0, sub_2
                  nop
                  addi         s0, s0, -17
                  srai         s8, s1, 2
                  blt          s8, s11, main_j1 #branch to jump instr
                  srai         zero, s10, 9
                  sltiu        s4, t1, -325
main_j1:          jalr         s0, s0, 17 #jump main -> sub_2
                  sltu         ra, a3, t6
571:              xor          a3, s2, s9
572:              blt          t3, s6, 592f
                  srai         a7, a2, 17
574:              add          a6, gp, s4
                  sltu         s4, s6, sp
576:              and          t3, a6, t0
                  bne          s11, s3, 584f
                  blt          ra, ra, 586f
                  beq          a7, ra, 580f
580:              xori         s8, t1, -1358
                  or           t4, t4, s3
                  bge          a1, a1, 586f
                  bge          s3, a1, 588f
584:              slti         t2, s7, -1806
                  sltu         s0, a5, a7
586:              srai         a2, tp, 19
                  slti         s6, zero, -113
588:              nop
                  blt          a4, s2, 607f
                  auipc        s7, 937039
                  slti         a1, t6, 1588
592:              srai         s9, s4, 27
                  and          a3, t0, t6
                  sub          s0, s3, sp
                  sll          t3, t6, ra
                  srai         sp, s10, 9
                  blt          s7, s0, 617f
                  sltiu        a4, t5, -1349
                  srai         s8, gp, 25
                  srli         t1, t5, 10
                  sub          s0, a1, a2
                  auipc        a5, 312161
                  addi         ra, s6, 135
                  auipc        gp, 663347
                  srli         a2, zero, 21
                  bgeu         s1, t6, 608f
607:              xor          t2, zero, a7
608:              srai         t1, t6, 8
                  slli         a2, a6, 14
                  slli         s5, s4, 31
                  xor          t1, s1, s11
                  slti         gp, a5, 1069
                  slti         s5, a1, 556
                  auipc        s2, 185608
                  sra          s6, a6, s10
                  beq          t1, zero, 624f
617:              or           t1, t5, s0
                  sra          sp, a1, s4
                  srai         s6, s4, 14
                  srl          a3, t3, s1
                  sltiu        sp, s6, -117
                  srl          a6, s4, zero
                  blt          s9, zero, 629f
624:              blt          s8, s3, 633f
                  bne          a4, a3, 641f
                  slli         s10, sp, 12
                  nop
                  beq          a5, s0, 640f
629:              nop
                  and          a3, t4, s9
                  slti         s11, s1, -1692
                  add          s9, t5, s1
633:              ori          s1, t3, -558
                  beq          s8, a3, 636f
                  sll          gp, t3, t4
636:              sltu         a2, t1, a4
                  bge          s8, a4, 657f
                  bltu         a7, t0, 644f
                  xori         t4, t2, 1584
640:              nop
641:              or           s9, a2, t3
                  srli         s7, a0, 4
                  lui          t2, 491062
644:              slti         s2, gp, 781
                  add          zero, a3, s10
                  addi         gp, s7, 1150
                  bgeu         s7, s7, 663f
                  and          s10, a0, t2
                  bltu         a6, s11, 669f
                  srl          s7, s8, a1
                  slli         a3, a1, 31
                  blt          s2, s1, 653f
653:              sltiu        s7, t4, -99
                  slti         a2, s2, -759
                  bltu         a4, zero, 671f
                  srl          a2, t6, a5
657:              or           ra, s11, s0
                  bge          t5, t6, 671f
                  slti         a6, a6, -916
                  slt          a6, s7, a6
                  nop
                  xor          s1, a4, a7
663:              andi         t1, s1, 1048
                  slt          s1, a6, a1
                  bgeu         s6, a3, 673f
                  blt          a2, s8, 678f
                  la           sp, region_1+466 #start riscv_load_store_rand_instr_stream_10
                  lhu          a7, -48(sp)
                  lbu          a4, 32(sp)
                  srli         a3, a1, 10
                  ori          s7, zero, 1509
                  lb           a7, -45(sp)
                  lbu          s11, 47(sp)
                  slli         a4, gp, 30
                  lbu          zero, 20(sp)
                  xor          a6, t6, s8
                  ori          a7, s3, -57
                  sh           s6, 46(sp)
                  sb           t4, 62(sp)
                  lhu          s2, -36(sp)
                  sh           a0, -48(sp)
                  lb           tp, 5(sp)
                  sub          a2, tp, a5
                  slli         t2, s5, 27
                  lbu          t3, -54(sp)
                  srl          a3, s2, t4
                  lbu          t1, -15(sp)
                  ori          s5, s8, -1031
                  lh           s8, -60(sp)
                  sltiu        a5, t6, 316
                  sb           a3, -53(sp)
                  lb           zero, -19(sp)
                  lhu          tp, -34(sp)
                  srai         t5, t1, 15
                  lb           s8, -7(sp)
                  lbu          t0, 54(sp) #end riscv_load_store_rand_instr_stream_10
                  bne          t0, t1, 687f
                  srl          gp, a4, s7
669:              sltiu        a5, ra, 1704
                  auipc        gp, 791496
671:              slt          s2, ra, ra
                  blt          s3, gp, 674f
673:              add          s2, s6, s9
674:              xori         gp, t1, -245
                  sub          a1, s11, t6
                  andi         t5, s1, -1521
                  bgeu         a3, a6, 695f
678:              sltu         a3, s9, gp
                  sll          ra, s3, s8
                  srl          t0, t6, a7
                  ori          t5, s3, 465
                  xori         gp, s3, 729
                  nop
                  addi         s7, s8, 1858
                  slli         zero, t5, 28
                  bne          s4, s9, 691f
687:              andi         s5, gp, -901
                  slli         gp, a3, 21
                  bge          s8, t3, 693f
                  slli         t1, a1, 20
691:              sub          a3, a5, t3
                  xor          s11, ra, a5
693:              beq          s5, tp, 702f
                  sub          s1, a1, s11
695:              beq          tp, s5, 715f
                  auipc        a3, 494267
                  bge          gp, a5, 699f
                  bne          s3, t0, 714f
699:              xori         a1, sp, -599
                  add          a4, s1, s5
                  add          a6, t0, t2
702:              xori         zero, zero, -1208
                  slli         a5, t3, 25
                  andi         s9, s9, 1325
                  lui          s9, 164912
                  bge          a1, s3, 726f
                  add          s10, a7, t4
                  addi         a7, a4, -428
                  sltu         a2, s11, a0
                  bne          s7, a3, 726f
                  srai         zero, s6, 23
                  bne          t2, gp, 722f
                  sltu         a4, t1, a4
714:              blt          a1, s7, 719f
715:              auipc        a4, 543701
                  bge          t3, a5, 723f
                  and          s6, t0, a4
                  sub          s8, gp, s4
719:              blt          tp, s7, 720f
720:              blt          a1, t5, 740f
                  sra          t1, t6, t4
722:              slt          s0, s11, tp
723:              or           t0, gp, s7
                  lui          s9, 509993
                  xori         t0, ra, 2002
726:              sub          s0, a7, t1
                  bge          gp, s7, 733f
                  slli         a7, tp, 24
                  sub          a3, t4, a4
                  sub          a4, s6, s5
                  or           s9, s10, a7
                  srai         s4, s4, 4
733:              addi         s7, s9, -1928
                  slt          t4, t3, t2
                  or           t1, t0, t6
                  addi         t4, s1, 1542
                  ori          t2, s8, -120
                  blt          s5, a5, 742f
                  srli         a5, t1, 9
740:              sltiu        t1, a3, 1098
                  bgeu         zero, t0, 745f
742:              ori          s11, a2, 503
                  andi         t2, gp, 859
                  slti         a7, ra, -1011
745:              slli         s4, a1, 20
                  blt          s10, t0, 762f
                  slti         s8, sp, 1924
                  blt          t5, t0, 756f
                  sra          s5, t1, s1
                  sltiu        s8, ra, 579
                  sub          sp, a0, a5
                  and          t0, a4, gp
                  xor          a3, gp, t2
                  bge          sp, t0, 768f
                  or           s0, s7, sp
756:              slli         a2, a0, 19
                  lui          t1, 891573
                  or           s1, s9, t3
                  add          t3, s2, a7
                  bne          t4, t5, 774f
                  xori         tp, t0, 332
762:              srl          s11, a7, s2
                  addi         s8, s6, 1261
                  ori          s6, gp, 61
                  bltu         s4, t3, 785f
                  or           tp, s7, tp
                  sltiu        a1, t0, -1441
768:              sub          s9, a5, s4
                  bltu         a5, t3, 774f
                  andi         s7, s4, 69
                  bltu         a6, a2, 780f
                  xori         t2, s1, 1486
                  bgeu         a1, s1, 793f
774:              sub          s6, zero, t4
                  xor          gp, s0, s3
                  sra          a6, s6, ra
                  blt          s10, t6, 790f
                  srl          s5, a0, s2
                  add          s10, gp, t5
780:              andi         ra, gp, 1051
                  ori          t4, s9, -841
                  bge          a6, s3, 787f
                  add          a7, a0, s11
                  blt          t5, s6, 804f
785:              bge          t5, s3, 801f
                  xor          t4, s4, s10
787:              sra          a4, t3, s9
                  addi         a1, t3, 1087
                  slt          zero, a3, s8
790:              slt          s7, s7, s0
                  xori         s2, sp, 1382
                  add          s7, s9, a5
793:              bne          s1, s3, 799f
                  slli         s6, ra, 19
                  sltu         t1, ra, t5
                  bltu         t4, t2, 804f
                  add          t5, t1, a5
                  auipc        tp, 761924
799:              bge          s2, ra, 805f
                  srli         ra, a5, 3
801:              beq          s0, t2, 803f
                  bltu         a7, a0, 806f
803:              bltu         t0, gp, 819f
804:              bgeu         gp, s6, 812f
805:              bge          t6, s5, 812f
806:              sltiu        gp, a6, 928
                  la           sp, region_0+139 #start riscv_load_store_rand_instr_stream_5
                  andi         s2, sp, -1180
                  or           s9, s6, t5
                  auipc        s11, 115442
                  slt          t3, t5, zero
                  sub          s10, s8, t0
                  slli         a1, s8, 7
                  lb           t1, 718(sp)
                  add          s10, t1, s10
                  or           a4, a4, s10
                  sltu         zero, sp, s10
                  xor          s0, sp, t2
                  slt          a7, s11, s11
                  lw           s1, 1037(sp)
                  or           t1, s3, s11
                  xor          t1, s7, s6
                  auipc        tp, 851613
                  nop
                  xor          s0, a0, t0
                  sub          s4, s6, a1
                  lh           zero, 137(sp)
                  sltu         t1, t5, a2
                  sltiu        ra, s6, 2034
                  srai         s1, s7, 14
                  andi         a2, t1, 332
                  lb           t5, 1692(sp)
                  lb           t5, 163(sp)
                  xori         ra, s4, -1872
                  lw           tp, 649(sp)
                  or           ra, a6, t5
                  sll          zero, t2, s11
                  lh           gp, 1029(sp)
                  lui          a1, 130940
                  sll          s1, s5, sp
                  sub          s8, t3, a3
                  srli         t1, t3, 31
                  sb           ra, 114(sp)
                  lh           gp, -99(sp)
                  sub          t0, t4, t6
                  sb           a4, 1639(sp)
                  lb           t0, 1222(sp) #end riscv_load_store_rand_instr_stream_5
                  srli         zero, a0, 0
                  sub          s4, s4, s10
                  xor          t4, a7, s4
                  blt          tp, sp, 811f
811:              bltu         s7, t0, 827f
812:              and          a3, a0, s6
                  or           t3, t0, tp
                  auipc        s1, 641006
                  sltu         tp, t2, a3
                  ori          s10, a7, 278
                  sltu         s1, s11, a4
                  sltu         sp, gp, t1
819:              addi         a7, s9, 1022
                  srli         a7, sp, 3
                  auipc        s4, 88247
                  slli         s10, a0, 28
                  bge          a7, a0, 824f
824:              srai         t0, s8, 27
                  sra          s8, s10, s3
                  bgeu         s2, t3, 838f
827:              and          a5, s3, a6
                  sra          ra, a4, a1
                  sra          s2, a4, a0
                  bltu         s9, s5, 840f
                  sltu         t0, t1, s11
                  blt          s11, a7, 852f
                  sltu         a6, t1, a1
                  slli         s6, a2, 21
                  bgeu         s0, a3, 839f
                  bgeu         zero, zero, 856f
                  bge          s11, sp, 853f
838:              srli         s4, s7, 10
839:              srai         t2, s10, 20
840:              xori         s10, a6, 373
                  bne          a7, a6, 859f
                  srai         a3, s3, 7
                  sltiu        ra, a3, -390
                  ori          t5, s10, -1110
                  sltiu        zero, a0, -377
                  and          t2, a1, s2
                  sll          t2, a6, t2
                  srai         s10, t6, 24
                  slti         a1, s11, -593
                  auipc        gp, 102207
                  srai         t4, s4, 4
852:              auipc        s6, 813805
853:              bne          s0, t2, 855f
                  auipc        s11, 559241
855:              sltiu        s5, s10, 1597
856:              or           s9, t6, s5
                  or           s2, s10, s10
                  add          a4, ra, ra
859:              srli         t4, s2, 14
                  or           a3, s1, a6
                  slli         sp, s2, 8
                  blt          t6, a3, 866f
                  beq          t1, a7, 879f
                  nop
                  beq          t5, t1, 885f
866:              srai         a1, s8, 12
                  srli         a3, a7, 25
                  bltu         t6, s5, 881f
                  lui          tp, 852490
                  and          zero, s8, s11
                  slti         a5, a7, -448
                  lui          sp, 501246
                  bne          t1, t1, 889f
                  slt          a7, t0, a2
                  sltu         t2, zero, t3
                  and          s5, ra, s4
                  addi         a4, a2, -56
                  bge          t1, s4, 894f
879:              xori         a3, s1, 910
                  xor          s9, t5, s7
881:              slt          t0, t5, a6
                  bne          s8, s9, 902f
                  srai         t1, t0, 9
                  xori         s1, s4, 791
885:              sra          s6, a5, zero
                  andi         t3, a7, 20
                  slti         s10, t6, 574
                  xor          a3, s5, a3
889:              bne          t1, a3, 905f
                  slti         s0, a3, 820
                  addi         a7, t0, -900
                  andi         t4, t1, 1159
                  bne          s4, s5, 913f
894:              srl          a1, s1, s3
                  nop
                  bgeu         tp, t6, 910f
                  slt          a5, s11, s3
                  bltu         a5, s9, 900f
                  addi         t3, ra, -1808
900:              sltiu        s1, s4, -252
                  nop
902:              xori         s9, s7, 1003
                  sltu         a1, a5, ra
                  or           s2, sp, s7
905:              lui          s11, 339251
                  bne          s0, s11, 922f
                  sll          s9, a4, a4
                  bgeu         a5, s2, 913f
                  xori         a5, s5, -348
910:              srai         s11, t3, 3
                  slli         t3, s3, 17
                  andi         s7, s1, -1966
913:              addi         s0, sp, 660
                  lui          gp, 870226
                  nop
                  lui          a5, 639644
                  sll          t2, s5, s3
                  lui          t2, 183337
                  sltu         s1, s8, s2
                  sll          sp, gp, t4
                  nop
922:              sra          s8, s10, ra
                  sra          a6, a6, t4
                  slt          gp, t6, s3
                  xori         a4, a7, -359
                  bne          a7, t1, 938f
                  blt          s11, s5, 937f
                  auipc        s6, 612443
                  bgeu         t1, s11, 947f
                  sltu         s4, sp, a5
                  beq          s6, s8, 939f
                  slti         a1, gp, 1719
                  andi         s2, s4, 1075
                  bne          a4, s11, 940f
                  blt          s7, sp, 943f
                  srli         s2, s10, 28
937:              bltu         a5, s11, 957f
938:              xor          s6, gp, a2
939:              xor          t2, s6, t1
940:              srl          zero, s3, s8
                  slt          a5, t6, s3
                  sll          a5, ra, s2
943:              srl          s7, s5, s9
                  slt          a2, s11, s9
                  bge          s5, s11, 954f
                  add          t1, a5, s11
947:              or           t2, t0, s1
                  beq          s2, s1, 953f
                  sub          s9, t6, s8
                  sra          a7, a3, zero
                  bge          t3, s3, 955f
                  sub          t3, t6, s2
953:              beq          s3, t1, 955f
954:              srli         t0, s8, 28
955:              andi         a1, s7, 2019
                  andi         ra, s2, -1097
957:              sltu         t3, s3, a6
                  nop
                  addi         t2, a3, -1167
                  sub          t0, s5, s10
                  sltu         a3, t4, a6
                  sll          gp, sp, a6
                  bge          s11, tp, 970f
                  bgeu         a0, a2, 968f
                  slti         t3, a2, 371
                  lui          a7, 819383
                  xori         s8, t6, -731
968:              xori         t4, s8, -221
                  add          t0, a2, t5
970:              srai         a6, a7, 25
                  srl          a6, s7, s7
                  xori         t3, a6, -644
                  sltiu        a2, a7, 1629
                  add          t1, sp, t1
                  xor          a3, a1, t3
                  andi         zero, s10, -2012
                  xori         s2, a5, 1733
                  slli         s0, a2, 4
                  or           s7, s0, s8
                  xori         t3, t5, 1021
                  slti         s7, sp, -955
                  slti         s4, ra, 554
                  slli         a4, s6, 1
                  andi         a4, t2, -1422
                  ori          a5, s6, -242
                  beq          t5, zero, 992f
                  srli         s4, sp, 13
                  sra          tp, s8, zero
                  srai         t5, ra, 15
                  sra          t5, a4, s3
                  beq          s9, s3, 1011f
992:              add          t1, s8, a5
                  srai         s5, gp, 7
                  addi         s6, zero, 1888
                  ori          t1, s1, 1331
                  sltu         s2, a2, s11
                  bltu         ra, s2, 1001f
                  ori          s11, s6, 1547
                  bltu         s8, s7, 1015f
                  sltiu        sp, a0, 140
1001:             xor          a3, t3, s7
                  slli         t3, t4, 14
                  or           t2, gp, a7
                  bne          a5, a4, 1005f
1005:             srai         s5, s8, 2
                  slli         a2, a7, 0
                  bltu         a7, t4, 1008f
1008:             sub          a3, s4, s11
                  srli         s9, gp, 20
                  ori          s6, t1, -1334
1011:             auipc        s6, 454534
                  slt          s10, tp, s1
                  bge          s8, a2, 1031f
                  slti         s10, t4, -292
1015:             blt          a3, t1, 1025f
                  lui          t3, 216898
                  srai         a1, gp, 10
                  beq          t3, t1, 1026f
                  bne          a2, ra, 1023f
                  ori          a6, a6, -1092
                  sltu         s11, s3, tp
                  beq          s3, t4, 1030f
1023:             bge          s8, a1, 1043f
                  blt          s3, t2, 1036f
1025:             beq          t4, a6, 1029f
1026:             srli         t2, s9, 10
                  srli         s7, s7, 17
                  sltu         tp, t0, s3
1029:             slt          s0, s11, s4
1030:             srai         s0, t0, 2
1031:             bge          sp, s3, 1051f
                  nop
                  add          s8, a5, s9
                  xor          s9, t6, s8
                  ori          t0, s11, -1692
1036:             sub          ra, s10, t2
                  sltu         t5, t6, a0
                  lui          s1, 491328
                  add          s11, t2, a6
                  nop
                  xor          t1, s1, s0
                  bge          s5, s11, 1058f
1043:             slti         t4, s6, -135
                  lui          sp, 17222
                  auipc        a4, 275810
                  addi         gp, s5, 744
                  andi         t0, tp, 44
                  slli         gp, tp, 31
                  srai         s4, a6, 24
                  addi         s0, a5, -1372
1051:             auipc        a1, 117374
                  beq          gp, s0, 1058f
                  sub          s6, t2, s3
                  bgeu         s5, a7, 1056f
                  slli         a3, a3, 30
1056:             slt          s10, s3, a2
                  bne          t6, s9, 1061f
1058:             xori         a5, s11, 456
                  nop
                  addi         s9, a2, 1474
1061:             sll          s6, t4, a0
                  xor          t2, t6, s11
                  bne          s5, t0, 1083f
                  sub          a4, ra, s6
                  sra          a2, s9, s2
                  srli         s2, a6, 9
                  bgeu         a3, a5, 1083f
                  add          t2, sp, s4
                  beq          s6, s5, 1075f
                  auipc        s6, 72630
                  sltu         t3, t5, t1
                  and          a5, a0, s4
                  bge          a7, s1, 1086f
                  srl          t2, a3, s5
1075:             sll          a5, t5, t3
                  auipc        t1, 885488
                  auipc        t5, 271097
                  srai         a5, a0, 8
                  xori         ra, t4, -924
                  blt          tp, gp, 1081f
1081:             bgeu         t3, zero, 1097f
                  sra          a2, s7, s6
1083:             ori          zero, s8, 1043
                  sltiu        zero, a4, 698
                  auipc        s4, 459997
1086:             sub          gp, s3, a5
                  and          s1, a5, s1
                  slti         tp, s0, -1254
                  sra          s5, a3, t2
                  nop
                  srai         a2, s11, 27
                  sll          s0, t4, a7
                  bgeu         s1, s3, 1094f
1094:             bne          a5, a6, 1110f
                  sltiu        s6, s0, 1038
                  xor          a5, s7, gp
1097:             andi         s4, tp, 240
                  srl          gp, gp, gp
                  beq          a6, s8, 1119f
                  sra          s4, s5, gp
                  srli         s5, t3, 24
                  bne          a4, s11, 1104f
                  lui          s1, 744239
1104:             sltiu        ra, a3, -1269
                  sra          a5, s0, s0
                  addi         t5, t6, 842
                  and          s7, a3, t3
                  bge          zero, s10, 1124f
                  or           sp, s6, s4
1110:             nop
                  beq          s2, s4, 1116f
                  sltu         a7, t6, t1
                  auipc        t1, 77668
                  auipc        t4, 820175
                  xor          s4, a1, ra
1116:             auipc        a7, 308371
                  nop
                  add          ra, t3, a7
1119:             xor          gp, s1, a3
                  auipc        t1, 355195
                  bltu         s1, s4, 1128f
                  sub          a4, t6, gp
                  andi         t1, s8, -1422
1124:             addi         s1, a2, -1267
                  bne          gp, s2, 1130f
                  slti         a6, s10, -73
                  and          gp, a0, t1
1128:             beq          s10, s8, 1137f
                  blt          t1, a3, 1143f
1130:             slli         a2, gp, 14
                  beq          ra, tp, 1151f
                  andi         a1, s10, 178
                  addi         s5, a3, -1954
                  add          s6, s6, tp
                  ori          a1, s9, -2008
                  bgeu         t3, s4, 1138f
1137:             beq          s1, ra, 1146f
1138:             beq          s2, t2, 1139f
1139:             sll          s9, ra, sp
                  bltu         t5, a4, 1147f
                  bne          s11, tp, 1149f
                  beq          s7, s7, 1148f
1143:             bltu         s2, a7, 1159f
                  lui          a3, 620008
                  sub          s11, sp, a3
1146:             slt          a6, s9, t0
1147:             beq          sp, s10, 1167f
1148:             srli         a5, t5, 6
1149:             auipc        sp, 677984
                  srli         gp, s9, 25
1151:             lui          a4, 39255
                  lui          a6, 154029
                  bne          tp, s9, 1154f
1154:             slti         s9, s2, -1808
                  sltu         a6, s4, a7
                  srl          a6, s5, s8
                  xor          t2, t4, t3
                  bne          sp, a2, 1166f
1159:             srl          a7, t3, s0
                  nop
                  sll          s5, t2, s7
                  or           s2, t6, t3
                  slt          gp, s11, s7
                  addi         s5, ra, 1432
                  sltiu        s1, s2, 94
1166:             xori         gp, sp, -1755
1167:             xor          sp, s6, t5
                  xori         t1, a4, -1816
                  bge          s8, ra, 1185f
                  slti         s7, s6, -1977
                  sltu         t5, s6, zero
                  bltu         s5, ra, 1192f
                  srai         t5, t1, 14
                  sub          a7, t0, sp
                  bgeu         s8, s10, 1180f
                  auipc        s10, 1039626
                  srai         t2, s9, 13
                  slli         s1, t3, 10
                  sub          a7, t4, t5
1180:             andi         t3, s2, 285
                  blt          s2, sp, 1185f
                  xori         a4, s3, -1690
                  bge          a7, ra, 1203f
                  sra          a2, t5, s9
1185:             srli         gp, s0, 4
                  sltiu        gp, t0, -40
                  blt          zero, s2, 1207f
                  bne          zero, t1, 1200f
                  auipc        a5, 1009441
                  ori          s7, t5, 1674
                  nop
1192:             srai         s9, s2, 13
                  auipc        a7, 262132
                  or           s6, s4, s2
                  lui          zero, 262800
                  add          t3, s7, sp
                  bne          s11, s11, 1202f
                  sltiu        zero, a0, 789
                  bge          s3, s10, 1212f
1200:             srl          ra, sp, s8
                  lui          tp, 997362
1202:             blt          t6, a4, 1222f
1203:             sll          sp, t0, a2
                  addi         t2, s0, 1182
                  addi         s11, a5, 211
                  slti         s9, a7, 1355
1207:             sub          t0, s8, s4
                  sra          a6, s5, s7
                  slti         s2, s2, 1579
                  bgeu         a1, s7, 1220f
                  auipc        a5, 631270
1212:             xor          s6, a2, s11
                  addi         t3, t4, 1464
                  slti         a4, t5, -463
                  sltu         t3, t6, t3
                  auipc        t3, 547527
                  ori          a2, s3, -1404
                  nop
                  slti         s0, a3, 1704
1220:             xori         a1, t0, -330
                  sll          t3, t3, a0
1222:             srl          a3, t1, a5
                  xori         s10, a5, 909
                  sra          zero, a4, s0
                  xori         a2, t4, 949
                  beq          sp, a1, 1230f
                  addi         s4, zero, -1382
                  sltiu        gp, tp, 1372
                  xori         a6, s2, -925
1230:             sltiu        sp, tp, -975
                  sub          s0, s7, t1
                  srai         s10, t5, 14
                  blt          a7, s4, 1249f
                  sra          s4, a2, t2
                  lui          s8, 103190
                  addi         s4, a2, -245
                  xor          zero, s10, a1
                  nop
                  beq          t0, s7, 1255f
                  slli         t5, s1, 17
                  srai         zero, a6, 10
                  srai         gp, tp, 2
                  andi         t4, s4, -1242
                  srai         tp, s0, 10
                  sll          s8, a3, t6
                  add          s7, s11, t5
                  slti         s5, t4, 248
                  ori          t5, t1, -1342
1249:             slli         s2, a4, 25
                  andi         zero, s8, -85
                  add          a6, a1, t5
                  lui          s11, 194404
                  srli         a3, t3, 31
                  addi         t2, tp, 1066
1255:             bltu         t5, a4, 1269f
                  xori         s4, zero, -2040
                  xor          s7, zero, s4
                  and          s6, t0, t5
                  srai         s0, gp, 7
                  addi         zero, gp, -298
                  auipc        s0, 905540
                  and          s1, t4, a2
                  bgeu         sp, s4, 1265f
                  lui          s2, 133955
1265:             addi         t4, t2, -320
                  xor          ra, t2, s6
                  and          s8, s4, a5
                  andi         t4, a5, 386
1269:             sltiu        a3, t6, 1359
                  bgeu         s0, s5, 1288f
                  sltiu        t5, t5, 744
                  addi         a2, s8, 1862
                  srl          t0, t1, tp
                  lui          s9, 822310
                  srl          s4, t1, t6
                  bge          s9, t1, 1292f
                  nop
                  blt          s11, s11, 1284f
                  xor          s9, t3, a3
                  slt          a3, ra, s10
                  slti         t3, s11, -24
                  add          t2, s10, t2
                  blt          t1, a4, 1287f
1284:             slt          s8, a5, s9
                  and          t3, s1, t4
                  srai         s8, gp, 20
1287:             beq          t0, t3, 1292f
1288:             auipc        s9, 348103
                  add          tp, sp, t5
                  xori         a6, t5, 1346
                  beq          s11, s11, 1301f
1292:             srli         s8, s8, 5
                  auipc        s7, 66020
                  sltu         a6, t2, tp
                  nop
                  sltiu        gp, a1, 1978
                  addi         a6, s6, 89
                  lui          t5, 746051
                  la           s6, sub_2
                  sll          a1, s6, s7
                  addi         s6, s6, 282
                  and          s8, t2, a1
                  add          a2, ra, t0
                  sltu         t3, t5, ra
                  bge          s0, t6, main_j4 #branch to jump instr
                  srl          a7, a0, t6
                  lui          t4, 431231
                  xor          t0, t1, a1
main_j4:          jalr         s0, s6, -281 #jump main -> sub_2
                  slti         s0, s7, -1392
                  and          s9, t0, zero
                  andi         a3, t0, 672
1301:             or           a7, gp, t0
                  beq          s9, a5, 1310f
                  ori          s5, a1, -1909
                  sll          t2, a5, t1
                  ori          s0, s3, 1111
                  sub          t5, ra, a0
                  beq          t4, s10, 1312f
                  srli         s2, a4, 9
                  ori          s0, s6, 1984
1310:             bge          a1, a1, 1314f
                  sub          s7, a6, s6
1312:             andi         t2, ra, 1901
                  sub          s11, ra, ra
1314:             slti         a7, a6, 1571
                  addi         s8, s2, -1732
                  sub          t1, s6, a2
                  andi         a4, s9, -1303
                  srai         t4, a2, 5
                  bgeu         t4, a2, 1325f
                  srli         t1, sp, 24
                  nop
                  sltu         a2, s8, t0
                  bltu         s1, s7, 1325f
                  nop
1325:             add          s10, t1, s5
                  bgeu         a5, a7, 1342f
                  bne          ra, a5, 1329f
                  slli         gp, tp, 14
1329:             sltiu        s6, zero, -426
                  xori         s10, a7, 67
                  addi         t4, a1, 1453
                  bne          s6, zero, 1352f
                  bgeu         a2, a4, 1334f
1334:             srli         s0, t0, 24
                  ori          gp, t5, -1997
                  bgeu         t4, s11, 1356f
                  andi         s2, t3, -1679
                  blt          a2, s3, 1346f
                  slt          s8, a2, ra
                  bltu         s3, t2, 1360f
                  bge          t3, ra, 1348f
1342:             or           gp, s11, t5
                  slli         ra, t6, 11
                  lui          t2, 178106
                  slt          a6, a6, s8
1346:             bne          a2, t5, 1347f
1347:             bltu         s8, s7, 1363f
1348:             sra          a7, a7, t3
                  lui          t4, 733688
                  xor          sp, t2, s4
                  slt          s8, s5, ra
1352:             nop
                  xori         s10, t5, -516
                  srai         s1, a4, 18
                  bgeu         tp, s5, 1359f
1356:             bne          t5, t6, 1372f
                  beq          s4, a4, 1377f
                  sltu         zero, zero, a6
1359:             srli         s0, t0, 19
1360:             sll          t5, a7, s6
                  bne          a2, gp, 1375f
                  sub          s4, s11, s5
1363:             srl          s11, s5, tp
                  sub          sp, a3, a5
                  addi         t2, sp, -1617
                  sra          gp, sp, s4
                  slt          s4, tp, s7
                  andi         tp, s7, 316
                  slti         t1, ra, 1903
                  bltu         s2, t4, 1374f
                  bltu         s6, s0, 1387f
1372:             srli         s6, zero, 21
                  slt          s10, s5, t6
1374:             and          s10, s5, t0
1375:             sltiu        s9, t6, 990
                  or           a4, s3, s6
1377:             nop
                  auipc        s4, 121112
                  xori         t5, s0, 336
                  beq          s7, tp, 1393f
                  sltiu        ra, a4, -200
                  slti         a1, s7, 980
                  slli         s8, gp, 21
                  blt          a7, s9, 1400f
                  sltiu        t2, a2, 499
                  andi         s0, a6, -439
1387:             and          a1, ra, s7
                  slli         s10, s4, 0
                  nop
                  slli         zero, s9, 13
                  sra          s1, s7, a7
                  blt          t4, s6, 1404f
1393:             sra          s5, t5, s9
                  and          a3, a4, t2
                  ori          s11, a0, -1989
                  add          s10, s10, s6
                  nop
                  xori         tp, t1, 614
                  bne          s10, s5, 1419f
1400:             slli         a7, t1, 3
                  or           s10, a5, a6
                  beq          zero, a6, 1408f
                  bltu         s7, s0, 1412f
1404:             add          t3, t1, s1
                  beq          s1, t3, 1423f
                  ori          t1, s11, 1450
                  slt          a4, s6, s2
1408:             auipc        a3, 72026
                  beq          a6, s11, 1419f
                  andi         t3, s10, -1891
                  bltu         a0, sp, 1431f
1412:             srli         a6, tp, 21
                  srai         s8, a0, 25
                  beq          tp, t1, 1415f
1415:             auipc        t4, 722468
                  sub          a7, a5, s7
                  slti         s7, t6, 957
                  sll          sp, t3, a5
1419:             blt          s9, t6, 1431f
                  srl          zero, a4, t5
                  bltu         a6, s8, 1425f
                  slti         t2, a1, 2024
1423:             or           s9, a6, s4
                  slli         a1, a3, 0
1425:             slti         t0, tp, -468
                  bltu         t2, s9, 1434f
                  bltu         tp, s6, 1429f
                  nop
1429:             blt          gp, a2, 1443f
                  ori          s1, s8, -1299
1431:             sub          t1, ra, gp
                  bgeu         t3, t4, 1436f
                  sra          t4, s9, a4
1434:             sll          zero, s10, t4
                  lui          sp, 218371
1436:             blt          s8, t6, 1452f
                  sll          s7, s1, s1
                  bne          a4, s10, 1458f
                  auipc        sp, 1033705
                  sltiu        a6, t3, 1141
                  sub          s2, a6, s5
                  addi         a3, s7, 527
1443:             srai         sp, s11, 2
                  sltiu        s2, t4, -1955
                  addi         s11, t6, -676
                  srl          a6, t3, s4
                  nop
                  srai         s6, a6, 10
                  auipc        a4, 107550
                  or           t3, t1, t1
                  ori          a3, t1, 1914
1452:             and          t1, a6, s6
                  srai         zero, s9, 4
                  srli         t0, t3, 24
                  slt          s2, s9, a2
                  beq          a4, s6, 1461f
                  bge          t2, s5, 1473f
1458:             blt          a3, a7, 1466f
                  slli         s11, s3, 5
                  add          sp, s0, s11
1461:             bge          t1, s2, 1467f
                  slli         s0, a5, 24
                  bne          s5, s3, 1472f
                  bltu         gp, a2, 1480f
                  srli         s0, s6, 9
1466:             addi         t5, s9, 800
1467:             addi         a3, s4, -1771
                  add          t4, a6, s1
                  srl          tp, a5, s11
                  addi         a4, t6, -266
                  and          s10, s5, s2
1472:             bge          s1, a5, 1476f
1473:             bgeu         ra, a1, 1493f
                  sltiu        s7, a7, 1482
                  srai         s9, zero, 15
1476:             add          a6, s8, s3
                  blt          a3, t2, 1497f
                  lui          s8, 431904
                  bne          s1, s10, 1486f
1480:             bgeu         s7, t0, 1493f
                  sltu         s5, s10, t5
                  bgeu         s4, a6, 1487f
                  srai         s2, s1, 22
                  slt          s9, s2, a7
                  sltu         s8, a0, zero
1486:             and          t3, t5, a2
1487:             slti         s7, t2, -1407
                  slt          t1, t4, s3
                  la           s6, sub_1
                  xori         a2, a4, -605
                  srli         a6, zero, 1
                  sltu         s9, t4, a4
                  addi         s6, s6, -212
                  nop
                  nop
                  auipc        s10, 949424
main_j2:          jalr         s0, s6, 213 #jump main -> sub_1
                  bge          s2, s9, 1490f
1490:             bgeu         a2, gp, 1508f
                  auipc        t0, 451798
                  beq          a4, gp, 1508f
1493:             sra          gp, a6, gp
                  addi         a1, s5, 1657
                  blt          t5, s6, 1511f
                  xor          s8, s11, t1
1497:             sltu         a4, t5, a5
                  lui          s0, 171254
                  add          s1, s8, a5
                  bgeu         t4, s1, 1502f
                  bge          s5, t6, 1521f
1502:             bge          s11, zero, 1508f
                  srai         a2, s8, 28
                  sub          s5, tp, a1
                  sltu         s6, zero, s8
                  andi         s9, zero, 2027
                  slli         gp, sp, 16
1508:             addi         s1, s10, -1379
                  srli         s9, ra, 28
                  add          s0, a4, zero
1511:             xor          a1, a1, tp
                  nop
                  lui          a7, 829438
                  bne          tp, s9, 1518f
                  lui          s10, 922017
                  slti         gp, t1, -524
                  addi         s5, s5, 1316
1518:             add          s11, s9, t0
                  bgeu         t6, a3, 1520f
1520:             add          t0, a0, t6
1521:             srai         a6, a5, 16
                  beq          s8, s9, 1528f
                  sub          s9, t1, a7
                  srli         s2, s5, 6
                  beq          s4, a5, 1527f
                  ori          sp, gp, 787
1527:             srai         a6, s1, 9
1528:             slli         sp, a4, 12
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            sll          sp, tp, a1
                  bne          a7, t4, sub_4_stack_p
                  srli         s4, zero, 13
                  srli         s10, gp, 29
sub_4_stack_p:    addi         s3, s3, -16
                  andi         a7, a6, 368
                  slti         s8, zero, 1266
                  addi         a4, s7, 77
                  sltu         s6, a3, gp
                  sw           s0, 4(s3)
                  nop
                  la           sp, region_0+1554 #start riscv_load_store_rand_instr_stream_10
                  lbu          a2, 4(sp)
                  sb           s8, -5(sp)
                  lb           a7, -1(sp)
                  sb           s11, 3(sp)
                  lb           s2, -5(sp)
                  sb           s4, 16(sp)
                  slt          s8, s4, a7
                  addi         s10, t3, -809
                  sub          s9, s10, s2
                  sw           a4, 6(sp)
                  slli         t3, t1, 29
                  sltu         s6, s7, s9
                  lbu          a3, -13(sp)
                  or           t4, s6, s11
                  sb           t5, 16(sp)
                  lbu          a4, -2(sp)
                  srai         s9, s5, 12
                  srai         a6, s10, 15
                  lh           a6, 2(sp)
                  lb           s10, 5(sp)
                  xori         a3, gp, -73
                  sw           a4, -14(sp)
                  slti         t1, s9, 765
                  srai         zero, tp, 31
                  slli         t5, t6, 18
                  lbu          a6, 12(sp)
                  auipc        zero, 291198
                  lbu          t2, 7(sp)
                  srl          s9, t0, tp
                  sb           t5, 3(sp)
                  sh           t5, -12(sp)
                  nop
                  sra          t1, s8, s6
                  lhu          t2, 16(sp)
                  andi         s6, t3, 1550
                  lui          ra, 125727
                  sh           s9, 10(sp)
                  sb           t5, 15(sp)
                  ori          t5, gp, 611
                  lb           a3, 1(sp)
                  slt          a6, ra, s10
                  lb           s4, -7(sp)
                  lbu          t4, 7(sp)
                  slli         s7, s5, 18
                  sh           t3, 6(sp)
                  or           s7, t0, s1
                  lh           t3, -8(sp)
                  or           ra, t4, s9
                  lbu          t3, 7(sp)
                  sw           s2, -2(sp)
                  xor          t2, s6, s5
                  sb           a5, -7(sp) #end riscv_load_store_rand_instr_stream_10
                  la           s10, region_0+1106 #start riscv_load_store_rand_instr_stream_9
                  xori         s2, a1, 256
                  nop
                  sra          tp, s6, s7
                  lhu          s11, -60(s10)
                  lbu          sp, -31(s10)
                  sb           a4, 21(s10)
                  addi         ra, a5, -306
                  addi         t4, s10, -1483
                  addi         gp, s9, -546
                  lb           a2, 2(s10)
                  sb           t3, 59(s10)
                  sh           t2, -50(s10)
                  lb           s4, -23(s10)
                  slli         ra, tp, 8
                  lbu          a1, 35(s10)
                  srl          s7, a4, a4
                  sb           t0, 41(s10)
                  sltiu        s6, s2, 584
                  sltu         t5, zero, s2
                  xori         t2, a1, -1927
                  lb           a5, 2(s10)
                  lh           sp, -52(s10)
                  sub          t0, gp, t3
                  srli         gp, s9, 7
                  sll          gp, zero, gp
                  addi         sp, t2, 1011
                  and          tp, zero, s10
                  andi         gp, s5, -1500
                  lui          s1, 140856
                  sb           s8, 40(s10)
                  lb           s6, -37(s10)
                  nop
                  lbu          ra, 33(s10)
                  addi         a3, a6, 1304
                  xor          a5, a3, a1
                  ori          s9, tp, -1841
                  andi         s4, tp, -548
                  sb           s10, -51(s10)
                  sltiu        s8, a3, 1133
                  sh           t6, 38(s10)
                  lh           t4, 4(s10)
                  lbu          s4, -24(s10)
                  srli         s8, s8, 25
                  sub          s2, s6, s5
                  nop
                  lui          t1, 536778
                  add          a2, t4, t4
                  lbu          gp, 41(s10)
                  lh           a6, 32(s10) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+1 #start riscv_load_store_rand_instr_stream_8
                  lb           s8, 1563(sp)
                  sb           a3, 922(sp)
                  lbu          tp, 780(sp)
                  lb           gp, 67(sp)
                  sb           s2, 1696(sp)
                  add          a5, s0, ra
                  sh           t0, 1805(sp)
                  lhu          a4, 1193(sp)
                  sub          t5, a1, s4
                  xori         s8, t2, -1383
                  lb           t1, 787(sp)
                  lb           s2, 611(sp)
                  xor          s1, zero, t2
                  sll          s11, a7, s1
                  sb           s0, 1384(sp)
                  sb           s4, 1563(sp)
                  lhu          s2, 1875(sp)
                  lb           a3, 322(sp)
                  sb           tp, 436(sp)
                  sb           s4, 597(sp)
                  srli         s0, s3, 24
                  lh           a3, 1489(sp)
                  lbu          t0, 861(sp)
                  andi         ra, s1, 591
                  lbu          t2, 1759(sp)
                  sw           t4, 475(sp)
                  sb           t4, 1436(sp)
                  sra          t5, t4, a1
                  slli         a5, t4, 24
                  lbu          t0, 642(sp)
                  lhu          a1, 617(sp)
                  lbu          s10, 1966(sp)
                  lh           s10, 773(sp)
                  slli         gp, t5, 20
                  sb           a0, 1776(sp)
                  lhu          a7, 737(sp)
                  lh           zero, 1833(sp) #end riscv_load_store_rand_instr_stream_8
                  la           a4, region_0+1818 #start riscv_load_store_rand_instr_stream_12
                  lbu          a2, -59(a4)
                  andi         zero, s8, 742
                  lb           a3, 56(a4)
                  lb           s8, -29(a4)
                  sh           t1, 0(a4)
                  lb           a3, 12(a4)
                  sb           t1, -60(a4)
                  sub          s10, gp, s9
                  sub          s6, a5, t3
                  xor          s11, t2, ra
                  addi         s10, t5, -1212
                  sb           t3, 17(a4)
                  sltu         t4, t0, t1
                  andi         s2, ra, -1095
                  or           s7, t3, t0
                  add          t1, s7, s6
                  lui          gp, 41295
                  nop
                  lbu          a3, -23(a4)
                  srai         s2, t2, 15
                  nop
                  sb           a1, -14(a4)
                  sltu         t1, s6, a4
                  slti         a5, s7, 1507
                  addi         zero, s9, -1509
                  and          sp, s1, s10
                  lui          t4, 410550
                  srai         s0, t5, 2
                  srli         s9, a7, 30
                  srli         t2, tp, 4
                  ori          zero, s11, -1141
                  and          s10, t1, s6
                  auipc        t4, 898549
                  andi         t0, t2, 230
                  lbu          t5, -22(a4)
                  srl          zero, s3, s8
                  lbu          ra, 51(a4) #end riscv_load_store_rand_instr_stream_12
                  la           t1, region_0+1679 #start riscv_load_store_rand_instr_stream_0
                  lbu          a6, 8(t1)
                  andi         zero, s4, 1877
                  sltu         a3, gp, t6
                  slti         s9, a6, -1170
                  lhu          a6, 7(t1)
                  slti         a6, t1, 525
                  slt          a1, a7, s4
                  sb           s0, 15(t1)
                  sb           zero, -16(t1)
                  sw           a7, -15(t1)
                  srli         s10, s4, 5
                  lh           s10, 1(t1)
                  srai         a1, t0, 1
                  xor          sp, zero, t6
                  lbu          s9, -16(t1)
                  sb           a5, 3(t1)
                  lhu          gp, 11(t1)
                  addi         s5, t2, 1355
                  lhu          s10, 7(t1)
                  lbu          s8, -10(t1)
                  lb           s0, -10(t1)
                  or           ra, t2, zero
                  sub          s2, a0, s11
                  lbu          ra, 5(t1)
                  xor          s0, a1, a4
                  nop
                  srai         a5, s0, 26
                  xori         s7, s4, -965
                  sltu         t0, gp, s3
                  lhu          a3, -5(t1)
                  lbu          t4, 6(t1)
                  lb           a7, -3(t1)
                  sb           s10, -8(t1)
                  sb           s9, 4(t1)
                  addi         s6, sp, 537
                  lh           a6, -11(t1) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1947 #start riscv_load_store_rand_instr_stream_5
                  sb           a0, -202(sp)
                  sh           s5, -69(sp)
                  lbu          s7, -222(sp)
                  sb           s8, -153(sp)
                  lh           a6, -247(sp)
                  slli         t4, s11, 15
                  sb           tp, 10(sp)
                  lbu          s2, -106(sp)
                  lh           s4, -13(sp)
                  andi         tp, a2, 749
                  sb           a3, -180(sp)
                  and          s0, s5, t2
                  lbu          t1, -154(sp)
                  sb           s3, -134(sp)
                  sltiu        a1, s5, -552
                  slli         t0, s7, 15
                  lbu          t5, -156(sp)
                  sb           s10, -19(sp)
                  slti         zero, s7, 576
                  andi         t1, a1, -1789
                  lbu          s1, -168(sp)
                  sra          a2, t6, s10
                  andi         gp, s9, 98
                  slli         s2, a5, 2
                  sb           gp, -137(sp)
                  lui          a3, 576242
                  sb           sp, -201(sp)
                  sltu         s1, a3, s10
                  lbu          a6, -180(sp)
                  sw           t2, -55(sp)
                  slti         a6, t3, 638
                  and          s8, a1, t4
                  lbu          a2, -238(sp)
                  sw           t3, -167(sp)
                  sltu         tp, t2, a5
                  lb           s6, -116(sp)
                  or           a3, s5, t5
                  lb           t1, -98(sp)
                  slli         a1, s10, 3
                  slt          t2, a7, s6
                  lbu          s2, -189(sp)
                  sb           a4, -190(sp)
                  addi         gp, tp, -1691
                  srai         s9, a0, 7
                  srl          s6, t5, t2
                  xor          tp, a1, ra
                  sltiu        s6, a3, -12
                  sb           tp, -174(sp)
                  sw           t5, -235(sp)
                  lui          s2, 621289
                  auipc        t3, 947898
                  lbu          s4, -102(sp)
                  sltu         a2, a0, s11
                  sb           a2, -191(sp) #end riscv_load_store_rand_instr_stream_5
                  la           gp, region_0+1299 #start riscv_load_store_rand_instr_stream_11
                  lb           s6, 14(gp)
                  nop
                  lui          a6, 139646
                  lbu          a2, -10(gp)
                  lhu          a5, 13(gp)
                  lb           s1, -8(gp)
                  sb           s5, -16(gp)
                  lui          t4, 1028142
                  xori         s1, a0, -8
                  nop
                  lb           s9, 13(gp)
                  ori          s0, zero, 149
                  srli         s10, zero, 26
                  srli         s2, a2, 22
                  lb           t4, -14(gp)
                  sw           t1, 13(gp)
                  xori         s1, a0, -1533
                  lb           a7, -14(gp)
                  srl          t0, t1, t0
                  sb           s1, 6(gp) #end riscv_load_store_rand_instr_stream_11
                  la           s2, region_0+1215 #start riscv_load_store_rand_instr_stream_4
                  lb           a2, 46(s2)
                  ori          gp, s3, -1946
                  sra          s11, a1, s3
                  srai         tp, t1, 5
                  add          t0, t3, s3
                  sb           sp, 47(s2)
                  sb           s9, 42(s2)
                  and          a2, s2, a5
                  sb           t0, 42(s2)
                  add          t3, s8, a2
                  lb           a4, -18(s2)
                  lbu          s1, 18(s2)
                  ori          a2, s11, 1565
                  srl          a3, a5, s6
                  lb           s6, -52(s2)
                  xori         a4, t3, 420
                  xori         a6, a5, 776
                  lbu          t3, -7(s2)
                  ori          s4, t2, 14
                  sh           s1, -35(s2)
                  sub          a2, a4, s3
                  sb           tp, -64(s2)
                  lb           a1, -12(s2)
                  lb           t3, -64(s2)
                  srl          a6, s0, a6
                  lbu          a3, -33(s2)
                  ori          s11, t2, 1401
                  sll          s11, sp, a1
                  sltiu        a5, t5, 672
                  lbu          t4, 36(s2)
                  srl          a6, a0, t5
                  slt          zero, tp, t6
                  auipc        s10, 496113
                  lbu          t0, -38(s2)
                  srl          zero, t0, zero
                  sb           t3, 14(s2)
                  sb           t0, 19(s2)
                  sb           zero, -10(s2)
                  lbu          gp, -22(s2)
                  lb           t5, -40(s2)
                  sb           a5, -34(s2)
                  lui          t1, 3552
                  sb           a5, 42(s2) #end riscv_load_store_rand_instr_stream_4
                  la           t2, region_0+1645 #start riscv_load_store_rand_instr_stream_13
                  srl          t5, s11, s4
                  sb           t2, 146(t2)
                  lw           t0, 79(t2)
                  lb           t0, 122(t2)
                  lb           tp, -242(t2)
                  or           a7, a6, sp
                  and          s10, s2, t2
                  lbu          a7, 52(t2)
                  lb           t0, 85(t2)
                  lui          s8, 67697
                  sub          zero, t6, t6
                  xor          t5, gp, s7
                  lbu          t5, -112(t2)
                  xor          t4, t5, t4
                  lbu          s5, 200(t2)
                  lbu          t0, -196(t2)
                  xor          t3, a5, gp
                  xori         t0, a5, 855
                  sltu         s10, t0, t3
                  lb           s2, -192(t2)
                  sb           t1, -110(t2)
                  lw           t4, 75(t2)
                  slli         tp, a7, 20
                  lb           s9, 60(t2)
                  lb           s10, -50(t2)
                  lbu          t3, -21(t2)
                  slti         s10, a7, -227
                  sh           s7, 223(t2)
                  lhu          a2, -65(t2)
                  sb           sp, -51(t2)
                  sb           zero, 163(t2)
                  sb           ra, -111(t2)
                  srl          s1, s0, s6
                  srli         t3, t6, 18
                  lui          gp, 237271
                  sh           gp, -91(t2)
                  slt          s5, a7, ra
                  lbu          s2, -247(t2)
                  sb           t1, 226(t2)
                  lui          a1, 863746
                  lb           t3, 157(t2)
                  srli         a5, a0, 4
                  lui          t0, 917314
                  lh           s11, 65(t2)
                  lb           s9, -113(t2)
                  lbu          a5, 19(t2)
                  lbu          t5, 16(t2)
                  lbu          a4, -241(t2)
                  sb           t1, 136(t2) #end riscv_load_store_rand_instr_stream_13
                  la           s11, region_1+35 #start riscv_load_store_rand_instr_stream_7
                  add          ra, t5, tp
                  lbu          t3, 15(s11)
                  lhu          s6, 1(s11)
                  sltiu        s1, ra, -257
                  addi         a1, t2, 1878
                  srai         t2, a3, 6
                  sra          a4, a6, t3
                  lbu          sp, 10(s11)
                  lb           ra, -16(s11)
                  slt          s8, a1, t1
                  lbu          a7, -12(s11)
                  lhu          s2, -1(s11)
                  sb           s10, -10(s11)
                  lhu          t2, 7(s11)
                  xori         tp, tp, -1483
                  lui          a5, 54111
                  sltiu        s2, t5, 1042
                  lbu          a6, 5(s11)
                  slti         s5, s8, 176
                  ori          s4, a4, -1020
                  lw           a2, -15(s11)
                  sb           s7, 4(s11)
                  sb           a7, 3(s11)
                  lb           s9, 8(s11)
                  ori          s7, a7, -1444
                  slt          t5, sp, ra
                  sb           s4, -12(s11)
                  lbu          t0, -8(s11)
                  ori          s10, a3, 1332
                  lbu          s1, -4(s11)
                  or           a6, a0, s7
                  and          a3, a2, a3
                  sb           a2, 4(s11)
                  lbu          a1, 10(s11)
                  lbu          s1, -9(s11)
                  andi         tp, t5, 1657
                  slt          s10, ra, s1
                  lhu          s4, 15(s11)
                  auipc        a5, 1042237
                  xori         t0, sp, -1135
                  lui          sp, 97234
                  and          a3, gp, t3
                  lhu          s10, -13(s11)
                  sb           s10, 16(s11)
                  sltu         s1, t4, a2
                  lb           a1, -8(s11)
                  lh           s7, 7(s11)
                  slt          a7, a7, s5
                  lb           s1, -1(s11)
                  lhu          s5, -15(s11)
                  sltu         s2, s7, t2
                  slli         a7, s2, 10
                  slt          t5, s0, a7
                  sll          t4, a3, t2
                  sub          a5, a0, s5
                  sra          t0, a1, s4
                  lh           a5, -11(s11)
                  lb           s9, 14(s11)
                  sh           gp, 15(s11)
                  sh           s8, 13(s11) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1713 #start riscv_load_store_rand_instr_stream_6
                  sb           sp, -231(sp)
                  xori         a1, a3, -194
                  sll          a4, a7, t6
                  lbu          s4, -82(sp)
                  lb           s9, -49(sp)
                  lbu          a1, -138(sp)
                  sh           a1, -113(sp)
                  lhu          gp, -65(sp)
                  srli         t4, s6, 18
                  lbu          a5, 208(sp)
                  lhu          t2, -5(sp)
                  sb           s7, 41(sp)
                  lb           gp, 220(sp)
                  lb           s2, -158(sp)
                  lbu          t0, 24(sp)
                  sb           s9, 230(sp)
                  srli         t3, s1, 4
                  ori          gp, s0, -1729
                  sb           a7, -206(sp)
                  lb           s6, -84(sp)
                  and          gp, s6, zero
                  xori         s4, tp, -1342
                  sh           a2, 179(sp)
                  sb           s10, -193(sp)
                  srl          ra, s6, t0
                  slt          s4, s10, gp
                  lbu          a4, 221(sp)
                  sra          tp, gp, t0
                  lhu          t0, 127(sp)
                  sh           s6, 107(sp)
                  sb           ra, 21(sp)
                  andi         gp, tp, 189
                  lbu          tp, -226(sp) #end riscv_load_store_rand_instr_stream_6
                  slli         s2, s4, 2
                  bgeu         s9, a1, 19f
                  srl          s4, t5, t1
                  sub          t1, s5, s1
                  auipc        ra, 262691
                  xor          t3, t2, a3
                  slli         t3, a2, 19
                  nop
                  addi         s5, t3, 1074
                  sltiu        t0, s10, -260
                  beq          s2, s9, 27f
                  lui          t2, 637528
                  blt          a6, t0, 31f
                  xori         t0, sp, -1767
                  bgeu         s2, tp, 16f
                  lui          s11, 598237
16:               sub          s1, s2, a5
                  addi         a5, t5, 376
                  blt          s9, t3, 25f
19:               and          a4, t5, gp
                  addi         sp, s1, 675
                  add          zero, t4, gp
                  addi         tp, s5, 1661
                  addi         zero, s10, -1032
                  bgeu         a7, s5, 35f
25:               xor          a3, s0, a1
                  ori          s9, s1, 1614
27:               or           ra, sp, s6
                  slli         t5, a1, 11
                  or           t2, s4, t4
                  nop
31:               nop
                  or           tp, s3, tp
                  srli         a1, a2, 4
                  srl          s10, a0, zero
35:               slti         t4, a0, -1519
                  sub          a3, s9, tp
                  bne          sp, a7, 47f
                  slt          t5, t1, tp
                  xori         zero, s5, 204
                  addi         s0, a6, -1503
                  auipc        a3, 316493
                  beq          s7, sp, 54f
                  xor          s7, s1, s5
                  srai         s9, s8, 7
                  add          t3, a6, gp
                  sll          a2, t3, t6
47:               bge          s4, s7, 67f
                  add          a4, tp, s1
                  xor          a6, zero, t2
                  beq          gp, s0, 61f
                  and          t0, a3, a4
                  xori         t1, t3, -1899
                  sra          tp, a2, s10
54:               sltiu        a6, s6, 756
                  sra          s5, t0, s9
                  srai         t4, sp, 1
                  and          zero, a4, zero
                  andi         s0, zero, 1629
                  srli         s4, a5, 8
                  ori          tp, zero, -1783
61:               xori         s1, s7, -362
                  blt          t3, s7, 73f
                  addi         a2, s2, 847
                  bgeu         t0, s4, 75f
                  xor          t2, s2, s2
                  and          zero, a3, s9
67:               addi         a1, s7, -361
                  sltiu        t1, t3, 1007
                  beq          s4, s7, 79f
                  sll          a1, a2, a0
                  slt          s5, s1, s5
                  slt          a4, s1, a4
73:               add          a1, s7, t5
                  sltiu        a7, s3, 1166
75:               sll          t1, s7, t5
                  nop
                  auipc        s0, 298160
                  slti         a4, a3, -1945
79:               sltiu        t5, a3, 1668
                  xori         t4, t2, 788
                  nop
                  slti         s1, s2, -388
                  bltu         a2, a6, 90f
                  sltu         t5, s5, s3
                  sltu         t5, tp, t6
                  srli         s7, s4, 12
                  slli         a1, s10, 16
                  slt          s10, tp, t5
                  slt          a5, s10, a6
90:               xor          zero, gp, s10
                  sra          t2, s0, a6
                  bltu         t1, t5, 97f
                  lui          a3, 939078
                  add          t4, a1, s0
                  addi         zero, a3, 539
                  sub          s2, s7, a1
97:               srl          s5, t3, a6
                  sub          t2, a3, tp
                  slli         t0, s8, 3
                  andi         t4, a4, 1383
                  slli         a2, s8, 11
                  bge          s0, s5, 111f
                  or           s0, s8, t0
                  addi         s11, s7, 1712
                  bgeu         zero, s0, 107f
                  andi         s9, a0, -1515
107:              and          s5, gp, tp
                  srl          zero, a0, s1
                  sltiu        s4, s1, 1124
                  nop
111:              srl          s5, a6, a4
                  add          s0, t3, s3
                  xor          t5, s2, t4
                  bne          t1, tp, 123f
                  nop
                  sll          s2, a5, a7
                  slt          a5, s2, s9
                  xori         t2, a2, -1737
                  blt          s1, s4, 133f
                  lui          s6, 95440
                  add          a7, s0, s4
                  addi         tp, a1, 1224
123:              slti         s10, a6, -1133
                  auipc        s0, 718669
                  sltu         s8, s7, a0
                  sub          a5, t0, tp
                  and          t5, s2, sp
                  bge          zero, a0, 129f
129:              sltiu        s8, t3, -1161
                  sll          a1, a6, s7
                  sll          t2, t6, a3
                  xor          s4, a3, t1
133:              sltu         t3, zero, a0
                  sltu         s7, s5, t1
                  addi         t4, s7, -570
                  slti         gp, s6, -1019
                  ori          sp, s6, 927
                  add          a7, a7, t6
                  bltu         s10, t1, 155f
                  xori         t5, s6, 1498
                  auipc        s11, 5398
                  or           s6, s5, s3
                  bge          tp, a1, 144f
144:              nop
                  add          zero, t3, t5
                  andi         gp, gp, -215
                  bne          s5, s9, 164f
                  lui          t5, 624270
                  and          s10, zero, s1
                  bgeu         a5, a7, 151f
151:              sltiu        s10, a4, 97
                  auipc        s4, 792216
                  srli         s11, t2, 2
                  bne          gp, t1, 157f
155:              bne          a4, t3, 158f
                  sra          s10, s11, s1
157:              bltu         zero, a0, 161f
158:              srai         sp, t5, 20
                  srai         a6, a7, 17
                  xori         a2, s1, -1481
161:              auipc        s10, 415597
                  slli         a7, s6, 31
                  bge          s9, t4, 180f
164:              sub          s10, a6, s11
                  sra          a3, s6, a5
                  srl          t2, t0, zero
                  beq          s5, a7, 179f
                  addi         t3, a0, -365
                  addi         a6, a5, -1015
                  srli         s10, a3, 12
                  sub          zero, a0, s9
                  sltu         s6, zero, sp
                  andi         t2, a4, 568
                  nop
                  slli         s10, t6, 3
                  lui          ra, 798697
                  sltiu        t1, t4, -572
                  sra          s10, s8, s7
179:              bne          a7, gp, 183f
180:              sltiu        t1, a2, -583
                  bgeu         a4, a1, 198f
                  bltu         s5, zero, 185f
183:              sll          a7, s2, a4
                  bgeu         s11, s11, 189f
185:              slti         s11, zero, -1838
                  bltu         a6, t2, 187f
187:              sub          a1, a1, zero
                  auipc        ra, 828968
189:              bltu         ra, a1, 192f
                  or           s7, s9, t1
                  srl          a6, a3, a2
192:              xori         a3, a1, -201
                  beq          s10, a5, 194f
194:              sltiu        tp, a5, -1417
                  bge          t1, a6, 207f
                  bltu         t5, s9, 206f
                  srl          a3, t0, t2
198:              xor          ra, t2, s10
                  or           s2, s4, s7
                  xori         t3, s10, 1762
                  nop
                  slli         s1, t2, 21
                  blt          t0, gp, 222f
                  bne          a6, s1, 205f
205:              bgeu         s5, t4, 207f
206:              bgeu         t0, a0, 213f
207:              bgeu         t6, tp, 217f
                  srli         a7, s0, 12
                  srli         s6, zero, 22
                  bltu         s10, t0, 212f
                  sub          ra, s6, a7
212:              sra          t2, a3, s6
213:              sltiu        s0, t4, 335
                  sltiu        zero, s5, -1489
                  bne          s10, t4, 229f
                  bne          t3, tp, 223f
217:              add          t4, a5, a2
                  slt          a3, s4, t0
                  xor          s1, s8, a5
                  bltu         zero, s1, 237f
                  and          a5, s6, zero
222:              sltu         a7, s7, s8
223:              slli         sp, s0, 17
                  sltu         a3, a1, t5
                  sub          s10, s1, zero
                  auipc        s8, 323877
                  bgeu         a3, s2, 231f
                  sll          a3, zero, ra
229:              addi         t3, a0, -593
                  nop
231:              nop
                  sra          a2, t6, s0
                  xor          s7, t6, a4
                  sub          a4, a7, a2
                  xor          s4, s8, a2
                  beq          t3, s3, 248f
237:              xor          t4, a4, s11
                  and          a4, t6, s7
                  xor          t2, s0, s1
                  bne          gp, t2, 249f
                  slti         t2, s0, 1492
                  add          t3, t6, a0
                  andi         t2, t3, 1152
                  addi         t2, gp, -917
                  srai         t5, sp, 0
                  auipc        zero, 872067
                  and          t5, zero, s10
248:              and          a4, s0, t4
249:              ori          a6, a4, 597
                  nop
                  nop
                  xor          ra, a1, s5
                  addi         s1, a4, 768
                  srai         a2, s7, 22
                  sll          t3, a1, s3
                  bge          s4, s9, 272f
                  sll          s4, sp, t5
                  xor          t2, s3, a4
                  nop
                  slli         a4, s7, 16
                  and          s10, t0, s10
                  sra          t1, a1, s7
                  beq          a6, a2, 281f
                  beq          a2, s6, 275f
                  srli         s2, t0, 12
                  sltiu        s10, a1, -156
                  sll          a6, s7, s6
                  xori         a4, ra, 1158
                  srai         s2, s10, 29
                  slti         s11, t1, -1142
                  bge          a3, a3, 280f
272:              bltu         a3, t2, 289f
                  auipc        t4, 17540
                  auipc        a3, 995156
275:              bge          t2, s7, 286f
                  beq          s5, s11, 280f
                  sltu         a2, a5, t1
                  bgeu         a1, t5, 298f
                  bne          s4, a0, 290f
280:              xori         s11, t1, -4
281:              andi         tp, s8, -210
                  add          t5, a3, s10
                  beq          a2, t5, 294f
                  slt          a6, s6, s6
                  srai         a5, t4, 14
286:              andi         s5, gp, 38
                  bgeu         t0, gp, 298f
                  and          t1, sp, s0
289:              sub          s1, t6, s10
290:              xor          s7, t4, a5
                  xor          s4, s1, s1
                  sub          s1, a4, a6
                  add          s4, t4, s0
294:              slli         t0, a7, 30
                  and          t0, s4, sp
                  sltu         a3, tp, a6
                  bgeu         a1, s4, 311f
298:              slli         t1, tp, 30
                  slti         t2, t3, 333
                  xor          s7, a4, s6
                  ori          sp, s1, -1943
                  addi         a5, gp, -329
                  lui          t5, 50688
                  xori         a7, t2, -1870
                  bge          s8, s10, 314f
                  beq          a1, a4, 309f
                  bltu         a0, gp, 326f
                  beq          s4, s11, 309f
309:              xor          t2, a5, a2
                  andi         a2, a0, 1404
311:              sra          tp, a7, s1
                  blt          gp, a6, 322f
                  or           s7, a4, t2
314:              or           s8, a3, s5
                  sltiu        t0, a5, -316
                  slti         t2, a1, -1004
                  srai         t5, a2, 20
                  add          t5, s10, gp
                  srli         gp, a3, 7
                  sltiu        s5, a5, 331
                  sltu         s11, t3, a4
322:              sltu         a6, a1, tp
                  slli         tp, s1, 17
                  blt          a3, s2, 326f
                  srai         a4, s8, 19
326:              xor          s8, a7, a5
                  bgeu         a6, s5, 336f
                  sub          t1, zero, s9
                  srli         a3, a0, 6
                  xor          s10, s9, t5
                  or           s11, s6, t4
                  addi         t0, a5, -978
                  slt          a4, t4, t0
                  add          s4, a4, sp
                  and          t5, ra, tp
336:              xori         tp, s2, -246
                  srai         s7, s7, 22
                  srl          t0, a6, s6
                  srai         a5, s3, 30
                  slli         s1, a0, 20
                  blt          a2, s8, 353f
                  blt          a5, s5, 343f
343:              add          t1, s1, s4
                  srli         a7, s4, 7
                  sltiu        a3, t6, 1671
                  slti         s5, s10, -260
                  slli         t3, a3, 13
                  sub          a6, ra, t1
                  sll          t0, sp, t4
                  lui          a7, 310408
                  lui          t5, 834418
                  ori          s11, a3, -336
353:              addi         ra, t1, -414
                  slt          t0, a4, a5
                  slti         s1, a1, -1765
                  bltu         s9, ra, 360f
                  auipc        tp, 313731
                  sltiu        a7, t0, 679
                  sub          t0, ra, t2
360:              lui          s9, 909087
                  bltu         s10, a0, 364f
                  bne          s10, zero, 373f
                  addi         a4, s0, 864
364:              or           s4, s7, ra
                  xori         t0, s4, 779
                  slli         a1, t0, 17
                  sub          t2, t2, a4
                  xori         t5, s4, 1536
                  xori         gp, s11, -1670
                  auipc        t3, 783462
                  srli         t5, s5, 29
                  sltiu        t1, tp, -1364
373:              lui          t4, 621015
                  xori         s2, a4, 9
                  srli         sp, t5, 12
                  addi         s9, s11, 1480
                  srai         gp, zero, 6
                  add          t5, t4, a6
                  slli         a4, t1, 8
                  srl          s4, a4, s4
                  sra          a2, a4, s11
                  sub          t2, a3, s1
                  slti         s8, a7, 1311
                  sra          t3, s9, a6
                  bge          t1, a2, 397f
                  slti         s7, s9, -755
                  sll          s2, s0, s8
                  slli         s7, ra, 11
                  and          t0, s5, s11
                  auipc        sp, 732325
                  slt          a7, t4, s2
                  srli         s8, a1, 11
                  andi         s5, a7, 138
                  bltu         ra, s7, 401f
                  bgeu         a4, a1, 397f
                  sltiu        s10, a2, 950
397:              and          s8, ra, s5
                  sll          a3, s11, s6
                  and          s11, a4, a4
                  auipc        s7, 376550
401:              beq          s3, s10, 406f
                  sll          s0, a6, t1
                  slt          s10, t0, t4
                  andi         s5, a1, 1139
                  slli         a6, s7, 14
406:              sll          s11, s6, s1
                  slli         t5, gp, 29
                  lui          gp, 727464
                  xor          s7, a3, a1
                  beq          a4, t3, 421f
                  nop
                  xori         t4, s9, 1226
                  slt          s4, t3, s6
                  auipc        a4, 366522
                  andi         zero, gp, -644
                  slt          s11, t2, t1
                  sll          s1, s4, a2
                  xori         t5, s10, -1145
                  slt          t0, t4, sp
                  slli         s4, a0, 10
421:              beq          t3, s6, 422f
422:              slli         a3, s10, 28
                  xor          s0, s8, s11
                  nop
                  addi         s5, t6, 1119
                  andi         t4, s3, 393
                  nop
                  lui          s11, 36840
                  add          t4, t0, s9
                  sltiu        s0, a2, -820
                  lui          sp, 937428
                  bge          s11, t6, 449f
                  bltu         s11, t2, 443f
                  srai         s1, t3, 0
                  bge          t0, s7, 455f
                  addi         a6, s1, 163
                  srl          ra, s1, t2
                  and          s5, t1, t5
                  bltu         t3, t1, 456f
                  srai         s11, a4, 28
                  slti         s10, s5, 1944
                  sltiu        tp, s10, 532
443:              bge          a5, a2, 460f
                  slt          a6, ra, s5
                  sra          s10, a6, t6
                  bgeu         s6, a6, 464f
                  bge          gp, s10, 458f
                  ori          a6, t3, 818
449:              xor          a3, s7, a0
                  auipc        a3, 944438
                  sra          a4, s4, s11
                  sub          a3, t2, a0
                  sll          a6, s4, t5
                  slti         s5, t6, 1083
455:              ori          s6, a1, 1039
456:              slt          s11, a2, t2
                  slli         ra, tp, 29
458:              slti         s6, s1, -1120
                  srai         a4, a0, 17
460:              blt          s3, s11, 467f
                  or           a2, ra, s11
                  andi         s6, a6, 1254
                  sra          a2, tp, gp
464:              lui          t4, 448936
                  slt          t0, s8, tp
                  beq          s10, t5, 482f
467:              srli         t5, s5, 1
                  andi         ra, a1, 423
                  xori         s7, a3, 184
                  xori         s9, t0, -1414
                  srai         s6, s0, 11
                  bne          t1, zero, 476f
                  auipc        s1, 606874
                  sll          s10, zero, a0
                  sll          s5, tp, tp
476:              and          a1, s8, a3
                  bgeu         s2, sp, 487f
                  auipc        s4, 708940
                  nop
                  xor          t3, t5, s4
                  srl          s6, tp, s6
482:              sltu         s6, ra, t1
                  xori         a2, s11, -507
                  addi         t0, s2, 480
                  bltu         t2, a5, 497f
                  srli         ra, a4, 31
487:              beq          a3, t6, 499f
                  srli         s2, s3, 28
                  sub          s10, s4, s7
                  and          s8, s0, a4
                  srai         a5, a7, 14
                  lui          t4, 473497
                  slti         s0, s7, 134
                  andi         gp, sp, -1431
                  sra          s1, t4, s7
                  sub          s7, tp, a4
497:              bne          a5, a5, 500f
                  sub          t1, a5, s5
499:              srli         gp, a3, 31
500:              sll          t3, a1, t1
                  xori         s4, s7, -1566
                  sll          a6, t3, a2
                  slti         a5, a6, 1940
                  sll          gp, s1, s2
                  slti         s1, s1, 789
                  and          a3, zero, t3
                  and          s6, s6, t4
                  sll          gp, a0, s1
                  ori          t3, s7, -1793
                  nop
                  nop
                  add          t5, a2, a7
                  beq          t2, s3, 520f
                  andi         ra, s8, -1337
                  nop
                  sub          s7, s6, s9
                  andi         a4, s4, -1453
                  auipc        s1, 986843
                  xori         tp, t4, -178
520:              addi         t2, sp, -188
                  xori         s0, a6, -1860
                  slti         a7, t3, -233
                  sltu         sp, s1, s1
                  nop
                  sltiu        s2, s11, 142
                  ori          s4, a4, 464
                  auipc        zero, 321066
                  slli         s2, s11, 7
                  srai         ra, a5, 9
                  slli         a4, t4, 8
                  andi         s11, a7, 609
                  srai         s9, t1, 23
                  slt          sp, a7, s1
                  bge          a2, t3, 535f
535:              bge          s2, t3, 544f
                  bltu         s6, a0, 541f
                  beq          s9, ra, 556f
                  slli         s2, t5, 12
                  add          tp, t2, t2
                  xori         s0, a2, 1651
541:              blt          t0, a6, 559f
                  andi         zero, s6, -1802
                  add          t4, gp, s0
544:              add          ra, a6, a3
                  slt          s7, a3, s10
                  sltiu        ra, t1, -468
                  lui          s11, 70031
                  ori          s7, a5, 778
                  bltu         a0, t2, 550f
550:              sra          s6, s3, s10
                  sll          s0, s1, a7
                  or           t1, t1, t0
                  srl          a4, t4, s1
                  lui          s4, 978094
                  srli         s5, a2, 17
556:              or           t0, t0, a3
                  andi         s11, s2, -1598
                  sll          s10, t2, t1
559:              andi         s4, s5, -1035
                  and          s8, t4, a3
                  bltu         t6, gp, 563f
                  auipc        a1, 228423
563:              slti         zero, s4, 21
                  xori         ra, a2, -1024
                  srai         s5, s0, 21
                  sll          a2, s6, s7
                  slti         zero, s0, -609
                  xori         s5, a2, 1707
                  bge          a6, s7, 580f
                  srai         a4, t0, 13
                  beq          s7, t5, 588f
                  xor          s9, ra, s11
                  sub          t5, s2, s2
                  andi         s6, s2, -283
                  srai         s1, gp, 10
                  sltu         a7, s10, s7
                  sra          ra, s11, a1
                  bge          t4, s9, 587f
                  andi         s1, a6, -1079
580:              srl          zero, a7, ra
                  and          s7, a2, a6
                  sub          s9, s8, t4
                  bltu         a6, a5, 603f
                  sltu         s11, s9, t0
                  bltu         t6, a7, 596f
                  beq          t4, s1, 593f
587:              or           s1, t3, ra
588:              xori         s9, t3, -384
                  slli         s2, a0, 20
                  blt          a3, s10, 604f
                  lui          s8, 415023
                  srl          s10, t2, s5
593:              blt          zero, s1, 604f
                  beq          s11, s2, 596f
                  bne          t4, s0, 605f
596:              srli         s11, a3, 6
                  auipc        s8, 441076
                  and          t2, ra, a0
                  blt          s1, s4, 603f
                  sltiu        a6, a3, -727
                  xor          t0, t1, s3
                  sltiu        a5, a5, -1852
603:              bgeu         a7, s7, 620f
604:              add          s7, s8, a0
605:              addi         a1, s3, 33
                  blt          t0, a7, 617f
                  sll          a7, a6, s2
                  sltu         s9, s7, s9
                  addi         ra, a1, 178
                  blt          t1, t1, 627f
                  and          a3, a2, s8
                  auipc        s5, 167276
                  sltiu        t4, a4, 1569
                  bgeu         t5, s3, 617f
                  srli         t5, s4, 10
                  sra          s2, t3, s10
617:              slli         zero, a7, 23
                  bne          a1, a3, 634f
                  or           t4, s7, t2
620:              srl          a5, a0, a6
                  bltu         a4, a7, 622f
622:              srl          s10, a0, a0
                  bge          a5, s10, 627f
                  nop
                  lui          s8, 391739
                  sra          a3, t1, t5
627:              add          a6, s7, a5
                  andi         s6, a1, -1272
                  nop
                  srl          s11, a1, a4
                  srli         s4, s7, 27
                  blt          a7, s4, 634f
                  bge          ra, gp, 651f
634:              slt          t2, t4, zero
                  sltu         a6, t2, sp
                  srl          s1, a6, s10
                  sra          sp, gp, t0
                  add          a2, tp, a0
                  srai         a4, a7, 4
                  lui          sp, 777778
                  ori          a6, t6, -1929
                  sltu         t2, t2, s4
                  slli         s0, s1, 7
                  srl          a2, t0, s7
                  add          t1, a6, s5
                  slti         t0, s10, -1480
                  xori         s0, s10, 1779
                  andi         s6, t0, -497
                  sltu         a2, s9, s8
                  slli         s5, zero, 5
651:              auipc        s8, 204761
                  auipc        s9, 634370
                  bgeu         a6, tp, 656f
                  xori         a4, t2, 514
                  ori          t2, s6, 1858
656:              slt          t0, a1, a2
                  bge          t5, a7, 659f
                  sltiu        s5, a0, 430
659:              blt          s2, s7, 678f
                  add          s7, a1, t2
                  blt          a1, a1, 672f
                  beq          a1, a0, 667f
                  sra          ra, s5, a5
                  bgeu         t4, t1, 681f
                  xor          s5, t6, t6
                  srli         t5, t2, 15
667:              auipc        s8, 612174
                  sltiu        a7, s3, -632
                  andi         t5, tp, -1948
                  sub          s7, zero, gp
                  sll          a3, s4, t2
672:              andi         t4, s7, 113
                  beq          tp, ra, 682f
                  slti         s4, tp, -1155
                  srl          t5, gp, tp
                  lui          s0, 470939
                  xor          a3, a2, s7
678:              and          t5, a6, a3
                  xor          s9, s10, s9
                  bge          s0, a3, 692f
681:              sra          tp, a7, s2
682:              addi         s9, t6, 811
                  sra          s11, t5, t5
                  or           s1, zero, t0
                  bne          s9, t0, 702f
                  ori          s11, s10, -2034
                  sra          t2, ra, s2
                  srli         a1, s3, 7
                  slti         s7, a2, 1573
                  slt          t0, s7, a4
                  auipc        s0, 432392
692:              addi         t0, s11, -1760
                  sltu         a7, zero, t2
                  slli         t4, s8, 29
                  sltiu        s2, a3, -1849
                  xor          s0, a3, s6
                  addi         s9, zero, -1913
                  slti         sp, s11, -1918
                  addi         ra, a7, -1967
                  srl          s9, s11, ra
                  and          gp, a4, a6
702:              bne          t6, ra, 713f
                  sll          s1, tp, s4
                  bltu         a1, s4, 705f
705:              bne          zero, t0, 709f
                  sltu         s10, s4, a7
                  xori         s1, a7, 2040
                  srl          zero, s4, a7
709:              or           t4, sp, t6
                  bge          t5, t2, 717f
                  addi         s1, s7, -1661
                  bne          a6, s7, 723f
713:              bge          t2, s9, 720f
                  srli         gp, s2, 16
                  srai         s11, s7, 11
                  sra          s1, zero, s8
717:              sltu         t1, t3, t4
                  xori         s8, t2, 1834
                  sltu         a3, t3, s2
720:              bgeu         s10, a0, 734f
                  andi         s1, t1, 1014
                  sltu         a7, s7, s10
723:              bltu         t5, s4, 733f
                  bge          a5, s6, 725f
725:              blt          s4, a5, 728f
                  nop
                  srl          t0, a5, s10
728:              or           s2, t6, t5
                  xor          a6, t3, s5
                  nop
                  add          s8, s11, t5
                  srl          t2, s10, s2
733:              or           t3, s4, sp
734:              blt          t2, s0, 746f
                  sll          a6, tp, a3
                  lui          t5, 187663
                  sltu         t3, a4, s1
                  addi         s4, a5, -388
                  beq          t1, s6, 755f
                  lui          t2, 788613
                  sltiu        s11, a6, -732
                  xor          t2, s11, t2
                  andi         s10, s7, -1550
                  bge          sp, t0, 745f
745:              blt          zero, s5, 754f
746:              slt          s0, t0, zero
                  sll          a1, a0, s5
                  nop
                  blt          s1, a6, 766f
                  xor          s1, t3, t3
                  addi         s6, zero, -283
                  slli         a5, a7, 27
                  auipc        t4, 491784
754:              and          s2, t2, s0
755:              bne          t4, s6, 759f
                  sll          a3, a0, a6
                  blt          s5, ra, 767f
                  lui          ra, 878429
759:              ori          a2, t5, 1135
                  lui          t2, 39561
                  bgeu         ra, t6, 772f
                  lui          s9, 737405
                  bgeu         s0, s5, 783f
                  srai         a3, t5, 23
                  addi         s0, s3, -796
766:              srli         s10, a1, 3
767:              ori          s9, a0, -1610
                  or           t2, s9, tp
                  slli         tp, a7, 23
                  auipc        t0, 988489
                  bne          s7, s2, 788f
772:              xori         t5, s6, 2015
                  slti         s9, t4, 266
                  nop
                  sltu         a5, s8, t1
                  xori         s11, t2, -310
                  beq          tp, t4, 794f
                  and          a6, s5, sp
                  bltu         a4, sp, 781f
                  sub          zero, ra, tp
781:              auipc        gp, 417195
                  sub          t1, s9, s9
783:              srl          a4, s5, a5
                  srai         tp, ra, 7
                  bne          s0, ra, 796f
                  sltiu        a2, a5, -763
                  srli         a6, s8, 18
788:              xor          s8, s3, s6
                  sltiu        a5, a5, 1740
                  srli         s2, a3, 14
                  bltu         a4, t3, 803f
                  srai         s5, sp, 14
                  sll          s8, s9, gp
794:              and          t3, sp, s0
                  srli         s7, s4, 10
796:              ori          zero, zero, 1474
                  srl          s8, sp, tp
                  and          t0, s1, tp
                  add          sp, t0, a0
                  sll          gp, t0, zero
                  bltu         a5, t4, 810f
                  andi         a7, s2, 1294
803:              or           t5, a6, ra
                  beq          a7, a5, 824f
                  bltu         t2, ra, 822f
                  addi         t4, s5, -495
                  sltu         s4, s7, t1
                  beq          a6, s7, 819f
                  and          a7, s11, a2
810:              sub          a4, a6, a5
                  xori         ra, a4, 1169
                  blt          a7, s1, 814f
                  srai         sp, s0, 13
814:              srli         s1, s10, 12
                  add          t5, sp, a2
                  or           s1, zero, s2
                  bgeu         t2, s3, 822f
                  bgeu         t6, a1, 829f
819:              lui          ra, 949787
                  lui          a6, 873000
                  bne          zero, t1, 828f
822:              xor          t4, s2, a3
                  xor          a6, s8, s2
824:              srai         s8, t6, 23
                  auipc        a2, 379113
                  slli         ra, s8, 29
                  srli         s7, s4, 18
828:              slli         a4, sp, 18
829:              blt          t1, s1, 848f
                  bne          tp, s7, 834f
                  slti         a4, s9, -380
                  slt          a5, ra, t3
                  addi         a6, t4, 1245
834:              lui          s10, 6071
                  andi         a2, s0, -125
                  srli         sp, t4, 17
                  bltu         gp, s1, 853f
                  beq          a4, tp, 839f
839:              addi         t1, s2, -906
                  ori          s10, s11, -1695
                  slti         s7, a0, 1800
                  add          s7, s1, ra
                  or           t4, t6, a1
                  addi         s9, a7, 1235
                  sra          s11, t2, sp
                  sltu         ra, a5, ra
                  ori          s10, t1, 1753
848:              sra          s11, a0, t4
                  lui          t3, 562578
                  slt          t5, a2, t5
                  srl          s7, t4, tp
                  bgeu         t2, s0, 870f
853:              slli         s11, a0, 9
                  slt          s9, a1, t4
                  bgeu         s9, t6, 858f
                  sra          gp, a4, t4
                  add          a1, s9, a5
858:              srai         s0, s8, 4
                  addi         t5, s3, 471
                  sra          s2, t4, s9
                  slti         s0, gp, -880
                  blt          t0, t6, 863f
863:              srai         a2, a3, 28
                  bgeu         s5, a5, 874f
                  slt          s10, t2, sp
                  nop
                  la           s6, region_1+1601 #start riscv_load_store_rand_instr_stream_3
                  lbu          s7, 32(s6)
                  lb           s0, 7(s6)
                  srl          gp, a4, s3
                  sb           s7, -25(s6)
                  sb           a2, 62(s6)
                  srai         s5, a4, 31
                  sltiu        a6, a5, -848
                  xori         s7, a4, 878
                  andi         s10, t5, 112
                  srli         a7, gp, 25
                  or           s7, a4, t0
                  slti         a3, s9, 1659
                  addi         s1, s11, -425
                  sra          a4, s9, t2
                  sb           t6, -55(s6)
                  ori          s8, t1, -597
                  auipc        t1, 62211
                  xori         a1, sp, 1732
                  nop
                  sb           s2, 60(s6)
                  xori         a4, s3, 206
                  slli         a6, s3, 2
                  lh           t0, -35(s6)
                  nop
                  auipc        t0, 373853
                  lbu          t1, -27(s6)
                  slt          t1, t1, s11
                  lui          tp, 655365
                  lhu          a5, -47(s6)
                  lbu          a5, 18(s6) #end riscv_load_store_rand_instr_stream_3
                  srai         s11, t6, 9
                  bltu         s7, t0, 869f
869:              bltu         s11, s11, 878f
870:              bne          t0, s8, 881f
                  slli         a6, a4, 10
                  slli         tp, a4, 10
                  bltu         zero, s6, 877f
874:              sub          t5, a2, a1
                  bne          s11, s9, 885f
                  beq          t2, s2, 890f
877:              lui          a4, 748778
878:              bltu         a4, s0, 890f
                  slti         t2, s1, 157
                  sub          a4, a7, t0
881:              xor          s8, s0, s7
                  bgeu         s7, t6, 885f
                  and          gp, ra, t3
                  srli         s10, ra, 27
885:              bne          a0, s1, 892f
                  addi         gp, t1, 1790
                  srai         tp, t0, 10
                  blt          s6, a4, 907f
                  srl          t3, a7, t1
890:              and          a6, t0, t1
                  sll          a2, a4, s0
892:              bltu         zero, s4, 912f
                  and          tp, gp, s9
                  bne          s3, s9, 897f
                  xori         ra, a1, -1972
                  nop
897:              slt          t0, s8, zero
                  slli         t2, a7, 10
                  bge          s1, tp, 913f
                  sll          a3, s1, s3
                  sltu         s4, a7, t1
                  srl          s4, a3, t0
                  bltu         a4, t6, 905f
                  slli         zero, s5, 1
905:              bltu         sp, a4, 906f
906:              slti         sp, t3, 1264
907:              srl          s10, s3, s8
                  sltu         s9, t4, t0
                  andi         a1, a2, 1846
                  andi         s7, s7, -1424
                  sltiu        a1, s0, -1925
912:              sub          a1, t3, a4
913:              sll          ra, gp, ra
                  bne          s11, t6, 915f
915:              nop
                  add          s1, sp, sp
                  andi         a6, a2, -772
                  bgeu         t2, a0, 929f
                  add          s6, s7, s4
                  auipc        t0, 292631
                  srli         a1, a1, 12
                  srl          s8, s4, a4
                  ori          t2, ra, -342
                  bgeu         s11, s0, 936f
                  bgeu         t4, s3, 943f
                  nop
                  ori          s5, s2, -1612
                  sltiu        s0, t1, 267
929:              beq          t0, t5, 945f
                  sll          s1, a0, s2
                  srl          a2, a4, s2
                  bgeu         s1, tp, 936f
                  xori         s5, t1, -807
                  xor          t1, t1, s0
                  add          s1, s9, s11
936:              blt          s10, t6, 948f
                  slti         t0, a3, 1725
                  bltu         sp, t5, 947f
                  bgeu         sp, s4, 949f
                  nop
                  nop
                  bgeu         s3, t6, 953f
943:              slti         gp, a7, -728
                  andi         gp, t6, 1732
945:              lui          s8, 544509
                  slt          a4, s6, s4
947:              slt          zero, s1, s10
948:              or           s1, a6, s11
949:              xor          t1, a2, gp
                  slli         t5, a5, 17
                  andi         t5, a5, -842
                  bne          s9, s2, 961f
953:              sll          t0, s8, t4
                  srl          t2, a4, t1
                  slli         t4, zero, 7
                  srl          a7, s9, s11
                  bgeu         s5, s8, 974f
                  ori          s0, s0, 946
                  slt          zero, tp, s10
                  and          s7, s2, s3
961:              slli         a2, a4, 2
                  bne          a0, a3, 969f
                  beq          s0, a6, 965f
                  slt          s1, s5, s8
965:              sll          s8, tp, a3
                  lui          s8, 266119
                  srai         s0, t0, 7
                  andi         s4, a2, 1656
969:              bgeu         s10, t1, 986f
                  bge          zero, a7, 987f
                  and          t2, t5, tp
                  auipc        a1, 641950
                  sltiu        sp, s2, -1762
974:              xor          s8, s1, s4
                  sra          tp, a0, tp
                  sra          s8, ra, t2
                  sub          a7, t1, s0
                  addi         a3, s9, -1906
                  and          a3, s11, ra
                  and          a7, s7, a4
                  or           t0, a1, s6
                  bne          a4, t1, 983f
983:              add          t2, a6, s0
                  sll          a4, s10, a3
                  sltiu        s2, t3, 1754
986:              bge          s5, t2, 990f
987:              andi         s2, s6, -267
                  ori          s8, a0, -803
                  sltu         ra, t0, s6
990:              bltu         s9, s2, 997f
                  sra          s1, a7, t1
                  lui          gp, 366561
                  sltu         a3, s11, s8
                  xori         t3, s1, 1138
                  and          a4, t6, s4
                  srli         t4, t2, 4
997:              ori          zero, a7, -1822
                  lui          zero, 45206
                  auipc        a5, 80406
                  srl          zero, s6, a2
                  sub          t0, zero, s11
                  srli         s0, zero, 21
                  and          a4, tp, a3
                  bge          t6, t0, 1015f
                  and          s4, s11, s11
                  bgeu         s1, a2, 1017f
                  add          s11, s4, sp
                  sra          s11, zero, a2
                  slli         a5, gp, 4
                  sll          s6, a5, t1
                  andi         s6, s0, -1473
                  lui          t3, 176951
                  srli         a1, a2, 28
                  bne          s7, tp, 1019f
1015:             bltu         tp, a1, 1025f
                  sra          t1, a3, zero
1017:             slt          s11, s4, gp
                  bge          ra, t3, 1021f
1019:             and          ra, s11, s5
                  srl          sp, s0, t2
1021:             sra          a5, t1, s11
                  sll          t2, gp, t1
                  sra          t0, s9, t5
                  or           t2, s8, a2
1025:             bne          tp, s0, 1029f
                  auipc        a7, 775819
                  andi         ra, s9, -1570
                  slli         t4, s3, 9
1029:             or           tp, t5, a4
                  sra          s11, s7, zero
                  xori         gp, s4, 512
                  xori         a1, a1, -88
                  slli         t5, a0, 1
                  addi         a6, s10, -1205
                  blt          tp, a2, 1052f
                  add          s8, sp, s11
                  sltiu        s4, zero, -2000
                  slli         s9, gp, 9
                  bltu         t3, s11, 1041f
                  bgeu         a3, ra, 1058f
1041:             sra          a2, s10, t5
                  add          s6, a1, t3
                  beq          a6, ra, 1060f
                  sra          ra, sp, t4
                  slti         s11, s9, -1200
                  sltu         a1, t6, a2
                  bltu         ra, a1, 1057f
                  srl          a5, s0, t0
                  or           t3, t1, t5
                  addi         a7, t2, -1431
                  srai         gp, s9, 31
1052:             bge          s6, t0, 1068f
                  lui          s11, 764258
                  beq          t0, a7, 1063f
                  beq          t2, a1, 1059f
                  bne          s10, a2, 1075f
1057:             srai         a7, zero, 2
1058:             sltiu        t5, s7, -59
1059:             slt          ra, t4, zero
1060:             beq          s0, s1, 1065f
                  sra          zero, s10, t4
                  xor          ra, s7, s5
1063:             sra          t0, a4, s1
                  xori         s8, t6, -797
1065:             bltu         s11, s6, 1066f
1066:             beq          s4, s0, 1078f
                  andi         t1, t0, 1083
1068:             bgeu         ra, s2, 1079f
                  sltiu        sp, s1, -1980
                  ori          a6, t3, 1511
                  xor          gp, t3, a3
                  slti         s1, t3, 1703
                  blt          zero, tp, 1074f
1074:             slt          a1, s1, s6
1075:             xori         s4, a1, -1950
                  or           a2, s2, a5
                  bgeu         a2, s9, 1080f
1078:             slt          s1, a5, t1
1079:             auipc        a4, 637648
1080:             or           s1, sp, t0
                  addi         s7, s10, -238
                  slli         s9, s9, 27
                  sltu         t4, gp, s6
                  bltu         s5, a6, 1086f
                  slli         s4, gp, 5
1086:             auipc        s4, 1010825
                  srai         a7, gp, 14
                  xor          s6, s6, a2
                  blt          a7, s8, 1100f
                  sll          t4, a7, t4
                  ori          s6, a5, -1007
                  bge          t1, s3, 1104f
                  sltiu        a6, t4, 1605
                  bne          zero, t3, 1105f
                  beq          a4, sp, 1098f
                  bge          tp, s0, 1106f
                  bne          a7, s7, 1108f
1098:             andi         s0, a0, 470
                  bgeu         gp, s9, 1116f
1100:             blt          t3, a2, 1107f
                  sub          s7, t0, t5
                  nop
                  xor          a3, a7, s2
1104:             and          a3, t5, s11
1105:             lui          s4, 444147
1106:             srl          tp, s0, t0
1107:             srai         a6, sp, 11
1108:             bne          a6, t4, 1122f
                  ori          a4, s2, 1585
                  sltiu        s2, t1, -1298
                  andi         t0, a1, 247
                  auipc        ra, 165520
                  sra          tp, s1, t5
                  slti         gp, a7, -1287
                  lui          s10, 644289
1116:             or           s5, a5, t1
                  bge          s5, a3, 1118f
1118:             xori         s0, s2, 1123
                  slli         s7, s11, 16
                  srl          t5, a5, a2
                  bne          s4, t1, 1141f
1122:             and          t1, s3, s5
                  sltiu        a1, s10, 1426
                  ori          a4, a0, 1055
                  slti         t3, t4, 1771
                  sub          t1, a1, zero
                  bgeu         s0, s5, 1136f
                  sub          s11, t1, t3
                  sub          s9, t2, t1
                  or           t2, a4, s7
                  sub          s6, s4, a7
                  andi         t3, s3, 522
                  xor          s6, s9, s10
                  slli         t1, sp, 16
                  bge          tp, t5, 1142f
1136:             sub          s0, t4, a1
                  slli         s10, t3, 18
                  bltu         s4, t2, 1148f
                  srl          zero, t4, s10
                  bgeu         s11, a0, 1143f
1141:             lui          s1, 691721
1142:             addi         gp, t5, -178
1143:             or           s2, a5, a4
                  auipc        s9, 457201
                  beq          a6, a7, 1152f
                  slt          s9, s0, tp
                  andi         a2, t0, 444
1148:             or           s0, t4, a2
                  addi         s10, a5, -1558
                  sll          ra, s6, t3
                  bltu         a5, t2, 1165f
1152:             xor          gp, t6, t2
                  sltiu        ra, a1, 1173
                  xori         s2, t0, 1020
                  beq          a3, sp, 1165f
                  or           gp, gp, a4
                  andi         t4, zero, -693
                  bltu         tp, a5, 1159f
1159:             sll          a5, s6, s7
                  srl          tp, t5, s7
                  addi         t4, s9, 1238
                  ori          s0, zero, -1681
                  ori          t5, zero, -758
                  sub          s0, t4, t0
1165:             blt          a0, zero, 1167f
                  srli         gp, a7, 9
1167:             auipc        a6, 716615
                  or           s1, s9, s2
                  bltu         t2, sp, 1188f
                  auipc        a2, 673026
                  bgeu         a6, a5, 1180f
                  bgeu         t5, s6, 1189f
                  nop
                  slli         sp, t3, 13
                  sll          s1, s7, s7
                  sub          t4, a3, tp
                  srai         a2, s7, 21
                  xori         zero, s1, -1574
                  or           s5, a5, s2
1180:             srl          a5, a5, a7
                  slli         t2, zero, 14
                  slli         a4, t5, 8
                  slti         a7, ra, 391
                  bgeu         s8, s1, 1189f
                  or           a4, a6, t3
                  ori          t3, s4, -1460
                  ori          t1, tp, -323
1188:             sub          a5, a1, a4
1189:             bgeu         t6, s4, 1198f
                  ori          a7, t1, 1519
                  bltu         s9, s8, 1202f
                  auipc        zero, 222225
                  slli         t3, a0, 18
                  lui          a3, 436272
                  sll          a7, s1, gp
                  or           a7, s6, s0
                  sltu         tp, s4, t5
1198:             lui          s8, 73092
                  beq          tp, a1, 1210f
                  slti         t4, t3, -1092
                  sra          s7, t0, s5
1202:             and          s7, s11, a3
                  bge          s1, a4, 1220f
                  sra          s2, s7, tp
                  beq          s6, gp, 1212f
                  ori          a2, s2, -802
                  nop
                  bgeu         s4, tp, 1211f
                  beq          a2, t2, 1220f
1210:             addi         tp, a1, -772
1211:             bge          a3, s6, 1229f
1212:             or           s1, gp, s6
                  sra          t1, a4, t4
                  sub          t5, a7, ra
                  sra          s1, s8, s3
                  auipc        a7, 369461
                  sra          s7, s10, s10
                  bgeu         a6, t4, 1230f
                  xori         s11, s4, 95
1220:             xori         a7, s2, -818
                  add          gp, s4, sp
                  xor          s0, s0, s1
                  and          s10, zero, s3
                  bgeu         a3, t0, 1236f
                  nop
                  srl          t4, s1, s9
                  blt          t6, s8, 1247f
                  or           sp, s4, tp
1229:             bltu         a5, sp, 1245f
1230:             addi         a6, t1, -1748
                  sra          a6, s5, tp
                  sll          s8, t5, s8
                  slli         a5, s0, 9
                  xor          s1, gp, t5
                  nop
1236:             xor          a1, a4, gp
                  beq          t1, a6, 1239f
                  bne          s0, a1, 1239f
1239:             add          tp, s2, a4
                  ori          s11, a4, 599
                  bgeu         s3, zero, 1242f
1242:             sub          t1, ra, a1
                  sra          sp, t3, a0
                  add          s11, s7, gp
1245:             bltu         s6, a7, 1262f
                  lui          t0, 905269
1247:             slli         a2, s4, 2
                  andi         s1, s4, 1306
                  sra          s11, s10, gp
                  andi         t3, t6, -1001
                  slt          s7, t6, s3
                  slli         a3, gp, 9
                  sll          t5, a7, s7
                  add          ra, s3, a0
                  bge          sp, t6, 1259f
                  auipc        s8, 52298
                  or           a3, zero, a7
                  nop
1259:             blt          a7, gp, 1263f
                  sub          t4, a6, a5
                  sltiu        s9, sp, -1052
1262:             bne          t1, s2, 1273f
1263:             slt          s8, s3, t5
                  andi         s11, s3, 1023
                  sra          t3, s3, s4
                  or           s5, t4, t1
                  srl          t4, t0, sp
                  sltiu        s2, s5, -683
                  and          t4, a4, zero
                  sra          s0, t2, t2
                  nop
                  addi         a6, sp, -1920
1273:             and          t5, s2, t2
                  andi         sp, a5, 62
                  sltiu        a4, s7, -1911
                  ori          t5, s3, -254
                  sub          s7, a6, t5
                  beq          s0, s10, 1295f
                  andi         s11, s9, -91
                  and          s10, a5, gp
                  ori          a7, t2, -956
                  srli         s0, s5, 4
                  srl          a5, s9, s10
                  sll          t2, s8, t1
                  sra          s10, t5, t6
                  ori          tp, t4, 684
                  slli         t4, s9, 6
                  xor          s9, zero, a5
                  beq          s11, s7, 1290f
1290:             xor          a2, t0, s4
                  bgeu         s11, t2, 1311f
                  slt          a5, s2, t0
                  addi         t0, t2, -542
                  beq          t2, t5, 1312f
1295:             or           t0, sp, a4
                  or           a5, a7, a1
                  bge          a7, a3, 1304f
                  nop
                  slti         t2, a6, 1312
                  slli         t0, a5, 11
                  bltu         s3, s7, 1313f
                  sltu         s7, s1, a4
                  blt          tp, s0, 1304f
1304:             beq          ra, s0, 1321f
                  bgeu         a5, t0, 1307f
                  slti         a5, t0, -728
1307:             nop
                  sra          t5, gp, s10
                  auipc        t4, 204305
                  and          gp, tp, t3
1311:             blt          s4, a5, 1325f
1312:             addi         a3, s11, -1573
1313:             ori          t3, t0, 1287
                  slti         t3, s10, 1225
                  bne          t6, a6, 1324f
                  auipc        s4, 90270
                  srl          a5, s10, a7
                  bltu         s11, zero, 1329f
                  sltu         a5, s0, s6
                  beq          sp, s3, 1325f
1321:             bne          s0, s0, 1322f
1322:             bltu         sp, s10, 1339f
                  and          ra, zero, t5
1324:             addi         gp, s5, 470
1325:             andi         a5, s9, -992
                  add          s10, zero, a0
                  bgeu         a4, zero, 1337f
                  bltu         a5, s7, 1339f
1329:             srl          s8, ra, a0
                  auipc        t4, 1016743
                  sra          a1, sp, a5
                  or           a4, gp, gp
                  sltu         a2, s2, s1
                  add          t2, s2, tp
                  xori         sp, sp, 1741
                  addi         t1, s8, 495
1337:             bne          s1, s4, 1348f
                  nop
1339:             beq          a7, a4, 1341f
                  lui          a5, 138769
1341:             bgeu         tp, t4, 1360f
                  xor          s2, t1, s1
                  bge          t4, s4, 1346f
                  andi         a5, a2, 1461
                  or           s4, t3, s0
1346:             andi         s9, tp, -826
                  bgeu         sp, s1, 1359f
1348:             xor          s8, t6, s2
                  sltu         a5, sp, s2
                  addi         s5, t2, -147
                  xor          s5, s1, s1
                  add          t0, s5, s7
                  beq          s0, s4, 1360f
                  bge          s11, t1, 1370f
                  lui          a1, 244991
                  sltu         s5, a7, a3
                  srli         a3, s2, 11
                  bne          a0, s5, 1369f
1359:             or           a3, a7, s7
1360:             sra          a6, zero, gp
                  slti         a6, a4, -1619
                  or           s5, t5, t4
                  nop
                  bgeu         s6, s9, 1368f
                  xori         s0, s5, 348
                  bltu         a7, a1, 1375f
                  srl          t4, s8, s5
1368:             bgeu         a7, a1, 1378f
1369:             slti         s2, tp, -908
1370:             add          s10, s1, s1
                  bne          a7, ra, 1374f
                  addi         sp, s9, -1973
                  xor          tp, tp, t2
1374:             srai         ra, t2, 28
1375:             slt          s5, s11, a4
                  sll          s8, a0, s4
                  or           s1, t6, t2
1378:             add          a5, a5, t6
                  slti         t0, t4, -1205
                  bgeu         a7, ra, 1384f
                  xor          a4, a6, t0
                  srl          s0, s7, zero
                  srai         t3, gp, 13
1384:             add          a7, s11, t6
                  beq          t6, a2, 1395f
                  sll          s5, t5, s7
                  slti         s8, s10, -817
                  nop
                  sub          s5, s1, a5
                  sltu         t4, s3, s11
                  bltu         s8, ra, 1394f
                  bge          s1, gp, 1393f
1393:             srl          s9, a7, a3
1394:             bgeu         a1, a5, 1398f
1395:             nop
                  and          zero, gp, s0
                  srl          a2, a7, s5
1398:             and          a7, t2, ra
                  sltiu        t2, a5, -732
                  nop
                  beq          tp, s10, 1418f
                  sub          t0, s4, a7
                  and          a6, ra, s0
                  sra          s11, s8, s2
                  sltu         a5, s10, s4
                  bne          a1, a4, 1420f
                  bne          s1, t1, 1411f
                  slt          s9, s11, a5
                  bne          s7, t4, 1418f
                  and          s7, s0, s1
1411:             sra          s6, t2, s11
                  srli         a4, a4, 1
                  beq          zero, a6, 1420f
                  blt          tp, zero, 1425f
                  srai         t5, a3, 26
                  and          t1, a5, a6
                  beq          t3, t1, 1424f
1418:             sra          s10, t3, t2
                  srli         s6, zero, 3
1420:             sub          gp, s8, t4
                  slli         ra, s8, 16
                  addi         a4, gp, -552
                  srl          t2, s11, s11
1424:             sltiu        t2, s9, 1154
1425:             bge          s7, a2, 1442f
                  sltu         zero, t4, a4
                  sll          s7, t4, t0
                  bltu         zero, t2, 1429f
1429:             srli         a7, s3, 20
                  sra          zero, t4, s3
                  sub          a7, t4, t3
                  sltiu        tp, t6, -543
                  nop
                  addi         ra, a7, 175
                  bltu         s2, s4, 1446f
                  sub          s8, t1, t6
                  bge          a2, s4, 1442f
                  auipc        t1, 1046455
                  sub          sp, s8, s3
                  sltiu        s7, t1, 1488
                  bgeu         a1, zero, 1459f
1442:             slt          a3, t6, t1
                  bgeu         s11, s7, 1459f
                  sra          t2, a5, a2
                  sub          t5, ra, s7
1446:             and          t5, a2, t3
                  srai         s11, a0, 16
                  bge          s10, s0, 1459f
                  srai         s11, s2, 1
                  addi         sp, s10, 630
                  lui          s6, 938893
                  srl          a2, s8, a7
                  sltiu        t2, gp, -577
                  auipc        s9, 374803
                  or           t1, t5, a3
                  blt          s3, s0, 1466f
                  andi         s8, s8, -849
                  srl          a3, s2, t6
1459:             add          s9, s3, t5
                  xori         s1, tp, 864
                  slti         gp, zero, -1071
                  xor          zero, ra, s2
                  add          a3, t1, zero
                  or           s5, s2, s0
                  andi         t5, t4, 1312
1466:             andi         t4, a2, 500
                  sra          s7, t6, a7
                  slti         s10, s9, -1274
                  nop
                  sll          s5, t1, t6
                  bge          s7, s1, 1480f
                  xori         t1, a6, 1649
                  auipc        s9, 525486
                  addi         gp, s2, 758
                  slt          a1, a2, s2
                  beq          a3, t4, 1488f
                  or           zero, t0, a1
                  bne          a5, s11, 1489f
                  bge          a2, s6, 1480f
1480:             xori         zero, t5, 1333
                  xor          a3, t0, s0
                  sra          s7, s6, gp
                  ori          s8, s3, -1133
                  lui          s8, 926033
                  sltu         s1, zero, t4
                  blt          gp, gp, 1489f
                  bne          s8, s7, 1489f
1488:             sltu         s9, t3, s8
1489:             bge          a7, zero, 1491f
                  add          tp, t6, zero
1491:             add          t0, t1, a2
                  andi         a7, a6, -239
                  andi         t2, s1, 357
                  auipc        a1, 469266
                  bne          a6, s8, 1515f
                  bgeu         ra, gp, 1513f
                  lui          s1, 827385
                  and          a1, s8, a4
                  beq          a6, s3, 1518f
                  xor          a6, a6, a0
                  beq          s11, a1, 1513f
                  slt          s9, ra, a3
                  slli         ra, a6, 22
                  xor          zero, s11, t2
                  bltu         a3, s8, 1522f
                  or           tp, a3, a3
                  addi         a3, a1, 1736
                  beq          s10, a5, 1519f
                  auipc        t3, 679588
                  xor          s0, s4, s2
                  nop
                  bne          s5, a0, 1522f
1513:             sltu         s4, zero, a7
                  auipc        sp, 589693
1515:             xori         t2, sp, 739
                  add          s5, gp, a3
                  bne          s11, zero, 1533f
1518:             xor          a7, s6, gp
1519:             auipc        a5, 692295
                  nop
                  slli         gp, zero, 29
1522:             lui          zero, 924380
                  sra          s2, s9, s5
                  auipc        t0, 712808
                  sub          s4, gp, s8
                  xor          s10, t3, s2
                  blt          s5, a3, 1529f
                  sll          a2, a0, s7
1529:             xor          a3, t3, ra
                  bne          a7, gp, 1533f
                  bgeu         gp, a4, 1551f
                  ori          a2, t0, 68
1533:             srai         a5, s6, 20
                  slli         a4, s11, 7
                  bge          t6, s2, 1542f
                  addi         ra, a4, -970
                  sll          t2, s8, t1
                  bge          tp, s6, 1539f
1539:             and          a1, s0, s0
                  sll          s4, a6, s5
                  ori          t4, a0, -1384
1542:             srli         ra, tp, 14
                  slli         gp, zero, 1
                  addi         s4, s9, -1857
                  srai         a4, s10, 24
                  auipc        s2, 127138
                  xor          s8, sp, s6
                  auipc        zero, 815291
                  sltiu        s0, zero, -319
                  bne          s11, a5, 1562f
1551:             lui          a5, 931998
                  lui          s6, 35156
                  lui          s0, 819670
                  addi         t3, t2, -1501
                  lui          t0, 857107
                  and          t0, gp, a0
                  bltu         s8, a1, 1559f
                  bge          t4, t3, 1562f
1559:             sltu         sp, s4, t2
                  nop
                  sub          t4, s3, gp
1562:             sub          ra, t6, a6
                  bne          s11, tp, 1568f
                  andi         t2, a7, -526
                  bne          t5, t0, 1583f
                  srli         s6, a6, 30
                  nop
1568:             sltu         gp, a5, a6
                  andi         a2, s5, 22
                  blt          a7, a6, 1587f
                  bltu         s11, t2, 1585f
                  sll          a6, t1, s10
                  andi         s7, t3, -88
                  srai         t5, s3, 29
                  sltu         s8, s8, zero
                  sltiu        s7, s9, 575
                  add          gp, s9, s6
                  bne          a0, t4, 1588f
                  xori         s7, tp, 1767
                  andi         s8, t0, 56
                  andi         s11, a1, -1142
                  and          s7, t4, t4
1583:             nop
                  sra          a5, s8, a4
1585:             xor          sp, ra, s11
                  sltiu        s2, a1, -325
1587:             auipc        sp, 433894
1588:             or           s1, t4, a3
                  sub          a1, t4, tp
                  add          a4, a0, a4
                  sub          s7, a7, a7
                  bgeu         a6, tp, 1593f
1593:             and          s8, gp, a7
                  slli         s11, t2, 29
                  bltu         a6, s7, 1606f
                  srl          t5, a1, gp
                  sra          a1, s3, ra
                  bltu         t5, s5, 1617f
                  sll          t0, gp, s1
                  bgeu         t3, s7, 1612f
                  bge          s3, ra, 1612f
                  andi         t4, tp, -600
                  sltu         s11, t4, a3
                  slt          t2, s9, a6
                  bne          a6, s4, 1606f
1606:             srli         t2, zero, 5
                  bgeu         t0, s1, 1624f
                  sll          s11, s8, t6
                  srli         a2, a0, 24
                  lui          a5, 431285
                  srai         sp, s7, 24
1612:             sll          a2, sp, s2
                  add          a2, s2, t6
                  and          s2, s5, t0
                  slti         a5, s9, -1677
                  blt          a7, a5, 1619f
1617:             and          s8, s1, a1
                  andi         ra, s11, -374
1619:             srli         s9, s9, 0
                  sltiu        ra, gp, -1244
                  addi         a6, s5, 105
                  srai         gp, a5, 28
                  sra          t4, s9, s11
1624:             srai         s2, a1, 17
                  sltu         ra, s2, s9
                  srl          s1, s9, s9
                  and          s7, t0, a6
                  bltu         sp, s6, 1632f
                  bge          a4, zero, 1638f
                  bge          tp, s1, 1641f
                  slli         t4, a7, 8
1632:             bgeu         a4, t1, 1641f
                  nop
                  sub          s1, s4, t2
                  bltu         t6, a6, 1642f
                  bne          a6, s8, 1643f
                  slti         a6, a7, -1816
1638:             nop
                  bgeu         ra, tp, 1642f
                  slti         a1, a3, -1155
1641:             bge          s9, t2, 1646f
1642:             slti         a7, zero, -1724
1643:             or           t3, ra, t4
                  sra          t3, tp, ra
                  bne          s0, zero, 1657f
1646:             auipc        s2, 275469
                  or           t1, a2, a0
                  auipc        s5, 511148
                  srl          s8, a0, t2
                  blt          sp, t4, 1659f
                  xori         s8, s6, 452
                  addi         s10, a2, 1680
                  sra          s11, t5, s9
                  beq          a7, s1, 1663f
                  slli         a4, t3, 12
                  slt          t4, a4, tp
1657:             slt          a4, a7, t1
                  sltu         t1, s10, s7
1659:             srli         a5, s10, 12
                  srli         t0, s1, 13
                  and          zero, t5, s1
                  sltiu        tp, s10, -177
1663:             add          t3, zero, t3
                  slt          s2, s1, s7
                  ori          s9, ra, -1841
                  addi         s11, a7, 2010
                  beq          a2, gp, 1685f
                  srli         zero, ra, 26
                  xori         a2, s5, 809
                  addi         s11, t3, -1435
                  sub          s6, t6, a3
                  beq          s10, sp, sub_4_j8 #branch to jump instr
                  ori          t5, s6, -345
                  addi         a7, s7, -508
                  and          s0, t6, t3
                  lui          gp, 305343
sub_4_j8:         jal          s0, sub_6 #jump sub_4 -> sub_6
                  slt          s7, t6, t3
                  bne          a4, tp, 1671f
                  srl          ra, s6, a1
1671:             bne          a2, a4, 1687f
                  sltiu        s10, s1, 1453
                  beq          t1, ra, 1675f
                  srai         s4, a1, 1
1675:             blt          s0, s7, 1685f
                  blt          t5, a0, 1695f
                  sra          s5, s4, a6
                  addi         ra, tp, 1015
                  lui          t1, 546377
                  sltiu        s4, t2, -613
                  beq          s4, t1, 1682f
1682:             and          t3, t0, s11
                  srli         t2, t3, 9
                  xori         s7, s5, -790
1685:             and          a2, ra, s5
                  sub          s4, sp, t3
1687:             ori          s9, s3, 60
                  auipc        a7, 163642
                  xor          s5, s8, s3
                  add          s0, t5, s4
                  or           s10, t2, a7
                  bge          a5, t1, 1704f
                  add          s6, s5, ra
                  beq          s6, a4, 1695f
1695:             andi         s4, a4, 1254
                  nop
                  srl          t4, a2, t4
                  bge          tp, s3, 1705f
                  nop
                  bltu         a4, a5, 1720f
                  auipc        zero, 461923
                  xor          t1, s1, s4
                  sub          s2, s1, a0
1704:             bge          tp, tp, 1715f
1705:             addi         s7, t6, -304
                  sltiu        s5, a3, -1318
                  bne          ra, s8, 1724f
                  and          a5, t1, s10
                  slti         s10, a7, -629
                  blt          s8, t3, 1720f
                  bge          t2, gp, 1714f
                  addi         ra, t6, 1220
                  slli         s9, gp, 10
1714:             andi         gp, s7, -930
1715:             xor          s4, s5, s8
                  nop
                  blt          t5, s0, 1728f
                  bne          s1, s8, 1719f
1719:             slti         zero, s6, 1454
1720:             andi         tp, s7, -1411
                  srli         a3, s10, 30
                  sra          a4, a5, s6
                  slt          s10, t3, s6
1724:             and          sp, s2, a3
                  bne          a3, a7, 1739f
                  ori          a6, t6, 1997
                  slti         s11, t5, -65
1728:             sltu         s11, s4, s3
                  nop
                  slt          t4, s3, a0
                  xor          sp, t5, t5
                  srl          a1, a4, a4
                  nop
                  xori         gp, zero, -466
                  slti         sp, a6, 631
                  xori         s0, a2, 1195
                  sra          tp, t3, a1
                  srli         s9, a0, 31
1739:             beq          a1, t3, 1756f
                  xor          s11, t5, s7
                  lui          ra, 272347
                  ori          a4, gp, 1513
                  ori          t3, a7, 1579
                  xor          sp, a0, a2
                  blt          s5, s10, 1749f
                  la           a3, region_0+1053 #start riscv_load_store_rand_instr_stream_2
                  slti         s1, zero, -840
                  lh           sp, -197(a3)
                  andi         t5, s7, -875
                  sh           zero, 127(a3)
                  sb           sp, 201(a3)
                  srl          s2, t6, sp
                  sb           s8, -244(a3)
                  lb           ra, 10(a3)
                  andi         s0, s6, 91
                  sh           a1, 201(a3)
                  xori         t0, s9, 1858
                  lb           s10, 122(a3)
                  sh           t0, 83(a3)
                  slli         s4, a2, 20
                  sb           t4, -194(a3)
                  lw           t1, -225(a3)
                  slti         s10, s11, 1245
                  lbu          s2, 249(a3)
                  slli         a5, zero, 12
                  ori          s1, t3, 567
                  sb           t3, 84(a3)
                  lbu          t5, -28(a3)
                  or           t0, t6, s2
                  sb           t5, 130(a3)
                  sb           a5, -56(a3)
                  lb           t4, -191(a3)
                  lhu          sp, 143(a3)
                  sb           s4, 209(a3)
                  lb           a1, 86(a3)
                  lbu          t0, 133(a3)
                  sw           s0, -21(a3)
                  lh           s10, 125(a3)
                  slli         a7, s1, 23
                  lbu          s8, -8(a3)
                  lh           gp, -19(a3)
                  sh           s6, -53(a3) #end riscv_load_store_rand_instr_stream_2
                  lui          s10, 912555
                  srai         a7, t1, 26
                  sub          t4, s11, t5
1749:             nop
                  auipc        s2, 64818
                  sra          s9, t3, s10
                  la           t0, region_1+603 #start riscv_load_store_rand_instr_stream_1
                  sb           a1, -132(t0)
                  lhu          a5, 15(t0)
                  lb           t3, -158(t0)
                  lb           zero, 154(t0)
                  lb           tp, 34(t0)
                  lh           s5, 129(t0)
                  slt          tp, a2, t3
                  xori         s0, t5, -1637
                  lw           tp, 245(t0)
                  sw           s10, -87(t0)
                  sb           t2, 79(t0)
                  sll          s7, gp, s2
                  slti         s7, s4, 2022
                  add          a4, zero, t6
                  ori          tp, s5, -64
                  lb           zero, -256(t0)
                  sltiu        zero, a3, 782
                  lbu          s10, 205(t0)
                  and          a2, t6, s10
                  lb           s0, 103(t0)
                  srli         t3, t2, 12
                  lhu          a6, 101(t0)
                  srl          tp, ra, s0
                  sltu         s0, a7, s2
                  lb           s11, -225(t0)
                  andi         s0, s10, 1537
                  sb           tp, 252(t0)
                  sb           t5, 242(t0)
                  sb           a3, 154(t0)
                  addi         s4, zero, -641
                  lb           s2, 82(t0)
                  sb           s3, 22(t0)
                  lbu          s6, -74(t0)
                  lh           a2, 15(t0)
                  auipc        a6, 781551
                  slli         sp, a5, 0
                  lhu          t3, 243(t0)
                  lb           s2, -227(t0)
                  xor          s2, gp, s6
                  lw           t2, -215(t0)
                  lbu          t1, 172(t0)
                  xor          sp, a3, s7
                  sb           s3, 26(t0) #end riscv_load_store_rand_instr_stream_1
                  auipc        s2, 751476
                  sub          s8, s9, a1
                  sltiu        s0, s9, 788
                  bltu         a4, s10, 1766f
1756:             srl          s6, s1, t5
                  bgeu         ra, s8, 1761f
                  nop
                  beq          s5, s4, 1770f
                  or           a5, a4, t1
1761:             auipc        a5, 298360
                  beq          s1, t0, 1779f
                  ori          s8, t4, 681
                  andi         a4, a7, 427
                  beq          s8, t1, 1770f
1766:             nop
                  srai         a1, s6, 30
                  sra          a2, s6, s8
                  or           s1, tp, a0
1770:             sra          a4, t1, a7
                  and          s10, s4, a1
                  srai         a1, a7, 17
                  bltu         a2, a6, 1780f
                  xor          ra, a7, sp
                  ori          s6, s8, 667
                  xor          t3, sp, s3
                  slti         a2, a5, 1426
                  srl          t2, s9, s6
1779:             and          a2, s4, a5
1780:             slti         a5, a4, 305
                  sub          t1, t5, s4
                  bltu         s10, s9, 1799f
                  slt          sp, s10, t0
                  srl          a4, s2, a6
                  slli         s2, s6, 12
                  andi         s2, s11, -150
                  auipc        s5, 390311
                  sltiu        t5, t6, -525
                  sltu         s10, s4, t3
                  sub          s10, gp, s11
                  ori          t5, s10, 1660
                  add          s11, s9, s3
                  sltiu        a7, t6, 1616
                  bge          s0, sp, 1797f
                  sltu         t0, zero, a1
                  srl          zero, tp, sp
1797:             andi         s7, t4, 1521
                  srai         t1, a6, 9
1799:             add          s9, s6, s11
                  slt          t4, ra, s10
                  blt          a1, t1, 1810f
                  sltiu        a5, s1, -1731
                  bne          ra, a2, 1814f
                  auipc        a5, 496350
                  xor          ra, s11, a5
                  srai         sp, s1, 7
                  beq          a3, s1, 1811f
                  sltiu        s9, tp, 701
                  auipc        t3, 723842
1810:             xor          a6, s7, s8
1811:             srai         s8, ra, 2
                  or           s0, s11, t1
                  xor          tp, a1, ra
1814:             andi         gp, ra, -608
                  sltu         a7, s9, s2
                  addi         a2, a7, 1850
                  nop
                  sltu         a3, zero, tp
                  lw           s0, 4(s3)
                  addi         s3, s3, 16
                  sltu         s2, a5, sp
                  sll          gp, t0, zero
                  slli         a6, ra, 20
                  ori          gp, s8, 426
                  andi         t3, a4, -938
                  sll          s2, t6, a5
2441:             addi x27, x8, 0
2441:             jalr x27, x27, 0
sub_5:            auipc        a6, 473898
                  slt          s4, s8, zero
                  bltu         t5, t3, sub_5_stack_p
                  slt          s11, s2, gp
                  xor          zero, s6, s3
                  ori          a3, t3, 1696
sub_5_stack_p:    addi         s3, s3, -52
                  add          zero, a4, s1
                  and          a4, s6, zero
                  sw           s0, 4(s3)
                  srl          s5, gp, a2
                  xor          a3, s4, s5
                  xori         a2, s11, 621
                  la           s6, sub_6
                  srl          tp, s6, s9
                  addi         s6, s6, 942
                  sltiu        t4, s10, 1840
                  or           a6, s7, a2
                  add          t3, t4, gp
                  blt          t3, a5, sub_5_j11 #branch to jump instr
                  add          a7, s2, a2
                  ori          t1, s8, -2
                  ori          t5, s11, -98
                  srl          s11, t1, t0
sub_5_j11:        jalr         s0, s6, -942 #jump sub_5 -> sub_6
                  la           sp, region_0+582 #start riscv_load_store_rand_instr_stream_0
                  lh           t5, -16(sp)
                  lbu          s0, -14(sp)
                  srai         t4, t5, 27
                  lb           gp, -13(sp)
                  sra          t4, a3, t1
                  srai         t5, s5, 26
                  nop
                  srai         s10, a3, 26
                  auipc        s9, 672205
                  sb           t1, 15(sp)
                  sll          s10, s9, ra
                  sb           s7, -11(sp)
                  sltiu        s6, s6, -49
                  srli         a1, t2, 20
                  nop
                  sub          a2, s9, s5
                  lui          s11, 759947
                  lh           s1, 0(sp)
                  srai         a4, zero, 30
                  and          s9, s5, ra
                  sltiu        t3, t3, 1930
                  lw           s11, 6(sp)
                  addi         tp, a5, 1899
                  slti         s6, t2, 1151
                  lb           t3, -5(sp)
                  lhu          s5, 16(sp)
                  lb           a4, -12(sp)
                  lbu          s6, 9(sp)
                  sub          s5, s11, t5
                  srai         a4, t2, 16
                  sra          a2, gp, tp
                  sra          s5, t2, s9
                  or           tp, a2, a6
                  srai         gp, s4, 26
                  lb           a3, -15(sp)
                  sub          s9, s3, t5
                  lhu          s8, 2(sp)
                  lhu          a7, 6(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1623 #start riscv_load_store_rand_instr_stream_1
                  srai         gp, t0, 1
                  sb           s7, 54(sp)
                  sll          a6, t4, s5
                  slli         s7, s1, 20
                  addi         t3, s5, 1402
                  sra          t0, tp, tp
                  srl          s6, a2, s7
                  srl          a7, a3, s11
                  addi         a3, gp, -641
                  xor          s1, t6, t1
                  lui          s2, 589978
                  auipc        a3, 956913
                  lb           a3, -26(sp)
                  lbu          t2, 38(sp)
                  lb           t5, -56(sp)
                  srai         a4, s9, 22
                  lb           t0, -38(sp)
                  lbu          a3, 10(sp)
                  sltiu        a3, t2, -1343
                  and          a6, s7, a0
                  slt          s5, t5, s3
                  lb           s5, 43(sp)
                  auipc        t2, 680033
                  xor          t3, s8, a4
                  auipc        s4, 31187
                  lhu          s0, -29(sp)
                  nop
                  lbu          s9, -41(sp)
                  lh           a4, -1(sp)
                  sub          a7, zero, sp
                  lb           t5, -52(sp) #end riscv_load_store_rand_instr_stream_1
                  ori          s0, s8, -1687
                  lui          t5, 395782
                  xor          gp, s8, s9
                  bltu         s0, gp, 9f
                  xori         t3, a0, -567
                  bne          t1, a4, 14f
                  ori          zero, s10, 714
                  andi         s9, t3, -659
                  slli         s8, a5, 19
9:                bltu         a3, t6, 11f
                  andi         tp, s2, -1707
11:               lui          t5, 154633
                  srli         ra, ra, 14
                  slli         a2, a7, 4
14:               bne          s1, s0, 25f
                  blt          a5, gp, 16f
16:               bltu         s5, a5, 23f
                  slli         tp, a1, 29
                  sll          t4, zero, s5
                  bge          gp, s1, 25f
                  srai         s4, t0, 3
                  sltiu        t0, a7, 620
                  slti         a6, tp, 1085
23:               or           sp, a2, tp
                  blt          t5, zero, 35f
25:               srai         a6, a2, 11
                  ori          s0, s1, -1188
                  bge          a4, tp, 36f
                  and          a4, t5, a7
                  slli         s4, t4, 28
                  sll          a2, a3, a0
                  sll          s5, a3, gp
                  sub          t2, s5, s9
                  nop
                  blt          s4, s11, 52f
35:               sra          s9, t5, s1
36:               and          s11, t0, a6
                  auipc        t0, 903476
                  or           s7, a1, s10
                  lui          s7, 42205
                  xori         a3, t6, -857
                  sltu         t4, gp, s9
                  sll          a3, a7, sp
                  xori         t5, s10, -1879
                  bge          s5, tp, 51f
                  bltu         s9, t2, 48f
                  sub          s9, t0, s1
                  bgeu         t3, a4, 48f
48:               add          sp, gp, t4
                  nop
                  sltiu        t3, zero, -1537
51:               sra          zero, s10, s6
52:               slt          gp, a7, t5
                  srai         a5, a2, 18
                  and          gp, t2, t1
                  sub          t0, t1, a6
                  sltu         s10, s5, s3
                  sub          t3, sp, a1
                  sltu         a6, s4, t4
                  xor          t4, a0, s11
                  bge          s6, s8, 66f
                  or           gp, t1, s10
                  bge          s1, t4, 64f
                  bge          s3, a2, 82f
64:               srai         gp, t6, 13
                  bne          sp, s5, 79f
66:               slli         t2, a5, 10
                  bgeu         sp, t1, 78f
                  auipc        zero, 392865
                  beq          t4, t4, 70f
70:               ori          t2, a7, -526
                  sub          s8, s8, s3
                  add          tp, a3, gp
                  slt          a5, a2, a6
                  auipc        t5, 787055
                  bgeu         a7, tp, 86f
                  sltu         a2, a2, s4
                  and          s9, t1, s4
78:               srl          sp, tp, a2
79:               slt          a7, tp, gp
                  bne          s2, t2, 85f
                  bge          t4, a5, 83f
82:               or           ra, s2, a4
83:               addi         t5, gp, -795
                  auipc        a3, 283690
85:               srai         a5, s1, 5
86:               xori         t3, s9, -1618
                  sra          a3, s0, sp
                  xori         t2, gp, -1453
                  xor          s1, tp, a6
                  sltu         s5, t4, sp
                  slt          t0, t1, s7
                  nop
                  srai         s0, tp, 10
                  addi         s0, a2, 1854
                  srli         zero, s1, 27
                  sll          gp, a6, s8
                  add          s4, s8, s3
                  or           a5, a3, a3
                  add          s0, t6, a0
                  sra          t5, t1, s10
                  xor          s10, s1, a6
                  xori         s11, t3, 198
                  slt          s6, a4, s0
                  xor          a6, a6, a7
                  bne          t6, a0, 117f
                  xor          ra, a6, s9
                  sub          s8, s7, a5
                  auipc        a1, 323120
                  slti         t3, tp, -1827
                  srli         s10, t6, 30
                  srli         a1, t6, 20
                  auipc        s9, 79496
                  nop
                  auipc        s0, 637713
                  sltu         t1, s4, s11
                  srli         tp, tp, 21
117:              sra          tp, t2, a3
                  srli         a3, a2, 5
                  srl          a6, tp, s6
                  sra          t5, tp, a1
                  slli         tp, a2, 25
                  blt          a5, s7, 136f
                  sltiu        zero, s2, 1684
                  srai         sp, a4, 9
                  bge          s8, t3, 126f
126:              auipc        s7, 884059
                  xor          gp, t0, t5
                  sll          s8, s4, zero
                  and          s7, a7, gp
                  bne          t3, a1, 143f
                  lui          t1, 526108
                  sll          t3, a1, ra
                  addi         s8, gp, 1664
                  xori         s7, t3, 1099
                  slt          a6, sp, s11
136:              sltiu        s2, a4, -287
                  auipc        t5, 929165
                  beq          s4, zero, 158f
                  andi         a5, s11, 1533
                  xor          a6, s10, a4
                  bne          s9, tp, 150f
                  auipc        t4, 774958
143:              bgeu         t3, a2, 161f
                  bltu         s9, ra, 155f
                  andi         zero, s2, 648
                  bne          a5, s6, 166f
                  sub          a1, t0, a2
                  addi         ra, s6, 1038
                  sub          s2, s3, a2
150:              sltiu        t1, a7, -1800
                  sll          s0, t5, t1
                  auipc        s10, 206797
                  ori          s6, ra, 1675
                  sra          s2, t2, a2
155:              add          s0, tp, a2
                  sltu         a1, a2, a2
                  xor          s2, s5, t0
158:              and          t2, zero, s11
                  bgeu         t3, s6, 170f
                  bltu         tp, a4, 167f
161:              sltu         gp, a2, t4
                  slli         s6, a6, 20
                  nop
                  beq          t0, t5, 183f
                  slt          a5, t0, s2
166:              sra          tp, s2, a5
                  srai         a2, a3, 11
                  ori          s10, s0, 587
                  sltu         sp, a6, gp
                  slli         a4, tp, 27
                  add          s9, a0, t4
                  add          t0, s9, s8
                  sub          s8, tp, a5
                  nop
                  sra          a6, s5, zero
sub_5_j9:         jal          s0, sub_7 #jump sub_5 -> sub_7
167:              and          t1, a7, s9
                  auipc        a3, 508600
                  sub          s10, s9, s4
170:              bne          s3, a3, 177f
                  addi         s1, tp, 1389
                  sltiu        s9, a2, 1043
                  srli         t3, t1, 11
                  sub          s6, t2, a7
                  ori          a6, a2, 1176
                  addi         s1, a2, -709
177:              beq          t4, ra, 186f
                  bge          t4, s9, 179f
179:              ori          s9, a1, 457
                  srai         s11, s1, 16
                  sub          a6, zero, s11
                  slt          t5, t4, s0
183:              xori         a4, t1, -697
                  and          s1, t3, a2
                  bge          zero, sp, 191f
186:              bgeu         a5, a4, 189f
                  bltu         s11, t1, 199f
                  addi         a4, t4, -603
189:              sra          t3, s9, a7
                  srl          s7, t1, s8
191:              bne          s5, s1, 200f
                  addi         s9, s11, 681
                  srl          s8, ra, s8
                  sub          t2, s9, s7
                  slli         s11, a6, 8
                  bne          t2, t5, 198f
                  sll          t1, t5, s8
198:              sub          s5, t0, t3
                  slt          t3, gp, t0
                  slt          sp, t3, a0
                  la           s7, sub_8
                  auipc        a3, 75283
                  srai         a3, a3, 16
                  addi         s7, s7, 1022
                  ori          s5, s5, -1414
                  sll          t4, s4, s10
                  nop
                  bltu         t5, a5, sub_5_j10 #branch to jump instr
                  add          s6, ra, ra
                  srli         zero, a1, 2
                  addi         s6, a2, 1641
sub_5_j10:        jalr         s0, s7, -1022 #jump sub_5 -> sub_8
199:              beq          t5, t3, 210f
200:              slti         sp, s1, 1738
                  xor          t2, zero, t0
                  lui          s0, 916519
                  slt          a2, s3, ra
                  bne          s6, s0, 215f
                  addi         a7, t1, 1590
                  srl          s6, t0, t0
                  sltiu        a2, s2, 758
                  sra          s2, zero, t6
                  srl          t3, a4, s11
210:              sltiu        zero, gp, 17
                  nop
                  sll          s2, t0, s9
                  xor          t4, ra, s1
                  sub          zero, a1, a2
215:              sll          t4, t2, s0
                  lui          s10, 123115
                  add          t0, ra, s8
                  xor          s10, a4, t6
                  blt          t4, t4, 237f
                  blt          t6, t4, 222f
                  bge          s6, sp, 222f
222:              bne          t5, s7, 240f
                  bne          s0, t6, 225f
                  srl          t1, s9, a6
225:              beq          a0, a7, 226f
226:              andi         s9, sp, 1220
                  andi         zero, s6, 570
                  beq          a2, s0, 242f
                  and          t4, s1, gp
                  srli         s7, t1, 28
                  ori          t2, s2, 1946
                  bltu         gp, gp, 233f
233:              bltu         a3, s3, 244f
                  and          t1, a3, s6
                  srl          t5, s3, a5
                  beq          a0, a3, 245f
237:              addi         sp, sp, 385
                  or           t2, t0, a6
                  slt          gp, a4, zero
240:              lui          s6, 675176
                  srai         s1, s3, 1
242:              sltiu        a7, s10, -1398
                  bltu         a6, s1, 249f
244:              slt          a5, s10, zero
245:              srl          a3, s10, a1
                  srl          s4, s2, t3
                  beq          s7, a2, 253f
                  beq          t2, s2, 262f
249:              srli         t2, gp, 21
                  slt          s1, s6, t1
                  nop
                  xor          t3, a2, s11
253:              bgeu         s2, s1, 266f
                  slti         s0, s0, -357
                  xori         s5, s8, 2007
                  blt          s9, s4, 261f
                  srli         sp, gp, 1
                  srli         t2, a2, 4
                  sub          a3, ra, s6
                  or           s11, s9, s5
261:              srl          s8, s4, zero
262:              addi         t0, a7, 1967
                  and          a7, t4, s4
                  slt          t1, s10, tp
                  auipc        s11, 994357
266:              sltiu        t0, a2, 244
                  add          s0, t0, s10
                  bltu         s2, a7, 279f
                  sll          t1, t3, s6
                  sub          s9, s11, t1
                  srli         a2, t5, 23
                  or           gp, t4, a3
                  and          a2, t4, zero
                  bge          s8, ra, 285f
                  xori         sp, s10, 1307
                  blt          a7, a2, 283f
                  nop
                  sub          gp, t4, a4
279:              bgeu         s11, s6, 286f
                  bne          a1, s5, 294f
                  xor          a5, t3, a2
                  sltu         t3, a7, t6
283:              blt          s9, ra, 292f
                  srli         gp, t5, 12
285:              srai         t5, gp, 26
286:              srl          a3, a6, s3
                  srl          a1, t4, s11
                  srai         s10, s7, 31
                  ori          t3, gp, -1954
                  srai         s4, s9, 28
                  xor          a5, s10, t1
292:              add          s2, s8, a4
                  slt          a6, a3, a7
294:              xori         a3, a4, -729
                  blt          s8, a6, 304f
                  bgeu         s0, a4, 314f
                  slti         a7, s0, 1629
                  add          a2, a3, s4
                  bgeu         s0, t2, 310f
                  srl          t3, ra, s5
                  andi         t1, s3, -2041
                  add          t3, sp, gp
                  bge          s1, t4, 308f
304:              addi         s2, s4, 801
                  add          gp, t5, t4
                  srai         s1, s1, 12
                  and          s7, s5, s7
308:              andi         s4, s4, 1251
                  nop
310:              and          s9, a6, s4
                  blt          a2, t6, 317f
                  addi         t1, s9, 1816
                  ori          s6, t3, 1106
314:              srl          s1, a0, s9
                  slti         t1, a3, 871
                  beq          s7, zero, 317f
317:              and          s11, t1, s7
                  lw           s0, 4(s3)
                  slt          gp, t5, t4
                  xor          a3, t2, a4
                  addi         s3, s3, 52
                  sll          gp, s6, zero
443:              addi x3, x8, 0
443:              jalr x3, x3, 0
sub_6:            blt          t0, s2, sub_6_stack_p
                  addi         s10, a0, 1154
                  sltiu        t3, t0, -1476
                  slti         t4, a4, -770
                  sltu         a5, gp, a5
                  addi         ra, s6, 715
sub_6_stack_p:    addi         s3, s3, -32
                  sw           s0, 4(s3)
                  add          a2, gp, a3
                  slt          s8, t6, t3
                  andi         a4, s8, 1697
                  la           t4, region_0+31 #start riscv_load_store_rand_instr_stream_2
                  lb           t2, 91(t4)
                  lbu          gp, 146(t4)
                  auipc        ra, 117989
                  lbu          s6, -28(t4)
                  lbu          s5, 109(t4)
                  sw           s11, 241(t4)
                  nop
                  srli         s1, a1, 16
                  lh           s6, 223(t4)
                  sb           t2, 119(t4)
                  or           t1, s2, s4
                  sub          ra, t4, a0
                  lb           a1, 197(t4)
                  lh           s6, 109(t4)
                  sh           s5, 57(t4)
                  lbu          s6, 107(t4)
                  sb           t0, 85(t4)
                  and          sp, s11, s3
                  lbu          s1, 108(t4)
                  xor          s8, s11, t3
                  srl          s0, gp, ra
                  sb           t2, 46(t4)
                  nop
                  ori          gp, t3, -1071
                  srai         t3, s10, 2
                  lhu          a6, 139(t4)
                  lbu          sp, -13(t4)
                  sra          s5, a5, gp
                  sltiu        a4, s2, -1682
                  sltiu        s11, a6, -531
                  sw           t5, 117(t4) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+847 #start riscv_load_store_rand_instr_stream_0
                  lbu          a1, 7(sp)
                  lb           t4, -15(sp)
                  lhu          a4, -11(sp)
                  lb           t5, -2(sp)
                  lw           t0, -3(sp)
                  lhu          gp, 3(sp)
                  sb           ra, 4(sp)
                  sub          s11, s10, s5
                  lbu          tp, -8(sp)
                  lbu          s2, 1(sp)
                  srl          s4, t0, sp
                  srai         a5, a1, 10
                  nop
                  lb           a5, 13(sp)
                  lb           zero, 11(sp)
                  sll          s8, s4, tp
                  sb           tp, -13(sp)
                  lbu          s2, 0(sp)
                  sra          tp, sp, s0
                  srai         s6, t3, 19
                  lhu          t3, 15(sp)
                  and          t0, s6, s0
                  slti         a2, a5, 1981
                  and          s9, t0, tp
                  sltu         s5, t5, t0
                  sltiu        a6, s10, -1551
                  lb           s4, 1(sp)
                  xori         a4, s9, 671
                  sb           s3, -13(sp)
                  sra          s6, sp, t0
                  sb           a4, 9(sp)
                  srai         a5, t2, 26
                  lb           zero, -10(sp)
                  lbu          a4, -6(sp)
                  srli         s11, a6, 14
                  lbu          s9, -6(sp)
                  auipc        s2, 566112
                  sra          t3, a2, t3
                  lbu          gp, -5(sp)
                  lb           a4, 0(sp)
                  lb           t4, -7(sp)
                  lb           s9, 12(sp)
                  slti         a2, s1, 299
                  lb           zero, 14(sp)
                  addi         ra, t5, -1453
                  xor          s4, a0, a0
                  lh           s6, 7(sp)
                  sltu         a1, t4, s2
                  lh           a1, 9(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1702 #start riscv_load_store_rand_instr_stream_1
                  sb           gp, -21(sp)
                  lb           s4, 4(sp)
                  lhu          s4, 26(sp)
                  lui          a1, 908513
                  ori          ra, sp, -663
                  or           zero, tp, s2
                  add          a1, t3, a4
                  sh           a5, 50(sp)
                  sb           s11, -11(sp)
                  lb           a1, -62(sp)
                  lbu          s9, 15(sp)
                  add          t1, t6, s4
                  sh           s7, -8(sp)
                  lbu          s5, -49(sp)
                  lbu          a2, -47(sp)
                  sb           s9, 31(sp)
                  sb           s1, 56(sp)
                  sra          t3, s9, a0
                  andi         t3, sp, 1770
                  slli         tp, a1, 15
                  lbu          s6, 35(sp)
                  and          a5, s10, s3
                  lbu          s11, -3(sp)
                  sltiu        zero, a0, -1660
                  lb           a6, -19(sp)
                  nop
                  lbu          s10, 61(sp)
                  lh           s1, 50(sp)
                  and          gp, zero, t0
                  slli         s7, a1, 5
                  srai         s9, s8, 1
                  lb           s9, 21(sp)
                  lb           a5, -9(sp)
                  or           t3, s3, s2
                  lbu          s6, -63(sp)
                  lbu          s0, -39(sp)
                  lb           a7, -38(sp)
                  slt          a1, t3, t4
                  slli         a4, s5, 15
                  lbu          zero, -43(sp)
                  sra          tp, a7, a1
                  sltu         a4, gp, s10
                  lb           s4, -43(sp)
                  sh           a3, -24(sp) #end riscv_load_store_rand_instr_stream_1
                  add          s11, ra, a2
                  xor          s11, a4, s1
                  and          s7, s11, sp
                  slt          a2, a3, a0
                  srli         t0, gp, 28
                  srl          t2, a5, t2
                  andi         s1, t6, -1447
                  sltiu        sp, s6, -1014
                  srl          s9, s6, tp
                  blt          s11, sp, 11f
                  srl          s10, t3, tp
11:               bne          gp, t4, 27f
                  xor          t5, a4, t0
                  bge          t0, a0, 29f
                  beq          gp, s11, 15f
15:               bne          a7, zero, 18f
                  slti         a1, t5, -326
                  srai         a3, t4, 21
18:               sub          tp, t2, s4
                  blt          a6, zero, 35f
                  andi         s1, a4, 2019
                  xori         a3, a5, 69
                  beq          s1, s5, 26f
                  lui          a7, 699446
                  sll          s2, ra, s3
                  bne          t3, s5, 35f
26:               srli         zero, s2, 22
27:               sub          t4, gp, t6
                  sra          sp, a5, ra
29:               or           s7, gp, t5
                  and          a2, t4, gp
                  bgeu         ra, a1, 36f
                  sltu         s5, a5, a6
                  sub          a4, s2, ra
                  sltiu        zero, t0, -1293
35:               beq          t6, ra, 52f
36:               bgeu         t1, s2, 56f
                  sra          s0, a3, s0
                  sra          a7, a0, t3
                  sll          s1, s10, s1
                  blt          s0, t1, 46f
                  andi         ra, sp, -244
                  srli         gp, a2, 31
                  bne          s2, a1, 45f
                  sra          s0, t6, s9
45:               addi         tp, a2, 1753
46:               bne          s1, t5, 62f
                  slt          gp, s2, t6
                  sub          s1, s3, a7
                  srai         s5, t5, 9
                  bgeu         sp, a6, 66f
                  bge          a7, zero, 67f
52:               sltu         a1, s11, gp
                  sltiu        t2, s0, 996
                  and          s5, t6, gp
                  sltiu        s1, t0, -1915
56:               srl          t0, a1, t1
                  xor          a1, sp, t2
                  nop
                  addi         s8, zero, -1970
                  srl          s2, t3, s5
                  sll          a3, a3, s4
62:               or           s5, s4, a0
                  beq          s6, t0, 70f
                  slt          s11, a7, a1
                  beq          tp, gp, 84f
66:               andi         s0, a2, 262
67:               sll          a7, s8, s11
                  sub          t2, s1, s2
                  xor          a7, a5, a2
70:               addi         s4, a2, -468
                  beq          s1, gp, 77f
                  andi         t0, a4, -816
                  ori          t5, gp, 1873
                  xori         gp, a0, 1603
                  sub          sp, a1, t0
                  slli         a1, s0, 20
77:               srl          a1, t3, t2
                  srl          s10, t0, a2
                  addi         t4, a7, -1934
                  sra          s9, zero, a4
                  add          tp, t5, s11
                  andi         t1, gp, -701
                  auipc        t4, 921998
84:               srli         s2, t6, 13
                  ori          s1, s7, -1571
                  or           s6, s5, a4
                  beq          t6, zero, 89f
                  bltu         s0, t4, 99f
89:               ori          a1, t1, 1758
                  auipc        s4, 587953
                  bltu         t3, a7, 102f
                  srli         t4, t6, 23
                  srl          t1, t0, s7
                  sltu         s5, t0, a5
                  bltu         a0, s11, 99f
                  xori         a4, gp, -1744
                  andi         s10, a0, 1022
                  xor          gp, a2, a0
99:               sltiu        s9, a7, 674
                  add          s2, s3, zero
                  and          t3, s5, t6
102:              bne          s5, a0, 116f
                  slli         s1, s4, 6
                  lui          t0, 580852
                  auipc        zero, 290316
                  xor          t3, s10, s1
                  sltu         a4, gp, a6
                  bne          t4, a6, 124f
                  auipc        s7, 468780
                  blt          a3, a5, 120f
                  slti         a7, s8, -20
                  bne          s6, s9, 116f
                  and          sp, s8, s11
                  sltiu        s0, s10, -1819
                  nop
116:              auipc        a1, 315809
                  sll          ra, s0, a4
                  bgeu         a5, a7, 123f
                  srai         ra, s11, 3
120:              addi         a2, a1, -1545
                  bgeu         s0, a4, 128f
                  nop
123:              xori         ra, s2, -470
124:              srai         t4, s10, 29
                  bltu         s8, a3, 138f
                  bge          a0, s0, 133f
                  sltu         s0, s10, s3
128:              bltu         a6, a7, 144f
                  ori          s11, a1, -979
                  or           tp, t3, a4
                  srai         t2, t3, 24
                  sltu         a5, sp, zero
133:              andi         gp, s9, -721
                  slti         s7, a3, 1964
                  or           s2, sp, a6
                  nop
                  add          s0, a7, t6
138:              slt          a5, t2, sp
                  bne          s4, zero, 149f
                  and          t5, ra, s10
                  blt          s2, t6, 151f
                  nop
                  lui          s4, 614901
144:              sltiu        s2, sp, 2001
                  bne          t5, t2, 149f
                  bltu         sp, t2, 162f
                  or           a6, s8, s1
                  sra          t3, a5, s7
149:              xori         s11, sp, 914
                  xor          a2, t5, t2
151:              add          t3, tp, s7
                  bge          tp, a4, 163f
                  auipc        t4, 952200
                  beq          s1, a5, 174f
                  xori         a3, s5, -1657
                  bgeu         t3, a4, 172f
                  auipc        s8, 215475
                  ori          a2, s6, -1789
                  bge          s2, s4, 163f
                  slt          s7, s6, s11
                  sltiu        t5, gp, -2017
162:              ori          s11, a3, -20
163:              srli         a7, s1, 6
                  add          s11, zero, a5
                  xor          tp, a4, s9
                  blt          s8, s1, 182f
                  bne          t4, a3, 172f
                  xori         tp, a4, -7
                  sltiu        s6, s6, -484
                  andi         a7, s8, -213
                  blt          s8, s11, 188f
172:              andi         s2, t0, 1999
                  sll          a5, s8, s0
174:              blt          s11, gp, 177f
                  beq          t2, a1, 182f
                  xor          a6, a4, t5
177:              addi         s4, a0, -1474
                  beq          s9, s2, 180f
                  slt          a1, gp, gp
180:              andi         s1, s6, -1164
                  addi         gp, s8, 305
182:              sltu         s6, a1, t4
                  slt          t2, s6, a1
                  xori         tp, s0, 380
                  or           a2, t4, t3
                  xor          s2, a6, gp
                  andi         ra, a4, -895
188:              bltu         t1, tp, 192f
                  or           tp, a3, a3
                  srai         t0, s0, 29
                  add          t3, s1, a1
192:              nop
                  sub          gp, a5, s9
                  andi         a6, a3, -745
                  slt          zero, zero, s7
                  xor          a6, s8, a0
                  ori          s11, a6, 468
                  bltu         t6, s6, 203f
                  bge          s3, a3, 205f
                  lui          s4, 214949
                  lui          t0, 929667
                  bne          a6, a2, 218f
203:              nop
                  sltiu        tp, s1, -312
205:              blt          sp, t2, 206f
206:              lui          s5, 866857
                  slli         s9, s11, 3
                  or           a3, a0, a1
                  slli         a7, s3, 6
                  xori         s2, t2, 211
                  sra          s4, s10, s9
                  slt          gp, t5, a1
                  sub          t3, tp, t5
                  addi         a3, tp, 1368
                  nop
                  beq          t1, s9, 232f
                  sltiu        zero, s8, -696
218:              or           zero, a0, ra
                  srli         a2, a1, 23
                  srai         a4, a0, 2
                  xori         s0, s4, -135
                  lui          t1, 133349
                  nop
                  nop
                  slli         s2, t4, 16
                  srli         s7, s5, 1
                  srl          a3, s7, a4
                  srl          s1, zero, a5
                  slti         ra, t5, 989
                  slti         s9, s5, 1397
                  add          a4, ra, gp
232:              slli         s2, t0, 30
                  bltu         s1, s8, 252f
                  sltu         s11, a6, s8
                  bgeu         a2, s6, 241f
                  sltu         a6, t1, a0
                  sra          a5, a2, s6
                  addi         s5, a3, -1766
                  add          t1, s10, t0
                  beq          t4, gp, 242f
241:              blt          s5, a5, 254f
242:              srl          a7, t0, a2
                  and          s0, a7, a6
                  beq          s8, s9, 258f
                  xori         t2, a0, -755
                  sltiu        t4, s0, -739
                  blt          a6, a5, 249f
                  and          a2, a4, s3
249:              slli         t5, s9, 18
                  srai         a4, a5, 0
                  nop
252:              bltu         a6, t1, 263f
                  sll          s10, s1, s2
254:              srai         gp, t3, 3
                  addi         tp, gp, 1228
                  slt          tp, t5, t1
                  add          s7, s9, t5
258:              xori         s6, t5, -1050
                  addi         a4, a0, -1393
                  xori         s10, a3, -750
                  bge          t4, a1, 277f
                  sltiu        s4, a7, 901
263:              and          a5, s7, s11
                  beq          a7, a6, 265f
265:              bgeu         a6, t0, 278f
                  andi         a1, s3, 777
                  sll          s5, a3, t5
                  nop
                  andi         a5, a1, -1864
                  slli         t0, t0, 18
                  and          s0, a3, s8
                  and          s6, t0, zero
                  and          s5, zero, a4
                  and          gp, tp, s6
                  blt          t1, s11, 280f
                  beq          a3, s10, 280f
277:              beq          a6, a6, 279f
278:              beq          a1, s10, 288f
279:              srl          a1, sp, t1
280:              bltu         t1, t3, 297f
                  slli         tp, s8, 17
                  addi         s6, s8, 387
                  bge          s4, a2, 299f
                  lui          t3, 204219
                  addi         s9, s0, -918
                  sll          s0, t6, s8
                  sub          zero, a5, zero
288:              andi         t4, tp, -1099
                  slli         s10, t0, 29
                  sltu         a5, t6, t1
                  slt          tp, a7, s3
                  bne          s11, tp, 303f
                  srai         sp, a6, 8
                  xori         t4, s10, 1272
                  srli         s2, s8, 28
                  sub          t5, s3, s2
297:              sltu         a5, a1, s10
                  srai         s5, a7, 7
299:              auipc        t5, 86403
                  xori         t3, ra, -1432
                  lui          t0, 904439
                  bne          s2, a2, 318f
303:              xori         a3, t4, 456
                  slti         a2, s3, -1366
                  bgeu         s11, zero, 311f
                  ori          s10, t2, -860
                  or           s9, a4, gp
                  ori          s2, s4, 188
                  sltu         s6, s10, a3
                  sltiu        tp, a3, 904
311:              xori         sp, a1, -1589
                  bltu         t1, t2, 322f
                  slt          s4, a4, t5
                  bgeu         t4, a2, 325f
                  sltiu        a6, s10, -1818
                  bne          a7, a4, 322f
                  xori         a3, s6, -307
318:              srl          s11, t0, ra
                  and          s6, s10, t4
                  lui          a4, 450386
                  bge          t4, gp, 340f
322:              bltu         a4, a7, 325f
                  bgeu         a7, a6, 330f
                  sltiu        t0, s9, -835
325:              or           t4, s10, s7
                  auipc        s1, 476993
                  sltu         a5, s5, a3
                  auipc        a5, 997071
                  srai         s2, t4, 6
330:              andi         a6, t1, -1384
                  bgeu         t5, s2, 335f
                  andi         s0, s4, 901
                  lui          ra, 340436
                  sra          t1, t6, s6
335:              bge          t5, s6, 351f
                  bne          t3, gp, 352f
                  xor          s7, s0, s10
                  bge          s9, a1, 340f
                  bgeu         t0, s7, 343f
340:              sltu         s0, a5, a5
                  sltu         a2, t1, s3
                  bltu         a0, a2, 358f
343:              bltu         sp, zero, 363f
                  add          s7, t3, gp
                  and          t1, t2, s1
                  slti         s5, tp, 727
                  add          s1, tp, s2
                  bge          a6, s1, 355f
                  sra          zero, s8, t6
                  srl          s1, a7, s10
351:              slt          sp, ra, a3
352:              add          s10, t6, s8
                  srl          a1, s11, gp
                  srai         t4, ra, 30
355:              srai         s5, s9, 12
                  nop
                  ori          s8, s7, -698
358:              nop
                  and          a7, a3, s2
                  sltu         s1, zero, t4
                  addi         t3, s9, 1668
                  xori         t2, s6, -164
363:              sll          s6, a7, s10
                  sll          s10, a3, t1
                  ori          t2, zero, 1895
                  bge          a6, s6, 368f
                  andi         t4, s2, 282
368:              srl          a5, s9, a7
                  slt          a3, zero, s3
                  srli         zero, t5, 14
                  slli         t1, s0, 26
                  xor          s6, a6, t2
                  lui          s10, 462662
                  blt          t5, s3, 390f
                  slt          sp, t6, a2
                  sltu         s11, s0, s9
                  xor          s4, s0, a4
                  slt          s9, a2, a2
                  or           t5, t3, gp
                  addi         s7, a6, 163
                  slti         t0, t2, -621
                  xori         s2, t2, -1469
                  andi         tp, s6, 698
                  and          a5, a5, s11
                  auipc        s10, 756417
                  or           t5, s1, gp
                  sub          t5, a1, sp
                  slli         tp, sp, 8
                  beq          gp, a3, 405f
390:              bltu         a3, s8, 395f
                  srl          s4, tp, t6
                  auipc        t5, 777411
                  andi         t4, t1, -759
                  srl          s9, t4, a5
395:              slli         s2, a6, 10
                  xori         s4, t0, 156
                  srli         s8, ra, 3
                  add          s4, t1, s10
                  slli         s7, s10, 28
                  bne          sp, s11, 414f
                  xori         s11, t1, 762
                  sltu         a4, s10, s7
                  blt          s11, ra, 409f
                  and          s5, gp, s1
405:              blt          t3, s9, 415f
                  bgeu         t6, s8, 412f
                  bne          t1, s5, 409f
                  sub          ra, a4, s0
409:              slti         s0, s11, 502
                  ori          t0, a7, -1684
                  slli         t4, t6, 26
412:              beq          t0, t6, 428f
                  bgeu         t0, a5, 418f
414:              nop
415:              auipc        tp, 53730
                  add          zero, gp, s1
                  auipc        a7, 266085
418:              blt          a5, s2, 435f
                  sll          sp, s5, zero
                  bne          s3, s8, 427f
                  bltu         zero, s3, 441f
                  bne          s0, a4, 438f
                  and          t1, tp, t1
                  srl          a6, a1, s11
                  slt          s9, s3, t1
                  sub          a6, a3, t6
427:              slti         s6, t1, -170
428:              add          t3, a3, sp
                  sub          s5, t5, sp
                  sll          a5, a5, a5
                  la           t4, region_0+385 #start riscv_load_store_rand_instr_stream_3
                  lb           s6, 28(t4)
                  sub          s4, t5, s6
                  slt          s9, s8, t3
                  lb           a5, -2(t4)
                  sb           s5, 1(t4)
                  sll          a5, a1, s3
                  lbu          s10, 49(t4)
                  lbu          s2, 57(t4)
                  sw           ra, -57(t4)
                  sll          t1, t3, a4
                  sb           a7, -22(t4)
                  lui          s11, 450172
                  slti         gp, a7, -742
                  and          gp, t0, t2
                  lhu          s6, 45(t4)
                  lh           t1, -39(t4)
                  lbu          ra, -56(t4)
                  auipc        s2, 839706
                  add          gp, s11, a4
                  lb           s9, 19(t4)
                  sb           t5, -20(t4)
                  sh           s9, -25(t4)
                  sb           a4, 12(t4)
                  sb           t3, 16(t4)
                  sb           ra, 35(t4)
                  or           a6, a7, a1
                  sb           a3, 1(t4)
                  sb           t0, 46(t4)
                  lbu          s9, -4(t4)
                  sb           a4, 20(t4)
                  lb           t1, -21(t4)
                  lbu          s7, 58(t4) #end riscv_load_store_rand_instr_stream_3
                  add          s8, a2, s1
                  sra          s5, s6, s8
                  andi         a1, t0, 28
                  slli         s4, t0, 27
435:              slt          a3, s3, t0
                  addi         t2, zero, 763
                  addi         a1, t6, 46
438:              srli         a3, t6, 2
                  slti         a3, s11, 349
                  sll          zero, s8, a6
441:              blt          a0, t0, 445f
                  bltu         s9, t2, 453f
                  beq          a6, s4, 446f
                  slt          s1, sp, a4
445:              sltu         t4, ra, t3
446:              sra          s0, s6, a7
                  bltu         a3, a5, 463f
                  xori         sp, sp, -246
                  slt          a5, s10, zero
                  srli         t3, sp, 7
                  sra          t2, s0, s6
                  nop
453:              sra          t4, s1, a6
                  ori          a1, t4, -110
                  srli         a3, a0, 17
                  nop
                  sltu         a7, s8, a5
                  srl          t2, s4, t4
                  slli         s6, s2, 28
                  slt          s2, s4, t2
                  add          s2, s1, t5
                  bne          s2, s11, 478f
463:              sltu         zero, a2, a3
                  andi         a6, t1, -1768
                  addi         a7, a0, -514
                  bne          t3, t2, 477f
                  ori          sp, s8, -1790
                  add          a2, gp, s3
                  sll          s4, t1, s3
                  xor          s11, s7, s11
                  or           s0, ra, s0
                  slti         sp, a0, 1487
                  bgeu         gp, s10, 489f
                  beq          a6, s1, 484f
                  and          zero, t6, a7
                  sltu         t2, a7, s4
477:              and          gp, a3, s0
478:              addi         t1, t4, -1255
                  bgeu         s4, s11, 495f
                  addi         ra, s1, 1394
                  srl          t5, a4, a1
                  ori          s10, s0, -914
                  bge          s6, t0, 487f
484:              lui          zero, 1013587
                  sll          a2, a1, s10
                  blt          a7, t6, 502f
487:              slt          s5, tp, s6
                  bge          t2, t3, 502f
489:              lui          t3, 464546
                  lui          s2, 35640
                  blt          s2, t3, 496f
                  add          t5, s1, s1
                  srai         s6, a0, 8
                  beq          a2, t5, 507f
495:              auipc        s6, 11276
496:              beq          t2, t2, 498f
                  bge          a5, t3, 504f
498:              bge          a6, a0, 502f
                  blt          ra, t1, 518f
                  bne          s6, tp, 502f
                  ori          a6, s6, -1817
502:              lui          t5, 398293
                  sltu         s4, s7, a4
504:              andi         a4, s0, 1173
                  srli         t1, t1, 30
                  sltu         sp, zero, s3
507:              bgeu         tp, t6, 508f
508:              xori         s6, s3, 1117
                  bgeu         zero, t4, 520f
                  slti         s11, s4, 1967
                  or           s7, a6, s11
                  and          t2, gp, t3
                  and          s6, t1, t3
                  slt          a2, s8, s8
                  bge          zero, a5, 520f
                  and          a1, a5, a0
                  slti         s5, t4, 1550
518:              and          t1, a0, s3
                  sra          t4, s7, a3
520:              sll          a2, a3, t1
                  srli         s11, t3, 13
                  lw           s0, 4(s3)
                  slt          sp, a6, t6
                  addi         s5, a1, -1518
                  lui          t5, 170203
                  sll          s4, a5, t6
                  sltiu        t4, t6, -1660
                  slli         s8, s4, 4
                  lui          t1, 733602
                  xori         sp, s4, -162
                  addi         s3, s3, 32
                  sll          s1, s7, tp
704:              addi x18, x8, 1
704:              jalr x18, x18, 0
sub_3:            addi         s3, s3, -8
                  ori          t5, s5, -1124
                  add          gp, ra, s0
                  sw           s0, 4(s3)
                  xori         s11, zero, 903
                  sltiu        tp, s4, 558
                  slti         t2, a1, -878
                  nop
                  slti         s7, t4, 1765
                  or           t1, a3, ra
                  blt          a1, s6, sub_3_j6 #branch to jump instr
                  and          a6, t6, a4
                  sll          a2, t3, t0
sub_3_j6:         jal          s0, sub_5 #jump sub_3 -> sub_5
                  la           ra, sub_4
                  or           a4, s11, s0
                  and          t2, t4, s8
                  and          s6, t0, t0
                  addi         ra, ra, -98
                  sll          gp, a3, s7
                  addi         a6, s2, -370
                  sub          t5, s10, a3
                  bgeu         t4, s4, sub_3_j7 #branch to jump instr
                  addi         s10, t1, -1402
                  srl          t0, s1, s10
                  sub          s7, s7, a5
                  xor          t0, a0, a1
sub_3_j7:         jalr         s0, ra, 99 #jump sub_3 -> sub_4
                  bltu         s9, a7, 13f
                  srai         a7, ra, 12
                  srli         s5, t5, 9
                  bne          a6, s1, 16f
                  slti         a1, t0, 1321
                  bltu         s5, zero, 24f
                  beq          s10, s3, 19f
                  addi         s4, t1, 894
                  sll          a3, a4, a1
                  slli         sp, a1, 31
                  sltiu        gp, s6, 18
                  xori         sp, t6, 1994
                  srai         s0, s3, 13
13:               add          s1, a3, t1
                  bge          tp, ra, 30f
                  auipc        t2, 1002234
16:               add          s7, s7, s10
                  beq          s9, t2, 30f
                  srl          s11, t2, t1
19:               lui          t4, 869004
                  sltiu        gp, t4, -29
                  sub          a6, sp, a7
                  slti         a2, s3, 1444
                  bne          s9, zero, 35f
24:               xor          t3, t4, t4
                  or           t5, a6, s7
                  or           s4, s8, a3
                  srai         s11, s8, 12
                  add          t5, s7, sp
                  sltu         tp, a2, t4
30:               slli         t5, s5, 28
                  slt          a5, gp, a6
                  sltiu        gp, s4, -1850
                  nop
                  xori         t0, a3, 68
35:               xor          t0, a3, s0
                  addi         t4, s11, 510
                  auipc        a4, 530254
                  srli         s1, s1, 17
                  and          s9, s6, s11
                  xori         s8, s3, -1483
                  srai         s2, zero, 1
                  lui          a6, 418117
                  slti         s4, tp, 962
                  lui          s9, 279897
                  lui          s0, 57311
                  or           s2, t1, t2
                  srai         sp, t1, 2
                  sra          gp, a2, s4
                  slt          s11, zero, a7
                  andi         tp, a5, 319
                  slt          a1, s0, gp
                  slt          s10, tp, a7
                  sltiu        a6, s11, 673
                  bge          t5, s6, 73f
                  bltu         gp, s5, 66f
                  and          s2, tp, a4
                  ori          a2, s1, -1899
                  srl          t1, s4, sp
                  bltu         s6, t1, 62f
                  bne          a7, t5, 79f
                  or           s2, t0, t4
62:               addi         a4, zero, -1903
                  srli         a3, t1, 17
                  slli         s9, s5, 24
                  or           t1, a2, t2
66:               auipc        t5, 436965
                  andi         s1, s8, 1873
                  bge          s9, a1, 83f
                  blt          s3, s3, 81f
                  add          gp, a3, gp
                  slti         t4, a1, 390
                  nop
73:               sll          a1, a1, s2
                  add          a5, a2, t0
                  xor          s8, sp, t3
                  bge          a5, s4, 95f
                  bltu         t3, t0, 94f
                  xori         a4, s5, 1493
79:               slli         a4, t6, 1
                  lui          t0, 1005202
81:               nop
                  bne          a3, a3, 91f
83:               srli         s6, zero, 2
                  bge          t4, t1, 96f
                  beq          ra, s0, 93f
                  slt          tp, s7, t4
                  bne          a1, a0, 89f
                  sltiu        tp, ra, 552
89:               auipc        a5, 846899
                  sltiu        t2, s11, 1289
91:               bne          t3, a6, 93f
                  srli         s6, s4, 2
93:               srli         a1, s4, 16
94:               bge          s5, t5, 112f
95:               bltu         a7, a2, 113f
96:               sltiu        a2, s5, -1929
                  addi         s5, s5, 1933
                  bltu         a7, a3, 109f
                  xori         a7, a4, 294
                  slli         a7, a0, 30
                  bne          a5, t6, 114f
                  beq          t6, s2, 104f
                  bge          a2, s8, 108f
104:              addi         s11, t0, 1713
                  srl          t5, a5, a6
                  auipc        s4, 651887
                  nop
108:              sub          s11, s9, s2
109:              bltu         t6, a4, 122f
                  bne          a4, a1, 122f
                  srai         tp, a5, 31
112:              sltiu        s6, a1, -1883
113:              srl          gp, s6, t6
114:              bge          t4, s5, 119f
                  sra          t2, s1, s8
                  ori          s9, s7, 518
                  slti         s11, a0, -234
                  sltu         a6, a0, t0
119:              blt          a7, zero, 122f
                  sltu         t1, zero, gp
                  slli         gp, a6, 29
122:              srai         a3, s10, 30
                  sub          s1, s5, s8
                  srl          s2, a2, a5
                  slt          t4, a0, t6
                  ori          a3, s3, 431
                  or           s1, gp, a1
                  xor          s9, s11, ra
                  nop
                  sll          t0, s2, t3
                  lw           s0, 4(s3)
                  addi         s3, s3, 8
                  andi         s4, ra, -1191
162:              addi x16, x8, 1
162:              jalr x16, x16, 0
sub_2:            addi         s3, s3, -28
                  slli         t2, s3, 4
                  ori          s6, ra, 1088
                  sw           s0, 4(s3)
                  and          a2, ra, s9
                  srli         tp, ra, 12
                  addi         a6, s8, 1633
                  sra          sp, s5, t5
                  auipc        a6, 1019193
                  slt          a7, s7, s10
                  addi         t5, sp, -1211
                  la           sp, region_1+1014 #start riscv_load_store_rand_instr_stream_0
                  sb           zero, -659(sp)
                  lui          s1, 730663
                  sh           s8, -296(sp)
                  sub          a4, t4, ra
                  lbu          t4, 307(sp)
                  sltu         s4, a4, a0
                  sb           a3, -895(sp)
                  lh           a1, 856(sp)
                  slli         s9, a6, 2
                  lw           ra, 342(sp)
                  lh           ra, 922(sp)
                  lb           t4, -345(sp)
                  sll          gp, s8, s5
                  sh           s2, -958(sp)
                  sra          ra, s2, t0
                  srai         s6, t4, 8
                  lhu          t4, -652(sp)
                  sb           a1, -143(sp)
                  lb           a1, 671(sp)
                  sltiu        s2, a5, 1099
                  sll          ra, s4, s1
                  xori         s2, a1, -310
                  lh           s4, -430(sp)
                  lh           a5, 804(sp)
                  lbu          s5, -233(sp)
                  lbu          gp, -854(sp)
                  xori         a1, sp, 1825
                  sb           t2, 971(sp)
                  lhu          s2, 754(sp)
                  lb           t4, 551(sp)
                  lbu          tp, -967(sp)
                  sb           a3, 160(sp) #end riscv_load_store_rand_instr_stream_0
                  blt          t1, a6, 13f
                  lui          sp, 17240
                  nop
                  and          a7, zero, s4
                  xor          zero, t3, t0
                  slti         a2, s7, -1819
                  nop
                  beq          s4, t5, 20f
                  slti         s8, s2, -260
                  and          t1, a3, t4
                  ori          t0, a6, -759
                  sltiu        s0, t6, 755
                  sub          t4, s7, a7
13:               srl          s4, a5, a1
                  and          ra, a1, t6
                  slt          s6, ra, s7
                  addi         s1, a1, -1859
                  blt          a1, s8, 24f
                  andi         ra, s7, 76
                  lui          a6, 756552
20:               lui          s0, 508717
                  srai         a7, a0, 12
                  srli         a6, t4, 28
                  sltu         a4, t1, a5
24:               nop
                  add          s11, t5, a2
                  srai         t1, s6, 21
                  srl          tp, sp, t6
                  srli         ra, a3, 26
                  slti         s7, t2, -372
                  auipc        a4, 900445
                  bne          a4, t0, 43f
                  bltu         a4, zero, 43f
                  bge          a3, s4, 44f
                  sltiu        zero, a6, 866
                  sll          a2, a3, a1
                  bltu         s4, s9, 37f
37:               bne          a1, s7, 39f
                  xori         s8, a4, -1879
39:               bge          s10, a2, 51f
                  srl          s4, a7, s8
                  nop
                  andi         t3, a1, 907
                  blt          s4, sp, sub_2_j5 #branch to jump instr
                  srli         s0, s4, 13
                  nop
                  slt          s10, a6, s8
sub_2_j5:         jal          s0, sub_5 #jump sub_2 -> sub_5
                  bgeu         t0, ra, 44f
                  nop
43:               auipc        t2, 138457
44:               srli         s8, gp, 24
                  addi         zero, s7, 982
                  srai         t1, s10, 24
                  sra          a4, t6, sp
                  nop
                  bne          s9, s6, 63f
                  sltu         a7, t3, s6
51:               or           a6, s0, t1
                  sra          a3, a2, a1
                  nop
                  nop
                  sltiu        ra, a3, 1825
                  srai         gp, a1, 24
                  xor          s2, s6, s5
                  bne          a0, a1, 73f
                  sltu         s11, s3, t3
                  bgeu         a7, s7, 63f
                  slt          gp, ra, s7
                  sll          a5, a5, s1
63:               or           ra, s1, tp
                  sltu         s9, a4, zero
                  auipc        a5, 737666
                  xori         s5, a1, -291
                  add          t1, a2, a2
                  beq          t2, a2, 73f
                  bgeu         t5, t2, 81f
                  sll          t4, s9, s3
                  sub          s8, s11, t6
                  auipc        t4, 795515
73:               blt          a2, sp, 84f
                  sub          t0, a4, a0
                  bgeu         a0, t0, 82f
                  xor          zero, t1, s5
                  sltiu        a7, a0, 1249
                  auipc        t5, 595646
                  sra          zero, t2, a3
                  sll          t5, s10, a5
81:               xori         ra, t1, -876
82:               nop
                  slti         t0, gp, -1785
84:               slli         s2, a7, 29
                  srli         ra, t1, 9
                  sra          s7, s2, s4
                  nop
                  beq          t2, sp, 96f
                  sltiu        zero, t0, -1826
                  nop
                  nop
                  sll          s11, s8, s9
                  bne          ra, s4, 105f
                  bne          s10, a7, 102f
                  slti         s9, a5, -1398
96:               slti         a3, s1, -194
                  bgeu         t6, s0, 112f
                  bge          a3, gp, 99f
99:               slt          a1, s4, a0
                  sltiu        s6, s7, -1392
                  srl          a6, tp, s2
102:              blt          s4, s1, 120f
                  beq          s5, tp, 106f
                  slt          tp, s1, a0
105:              sub          s6, s8, t4
106:              xor          zero, a1, s3
                  or           s11, t2, s11
                  lui          gp, 473952
                  slt          gp, a1, a3
                  sltiu        s11, sp, 1225
                  and          s9, s1, s8
112:              or           t5, s7, s1
                  xori         a1, a1, 851
                  or           sp, t0, t4
                  srli         t2, a7, 3
                  nop
                  sll          s11, a3, sp
                  nop
                  slli         t5, s10, 18
120:              beq          s6, ra, 133f
                  bge          s5, s11, 138f
                  addi         t3, s6, 858
                  andi         s4, t1, 1066
                  nop
                  slli         s4, s9, 15
                  bne          sp, a7, 143f
                  srl          s2, s4, a2
                  slt          sp, a1, t2
                  bge          a2, s2, 137f
                  auipc        a5, 140754
                  andi         t2, a4, -341
                  lui          gp, 409119
133:              sra          t4, sp, sp
                  lui          s7, 71133
                  sltiu        gp, a2, 260
                  auipc        t4, 1037158
137:              srl          s5, t5, gp
138:              slli         a6, s1, 11
                  slti         a3, s4, 648
                  sub          s8, a5, zero
                  xor          s4, gp, a5
                  nop
143:              xori         s5, a6, -952
                  sltiu        zero, s7, -1437
                  ori          a5, t6, 671
                  ori          a5, tp, 468
                  or           s6, s5, s6
                  xori         s6, a1, -269
                  srl          t1, a1, a4
                  slli         a6, t0, 0
                  xori         gp, s11, 1704
                  ori          s10, s9, 474
                  auipc        a3, 71994
                  add          sp, s4, s2
                  bne          s11, t5, 170f
                  bge          s0, t1, 158f
                  andi         t0, a1, 797
158:              sub          s9, a4, s3
                  add          s9, t4, a5
                  lui          zero, 766347
                  bltu         s7, s3, 169f
                  slti         s10, s8, -564
                  beq          ra, t4, 180f
                  bltu         s6, s3, 176f
                  srli         t4, s7, 16
                  bge          t4, t6, 173f
                  nop
                  srai         a1, s11, 0
169:              ori          a6, s9, -1767
170:              srli         sp, s7, 14
                  slt          t2, s7, sp
                  beq          s8, a2, 185f
173:              srl          a1, a5, s2
                  bgeu         zero, t4, 185f
                  slli         s6, t2, 15
176:              add          s11, t2, s7
                  or           tp, s2, a6
                  sltiu        s6, gp, -1863
                  sll          s11, s10, s9
180:              andi         s0, a7, -1309
                  slli         a7, s3, 1
                  bltu         t4, sp, 185f
                  bgeu         a3, t6, 195f
                  sub          tp, s10, t0
185:              lui          s7, 444214
                  slti         t0, t3, 428
                  srli         s8, s4, 0
                  blt          t1, a1, 203f
                  slti         a7, s8, -182
                  bge          gp, s9, 204f
                  sltiu        gp, t4, -351
                  ori          gp, t0, -930
                  lui          a6, 720843
                  sll          s11, a3, tp
195:              bne          tp, s2, 204f
                  blt          s0, a2, 204f
                  or           s8, t3, t4
                  sll          a4, a3, t1
                  lui          a6, 575530
                  or           tp, a4, a1
                  sub          s4, a3, t2
                  sltiu        a1, s1, 782
203:              bne          s3, tp, 204f
204:              addi         s0, a1, -373
                  slti         s4, zero, 1990
                  lw           s0, 4(s3)
                  or           t1, t3, s6
                  and          t4, gp, s2
                  sra          s2, a4, a7
                  sub          a6, t5, a1
                  addi         s3, s3, 28
                  and          s5, t1, s7
                  sra          s7, t5, t0
                  srl          a5, a3, a2
266:              addi x24, x8, 0
266:              jalr x24, x24, 0
sub_8:            xor          s6, s9, a1
                  add          a2, t4, a4
                  ori          ra, zero, 1968
                  sub          t5, a7, t5
                  addi         s3, s3, -64
                  slli         s9, a1, 22
                  and          tp, s4, ra
                  sltu         s10, a2, s6
                  addi         a5, s0, 1863
                  sw           s0, 4(s3)
                  andi         t5, t2, 821
                  or           t5, s6, s9
                  sra          tp, s3, ra
                  sub          t5, t1, t1
                  srl          ra, a0, t0
                  bgeu         s3, t4, 9f
                  auipc        s7, 330568
                  lui          t3, 534528
                  xori         t4, sp, 39
                  bltu         sp, s1, 9f
                  xori         s6, t4, -619
9:                ori          t4, s0, 1558
                  lw           s0, 4(s3)
                  auipc        s9, 6836
                  slti         a3, t3, 81
                  addi         s3, s3, 64
                  xori         a3, a3, -424
                  ori          s2, a1, 1297
                  sra          s10, a6, s0
29:               addi x15, x8, 0
29:               jalr x15, x15, 0
sub_9:            srli         a2, gp, 12
                  bltu         s11, t5, sub_9_stack_p
                  srl          s1, gp, zero
sub_9_stack_p:    addi         s3, s3, -56
                  srli         s6, zero, 31
                  sw           s0, 4(s3)
                  auipc        s11, 646660
                  srl          t0, s0, a0
                  lui          t5, 95882
                  addi         s0, ra, 1406
                  and          a5, s0, s6
                  addi         gp, ra, 913
                  sltiu        a1, t3, 898
                  bgeu         s6, s5, sub_9_j13 #branch to jump instr
                  nop
                  xori         t0, a6, 1371
                  slt          s1, s3, s8
                  sltu         s9, s7, s5
sub_9_j13:        jal          s0, sub_10 #jump sub_9 -> sub_10
                  xori         t4, s1, 1161
                  slli         tp, sp, 4
                  sltu         t0, a1, a3
                  xor          s6, a7, a0
                  and          zero, t4, s10
                  srl          t0, s9, s11
                  sll          gp, s0, s9
                  sra          s6, s3, s6
sub_9_j14:        jal          s0, sub_10 #jump sub_9 -> sub_10
                  xori         a2, s1, 846
                  sra          s5, t6, s0
                  ori          t4, s9, 1909
                  bgeu         a6, zero, 6f
                  bltu         a3, s9, 16f
                  addi         s0, s7, -42
6:                bgeu         a6, s5, 17f
                  xor          s9, a6, t3
                  andi         s5, s9, 1151
                  xori         zero, s6, 1920
                  srai         s0, sp, 19
                  beq          a7, t1, 12f
12:               sltiu        s0, t6, 1743
                  sltiu        s7, a1, 478
                  slt          s10, a2, a6
                  xor          a5, ra, sp
16:               xori         s7, s8, 1936
17:               add          s0, t3, a5
                  sra          s6, a5, s2
                  slt          s2, s8, s11
                  bne          a4, a6, 31f
                  bne          sp, s7, 23f
                  srai         a3, zero, 30
23:               bne          sp, a7, 32f
                  nop
                  slti         s7, s3, 1817
                  sltiu        s7, t5, 1777
                  add          s1, s0, t6
                  bltu         t3, t5, 32f
                  sub          s1, s0, tp
                  slt          s2, s1, t1
31:               sub          a7, a0, a7
32:               ori          a2, t3, 403
                  sub          tp, s4, sp
                  srli         a6, s11, 23
                  slt          t1, a1, t1
                  lw           s0, 4(s3)
                  srli         a3, t1, 14
                  sltiu        tp, s9, 1608
                  addi         s3, s3, 56
                  andi         s5, a2, -900
69:               addi x3, x8, 1
69:               jalr x3, x3, 0
sub_10:           addi         a2, zero, 1323
                  bge          s1, s1, sub_10_stack_p
sub_10_stack_p:   addi         s3, s3, -24
                  and          a6, a2, s2
                  sw           s0, 4(s3)
                  sra          t1, a3, a7
                  lui          t3, 53697
                  slt          a6, s9, s7
                  slli         s6, s0, 8
                  sltiu        s8, gp, -621
                  auipc        s1, 868968
                  slli         t2, s7, 31
                  lui          a5, 344037
                  slti         s1, zero, -113
                  xor          t2, s7, s2
                  bgeu         s0, sp, 14f
                  auipc        t1, 166037
                  addi         a4, t0, -707
                  blt          s6, a6, 9f
                  srl          a3, t5, t3
                  srai         zero, t1, 7
                  addi         a6, s0, -806
9:                bgeu         a5, a7, 10f
10:               bltu         t3, s0, 24f
                  bgeu         s8, s7, 19f
                  lui          a6, 134119
                  sltu         t3, gp, t2
14:               blt          a6, s2, 24f
                  ori          sp, t1, 1871
                  and          s6, s7, s1
                  slti         s1, t4, 661
                  beq          s8, s11, 24f
19:               ori          a6, s5, 931
                  bgeu         t2, s2, 24f
                  sltiu        a4, a2, -139
                  srai         t2, tp, 9
                  bltu         s5, s2, 24f
24:               add          a5, t5, tp
                  or           zero, s0, s5
                  slti         t0, a6, -286
                  srai         t5, s9, 22
                  lw           s0, 4(s3)
                  xori         gp, t4, 2030
                  slt          a6, a4, s1
                  lui          s6, 371669
                  or           t2, s11, s9
                  addi         s1, s11, 491
                  addi         s3, s3, 24
                  sub          gp, s2, s0
                  andi         t3, s4, 1585
50:               addi x18, x8, 1
50:               jalr x18, x18, 0
sub_1:            andi         t0, t5, -1024
                  bgeu         tp, gp, sub_1_stack_p
                  lui          t5, 857841
                  auipc        sp, 629672
sub_1_stack_p:    addi         s3, s3, -8
                  sw           s0, 4(s3)
                  xori         sp, sp, 1369
                  andi         s11, t0, 444
                  slli         zero, t6, 9
                  andi         tp, s8, 1579
                  beq          t6, gp, 4f
4:                sll          t1, a7, sp
                  blt          s7, a1, 7f
                  bne          tp, s4, 16f
7:                slti         a1, s2, 554
                  srl          gp, a6, s6
                  addi         sp, a3, 1294
                  blt          s10, t3, 14f
                  sll          s6, a0, ra
                  nop
                  sra          s7, t1, a1
14:               bne          a4, s4, 16f
                  blt          a5, a1, 16f
16:               auipc        tp, 496249
                  lui          a6, 489095
                  sltu         t3, s1, s11
                  sltu         s9, a4, a0
                  add          t5, gp, zero
                  lw           s0, 4(s3)
                  addi         s3, s3, 8
                  add          s4, s10, t3
                  sra          a2, zero, s7
                  addi         s8, s4, -914
                  auipc        s11, 135510
34:               addi x29, x8, 0
34:               jalr x29, x29, 0
sub_7:            andi         t5, s7, -1442
                  bltu         s11, t0, sub_7_stack_p
                  slt          t0, zero, a6
                  and          a6, a4, tp
                  srai         tp, a6, 18
                  srl          s2, s1, s11
                  srl          sp, a1, t1
sub_7_stack_p:    addi         s3, s3, -64
                  slli         a6, a5, 23
                  or           s6, a3, s1
                  nop
                  sw           s0, 4(s3)
                  ori          t0, a0, 1561
                  la           s6, region_1+1011 #start riscv_load_store_rand_instr_stream_2
                  lb           t2, 564(s6)
                  lw           s1, -87(s6)
                  addi         zero, s5, -551
                  lh           a5, 587(s6)
                  lbu          t5, 856(s6)
                  sb           t3, -88(s6)
                  sb           s2, -200(s6)
                  lbu          a1, 902(s6)
                  lb           zero, -169(s6)
                  or           s11, gp, t6
                  xori         sp, s10, -1546
                  ori          sp, s4, 766
                  lbu          t5, -856(s6)
                  lw           tp, 181(s6)
                  xori         s7, t1, -171
                  lbu          tp, -337(s6)
                  and          a2, a2, s6
                  auipc        s8, 928192
                  lb           s11, 117(s6)
                  sb           t1, 834(s6)
                  sltu         a1, zero, s3
                  lh           zero, -203(s6)
                  auipc        s10, 958849
                  lb           s1, -235(s6)
                  auipc        s9, 48157
                  lb           s4, -624(s6)
                  lh           s11, -933(s6)
                  sb           a2, 206(s6)
                  lbu          a1, 129(s6)
                  andi         a5, s0, -294
                  slt          t2, t2, t5
                  sltiu        zero, s1, -384
                  andi         s2, s5, -749
                  nop
                  lbu          a4, -598(s6)
                  sb           a3, -530(s6) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_0+1064 #start riscv_load_store_rand_instr_stream_0
                  sub          ra, tp, sp
                  auipc        s4, 735474
                  sltiu        t4, t4, 1653
                  lb           s5, 14(s9)
                  srai         ra, s7, 23
                  sb           zero, -9(s9)
                  lbu          tp, 6(s9)
                  sb           t2, 15(s9)
                  sh           tp, 0(s9)
                  sltu         t5, t4, s7
                  sltu         t1, zero, t6
                  lbu          s2, -7(s9)
                  srl          s5, t6, t2
                  slt          t1, a4, t4
                  sh           gp, -10(s9)
                  sra          s4, t0, sp
                  lb           s0, -9(s9)
                  slti         s5, t3, 174
                  sh           t5, 4(s9)
                  lh           tp, 8(s9)
                  nop
                  sh           s8, 0(s9)
                  sh           t3, -14(s9)
                  and          sp, a4, a2
                  srl          a1, sp, s11
                  lbu          a1, 15(s9)
                  or           a5, s3, s6
                  sb           a0, 3(s9)
                  lbu          tp, -12(s9)
                  sb           s3, -3(s9)
                  lhu          s7, 0(s9)
                  sb           a3, 5(s9)
                  sll          s2, a2, s1
                  lb           t1, -13(s9)
                  lb           a4, 14(s9)
                  sb           s9, 4(s9)
                  sltiu        s10, s3, -501
                  sltiu        gp, s4, -664
                  sra          s0, a2, a6
                  lb           s10, 1(s9) #end riscv_load_store_rand_instr_stream_0
                  srli         s8, s1, 17
                  srli         s1, gp, 21
                  lui          t5, 1013227
                  bltu         s5, s8, 21f
                  addi         a4, t5, 157
                  sub          t5, t2, s3
                  sltiu        s5, s2, 1957
                  srl          s2, s10, s7
                  xori         s5, t1, 1409
                  nop
                  sltiu        t3, s5, 147
                  bne          a0, t4, 14f
                  beq          s2, t5, 20f
                  and          a7, gp, tp
14:               srli         s1, t5, 3
                  add          a7, t1, a2
                  srai         s11, zero, 12
                  xori         s7, s1, -2030
                  lui          ra, 1028554
                  srli         a5, t3, 29
20:               nop
21:               bge          t3, s1, 32f
                  sltiu        t4, tp, -925
                  xor          s2, a0, s8
                  sltiu        a5, a2, 364
                  srai         s6, s2, 6
                  andi         sp, s6, 543
                  beq          t0, s7, 43f
                  bne          a6, a7, 30f
                  sub          a3, ra, t3
30:               slli         t1, t4, 5
                  bltu         t4, ra, 40f
32:               sra          a3, a7, t6
                  sltiu        s9, s7, -776
                  sra          a1, t6, s1
                  slti         t0, s11, -1413
                  slli         t2, s8, 13
                  beq          t1, t4, 49f
                  sub          a4, s10, s4
                  auipc        zero, 195504
40:               xor          a5, t0, ra
                  beq          t5, s8, 46f
                  sltiu        t4, sp, -971
43:               bne          a7, a6, 49f
                  auipc        t4, 935894
                  srli         t1, a0, 22
46:               bne          ra, t3, 54f
                  xori         t4, s0, -534
                  srl          tp, t1, t6
49:               slti         t3, a7, -1936
                  slt          s0, a3, a4
                  xor          s4, t0, s6
                  srai         s11, a3, 29
                  sll          s10, a7, gp
54:               and          gp, t0, s8
                  slli         s4, t0, 14
                  srai         a5, s0, 4
                  xor          a2, s9, sp
                  slli         a4, s6, 29
                  srai         s1, s4, 4
                  sub          a4, a0, s1
                  xori         s11, s4, -1520
                  lui          s10, 980609
                  auipc        tp, 1025792
                  and          t1, s10, s6
                  or           s1, t6, s2
                  bltu         tp, s3, 71f
                  bltu         s7, a5, 73f
                  xori         s10, s6, -803
                  slti         s10, t0, 1357
                  or           t3, s1, t3
71:               nop
                  slli         t2, t3, 31
73:               xori         a3, s6, -816
                  sra          a1, s3, a4
                  bltu         t0, a4, 81f
                  andi         s2, a6, 1114
                  blt          s0, s9, 80f
                  srai         s7, tp, 10
                  sub          s6, a4, gp
80:               xori         a5, s0, 1137
81:               bne          s10, s6, 100f
                  sub          t3, tp, s10
                  srli         sp, t1, 7
                  xori         s6, a7, -1601
                  or           a4, t1, a5
                  bge          t4, ra, 104f
                  xor          t0, tp, t3
                  nop
                  bne          a4, s3, 100f
                  xor          a4, a3, t5
                  slli         s9, zero, 15
                  sra          s0, tp, t4
                  srai         s11, t0, 20
                  andi         t1, gp, 2042
                  sra          a4, ra, s2
                  sra          s0, a3, t3
                  sub          a3, a2, t6
                  add          zero, ra, t6
                  srai         t1, s8, 27
100:              sub          a3, a3, t1
                  or           s8, s7, t2
                  sll          s6, t6, gp
                  bne          t4, a4, 104f
104:              auipc        a2, 98622
                  slti         zero, s5, -1839
                  bgeu         t1, t4, 115f
                  nop
                  bltu         s10, ra, 124f
                  xor          s0, t2, a1
                  srai         tp, a7, 10
                  sltu         t2, t2, s7
                  sra          s2, s3, a6
                  nop
                  xor          zero, s2, s6
115:              or           s2, sp, a3
                  bgeu         a0, a7, 118f
                  sltu         s7, a4, gp
118:              slt          t5, s2, a3
                  ori          a4, t1, -624
                  slli         a6, s6, 24
                  slt          s1, s1, s2
                  beq          s0, s5, 128f
                  bne          a6, gp, 124f
124:              srli         a3, s10, 27
                  srl          a7, gp, t5
                  lui          a5, 625106
                  sll          a7, s1, s8
128:              bne          s8, s5, 137f
                  blt          a3, s6, 140f
                  lui          t3, 521174
                  xor          s8, s3, t4
                  nop
                  srli         a7, s1, 12
                  slli         a3, a1, 22
                  xor          s7, s3, s10
                  xori         s4, s6, 1340
137:              beq          zero, a6, 141f
                  sltiu        t4, s2, 1514
                  or           a5, t6, a0
140:              sub          a4, t5, a1
141:              srli         a2, t1, 27
                  xor          s8, a5, zero
                  or           a7, s7, t4
                  sltu         ra, t0, s0
                  addi         s9, s2, -1328
                  beq          sp, a7, 158f
                  lui          a2, 883433
                  slli         tp, a2, 15
                  sra          t0, a0, a5
                  sltu         s2, s3, zero
                  srai         zero, a5, 24
                  addi         s10, ra, -1176
                  lui          sp, 557638
                  add          s8, t6, a2
                  sltiu        gp, t1, -917
                  ori          s5, t1, -674
                  slti         a2, t3, -1555
158:              sltu         zero, gp, tp
                  blt          t2, t5, 163f
                  lui          sp, 712168
                  addi         s6, s3, -1381
                  bge          a0, a6, 166f
163:              andi         a5, t0, 1611
                  ori          s0, t3, 603
                  nop
                  slt          a6, a5, s6
                  or           s9, a6, ra
                  addi         s7, sp, -1775
                  bgeu         t6, ra, sub_7_j12 #branch to jump instr
                  lui          s8, 580518
                  ori          s6, s3, -104
                  and          s9, a1, a0
                  sltu         ra, s0, tp
sub_7_j12:        jal          s0, sub_9 #jump sub_7 -> sub_9
                  blt          s10, s0, 177f
166:              ori          s7, s8, -1302
                  slli         s7, t1, 16
                  sub          gp, s1, a4
                  ori          t0, a3, -1277
                  blt          a1, a4, 174f
                  beq          t1, t3, 182f
                  bgeu         s8, s11, 184f
                  bge          t5, zero, 182f
174:              or           t3, s11, sp
                  slti         gp, s7, 188
                  slt          s2, a7, a0
177:              andi         s2, t6, -188
                  andi         t4, s3, -993
                  bltu         t4, sp, 180f
180:              slti         a2, a6, -1105
                  sll          a4, t3, s9
182:              slli         zero, zero, 18
                  xori         a3, gp, 686
184:              srli         t5, a3, 19
                  slt          a4, s9, tp
                  and          a4, t6, a4
                  ori          s5, s7, 1924
                  slti         s8, tp, 328
                  and          s10, s1, s0
                  sltiu        a7, t1, 916
                  sll          s7, s2, t2
                  bge          s1, a1, 197f
                  sra          s10, t6, a3
                  sub          s2, a4, a5
                  bltu         s9, s5, 206f
                  blt          gp, s7, 204f
197:              srli         sp, a3, 29
                  bne          ra, s8, 207f
                  xor          s5, s5, t6
                  addi         s6, gp, -262
                  auipc        s10, 391897
                  bgeu         t3, a5, 206f
                  bgeu         sp, t6, 209f
204:              addi         gp, s0, -763
                  sra          a5, s4, s4
206:              and          s1, a0, s1
207:              slti         t1, s6, -1560
                  srai         s0, a7, 13
209:              bltu         t0, s0, 218f
                  beq          ra, s7, 229f
                  srai         t3, a4, 18
                  srl          t1, a1, s0
                  srai         a3, s7, 8
                  and          sp, a7, t4
                  sub          t1, a6, s2
                  xori         sp, a3, 1782
                  lui          s1, 594770
218:              bne          ra, s5, 224f
                  bge          s10, gp, 225f
                  or           s4, s8, s0
                  and          sp, s6, t0
                  srai         a4, a5, 17
                  xori         a3, s11, 443
224:              srli         t5, t6, 13
225:              bge          a6, t5, 227f
                  srai         a2, a0, 7
227:              sltiu        a5, s9, -1721
                  sub          s10, t0, s0
229:              bgeu         s6, s6, 245f
                  sra          s6, sp, t4
                  xori         t4, t4, 965
                  sll          a4, s1, t5
                  bgeu         a2, a6, 238f
                  or           s11, s3, a3
                  sll          t1, t0, s5
                  sltiu        s6, a4, 1599
                  lui          s0, 859985
238:              bgeu         s1, t0, 244f
                  slti         a7, sp, 501
                  slli         a7, s9, 20
                  add          a1, a7, zero
                  blt          s9, s6, 246f
                  beq          a2, t0, 261f
244:              and          s0, s2, a7
245:              srli         a2, s2, 31
246:              bne          s6, a5, 257f
                  sub          s2, s1, s5
                  andi         a1, t5, 731
                  srl          s7, s11, tp
                  bge          s3, s8, 253f
                  srai         a2, tp, 17
                  xori         t0, s7, 534
253:              nop
                  slt          s5, a3, sp
                  bge          zero, s9, 271f
                  blt          a6, a1, 264f
257:              slti         s6, a2, 344
                  blt          tp, s4, 260f
                  bge          tp, a1, 277f
260:              or           a5, s3, a5
261:              addi         a5, a2, 949
                  sra          a5, s5, s4
                  srl          a1, a3, zero
264:              slti         sp, sp, 721
                  nop
                  lui          tp, 63566
                  ori          a6, t1, 1441
                  add          a4, t4, t0
                  bge          t2, s6, 272f
                  xor          s1, tp, t4
271:              slti         gp, gp, -1863
272:              sll          s2, a4, gp
                  slt          s2, s6, s3
                  sra          s0, a1, a6
                  slli         a4, s3, 31
                  or           gp, ra, a4
277:              sra          a4, s2, gp
                  auipc        a2, 86332
                  auipc        s7, 860773
                  ori          t2, sp, -802
                  slt          sp, t0, s3
                  add          t2, s3, s0
                  auipc        t3, 916023
                  andi         s9, ra, -869
                  bge          s11, t5, 286f
286:              sll          s8, t3, s8
                  srli         s5, a6, 12
                  or           s1, s0, s10
                  ori          a4, s7, -374
                  sub          a4, a0, t1
                  xori         t0, t4, 27
                  andi         a3, t1, -21
                  sltu         s7, tp, t3
                  srli         t0, s7, 29
                  nop
                  ori          s0, ra, 2001
                  auipc        t3, 325714
                  lui          s6, 51074
                  sub          sp, t2, s0
                  bne          a3, s7, 311f
                  bgeu         zero, t1, 304f
                  xor          s2, t3, sp
                  bltu         t6, s11, 309f
304:              blt          s3, s8, 306f
                  bgeu         s7, t0, 307f
306:              sll          a6, zero, a4
307:              xori         tp, a4, 1892
                  slli         tp, t2, 24
309:              beq          a7, t4, 321f
                  xori         s0, tp, -145
311:              srl          s0, ra, a0
                  or           t2, gp, s10
                  bne          t3, s1, 317f
                  sra          t1, s1, a1
                  sub          t4, gp, s2
                  slt          t3, t0, s4
317:              srl          s11, t0, a3
                  ori          s8, s0, 840
                  andi         zero, t3, -1789
                  bge          a2, s8, 338f
321:              auipc        s0, 1014220
                  andi         gp, sp, 1164
                  sll          ra, s11, s4
                  bgeu         t4, t2, 328f
                  bge          a1, a7, 344f
                  ori          s6, t5, -1098
                  sltiu        s2, a3, 1306
328:              lui          a2, 313266
                  auipc        s4, 302334
                  blt          sp, t5, 346f
                  blt          s1, s4, 339f
                  xori         sp, a0, 1650
                  lui          gp, 19486
                  beq          a6, ra, 338f
                  blt          s1, s5, 347f
                  ori          s5, s11, -1666
                  add          a4, t0, s7
338:              slti         s2, t2, 434
339:              srli         a4, s3, 25
                  auipc        t4, 268326
                  sub          tp, tp, s11
                  or           s11, a2, a7
                  blt          s4, gp, 346f
344:              blt          zero, a2, 353f
                  slt          sp, sp, tp
346:              bne          a5, ra, 351f
347:              lui          t1, 74178
                  sra          a2, s11, s10
                  bltu         a2, a5, 354f
                  sll          s8, s6, t5
351:              sltiu        a7, t4, -1843
                  xor          t3, sp, a6
353:              xori         s7, ra, -1096
354:              bltu         s9, s1, 355f
355:              srli         t5, s4, 27
                  andi         a1, a1, 1634
                  andi         gp, s3, 1883
                  nop
                  and          a2, gp, a5
                  slt          s5, sp, s0
                  sltu         a4, t5, t1
                  add          s9, t5, t0
                  slti         t1, t0, 1475
                  sra          a5, s4, s9
                  la           sp, region_0+288 #start riscv_load_store_rand_instr_stream_1
                  sb           ra, 36(sp)
                  sb           s3, 50(sp)
                  sub          zero, s1, s9
                  slt          t3, s5, s10
                  srai         s8, a4, 24
                  nop
                  lbu          a5, -11(sp)
                  lb           s8, 5(sp)
                  ori          a1, s5, -1946
                  lhu          gp, -26(sp)
                  and          s11, a3, s11
                  addi         s0, s3, 2016
                  addi         a6, a2, -1052
                  and          s8, zero, t4
                  lb           t5, 43(sp)
                  srli         a6, t0, 20
                  sh           s2, -6(sp)
                  lb           t0, -41(sp)
                  sltu         s10, gp, t0
                  slt          zero, a6, ra
                  srai         a5, t2, 19
                  lbu          gp, 33(sp)
                  and          ra, s2, s7
                  or           a1, a1, sp
                  sltiu        s1, a0, 1956
                  nop
                  sub          zero, gp, s7
                  sb           t3, -21(sp)
                  srl          gp, a3, s3
                  lhu          s7, -36(sp)
                  lw           s11, -20(sp)
                  ori          s8, s2, 419
                  auipc        s11, 46025
                  sh           zero, 34(sp)
                  and          s8, gp, s8
                  andi         t1, s1, 916
                  sra          t4, s8, ra
                  ori          s9, s2, -1470
                  and          s11, s11, sp
                  sh           t6, 26(sp)
                  sh           s9, 34(sp)
                  slti         s1, zero, 1324
                  ori          s2, a1, -1501
                  lbu          t0, 57(sp) #end riscv_load_store_rand_instr_stream_1
                  sub          t3, t4, s4
                  nop
                  sra          t0, t1, s2
                  sll          t0, s9, zero
                  slt          s5, s1, t2
                  sra          gp, zero, s8
                  andi         s5, ra, 1721
                  and          s10, zero, t3
                  or           zero, t1, zero
                  and          a1, a4, t4
                  srli         t0, a4, 24
                  srl          a1, s9, s1
                  slt          s9, a0, s6
                  xor          a7, a6, t0
                  beq          t4, s11, 390f
                  blt          ra, t4, 386f
                  sll          tp, gp, t1
                  slt          gp, s4, t0
                  srai         a1, t6, 30
                  slti         gp, ra, -237
                  and          s8, s3, a0
386:              blt          s9, s2, 392f
                  add          t3, s2, t6
                  sltiu        t5, t0, 560
                  andi         t3, a3, -65
390:              srl          s0, t2, a4
                  bltu         gp, t3, 394f
392:              xori         s11, s11, -958
                  and          t1, s7, ra
394:              xor          t5, s8, s2
                  sra          ra, s6, tp
                  lw           s0, 4(s3)
                  xor          s8, t4, a0
                  addi         s3, s3, 64
                  lui          t4, 159263
546:              addi x7, x8, 1
546:              jalr x7, x7, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x25, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x25, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x25, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x25, x4, ecall_handler
                  li x4, 0x1
                  beq x25, x4, instr_fault_handler
                  li x4, 0x5
                  beq x25, x4, load_fault_handler
                  li x4, 0x7
                  beq x25, x4, store_fault_handler
                  li x4, 0xc
                  beq x25, x4, pt_fault_handler
                  li x4, 0xd
                  beq x25, x4, pt_fault_handler
                  li x4, 0xf
                  beq x25, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
