.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x3, 0x0
                  li x4, 0x9
                  li x5, 0xff22bdcf
                  li x6, 0xe
                  li x7, 0x9
                  li x8, 0xfc3f1289
                  li x9, 0x9
                  li x10, 0xd
                  li x11, 0xf99d2b89
                  li x12, 0x0
                  li x13, 0x80000000
                  li x15, 0xfb3159a5
                  li x16, 0xf
                  li x17, 0x9
                  li x18, 0x0
                  li x19, 0x8
                  li x20, 0x0
                  li x21, 0x9
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x3
                  li x25, 0xfd7f2366
                  li x26, 0xb
                  li x27, 0x0
                  li x28, 0xb66d93d1
                  li x29, 0xe1dc1405
                  li x30, 0x0
                  li x31, 0x1
                  la x14, user_stack_end
main:             addi         s9, zero, 2 #init loop 1 counter
                  or           t3, t5, s9
                  auipc        a0, 470256
                  srl          a0, a7, s3
                  or           s8, sp, zero
                  sltu         a6, s6, s1
                  addi         t4, zero, 19 #init loop 1 limit
                  sltu         s6, sp, s7
                  sub          a5, t4, s3
main_3_1_t:       and          tp, gp, a0
                  nop
                  addi         s9, s9, 4 #update loop 1 counter
                  auipc        a6, 302480
                  addi         s10, zero, -10 #init loop 0 counter
                  sra          s4, tp, ra
                  andi         s4, gp, 1060
                  addi         a2, zero, -20 #init loop 0 limit
                  slti         s3, s11, 1247
                  slli         gp, s1, 3
main_3_0_t:       sub          t0, t1, a6
                  srli         t2, s1, 1
                  addi         s10, s10, -1 #update loop 0 counter
                  xori         s3, sp, -337
                  bge          s10, a2, main_3_0_t #branch for loop 0
                  lui          t3, 300240
                  blt          s9, t4, main_3_1_t #branch for loop 1
                  xori         t0, s1, 539
                  addi         s7, zero, 10 #init loop 1 counter
                  addi         gp, zero, 10 #init loop 1 limit
main_0_1_t:       xor          ra, s1, a1
                  slt          s10, t1, s3
                  addi         s7, s7, -9 #update loop 1 counter
                  addi         s0, zero, 7 #init loop 0 counter
                  ori          ra, s10, 983
                  addi         s11, zero, 16 #init loop 0 limit
main_0_0_t:       xori         t5, a4, 1073
                  addi         s0, s0, 2 #update loop 0 counter
                  add          t6, s8, t1
                  blt          s0, s11, main_0_0_t #branch for loop 0
                  bgeu         s7, gp, main_0_1_t #branch for loop 1
                  sub          a2, a5, zero
                  addi         s0, zero, -10 #init loop 1 counter
                  srai         a2, s0, 8
                  slli         a0, a5, 2
                  addi         t0, zero, 9 #init loop 1 limit
main_2_1_t:       xor          a7, s4, gp
                  or           a3, sp, s9
                  addi         s0, s0, 4 #update loop 1 counter
                  srl          t1, s5, s7
                  sra          s7, t3, t6
                  or           t2, s11, s10
                  slt          t1, s1, a1
                  srl          t5, s1, a0
                  and          s10, a4, a0
                  or           t3, a3, gp
                  ori          s8, tp, 1643
                  addi         s6, zero, 4 #init loop 0 counter
                  addi         s1, zero, 20 #init loop 0 limit
                  srli         ra, s6, 4
                  sll          t3, s9, s0
main_2_0_t:       slti         t2, t5, 829
                  add          s2, sp, ra
                  slli         a3, t3, 5
                  auipc        t5, 733294
                  addi         s6, s6, 4 #update loop 0 counter
                  add          gp, s1, s1
                  slti         t1, a1, -94
                  blt          s6, s1, main_2_0_t #branch for loop 0
                  bltu         s0, t0, main_2_1_t #branch for loop 1
                  xori         a1, s3, -1057
                  addi         t1, s9, -220
                  slt          t5, t0, s9
                  sra          zero, a5, s2
                  and          tp, s6, sp
                  nop
                  bne          zero, s2, 14f
                  srli         tp, zero, 8
                  srli         t2, a7, 1
                  addi         ra, zero, 1613
                  la           s3, sub_1
                  sltiu        t3, t6, 1245
                  srli         a1, s11, 15
                  srl          s4, t5, a2
                  andi         s9, t0, 1518
                  sub          gp, s4, s3
                  addi         s3, s3, 5
                  sll          zero, s7, s11
                  xori         s8, t0, 339
main_j1:          jalr         ra, s3, -4 #jump main -> sub_1
                  add          t1, t5, s0
                  srl          gp, s0, t6
                  bge          s1, s4, 16f
                  sltu         zero, tp, s6
                  slli         s2, a3, 30
                  slt          s3, ra, a1
                  add          s10, t6, t1
14:               and          t3, s8, s4
                  bne          t3, t0, 30f
16:               bgeu         gp, t0, 21f
                  sltu         s9, t3, a1
                  slti         s9, t3, 943
                  srai         s8, s8, 21
                  sltiu        s11, t3, 501
21:               sub          s4, a2, a5
                  xori         t6, s10, -1141
                  beq          s2, a3, 30f
                  xor          a0, a6, s4
                  srli         t2, s9, 4
                  srl          t3, t1, tp
                  srai         a6, t5, 22
                  slti         ra, a3, -1907
                  srai         zero, s6, 0
30:               sra          gp, s10, a7
                  srl          tp, s2, a7
                  srli         a1, s1, 6
                  nop
                  sltiu        t2, t0, 565
                  sra          s7, tp, a3
                  add          t6, s2, a0
                  lui          t6, 410153
                  or           a0, t1, t5
                  add          a6, gp, s8
                  lui          s3, 550000
                  slti         t5, s7, -770
                  add          s6, s2, t5
                  or           s1, a2, t2
                  slli         t0, s8, 15
                  slti         t0, t3, 179
                  xor          s6, t2, s3
                  add          s10, t3, zero
                  bltu         a3, t5, 57f
                  bgeu         a1, a2, 64f
                  slli         gp, t4, 19
                  srl          gp, s11, a0
                  sltu         s4, s6, a0
                  and          s8, s1, s2
                  add          s9, t2, s0
                  lui          s3, 304374
                  sltu         t2, a3, t2
57:               blt          sp, s4, 64f
                  nop
                  beq          sp, s9, 64f
                  add          s0, t0, sp
                  slt          ra, sp, s5
                  blt          s1, s4, 79f
                  nop
64:               sra          t3, t3, s10
                  xori         t6, t0, 667
                  srai         s7, a2, 22
                  andi         gp, s1, 1380
                  sra          a7, a5, a0
                  slti         s3, s4, 794
                  bne          a7, gp, 86f
                  bne          s6, zero, 86f
                  sub          s10, s10, s11
                  addi         t0, zero, -4 #init loop 0 counter
                  auipc        zero, 1030371
                  slti         gp, a4, -365
                  and          a2, t6, s4
                  auipc        a6, 458160
                  slti         s4, t0, -560
                  lui          tp, 546952
                  addi         s7, zero, 14 #init loop 0 limit
main_1_0_t:       add          a3, s2, ra
                  slli         a1, s1, 20
                  addi         t0, t0, 2 #update loop 0 counter
                  sra          a0, s5, a7
                  add          a0, t6, t1
                  sltu         t6, a0, a5
                  sltiu        zero, a0, -304
                  bltu         t0, s7, main_1_0_t #branch for loop 0
                  and          t3, s1, a3
                  add          s2, s0, s2
                  andi         a7, s8, 586
                  slt          s2, s6, a6
                  slli         a0, t2, 17
                  beq          t1, s6, 96f
                  slti         t2, zero, 2011
79:               sub          s2, tp, s7
                  bltu         a5, a2, 99f
                  ori          t1, t4, 1816
                  srli         a6, zero, 24
                  slti         a0, t5, 840
                  or           s2, s7, a5
                  and          s2, s11, s0
                  addi         s1, zero, -1 #init loop 0 counter
                  addi         t4, zero, 5 #init loop 0 limit
                  sltu         zero, a3, t6
main_4_0_t:       auipc        s10, 271479
                  addi         s1, s1, 5 #update loop 0 counter
                  blt          s1, t4, main_4_0_t #branch for loop 0
                  nop
86:               sra          s4, s1, s5
                  srli         ra, t6, 19
                  beq          s11, s2, 89f
89:               add          a6, a5, zero
                  bltu         gp, s5, 92f
                  nop
92:               srai         t0, s2, 10
                  ori          s6, a3, 1261
                  andi         s0, s0, 1709
                  bltu         tp, a7, 98f
96:               sll          t4, s4, s8
                  srli         gp, a1, 27
98:               slli         s7, s9, 24
99:               sltu         a0, s7, s7
                  sll          s8, s10, gp
                  sra          t3, t4, sp
                  srl          a3, s10, s11
                  add          s0, t4, s7
                  beq          s5, s11, 121f
                  sra          s11, s3, s6
                  or           s1, a2, s1
                  bne          a5, a1, 127f
                  bge          ra, s4, 111f
                  slti         t4, s10, 885
                  slli         t3, t0, 18
111:              slti         s11, s11, 1174
                  bge          s1, s4, 123f
                  xor          t3, t4, a4
                  xor          s9, sp, s1
                  addi         s11, t0, -795
                  srl          a5, a3, ra
                  srl          s11, t1, a0
                  slti         t3, a6, -1640
                  bge          a4, s5, 135f
                  srli         s8, t5, 15
121:              sltiu        s9, ra, 1946
                  ori          s9, t1, -1779
123:              sll          s1, s4, t0
                  or           s1, t1, t1
                  auipc        t5, 1048246
                  bge          s9, t1, 128f
127:              bltu         a1, s6, 132f
128:              beq          s8, a7, 145f
                  or           s0, s3, t1
                  add          s0, a0, ra
                  andi         a2, ra, 1547
132:              blt          t1, s11, 152f
                  sll          s11, s10, t6
                  lui          t4, 709300
135:              srai         t6, a6, 7
                  or           a5, s7, s7
                  sra          t6, t6, a6
                  nop
                  blt          a4, s8, 151f
                  xor          s3, sp, s11
                  or           s1, s11, tp
                  sra          s8, a1, s4
                  or           a0, tp, a4
                  srai         a1, a1, 24
145:              sltu         a3, tp, a0
                  nop
                  sltu         t2, s4, s5
                  and          s3, a4, a2
                  or           s9, s1, a6
                  srl          s11, s3, t1
151:              sltiu        zero, a7, -373
152:              slti         s1, s7, 1054
                  slt          s9, a5, a6
                  slti         t6, s9, 890
                  sub          t4, s7, s8
                  auipc        s2, 729973
                  blt          s11, t4, 165f
                  xori         s6, s5, -229
                  slli         s2, zero, 6
                  srai         a5, s3, 20
                  or           a5, s1, a1
                  addi         t4, t6, 236
                  andi         t1, s7, 2037
                  bltu         s6, t6, 179f
165:              bne          s3, gp, 185f
                  bne          s2, s3, 182f
                  sltu         a3, t5, a1
                  sll          a6, a0, a5
                  slli         s4, s1, 26
                  srai         s10, t0, 31
                  sub          s10, s3, a0
                  srai         gp, a1, 14
                  or           a7, ra, s1
                  slli         s2, a2, 25
                  addi         a1, t6, -1593
                  sltu         ra, a3, a5
                  sltu         s7, zero, t1
                  sra          tp, a4, zero
179:              or           s10, ra, s2
                  bne          a7, s0, 200f
                  bge          a7, s3, 200f
182:              add          t6, s0, s6
                  slt          a1, t3, s2
                  slt          s11, s0, s11
185:              slli         s10, a0, 6
                  blt          s11, s5, 206f
                  blt          a1, a1, 192f
                  sub          a2, s1, zero
                  sub          s10, s11, a1
                  ori          t1, s3, -888
                  slti         a5, t4, -1977
192:              blt          t5, a5, 207f
                  addi         s6, a7, 438
                  srai         s10, s5, 6
                  bne          t0, a7, 210f
                  srli         a7, s9, 14
                  and          tp, s7, s1
                  srai         s3, a7, 17
                  slt          t5, t4, s3
200:              ori          s3, t2, -812
                  auipc        a5, 1039343
                  blt          s10, a4, 211f
                  lui          t1, 1008771
                  srl          zero, a0, s4
                  slli         s3, s3, 17
206:              sltu         t0, a5, s7
207:              sra          zero, gp, s7
                  sll          s1, zero, s7
                  lui          s2, 189955
210:              bne          gp, gp, 215f
211:              bltu         t0, a1, 214f
                  and          zero, s4, t5
                  sltiu        a5, a7, 1359
214:              srl          s6, s3, s3
215:              sltiu        t6, a7, 1579
                  xori         s9, s5, -1151
                  xor          a3, t2, t5
                  xori         a0, a1, 1828
                  or           t2, gp, t4
                  lui          t2, 255019
                  srai         t6, s3, 6
                  sll          a5, t5, a4
                  srai         gp, s10, 12
                  nop
                  xori         t4, a6, 639
                  nop
                  nop
                  add          a7, a7, a3
                  beq          s5, s2, 236f
                  auipc        s9, 664087
                  sltu         t2, zero, gp
                  addi         a2, a1, -1484
                  sll          a3, s4, a4
                  sll          s11, a6, s10
                  nop
236:              or           s8, t4, sp
                  beq          a7, t3, 252f
                  bge          t0, t0, 246f
                  xori         t1, t2, -1372
                  srl          t0, s11, t6
                  or           t2, a1, a7
                  beq          a7, s0, 244f
                  sltiu        a6, t1, 187
244:              and          s3, s1, a0
                  lui          s4, 349887
246:              slti         t0, s6, 1734
                  nop
                  bne          gp, s0, 252f
                  blt          s7, s5, 252f
                  xor          t0, t4, t5
                  xor          a7, a4, a6
