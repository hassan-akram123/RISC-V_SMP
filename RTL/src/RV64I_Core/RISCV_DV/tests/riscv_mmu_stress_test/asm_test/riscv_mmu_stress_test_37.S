.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 1
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x9ddb6b07
                  li x1, 0x80000000
                  li x2, 0xf582352b
                  li x3, 0x96fada1d
                  li x4, 0xf43c6a3d
                  li x5, 0x0
                  li x6, 0xfa3910da
                  li x8, 0x0
                  li x9, 0xe
                  li x10, 0xfe5493dc
                  li x11, 0x0
                  li x12, 0xf
                  li x14, 0x0
                  li x15, 0xe
                  li x16, 0xc1a91580
                  li x17, 0xe
                  li x18, 0xa
                  li x19, 0x80000000
                  li x20, 0xf8402530
                  li x21, 0x4
                  li x22, 0x2
                  li x23, 0x0
                  li x24, 0xa
                  li x25, 0x5
                  li x26, 0x3c2395b0
                  li x27, 0x80000000
                  li x28, 0xa2d8518b
                  li x29, 0x6
                  li x30, 0xf8e35f6c
                  li x31, 0x80000000
                  la x13, user_stack_end
main:             la           t5, region_0+846 #start riscv_load_store_hazard_instr_stream_0
                  addi         s9, a2, -251
                  lw           a6, -26(t5)
                  lh           a4, -26(t5)
                  lhu          s6, -26(t5)
                  lb           a0, -26(t5)
                  lw           a0, -26(t5)
                  lb           t6, -23(t5)
                  lbu          a4, -23(t5)
                  lb           t3, -23(t5)
                  lbu          s4, -23(t5)
                  sra          gp, zero, s0
                  sb           ra, -23(t5)
                  lui          a7, 1041035
                  lb           s6, 29(t5)
                  lb           s0, 29(t5)
                  lh           a4, 14(t5)
                  sb           a2, 14(t5) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+45 #start riscv_load_store_rand_instr_stream_1
                  lb           s6, 1(sp)
                  sb           s6, -12(sp)
                  lhu          s11, 5(sp)
                  sb           a0, -2(sp)
                  sb           zero, 4(sp)
                  lbu          a4, 10(sp)
                  slli         zero, a1, 3
                  slli         a1, ra, 25
                  sb           a0, 14(sp)
                  lb           t1, 15(sp)
                  or           a4, sp, a3
                  sw           t0, -5(sp)
                  lw           a1, -9(sp)
                  ori          s4, t4, -327
                  lb           s3, 12(sp)
                  lh           a4, 11(sp)
                  lw           s5, -13(sp)
                  lh           s7, 7(sp)
                  ori          s9, s1, -1844
                  sb           s10, 16(sp)
                  sb           s0, -4(sp)
                  sb           a1, -2(sp)
                  lb           t0, 14(sp)
                  auipc        t4, 826388
                  lbu          a7, 0(sp)
                  lw           a1, 3(sp)
                  auipc        s0, 650623
                  lui          a1, 108479
                  srli         t5, a0, 6
                  srli         a6, s4, 13
                  ori          t0, t6, 869
                  sll          tp, t0, a1
                  slt          s5, s5, s11
                  lb           a0, -11(sp)
                  sb           t5, -12(sp)
                  sltu         s1, s8, t4
                  sltu         a4, t3, t2
                  sb           s10, -1(sp)
                  sb           a0, -10(sp)
                  lw           t5, -9(sp)
                  sub          t0, t3, ra
                  srli         s6, a5, 30
                  lb           t5, 0(sp)
                  lbu          a6, 11(sp)
                  addi         t1, t5, -888
                  srli         a7, s8, 18
                  lbu          t6, 4(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s2, region_0+245 #start load_store_instr_stream_1
                  la           s5, region_0+1201 #start load_store_instr_stream_0
                  sh           t5, -147(s2)
                  lb           a4, 8(s5)
                  sh           s11, 33(s5)
                  sh           t2, -39(s5)
                  lb           t0, 38(s5)
                  lbu          ra, -55(s5)
                  lbu          a0, -228(s2)
                  sb           s7, 57(s5)
                  lb           s4, -10(s5)
                  lbu          t0, -106(s2)
                  sw           t1, -1(s5)
                  lb           a2, 6(s2)
                  lb           s6, -8(s5)
                  lhu          sp, 69(s2)
                  lb           s4, 66(s2) #end load_store_instr_stream_1
                  sb           a3, 12(s5) #end load_store_instr_stream_0
                  la           sp, region_1+178 #start riscv_load_store_rand_instr_stream_0
                  srl          s6, tp, a0
                  sltu         t5, t0, a1
                  lb           t0, 64(sp)
                  lb           a0, 1734(sp)
                  sll          s4, s11, t3
                  sh           t6, 346(sp)
                  xor          a0, gp, t5
                  lbu          a1, -105(sp)
                  lhu          gp, 1464(sp)
                  lb           s7, 1366(sp)
                  lb           zero, 1443(sp)
                  sb           s7, 1022(sp)
                  xor          a5, a6, s2
                  sb           s7, 1697(sp)
                  xor          t4, a2, zero
                  xor          a5, t3, s0
                  sb           s11, 1774(sp)
                  srai         s6, a1, 2
                  sll          s6, a6, sp
                  slli         s0, t2, 26
                  lhu          a4, 266(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_0+1325 #start riscv_load_store_rand_instr_stream_2
                  sb           a0, -4(a7)
                  srl          a0, s9, t6
                  xori         s6, s7, 1615
                  lbu          s7, 12(a7)
                  sh           s6, 15(a7)
                  lb           a2, 1(a7)
                  lhu          a5, 13(a7)
                  xori         t4, sp, -1189
                  lb           zero, 6(a7)
                  sw           ra, -9(a7)
                  slt          s3, t2, a2
                  sb           ra, -14(a7)
                  and          a0, s4, t0
                  sb           s6, 6(a7)
                  lui          t5, 897662
                  addi         s1, a7, 1746
                  sw           s3, 3(a7)
                  lw           t3, -9(a7)
                  sb           t6, 16(a7)
                  lbu          sp, -6(a7)
                  ori          t3, sp, 1059
                  lhu          gp, -3(a7)
                  srai         s8, s10, 23
                  srai         ra, a4, 24
                  lbu          ra, -4(a7)
                  lbu          s7, 6(a7)
                  lb           s7, -14(a7)
                  srl          a4, sp, t6
                  lbu          s4, -2(a7)
                  lb           a4, 2(a7)
                  lhu          s9, -3(a7)
                  sltiu        a1, s9, -818
                  lbu          s3, 9(a7)
                  sb           s11, -9(a7)
                  lhu          t0, -3(a7)
                  lbu          s7, 8(a7)
                  sb           ra, 10(a7)
                  srai         s2, t5, 16
                  sra          zero, a7, s8
                  lui          t1, 991469
                  sb           s6, -14(a7)
                  andi         gp, s2, -1030
                  lbu          ra, -12(a7)
                  sltiu        s6, a2, -51
                  sltiu        gp, s7, -366
                  sb           s5, 15(a7)
                  sb           a3, -14(a7) #end riscv_load_store_rand_instr_stream_2
                  la           t4, region_0+1100 #start riscv_load_store_hazard_instr_stream_1
                  lh           s3, -70(t4)
                  sb           t0, -70(t4)
                  sb           a0, -70(t4)
                  sb           a2, 237(t4)
                  lb           s8, 27(t4)
                  lb           s3, 217(t4)
                  lb           t5, 217(t4)
                  sb           tp, 217(t4)
                  slli         s9, s8, 12
                  lbu          t1, 217(t4)
                  lb           a4, 217(t4)
                  sh           s7, -54(t4)
                  sb           s6, -54(t4)
                  lbu          s8, 208(t4)
                  lb           s5, -79(t4)
                  sb           s2, 209(t4)
                  sb           t6, 209(t4)
                  lbu          s8, 209(t4) #end riscv_load_store_hazard_instr_stream_1
                  la           s2, region_0+901 #start load_store_instr_stream_1
                  lb           s7, 194(s2)
                  la           s5, region_0+1653 #start load_store_instr_stream_0
                  la           t4, region_0+1011 #start load_store_instr_stream_2
                  sb           t5, -248(s2)
                  la           t0, region_0+567 #start load_store_instr_stream_3
                  sw           t6, -11(t4)
                  lb           ra, -22(s2)
                  sh           sp, 11(t4)
                  lb           t1, 49(s5)
                  lbu          sp, -5(t4)
                  lb           t6, -212(t0)
                  lb           a4, -109(t0)
                  lb           s6, -47(s5)
                  lw           gp, 5(t4)
                  lhu          s8, 11(t4)
                  sw           a1, 1229(t0)
                  lbu          a1, -121(s2)
                  lb           s8, -271(t0)
                  lb           s1, -12(t4)
                  sh           s9, 7(t4)
                  lw           tp, -567(t0)
                  sw           a0, -165(s2)
                  lh           s1, -5(t4)
                  sb           a0, 18(s5)
                  lh           s6, -239(s2)
                  lbu          s9, 7(t4)
                  lbu          t1, 753(t0)
                  sb           a3, 80(s2) #end load_store_instr_stream_1
                  lbu          tp, 16(t4) #end load_store_instr_stream_2
                  sh           s11, -331(t0)
                  lh           zero, 57(s5)
                  sb           a1, 652(t0) #end load_store_instr_stream_3
                  lb           s1, 29(s5) #end load_store_instr_stream_0
                  or           s1, t6, s8
                  slli         tp, t0, 7
                  auipc        a5, 17008
                  sltiu        s1, s1, 1841
                  lui          a5, 680351
                  addi         s0, s2, 1036
                  nop
                  srai         s3, a4, 31
                  bgeu         zero, a5, 9f
9:                sltiu        t5, a3, -475
                  xori         sp, s6, -305
                  srli         t3, a2, 0
                  srai         s5, t6, 19
                  ori          a1, s1, 947
                  bne          a5, t1, 30f
                  blt          t3, t6, 30f
                  addi         t6, s9, -1964
                  slt          ra, s2, s1
                  blt          t4, a6, 25f
                  bne          s9, s4, 30f
                  sltiu        ra, s1, 881
                  bge          t1, a1, 41f
                  blt          t5, t5, 36f
                  sra          s0, t0, t0
                  bge          s11, sp, 35f
25:               and          a4, s4, a7
                  ori          a0, gp, 1642
                  bge          a0, s7, 41f
                  addi         a5, a4, 815
                  xori         a7, s8, 586
30:               and          t0, t2, a0
                  or           s9, a4, a4
                  xor          s0, a3, s7
                  xor          a5, gp, ra
                  slt          s7, a1, a1
35:               ori          s4, s8, 581
36:               sub          a1, a4, t3
                  xor          t3, sp, t6
                  srai         s0, s8, 30
                  slti         s0, s10, 1749
                  xori         a2, s6, -1057
41:               sltiu        a1, t5, -1467
                  sub          a7, s4, s11
                  nop
                  and          tp, s6, sp
                  bne          s9, s5, 64f
                  xori         s4, s1, -408
                  slt          t4, ra, a2
                  auipc        tp, 440006
                  xori         a6, a3, -1203
                  xor          t1, t6, a1
                  beq          s2, a0, 60f
                  sltu         s1, s3, a2
                  ori          s4, a1, 1092
                  sltiu        s3, a1, 470
                  add          a5, s3, a2
                  and          a6, s2, t6
                  sub          tp, zero, a7
                  bge          t2, s4, 64f
                  xor          a2, sp, s3
60:               ori          t3, a5, 16
                  add          s5, s11, sp
                  sltiu        t6, a0, -367
                  slti         gp, t3, 1898
64:               auipc        t0, 24083
                  ori          s8, a7, 65
                  srl          s5, t2, a2
                  srli         zero, s6, 6
                  addi         s11, t6, -1350
                  la           tp, sub_1
                  lui          s7, 922400
                  addi         tp, tp, -295
                  xor          t3, zero, a5
                  and          a1, a5, t6
                  xori         s11, a0, -1970
                  sltu         t3, s3, s7
                  andi         t0, s6, 379
main_j1:          jalr         ra, tp, 295 #jump main -> sub_1
                  sll          s3, s11, s3
                  srli         a4, a0, 24
                  sll          a6, t0, tp
                  srli         a1, s6, 21
                  srli         s11, s10, 8
                  sltiu        t0, a1, -235
                  xori         tp, s4, -1012
                  sltiu        a5, t1, -1533
                  auipc        sp, 400482
                  sll          gp, sp, a7
                  bge          s4, a6, 82f
                  slt          s4, gp, a7
                  auipc        s1, 1041235
82:               bne          gp, t3, 87f
                  auipc        a7, 524173
                  bltu         s4, a5, 97f
                  sltu         a5, s1, s9
                  nop
87:               nop
                  bltu         t0, s1, 95f
                  blt          a0, s1, 107f
                  la           sp, region_0+1104 #start riscv_load_store_hazard_instr_stream_2
                  lbu          s1, -581(sp)
                  slt          s9, gp, a2
                  xori         a2, t0, 1101
                  sh           t5, 130(sp)
                  lb           s4, -1065(sp)
                  or           ra, gp, s5
                  add          a1, a6, s6
                  sll          gp, zero, t1
                  lb           a6, -1065(sp)
                  lb           t4, -471(sp)
                  addi         s1, s8, -409
                  lw           s11, -16(sp)
                  lbu          s1, -597(sp)
                  lbu          a0, -597(sp)
                  sb           s0, 857(sp)
                  lb           s3, -1099(sp)
                  lhu          s9, -556(sp)
                  sb           t0, -556(sp)
                  lhu          t1, -916(sp)
                  lbu          s2, -802(sp) #end riscv_load_store_hazard_instr_stream_2
                  andi         s3, s9, -421
                  sltiu        t1, a0, 1882
                  slli         s0, zero, 16
                  bltu         t6, t3, 101f
                  or           s9, a7, s5
95:               sltu         s5, s7, t6
                  slt          s7, s0, s8
97:               slti         s3, s5, 198
                  bltu         s9, a4, 110f
                  bltu         t5, s11, 100f
100:              srai         a4, t1, 21
101:              slt          ra, s5, a1
                  blt          a3, s6, 112f
                  sll          sp, t0, a5
                  nop
                  bne          s5, a7, 116f
                  xori         a7, s10, -1097
107:              xor          t5, s7, a6
                  addi         a0, s8, 1435
                  sub          s6, a3, t2
110:              beq          t2, s0, 112f
                  srl          a1, s7, t5
112:              sltiu        a0, t2, 1125
                  xori         t4, s1, 493
                  lui          a0, 473341
                  bltu         t5, s6, 123f
116:              bne          t3, zero, 119f
                  ori          ra, s9, 842
                  and          t5, gp, s4
119:              bgeu         s11, t4, 132f
                  auipc        a7, 1047458
                  ori          sp, s7, -1178
                  andi         gp, s10, -1621
123:              or           a5, s4, s5
                  srl          s0, s3, s5
                  and          a4, s10, tp
                  or           a7, ra, s10
                  blt          s0, a3, 134f
                  bgeu         s2, t4, 135f
                  ori          t3, a3, -1921
                  sll          s3, s6, s2
                  sub          a5, zero, a4
132:              sll          tp, s3, t5
                  xor          s2, t6, s10
134:              auipc        t1, 321742
135:              sll          ra, s11, t6
                  slti         s7, t1, 879
                  beq          sp, s6, 153f
                  bge          a3, a4, 154f
                  ori          s3, s9, -977
                  bgeu         t1, tp, 158f
                  srai         t1, s6, 4
                  srli         zero, t2, 24
                  sll          s3, gp, s0
                  srai         s6, gp, 3
                  bne          a3, sp, 158f
                  add          t1, t2, ra
                  bgeu         t5, s7, 155f
                  blt          t0, s11, 159f
                  auipc        t5, 106930
                  slt          t4, s4, tp
                  slli         gp, s9, 14
                  sltu         s3, s5, t6
153:              bne          s2, s10, 160f
154:              and          s0, a3, s3
155:              bne          s1, a3, 171f
                  or           zero, s9, t5
                  sltiu        t1, a0, -2026
158:              sra          gp, a4, a0
159:              sub          a2, s2, t5
160:              ori          gp, s9, 839
                  add          a5, a5, t3
                  or           t6, t1, s9
                  sra          a5, a7, a5
                  slti         t4, zero, 1587
                  add          s1, a3, s8
                  xor          t3, s0, a6
                  bge          t0, s11, 183f
                  slt          ra, a0, s3
                  srai         t0, sp, 2
                  bge          s11, a0, 173f
171:              sub          a2, s8, a6
                  bne          a3, s1, 180f
173:              slli         t0, s9, 11
                  sltu         a5, s7, t0
                  auipc        s8, 286894
                  slti         s7, a7, -983
                  bne          ra, zero, 186f
                  slti         t1, s0, -1791
                  or           s0, a0, t5
180:              sub          s3, s4, a1
                  ori          s9, t2, 1354
                  add          a5, s8, t2
183:              slt          a6, s5, t0
                  beq          s11, gp, 195f
                  auipc        a4, 307118
186:              srli         s1, s10, 2
                  bltu         a1, a4, 194f
                  sltu         t0, a3, s0
                  slti         a5, gp, 947
                  sltiu        s9, a0, 1864
                  bge          a5, a5, 205f
                  slli         a4, gp, 15
                  xori         s7, t6, -1530
194:              sltiu        s3, s4, 1242
195:              slli         s5, a6, 1
                  lui          ra, 433750
                  bltu         s6, t5, 210f
                  xor          s3, t5, a1
                  sub          a0, s7, a5
                  auipc        s5, 731721
                  sub          ra, ra, t3
                  xor          a6, a0, s10
                  sltiu        t1, a0, -217
                  or           t3, ra, a4
205:              sltu         s0, gp, sp
                  andi         s4, t3, -13
                  sra          t4, s0, a3
                  sll          a2, t0, t1
                  slti         a4, t6, -1122
210:              ori          s2, a4, 663
                  addi         s1, a4, -1853
                  sll          a2, a4, t0
                  xor          s9, t5, ra
                  sltu         s9, s6, t6
                  andi         s2, a1, 822
                  bgeu         s3, s4, 235f
                  addi         s8, a6, 677
                  sll          a6, s8, a1
                  bge          s9, t4, 222f
                  auipc        a7, 979470
                  slti         a6, s1, 1051
222:              bltu         s8, ra, 223f
223:              slti         t4, t5, -366
                  la           t5, region_0+723 #start load_store_instr_stream_4
                  la           t4, region_0+807 #start load_store_instr_stream_2
                  la           sp, region_0+1775 #start load_store_instr_stream_3
                  la           s0, region_0+1437 #start load_store_instr_stream_1
                  sb           s3, -251(sp)
                  la           gp, region_0+404 #start load_store_instr_stream_0
                  lbu          a5, -20(t5)
                  sb           s1, 47(t4)
                  sb           a0, -150(s0)
                  lb           s1, -76(s0)
                  lb           a6, 1527(gp)
                  sw           t1, -211(t5)
                  lb           a6, -52(t4)
                  lbu          zero, -90(t5)
                  sb           s1, -17(t4)
                  lbu          s7, 15(t5)
                  lb           a4, -110(s0)
                  lbu          tp, -526(sp)
                  lh           a5, 53(t4)
                  sb           s10, -714(sp)
                  lb           t3, -21(s0)
                  lbu          s1, 801(gp)
                  lb           s8, 24(t4)
                  lbu          t0, -70(s0)
                  lhu          a4, -77(t5)
                  sb           t6, 1454(gp)
                  lh           s6, -199(s0)
                  lb           s2, 40(t4)
                  lb           ra, -1277(sp)
                  sb           a5, 58(t4)
                  sh           s6, -1025(sp)
                  lbu          s4, -994(sp)
                  sb           a1, 176(sp)
                  lb           s3, -176(s0)
                  lh           s11, 66(gp)
                  lbu          a0, 1131(gp)
                  lh           s9, 9(t4) #end load_store_instr_stream_2
                  lw           s6, 7(s0) #end load_store_instr_stream_1
                  lb           s4, 230(t5) #end load_store_instr_stream_4
                  lbu          zero, -13(sp) #end load_store_instr_stream_3
                  lb           t6, 844(gp) #end load_store_instr_stream_0
                  srl          zero, t1, a1
                  lui          a4, 146503
                  slli         a2, s9, 14
                  sltiu        t6, s9, -1716
                  sltu         s9, s2, s10
                  sltiu        t5, s8, -1483
                  or           a0, a2, sp
                  bltu         gp, gp, 245f
                  nop
                  lui          t4, 717214
                  add          a6, s2, ra
235:              bltu         s5, a0, 251f
                  lui          sp, 403761
                  lui          s2, 578573
                  sll          a1, a3, a4
                  bne          s6, zero, 246f
                  ori          t3, t4, -1227
                  bne          s3, t6, 251f
                  beq          s6, t1, 253f
                  sltiu        s7, s3, -326
                  slti         s8, t5, 990
245:              beq          t0, t2, 250f
246:              srl          s2, t1, a6
                  or           s7, a6, s3
                  srli         t3, s2, 29
                  add          zero, s5, a0
250:              bne          s9, tp, 257f
251:              sub          a7, tp, s11
                  slli         a2, t5, 25
253:              bne          s4, ra, 268f
                  ori          a1, s3, -898
                  and          a0, s4, ra
                  sltiu        s4, s3, -1863
257:              slli         s9, t6, 25
                  add          t0, a4, s5
                  addi         s3, t0, 1222
                  auipc        s1, 289926
                  auipc        t6, 135637
                  add          ra, s11, t1
                  ori          t4, a0, -556
                  beq          s8, t4, 284f
                  lui          a5, 706456
                  lui          s3, 338761
                  beq          s5, a2, 268f
268:              blt          s3, s10, 280f
                  addi         s1, tp, -1776
                  srai         t0, t1, 2
                  bge          t5, a1, 277f
                  slli         s8, t1, 13
                  bge          t1, zero, 275f
                  srli         s8, t0, 30
275:              bge          s3, gp, 285f
                  sltu         a7, s10, s3
277:              slli         a6, t1, 17
                  sltiu        s9, s3, 1398
                  slt          t5, s1, s2
280:              srli         s0, s0, 1
                  bge          zero, s6, 282f
282:              auipc        s6, 100059
                  sltu         t0, s11, a4
284:              andi         t0, s10, 303
285:              auipc        s5, 1017364
                  beq          s11, ra, 298f
                  xor          sp, a2, s2
                  sltu         t5, s6, s7
                  and          s8, tp, a4
                  blt          a2, s7, 295f
                  blt          t5, s4, 298f
                  lui          s3, 632543
                  slti         s4, t3, -500
                  andi         t5, t3, 896
295:              bgeu         s0, t4, 310f
                  bltu         s11, t6, 299f
                  ori          s7, a6, 521
298:              and          a6, a1, a2
299:              lui          t5, 346434
                  sra          zero, t5, a3
                  bgeu         t4, t3, 308f
                  slli         a0, t3, 28
                  and          zero, s9, a3
                  nop
                  nop
                  xori         a0, a5, 1672
                  lui          s0, 910427
308:              xori         a5, s2, 896
                  beq          t4, t5, 320f
310:              xori         a4, t1, -1138
                  slt          t3, t4, t3
                  slt          t1, s0, a4
                  auipc        s5, 317477
                  slti         s2, t4, -356
                  bne          zero, sp, 331f
                  nop
                  addi         a7, s11, -1448
                  slti         s11, t1, -469
                  sra          s4, t5, s5
320:              add          s2, s11, a3
                  blt          a1, t0, 322f
322:              beq          t2, sp, 331f
                  beq          a4, s4, 336f
                  xori         a5, a7, -397
                  bltu         a3, a5, 328f
                  bgeu         a3, s5, 337f
                  ori          s11, a0, -1929
328:              sra          s9, a0, s0
                  sll          t0, t3, s3
                  slti         s11, tp, -1266
331:              auipc        t1, 605120
                  sll          sp, s11, t4
                  slt          s7, a4, a2
                  andi         s1, sp, -1935
                  xor          s6, s2, s4
336:              bltu         s11, s11, 352f
337:              srl          s7, zero, s9
                  xor          s5, s2, t6
                  xor          s4, t1, s8
                  blt          t3, s3, 353f
                  srli         tp, a2, 31
                  slli         gp, s0, 31
                  blt          s11, a0, 351f
                  bgeu         s11, s4, 351f
                  sra          s11, a5, gp
                  blt          s7, s5, 353f
                  beq          s11, gp, 355f
                  addi         s1, zero, 1247
                  lui          zero, 966722
                  and          s0, t6, a0
351:              sub          s3, t1, t3
352:              and          s7, zero, s10
353:              sltiu        a1, ra, 1902
                  bgeu         a2, s0, 360f
355:              and          a2, t3, ra
                  bgeu         s10, s4, 367f
                  bltu         t4, ra, 369f
                  andi         s4, s6, -745
                  srl          s3, s5, a0
360:              andi         zero, t4, -129
                  slti         s7, s9, 594
                  xor          ra, s11, s6
                  sll          gp, t5, s6
                  xor          a6, s7, s7
                  addi         t1, s10, 1976
                  addi         t0, s5, 1082
367:              srai         ra, s7, 9
                  sltu         t0, zero, t2
369:              nop
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            and          a7, t3, s8
                  xori         t1, gp, 1556
                  nop
                  srli         t6, t4, 13
                  slti         t3, a7, 1086
                  and          gp, s9, a3
                  bne          t2, t0, sub_2_stack_p
                  slli         a1, a2, 20
sub_2_stack_p:    addi         a3, a3, -56
                  srai         a6, a6, 9
                  sw           ra, 4(a3)
                  auipc        sp, 183335
                  sub          sp, t3, s0
                  la           sp, region_1+622 #start riscv_load_store_rand_instr_stream_0
                  lbu          a6, -615(sp)
                  lh           gp, 848(sp)
                  andi         a4, t5, 1325
                  sb           a3, -53(sp)
                  lbu          t1, -529(sp)
                  lbu          s3, -49(sp)
                  xor          tp, t5, a3
                  slt          s7, gp, ra
                  lb           s9, 5(sp)
                  lb           s1, 1319(sp)
                  sb           s7, 602(sp)
                  addi         a4, s2, -374
                  lbu          s7, 480(sp)
                  sra          s9, t0, s2
                  sb           a1, -335(sp)
                  nop
                  lh           a2, -594(sp)
                  addi         ra, s3, 1148
                  and          a5, t6, a2
                  sh           a1, 1360(sp)
                  sb           s0, 1229(sp)
                  srl          t1, a1, a7
                  lbu          s6, 1200(sp)
                  lbu          a2, 32(sp)
                  sb           gp, 1033(sp)
                  lhu          s8, -290(sp)
                  sub          s4, sp, gp
                  lb           t5, -477(sp)
                  lb           a1, 366(sp)
                  lb           t3, 901(sp)
                  sh           sp, 1230(sp)
                  lb           ra, -563(sp)
                  slli         s1, s7, 12
                  lhu          s8, 272(sp)
                  lbu          zero, 1205(sp)
                  sub          a5, t2, zero
                  lb           a7, 1005(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_0+1802 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a1, 163(s5)
                  lb           a2, 105(s5)
                  lhu          s4, 160(s5)
                  sb           s5, 160(s5)
                  sb           s5, 160(s5)
                  andi         t6, s9, 103
                  lh           t4, 160(s5)
                  lh           sp, 160(s5)
                  sb           s0, 160(s5)
                  lui          t5, 209666
                  lb           s9, 69(s5)
                  sb           a6, 69(s5)
                  sb           s4, 103(s5)
                  lb           t4, 103(s5)
                  sh           t6, 118(s5)
                  lui          t4, 958855
                  and          s3, s1, a6
                  sltiu        s9, s5, 300
                  lb           t6, -79(s5)
                  sll          tp, s6, a0
                  lb           a4, 23(s5)
                  sb           a0, -193(s5)
                  sb           s3, -213(s5)
                  auipc        tp, 416542
                  lbu          s8, -29(s5)
                  sh           a1, 48(s5) #end riscv_load_store_hazard_instr_stream_0
                  xori         tp, s6, 1314
                  addi         s8, a1, -1866
                  lui          s11, 1048538
                  add          a7, s11, s3
                  bgeu         s4, s0, 5f
5:                sltiu        a1, s10, -842
                  and          a7, a3, s10
                  la           t5, region_1+1549 #start load_store_instr_stream_1
                  la           s4, region_1+1009 #start load_store_instr_stream_3
                  la           s3, region_1+288 #start load_store_instr_stream_0
                  lhu          a6, -211(t5)
                  lbu          s9, 4(s4)
                  lbu          a0, -14(s4)
                  la           s8, region_1+1456 #start load_store_instr_stream_2
                  sb           zero, -39(s3)
                  lbu          t4, 37(s3)
                  lb           s0, 233(t5)
                  lhu          t4, 14(s3)
                  lhu          s7, 129(t5)
                  sh           s8, 164(s8)
                  lb           s1, -12(s8)
                  sb           a1, -1(s3)
                  sw           a1, -93(t5)
                  sh           ra, -198(s8)
                  sw           t4, -32(s3)
                  lhu          a1, -30(s3)
                  lbu          s7, -246(t5)
                  lh           ra, -10(s3)
                  sb           s9, -79(t5)
                  sb           sp, 8(s4)
                  lb           s9, 86(s8)
                  lbu          t4, 16(s4)
                  sb           a1, 186(t5)
                  sb           tp, -23(s3)
                  lb           t3, -138(s8)
                  lb           a4, -2(s4) #end load_store_instr_stream_3
                  sh           t0, -173(t5) #end load_store_instr_stream_1
                  lb           s1, 179(s8)
                  sb           a1, -31(s8) #end load_store_instr_stream_2
                  lbu          s6, -11(s3) #end load_store_instr_stream_0
                  and          a0, t2, zero
                  srai         t1, a7, 9
                  xor          s8, zero, zero
                  auipc        s1, 389340
                  bne          a5, a7, 15f
                  nop
                  and          a1, t3, s8
                  sltu         s3, s7, zero
15:               addi         a0, sp, -663
                  or           a7, a0, a6
                  add          s1, t4, s2
                  sll          a2, sp, gp
                  and          t0, a3, tp
                  sltiu        t6, s5, -1337
                  sltu         t3, a2, t5
                  add          s3, t2, a7
                  sra          a7, sp, s6
                  bne          t6, a0, 34f
                  bge          a7, sp, 36f
                  sltu         s2, t6, a0
                  beq          t1, a4, 46f
                  lui          t0, 59749
                  sll          sp, s8, s4
                  bltu         t2, s0, 37f
                  sltu         sp, a3, a0
                  srli         s11, a5, 3
                  sub          s6, t4, zero
34:               bge          s3, s6, 41f
                  slt          s8, a7, s8
36:               sra          a1, t4, a1
37:               xor          a2, t2, a0
                  xor          ra, a1, s9
                  slti         zero, s2, -921
                  auipc        s11, 919250
41:               and          t4, t2, s5
                  blt          s4, s8, 51f
                  bltu         a6, a4, 63f
                  add          a7, a2, sp
                  andi         t4, t4, 653
46:               andi         s9, tp, -833
                  srai         a4, t2, 23
                  bne          s9, t3, 54f
                  sltiu        s7, s11, -85
                  ori          s7, a6, -66
51:               blt          a2, s7, 57f
                  ori          s6, s1, -1144
                  slt          t1, t2, t5
54:               slti         a2, s8, -1335
                  bge          t6, gp, 61f
                  slt          a7, a7, s5
57:               addi         s5, t3, 1412
                  srai         gp, a5, 11
                  xori         a2, t5, -1417
                  andi         a1, a7, 1495
61:               blt          zero, s10, 74f
                  nop
63:               sub          s5, s8, t6
                  blt          s3, ra, 65f
65:               add          zero, t6, s1
                  sra          t6, s8, a3
                  andi         a4, t0, -892
                  bgeu         s9, s0, 70f
                  lui          gp, 456269
70:               sub          t0, a7, a2
                  xor          t0, s6, t4
                  sub          s5, a0, s0
                  slli         a7, a2, 28
74:               slti         s6, s2, 1089
                  slt          a7, t4, zero
                  srl          s4, ra, s7
                  slli         t3, s10, 25
                  addi         ra, tp, 446
                  srai         t0, a5, 3
                  nop
                  sub          t4, s10, s9
                  sltiu        s3, s10, -177
                  add          s4, t0, t6
                  xor          s5, t0, s10
                  addi         s11, t5, 1219
                  sra          t3, gp, ra
                  slli         sp, s7, 23
                  bne          t6, t3, 94f
                  ori          s5, s9, -403
                  slti         s2, t2, 1977
                  slt          t0, tp, a1
                  lui          s11, 1041583
                  bltu         t6, s7, 102f
94:               addi         s0, t3, 1267
                  and          a7, a1, t2
                  bgeu         s7, s10, 103f
                  or           a0, s9, s5
                  sub          a1, zero, s5
                  auipc        s4, 665568
                  add          a0, sp, a2
                  beq          t4, s7, 102f
102:              bltu         t2, s6, 117f
103:              blt          s0, a5, 121f
                  bne          tp, a5, 116f
                  sra          a6, t6, tp
                  sra          t5, a6, s7
                  nop
                  slt          tp, tp, a5
                  sub          t0, tp, s1
                  lui          s11, 821632
                  slti         a1, a0, 378
                  sub          s2, a2, s4
                  sll          tp, s2, s2
                  srai         a6, gp, 10
                  blt          t1, s2, 124f
116:              sub          s0, sp, a1
117:              nop
                  slti         t0, t5, 439
                  lui          zero, 388637
                  srli         a1, s6, 25
121:              beq          s10, s4, 124f
                  beq          s10, a1, 124f
                  addi         t4, a3, 2008
124:              sltu         tp, a5, a0
                  nop
                  srli         a6, a4, 12
                  lw           ra, 4(a3)
                  sub          a7, t0, t4
                  sltu         s5, s9, a4
                  addi         a3, a3, 56
                  auipc        t1, 364356
                  xor          s8, s5, s11
244:              addi x2, x1, 1
244:              jalr x2, x2, 0
sub_1:            bgeu         a0, a0, sub_1_stack_p
                  lui          s3, 399302
                  andi         s4, s2, -1727
                  sra          t5, t4, s2
sub_1_stack_p:    addi         a3, a3, -12
                  xor          t6, t1, tp
                  and          s11, t3, tp
                  sw           ra, 4(a3)
                  lui          s11, 213502
                  sltiu        tp, s4, -1114
                  ori          s5, a6, -961
                  srli         zero, ra, 27
                  la           sp, region_1+1875 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a6, -2(sp)
                  sb           ra, -2(sp)
                  lbu          a0, -2(sp)
                  sb           s10, -2(sp)
                  lbu          t0, -2(sp)
                  sb           s11, -2(sp)
                  lbu          a6, -2(sp)
                  lb           ra, -2(sp)
                  sb           gp, -2(sp)
                  slt          t5, s9, a5
                  sb           a7, -2(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           s9, region_1+1002 #start load_store_instr_stream_0
                  la           s8, region_1+1455 #start load_store_instr_stream_1
                  lbu          zero, -5(s8)
                  sb           s5, -237(s9)
                  sb           a0, 96(s9)
                  lb           a5, -5(s8)
                  lbu          t4, 65(s9)
                  sb           a7, -5(s8)
                  lb           t5, -54(s9)
                  lh           s2, -134(s9)
                  lb           tp, 6(s8)
                  lb           s4, -163(s9)
                  lb           gp, -81(s9)
                  sh           a1, -13(s8) #end load_store_instr_stream_1
                  lb           s5, 211(s9)
                  lb           s1, 14(s9) #end load_store_instr_stream_0
                  la           s7, region_1+43 #start riscv_load_store_rand_instr_stream_4
                  xor          t6, a1, a7
                  sh           s6, -1(s7)
                  lb           s2, 15(s7)
                  lb           t3, -14(s7)
                  xor          t6, tp, s2
                  sll          s1, a2, a2
                  sb           t3, 13(s7)
                  lbu          gp, -4(s7)
                  sll          s3, a4, a3
                  srli         a5, a1, 3
                  slt          s3, s2, t0
                  sb           s7, -12(s7)
                  xor          t1, s0, t2
                  sll          s9, s8, a6
                  and          s6, ra, ra
                  sb           tp, -10(s7)
                  sb           s1, 13(s7)
                  nop
                  lbu          s4, 2(s7)
                  sw           s9, 13(s7)
                  srli         a1, s9, 6
                  addi         zero, a7, 1048
                  add          t1, s5, zero
                  sll          a4, a0, s9
                  lbu          ra, 6(s7)
                  and          t4, t6, a0
                  lh           s3, -7(s7)
                  srl          a1, a1, s2
                  ori          s3, s4, 2046
                  sb           a4, 9(s7)
                  ori          s2, s2, -1730
                  sb           a3, -1(s7)
                  lbu          t1, 3(s7)
                  lb           s9, 4(s7)
                  lbu          s4, -14(s7)
                  lhu          t6, -1(s7)
                  sub          s5, zero, s1
                  lbu          t3, -4(s7)
                  nop
                  sb           t2, 12(s7)
                  lhu          s0, 13(s7) #end riscv_load_store_rand_instr_stream_4
                  la           s8, region_1+1593 #start load_store_instr_stream_0
                  la           s9, region_1+1541 #start load_store_instr_stream_1
                  lb           a2, -172(s8)
                  lb           t0, 326(s8)
                  sb           s11, -181(s9)
                  sb           t3, 105(s9)
                  lw           a1, -637(s8)
                  sb           s2, 26(s9)
                  sb           s9, -46(s9)
                  lbu          s6, 327(s8)
                  lw           t4, -1337(s8)
                  sw           s11, -113(s9)
                  lb           t0, -50(s9)
                  lbu          ra, -664(s8)
                  lbu          a4, -199(s9)
                  lbu          s2, -76(s8)
                  lhu          gp, 39(s9)
                  lb           a4, 193(s9) #end load_store_instr_stream_1
                  lh           a0, -111(s8)
                  lbu          a4, -164(s8) #end load_store_instr_stream_0
                  la           sp, region_0+1488 #start riscv_load_store_rand_instr_stream_2
                  ori          a5, a3, -802
                  sb           s9, -137(sp)
                  slti         s11, a6, -1153
                  and          t0, a7, s11
                  slli         tp, s5, 15
                  lbu          t6, -805(sp)
                  nop
                  sub          t4, a3, tp
                  lbu          t5, -242(sp)
                  slli         s0, s9, 27
                  nop
                  lhu          t3, 38(sp)
                  lbu          a7, -1021(sp)
                  sb           s10, -1015(sp)
                  slt          s8, s3, s7
                  lb           tp, -829(sp)
                  lb           s8, 482(sp)
                  xor          a6, s11, a5
                  sltiu        a1, s2, 213
                  sb           ra, 90(sp)
                  srai         s4, t5, 14
                  sb           s11, 48(sp)
                  lui          s1, 616547
                  sltiu        a7, tp, -512
                  sb           t1, 9(sp)
                  sb           a7, -1473(sp)
                  lb           s6, -1235(sp)
                  lhu          a4, 222(sp)
                  sw           gp, -572(sp)
                  sltiu        s6, gp, -642
                  sb           s8, -1364(sp)
                  srl          s1, s8, s0
                  lbu          t0, 181(sp)
                  lb           t0, -1228(sp)
                  lbu          s7, -1398(sp)
                  lbu          s7, 221(sp)
                  lbu          s8, -1275(sp)
                  lb           a1, 302(sp)
                  addi         a7, s3, -629
                  xori         a2, gp, 2023
                  lbu          s6, 90(sp)
                  and          a4, s8, s0
                  lw           t4, -1232(sp)
                  sb           a2, -527(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_0+969 #start riscv_load_store_hazard_instr_stream_4
                  lbu          t3, -15(s5)
                  nop
                  lhu          s9, -15(s5)
                  sb           t6, -8(s5)
                  sb           t1, -10(s5)
                  ori          gp, t0, 1382
                  sb           zero, -10(s5)
                  sb           a3, -10(s5)
                  sb           s10, 0(s5)
                  lbu          ra, 4(s5)
                  lbu          a7, 4(s5)
                  xori         tp, s3, 591
                  lhu          a2, -11(s5)
                  sb           s2, -12(s5)
                  lui          s2, 94691
                  slli         s3, s4, 29
                  xori         s6, a3, -165
                  lb           s11, -1(s5) #end riscv_load_store_hazard_instr_stream_4
                  la           s4, region_1+1150 #start load_store_instr_stream_0
                  la           a6, region_1+322 #start load_store_instr_stream_3
                  la           a5, region_1+742 #start load_store_instr_stream_4
                  la           t3, region_1+1528 #start load_store_instr_stream_1
                  lb           s1, 693(a5)
                  lbu          s0, -103(a5)
                  lh           s0, 6(s4)
                  lhu          s3, -8(s4)
                  la           s7, region_1+1832 #start load_store_instr_stream_2
                  lbu          t5, -398(a5)
                  sh           t2, 162(t3)
                  lb           t6, 116(a5)
                  lb           t4, -272(a6)
                  lbu          t5, -193(t3)
                  sb           ra, 418(a6)
                  lbu          s3, 1582(a6)
                  sh           t5, -2(s7)
                  lbu          a0, 119(t3)
                  sb           s9, 1415(a6)
                  sb           s10, 11(s7)
                  lb           sp, -9(s4)
                  lw           s8, 120(t3)
                  lb           s11, 3(s7)
                  lb           tp, -9(s4)
                  lbu          s8, -474(a5)
                  sb           a6, -5(s4)
                  lw           s9, 902(a6)
                  lb           s5, -11(s7)
                  sh           t0, 1230(a5)
                  lbu          a1, 853(a6)
                  lbu          s2, 124(t3)
                  sb           s7, -48(t3)
                  sb           a7, -3(s7)
                  sb           a3, 153(a5)
                  lbu          s11, 1055(a6)
                  lb           a2, 3(s7) #end load_store_instr_stream_2
                  lh           s2, -2(s4)
                  sb           s7, 620(a5) #end load_store_instr_stream_4
                  sb           a4, 111(t3)
                  lhu          ra, -180(a6)
                  sh           a7, 16(s4)
                  lw           s2, 1206(a6) #end load_store_instr_stream_3
                  lbu          s2, 15(s4)
                  lbu          gp, -119(t3)
                  lb           s3, -9(s4)
                  lbu          s11, 131(t3) #end load_store_instr_stream_1
                  lbu          a7, 11(s4) #end load_store_instr_stream_0
                  la           sp, region_1+783 #start riscv_load_store_rand_instr_stream_0
                  add          t6, a5, s10
                  sub          a7, s9, t4
                  sb           s4, 312(sp)
                  lhu          a5, 1035(sp)
                  lb           tp, 781(sp)
                  lbu          s11, -356(sp)
                  lui          ra, 484583
                  lb           s6, 774(sp)
                  xori         a6, s4, 931
                  lb           s6, -738(sp)
                  lb           a7, -478(sp)
                  lui          s5, 316801
                  sh           a1, 333(sp)
                  sb           gp, 809(sp)
                  and          ra, a2, a6
                  or           s5, ra, t3
                  sb           s5, -744(sp)
                  sh           s8, -211(sp)
                  auipc        t6, 835505
                  nop
                  lhu          s8, 1203(sp)
                  lbu          s2, 552(sp)
                  auipc        gp, 977336
                  lb           s5, -418(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_1+163 #start load_store_instr_stream_3
                  la           t3, region_1+1070 #start load_store_instr_stream_4
                  lb           a6, -15(a7)
                  la           tp, region_1+1310 #start load_store_instr_stream_0
                  la           ra, region_1+138 #start load_store_instr_stream_2
                  la           s4, region_1+165 #start load_store_instr_stream_1
                  lb           s5, 8(a7)
                  lb           s6, 4(s4)
                  sw           s4, -62(ra)
                  lh           a2, 3(s4)
                  lb           t4, 14(tp)
                  lbu          s2, 1000(ra)
                  lb           s3, 5(tp)
                  lb           s0, 11(tp)
                  lb           s7, 16(tp)
                  sb           t5, 12(tp)
                  lb           s1, 7(t3)
                  lb           zero, -14(a7)
                  sb           s9, 1339(ra)
                  sh           s10, -5(a7)
                  sb           a0, 4(tp)
                  sh           a6, 15(a7)
                  lb           a5, 8(s4)
                  lb           a1, 5(t3)
                  lb           zero, 1(t3)
                  sw           t4, -1(s4)
                  lbu          zero, 3(tp)
                  lb           s0, 2(a7)
                  lbu          s7, 7(t3)
                  sb           s1, 1055(ra)
                  lhu          gp, 3(a7)
                  lhu          a5, 5(s4)
                  lhu          t4, 10(t3)
                  lb           s8, 16(a7)
                  sh           a7, 14(t3)
                  lb           a5, 12(a7) #end load_store_instr_stream_3
                  lbu          s0, -14(tp)
                  lbu          zero, 1286(ra)
                  lb           s5, 3(tp)
                  sb           gp, -11(s4) #end load_store_instr_stream_1
                  lhu          a0, 1560(ra) #end load_store_instr_stream_2
                  lbu          t1, 7(t3) #end load_store_instr_stream_4
                  sb           s8, -5(tp) #end load_store_instr_stream_0
                  la           t4, region_0+1365 #start load_store_instr_stream_0
                  lbu          zero, -10(t4)
                  la           a2, region_0+878 #start load_store_instr_stream_2
                  la           t5, region_0+144 #start load_store_instr_stream_1
                  lh           sp, -102(t5)
                  lbu          a4, 5(t4)
                  lb           a7, 25(t5)
                  lbu          tp, -11(t4)
                  sb           s1, 0(t4)
                  sb           a0, -45(a2)
                  sb           t1, -78(t5)
                  sw           a1, -9(t4)
                  sb           t4, -61(a2)
                  lw           s0, 50(a2)
                  lbu          a7, 100(t5)
                  sb           t2, 5(t4)
                  lw           s0, 136(t5)
                  lh           s9, -20(a2)
                  sh           s8, 20(a2)
                  lh           t0, 46(a2) #end load_store_instr_stream_2
                  lbu          t3, 129(t5) #end load_store_instr_stream_1
                  sb           a5, 1(t4) #end load_store_instr_stream_0
                  la           t3, region_0+221 #start riscv_load_store_hazard_instr_stream_3
                  sb           t3, 62(t3)
                  sb           s5, -52(t3)
                  lb           t4, -16(t3)
                  lb           t4, -16(t3)
                  sb           t4, -16(t3)
                  slti         s4, s9, 798
                  lb           tp, 62(t3)
                  lhu          s6, -7(t3)
                  lhu          a5, -7(t3)
                  lbu          t4, 10(t3)
                  lb           s8, -10(t3)
                  sb           t3, -10(t3)
                  lb           a7, 4(t3)
                  sb           s5, 4(t3)
                  sb           a2, 4(t3)
                  lb           gp, 4(t3)
                  slli         a7, tp, 3
                  srai         s6, s6, 0
                  xori         s2, gp, -262
                  sb           t0, -22(t3)
                  lb           a7, -47(t3)
                  lb           s3, -60(t3)
                  lb           s6, -60(t3)
                  lb           s0, -52(t3) #end riscv_load_store_hazard_instr_stream_3
                  la           a7, region_0+637 #start riscv_load_store_hazard_instr_stream_0
                  lbu          a4, 12(a7)
                  lb           t0, 12(a7)
                  slli         gp, s9, 31
                  sw           a2, -13(a7)
                  lb           zero, 3(a7)
                  lhu          s6, -7(a7)
                  ori          s7, zero, -1666
                  lbu          s4, 16(a7)
                  lbu          s8, 16(a7)
                  sb           gp, 16(a7)
                  lb           sp, -12(a7)
                  lb           s7, -8(a7)
                  lbu          a0, -2(a7)
                  lbu          s9, -2(a7)
                  lbu          s1, -2(a7)
                  xor          s4, s7, s8
                  sb           s9, -2(a7)
                  lbu          s11, -14(a7)
                  lh           a4, 15(a7)
                  slt          a4, a7, s6
                  sltiu        a1, zero, 798
                  slti         gp, t6, -1457
                  sw           a3, 15(a7)
                  xor          a2, s1, zero
                  sb           a2, 15(a7)
                  lh           s9, 13(a7) #end riscv_load_store_hazard_instr_stream_0
                  sltiu        s1, s2, -424
                  sub          sp, s1, tp
                  sltu         t5, s10, s1
                  bge          a6, t1, 14f
                  sub          sp, s5, t6
                  sra          a0, s9, a5
                  srli         s5, s9, 15
                  and          zero, t3, a4
                  xori         ra, s6, -1918
                  add          a0, s3, s6
                  srli         s6, t3, 2
                  bltu         zero, gp, 21f
                  bge          a6, a1, 21f
                  or           t1, a6, a6
14:               sub          t3, t5, t6
                  and          a1, t6, t5
                  sra          t0, a5, s8
                  slli         s0, t1, 11
                  and          a1, s1, t4
                  add          a4, a7, a4
                  bltu         a0, a7, 24f
21:               srl          s1, a6, s4
                  auipc        a2, 47081
                  lui          t6, 449227
24:               auipc        s6, 538243
                  sub          t5, a4, s0
                  andi         a6, a0, -961
                  or           tp, a2, s9
                  bne          s6, s1, 33f
                  slt          gp, s6, a2
                  bge          s2, gp, 39f
                  ori          t4, s8, -538
                  srl          s9, ra, t3
33:               slli         a4, a3, 23
                  slti         t0, a0, 1359
                  xor          t3, s5, zero
                  slti         tp, s4, -1244
                  xor          zero, t3, sp
                  auipc        a7, 439889
39:               bne          s11, s3, 54f
                  auipc        t3, 973585
                  xor          s3, t2, s5
                  srai         s0, a6, 7
                  srl          zero, a4, s9
                  or           s0, s2, s7
                  sll          s2, s8, a1
                  sll          t1, gp, t4
                  auipc        s3, 909174
                  slli         ra, s0, 9
                  sltiu        t5, a4, 128
                  sra          s11, a7, a0
                  srai         t5, s4, 13
                  add          s1, s8, s7
                  sll          a7, s8, s0
54:               sltu         s4, s3, s1
                  sll          a0, a0, t6
                  or           a0, s1, t5
                  xori         s6, a7, -1971
                  sltiu        a1, s7, 296
                  beq          s6, s11, 71f
                  sltiu        tp, a3, 1181
                  srli         s11, s8, 17
                  sltiu        s2, a3, -1494
                  sub          gp, a6, t1
                  sra          s3, a0, t6
                  and          t6, tp, s2
                  slt          s0, a5, s6
                  sub          s6, s4, a6
                  nop
                  xor          s11, sp, s4
                  srai         s0, s11, 22
71:               auipc        a7, 661169
                  ori          t3, a2, -304
                  bgeu         s9, a7, 92f
                  andi         s4, a1, 1195
                  lui          s1, 789704
                  bltu         t5, a0, 87f
                  auipc        s2, 248141
                  srli         s1, t5, 0
                  or           t4, s3, a5
                  xor          zero, a5, a7
                  sll          s11, s1, s7
                  beq          a1, s10, 90f
                  bne          a4, s8, 90f
                  slli         t3, tp, 5
                  srl          t6, s2, sp
                  slt          s2, gp, t1
87:               slt          t3, s2, a4
                  srai         t6, s8, 17
                  auipc        s8, 71365
90:               bgeu         sp, t4, 107f
                  blt          t5, t4, 94f
92:               bne          zero, s10, 95f
                  andi         a4, s5, -132
94:               bne          a3, t5, 99f
95:               bltu         t6, t2, 97f
                  sra          s7, gp, s10
97:               slti         s0, t3, 806
                  add          a4, a4, zero
99:               nop
                  bgeu         s0, t0, 101f
101:              slti         t3, t6, 83
                  xori         s6, t6, -1285
                  sll          zero, s2, a4
                  ori          s1, t0, 1855
                  srl          s7, tp, s2
                  and          s4, a6, s1
107:              srli         s8, a1, 20
                  slt          s1, ra, a5
                  addi         a4, sp, 1459
                  srl          a2, s9, s7
                  slti         s9, a0, -264
                  or           tp, s1, a3
                  bne          a1, t3, 125f
                  beq          t4, ra, 125f
                  xori         s11, s5, -1392
                  and          s11, tp, a4
                  blt          s2, t4, 122f
                  add          ra, s1, gp
                  sltiu        a7, s6, -815
                  bne          t2, s2, 124f
                  ori          s3, s9, -327
122:              slli         a1, s4, 4
                  slti         tp, t1, 1192
124:              sra          t4, gp, s8
125:              andi         t1, t2, 411
                  blt          gp, t4, 128f
                  bne          s9, s9, 144f
128:              bge          tp, s1, 132f
                  sltu         s8, t6, s9
                  slli         s2, a2, 16
                  sll          t4, t4, tp
132:              nop
                  lui          gp, 220144
                  and          s4, s11, a6
                  sltu         a5, t4, gp
                  ori          s0, t6, -2025
                  andi         s2, s6, -147
                  sra          a2, s6, s2
                  sub          a0, a1, a4
                  sra          s4, s11, a2
                  or           t1, a2, t2
                  srai         a1, t6, 26
                  ori          a7, s4, -1831
144:              bgeu         s11, s5, 147f
                  xori         s11, s3, 571
                  sltiu        t0, sp, -549
147:              ori          s4, a2, 773
                  srli         s0, a4, 9
                  sltu         s11, s1, s0
                  lui          s5, 403670
                  addi         s8, a6, 1747
                  bgeu         t3, s10, 153f
153:              add          t3, s8, s6
                  andi         sp, s5, -1265
                  sltu         s5, s2, a5
                  slti         t6, t1, -1835
                  la           sp, region_1+129 #start riscv_load_store_hazard_instr_stream_2
                  slt          s1, a2, t2
                  lb           a2, 950(sp)
                  andi         gp, t6, 1816
                  sb           a6, 1724(sp)
                  auipc        t0, 485806
                  sb           s10, 1724(sp)
                  sw           a1, 591(sp)
                  sh           t2, 1129(sp)
                  lbu          s9, 1388(sp)
                  ori          s8, t4, 26
                  sra          s6, s2, s6
                  sb           s9, 1388(sp)
                  sb           tp, 119(sp)
                  sltiu        s6, t2, 837
                  lb           a7, 1824(sp)
                  sb           s8, 1788(sp)
                  addi         s11, a1, -1482
                  lb           t1, 1788(sp)
                  sh           t5, 637(sp)
                  lb           s9, 940(sp) #end riscv_load_store_hazard_instr_stream_2
                  sll          t4, t5, t4
                  bne          a5, sp, 168f
                  slli         s3, ra, 28
                  ori          s6, t0, 1915
                  beq          t0, t2, 174f
                  xori         t6, ra, -1942
                  ori          s0, t3, 1609
                  slt          zero, s11, ra
                  sll          s1, a7, s4
                  sltiu        gp, a4, -848
                  slt          s11, tp, gp
168:              xori         s0, a5, 1060
                  sra          s11, s1, a2
                  ori          a5, t4, 1138
                  sll          a7, gp, a0
                  srl          t3, s0, tp
                  and          t4, s4, s0
174:              srli         s5, t6, 6
                  auipc        a6, 443205
                  bne          ra, s0, 179f
                  slti         sp, a4, -1196
                  bne          t0, t2, 180f
179:              xori         s1, s2, 741
180:              ori          s9, s10, -1389
                  sra          s2, a3, a5
                  slti         s6, ra, -765
                  sub          zero, a0, a1
                  sltu         s6, s11, a3
                  slti         t3, ra, 957
                  andi         a0, t3, -1685
                  slli         gp, a6, 8
                  srli         a7, s4, 5
                  bge          t6, t6, sub_1_j2 #branch to jump instr
                  addi         s8, a4, 1637
                  srli         s11, a0, 13
                  add          s8, tp, a7
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  srli         a7, a7, 10
                  addi         s9, s0, 164
                  or           a5, a5, tp
                  slt          t0, s1, s4
                  bge          s2, zero, 193f
                  add          s3, s1, s11
                  xor          t6, s6, a4
193:              slti         t1, a7, -1859
                  sll          s8, s9, a7
                  bgeu         t6, t5, 202f
                  slti         a5, s6, 909
                  bge          sp, tp, 200f
                  sltiu        ra, t6, 1869
                  and          s2, t2, a2
200:              and          tp, s8, t4
                  sra          ra, sp, a7
202:              srli         s4, s11, 8
                  and          ra, t6, s2
                  beq          a1, sp, 205f
205:              bltu         zero, s3, 210f
                  bne          s7, t1, 223f
                  sra          a0, ra, ra
                  bltu         s5, t6, 219f
                  and          t1, a4, a3
210:              sra          t1, t2, a6
                  bge          a5, zero, 223f
                  ori          t3, sp, 1458
                  srl          sp, t1, s10
                  add          t5, s10, s0
                  add          ra, s2, s2
                  sltu         s7, t6, s8
                  beq          t1, s6, 221f
                  xor          t6, t1, s3
219:              blt          s1, a2, 220f
220:              bltu         a7, sp, 233f
221:              lui          s1, 412377
                  bltu         ra, s7, 230f
223:              bne          a4, ra, 242f
                  add          a4, a5, s4
                  andi         s0, t6, 1530
                  nop
                  xori         tp, a0, 974
                  bgeu         s9, a6, 238f
                  nop
230:              lui          t4, 319145
                  blt          t1, a2, 246f
                  andi         ra, ra, 276
233:              slt          zero, t6, a1
                  xori         t0, a5, 1851
                  xor          s3, t0, a0
                  sub          a7, s0, s8
                  addi         sp, t6, 1775
238:              and          s5, t3, gp
                  sltiu        s0, t0, -1154
                  sltiu        t0, a5, -64
                  slti         a0, s9, -1728
242:              blt          s10, tp, 252f
                  sub          s4, tp, t1
                  slti         t5, s4, 1598
                  xor          s4, s10, s11
246:              sltiu        ra, tp, 81
                  bne          t2, zero, 250f
                  nop
                  or           t5, t4, t6
250:              bgeu         s3, t2, 262f
                  slt          s5, a2, a1
252:              bge          s2, t1, 257f
                  slt          a6, a5, zero
                  addi         a6, ra, -1299
                  xor          zero, s4, s7
                  xori         a1, s5, 813
257:              bgeu         s10, s10, 268f
                  srl          s9, a5, t3
                  srli         zero, a1, 21
                  sltiu        a5, s7, 1165
                  beq          s11, zero, 278f
262:              bge          t4, s8, 267f
                  add          s4, s11, t3
                  bne          s5, t6, 268f
                  sltu         a2, s5, zero
                  auipc        a1, 315971
267:              and          sp, t2, s3
268:              bge          zero, s11, 277f
                  slti         s9, a4, -588
                  slti         gp, s8, 1
                  andi         a2, s11, -1597
                  sra          a5, s2, s0
                  ori          a6, ra, 914
                  beq          s2, sp, 277f
                  auipc        sp, 1035510
                  blt          a7, gp, 287f
277:              srli         t4, a5, 22
278:              ori          zero, s2, -1356
                  auipc        t3, 188742
                  ori          zero, s1, 1055
                  srli         s3, sp, 28
                  or           gp, s10, s2
                  sltiu        tp, a1, -1648
                  or           sp, sp, s8
                  sll          t6, a3, s6
                  srai         t5, t0, 11
287:              or           t4, a3, tp
                  blt          t1, sp, 292f
                  slti         t0, s9, 1855
                  sltu         s9, s5, t0
                  or           t6, s5, a7
292:              nop
                  beq          t2, s9, 302f
                  addi         a7, sp, 339
                  srai         s9, a6, 4
                  nop
                  or           t4, s6, a6
                  bgeu         a4, a1, 300f
                  slt          s2, a2, gp
300:              sll          t0, a2, s9
                  slli         sp, a0, 29
302:              srli         s7, a7, 0
                  sltiu        zero, sp, -16
                  beq          s8, a5, 323f
                  nop
                  sra          s3, ra, s9
                  slt          tp, s9, s8
                  bne          t2, t1, 319f
                  bgeu         s3, t3, 322f
                  srai         a6, a2, 0
                  andi         gp, t0, -903
                  sll          t5, s8, s10
                  and          t5, a1, s3
                  bltu         a4, s1, 322f
                  slti         s5, s8, 1440
                  bgeu         a2, t2, 321f
                  andi         s5, s6, 1177
                  srai         s0, sp, 13
319:              srl          zero, a1, s4
                  auipc        a7, 91523
321:              slt          t0, t1, s4
322:              addi         a5, a3, 805
323:              ori          tp, s2, -836
                  addi         a1, a3, 993
                  auipc        s6, 216854
                  beq          s2, s6, 336f
                  bne          s0, s6, 332f
                  andi         a7, tp, -525
                  bne          a0, s10, 341f
                  blt          t2, s5, 341f
                  bge          s6, ra, 335f
332:              sub          sp, s7, s4
                  andi         s4, s7, 856
                  auipc        t5, 199856
335:              auipc        s11, 791729
336:              and          a6, a0, tp
                  srl          s3, s9, a6
                  xori         s0, s11, 292
                  slti         a7, s7, -1403
                  blt          s9, a5, 343f
341:              or           s0, t1, a3
                  slti         sp, a0, 1291
343:              bge          s6, s7, 346f
                  bltu         s2, ra, 353f
                  bltu         t6, s2, 347f
346:              beq          s9, t1, 363f
347:              ori          s11, s3, -259
                  add          gp, s10, a6
                  addi         t0, zero, -753
                  and          s1, s10, s10
                  sltiu        t5, zero, -1004
                  bgeu         t4, t3, 354f
353:              or           tp, ra, t2
                  la           a7, region_1+229 #start riscv_load_store_rand_instr_stream_1
                  lbu          t1, 107(a7)
                  srl          t5, a1, s1
                  lb           s0, 230(a7)
                  lbu          sp, 15(a7)
                  or           t4, s4, s6
                  sh           s1, 171(a7)
                  srl          s0, gp, s10
                  srli         gp, t1, 22
                  lbu          a0, -68(a7)
                  and          zero, t3, a3
                  nop
                  sub          t3, s7, a6
                  addi         gp, s5, 1242
                  srai         t4, s11, 19
                  sltiu        s3, a1, 1434
                  nop
                  slt          s2, s6, gp
                  srai         a4, s0, 20
                  or           s8, gp, a7
                  slti         s3, a4, -1209
                  nop
                  slli         s8, t2, 14
                  sra          s4, a3, sp
                  lbu          s2, 102(a7)
                  sh           s11, -27(a7)
                  lb           a6, -200(a7)
                  and          a0, s2, a4
                  srai         s5, t1, 31
                  lb           t4, 148(a7)
                  sh           s7, -203(a7)
                  sra          s4, zero, gp
                  or           a1, t3, a3
                  slti         ra, s0, 1072
                  lb           s9, -205(a7)
                  xor          gp, t4, t1
                  ori          s8, t0, 1926
                  lb           a0, -156(a7)
                  lbu          a0, 66(a7)
                  andi         t4, s4, -121
                  lbu          t3, -102(a7)
                  lhu          s2, -147(a7) #end riscv_load_store_rand_instr_stream_1
354:              nop
                  blt          s1, a0, 372f
                  bgeu         s11, t3, 363f
                  or           t6, s4, a1
                  andi         a2, s10, -808
                  sltu         gp, s5, t1
                  beq          gp, s11, 363f
                  xor          a5, s2, s5
                  srai         tp, s1, 10
363:              sltiu        s3, tp, 612
                  bge          a6, s4, 367f
                  bgeu         s5, t6, 380f
                  xor          s3, a6, s10
367:              sra          s1, s4, gp
                  addi         a6, a3, 1954
                  sra          s11, t0, t6
                  la           sp, region_0+1050 #start riscv_load_store_rand_instr_stream_3
                  or           t6, a3, a1
                  xor          a6, ra, t5
                  addi         tp, s9, 803
                  ori          s7, s8, -907
                  andi         t4, s5, 1051
                  lui          a5, 540605
                  lb           s2, -14(sp)
                  or           s3, a4, a7
                  lbu          a1, 1(sp)
                  and          s0, a2, a2
                  sub          s2, t2, s6
                  sh           a2, 32(sp)
                  sltiu        a5, s6, 508
                  addi         s11, s2, -1868
                  sw           s3, 18(sp)
                  lbu          zero, -43(sp)
                  srli         a5, s4, 13
                  or           s6, sp, t3
                  sltu         s0, ra, s3
                  srai         s3, t6, 10
                  lhu          t1, -36(sp)
                  sh           t4, 50(sp)
                  lbu          ra, -11(sp)
                  add          a7, a7, s8
                  sltu         s3, t3, sp
                  ori          a4, s8, -1150
                  lhu          s11, 0(sp)
                  xori         s8, ra, 1933
                  sb           s11, -57(sp)
                  sll          s6, ra, a0
                  or           t3, s7, s10
                  lb           a6, 4(sp)
                  xori         s2, s5, 1542
                  addi         s11, t1, 864
                  lb           a1, -35(sp) #end riscv_load_store_rand_instr_stream_3
                  slti         a2, t1, 762
                  and          t0, t3, a7
372:              srli         t1, a6, 2
                  ori          sp, s10, -1308
                  addi         s2, s3, 730
                  lui          a5, 98962
                  sltiu        s2, s10, -1666
                  slti         t3, a4, 904
                  lui          a5, 296146
                  sra          a2, t3, t4
380:              addi         t1, t1, -517
                  sltu         t0, a1, s2
                  andi         a7, s8, -1498
                  ori          s3, zero, 1486
                  lui          s7, 857765
                  sltu         s3, t4, tp
                  xori         a7, a5, 77
                  sll          s5, t2, a2
                  slt          s4, s5, s2
                  srli         s7, s0, 20
                  slli         s11, a2, 25
                  nop
                  and          ra, s4, a2
                  blt          ra, s4, 404f
                  srl          s1, a3, t6
                  lui          s9, 797790
                  slt          a2, a5, t5
                  sub          s3, s1, s4
                  addi         a1, s7, 1396
                  addi         gp, s2, 478
                  and          t4, t1, s1
                  and          t1, tp, a4
                  and          s8, t2, t5
                  xori         gp, a4, -452
404:              bne          a3, s3, 408f
                  slt          s7, sp, a5
                  srl          ra, t5, t1
                  and          sp, a4, s7
408:              slti         s9, t2, 642
                  sub          t0, sp, a6
                  sra          t0, sp, s1
                  xor          t1, s1, s1
                  beq          t2, t0, 417f
                  sltiu        tp, a2, 1448
                  blt          t4, t3, 426f
                  bne          a2, ra, 419f
                  and          a0, t0, a5
417:              and          s9, s4, s8
                  srli         sp, t2, 11
419:              slli         a5, s1, 20
                  srai         t0, s5, 9
                  slti         t6, t0, 616
                  slli         s9, a4, 30
                  ori          a7, s4, -1138
                  auipc        s7, 8335
                  xor          t5, s2, t4
426:              blt          a1, s9, 427f
427:              sll          s9, s7, t2
                  addi         a7, a3, 1410
                  srl          s2, s7, t0
                  and          a5, t0, s11
                  srl          s9, zero, s1
                  auipc        s6, 996867
                  or           a7, t2, a3
                  sra          s8, s8, s1
                  slt          s5, zero, s7
                  srl          a0, s3, a3
                  slti         ra, s8, -882
                  blt          s0, a7, 439f
439:              sra          a7, a2, a2
                  nop
                  srai         s1, zero, 10
                  bge          t2, s5, 451f
                  sltu         gp, s9, s8
                  addi         t6, sp, 1167
                  srli         a1, t2, 25
                  bne          s8, t3, 456f
                  and          a2, s4, a2
                  srli         s8, a1, 5
                  sll          t0, s2, a5
                  ori          a2, a4, 95
451:              bge          s2, t5, 453f
                  bgeu         s10, s9, 461f
453:              addi         s3, zero, 1110
                  addi         s5, a7, 1608
                  addi         a2, tp, -774
456:              and          s9, s0, t5
                  slt          a2, a5, t3
                  srai         sp, s3, 7
                  sub          s0, t6, ra
                  xor          t4, s10, zero
461:              bgeu         a5, a4, 462f
462:              bne          a0, gp, 465f
                  bne          s10, t1, 482f
                  slti         a7, s6, 1158
465:              bgeu         sp, s8, 470f
                  lui          sp, 624788
                  bne          a0, t5, 484f
                  slli         sp, ra, 11
                  slt          t0, t1, a4
470:              beq          s3, s10, 479f
                  srli         a1, a5, 13
                  sltu         s9, s10, t4
                  blt          t5, a6, 486f
                  sub          t6, s0, s7
                  ori          s11, tp, -479
                  beq          a1, sp, 480f
                  xor          tp, t2, t5
                  slt          a7, a0, a7
479:              and          gp, a5, s7
480:              xor          tp, s2, s1
                  sltu         zero, t0, gp
482:              slt          s4, t3, t5
                  xori         tp, s9, -1744
484:              bge          a1, ra, 487f
                  srli         a1, a4, 29
486:              lui          a5, 380145
487:              bltu         t6, ra, 490f
                  bgeu         a2, a0, 490f
                  bge          s0, t0, 496f
490:              srl          a5, s1, s10
                  andi         t5, s2, -1221
                  lui          a6, 827987
                  slli         s3, t3, 31
                  slt          s4, s1, t5
                  sltu         a2, s6, s10
496:              bltu         t3, s4, 503f
                  slt          a4, ra, s5
                  bne          s0, s9, 503f
                  nop
                  auipc        s7, 637722
                  and          a5, t4, sp
                  bltu         a1, a5, 503f
503:              sltiu        a7, a1, -1902
                  srli         a0, a0, 31
                  srai         s2, a7, 31
                  lw           ra, 4(a3)
                  addi         a3, a3, 12
                  lui          sp, 251836
971:              addi x28, x1, 0
971:              jalr x28, x28, 0
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x7, x13, zero
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x22, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x22, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x22, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x22, x24, ecall_handler
                  li x24, 0x1
                  beq x22, x24, instr_fault_handler
                  li x24, 0x5
                  beq x22, x24, load_fault_handler
                  li x24, 0x7
                  beq x22, x24, store_fault_handler
                  li x24, 0xc
                  beq x22, x24, pt_fault_handler
                  li x24, 0xd
                  beq x22, x24, pt_fault_handler
                  li x24, 0xf
                  beq x22, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x13, x7, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x7, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x7, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x13, x7, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x13, x7, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x13, x7, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