252:              srli         t1, s5, 16
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            slli         t6, gp, 28
                  add          a0, s3, ra
                  addi         a4, a4, -12
                  lui          s2, 1015736
                  sw           ra, 4(a4)
                  srli         a3, t5, 20
                  beq          s5, gp, sub_1_j2 #branch to jump instr
                  srai         zero, s1, 0
                  add          s2, a1, gp
                  or           a3, gp, s9
                  srai         s2, s11, 5
                  auipc        s6, 336793
                  srl          a2, s11, a1
                  sub          t1, s8, tp
                  ori          a5, s0, -1299
                  andi         t3, tp, 64
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  add          t2, t0, s11
                  sra          a0, ra, tp
                  ori          t4, t6, -1593
                  ori          s4, sp, 1791
                  la           a2, sub_2
                  xor          t1, s1, gp
                  addi         a2, a2, -788
                  andi         s1, s2, 694
sub_1_j3:         jalr         ra, a2, 789 #jump sub_1 -> sub_2
                  addi         s4, tp, -811
                  addi         s4, t2, 626
                  bge          t1, s5, 9f
                  beq          ra, s10, 9f
                  sltu         t3, s5, s11
                  bge          s2, t3, 9f
                  slt          a1, t1, t4
                  or           a5, s8, a3
                  slti         t4, s0, -680
9:                sra          s0, sp, a7
                  lw           ra, 4(a4)
                  slti         t4, t0, -24
                  srl          t4, t6, a7
                  slt          gp, a6, s2
                  addi         a4, a4, 12
                  add          t5, a3, s8
                  and          a7, a4, sp
                  auipc        a1, 417740
                  lui          t4, 310234
45:               addi x26, x1, 1
45:               jalr x26, x26, 0
sub_2:            bgeu         s5, t0, sub_2_stack_p
                  srl          t0, s6, s5
                  nop
sub_2_stack_p:    addi         a4, a4, -60
                  srl          t4, a1, s10
                  sw           ra, 4(a4)
                  xori         a5, a6, -168
                  ori          s0, t6, -1740
                  srl          s0, a1, ra
                  addi         s0, zero, -10 #init loop 1 counter
                  addi         s10, zero, 2 #init loop 1 limit
                  auipc        a6, 866438
sub_2_0_1_t:      andi         s4, sp, -169
                  addi         s0, s0, 9 #update loop 1 counter
                  addi         gp, zero, 7 #init loop 0 counter
                  addi         a5, zero, 16 #init loop 0 limit
sub_2_0_0_t:      and          tp, sp, a0
                  sra          s9, t3, s11
                  addi         gp, gp, 9 #update loop 0 counter
                  or           a7, tp, ra
                  bne          gp, a5, sub_2_0_0_t #branch for loop 0
                  bltu         s0, s10, sub_2_0_1_t #branch for loop 1
                  xor          t0, s5, a6
                  addi         t4, zero, -8 #init loop 0 counter
                  sltiu        s9, s4, -1755
                  nop
                  sll          a2, a4, s4
                  slli         a3, t4, 24
                  srl          s9, s0, a4
                  srli         s9, a1, 14
                  addi         a5, zero, -9 #init loop 0 limit
                  or           t0, s7, ra
                  srai         ra, t5, 23
                  ori          s3, a4, -631
sub_2_7_0_t:      add          s10, t6, t2
                  auipc        t1, 659064
                  sub          t6, s11, a4
                  sltiu        t5, s3, 1810
                  slli         zero, s4, 24
                  addi         t4, t4, -7 #update loop 0 counter
                  lui          s7, 254179
                  xori         s4, a5, 51
                  xori         s10, s4, -1169
                  srl          s2, s8, a0
                  xori         a2, s9, 1342
                  and          s6, t0, a1
                  srli         gp, a5, 25
                  ori          s8, s1, -1607
                  sll          a7, a3, a2
                  srli         a0, a3, 6
                  sltiu        tp, zero, 939
                  bge          t4, a5, sub_2_7_0_t #branch for loop 0
                  nop
                  addi         s8, zero, -4 #init loop 0 counter
                  or           a1, s6, s4
                  xori         a7, s5, 1666
                  addi         s1, zero, -7 #init loop 0 limit
sub_2_8_0_t:      sub          t3, t6, a1
                  sltiu        ra, s11, -4
                  addi         s8, s8, -3 #update loop 0 counter
                  auipc        a5, 163549
                  bge          s8, s1, sub_2_8_0_t #branch for loop 0
                  sub          gp, t5, tp
                  addi         s10, zero, 6 #init loop 1 counter
                  ori          s3, s10, 417
                  addi         a7, zero, 14 #init loop 1 limit
sub_2_4_1_t:      lui          s8, 967806
                  ori          s8, s6, 1843
                  addi         s10, s10, 8 #update loop 1 counter
                  addi         s9, zero, -2 #init loop 0 counter
                  lui          a0, 545988
                  and          t6, t3, s3
                  addi         a3, zero, 2 #init loop 0 limit
                  xor          s0, sp, s8
sub_2_4_0_t:      slti         ra, a5, -1512
                  sub          t2, s11, s8
                  addi         s9, s9, 1 #update loop 0 counter
                  add          t0, t4, zero
                  xori         a1, a7, -1250
                  blt          s9, a3, sub_2_4_0_t #branch for loop 0
                  xor          zero, a6, s2
                  srl          ra, t6, s8
                  and          t3, s10, t2
                  bne          s10, a7, sub_2_4_1_t #branch for loop 1
                  slli         zero, s10, 22
                  addi         s9, zero, 6 #init loop 1 counter
                  and          s10, a3, a3
                  lui          t4, 669811
                  srl          a2, t0, a2
                  andi         a5, a3, -1097
                  addi         t2, zero, 20 #init loop 1 limit
sub_2_3_1_t:      sub          a6, a7, a4
                  or           a1, s5, a1
                  addi         s9, s9, 7 #update loop 1 counter
                  lui          s10, 471008
                  nop
                  sra          a7, s9, s3
                  addi         t0, zero, 1 #init loop 0 counter
                  sll          gp, s1, s4
                  addi         s6, zero, -12 #init loop 0 limit
                  srli         s0, a0, 20
                  srli         s7, sp, 5
                  sll          a7, a5, ra
                  andi         t1, tp, -69
                  srli         zero, t5, 12
                  sub          s11, a7, s5
sub_2_3_0_t:      addi         a7, t1, -454
                  sll          a2, s5, s5
                  srli         s4, s11, 13
                  or           t4, s3, s1
                  srl          s7, s8, s6
                  addi         t0, t0, -5 #update loop 0 counter
                  sltu         a6, s3, s5
                  bge          t0, s6, sub_2_3_0_t #branch for loop 0
                  slli         tp, a0, 29
                  bne          s9, t2, sub_2_3_1_t #branch for loop 1
                  xori         s3, s5, -1988
                  addi         a5, zero, -8 #init loop 1 counter
                  addi         s11, zero, 3 #init loop 1 limit
sub_2_6_1_t:      nop
                  addi         a5, a5, 4 #update loop 1 counter
                  addi         a6, zero, -5 #init loop 0 counter
                  auipc        s1, 229418
                  addi         t3, zero, 5 #init loop 0 limit
sub_2_6_0_t:      addi         t2, sp, -499
                  slti         a3, t0, -498
                  addi         a6, a6, 5 #update loop 0 counter
                  bne          a6, t3, sub_2_6_0_t #branch for loop 0
                  bltu         a5, s11, sub_2_6_1_t #branch for loop 1
                  slti         s0, a1, 526
                  sltiu        s4, t4, 875
                  sltiu        s6, s1, 502
                  sra          s2, t3, s10
                  srl          t5, t3, a6
                  slt          t3, tp, s11
                  addi         s1, a0, 1915
                  add          s2, a4, s0
                  add          t6, a3, s11
                  auipc        a0, 209806
                  andi         t0, t0, 1397
                  blt          a3, s7, 25f
                  bge          zero, a4, 27f
                  bgeu         ra, a5, 25f
                  andi         t3, s4, -1093
                  xor          s8, s3, a2
                  ori          a6, a1, -1236
                  or           t6, sp, a2
                  sltiu        ra, t4, -1132
                  bge          a2, s0, 32f
                  add          a6, tp, s10
                  srl          t2, t0, t1
                  sra          s3, s8, t5
                  blt          a0, a3, 36f
                  sll          s1, s11, s8
                  lui          gp, 890665
25:               sub          s2, s4, a6
                  ori          a5, s1, -763
27:               slt          s3, s0, s1
                  sltu         a7, a5, a6
                  nop
                  sltiu        t0, a0, 470
                  srl          t4, sp, a3
32:               sltu         a3, ra, s3
                  add          t2, a0, s10
                  sra          a2, zero, t6
                  beq          a7, t0, 42f
36:               bge          s11, tp, 42f
                  nop
                  nop
                  add          t3, a7, s10
                  beq          s10, sp, 43f
                  andi         a5, a0, 620
42:               slt          a1, t2, a1
43:               auipc        tp, 283397
                  bne          tp, s5, 61f
                  addi         t3, sp, 2023
                  beq          s7, t5, 48f
                  and          a5, a0, s1
48:               slli         s4, a6, 13
                  srl          t6, a1, t4
                  nop
                  auipc        s6, 887417
                  sra          a0, t3, ra
                  sra          t2, gp, a6
                  bge          s5, gp, 63f
                  sltiu        a7, a3, 1887
                  sltu         s2, sp, s11
                  srli         a7, a0, 3
                  and          s0, s1, t2
                  xori         t6, s9, 1829
                  sub          gp, t5, t1
61:               xori         t5, zero, -1479
                  sltu         a7, a1, a3
63:               bge          s3, s3, 66f
                  slt          s6, s3, s8
                  sub          s3, ra, tp
66:               nop
                  nop
                  or           a5, a5, ra
                  sltu         t1, a6, a6
                  add          gp, s4, a6
                  bgeu         sp, t6, 83f
                  sltu         t3, t4, t0
                  slt          s7, a4, t0
                  srli         s11, s6, 16
                  slt          t4, s3, sp
                  and          t4, s5, t6
                  slti         a3, s3, -1717
                  andi         a1, s5, -1606
                  auipc        s8, 785203
                  bgeu         s3, t0, 87f
                  beq          s8, s2, 91f
                  xor          t0, t0, a4
83:               sra          ra, sp, s8
                  xori         t6, s2, 1340
                  bltu         s2, s6, 97f
                  andi         s4, a6, 427
87:               bne          gp, s6, 92f
                  xori         t1, a1, 592
                  srli         s1, t5, 19
                  lui          t4, 527071
91:               sltiu        s9, a0, 182
92:               auipc        s2, 659762
                  blt          sp, sp, 96f
                  srai         gp, ra, 20
                  bltu         s11, sp, 106f
96:               srli         zero, ra, 1
97:               lui          s6, 1026300
                  sltiu        s10, t3, -1700
                  auipc        s6, 21427
                  bltu         a4, s1, 109f
                  srai         s2, t3, 26
                  srli         gp, t4, 23
                  bgeu         s11, s4, 111f
                  slli         zero, a0, 6
                  blt          t5, sp, 108f
106:              srai         s10, t1, 31
                  srai         a7, t5, 12
                  addi         t6, zero, 5 #init loop 1 counter
                  srl          a3, a3, tp
                  addi         a5, zero, 5 #init loop 1 limit
                  srl          t1, s2, s3
                  nop
sub_2_5_1_t:      sub          s7, s4, s9
                  addi         t6, t6, -1 #update loop 1 counter
                  addi         s0, zero, 1 #init loop 0 counter
                  sra          a2, s2, s5
                  addi         s4, zero, 13 #init loop 0 limit
                  addi         s3, s5, -273
sub_2_5_0_t:      add          gp, s5, s1
                  srl          s9, s2, ra
                  addi         s0, s0, 6 #update loop 0 counter
                  slti         zero, t1, -1550
                  bne          s0, s4, sub_2_5_0_t #branch for loop 0
                  slti         s3, s5, -918
                  auipc        a6, 905231
                  srai         t5, t3, 24
                  bge          t6, a5, sub_2_5_1_t #branch for loop 1
                  xor          s2, t5, ra
108:              bltu         t2, t4, 111f
109:              srli         s7, s4, 19
                  sltiu        a1, a2, 1678
111:              bne          tp, zero, 125f
                  or           s9, a2, s2
                  bge          s10, a2, 115f
                  sra          tp, a5, a4
115:              slli         gp, a1, 24
                  beq          a4, s7, 134f
                  sub          s4, s7, t1
                  beq          ra, s7, 134f
                  sltiu        a2, t1, 1779
                  xor          a2, s4, t4
                  slti         s4, tp, 2023
                  beq          sp, s10, 138f
                  nop
                  bgeu         s11, a1, 139f
125:              xor          s10, t1, zero
                  srl          s0, t5, s1
                  slti         s7, s7, -1893
                  slti         t1, a7, -1459
                  bltu         t2, ra, 144f
                  sll          a0, s9, t5
                  srl          t0, tp, t0
                  beq          ra, s5, 148f
                  srli         s3, s5, 21
134:              beq          sp, s7, 143f
                  add          t2, tp, t3
                  sltu         t3, s5, a2
                  sra          a0, s7, s11
138:              andi         s9, s1, 840
139:              xori         t0, s11, -946
                  addi         a3, zero, 8 #init loop 1 counter
                  slt          t0, a0, t2
                  srl          t3, s10, s1
                  sub          s7, a1, s0
                  nop
                  slli         s0, a3, 18
                  andi         tp, t0, -1317
                  sltu         s7, t3, a5
                  addi         a5, zero, 7 #init loop 1 limit
                  addi         s6, t4, -1145
sub_2_1_1_t:      add          s6, s7, a6
                  lui          a7, 69543
                  addi         a3, a3, -6 #update loop 1 counter
                  addi         a2, t6, -149
                  addi         s2, zero, -2 #init loop 0 counter
                  slli         t0, s0, 4
                  andi         t3, a5, -1011
                  addi         s10, zero, 12 #init loop 0 limit
                  sra          t6, a0, a1
                  sll          a1, s5, s11
                  xori         a7, gp, -91
                  lui          gp, 961566
sub_2_1_0_t:      sltu         t3, s11, t2
                  andi         a2, a3, 407
                  sltiu        t6, t1, -1913
                  addi         s2, s2, 7 #update loop 0 counter
                  bne          s2, s10, sub_2_1_0_t #branch for loop 0
                  slli         a6, t2, 2
                  slt          t4, zero, t4
                  bgeu         a3, a5, sub_2_1_1_t #branch for loop 1
                  addi         t0, t6, -1911
                  sltu         s3, tp, t6
                  ori          zero, s7, 906
                  nop
143:              nop
144:              add          t3, t3, s4
                  srai         s10, s3, 0
                  slti         s11, s4, 407
                  sltiu        a3, s2, -86
148:              blt          s10, t3, 150f
                  addi         t3, t5, -1360
150:              ori          s7, zero, 934
                  bge          a2, s4, 160f
                  sub          tp, t2, zero
                  sub          t2, t0, t3
                  lui          s10, 582040
                  andi         s9, s3, -1990
                  srli         t5, t3, 17
                  slti         t3, a6, 1581
                  and          s6, a4, s9
                  andi         a2, tp, 971
160:              sra          t2, a6, t3
                  sltu         s10, a3, a2
                  xor          a2, t0, s1
                  bne          a5, t6, 179f
                  blt          t0, t2, 170f
                  srli         s8, t0, 2
                  ori          tp, s3, 155
                  slli         t4, s7, 26
                  andi         a7, a4, -296
                  and          s4, t2, s8
170:              nop
                  sub          s3, a1, a7
                  bne          s1, a6, 187f
                  xori         t6, a6, 928
                  bne          s10, gp, 182f
                  lui          t4, 848592
                  bge          sp, sp, 181f
                  sltiu        a5, t0, 1302
                  and          t5, a0, s7
179:              andi         s2, s10, 1067
                  bltu         zero, a1, 187f
181:              xor          s8, s5, ra
182:              bge          t1, t5, 196f
                  srai         s10, t2, 14
                  or           s3, t0, a5
                  slti         t2, t1, 1495
                  xor          t5, a5, s5
187:              add          s11, s4, a1
                  bge          s7, s9, 191f
                  auipc        t4, 60261
                  andi         a0, s9, -1224
191:              beq          s11, s11, 205f
                  srai         s10, ra, 30
                  slli         a2, gp, 28
                  srli         t5, t3, 9
                  add          s3, a3, s11
196:              add          a7, t5, a1
                  xor          t0, s3, s6
                  andi         a7, t5, 1055
                  beq          s2, s1, 216f
                  bne          s9, s7, 214f
                  addi         s8, s1, -552
                  beq          a0, s8, 204f
                  nop
204:              xori         s1, t3, 631
205:              sra          s11, s3, a4
                  nop
                  and          t5, t4, a2
                  auipc        a7, 166416
                  bgeu         s6, t1, 212f
                  beq          s2, s2, 228f
                  bge          a4, t5, 214f
212:              lui          s2, 921159
                  ori          a3, s0, -783
214:              slt          s11, s8, t5
                  beq          s9, s11, 228f
216:              sll          a2, ra, zero
                  addi         s0, t1, -1741
                  addi         s11, zero, 6 #init loop 1 counter
                  sltiu        t3, a3, -885
                  add          t0, t5, t2
                  addi         s9, zero, 20 #init loop 1 limit
                  slti         t2, s11, 532
                  nop
sub_2_2_1_t:      slti         a5, a4, 362
                  sub          s1, s2, a1
                  lui          a5, 106570
                  sltiu        s1, a5, 924
                  sub          t4, a1, sp
                  or           a7, s5, a5
                  addi         s11, s11, 7 #update loop 1 counter
                  addi         t1, zero, -5 #init loop 0 counter
                  addi         s10, zero, -1 #init loop 0 limit
                  lui          a3, 175338
sub_2_2_0_t:      lui          gp, 451030
                  sltiu        s6, t6, -1827
                  srl          t2, s10, s9
                  addi         t1, t1, 2 #update loop 0 counter
                  blt          t1, s10, sub_2_2_0_t #branch for loop 0
                  sll          zero, s4, zero
                  blt          s11, s9, sub_2_2_1_t #branch for loop 1
                  srli         a6, a3, 22
                  and          gp, s0, sp
                  beq          s6, s1, 222f
                  bltu         s1, a0, 231f
                  xori         t1, s9, 61
                  slli         s8, tp, 3
                  sub          t3, t0, t2
                  andi         a0, s4, 1138
                  or           t3, s2, zero
                  auipc        t1, 102831
                  and          s2, a7, s2
                  or           s2, a7, s11
                  ori          s0, s10, 1353
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
222:              nop
                  slti         zero, a6, 1718
                  slti         s3, s2, -361
                  addi         s11, t2, 735
                  ori          s2, a5, 552
                  slti         s10, a1, -1533
228:              blt          a1, s11, 243f
                  slli         s7, s0, 9
                  bge          t3, t2, 245f
231:              xor          s3, zero, s3
                  and          s2, a6, ra
                  xori         zero, a7, 1732
                  xor          s6, t0, gp
                  sll          s3, a6, s2
                  or           t5, s1, s9
                  bgeu         s5, t1, 247f
                  srli         s11, a4, 16
                  bgeu         a7, s8, 255f
                  sll          t2, ra, s5
                  sltiu        zero, a3, -1668
                  sltu         s7, s1, a7
243:              auipc        a5, 80701
                  xor          s0, s1, zero
245:              bge          s8, a1, 257f
                  or           a5, s7, t4
247:              slt          a3, a4, a0
                  sub          t5, a7, t5
                  sltiu        a0, s7, 1879
                  srl          a7, a0, s9
                  bltu         a1, a1, 263f
                  bltu         tp, s7, 255f
                  sra          t4, t1, t3
                  and          s0, s0, a4
255:              srai         s11, a5, 8
                  sra          a1, sp, a1
257:              sltu         t3, s6, t6
                  sltu         s10, s4, t2
                  nop
                  lui          ra, 279569
                  lui          ra, 978066
                  xor          s0, s2, s7
263:              slli         s7, tp, 2
                  bltu         s3, t0, 271f
                  and          t4, s8, s6
                  slti         s3, t0, -1639
                  sub          t5, zero, tp
                  srai         t0, s8, 25
                  addi         s11, t5, -1370
                  sltiu        a6, a0, -899
271:              bgeu         a3, t1, 274f
                  auipc        t3, 930766
                  add          s0, a1, a0
274:              lui          s11, 100823
                  ori          a1, s7, -1539
                  sltu         s8, gp, s2
                  sub          tp, s6, sp
                  slli         zero, s10, 14
                  srai         t4, sp, 23
                  xori         a1, a4, -1286
                  auipc        s1, 136740
                  xor          s8, t5, a6
                  bltu         a5, t4, 285f
                  andi         t4, s2, -1997
285:              blt          t0, a0, 297f
                  addi         s4, s9, -1152
                  sll          s2, s11, a5
                  ori          s1, t3, -654
                  sltiu        tp, s8, -260
                  xor          zero, s2, tp
                  and          a1, gp, t1
                  andi         s1, a2, -292
                  sll          s6, s0, ra
                  slli         a7, a2, 6
                  sll          s10, s11, t0
                  addi         s6, a1, 870
297:              nop
                  sra          t4, tp, s9
                  blt          a1, s0, 317f
                  bne          s9, gp, 311f
                  nop
                  lui          a3, 926099
                  srl          s1, s0, a0
                  andi         a5, a7, -1102
                  andi         s2, s4, 1393
                  srl          s4, s0, a4
                  srai         s4, a2, 12
                  nop
                  sub          s4, t2, s4
                  srai         s8, tp, 4
311:              sra          a3, t0, a7
                  ori          t0, a0, -964
                  bne          a4, s5, 316f
                  bltu         s4, t3, 328f
                  bne          s9, t1, 320f
316:              bne          s8, a0, 331f
317:              srli         t3, s10, 26
                  ori          a7, s10, 682
                  nop
320:              addi         a6, a6, -676
                  srli         gp, t3, 18
                  addi         t4, ra, -1235
                  bltu         a2, a4, 339f
                  slti         ra, s9, -1211
                  beq          zero, t1, 328f
                  bge          s8, s9, 332f
                  or           s3, a7, t6
328:              sra          t6, zero, s2
                  bne          s0, a3, 342f
                  auipc        a1, 732160
331:              slti         s0, a5, 859
332:              xori         zero, gp, 1728
                  add          t4, sp, t2
                  bne          sp, a7, 341f
                  xor          t6, a6, t0
                  add          zero, a7, a2
                  bne          s11, s8, 340f
                  slti         a2, a5, 1818
339:              srl          zero, s1, t3
340:              sltu         t2, s6, s2
341:              srl          t0, a3, s3
342:              srl          a6, s9, s10
                  srl          s4, a7, s11
                  beq          t1, s11, 358f
                  addi         t3, t3, -624
                  slti         t4, a0, -1028
                  bge          s2, s3, 363f
                  xor          a7, gp, ra
                  xori         a1, a6, -1529
                  slti         t2, t5, -190
                  xori         s2, s6, 821
                  bne          s9, t2, 367f
                  sra          t0, t5, sp
                  srl          s3, t3, s4
                  slt          a1, zero, tp
                  srli         t4, t5, 9
                  addi         a1, t6, -1476
358:              sll          s0, gp, gp
                  sra          t2, a7, a4
                  blt          a7, s1, 362f
                  addi         a7, a3, 724
362:              bne          t6, a6, 377f
363:              slt          a0, t4, a7
                  sll          a7, t3, s4
                  slli         s7, a0, 20
                  bltu         a6, t6, 382f
367:              auipc        a1, 22515
                  xori         zero, s1, -864
                  xori         s1, s0, -1435
                  addi         s1, t0, 9
                  xori         s7, gp, 408
                  andi         s4, t1, -740
                  slli         s10, a5, 13
                  slti         s4, s1, 562
                  slti         t6, t1, 160
                  xori         a6, a6, 136
377:              bne          t2, s5, 380f
                  xor          s7, zero, t2
                  xori         t0, s9, 844
380:              ori          tp, a1, 1049
                  srai         gp, sp, 5
382:              beq          t4, tp, 392f
                  ori          s11, a4, -363
                  blt          tp, tp, 393f
                  srl          gp, sp, s9
                  xor          t4, t1, t4
                  or           s0, t1, s1
                  slt          ra, s11, s11
                  sltiu        s3, a1, 229
                  or           t4, a4, s9
                  blt          a4, zero, 398f
392:              sub          s2, s10, s10
393:              nop
                  bge          a1, t5, 403f
                  beq          s8, zero, 403f
                  bgeu         t3, s4, 408f
                  sltu         t3, t0, t3
398:              sltu         t4, s10, gp
                  bgeu         a6, t0, 416f
                  bne          s8, t3, 414f
                  slt          t0, s6, s3
                  beq          s4, gp, 404f
403:              addi         ra, gp, 1592
404:              slli         a3, s5, 27
                  blt          s6, gp, 423f
                  auipc        ra, 88593
                  nop
408:              blt          t5, s10, 420f
                  slli         a3, a7, 10
                  sltiu        a7, s11, -116
                  slli         a5, s0, 31
                  ori          s10, zero, -1362
                  slti         s9, a0, -718
414:              lui          a1, 648560
                  auipc        s4, 85244
416:              srl          s0, t5, s1
                  sltiu        s4, t1, -115
                  slti         a5, s5, 1225
                  slti         a1, s10, 983
420:              nop
                  bne          a7, t2, 437f
                  sra          t5, s2, t3
423:              sll          ra, s0, s2
                  sll          s4, t3, tp
                  sltu         t1, t3, t1
                  xor          t6, t4, s5
                  bgeu         s4, a0, 430f
                  lui          gp, 266063
                  sltiu        a6, s5, -1097
430:              nop
                  sra          t0, a7, t2
                  sltu         s6, a6, s2
                  sub          s2, t4, t5
                  sra          s2, s2, s4
                  andi         a1, s7, -614
                  bne          sp, a1, 453f
437:              and          s8, a6, a0
                  sll          a0, s8, a5
                  slt          t3, t1, a7
                  andi         a1, s5, 1372
                  slt          s10, s8, t5
                  beq          s4, tp, 447f
                  bgeu         s1, s11, 456f
                  bne          tp, s7, 447f
                  slt          s1, a6, t6
                  slli         s11, s4, 6
447:              srai         s3, a4, 14
                  bne          ra, s6, 455f
                  bne          s7, zero, 452f
                  auipc        zero, 666306
                  sub          a3, a6, t3
452:              xori         s4, s9, -1821
453:              srli         a7, a1, 24
                  ori          t1, a7, -1780
455:              bgeu         s8, s3, 466f
456:              ori          s9, s7, -487
                  bge          a3, t5, 472f
                  lui          a2, 256258
                  and          t2, s9, a5
                  and          s4, gp, s4
                  and          s3, s0, t6
                  sra          t3, s7, a4
                  blt          t5, s3, 477f
                  sll          s7, a2, a1
                  sub          t0, s6, a2
466:              sra          a7, ra, a3
                  andi         a2, gp, -1465
                  andi         s1, gp, 2030
                  sll          a6, s5, s1
                  add          gp, t4, s3
                  slt          a3, tp, gp
472:              srai         a5, s7, 17
                  xor          a3, t3, s4
                  slti         s7, t1, -1210
                  sltu         s10, s4, sp
                  xori         gp, s3, 1930
477:              srai         a1, a7, 10
                  slt          t3, a1, s8
                  ori          t5, ra, 638
                  sltu         t4, sp, t3
                  nop
                  srai         s6, s4, 29
                  andi         t2, zero, -1415
                  blt          t0, a5, 486f
                  bge          a5, a7, 489f
486:              slli         a2, tp, 7
                  srai         a3, s2, 24
                  sra          s0, s11, s11
489:              addi         ra, s7, -956
                  lw           ra, 4(a4)
                  sll          s4, a0, a0
                  addi         a2, gp, 1791
                  slli         t6, t0, 10
                  sra          s7, ra, s6
                  addi         a4, a4, 60
                  slt          s9, t6, t3
712:              addi x9, x1, 1
712:              jalr x9, x9, 0
sub_3:            add          s7, t6, s6
                  sltu         a3, s5, s0
                  sltu         tp, sp, sp
                  addi         a4, a4, -48
                  slti         s6, t3, 24
                  sll          t4, a7, t3
                  add          a6, t1, s11
                  sw           ra, 4(a4)
                  sll          gp, s9, tp
                  srai         t6, a0, 3
                  or           s1, a6, s9
                  andi         gp, s9, -1884
                  sltu         a2, s3, s0
                  xor          s6, t3, s5
                  srl          s6, a2, t4
                  srli         s10, t0, 23
                  sub          a7, s11, s0
                  sub          s4, t4, a6
                  slli         s7, ra, 14
sub_3_j6:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  addi         t2, zero, 6 #init loop 1 counter
                  sra          t3, tp, t1
                  slti         s7, s2, -467
                  nop
                  lui          a7, 31875
                  addi         gp, a3, 1601
                  addi         t0, zero, 3 #init loop 1 limit
sub_3_0_1_t:      ori          s9, s3, 243
                  sltu         s4, t4, s1
                  addi         t2, t2, -2 #update loop 1 counter
                  andi         t4, sp, 12
                  addi         a0, zero, -1 #init loop 0 counter
                  nop
                  addi         s6, zero, -8 #init loop 0 limit
                  slti         a5, t0, 1401
sub_3_0_0_t:      lui          a3, 1013976
                  addi         a0, a0, -9 #update loop 0 counter
                  bge          a0, s6, sub_3_0_0_t #branch for loop 0
                  nop
                  slli         s1, s11, 8
                  xori         s7, s3, -378
                  xori         tp, t0, 121
                  andi         s11, a1, -1136
                  srli         t3, s9, 9
                  xori         s9, s9, -957
                  sra          gp, s11, a0
                  bgeu         t2, t0, sub_3_0_1_t #branch for loop 1
                  lui          s0, 658588
                  addi         a2, zero, 6 #init loop 1 counter
                  addi         t1, zero, 3 #init loop 1 limit
                  sltiu        t5, tp, -590
sub_3_6_1_t:      sltu         t4, s10, a2
                  addi         a2, a2, -1 #update loop 1 counter
                  sltu         a0, s9, a0
                  addi         t6, zero, 3 #init loop 0 counter
                  xori         a0, t1, -1230
                  addi         s9, zero, 9 #init loop 0 limit
sub_3_6_0_t:      slt          tp, s0, s3
                  srl          gp, a3, a1
                  slli         s4, s10, 13
                  addi         t6, t6, 2 #update loop 0 counter
                  srl          s2, s11, a5
                  blt          t6, s9, sub_3_6_0_t #branch for loop 0
                  or           tp, s8, s10
                  srl          s2, t1, t4
                  andi         s11, s11, -1034
                  bgeu         a2, t1, sub_3_6_1_t #branch for loop 1
                  srl          tp, t4, s6
                  addi         s7, zero, 5 #init loop 0 counter
                  lui          s6, 614130
                  ori          s10, s1, -274
                  srai         t5, t4, 4
                  addi         a5, zero, 19 #init loop 0 limit
                  slt          t1, s6, s2
sub_3_17_0_t:     ori          s2, tp, -1377
                  slli         zero, s8, 27
                  slti         s9, zero, 259
                  sll          gp, a4, ra
                  slti         t2, s4, -505
                  xor          t1, s10, s1
                  sltu         s10, s9, t4
                  sltu         s9, sp, a7
                  addi         s7, s7, 7 #update loop 0 counter
                  xori         t0, s5, -1266
                  addi         a6, a7, -818
                  sub          s9, s9, t2
                  and          ra, gp, s11
                  nop
                  sra          a7, s1, a4
                  xori         s9, a3, 139
                  slt          tp, s9, sp
                  ori          a1, a3, 1077
                  bne          s7, a5, sub_3_17_0_t #branch for loop 0
                  sll          t6, s8, a1
                  addi         a2, zero, 10 #init loop 1 counter
                  srai         s11, t6, 19
                  xor          t3, s11, a3
                  andi         a1, tp, 364
                  sll          t1, a3, a4
                  addi         a0, zero, 6 #init loop 1 limit
sub_3_7_1_t:      nop
                  sltiu        t6, a2, -141
                  auipc        t6, 521938
                  addi         a2, a2, -5 #update loop 1 counter
                  srl          a3, a6, tp
                  sltu         gp, tp, s8
                  xor          s11, s0, t2
                  addi         s1, zero, -7 #init loop 0 counter
                  andi         t1, s8, 1397
                  slti         zero, s6, 624
                  addi         t2, zero, -12 #init loop 0 limit
                  lui          s3, 963884
sub_3_7_0_t:      sltu         t0, a5, a5
                  srl          ra, s5, tp
                  addi         s1, s1, -1 #update loop 0 counter
                  bge          s1, t2, sub_3_7_0_t #branch for loop 0
                  slli         s11, t1, 2
                  slt          a3, s5, s10
                  sll          a6, s5, s11
                  sltu         a7, s11, a2
                  and          zero, gp, a4
                  sra          a5, t4, tp
                  sub          s2, t6, a3
                  ori          s4, t1, -1897
                  bgeu         a2, a0, sub_3_7_1_t #branch for loop 1
                  and          s11, s1, t6
                  addi         s7, zero, 3 #init loop 0 counter
                  srai         s9, s3, 19
                  xori         s10, a0, -1987
                  lui          a5, 270832
                  srai         t4, s9, 23
                  andi         a6, s9, -1319
                  srli         s3, s9, 20
                  addi         t0, zero, -3 #init loop 0 limit
                  ori          gp, zero, 1280
                  sltu         a7, a0, t0
                  srai         s0, zero, 0
                  srl          t3, s9, a6
                  sra          t6, t4, a4
                  slt          s11, a5, s5
                  addi         t6, t1, -1720
                  sra          s11, a5, s0
sub_3_4_0_t:      slt          gp, s1, a7
                  xori         t4, t4, 695
                  addi         s7, s7, -6 #update loop 0 counter
                  xor          s6, a2, a7
                  and          a2, s5, t4
                  bne          s7, t0, sub_3_4_0_t #branch for loop 0
                  or           a6, ra, s10
                  addi         s7, zero, -9 #init loop 0 counter
                  addi         s3, zero, -14 #init loop 0 limit
sub_3_20_0_t:     sltu         gp, s1, s5
                  addi         s7, s7, -6 #update loop 0 counter
                  xori         a0, s9, -1660
                  bge          s7, s3, sub_3_20_0_t #branch for loop 0
                  add          zero, gp, t2
                  addi         s8, zero, -7 #init loop 0 counter
                  slti         a2, s8, 832
                  sra          t4, t6, s1
                  srl          s0, s10, s9
                  xori         s2, sp, 1488
                  addi         a0, t4, 655
                  sub          t5, a1, s9
                  and          t4, a6, a4
                  ori          ra, s9, 389
                  slt          t2, s10, a4
                  addi         tp, sp, -533
                  sra          a2, s4, a4
                  srai         a3, sp, 24
                  srli         t5, s0, 10
                  slt          s4, a4, t5
                  auipc        a5, 514874
                  addi         gp, zero, -6 #init loop 0 limit
                  xor          a6, a0, a1
                  sltu         s7, a4, s10
                  lui          s1, 927213
sub_3_11_0_t:     slt          s11, t3, ra
                  nop
                  sub          s7, a3, s7
                  addi         s8, s8, 4 #update loop 0 counter
                  slti         t6, t0, 115
                  sll          s3, s5, t5
                  slt          a0, a5, gp
                  xori         zero, s10, 183
                  blt          s8, gp, sub_3_11_0_t #branch for loop 0
                  add          t2, s0, gp
                  addi         t4, zero, 4 #init loop 1 counter
                  addi         t2, zero, 6 #init loop 1 limit
sub_3_9_1_t:      sltiu        a2, t1, -87
                  sra          a0, zero, s6
                  srai         s6, t4, 3
                  sra          s3, t5, a7
                  addi         t4, t4, 4 #update loop 1 counter
                  addi         a6, zero, -6 #init loop 0 counter
                  xori         t3, t1, -638
                  addi         s2, zero, -13 #init loop 0 limit
                  srli         gp, s5, 17
sub_3_9_0_t:      sub          s1, ra, s10
                  slli         s9, s0, 22
                  addi         a6, a6, -10 #update loop 0 counter
                  auipc        a1, 466286
                  and          a3, a3, a2
                  bge          a6, s2, sub_3_9_0_t #branch for loop 0
                  sltiu        gp, t3, 258
                  sll          zero, a2, a6
                  sltiu        s0, t0, 1829
                  sll          s10, t5, a2
                  blt          t4, t2, sub_3_9_1_t #branch for loop 1
                  lui          gp, 97417
                  addi         s11, zero, -2 #init loop 0 counter
                  srai         t4, t5, 15
                  andi         t3, s4, -351
                  auipc        s1, 1002267
                  sltu         s8, zero, s0
                  sltu         s0, s9, t0
                  andi         t2, s10, -219
                  addi         t6, zero, -5 #init loop 0 limit
                  srai         t1, s7, 3
sub_3_8_0_t:      xor          gp, s5, t6
                  auipc        a1, 541019
                  and          s10, t3, s9
                  addi         s11, s11, -5 #update loop 0 counter
                  andi         s3, t3, 1371
                  bge          s11, t6, sub_3_8_0_t #branch for loop 0
                  auipc        s2, 734591
                  addi         s6, zero, 3 #init loop 1 counter
                  slt          a6, a4, tp
                  slli         s9, a3, 1
                  lui          s8, 313250
                  sll          s10, s1, s9
                  sltiu        s8, a6, -1310
                  ori          zero, t5, -209
                  addi         a7, zero, 17 #init loop 1 limit
                  sltu         t2, s0, s9
                  auipc        a0, 798286
                  add          t3, a4, a1
                  ori          ra, a3, -1466
                  slli         s10, s11, 4
                  xor          s2, s9, t5
                  srai         tp, t3, 19
                  srl          s9, s2, s1
sub_3_19_1_t:     and          tp, t6, a0
                  addi         s6, s6, 2 #update loop 1 counter
                  slt          ra, s2, a0
                  addi         a5, zero, 9 #init loop 0 counter
                  srl          s2, a4, a1
                  sll          a1, a5, ra
                  addi         a3, zero, -18 #init loop 0 limit
                  srli         t0, s0, 17
                  andi         s8, s0, 1586
sub_3_19_0_t:     nop
                  addi         a5, a5, -10 #update loop 0 counter
                  srl          t2, s8, t6
                  xori         a0, a4, 666
                  bge          a5, a3, sub_3_19_0_t #branch for loop 0
                  sll          s7, sp, gp
                  and          ra, t0, s1
                  bne          s6, a7, sub_3_19_1_t #branch for loop 1
                  sltiu        s8, s7, -1661
                  addi         s8, zero, 7 #init loop 1 counter
                  xori         t3, s7, 2034
                  sub          t4, a0, ra
                  slti         gp, a6, -742
                  addi         s9, zero, 15 #init loop 1 limit
                  sub          a0, a6, t0
                  lui          t4, 956950
                  sra          t4, a6, a7
sub_3_2_1_t:      andi         t6, t5, 90
                  sll          t4, s7, a6
                  addi         s8, s8, 9 #update loop 1 counter
                  slli         s7, s0, 0
                  xor          a5, gp, t1
                  addi         a6, zero, 2 #init loop 0 counter
                  and          s11, s3, a7
                  xori         gp, s3, -914
                  addi         a1, zero, 19 #init loop 0 limit
                  xor          t3, s3, zero
                  ori          ra, s3, -2031
sub_3_2_0_t:      addi         a5, s9, -1853
                  sltiu        t2, s11, 596
                  addi         a6, a6, 7 #update loop 0 counter
                  xor          s6, t0, a6
                  bltu         a6, a1, sub_3_2_0_t #branch for loop 0
                  slti         s10, s0, -1669
                  and          zero, tp, a4
                  slt          gp, gp, s9
                  bltu         s8, s9, sub_3_2_1_t #branch for loop 1
                  slt          a7, t1, a0
                  addi         t1, zero, 10 #init loop 1 counter
                  srli         s11, s1, 20
                  sll          s0, a1, t6
                  addi         a1, zero, -20 #init loop 1 limit
sub_3_16_1_t:     nop
                  and          s11, a4, s6
                  srli         tp, t5, 7
                  addi         t1, t1, -5 #update loop 1 counter
                  addi         a7, zero, -6 #init loop 0 counter
                  sra          s8, s8, t2
                  xor          s10, a7, s4
                  andi         a0, t3, -1997
                  addi         t2, zero, 20 #init loop 0 limit
                  auipc        s10, 383465
                  sltiu        s6, a3, 1371
sub_3_16_0_t:     slt          t3, tp, a4
                  or           t5, s2, t4
                  addi         a7, a7, 2 #update loop 0 counter
                  srli         s8, s8, 15
                  slt          t0, a4, s11
                  addi         gp, t0, -18
                  bne          a7, t2, sub_3_16_0_t #branch for loop 0
                  ori          gp, s11, -325
                  beq          t1, a1, sub_3_16_1_t #branch for loop 1
                  sltu         t3, a1, s0
                  addi         a6, zero, 0 #init loop 0 counter
                  lui          t6, 834673
                  sra          t4, a2, a5
                  sltiu        a7, t5, -368
                  srai         t0, a5, 27
                  add          gp, s8, a0
                  add          s1, t1, t2
                  addi         s6, zero, -7 #init loop 0 limit
                  sltiu        s10, s3, 702
                  xor          tp, a3, a6
                  sltiu        s3, s6, 1751
                  srl          t3, s5, s4
sub_3_15_0_t:     slti         s9, a4, 308
                  sll          s7, ra, s5
                  sra          s2, sp, t4
                  and          s9, a2, s7
                  addi         a6, a6, -7 #update loop 0 counter
                  add          t1, a1, sp
                  slti         t1, zero, 632
                  lui          t3, 1009055
                  bne          a6, s6, sub_3_15_0_t #branch for loop 0
                  xor          s2, t5, a3
                  addi         a0, zero, -2 #init loop 1 counter
                  addi         t1, zero, -11 #init loop 1 limit
sub_3_5_1_t:      addi         s2, t1, 1980
                  addi         a0, a0, -9 #update loop 1 counter
                  addi         a6, zero, 8 #init loop 0 counter
                  addi         s9, zero, 13 #init loop 0 limit
sub_3_5_0_t:      sltu         s11, s2, zero
                  nop
                  addi         a6, a6, 8 #update loop 0 counter
                  bltu         a6, s9, sub_3_5_0_t #branch for loop 0
                  bne          a0, t1, sub_3_5_1_t #branch for loop 1
                  sltu         s1, s10, t5
                  addi         t4, zero, -8 #init loop 0 counter
                  sub          s4, s1, t3
                  slti         a1, t1, 1438
                  sltu         a2, s10, a3
                  xori         gp, t5, 335
                  addi         a1, s9, 1483
                  xori         tp, t4, -211
                  and          a2, t5, a3
                  srai         t1, gp, 28
                  ori          a7, s0, -1004
                  sltu         s8, s8, s1
                  addi         t0, ra, -1769
                  lui          a7, 955352
                  andi         t1, sp, -1625
                  sltu         s11, s11, a5
                  auipc        s1, 990074
                  srai         t5, s5, 26
                  addi         a0, zero, 1 #init loop 0 limit
                  andi         s7, ra, -1578
                  srai         a3, a6, 31
                  srl          s3, t3, a1
sub_3_13_0_t:     nop
                  addi         s2, s5, 1903
                  lui          a2, 151779
                  addi         t4, t4, 9 #update loop 0 counter
                  sltiu        a3, s10, 1722
                  slti         a2, t0, 567
                  slt          t0, ra, s8
                  beq          t4, a0, sub_3_13_0_t #branch for loop 0
                  or           a6, s8, t2
                  addi         tp, zero, 6 #init loop 1 counter
                  addi         t6, zero, 4 #init loop 1 limit
sub_3_14_1_t:     ori          s11, a0, -1432
                  sltiu        t1, t2, 1908
                  addi         tp, tp, -3 #update loop 1 counter
                  addi         ra, zero, 9 #init loop 0 counter
                  addi         a3, zero, 20 #init loop 0 limit
sub_3_14_0_t:     xor          a0, t4, s10
                  addi         ra, ra, 5 #update loop 0 counter
                  srli         a2, gp, 20
                  bltu         ra, a3, sub_3_14_0_t #branch for loop 0
                  bgeu         tp, t6, sub_3_14_1_t #branch for loop 1
                  add          a1, a1, t5
                  bltu         a0, t6, 4f
                  beq          s3, t1, 17f
                  or           s6, tp, t1
                  slli         t6, t2, 14
4:                slt          a5, s3, s2
                  bgeu         a2, a2, 20f
                  addi         s3, s11, -776
                  sra          s2, s7, s7
                  sll          s1, t3, s10
                  bge          a7, a2, 25f
                  sub          s10, t2, a5
                  xor          s9, t0, s1
                  srai         s11, tp, 0
                  sra          s4, sp, t5
                  bge          t1, s5, 33f
                  slt          a1, t6, s3
                  xor          s8, tp, a7
17:               srai         a2, t4, 9
                  sltu         s2, s2, s11
                  bltu         t0, a0, 23f
20:               sra          zero, a6, t3
                  bltu         s6, t5, 23f
                  sltu         t0, tp, s5
23:               or           a0, zero, t6
                  sltu         t4, s4, zero
25:               lui          a6, 649181
                  addi         gp, t4, -357
                  add          a3, t3, a1
                  slti         t0, a3, 31
                  add          s6, zero, a2
                  xori         a0, s2, 1839
                  srl          a5, t0, s1
                  addi         a7, a5, 1437
33:               addi         t5, gp, -744
                  or           a1, a7, t1
                  ori          gp, s3, 190
                  add          t3, s8, a0
                  lui          a0, 53891
                  or           s0, s4, tp
                  nop
                  bgeu         a0, s11, 55f
                  andi         t4, t3, 1342
                  nop
                  slli         s6, sp, 25
                  sll          a7, s9, t5
                  slt          s0, s2, a3
                  xor          s8, t6, t0
                  bne          sp, s4, 49f
                  sltu         a3, a7, s9
49:               or           a1, t5, a0
                  srli         a2, s3, 16
                  srai         ra, a5, 18
                  ori          s10, t3, -650
                  addi         a5, t4, 800
                  ori          a7, s11, -1722
55:               slti         t1, zero, 1690
                  or           s8, t6, s3
                  slli         t5, s1, 25
                  sub          t3, s2, s7
                  auipc        s7, 182900
                  sltiu        a1, tp, 1333
                  slli         t4, t5, 28
                  bgeu         a2, s10, 73f
                  add          ra, a0, s8
                  bgeu         s10, s7, 75f
                  bgeu         a3, s3, 81f
                  sra          s9, s2, t6
                  srai         s4, a2, 27
                  andi         ra, s7, -1526
                  blt          t4, s6, 88f
                  srai         t4, s2, 17
                  addi         s0, zero, 597
                  xori         tp, s4, 481
73:               blt          a6, s7, 83f
                  beq          t0, s6, 91f
75:               beq          ra, s0, 77f
                  sltiu        s4, t4, -1609
77:               andi         s8, s5, -597
                  srl          s1, a4, s10
                  xor          t4, t2, s7
                  srai         s7, t2, 1
81:               sltiu        a7, a0, -1583
                  srli         s4, t6, 25
83:               and          s7, t3, tp
                  xor          s1, t0, a0
                  addi         s3, s0, 1484
                  bne          s10, a4, 87f
87:               srai         a2, t0, 25
88:               srai         s2, gp, 26
                  srai         s2, s1, 17
                  lui          zero, 207831
91:               srli         t0, s1, 26
                  bne          a0, ra, 112f
                  bne          gp, s1, 103f
                  sub          a6, t5, zero
                  bltu         s7, gp, 109f
                  bltu         a6, s4, 114f
                  sll          s2, a3, sp
                  and          s11, s8, a5
                  addi         t4, t6, -51
                  slti         t5, s1, -1909
                  blt          a2, a1, 120f
                  andi         s8, s3, 1697
103:              and          s11, sp, t3
                  add          t2, gp, zero
                  slli         a3, s11, 9
                  lui          s2, 1002252
                  nop
                  srl          s6, s6, s1
109:              auipc        a2, 849591
                  srai         t0, s3, 0
                  and          t2, a4, t6
112:              slli         zero, s0, 21
                  bgeu         sp, a6, 122f
114:              addi         t4, a1, 1487
                  srai         s10, s4, 3
                  slti         zero, s5, -796
                  blt          t2, s9, 118f
118:              xor          a7, a4, s0
                  bge          a3, s5, 124f
120:              srai         t4, a2, 11
                  beq          tp, s1, 124f
122:              bne          s0, t4, 132f
                  addi         s1, a1, 570
124:              bne          a0, t2, 127f
                  or           a3, a5, s0
                  sll          gp, t6, s0
127:              andi         gp, s1, -73
                  or           t6, t2, a4
                  bltu         s10, t1, 137f
                  auipc        s7, 280652
                  auipc        a3, 465598
132:              blt          s5, t5, 152f
                  srli         t0, s1, 3
                  beq          t6, s11, 154f
                  bltu         t4, a0, 151f
                  sltu         a1, a3, s2
137:              andi         a5, gp, 839
                  bne          a7, a5, 157f
                  addi         t5, zero, 64
                  addi         t1, s1, -2032
                  sltu         ra, s10, a5
                  andi         s3, s6, 1671
                  srl          gp, s6, s9
                  andi         t3, t1, -807
                  beq          t5, t0, 147f
                  add          t1, a1, zero
147:              sltu         t0, t3, gp
                  and          t5, a7, t0
                  bgeu         t3, s5, 159f
                  andi         t6, s1, 1150
151:              slti         t2, a0, 270
152:              sltu         a7, ra, s9
                  sra          a2, s4, zero
154:              slt          s11, a4, zero
                  srl          s2, t3, s3
                  srai         s2, zero, 6
157:              srl          tp, s5, sp
                  sub          a3, t5, gp
159:              srli         t4, tp, 13
                  slli         s10, a0, 0
                  sra          gp, s2, gp
                  ori          a6, a3, -1203
                  bltu         s11, a1, 171f
                  bge          a4, a0, 179f
                  and          t6, a5, t0
                  srli         s2, s1, 10
                  srli         t2, a4, 26
                  beq          sp, s11, 178f
                  andi         t3, a7, 314
                  sra          s0, s9, s10
171:              nop
                  andi         s3, t6, 1271
                  bgeu         t5, s10, 184f
                  ori          a3, a4, -490
                  auipc        a1, 23706
                  or           s11, a7, a0
                  slli         a3, t0, 19
178:              sltiu        a1, s1, -266
179:              slt          t1, s3, a6
                  bltu         s6, t5, 184f
                  sltu         a7, s5, t2
                  andi         t2, t3, 1549
                  add          t1, t1, a4
184:              ori          gp, s3, -1521
                  or           t4, t6, a7
                  sub          s11, t1, s9
                  andi         t2, s9, -95
                  blt          a5, a1, 202f
                  xor          s1, a5, s9
                  slti         s2, tp, -834
                  addi         t5, s11, -1862
                  srli         s1, a6, 22
                  ori          a6, ra, 751
                  xori         a1, s7, 130
                  nop
                  and          a5, s7, s0
                  blt          t0, a7, 216f
                  bne          s4, t4, 199f
199:              and          a3, s1, s3
                  srli         a7, gp, 5
                  add          tp, sp, a4
202:              blt          a6, s9, 205f
                  bge          a0, a1, 220f
                  bne          a2, t6, 223f
205:              sltu         s0, s9, s1
                  bne          sp, zero, 226f
                  sltiu        a2, a2, 236
                  xor          gp, a4, a7
                  srai         tp, t0, 24
                  lui          t6, 666985
                  srl          a5, t5, t1
                  sra          t1, s7, s3
                  sll          ra, s7, zero
                  bge          s0, s9, 232f
                  bge          t4, a6, 231f
216:              ori          a6, a7, 1965
                  bne          ra, t1, 221f
                  sub          a1, s3, a1
                  xori         s1, gp, -1693
220:              beq          a4, a5, 225f
221:              auipc        t6, 73718
                  srl          a0, t1, a1
223:              sra          s3, s0, t1
                  auipc        a7, 385053
225:              srli         a5, t0, 27
226:              bltu         t2, a5, 229f
                  sltiu        a0, s6, 1391
                  sll          a2, a1, s7
229:              lui          s4, 31140
                  nop
231:              xori         gp, a3, -1679
232:              nop
                  blt          s7, a2, 234f
234:              slt          t2, a5, s3
                  sltu         t4, s3, a2
                  xor          ra, a7, a4
                  slt          ra, t4, sp
                  addi         t0, zero, 5 #init loop 1 counter
                  addi         t6, zero, 19 #init loop 1 limit
sub_3_18_1_t:     or           a2, a7, a3
                  addi         t0, t0, 2 #update loop 1 counter
                  add          s3, t6, s9
                  addi         t4, zero, -10 #init loop 0 counter
                  addi         s7, zero, 14 #init loop 0 limit
sub_3_18_0_t:     and          tp, a1, a4
                  nop
                  addi         t4, t4, 1 #update loop 0 counter
                  bne          t4, s7, sub_3_18_0_t #branch for loop 0
                  beq          t0, t6, sub_3_18_1_t #branch for loop 1
                  slli         s10, t4, 16
                  slli         t2, t3, 12
                  slt          a0, s1, gp
                  xori         zero, s7, 687
                  bge          a7, a1, 243f
                  bne          s11, s4, 244f
243:              xor          s3, s10, a1
244:              beq          a2, a4, 260f
                  xor          s1, sp, t2
                  beq          a0, sp, 261f
                  srli         a6, a0, 15
                  andi         t1, a4, 58
                  slti         t2, a4, 815
                  xor          gp, s8, t5
                  bltu         s7, t6, 262f
                  lui          tp, 276635
                  srai         a3, s7, 18
                  xor          s0, s10, ra
                  slt          t4, s11, t0
                  addi         a0, t3, -1553
                  lui          a6, 11317
                  ori          a3, s2, 1426
                  srai         s0, s2, 23
260:              or           s3, t0, s7
261:              auipc        s1, 553578
262:              blt          s0, t4, 271f
                  srai         a0, s7, 25
                  bne          a3, a7, 274f
                  sra          t5, s7, s4
                  sll          t5, a1, s5
                  blt          s11, s10, 286f
                  bge          s3, a4, 277f
                  addi         a0, zero, -6 #init loop 0 counter
                  srli         t4, s10, 20
                  slli         s10, a1, 28
                  sub          t5, s1, t4
                  add          s2, s6, t5
                  or           s9, t1, s6
                  srli         t1, s6, 5
                  add          a2, s5, t1
                  addi         gp, zero, 18 #init loop 0 limit
                  srai         a2, t3, 2
sub_3_10_0_t:     addi         t4, zero, 677
                  xor          t0, s2, a7
                  xor          t5, s2, s11
                  sub          tp, tp, t6
                  auipc        s2, 479095
                  andi         s3, s2, 49
                  slt          s3, s7, tp
                  sub          s6, s0, a1
                  slti         s6, zero, 348
                  add          s11, s10, s1
                  nop
                  addi         a0, a0, 3 #update loop 0 counter
                  sra          ra, s3, t4
                  beq          a0, gp, sub_3_10_0_t #branch for loop 0
                  sub          s0, zero, s9
                  bge          t5, t5, 279f
                  slt          s0, s1, a7
271:              bgeu         s7, sp, 287f
                  sra          s3, sp, s10
                  sltiu        s10, s7, -1911
274:              sltu         t4, s2, s7
                  add          zero, ra, t0
                  srli         s4, a5, 13
277:              slt          a3, s4, s6
                  bgeu         s8, t3, 289f
279:              sltiu        t5, t1, 990
                  nop
                  bgeu         tp, tp, 296f
                  bgeu         s8, s10, 296f
                  lui          t3, 911550
                  or           s6, s1, s10
                  xor          s0, sp, a2
286:              srli         s0, t6, 16
287:              slt          s6, s2, ra
                  sltu         s2, s7, ra
289:              lui          a6, 41992
                  srai         s10, sp, 2
                  auipc        s6, 56450
                  lui          a1, 363515
                  slt          t5, a7, s3
                  sltiu        s10, s5, 1288
                  nop
296:              xori         t2, zero, -483
                  srai         a0, s7, 3
                  xor          ra, a4, a2
                  and          s1, s4, t3
                  andi         a1, s8, -1203
                  bltu         a4, s6, 321f
                  addi         t0, t1, 555
                  xor          tp, s1, s2
                  bgeu         s1, s4, 314f
                  bgeu         s10, t6, 325f
                  beq          t0, s7, 307f
307:              srl          a2, s3, s5
                  sltu         s6, t1, s0
                  add          a6, tp, s8
                  sub          t1, s9, s2
                  sra          s6, tp, t3
                  sltu         a3, t6, a0
                  bgeu         s3, s11, 315f
314:              slt          s10, gp, s8
315:              blt          t6, ra, 318f
                  nop
                  xori         s0, sp, -1492
318:              bltu         s5, a1, 326f
                  slti         t6, t3, 501
                  beq          s1, s5, 330f
321:              bltu         s8, s8, 325f
                  beq          gp, tp, 341f
                  slt          a1, s5, a0
                  bltu         t5, zero, 335f
325:              srli         s6, a1, 4
326:              slti         s1, t5, -1366
                  bne          t3, a0, 329f
                  xori         a2, t2, -1633
329:              sll          s3, s5, a3
330:              add          s7, a1, zero
                  and          a7, zero, s4
                  ori          s10, s10, -1627
                  slti         a1, a4, -251
                  srai         s6, s5, 16
335:              srl          s9, s8, a3
                  xor          t3, a0, a6
                  add          s8, a4, tp
                  blt          s8, a6, 357f
                  addi         t4, s5, -442
                  lui          a2, 856407
341:              bne          t4, a2, 344f
                  auipc        a7, 464378
                  srl          t0, s11, t5
344:              srai         s10, t4, 4
                  srl          s11, zero, a0
                  andi         t5, s5, -480
                  sll          s8, t2, a0
                  slt          s3, s0, a2
                  and          zero, s2, zero
                  bne          s8, a6, 365f
                  ori          s11, a5, 1328
                  sltu         t4, s6, t6
                  addi         ra, s1, -1220
                  sra          s3, s1, a6
                  andi         a1, t4, -1338
                  srli         s9, s0, 15
357:              srli         a7, a1, 5
                  xori         s6, s9, -973
                  slt          t1, s1, tp
                  srli         gp, a2, 13
                  sltiu        s1, a4, 1386
                  slli         s4, s8, 12
                  bltu         s8, t6, 367f
                  ori          t6, a7, -614
365:              sltu         gp, a3, s4
                  lui          t4, 387286
367:              srl          t3, t5, ra
                  sra          t2, t4, t5
                  bltu         a2, t0, 370f
370:              sra          t6, a7, s3
                  and          tp, t4, t0
                  ori          s1, ra, -827
                  sll          s7, s11, s0
                  srli         s2, s1, 24
                  bge          a5, t1, 391f
                  and          ra, s0, zero
                  or           a5, tp, t6
                  sll          t4, a4, s2
                  xori         a3, a1, -1631
                  beq          s9, a2, 396f
                  sll          tp, a2, a4
                  xor          tp, s1, s3
                  sra          s0, t1, a6
                  bgeu         s11, gp, 401f
                  bge          t2, s8, 390f
                  or           t2, s6, a1
                  slti         tp, a6, -558
                  bne          s9, a1, 390f
                  lui          tp, 851414
390:              sra          s2, a3, s7
391:              auipc        t3, 395957
                  and          t5, tp, s8
                  bne          a7, t6, 411f
                  blt          s5, s3, 395f
395:              add          s9, s0, s5
396:              lui          a6, 834511
                  ori          a2, s3, -424
                  bltu         s4, a3, 417f
                  nop
                  bgeu         t3, t5, 418f
401:              sltiu        s11, gp, -1449
                  beq          a6, a0, 422f
                  sra          s11, a2, a5
                  sll          s1, a2, t3
                  slli         s11, zero, 22
                  srli         s2, t0, 0
                  addi         a7, zero, -7 #init loop 1 counter
                  xori         s9, gp, 1511
                  sltu         t2, t0, gp
                  srli         tp, a5, 6
                  addi         s0, zero, 9 #init loop 1 limit
                  andi         t2, s7, -1892
sub_3_1_1_t:      or           s8, s11, zero
                  srai         s2, s6, 1
                  addi         a7, a7, 4 #update loop 1 counter
                  srl          zero, a0, s7
                  lui          tp, 36671
                  addi         t3, zero, 1 #init loop 0 counter
                  srl          ra, ra, s2
                  addi         a5, zero, 7 #init loop 0 limit
                  sltu         s2, tp, s11
sub_3_1_0_t:      sub          ra, t3, s3
                  srli         a2, a7, 15
                  addi         t3, t3, 6 #update loop 0 counter
                  andi         a3, s4, 990
                  srai         t0, a3, 8
                  sltiu        s6, a2, 1866
                  bne          t3, a5, sub_3_1_0_t #branch for loop 0
                  nop
                  slli         s2, s10, 11
                  sra          a0, s7, t3
                  beq          a7, s0, sub_3_1_1_t #branch for loop 1
                  slli         t4, s8, 29
                  sltiu        s8, zero, 1827
                  bge          ra, zero, 418f
                  ori          t2, t5, 1431
                  nop
411:              add          a5, s10, a4
                  xori         zero, sp, 1046
                  nop
                  ori          s3, s8, 519
                  srai         ra, t0, 1
                  slt          a3, a3, s0
417:              bltu         a7, a7, 436f
418:              andi         t1, zero, 1867
                  ori          s8, s6, -689
                  sltiu        ra, a4, 879
                  ori          s1, s0, 1733
                  sltiu        s9, s0, 313
                  ori          s10, s0, 816
                  xor          s2, t3, a3
                  lui          a5, 663040
                  auipc        s10, 690923
                  beq          a2, s11, sub_3_j5 #branch to jump instr
                  nop
                  xor          s11, s5, s10
                  and          t4, s10, a4
sub_3_j5:         jal          ra, sub_4 #jump sub_3 -> sub_4
422:              bltu         a7, a4, 441f
                  or           s3, a5, a1
                  auipc        a6, 860124
                  xor          s0, t5, zero
                  srl          t5, s11, a0
                  srl          s8, t2, s2
                  auipc        s10, 851079
                  sll          s4, s1, s1
                  slti         a2, s0, -52
                  sra          ra, s3, a5
                  lui          a0, 893619
                  sra          s9, s5, tp
                  xor          s2, t4, s4
                  blt          s4, s10, 455f
436:              lui          s4, 546489
                  srai         s1, zero, 14
                  srai         s10, s3, 3
                  bne          s4, s11, 455f
                  add          s8, s3, t4
441:              and          a3, s10, s3
                  and          t4, a0, a6
                  or           t3, s2, s6
                  auipc        a3, 332074
                  lui          s0, 389311
                  lui          t1, 414881
                  bltu         sp, t5, 449f
                  bne          s4, s5, 463f
449:              lui          t3, 979412
                  and          a2, s1, t0
                  slt          s6, s4, s10
                  slt          a1, t2, zero
                  slti         s3, s11, 806
                  slt          a2, a1, a5
455:              beq          a6, a5, 460f
                  slli         tp, a6, 31
                  nop
                  and          t4, s5, sp
                  slt          s6, a7, a6
460:              sra          s3, t2, t4
                  nop
                  bltu         s9, zero, 478f
463:              slli         s6, a5, 4
                  srl          a2, ra, s1
                  auipc        t3, 119315
                  beq          tp, t3, 468f
                  sll          a1, t6, s2
468:              lui          s7, 666091
                  sub          s7, a4, s8
                  srai         a5, s7, 15
                  lui          s0, 861858
                  bgeu         a5, t3, 475f
                  sra          t3, a5, a4
                  andi         t5, sp, -1493
475:              slti         s10, a1, 779
                  bltu         ra, s8, 477f
477:              addi         t0, s7, -607
478:              sra          a3, ra, t2
                  sub          s7, s0, t5
                  addi         t1, s4, -108
                  nop
                  bgeu         gp, a1, 485f
                  sll          ra, t6, s9
                  addi         s8, s5, -2030
485:              or           t0, s4, a1
                  sltu         t6, s1, s5
                  andi         t0, s2, 1779
                  or           s10, t3, a4
                  xori         zero, a2, -1513
                  addi         s10, s4, 671
                  or           s8, t4, t3
                  sltiu        a1, tp, -265
                  addi         t3, a7, 1003
                  blt          s8, t2, 504f
                  bgeu         a7, s11, 512f
                  ori          a3, tp, 1403
                  sra          t2, zero, s3
                  blt          a6, a6, 506f
                  sra          a5, a0, t3
                  addi         a3, zero, -9 #init loop 1 counter
                  auipc        s7, 702274
                  add          s3, tp, a4
                  sltiu        t0, s4, 1604
                  addi         a0, zero, -13 #init loop 1 limit
                  auipc        s9, 852452
                  sll          s4, t4, t4
                  slli         gp, sp, 24
                  slti         s11, gp, -1280
sub_3_12_1_t:     or           t1, t4, s2
                  addi         a3, a3, -1 #update loop 1 counter
                  slti         a2, s1, 1405
                  addi         t2, zero, -7 #init loop 0 counter
                  sltiu        tp, a4, 939
                  addi         s8, s3, 1266
                  or           gp, s3, a4
                  addi         t4, zero, 14 #init loop 0 limit
                  slti         a5, s2, 1183
sub_3_12_0_t:     auipc        tp, 990356
                  addi         t2, t2, 7 #update loop 0 counter
                  slti         a6, s3, 650
                  beq          t2, t4, sub_3_12_0_t #branch for loop 0
                  slti         a7, s8, -1043
                  xori         s4, a7, -337
                  srl          gp, t3, sp
                  beq          a3, a0, sub_3_12_1_t #branch for loop 1
                  auipc        s1, 118357
                  sltu         s8, t1, s7
                  blt          t5, a5, 510f
                  and          s1, gp, ra
                  srli         t3, t4, 2
504:              beq          a6, t1, 520f
                  srl          s4, a7, s0
506:              add          s3, a3, s1
                  bne          a2, t1, 517f
                  sltu         a3, s5, t5
                  bge          s9, s4, 523f
510:              and          s6, s7, s10
                  blt          s9, s5, 522f
512:              and          s10, a4, s0
                  bge          t4, s11, 515f
                  bltu         gp, s7, 518f
515:              xori         t4, a3, 600
                  slti         s2, a5, 756
517:              srli         s10, t6, 7
518:              slt          t1, s7, s2
                  slti         a6, s2, -2008
520:              auipc        a1, 963690
                  bgeu         s7, a0, 536f
522:              add          s9, s9, s0
523:              sltu         s1, t4, t1
                  srai         ra, t5, 27
                  sub          t5, t1, t6
                  xor          a7, a7, a7
                  srai         s6, a1, 22
                  beq          t3, a7, 532f
                  and          a1, zero, a3
                  bge          ra, s1, 541f
                  srl          s3, a6, s8
532:              and          t1, s10, sp
                  nop
                  sll          a0, s1, t4
                  bge          s8, t3, 546f
536:              addi         s2, a1, -990
                  bgeu         tp, a2, 541f
                  ori          t4, t1, 1039
                  sra          a2, a4, s3
                  sltiu        a7, s2, 814
541:              sltiu        s0, a6, -632
                  sll          s11, t0, s6
                  sra          s10, a1, s5
                  slti         s7, gp, 1841
                  slti         gp, a6, 1821
546:              andi         t3, a0, 997
                  add          t1, s11, s0
                  add          s0, t1, a7
                  blt          sp, t3, 564f
                  andi         zero, ra, 1208
                  or           t5, a2, t3
                  sll          s3, s1, ra
                  sub          t2, s6, t5
                  sltiu        s6, s1, 776
                  xori         s4, t2, 1850
                  nop
                  sll          t5, a0, t1
                  sltu         s4, a6, t6
                  sll          t0, t1, s5
                  sll          s8, a3, a2
                  blt          tp, tp, 577f
                  sub          gp, s10, a7
                  auipc        s0, 746910
564:              xor          t3, t3, s0
                  addi         t5, s3, 327
                  andi         ra, s2, 1748
                  or           t5, sp, a0
                  blt          ra, a0, 569f
569:              slt          s6, a2, a7
                  srai         ra, t6, 0
                  bge          s7, tp, 581f
                  nop
                  sub          s4, s8, s9
                  bge          t6, t2, 594f
                  slli         a0, a6, 6
                  beq          ra, s8, 596f
577:              srai         s8, a1, 12
                  lui          ra, 232066
                  bltu         s3, s2, 583f
                  sltu         s10, t5, s8
581:              bgeu         t3, sp, 596f
                  beq          s3, t0, 601f
583:              bne          a5, a2, 594f
                  bge          t2, s11, 586f
                  nop
586:              nop
                  srl          t6, s5, a1
                  sra          s9, s5, a3
                  auipc        a7, 1037619
                  xor          a3, a0, t4
                  blt          t3, gp, 594f
                  or           s3, t5, s1
                  andi         gp, a0, -1253
594:              xori         gp, s4, -852
                  bltu         t3, t3, 600f
596:              slti         t6, t0, -1161
                  slli         a0, s10, 19
                  bltu         s5, s10, 600f
                  auipc        t6, 108100
600:              srli         t2, s2, 20
601:              auipc        s2, 716018
                  xor          a6, sp, s1
                  add          t3, a0, a5
                  srai         a2, s11, 8
                  blt          ra, t2, 621f
                  srli         s4, s9, 24
                  or           a7, a7, s10
                  sra          t2, s11, t2
                  slt          s2, tp, sp
                  or           s6, s11, ra
                  and          t6, s6, s2
                  xori         gp, s9, -829
                  add          s1, s7, a6
                  xor          t4, s7, t2
                  xori         t3, s8, -1123
                  srai         s6, s2, 1
                  sub          a0, s8, gp
                  sub          t6, s7, s11
                  sll          t3, s11, t4
                  or           a3, t4, s10
621:              nop
                  sra          t4, s9, a1
                  beq          t4, tp, 641f
                  srai         t0, s6, 31
                  addi         s9, t0, 531
                  bltu         t6, sp, 645f
                  nop
                  srli         t0, sp, 16
                  bne          ra, a5, 630f
630:              srl          a5, t6, s9
                  nop
                  bltu         sp, s6, 651f
                  sub          s6, s8, t2
                  sltiu        tp, a0, -1863
                  xor          t2, s2, a6
                  sltu         a0, s11, a7
                  auipc        t1, 147745
                  auipc        s4, 344815
                  slti         ra, a6, 1261
                  sll          a3, s10, s1
641:              blt          a5, a5, 649f
                  bge          s6, a6, 651f
                  slt          t0, s5, t0
                  blt          t6, t1, 660f
645:              blt          s3, t0, 647f
                  xori         s1, s11, 1223
647:              beq          t6, zero, 650f
                  sra          s8, a2, s7
649:              sltiu        s1, ra, 1114
650:              auipc        s1, 75639
651:              andi         zero, s10, -473
                  sltiu        s3, s1, 536
                  srli         t2, s6, 15
                  bltu         s6, ra, 668f
                  blt          a7, a6, 665f
                  ori          s0, a6, 290
                  sltiu        t0, t6, 336
                  srai         a0, a7, 20
                  sub          gp, s3, t5
660:              sra          t5, a3, tp
                  andi         a6, t4, 1154
                  auipc        s6, 827442
                  srli         s6, s0, 12
                  sltu         a1, a0, s10
665:              blt          a3, zero, 682f
                  slti         ra, a6, 335
                  bne          t3, t2, 677f
668:              sltiu        s7, a5, -863
                  add          t6, t5, a6
                  andi         s9, t1, 413
                  slli         a6, a1, 14
                  nop
                  bgeu         t1, t0, 689f
                  blt          gp, a1, 693f
                  srl          s2, s9, t0
                  slti         a3, a3, -895
677:              ori          t6, s9, 2009
                  auipc        a3, 448714
                  slti         a6, a4, 62
                  srl          s11, t5, t1
                  andi         s7, t4, -516
682:              and          t1, s5, t0
                  auipc        t6, 807166
                  xor          t2, s9, t2
                  ori          s10, t5, -802
                  xor          s1, s2, sp
                  sub          t1, t0, zero
                  and          zero, s8, a3
689:              sltiu        s0, s7, 945
                  and          s6, s1, s4
                  or           a7, t1, a4
                  addi         s9, a0, -816
693:              ori          s3, tp, -474
                  nop
                  srl          s8, tp, s2
                  addi         a5, a3, -27
                  bge          t0, s11, 698f
698:              andi         ra, t4, -1534
                  sll          s8, s0, a2
                  slti         t0, a1, -226
                  bltu         ra, t3, 703f
                  srai         s8, tp, 13
703:              andi         s2, a2, -1155
                  and          tp, a1, a7
                  ori          s8, s10, -293
                  add          s7, s7, s6
                  bltu         a3, a1, 710f
                  srl          s10, t2, a0
                  bne          t1, ra, 719f
710:              srai         s4, s0, 27
                  slli         s7, s7, 15
                  ori          s9, s11, 713
                  bgeu         s4, t6, 716f
                  bge          a5, s7, 729f
                  addi         t6, t5, -1201
716:              bge          s5, a3, 736f
                  sll          a1, t5, s6
                  bgeu         t2, s1, 729f
719:              auipc        a5, 17054
                  xor          t5, s3, gp
                  or           t5, zero, a3
                  beq          s6, gp, 738f
                  bge          s3, a7, 742f
                  or           t6, s5, s6
                  sll          s0, a4, t1
                  slti         a1, s1, 1018
                  xor          t5, t0, gp
                  sll          a1, s5, s1
729:              blt          a5, s6, 731f
                  auipc        a2, 1020816
731:              bne          t3, tp, 750f
                  srai         s2, t4, 12
                  sltiu        s1, t0, 1458
                  sltiu        s11, s8, -1165
                  ori          a0, a3, 1226
736:              bgeu         a3, a7, 747f
                  sll          t3, t6, a6
738:              bgeu         a3, a2, 748f
                  xori         t2, t1, -1134
                  bltu         zero, s10, 745f
                  sra          s10, s1, s11
742:              lui          t4, 572206
                  srl          a3, s2, t1
                  sltu         a6, t6, a4
745:              bgeu         s2, a6, 763f
                  xor          t0, s9, s8
747:              bne          s2, s2, 764f
748:              slli         s7, tp, 23
                  lui          s3, 489083
750:              slli         a2, a6, 19
                  addi         s3, s1, -699
                  ori          s3, s2, -1381
                  blt          s6, a1, 762f
                  srai         t6, s6, 1
                  beq          s8, a6, 759f
                  or           t6, t5, s0
                  sltiu        s4, s5, 1758
                  and          t4, s7, a3
759:              srl          t6, ra, a5
                  beq          s7, t6, 770f
                  andi         a5, t0, 1137
762:              bgeu         tp, s7, 770f
763:              sll          a1, s7, a6
764:              add          a2, s1, t4
                  beq          a2, t6, 769f
                  andi         a0, t0, 1634
                  slt          a2, s11, t2
                  ori          s6, s4, 803
769:              or           a0, s5, s11
770:              srai         a7, s5, 30
                  srl          s11, tp, s6
                  srai         a2, t0, 25
                  sltu         s6, s7, s9
                  srai         a5, t4, 3
                  andi         zero, gp, -358
                  xor          t6, zero, t3
                  addi         s9, s0, 738
                  sltiu        t6, a7, -531
                  bge          s7, a2, 799f
                  srl          t1, t3, s10
                  srai         t4, a5, 30
                  bltu         a6, s0, 796f
                  xor          a6, a1, a1
                  nop
                  nop
                  sltiu        s11, t4, 2019
                  bgeu         tp, a3, 802f
                  add          ra, a5, s4
                  sltu         s1, s7, s5
                  addi         t3, zero, -3 #init loop 0 counter
                  or           s11, s0, t5
                  and          a7, s7, s4
                  sra          tp, a6, s1
                  andi         t1, t5, 22
                  slli         a5, t3, 26
                  lui          a7, 12319
                  nop
                  ori          s11, s8, 230
                  andi         t5, t4, 1548
                  addi         a6, zero, 11 #init loop 0 limit
                  lui          s9, 807703
                  srl          t5, a7, zero
                  addi         a3, a0, -634
sub_3_3_0_t:      sltiu        s0, s9, -875
                  addi         t3, t3, 8 #update loop 0 counter
                  add          a5, s11, a0
                  or           ra, sp, s0
                  slti         tp, s7, 1036
                  sub          a1, a6, s3
                  blt          t3, a6, sub_3_3_0_t #branch for loop 0
                  xor          t0, gp, a5
                  nop
                  bne          a6, sp, 807f
                  sltu         ra, s8, t1
                  slli         s3, t0, 15
                  and          s6, a1, s5
                  sub          a1, t3, t6
796:              bge          a1, s7, 798f
                  bltu         a5, a4, 798f
798:              ori          a0, s1, -1956
799:              xori         s4, t1, -793
                  xor          gp, a2, t0
                  srai         t0, s9, 22
802:              sub          t6, a3, t6
                  sub          a3, a0, t1
                  bge          s3, t2, 806f
                  bltu         a5, gp, 810f
806:              sltiu        zero, s10, -101
807:              addi         ra, a3, -1602
                  xor          s9, s2, t6
                  lui          s9, 693291
810:              auipc        a0, 49546
                  bltu         a1, sp, 822f
                  andi         t1, s11, 795
                  xor          s6, s1, s9
                  bge          t0, sp, 830f
                  sll          a3, t3, t4
                  srai         s2, a2, 21
                  andi         s8, a2, -439
                  bge          t2, s10, 821f
                  sra          a1, t4, a0
                  auipc        t6, 92539
821:              srli         t6, t1, 15
822:              srl          t1, t2, s2
                  bge          tp, s6, 833f
                  and          a0, t2, gp
                  ori          a3, t1, -1155
                  bge          s10, s9, 835f
                  xor          s6, a3, s7
                  addi         a6, sp, -988
                  lui          s3, 721652
830:              nop
                  srl          a5, a0, s9
                  nop
833:              srai         zero, s5, 20
                  sltiu        s9, zero, -407
835:              slt          a1, zero, s7
                  sll          t4, t5, sp
                  srl          zero, gp, s6
                  bgeu         t0, s5, 854f
                  beq          s6, s4, 856f
                  sra          s7, a2, a5
                  auipc        t5, 749222
                  sltu         ra, t0, a2
                  addi         ra, t4, -404
                  addi         s8, s8, 896
                  srli         s11, s6, 12
                  slti         t3, s11, -1831
                  and          s6, a6, a0
                  sltu         a7, t0, zero
                  sll          ra, s9, a0
                  sub          a2, a1, s3
                  andi         s0, s5, -1907
                  sub          t2, t6, ra
                  or           s6, s0, a5
854:              bne          t1, s3, 864f
                  bltu         s11, zero, 856f
856:              srai         t1, s2, 6
                  srli         s6, s8, 27
                  srli         a7, sp, 15
                  lui          s4, 466852
                  bgeu         a0, a6, 871f
                  slli         t2, a6, 15
                  xori         s7, s11, -614
                  srl          a3, a2, t0
864:              slli         s11, a6, 8
                  srli         t0, s4, 23
                  srl          s0, a7, s10
                  sll          s1, gp, t4
                  slli         tp, t6, 21
                  andi         t3, s7, -442
                  add          a5, zero, t6
871:              bgeu         s4, s8, 889f
                  addi         s6, t4, 1430
                  xori         s8, gp, 1393
                  bne          t0, s5, 893f
                  add          a0, tp, s7
                  lui          s9, 11818
                  beq          a0, s9, 885f
                  srli         t6, s8, 31
                  bgeu         s7, s11, 881f
                  or           t2, s5, a5
881:              addi         a7, a1, -620
                  sltiu        s4, a0, 1689
                  sll          t1, a5, t5
                  bne          ra, s2, 898f
885:              sra          s1, a6, s9
                  sll          gp, a3, s10
                  beq          s11, a7, 891f
                  bltu         t6, s6, 891f
889:              beq          t0, s7, 908f
                  sltiu        a7, s6, -606
891:              bltu         s2, s2, 906f
                  auipc        s7, 614442
893:              sltu         t6, a2, sp
                  sra          s0, t1, ra
                  sltiu        t3, s4, -1981
                  add          s9, s1, t4
                  bge          a7, t0, 912f
898:              add          t5, sp, s3
                  auipc        t5, 299361
                  slt          t6, s7, a5
                  add          a2, s5, t1
                  bgeu         a4, a2, 921f
                  sltiu        a1, t5, -1251
                  xori         s2, t1, 1565
                  srl          t5, s6, tp
906:              bltu         s4, sp, 922f
                  sub          a5, s0, sp
908:              bge          ra, s2, 928f
                  and          t3, s9, s7
                  bltu         t6, s9, 920f
                  lui          a7, 519751
912:              add          t6, ra, s1
                  nop
                  blt          s11, a2, 915f
915:              nop
                  lui          s11, 391041
                  bge          s11, a5, 919f
                  srli         t2, s9, 1
919:              sll          s10, s9, zero
920:              bltu         tp, ra, 924f
921:              andi         tp, a2, -1229
922:              srl          a0, a2, s0
                  nop
924:              auipc        s7, 849491
                  ori          t0, tp, -765
                  xori         s9, a0, 255
                  or           t4, s1, sp
928:              beq          a1, s6, 948f
                  sltiu        ra, s4, -563
                  lui          t4, 778703
                  bgeu         t4, s10, 950f
                  slti         t5, s2, 615
                  slli         a1, tp, 31
                  or           t6, a3, a1
                  auipc        a5, 198811
                  ori          s8, a6, -1367
                  xor          t5, s9, s8
                  blt          a0, tp, 957f
                  nop
                  slti         t2, s7, 598
                  ori          a1, a3, -376
                  slt          a0, tp, s3
                  sltiu        s1, t0, 1859
                  add          a6, s0, t1
                  srl          s10, s1, a4
                  slti         t1, t1, 726
                  xor          t4, sp, zero
948:              xori         s6, a6, -427
                  andi         t1, a3, 1513
950:              xori         a0, ra, 1956
                  auipc        s11, 474860
                  slli         a3, t5, 30
                  nop
                  xori         a3, tp, -1793
                  nop
                  slli         ra, s6, 30
957:              bne          s0, t5, 962f
                  blt          s9, a1, 974f
                  slt          s10, ra, s4
                  blt          s1, t6, 962f
                  slt          a5, a6, s8
962:              slli         a3, a5, 24
                  slti         s7, t4, -226
                  and          ra, t6, s11
                  sltu         a3, s9, s3
                  auipc        t0, 968105
                  slli         tp, a5, 6
                  slti         t3, t5, -186
                  sra          a5, a3, t2
                  auipc        s8, 863821
                  slti         ra, t4, 389
                  bne          s10, s4, 992f
                  xori         t4, sp, -1957
974:              xor          gp, s11, t0
                  xor          tp, a6, t3
                  andi         a3, ra, -762
                  srai         t2, t1, 19
                  slli         s0, s0, 22
                  srl          gp, t2, s8
                  slt          a5, a7, s9
                  sra          a6, ra, a5
                  bne          s11, s10, 986f
                  slt          t4, a4, s11
                  sra          s2, a6, s1
                  auipc        a6, 941283
986:              sra          s9, zero, t6
                  lui          s7, 121074
                  sll          a0, a4, s6
                  slli         t0, s8, 5
                  ori          s10, a7, 1567
                  slli         s1, a3, 9
992:              bltu         a7, s5, 1007f
                  bne          t5, s4, 1004f
                  bltu         s11, s6, 1004f
                  bge          a0, t4, 1009f
                  ori          t3, s5, -1915
                  sra          s1, s5, s8
                  sub          a5, s5, s6
                  addi         a0, zero, 1391
                  bgeu         t4, s3, 1008f
                  add          s2, s8, t1
                  addi         t5, s6, 1484
                  xor          t6, a6, s6
1004:             lui          gp, 12467
                  sub          s10, gp, a5
                  xor          s9, s7, a1
1007:             lui          t4, 669814
1008:             add          a5, s2, t0
1009:             lui          s2, 648597
                  blt          s1, s3, 1019f
                  xor          gp, sp, s1
                  sra          a5, t0, s9
                  and          s2, s4, sp
                  ori          t1, s5, -79
                  bgeu         zero, t3, 1031f
                  sub          tp, zero, a1
                  nop
                  or           a1, s3, zero
1019:             sra          s2, s5, s9
                  auipc        t1, 761207
                  srli         t6, a7, 6
                  auipc        t6, 408806
                  bgeu         s1, s7, 1043f
                  ori          s0, a5, -901
                  xor          s10, a3, zero
                  srli         s6, t6, 31
                  srai         a6, s4, 12
                  nop
                  lui          s8, 984887
                  and          a1, gp, s4
1031:             xori         a7, t6, 1171
                  or           t5, a5, s6
                  srl          a1, s1, a5
                  or           s0, t3, gp
                  bgeu         s7, a4, 1036f
1036:             auipc        t2, 744047
                  bgeu         a6, s3, 1040f
                  bne          t1, a7, 1048f
                  bge          t2, gp, 1041f
1040:             sra          s3, s9, a3
1041:             sra          gp, s11, a4
                  andi         t2, s7, -12
1043:             auipc        s11, 861657
                  slli         a1, s0, 1
                  sll          t3, s11, s4
                  slt          s9, s9, t0
                  ori          s0, a5, 1608
1048:             slti         t3, t4, 1536
                  slti         t3, s10, -18
                  ori          s3, s11, -2033
                  sll          t6, sp, s4
                  bgeu         s7, a5, 1053f
1053:             addi         t6, t2, 70
                  sra          zero, a1, tp
                  sra          a7, s10, s8
                  lw           ra, 4(a4)
                  sltiu        zero, s2, 691
                  addi         a4, a4, 48
                  slti         s6, s3, -448
                  addi         s10, t3, 1786
1575:             addi x18, x1, 1
1575:             jalr x18, x18, 0
sub_5:            or           t1, t3, a0
                  lui          s0, 539544
                  bne          t3, a5, sub_5_stack_p
                  addi         t6, tp, -93
                  srai         t2, t4, 22
sub_5_stack_p:    addi         a4, a4, -24
                  slli         s6, a6, 1
                  sw           ra, 4(a4)
                  sub          t4, s6, s6
                  addi         s6, zero, -2 #init loop 1 counter
                  or           gp, a5, s11
                  addi         a0, zero, -13 #init loop 1 limit
sub_5_1_1_t:      slt          ra, s3, s5
                  addi         s6, s6, -2 #update loop 1 counter
                  addi         a3, zero, 9 #init loop 0 counter
                  addi         s9, zero, 17 #init loop 0 limit
                  srli         a7, a4, 28
sub_5_1_0_t:      xor          s0, s4, ra
                  addi         a3, a3, 8 #update loop 0 counter
                  srli         s2, tp, 21
                  srli         s10, t2, 24
                  beq          a3, s9, sub_5_1_0_t #branch for loop 0
                  sll          tp, t0, t3
                  sltiu        t0, a7, 970
                  bge          s6, a0, sub_5_1_1_t #branch for loop 1
                  srl          s4, s7, s3
                  add          a6, sp, s10
                  and          s2, s2, a3
                  sub          a6, t6, a2
                  beq          a1, sp, 20f
                  bne          a4, s4, 21f
                  sll          t3, ra, s11
                  bltu         a4, s3, 8f
                  sub          t0, t3, t0
8:                auipc        gp, 93782
                  sltiu        t4, t0, 1533
                  or           tp, a6, t4
                  sltu         t2, t4, a1
                  add          a1, a5, t3
                  bltu         gp, a5, 21f
                  xori         s3, t4, 940
                  bge          t1, s8, 28f
                  sub          t0, s1, tp
                  slt          a3, t5, t0
                  add          zero, s9, s11
                  srl          a2, t6, a2
20:               srli         zero, t2, 24
21:               lui          t1, 937368
                  bne          sp, a7, 42f
                  slti         ra, t1, -1834
                  slt          ra, t5, t2
                  addi         s10, s11, -461
                  andi         s6, s8, -620
                  slt          t1, s10, s11
28:               add          s8, s1, a7
                  ori          t5, t5, -1918
                  or           t3, a2, a6
                  srli         s10, s5, 17
                  or           a5, t2, ra
                  nop
                  or           a3, s8, a1
                  auipc        t0, 62748
                  bgeu         ra, gp, 48f
                  slti         s1, sp, -269
                  srl          gp, a1, s10
                  bltu         t5, a3, 50f
                  sub          t2, a5, t3
                  xori         s7, s1, 207
42:               bltu         a5, a3, 48f
                  srl          s0, a2, s8
                  lui          tp, 600666
                  bne          s10, t5, 53f
                  srl          t4, s9, a5
                  bltu         ra, zero, 51f
48:               bltu         s7, s3, 52f
                  beq          s9, s1, 54f
50:               slti         t1, s9, 1891
51:               xori         s0, s8, -7
52:               beq          s1, a3, 55f
53:               sltiu        s0, s2, -939
54:               sltu         s9, a3, t4
55:               xori         a2, gp, 1653
                  lui          a3, 358593
                  or           t2, a6, s5
                  sra          s9, s4, s5
                  sltiu        s2, sp, 2004
                  addi         s0, s0, 1164
                  bgeu         t5, t6, 63f
                  sltu         s2, s5, s1
63:               xori         ra, sp, -1325
                  sltiu        t4, s11, 1127
                  nop
                  slli         tp, a7, 5
                  auipc        ra, 312932
                  ori          a1, ra, -1882
                  beq          t4, zero, 76f
                  xor          t3, s1, sp
                  bge          a7, s0, 86f
                  nop
                  slt          t3, s6, s1
                  sltu         s0, t3, s9
                  slli         a5, t3, 28
76:               sltu         gp, a1, t5
                  andi         t6, s7, 202
                  slli         t0, s3, 24
                  srl          t1, t0, zero
                  add          s2, t0, a7
                  srai         s2, s6, 4
                  sll          s0, a3, a5
                  slli         t5, a6, 4
                  lui          a6, 777108
                  bne          a1, a6, 90f
86:               ori          gp, t1, 593
                  nop
                  add          a7, s11, t3
                  beq          s3, s2, 97f
90:               sll          s4, s8, a6
                  sltiu        s1, s2, -6
                  slt          zero, t6, t3
                  addi         s7, t1, 1778
                  slti         tp, a4, -433
                  lui          s1, 494498
                  sra          a2, s10, a2
97:               slti         zero, s5, -1161
                  sltu         a1, s7, s8
                  sra          a5, s10, t4
                  addi         s0, a1, 1110
                  add          s10, a7, a5
                  auipc        s10, 25893
                  slti         s2, s0, -2007
                  bne          s3, tp, 122f
                  slt          a3, s0, s5
                  slli         s8, tp, 2
                  auipc        t4, 716297
                  sll          tp, t4, s7
                  srai         t4, t6, 17
                  sll          t3, s10, a2
                  bne          a4, ra, 127f
                  and          zero, s9, s9
                  auipc        s6, 893219
                  bge          s4, a5, 133f
                  addi         a1, zero, -1 #init loop 0 counter
                  addi         a5, zero, 8 #init loop 0 limit
                  slt          s2, s9, s2
sub_5_0_0_t:      auipc        a0, 720987
                  xor          a0, s9, a2
                  addi         a1, a1, 5 #update loop 0 counter
                  blt          a1, a5, sub_5_0_0_t #branch for loop 0
                  addi         tp, t4, 1699
                  addi         s2, tp, -1439
                  xori         t3, s2, -1709
                  auipc        a3, 616042
                  lui          a6, 577640
                  beq          t6, a7, 129f
                  sltu         s11, sp, s7
                  and          a2, a0, t1
122:              add          a5, zero, t0
                  beq          t4, a2, 136f
                  bge          s7, s4, 136f
                  nop
                  bne          t4, t6, 136f
127:              sub          t3, t4, a3
                  slt          s0, s1, a6
129:              srl          a0, a3, ra
                  sltiu        s8, s1, 1090
                  bltu         s1, s5, 136f
                  and          t0, t0, a7
133:              bge          ra, a6, 136f
                  or           s10, t5, t5
                  slti         s10, sp, -358
136:              and          a2, s4, t3
                  sltu         s1, a0, s7
                  lw           ra, 4(a4)
                  srli         s8, a4, 8
                  slt          t4, s5, a0
                  lui          s9, 423684
                  slli         s7, gp, 25
                  sll          t1, t0, a4
                  srl          s11, a5, s0
                  addi         a4, a4, 24
                  ori          t5, s1, 991
                  nop
                  ori          t1, s9, -658
183:              addi x20, x1, 0
183:              jalr x20, x20, 0
sub_4:            bltu         a2, tp, sub_4_stack_p
                  addi         a0, t1, -1144
sub_4_stack_p:    addi         a4, a4, -64
                  sra          s6, a6, t3
                  sw           ra, 4(a4)
                  slli         s7, tp, 0
                  and          s1, s8, t1
                  sltiu        tp, s6, -1062
                  auipc        t4, 301604
                  slt          a0, a6, a1
                  addi         a3, zero, 1 #init loop 1 counter
                  or           a6, tp, gp
                  sltiu        a5, s0, 1199
                  and          s11, s2, a6
                  addi         s9, zero, 8 #init loop 1 limit
                  xor          s1, s5, a5
                  srai         a2, t0, 3
sub_4_0_1_t:      ori          s4, s1, -292
                  auipc        s4, 578822
                  sltiu        s11, s5, -951
                  addi         a3, a3, 5 #update loop 1 counter
                  addi         t4, zero, 4 #init loop 0 counter
                  slt          a2, s5, s4
                  addi         gp, zero, -20 #init loop 0 limit
                  sltu         s7, a1, s3
sub_4_0_0_t:      slti         s6, t2, -1241
                  srai         a0, zero, 20
                  and          s2, t5, s3
                  sltu         a1, t6, zero
                  addi         t4, t4, -8 #update loop 0 counter
                  lui          t3, 958810
                  bne          t4, gp, sub_4_0_0_t #branch for loop 0
                  or           a2, a7, t2
                  sltu         ra, t5, s10
                  and          a2, s3, s1
                  bltu         a3, s9, sub_4_0_1_t #branch for loop 1
                  srl          zero, t3, s0
                  bgeu         s6, sp, 19f
                  blt          s11, t6, 21f
                  bgeu         s9, s6, 22f
                  bltu         t3, t3, 12f
                  bltu         t4, a2, 13f
                  xor          gp, t3, t6
                  bltu         s3, t5, 24f
                  auipc        t4, 260763
                  lui          a5, 839055
                  xori         zero, t1, 1417
                  slti         gp, t0, -1074
                  bne          s11, t5, 24f
12:               sltu         s8, a2, t3
13:               slt          a5, s4, t4
                  slti         t5, a6, 1451
                  beq          t2, s5, 21f
                  ori          a1, s10, -895
                  srli         gp, s7, 24
                  bge          s0, a2, 32f
19:               nop
                  and          s4, s10, s0
21:               sll          a1, a1, sp
22:               lui          s9, 504844
                  xor          t6, t1, s4
24:               nop
                  srli         s1, s7, 2
                  xori         s8, tp, -1454
                  srai         t2, t4, 30
                  sll          tp, t5, t0
                  ori          s7, s6, 1182
                  xor          a7, ra, s10
                  xor          s10, t5, a0
32:               slli         a6, ra, 8
                  srai         t3, sp, 17
                  srai         ra, s4, 15
                  sub          t0, s3, s9
                  xor          a1, a1, s11
                  bne          ra, s1, 49f
                  lui          a7, 730395
                  beq          s8, s10, 40f
40:               and          zero, t1, s1
                  auipc        s0, 763317
                  srli         s11, s3, 9
                  andi         a0, a3, -1266
                  xor          s6, s9, t4
                  xori         t1, s3, 1330
                  sll          t5, t3, a2
                  sub          s8, ra, t5
                  srai         s0, t6, 16
49:               slti         ra, s11, 569
                  nop
                  sltu         t6, s10, s7
                  lui          t5, 545519
                  andi         t6, s8, -217
                  bltu         t2, s4, 55f
55:               slt          ra, s10, s4
                  lw           ra, 4(a4)
                  sltu         s6, t4, t4
                  addi         a4, a4, 64
                  ori          zero, t2, 372
                  xori         s11, zero, -1744
                  sra          s6, s1, s10
                  add          s4, a1, a7
                  slli         t3, ra, 30
101:              addi x13, x1, 1
101:              jalr x13, x13, 0
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
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
.section .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  add x2, x14, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x26, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x26, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x26, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x26, x15, ecall_handler
                  li x15, 0x1
                  beq x26, x15, instr_fault_handler
                  li x15, 0x5
                  beq x26, x15, load_fault_handler
                  li x15, 0x7
                  beq x26, x15, store_fault_handler
                  li x15, 0xc
                  beq x26, x15, pt_fault_handler
                  li x15, 0xd
                  beq x26, x15, pt_fault_handler
                  li x15, 0xf
                  beq x26, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x14, x2, zero
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
                  add x14, x2, zero
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
                  add x14, x2, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x14, x2, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x14, x2, zero
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
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x14, x2, zero
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
