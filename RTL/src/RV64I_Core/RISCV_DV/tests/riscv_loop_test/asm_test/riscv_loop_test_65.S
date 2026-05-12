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
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 0
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0x9cfceec3
                  li x1, 0x126406c5
                  li x2, 0xf85a3668
                  li x3, 0xf81b62f7
                  li x4, 0xf74ceff8
                  li x5, 0xf
                  li x6, 0x6
                  li x7, 0x80000000
                  li x8, 0x86007348
                  li x9, 0xf0aec304
                  li x10, 0xa6ba30d4
                  li x11, 0x0
                  li x12, 0xf
                  li x13, 0x3
                  li x14, 0x4
                  li x15, 0x80000000
                  li x17, 0x4cb3ce2e
                  li x18, 0x7
                  li x19, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xfcc47459
                  li x23, 0x9
                  li x24, 0x80000000
                  li x25, 0x3
                  li x26, 0xf7102de7
                  li x27, 0x80000000
                  li x28, 0xbc61013b
                  li x29, 0x8
                  li x30, 0xebddf388
                  li x31, 0x7e48ace3
                  la x20, user_stack_end
main:             la           gp, sub_2
                  slti         a4, s7, 1691
                  xor          t6, sp, gp
                  sltiu        t6, t5, -1205
                  lui          s6, 494323
                  xori         s11, sp, -1954
                  srai         s8, t5, 13
                  addi         a3, s1, -157
                  sltiu        a4, a4, -421
                  addi         gp, gp, 349
                  slt          t0, a3, sp
                  srli         s7, t4, 2
main_j2:          jalr         s6, gp, -349 #jump main -> sub_2
                  la           t2, sub_1
                  srai         s2, a7, 20
                  sltiu        s2, s4, -56
                  andi         zero, s8, 934
                  sltiu        a1, gp, 694
                  auipc        s10, 99166
                  and          s8, t1, s2
                  slti         a0, s1, 1830
                  sltiu        a0, a5, 845
                  addi         t2, t2, -696
                  or           zero, s11, s6
main_j3:          jalr         s6, t2, 697 #jump main -> sub_1
                  addi         t2, zero, 2 #init loop 1 counter
                  ori          a4, s5, -123
                  addi         ra, zero, 8 #init loop 1 limit
                  addi         a5, t0, 1296
                  srai         a5, gp, 26
                  srli         s10, s8, 20
main_0_1_t:       sltiu        a4, s3, -238
                  addi         t2, t2, 6 #update loop 1 counter
                  addi         t3, zero, 10 #init loop 0 counter
                  addi         s1, s7, 1438
                  addi         s3, zero, 10 #init loop 0 limit
                  xor          a7, s11, zero
main_0_0_t:       sltu         t5, a1, s8
                  xor          s1, s10, s2
                  addi         t3, t3, -9 #update loop 0 counter
                  xor          s7, s10, t6
                  bgeu         t3, s3, main_0_0_t #branch for loop 0
                  sra          a1, gp, t1
                  andi         a1, a6, 1520
                  auipc        gp, 819272
                  sra          t1, a0, s0
                  bne          t2, ra, main_0_1_t #branch for loop 1
                  sra          s5, zero, a2
                  xor          tp, ra, s8
                  andi         t1, s5, 498
                  slt          a2, a0, s6
                  sll          a1, s9, s7
                  sub          t3, s4, a0
                  srai         s7, s3, 8
                  andi         a7, t6, 733
                  bgeu         t5, s1, 21f
                  srli         ra, s5, 1
                  bltu         s10, s2, 18f
                  slli         s0, s1, 19
                  sub          s6, a1, t5
                  slt          t4, t4, s0
                  srai         a3, t2, 26
                  sltiu        s7, s10, 883
                  lui          t5, 998422
                  srl          a4, tp, gp
                  bltu         s4, t2, 21f
18:               addi         s6, a7, 1708
                  srl          a3, tp, s9
                  la           a0, sub_1
                  or           a7, a3, t6
                  addi         a0, a0, -60
                  xori         t1, s2, 972
                  addi         tp, s9, -1611
                  srli         s11, a5, 24
                  lui          s10, 765710
                  xor          ra, t2, t6
                  srai         s7, t5, 23
                  ori          a2, s7, 1952
                  nop
main_j1:          jalr         s6, a0, 60 #jump main -> sub_1
                  or           gp, tp, t4
                  bne          t4, s5, 21f
21:               addi         s7, s0, 342
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            and          a2, a5, a6
                  sll          s7, t2, s5
                  sltu         a2, t4, a3
                  slt          s9, a0, a7
                  addi         s4, s4, -28
                  lui          t3, 571999
                  xori         s10, s2, 1994
                  sw           s6, 4(s4)
                  or           t4, t2, s4
                  sll          t4, a1, sp
                  srli         s1, a5, 22
                  sub          s9, a5, zero
                  ori          tp, a5, 724
                  srai         t6, a6, 8
                  add          t3, s1, ra
                  srai         a3, s9, 17
                  and          ra, a4, t2
                  sltiu        s8, ra, -2010
                  sll          s7, s11, t4
                  auipc        t5, 10125
                  xor          s3, t3, t5
                  srli         ra, a0, 15
                  sltiu        t2, s8, -1553
                  blt          t4, s7, 23f
                  slt          a0, s6, t3
                  sub          ra, a0, tp
                  add          t4, t4, s7
                  andi         zero, t4, -2008
                  auipc        t6, 227965
                  ori          t4, s10, 1633
                  lui          zero, 413294
                  andi         s7, t1, 1061
                  xori         t1, ra, -1674
                  bne          a0, s9, 32f
                  or           s9, s5, s2
23:               auipc        a3, 808896
                  slt          a5, a0, gp
                  bne          s2, a3, 36f
                  srli         tp, s0, 16
                  sra          s7, s10, s7
                  andi         s7, s2, 46
                  add          a4, tp, t0
                  nop
                  addi         s11, a6, 1199
32:               bltu         s2, t3, 36f
                  andi         a1, t3, -307
                  blt          sp, ra, 36f
                  addi         t1, a1, -404
36:               slti         t4, a5, 32
                  ori          s0, gp, -371
                  lw           s6, 4(s4)
                  auipc        t3, 891228
                  sll          ra, s5, t5
                  slt          ra, t5, s4
                  xori         s10, tp, -78
                  sltu         s1, t2, t3
                  addi         s4, s4, 28
                  sub          t4, a1, t2
                  or           s1, a4, s3
                  srli         zero, s0, 7
60:               addi x12, x22, 1
60:               jalr x12, x12, 0
sub_2:            slt          s0, s9, s5
                  sra          s8, s1, sp
                  bgeu         s7, t4, sub_2_stack_p
                  slli         a2, ra, 10
                  slli         zero, s8, 24
                  auipc        zero, 724033
                  sltu         s8, a5, a0
                  srai         s1, ra, 4
sub_2_stack_p:    addi         s4, s4, -64
                  slt          ra, sp, s3
                  sw           s6, 4(s4)
                  sub          zero, a6, s6
                  slti         t5, t3, -466
                  slti         a7, s7, -835
                  la           ra, sub_3
                  slti         s6, s10, 682
                  slli         s3, s0, 5
                  srai         s8, s4, 0
                  lui          a3, 1017110
                  addi         ra, ra, 1001
                  andi         s1, gp, 1580
                  sub          t3, s10, a1
                  sltiu        a0, s2, -695
                  nop
                  srl          a3, s6, t3
sub_2_j5:         jalr         s6, ra, -1000 #jump sub_2 -> sub_3
                  sub          a4, t4, s10
                  lui          s6, 827103
                  slt          t6, s1, a3
                  or           a4, a1, t0
                  sub          s0, zero, s8
                  lui          t2, 285701
                  sltu         a4, s4, t3
                  slli         t2, s4, 30
                  xor          s6, t5, s9
                  or           gp, a2, t3
                  slt          s10, a0, t5
                  slt          t3, s9, a5
                  bge          t6, a6, 23f
                  and          t2, s11, a7
                  bge          gp, a4, 23f
                  srl          t1, s9, ra
                  sub          a4, s4, zero
                  srai         s7, zero, 16
                  and          a5, zero, zero
                  sll          a3, a2, t6
                  xori         a2, sp, 1171
                  or           t3, t4, s7
                  addi         a2, a2, -1122
23:               lui          t2, 299250
                  lw           s6, 4(s4)
                  addi         t3, tp, -280
                  or           zero, s9, s10
                  slt          s10, sp, s9
                  addi         s4, s4, 64
                  ori          s3, sp, 1871
56:               addi x9, x22, 1
56:               jalr x9, x9, 0
sub_4:            slli         ra, a2, 14
                  bgeu         t3, s5, sub_4_stack_p
                  add          t3, a1, a1
sub_4_stack_p:    addi         s4, s4, -28
                  sw           s6, 4(s4)
                  and          t1, t6, a4
                  addi         t4, t6, -469
                  auipc        zero, 544267
                  sll          s3, t2, sp
                  slti         gp, a0, 1217
                  addi         ra, zero, -2 #init loop 0 counter
                  sra          a7, zero, zero
                  slti         s6, s1, 494
                  addi         s11, zero, 1972
                  addi         s10, zero, -19 #init loop 0 limit
                  slt          s9, a3, a1
sub_4_9_0_t:      sltu         t3, s6, ra
                  srli         tp, ra, 22
                  addi         ra, ra, -5 #update loop 0 counter
                  slli         a3, a7, 0
                  add          tp, sp, s10
                  lui          s3, 979216
                  sra          s7, a7, s2
                  or           s2, t2, t2
                  sll          t3, a7, t1
                  bge          ra, s10, sub_4_9_0_t #branch for loop 0
                  sub          a7, a0, t3
                  addi         s0, zero, 9 #init loop 0 counter
                  xori         a4, s8, -105
                  lui          s10, 299440
                  sub          a0, t6, a4
                  slli         tp, a1, 6
                  xori         s10, s7, -1333
                  auipc        s9, 90747
                  sll          s10, sp, t3
                  ori          s7, a2, -1809
                  addi         t1, zero, -4 #init loop 0 limit
                  srai         s1, t5, 8
                  and          a0, s10, a2
                  sltu         ra, t5, t0
sub_4_2_0_t:      nop
                  sub          t4, s2, s10
                  srai         tp, zero, 3
                  or           s9, s8, s4
                  slt          s6, a3, s0
                  addi         s0, s0, -5 #update loop 0 counter
                  sub          a2, a2, s0
                  bge          s0, t1, sub_4_2_0_t #branch for loop 0
                  srl          t2, s6, s3
                  addi         ra, zero, 3 #init loop 0 counter
                  sra          a7, t4, s0
                  sub          s1, s6, t6
                  addi         s11, zero, 5 #init loop 0 limit
                  xor          a5, s1, gp
                  sub          t1, s1, a6
sub_4_4_0_t:      lui          a0, 315961
                  srli         t5, s5, 29
                  andi         a7, s8, 171
                  ori          t4, s0, 1914
                  addi         ra, ra, 10 #update loop 0 counter
                  or           a3, ra, s7
                  bltu         ra, s11, sub_4_4_0_t #branch for loop 0
                  and          t1, a7, tp
                  addi         s2, zero, 8 #init loop 0 counter
                  nop
                  addi         a5, zero, 8 #init loop 0 limit
                  sll          t6, s4, s0
sub_4_7_0_t:      andi         s1, s11, -1913
                  addi         zero, a6, 790
                  addi         s2, s2, -4 #update loop 0 counter
                  bgeu         s2, a5, sub_4_7_0_t #branch for loop 0
                  slti         t0, s0, -321
                  addi         gp, zero, -7 #init loop 0 counter
                  sra          a7, s1, a0
                  xor          ra, a3, s11
                  addi         t0, zero, 16 #init loop 0 limit
                  auipc        t4, 755105
                  andi         tp, s11, -629
                  sltu         s0, s6, a1
sub_4_6_0_t:      auipc        a5, 587683
                  addi         gp, gp, 8 #update loop 0 counter
                  andi         s9, tp, -1765
                  xor          s5, t0, s11
                  bltu         gp, t0, sub_4_6_0_t #branch for loop 0
                  addi         t3, t6, 461
                  addi         s5, zero, 2 #init loop 0 counter
                  slti         a0, s6, -1662
                  slti         a7, t2, -1242
                  srl          t1, s1, a6
                  sra          t0, s3, s1
                  srai         t0, s1, 27
                  sltu         a7, sp, ra
                  slt          t0, a0, s3
                  sltu         s11, a0, a5
                  sltiu        a2, s2, 1164
                  or           s7, s8, s9
                  srl          a2, a1, a0
                  addi         s9, zero, 5 #init loop 0 limit
                  srl          t6, t3, zero
sub_4_5_0_t:      auipc        s8, 884439
                  xori         a5, s7, 873
                  srli         zero, a3, 14
                  add          a1, a2, t0
                  auipc        t5, 504307
                  slli         gp, s3, 1
                  xor          t3, s5, s0
                  sra          a5, s11, t5
                  addi         s5, s5, 3 #update loop 0 counter
                  lui          s0, 351054
                  sra          zero, t1, t0
                  ori          s1, t6, 456
                  beq          s5, s9, sub_4_5_0_t #branch for loop 0
                  xor          a2, t4, a2
                  addi         a3, zero, 10 #init loop 1 counter
                  add          s3, s8, s0
                  xori         ra, t5, 1907
                  srai         t2, t3, 20
                  or           s7, t0, s1
                  and          s6, t0, t1
                  addi         s8, zero, 19 #init loop 1 limit
                  ori          gp, a6, -2012
                  sltu         tp, a5, t1
                  auipc        a0, 141026
                  auipc        t6, 248265
sub_4_1_1_t:      nop
                  addi         a3, a3, 9 #update loop 1 counter
                  srli         a7, t2, 26
                  sll          a5, s3, s9
                  auipc        ra, 785777
                  addi         zero, s1, -858
                  addi         t4, zero, 10 #init loop 0 counter
                  addi         s1, zero, 8 #init loop 0 limit
                  or           a4, a1, sp
                  add          a2, a6, sp
                  srl          t1, s11, a6
sub_4_1_0_t:      sub          a0, a5, a1
                  sltiu        s6, a1, -2040
                  addi         t4, t4, -2 #update loop 0 counter
                  slli         t2, s3, 25
                  bgeu         t4, s1, sub_4_1_0_t #branch for loop 0
                  slti         s5, a1, 2011
                  beq          a3, s8, sub_4_1_1_t #branch for loop 1
                  srl          t6, t3, t4
                  addi         t4, zero, 10 #init loop 0 counter
                  addi         tp, s3, 1584
                  sltu         t3, a2, s1
                  sltiu        ra, a5, 507
                  and          t5, a6, s5
                  addi         t2, zero, 9 #init loop 0 limit
                  sll          tp, s0, s11
                  addi         t1, t3, 285
                  sll          s3, t3, t5
sub_4_11_0_t:     xori         zero, s11, 95
                  slt          s11, s5, s7
                  xor          a2, s4, s10
                  xor          t6, a7, s8
                  srl          t0, a5, s7
                  addi         t4, t4, -8 #update loop 0 counter
                  slt          a2, s2, t0
                  bgeu         t4, t2, sub_4_11_0_t #branch for loop 0
                  srli         s10, s0, 9
                  addi         s8, zero, 4 #init loop 0 counter
                  and          s7, s0, t5
                  srl          t3, gp, a0
                  or           s5, s0, ra
                  auipc        a4, 796809
                  slt          s3, t5, a4
                  slt          s5, t4, zero
                  xori         t3, a0, -143
                  or           gp, s6, t4
                  or           tp, t6, a1
                  sltiu        a4, s11, -1034
                  auipc        a4, 384801
                  slt          t0, s9, a0
                  sub          s2, s3, s5
                  lui          a5, 538193
                  srai         zero, gp, 29
                  addi         s9, zero, 9 #init loop 0 limit
                  sra          a0, t0, a2
sub_4_0_0_t:      sub          a3, s4, s8
                  sra          s10, s0, s10
                  nop
                  slli         a1, s0, 2
                  addi         s8, s8, 3 #update loop 0 counter
                  sltiu        s0, a3, -1432
                  andi         s6, zero, -1455
                  andi         s7, s1, 560
                  or           s1, zero, a4
                  srli         s7, s10, 9
                  bltu         s8, s9, sub_4_0_0_t #branch for loop 0
                  sra          a4, a2, a7
                  addi         s10, zero, -2 #init loop 0 counter
                  sltu         s11, s10, a0
                  sub          a7, s3, s10
                  lui          t3, 704187
                  addi         t4, zero, -11 #init loop 0 limit
                  srli         tp, a2, 25
                  xor          s1, t0, a2
                  andi         t1, zero, -1547
                  sltu         a4, s7, s0
sub_4_3_0_t:      or           a5, t5, a7
                  nop
                  andi         a0, a7, 1645
                  sra          t2, a3, s7
                  sll          s3, a6, a3
                  addi         s10, s10, -7 #update loop 0 counter
                  lui          a3, 392298
                  sltiu        a4, tp, -1706
                  sll          a5, t4, sp
                  bge          s10, t4, sub_4_3_0_t #branch for loop 0
                  auipc        t6, 946826
                  addi         s11, zero, 6 #init loop 0 counter
                  addi         s2, zero, 6 #init loop 0 limit
                  slli         tp, s6, 10
sub_4_8_0_t:      ori          t3, t2, 1097
                  add          t6, s6, a2
                  addi         t6, t0, -700
                  sub          ra, s5, a5
                  slt          t5, s5, s10
                  srai         s8, s11, 22
                  addi         s11, s11, -2 #update loop 0 counter
                  sltu         t0, tp, s7
                  sltiu        a2, a2, -399
                  sll          gp, t2, s8
                  sltiu        s5, t0, 581
                  auipc        tp, 421548
                  bgeu         s11, s2, sub_4_8_0_t #branch for loop 0
                  sub          s3, tp, a0
                  sra          s6, s2, sp
                  blt          sp, zero, 11f
                  xori         s0, a2, -932
                  bgeu         t0, a5, 20f
                  or           tp, t2, t5
                  sub          s6, a0, sp
                  sll          s8, s3, t6
                  nop
                  sltiu        a7, s3, -1247
                  xori         s2, a6, -409
                  xori         t6, s2, -1225
11:               auipc        s9, 430717
                  srai         s1, tp, 7
                  sll          t4, a6, a1
                  srai         s10, gp, 22
                  blt          gp, gp, 25f
                  xori         a0, t6, -1855
                  ori          t2, a5, -1499
                  addi         a1, s9, 658
                  beq          s5, tp, 30f
20:               srli         a5, t5, 14
                  sltiu        s11, ra, -1988
                  beq          s5, a6, 37f
                  xor          s2, s11, s6
                  andi         a5, gp, -261
25:               and          s10, s10, gp
                  and          t5, s11, t3
                  sltiu        a5, a0, 736
                  nop
                  add          s2, gp, t3
30:               bgeu         s3, a0, 38f
                  ori          t2, gp, 961
                  addi         a4, sp, 866
                  blt          t1, a0, 43f
                  blt          sp, a0, 54f
                  blt          t5, t0, 46f
                  sub          ra, s11, a3
37:               xori         ra, s10, -393
38:               nop
                  sltu         tp, s11, t1
                  sub          s10, sp, a3
                  srl          t5, zero, zero
                  sll          a5, tp, t6
43:               nop
                  beq          s10, s6, 59f
                  bgeu         a4, s10, 47f
46:               add          s9, t5, t4
47:               xor          a1, a7, t3
                  lui          t0, 77208
                  lui          s5, 978855
                  slt          gp, s3, s4
                  andi         a2, t0, 1014
                  or           s8, a5, s1
                  sub          s11, s11, s0
54:               and          a1, s11, a1
                  lui          t0, 765979
                  bne          s3, s2, 74f
                  srai         a5, a5, 11
                  or           zero, a4, zero
59:               xor          ra, s9, a0
                  and          a1, s3, a7
                  bltu         t2, tp, 77f
                  srli         zero, s4, 18
                  xori         tp, a5, 321
                  ori          a0, t6, 1420
                  slti         s0, t2, -1889
                  slti         s8, s8, -650
                  sltu         s10, t5, a1
                  and          t4, t4, a0
                  slti         a0, a1, 1820
                  sltiu        s1, a3, -1936
                  and          t5, t2, a5
                  bltu         t4, s7, 75f
                  nop
74:               nop
75:               sll          s6, t3, a5
                  bge          a6, t5, 83f
77:               ori          a7, s6, -1162
                  slti         s6, a0, 1440
                  sra          a7, t1, a6
                  bge          t1, a4, 92f
                  auipc        s8, 95578
                  bltu         s1, a4, 85f
83:               nop
                  srl          a5, t6, tp
85:               add          a1, s0, gp
                  sub          s6, a1, s7
                  bne          a7, a0, 88f
88:               and          t2, t0, s5
                  or           t0, s6, s2
                  sra          s11, a3, gp
                  srli         s2, s2, 20
92:               and          s8, a2, a1
                  andi         zero, zero, -1946
                  ori          gp, s7, 1826
                  xori         tp, t1, -454
                  bge          a0, t2, 109f
                  add          t5, s0, s8
                  sub          s8, gp, s3
                  bne          gp, s3, 117f
                  lui          s9, 138433
                  add          s0, a4, zero
                  ori          t2, ra, 162
                  blt          s0, t4, 118f
                  sll          tp, s8, s5
                  sra          tp, s7, s2
                  slli         a1, sp, 0
                  addi         s1, t3, -1558
                  beq          s10, s8, 115f
109:              blt          t2, t5, 117f
                  bne          ra, s11, 114f
                  xor          a5, a0, tp
                  sltiu        a2, t0, -1254
                  sll          s2, s1, a7
114:              bgeu         t0, s8, 131f
115:              addi         ra, a7, -1539
                  bltu         s4, s10, 129f
117:              slti         s5, a5, -1104
118:              bge          s0, t6, 135f
                  slli         t0, t6, 29
                  beq          zero, ra, 139f
                  addi         s9, a2, -275
                  sltiu        a1, zero, 54
                  nop
                  sltiu        zero, s4, -338
                  slti         s0, a2, 1017
                  srl          gp, ra, a3
                  addi         s5, a2, 1479
                  bgeu         s4, a6, 145f
129:              blt          a6, s6, 134f
                  nop
131:              sltiu        ra, a7, 695
                  sll          ra, t1, s1
                  auipc        a1, 432062
134:              srli         t3, s7, 11
135:              bne          s4, t4, 148f
                  slli         a3, zero, 1
                  add          t2, s10, a5
                  ori          s6, a2, -2002
139:              auipc        t1, 255670
                  slli         tp, tp, 13
                  bgeu         t3, a7, 152f
                  bltu         t4, t6, 149f
                  srli         zero, s3, 14
                  bge          s9, a0, 147f
145:              andi         t1, gp, 701
                  slt          a4, a3, t5
147:              sltiu        a0, s0, -315
148:              auipc        a7, 101246
149:              andi         a7, t3, 824
                  bgeu         tp, a5, 153f
                  sltu         tp, t4, s11
152:              and          a5, s5, gp
153:              bne          a1, a4, 171f
                  or           s11, a5, a0
                  sltu         t4, s2, s5
                  sra          t1, a0, s11
                  sltu         t0, s0, s4
                  sub          a5, s2, s0
                  sltiu        zero, s7, 1628
                  xor          a1, a1, tp
                  xor          s8, s3, zero
                  sll          s11, s6, a6
                  or           t1, gp, a4
                  bgeu         s8, ra, 179f
                  ori          a7, t6, -822
                  nop
                  or           a0, a1, t1
                  lui          s9, 299183
                  slti         a0, zero, 1658
                  sll          s1, s0, s8
171:              bgeu         s2, a2, 189f
                  add          a5, s6, gp
                  sll          a7, t3, t3
                  beq          s7, s5, 189f
                  xor          s2, s0, s7
                  ori          a7, s3, 113
                  slt          t1, a7, t6
                  sra          t5, s7, t6
179:              or           t3, s5, a3
                  and          s11, s9, t4
                  sra          t2, t3, s9
                  bltu         a2, a4, 190f
                  srai         s0, tp, 17
                  auipc        s3, 60121
                  andi         s10, s2, 589
                  xor          s0, t3, t2
                  lui          gp, 660593
                  and          ra, s11, s7
189:              andi         gp, t6, -1182
190:              sll          a0, t0, s3
                  bltu         a5, s1, 201f
                  srl          a3, s1, gp
                  beq          a7, t6, 210f
                  slli         s2, s10, 18
                  auipc        gp, 239702
                  sltiu        tp, t5, -140
                  bge          a5, s1, 199f
                  beq          s2, t2, 215f
199:              nop
                  slti         s0, t1, 1877
201:              beq          s6, sp, 213f
                  sltiu        s9, tp, -449
                  sltiu        a1, a2, -1378
                  blt          s8, s1, 223f
                  andi         a5, zero, 336
                  or           s8, a1, s8
                  sra          gp, t0, s7
                  srai         s3, s11, 3
                  sltu         gp, t6, s11
210:              bltu         s10, s7, 214f
                  sll          s6, a4, s1
                  and          s10, s7, s4
213:              nop
214:              andi         t0, tp, 1757
215:              slt          a1, s10, a5
                  sll          t1, t3, ra
                  and          a1, a0, sp
                  bgeu         t0, t2, 219f
219:              xor          ra, tp, a6
                  srl          s1, s7, a6
                  bge          a2, t3, 231f
                  bgeu         a1, a7, 230f
223:              xor          t3, a1, t3
                  and          a3, s9, a2
                  bne          gp, s4, 236f
                  auipc        s11, 860971
                  xor          s5, s0, t4
                  bge          t6, a4, 244f
                  ori          a3, s10, -820
230:              sub          s10, sp, a2
231:              srai         a7, s2, 4
                  blt          tp, t2, 242f
                  slt          ra, s11, s1
                  slt          s0, ra, sp
                  xor          a2, gp, sp
236:              slt          s3, s8, t4
                  srli         s9, gp, 22
                  xor          t0, t3, s3
                  add          t5, s10, zero
                  bne          t3, a0, 247f
                  slti         s9, a5, 1962
242:              bgeu         s4, ra, 257f
                  sltiu        a1, a1, 132
244:              sltu         s2, s2, t2
                  slt          s3, s9, s3
                  and          s8, t3, s5
247:              slli         t0, a0, 1
                  xori         s7, s9, -475
                  sltiu        t5, s11, -98
                  slt          s6, t3, t0
                  andi         t2, s5, -1310
                  nop
                  sltiu        s1, s5, 545
                  srl          tp, ra, s5
                  sltu         t0, sp, t1
                  sra          gp, t4, s5
257:              sltu         tp, tp, t4
                  slt          a3, t1, s4
                  bltu         s9, s5, 276f
                  slli         s6, sp, 4
                  andi         a0, s1, -288
                  slt          s8, a5, s11
                  ori          s5, zero, -1195
                  blt          s5, a6, 281f
                  ori          s6, s3, 298
                  sll          a2, t1, s10
                  beq          s4, s0, 287f
                  sra          tp, s6, s10
                  srli         s7, s7, 23
                  or           t1, a0, s3
                  or           t0, t2, t6
                  sltu         t0, t5, a0
                  xor          a4, s10, s3
                  bltu         a6, s6, 279f
                  andi         a4, s8, -1684
276:              xor          a5, s8, a7
                  xori         s0, a5, 325
                  and          a1, s6, zero
279:              slti         s1, s9, -1935
                  srli         s1, s9, 4
281:              sltiu        a4, t4, 1303
                  bgeu         t3, s11, 295f
                  beq          s11, s8, 293f
                  blt          sp, s3, 299f
                  sll          zero, t1, t4
                  xori         s1, t3, 259
287:              blt          a4, t0, 297f
                  xor          ra, s9, a5
                  ori          s11, t5, 847
                  xor          s9, s7, t6
                  slli         a2, t3, 12
                  bge          a6, tp, 308f
293:              slt          a5, t5, zero
                  slt          s9, t0, a6
295:              lui          t1, 244458
                  andi         t4, t1, -240
297:              ori          a5, s8, -712
                  xor          a2, s1, a0
299:              sll          s1, s6, t6
                  and          s8, a2, a6
                  add          t2, s5, s1
                  sll          s9, a0, s2
                  bltu         zero, a2, 316f
                  nop
                  srl          a3, sp, s10
                  andi         t0, t3, -15
                  auipc        a3, 143393
308:              blt          s0, tp, 326f
                  beq          tp, s10, 320f
                  blt          s4, s11, 322f
                  bge          a5, a1, 314f
                  xori         a1, t6, -563
                  slti         s8, a0, -1030
                  addi         s2, zero, -9 #init loop 0 counter
                  addi         s8, zero, -1 #init loop 0 limit
sub_4_12_0_t:     sltiu        t2, t2, 398
                  addi         s2, s2, 3 #update loop 0 counter
                  blt          s2, s8, sub_4_12_0_t #branch for loop 0
                  sll          s6, t6, a1
314:              or           t2, a2, t3
                  slli         a2, sp, 27
316:              srl          a0, s6, sp
                  srai         s2, s1, 22
                  slt          a0, tp, s10
                  xori         a5, sp, 755
320:              sub          t0, a4, a2
                  sll          t2, s9, gp
322:              bltu         s11, s9, 339f
                  bne          a3, a4, 341f
                  slti         a1, s9, -618
                  bltu         a7, a2, 340f
326:              addi         t2, s2, 758
                  and          s0, tp, a5
                  or           a1, t5, a5
                  add          t4, sp, t5
                  ori          a5, tp, 1458
                  xori         a3, t1, 751
                  xor          s10, s10, a4
                  srl          s11, t0, s0
                  srl          t0, s8, s6
                  beq          a7, t1, 350f
                  nop
                  ori          t6, s8, -605
                  sltiu        t6, a7, 127
339:              beq          t3, t2, 341f
340:              srl          s6, t4, tp
341:              add          s0, t6, a6
                  or           a7, tp, t4
                  slli         t6, t2, 23
                  srai         tp, s11, 3
                  addi         s7, t6, -1513
                  beq          a5, t6, 363f
                  lui          a4, 357792
                  ori          s0, s4, -1075
                  sub          s0, gp, t4
350:              slti         s7, zero, -994
                  ori          t5, s0, -1053
                  slli         a2, s1, 6
                  sltu         a4, ra, t3
                  bge          s2, s5, 371f
                  xori         s7, s0, -1193
                  addi         tp, t4, -1610
                  srai         s0, a7, 25
                  lui          a3, 218572
                  slli         tp, a0, 18
                  slli         a4, s7, 5
                  auipc        t5, 725507
                  bgeu         a4, t6, 365f
363:              auipc        a3, 512934
                  sltiu        ra, s10, -1500
365:              slli         s3, ra, 22
                  sltu         a1, t2, s5
                  bge          t0, sp, 380f
                  andi         t5, zero, 771
                  xori         t2, a5, 1265
                  srai         a3, s8, 11
371:              ori          a2, a4, -1327
                  sltiu        t4, s4, 672
                  bne          s0, t6, 374f
374:              lui          s0, 528933
                  slt          ra, t0, a7
                  nop
                  auipc        a3, 492211
                  sub          tp, t2, a4
                  ori          tp, t5, -576
380:              add          s2, s0, ra
                  xori         gp, a7, 30
                  xor          s10, s9, s8
                  or           s9, s5, a4
                  add          zero, t6, s0
                  xor          a3, ra, s1
                  srl          zero, t2, s11
                  bne          s10, s9, 395f
                  srai         zero, s1, 0
                  bgeu         s5, s9, 406f
                  sltu         s5, s8, a5
                  srli         t0, s9, 18
                  add          t6, s1, t4
                  and          a0, ra, t6
                  nop
395:              bge          a2, s9, 402f
                  slt          a7, tp, ra
                  bgeu         sp, a0, 408f
                  sltiu        s0, sp, 1119
                  auipc        a7, 115086
                  lui          t4, 449966
                  xori         t2, t1, 402
402:              bge          t0, a1, 410f
                  bne          t0, t0, 408f
                  sra          s8, s5, t4
                  auipc        s3, 29759
406:              slt          a7, s7, t4
                  sll          tp, a7, t2
408:              add          t4, zero, a5
                  lui          a4, 230815
410:              beq          t3, ra, 430f
                  slli         s2, a5, 13
                  beq          s7, a3, 419f
                  bltu         s4, a7, 417f
                  sltu         s3, a4, s10
                  lui          s6, 76632
                  srai         s2, s5, 9
417:              xor          s10, sp, s9
                  srai         s8, s1, 17
419:              add          s8, gp, a3
                  sll          t0, t1, t2
                  add          s1, t0, s6
                  nop
                  addi         t1, t0, -116
                  bge          s3, a3, 443f
                  srli         t3, sp, 2
                  srai         s2, t5, 31
                  andi         t3, ra, -1719
                  srli         s0, s11, 6
                  sltu         s6, s0, t2
                  bne          t6, a1, sub_4_j6 #branch to jump instr
                  srai         s1, t3, 11
sub_4_j6:         jal          s6, sub_5 #jump sub_4 -> sub_5
                  slt          t1, s6, s11
                  xor          s6, t6, s9
                  srli         tp, a7, 29
                  bge          s11, s7, 439f
430:              sub          s10, a2, t6
                  bne          a6, a3, 436f
                  lui          a4, 782320
                  and          a4, a6, a1
                  add          s6, t6, t0
                  bge          t3, s1, 452f
436:              bltu         sp, s1, 453f
                  and          s3, t6, s2
                  slti         ra, s1, 1980
439:              slli         s10, zero, 5
                  sll          s9, a7, s6
                  srl          s11, a0, s8
                  bgeu         t4, tp, 449f
443:              sll          ra, s1, sp
                  bgeu         a1, a3, 459f
                  addi         a1, zero, 4 #init loop 0 counter
                  auipc        zero, 132919
                  lui          s9, 803657
                  srai         a0, t2, 27
                  addi         t6, s6, 895
                  lui          s1, 349514
                  sltiu        t0, zero, -425
                  addi         s11, zero, 4 #init loop 0 limit
                  sltiu        gp, gp, -677
                  add          a0, s5, s5
                  xor          t2, a4, ra
                  and          t6, a4, s9
sub_4_10_0_t:     slt          s6, a5, s6
                  addi         a1, a1, -2 #update loop 0 counter
                  srli         t1, t0, 14
                  sra          s8, t6, s3
                  bgeu         a1, s11, sub_4_10_0_t #branch for loop 0
                  andi         t3, s8, 1810
                  bne          zero, a7, 460f
                  sll          t3, a7, t4
                  blt          t3, t1, 454f
                  srl          t6, s6, s9
449:              and          a3, gp, sp
                  srl          s7, a6, s4
                  bne          s8, ra, 462f
452:              slli         a3, t4, 23
453:              srl          s6, sp, a6
454:              srl          s2, t5, t4
                  lui          a2, 178109
                  or           s1, zero, s9
                  xor          a4, a4, a5
                  auipc        a7, 770028
459:              lui          a1, 313289
460:              bltu         s4, a4, 478f
                  andi         s0, a6, -1302
462:              sltiu        s2, ra, -538
                  xor          t6, a4, s9
                  slti         ra, a2, 234
                  blt          s11, s9, 482f
                  beq          a1, t4, 468f
                  add          gp, t6, s4
468:              blt          t3, s1, 486f
                  lui          s9, 463217
                  sub          t3, a0, s7
                  sltu         t5, ra, s8
                  srai         a3, s5, 26
                  sll          tp, t3, s1
                  and          s11, t0, t5
                  add          a4, t0, t4
                  xori         a4, t5, 864
                  or           s0, t5, a1
478:              srai         s7, t5, 28
                  slt          s2, s2, t5
                  andi         t4, a3, 812
                  srai         t5, a7, 28
482:              srai         ra, s11, 22
                  auipc        t5, 791164
                  blt          a4, a2, 497f
                  srai         tp, t0, 8
486:              sltu         zero, a3, gp
                  bne          t4, s6, 490f
                  xori         ra, a6, 1227
                  beq          s2, t1, 497f
490:              slt          a3, a1, ra
                  ori          t5, a4, 1650
                  slli         a3, s0, 6
                  addi         zero, t4, 689
                  srl          s8, t1, t6
                  add          s1, t0, s4
                  nop
497:              and          t3, s3, t6
                  addi         t2, t0, -455
                  lui          a3, 70625
                  sub          t4, a0, ra
                  xori         s1, s2, 1201
                  slt          a3, zero, a3
                  ori          gp, s11, -1912
                  andi         s1, a5, -114
                  beq          a3, zero, 520f
                  sra          zero, a5, s8
                  srai         t3, s2, 22
                  xori         t0, a1, 457
                  lui          a0, 151487
                  slli         t6, s4, 25
                  bgeu         a3, a5, 528f
                  blt          ra, t2, 513f
513:              bltu         s0, a2, 523f
                  lui          s3, 1043222
                  addi         s6, a2, -297
                  sltiu        gp, zero, 1240
                  ori          s1, zero, 96
                  and          s11, s7, t4
                  sll          s3, gp, s7
520:              xor          a0, a1, s11
                  and          a1, a6, a4
                  sll          a0, t0, s0
523:              addi         t0, a7, 738
                  slli         t5, a6, 0
                  addi         a3, zero, 1902
                  ori          s9, s4, 1854
                  nop
528:              sra          s10, s5, ra
                  andi         tp, ra, -327
                  bne          s9, t3, 540f
                  slti         a5, t6, -1512
                  srai         s2, zero, 21
                  add          s6, s10, zero
                  sra          a3, t0, t2
                  bltu         sp, a3, 551f
                  or           zero, sp, s6
                  sltiu        a5, t0, -742
                  sll          s1, s2, s1
                  slti         t6, gp, 1779
540:              ori          t2, sp, -747
                  beq          tp, s8, 560f
                  bltu         a0, s4, 562f
                  addi         a4, s1, 1927
                  bge          s1, s1, 554f
                  bge          sp, a7, 548f
                  xor          t5, t1, s10
                  slti         a2, s1, 1226
548:              sll          t4, s5, s3
                  srli         s11, s3, 12
                  sll          s5, a2, a4
551:              lui          t6, 719799
                  andi         s0, a0, 1441
                  sltiu        t2, s0, 1188
554:              sltiu        t5, a6, 155
                  blt          s8, tp, 568f
                  sll          s3, tp, zero
                  or           a5, a3, s0
                  bge          s3, t6, 566f
                  srl          s1, s11, a5
560:              sltu         a2, a3, s9
                  bltu         tp, a0, 572f
562:              blt          t2, tp, 566f
                  xori         s9, t5, -63
                  beq          a2, t4, 576f
                  ori          s6, sp, -212
566:              nop
                  nop
568:              addi         s9, s5, -1025
                  or           s7, a5, gp
                  bltu         s8, s3, 583f
                  sll          a1, zero, t6
572:              xori         a1, zero, 200
                  xori         s8, s3, 1602
                  srl          a0, a2, s7
                  bne          a3, gp, 590f
576:              add          t4, t6, s3
                  bne          t5, t6, 581f
                  bne          a7, t4, 581f
                  srli         s9, tp, 27
                  or           t0, s3, s3
581:              sltiu        a2, t1, 1808
                  auipc        gp, 593245
583:              srai         s3, tp, 4
                  sub          a1, s2, a7
                  bltu         s0, a3, 602f
                  sll          s5, t1, t2
                  srli         tp, a6, 9
                  auipc        a3, 922032
                  or           s10, s3, s5
590:              srl          gp, s3, t3
                  slt          s6, zero, t0
                  bgeu         s0, t0, 609f
                  sub          s3, gp, zero
                  or           t1, ra, gp
                  xori         t4, ra, 1865
                  srai         t5, t5, 25
                  addi         t3, t3, -248
                  slli         s0, s6, 30
                  bgeu         s2, a1, 615f
                  slti         t2, ra, 70
                  sltu         a3, t6, a6
602:              bne          a0, s6, 612f
                  add          s2, t6, a0
                  lui          s9, 524338
                  sra          t4, ra, s3
                  srl          t6, a7, t4
                  slti         t1, sp, 992
                  sra          t4, a3, sp
609:              bne          a3, a0, 620f
                  andi         t6, s5, -1764
                  xori         a1, t6, -78
612:              sll          t5, s11, t4
                  bltu         s4, a4, 621f
                  addi         a5, t6, 1288
615:              beq          s3, a4, 625f
                  beq          s4, t6, 636f
                  lui          tp, 578770
                  auipc        s2, 921771
                  andi         t0, s10, -1188
620:              bgeu         t3, t3, 638f
621:              srli         s8, a4, 0
                  addi         s8, t1, 330
                  sll          zero, s11, t6
                  sltu         s1, t4, a5
625:              srl          t3, s3, s9
                  sra          t2, ra, t1
                  beq          tp, s8, 646f
                  sra          t4, s1, zero
                  lui          s0, 770517
                  slti         s6, t5, 229
                  bgeu         t2, t4, 634f
                  slt          a2, s2, s9
                  sll          zero, t6, zero
634:              or           t6, t2, s10
                  blt          a0, t6, 650f
636:              ori          t3, s11, -1619
                  srai         s10, a7, 6
638:              addi         s6, a3, -795
                  addi         s7, s9, -751
                  bne          t5, t5, 645f
                  bge          t1, s6, 650f
                  sub          t1, s7, s6
                  bltu         t0, a0, 650f
                  srli         t1, s2, 10
645:              sll          t0, s0, s0
646:              add          s9, s3, s11
                  blt          a0, a6, 650f
                  slli         a1, s5, 18
                  sltiu        s1, a4, 915
650:              addi         a4, s1, -163
                  srai         s3, gp, 21
                  slt          tp, a3, sp
                  xor          t6, s5, tp
                  add          ra, s0, gp
                  auipc        s10, 864044
                  or           s10, tp, a6
                  lw           s6, 4(s4)
                  xor          t1, sp, a6
                  addi         s4, s4, 28
                  srai         a0, s11, 5
920:              addi x19, x22, 1
920:              jalr x19, x19, 0
sub_1:            addi         s4, s4, -8
                  andi         t6, s8, -1184
                  sub          s8, a6, a0
                  sltiu        t2, t3, 1638
                  sw           s6, 4(s4)
                  slt          tp, ra, ra
                  addi         s8, zero, 5 #init loop 1 counter
                  addi         t4, zero, 5 #init loop 1 limit
                  srai         t6, t1, 11
                  sra          zero, a7, sp
                  slli         a5, s6, 23
                  andi         t1, t4, 652
                  slti         s10, a3, 727
                  auipc        a7, 541179
                  lui          s5, 599052
                  sltu         s9, s2, a1
                  slli         a4, s11, 29
sub_1_7_1_t:      xori         a7, s1, -1965
                  auipc        zero, 437559
                  xor          s2, sp, t1
                  addi         s8, s8, -4 #update loop 1 counter
                  nop
                  sltu         a1, s4, t3
                  addi         s7, zero, -9 #init loop 0 counter
                  ori          a5, s9, 1623
                  and          t6, t6, s11
                  addi         gp, t6, -1824
                  addi         t2, zero, 2 #init loop 0 limit
sub_1_7_0_t:      slt          s9, a7, a0
                  or           tp, a2, s0
                  addi         s7, s7, 10 #update loop 0 counter
                  xor          s5, s3, t6
                  srai         a7, s6, 12
                  bltu         s7, t2, sub_1_7_0_t #branch for loop 0
                  ori          tp, s8, 1949
                  srli         a0, a6, 9
                  sltiu        a5, a5, 580
                  bgeu         s8, t4, sub_1_7_1_t #branch for loop 1
                  lui          s6, 777195
                  addi         a7, zero, 10 #init loop 0 counter
                  sra          s10, s4, s5
                  andi         tp, t6, -1550
                  auipc        s7, 705094
                  andi         t5, s7, -22
                  srai         ra, a3, 21
                  andi         t3, a0, -153
                  add          s1, t2, s5
                  addi         s7, tp, 1149
                  sra          s11, t0, s3
                  addi         t6, zero, 16 #init loop 0 limit
                  srli         t5, s1, 31
                  sra          s10, t2, a0
                  andi         s1, s5, -806
sub_1_6_0_t:      or           s9, t0, zero
                  lui          t5, 315702
                  sltu         a4, s11, t2
                  srli         zero, a0, 3
                  add          s3, a1, a1
                  srli         s5, ra, 29
                  addi         a7, a7, 3 #update loop 0 counter
                  slli         ra, t6, 17
                  sltiu        t4, a4, -1762
                  add          a2, s9, t0
                  sltu         s1, s2, s9
                  slli         t4, s8, 29
                  nop
                  bne          a7, t6, sub_1_6_0_t #branch for loop 0
                  nop
                  addi         tp, zero, 10 #init loop 0 counter
                  slli         t5, a0, 22
                  sltu         zero, a4, s7
                  addi         a4, zero, 16 #init loop 0 limit
                  sub          t4, a4, a7
                  sltu         zero, a2, sp
                  slli         s11, s9, 18
                  lui          a7, 453098
                  slti         t3, s7, 618
                  sltu         a5, a3, ra
                  sll          t1, t4, a7
                  andi         a1, s6, -968
                  slti         a3, t6, 24
sub_1_3_0_t:      or           s0, t0, t2
                  addi         tp, tp, 3 #update loop 0 counter
                  sll          s0, a1, a2
                  andi         a3, a7, 1022
                  srli         t4, gp, 11
                  add          s3, a0, s11
                  srli         t3, t0, 30
                  sltu         s8, t0, a0
                  slti         s2, zero, 129
                  addi         a7, a2, -887
                  srli         s11, a0, 13
                  slli         t6, t4, 6
                  blt          tp, a4, sub_1_3_0_t #branch for loop 0
                  xor          t3, s11, a2
                  addi         a7, zero, -6 #init loop 0 counter
                  srai         s5, s9, 29
                  addi         t6, zero, 1 #init loop 0 limit
                  slt          s9, ra, s0
                  nop
                  srli         t4, ra, 29
                  or           t5, zero, s0
                  lui          gp, 27182
                  sll          s10, t4, t3
sub_1_1_0_t:      add          s8, zero, t6
                  sub          s5, a2, a2
                  sra          a1, t6, s2
                  sll          a3, s2, ra
                  addi         a7, a7, 5 #update loop 0 counter
                  sll          a1, t5, a6
                  xor          s9, s9, s4
                  andi         t5, tp, -1884
                  add          a2, a1, sp
                  lui          s3, 211796
                  bltu         a7, t6, sub_1_1_0_t #branch for loop 0
                  addi         s10, zero, -1102
                  addi         a1, zero, 7 #init loop 0 counter
                  addi         s7, zero, 16 #init loop 0 limit
                  add          t0, s7, sp
sub_1_10_0_t:     sub          t4, s1, zero
                  lui          a4, 1009914
                  addi         a1, a1, 3 #update loop 0 counter
                  srl          s1, s9, sp
                  beq          a1, s7, sub_1_10_0_t #branch for loop 0
                  slt          a2, t5, t2
                  addi         t1, zero, -6 #init loop 0 counter
                  srli         t5, s10, 12
                  sll          zero, s3, t3
                  addi         t6, zero, 13 #init loop 0 limit
                  slt          s9, gp, t4
                  auipc        s11, 96474
                  sra          t3, sp, a2
                  sra          s2, s7, s6
                  slti         s3, t2, 24
sub_1_4_0_t:      lui          a5, 160321
                  srli         s11, a0, 2
                  addi         t1, t1, 9 #update loop 0 counter
                  xori         s6, s6, 857
                  srli         s7, sp, 2
                  blt          t1, t6, sub_1_4_0_t #branch for loop 0
                  andi         s2, t2, -2035
                  addi         gp, zero, -6 #init loop 1 counter
                  auipc        s2, 250787
                  addi         s5, zero, 12 #init loop 1 limit
                  srli         t4, t1, 21
sub_1_9_1_t:      lui          s6, 946486
                  slt          t4, a4, s11
                  addi         gp, gp, 3 #update loop 1 counter
                  slli         a2, t6, 10
                  addi         a5, zero, -7 #init loop 0 counter
                  xor          t1, a5, a4
                  addi         t6, zero, 11 #init loop 0 limit
sub_1_9_0_t:      slti         t4, sp, 1249
                  srl          s8, sp, s11
                  sltu         a3, sp, a5
                  andi         t0, s6, -603
                  addi         a5, a5, 3 #update loop 0 counter
                  addi         t2, a3, -1051
                  auipc        s3, 244739
                  or           t4, gp, tp
                  slt          a2, t1, a5
                  bltu         a5, t6, sub_1_9_0_t #branch for loop 0
                  lui          a3, 486108
                  beq          gp, s5, sub_1_9_1_t #branch for loop 1
                  and          t3, s3, s8
                  addi         s11, zero, 9 #init loop 1 counter
                  addi         a1, a5, 1602
                  sra          s3, a7, s7
                  addi         tp, zero, 13 #init loop 1 limit
                  auipc        a0, 263331
sub_1_2_1_t:      slt          s8, sp, s8
                  add          a5, zero, a2
                  slti         a1, s1, 1530
                  slti         a0, t4, 1909
                  sra          zero, t6, t3
                  sltiu        t0, s0, -794
                  addi         s11, s11, 6 #update loop 1 counter
                  addi         s5, zero, 2 #init loop 0 counter
                  ori          a4, s0, 664
                  or           t2, a0, s5
                  slli         s7, s9, 25
                  and          a3, s3, s7
                  slti         t2, s6, 1990
                  xor          gp, s1, ra
                  auipc        s2, 795853
                  srai         s6, s1, 9
                  addi         a2, zero, 9 #init loop 0 limit
                  slli         t5, sp, 23
                  and          a4, s10, a6
                  xor          a7, a4, s4
                  addi         s2, a7, -890
sub_1_2_0_t:      nop
                  lui          s7, 558951
                  add          s1, gp, s8
                  andi         t6, s2, 1275
                  addi         s5, s5, 7 #update loop 0 counter
                  bne          s5, a2, sub_1_2_0_t #branch for loop 0
                  srai         a5, t2, 17
                  blt          s11, tp, sub_1_2_1_t #branch for loop 1
                  lui          s7, 652582
                  addi         t6, zero, -5 #init loop 1 counter
                  addi         s7, zero, 17 #init loop 1 limit
sub_1_11_1_t:     or           s8, a2, a3
                  addi         s5, s0, 306
                  addi         t6, t6, 7 #update loop 1 counter
                  slti         s10, s4, 727
                  addi         s1, zero, 5 #init loop 0 counter
                  addi         a7, zero, 8 #init loop 0 limit
sub_1_11_0_t:     sltiu        s8, tp, -1520
                  ori          gp, s11, -1402
                  addi         s1, s1, 3 #update loop 0 counter
                  bltu         s1, a7, sub_1_11_0_t #branch for loop 0
                  blt          t6, s7, sub_1_11_1_t #branch for loop 1
                  sra          zero, s5, s8
                  addi         t3, zero, 10 #init loop 1 counter
                  addi         a0, s11, -181
                  sltu         t2, t5, t4
                  addi         a3, zero, -6 #init loop 1 limit
sub_1_5_1_t:      addi         tp, s5, -331
                  srl          a2, a4, t1
                  addi         t3, t3, -2 #update loop 1 counter
                  addi         a1, zero, 5 #init loop 0 counter
                  sltu         s6, t4, a5
                  addi         t6, zero, 15 #init loop 0 limit
sub_1_5_0_t:      auipc        zero, 445499
                  nop
                  xor          a5, t1, t6
                  addi         a1, a1, 10 #update loop 0 counter
                  srl          t4, a7, a5
                  sll          s9, tp, s0
                  beq          a1, t6, sub_1_5_0_t #branch for loop 0
                  beq          t3, a3, sub_1_5_1_t #branch for loop 1
                  addi         zero, a4, 1976
                  addi         s10, zero, 7 #init loop 0 counter
                  lui          a4, 207983
                  addi         s8, s10, 934
                  xor          a0, t1, s0
                  addi         a5, zero, 6 #init loop 0 limit
                  srli         s2, a4, 7
                  or           s8, t2, t3
                  slti         s0, a3, 568
                  andi         s0, a2, -1383
sub_1_0_0_t:      ori          a2, a3, -1442
                  slti         t0, s9, -74
                  sra          s5, t6, t0
                  addi         s10, s10, -3 #update loop 0 counter
                  slti         s8, s9, -640
                  and          s5, t1, s7
                  sll          a0, t2, s8
                  and          gp, s9, a2
                  or           a0, s9, a0
                  srli         s9, s1, 17
                  slt          t3, sp, ra
                  sub          t1, t2, a7
                  sub          tp, t4, s11
                  bgeu         s10, a5, sub_1_0_0_t #branch for loop 0
                  sub          a4, t0, s1
                  sub          s2, tp, s11
                  auipc        a7, 981512
                  and          tp, s1, t5
                  nop
                  auipc        s10, 981622
                  add          t3, t1, ra
                  nop
                  slti         s9, a7, 793
                  srl          t4, a7, zero
                  and          s2, t1, s9
                  srli         s9, a3, 10
                  andi         s7, s11, -1010
                  andi         s8, s1, -1976
                  blt          s6, s5, 21f
                  auipc        a1, 89186
                  sll          s3, a5, t1
                  sub          a0, s1, s1
                  slli         a1, s10, 30
                  or           s10, s3, a1
                  slti         gp, gp, -88
                  sll          a7, a7, a5
21:               addi         s1, a7, 633
                  lui          a4, 506915
                  blt          a2, s4, 32f
                  addi         t1, t3, 488
                  slti         a3, a7, 1480
                  sltiu        a1, a7, 759
                  ori          a3, a3, -2047
                  sll          ra, s2, s4
                  add          zero, a7, tp
                  sltu         s5, t3, a6
                  sll          s9, s7, a2
32:               ori          s8, s7, -1890
                  add          a5, s7, s2
                  andi         t3, t3, 182
                  nop
                  xor          s6, t1, t1
                  bne          a0, t6, 40f
                  bltu         t3, a4, 46f
                  bgeu         s9, t1, 56f
40:               bne          s1, a7, 58f
                  sra          t5, gp, t2
                  slli         s7, sp, 2
                  or           s10, ra, gp
                  srli         tp, t2, 30
                  andi         a5, t4, 133
46:               srli         t0, s1, 25
                  sltiu        s10, a6, 555
                  andi         t1, t2, 174
                  beq          s8, s4, 68f
                  ori          t5, a4, 589
                  or           a3, tp, a5
                  xor          s1, s11, s6
                  nop
                  and          s11, a6, s1
                  slli         a3, t6, 13
56:               slt          a4, a2, a7
                  ori          s7, t3, 1257
58:               blt          s1, t2, 62f
                  andi         a4, t6, 1359
                  lui          a3, 750350
                  sltiu        a4, s7, -348
62:               lui          t6, 429313
                  ori          t2, s8, -1722
                  sltiu        s2, t2, -1568
                  bne          s0, t0, 74f
                  srl          s6, s3, a3
                  bge          t3, a0, 82f
68:               and          s2, a0, a2
                  auipc        a4, 920709
                  slt          t1, s1, a6
                  beq          zero, s11, 79f
                  andi         t2, s5, 1205
                  bgeu         ra, s4, 82f
74:               andi         s2, a5, 1530
                  and          t3, t1, s3
                  slli         ra, a3, 31
                  or           ra, s10, s9
                  slli         s5, t6, 20
79:               add          ra, s1, s10
                  slt          a7, s9, s9
                  beq          s0, a1, 94f
82:               beq          a4, s0, 87f
                  sll          a7, s2, a0
                  auipc        a2, 1044530
                  sll          s2, a0, s3
                  andi         s11, t5, 761
87:               andi         s11, s4, 784
                  slti         a0, t5, 1293
                  bltu         a2, s0, 107f
                  srli         gp, a3, 16
                  xori         t6, s7, -133
                  sltu         t0, s5, s9
                  ori          t2, t2, -1234
94:               blt          gp, s11, 103f
                  xor          s9, s6, s9
                  sra          a5, a1, s3
                  ori          gp, t1, 125
                  lui          s2, 897779
                  srai         s7, t2, 15
                  bgeu         t1, gp, 104f
                  sll          gp, s7, a2
                  srai         s3, t3, 7
103:              bgeu         s9, tp, 121f
104:              sltu         s8, t2, a5
                  add          t5, s7, s2
                  add          a1, s10, s1
107:              slti         tp, a3, 1257
                  xor          t0, s5, gp
                  slt          s6, s8, gp
                  beq          s8, t4, 113f
                  lui          a2, 355877
                  srl          a3, s3, s3
113:              add          a2, a6, s6
                  srli         s0, s5, 13
                  slli         a0, t1, 30
                  bge          t2, t1, 119f
                  andi         a0, s1, -1295
                  add          t6, s6, s3
119:              addi         s3, sp, 2019
                  sltu         zero, t2, s7
121:              bgeu         t2, s9, 131f
                  bne          s3, t2, 135f
                  lui          s9, 806275
                  bne          a3, a5, 137f
                  ori          t5, s6, -1768
                  srli         a5, a0, 5
                  or           a4, a5, t3
                  nop
                  or           t1, a7, tp
                  srl          a5, s9, s2
131:              slli         ra, a4, 20
                  bne          s11, s1, 146f
                  sltiu        t0, s9, -965
                  bltu         t0, s0, 148f
135:              slt          t2, s1, s8
                  slli         a2, t3, 17
137:              slt          s8, a0, a4
                  auipc        s6, 690106
                  auipc        s1, 1032696
                  srl          tp, s4, t5
                  xori         s5, a4, 1895
                  nop
                  xori         a2, t3, 229
                  sra          tp, s10, gp
                  nop
146:              add          s1, s5, t1
                  slli         s0, a7, 12
148:              sra          a0, t2, gp
                  sltu         s2, s5, ra
                  sll          t0, a5, a0
                  bltu         s4, s8, 171f
                  addi         t6, s2, 633
                  sll          s0, tp, a7
                  xor          t0, t6, t5
                  sub          a5, t2, t0
                  bge          t4, sp, 170f
                  and          t2, a3, s1
                  sra          s0, ra, ra
                  sltiu        ra, s6, 1178
                  beq          s6, ra, 169f
                  sub          a7, a7, gp
                  xor          s3, a1, s5
                  andi         t1, s0, -395
                  bne          t5, gp, 173f
                  slti         gp, a0, 1154
                  lui          t2, 38920
                  bgeu         t3, s6, 172f
                  and          a5, a4, a2
169:              auipc        s3, 746182
170:              bge          s3, s9, 188f
171:              srli         a5, sp, 26
172:              addi         s7, sp, 1860
173:              add          t2, s6, t3
                  andi         s1, s9, -1625
                  srai         a3, s0, 27
                  slti         s3, s7, 1105
                  srl          a0, t0, s4
                  slli         t1, sp, 4
                  lui          t5, 819508
                  or           tp, s8, t6
                  bltu         s5, sp, 194f
                  srli         gp, a2, 15
                  nop
                  sltu         s6, a2, t0
                  slti         a1, s10, 1719
                  or           ra, t2, a1
                  sltu         a1, s3, t3
188:              slli         s8, s7, 5
                  srli         s1, t6, 29
                  lui          s0, 648996
                  or           s9, s9, s7
                  bgeu         a6, a5, 206f
                  sltiu        s11, a4, 463
194:              bgeu         a7, s9, 197f
                  bne          t3, a6, 199f
                  bne          t0, s1, 213f
197:              addi         s5, t0, -796
                  andi         t3, t1, -985
199:              blt          t6, t2, 207f
                  slli         gp, zero, 9
                  andi         zero, a5, 913
                  xori         s9, s9, 1329
                  lui          a4, 44128
                  and          s0, a1, ra
                  xor          s1, a4, t6
206:              srli         t1, a0, 6
207:              sub          s10, a7, t4
                  and          gp, t3, s1
                  xor          a4, s6, a6
                  ori          ra, t6, 2027
                  srai         zero, s0, 8
                  beq          sp, s6, 225f
213:              addi         s6, a4, 1947
                  nop
                  beq          s7, zero, 234f
                  xori         s10, ra, 754
                  xor          s3, sp, a2
                  sltu         a2, s9, s10
                  sltiu        s1, t3, 2027
                  ori          tp, a7, -249
                  bne          a3, a0, 241f
                  sub          s2, a6, a2
                  sltu         s0, a2, a0
                  xor          s8, s9, a0
225:              xori         t4, s8, 564
                  add          ra, s7, sp
                  beq          sp, s0, 230f
                  srli         a7, t3, 28
                  slli         a2, s6, 17
230:              and          s1, s1, a1
                  xori         s9, s11, 1012
                  slt          gp, t3, sp
                  slti         t5, a1, -1674
234:              bge          gp, s7, 238f
                  sltiu        a1, a4, 1894
                  sra          s0, tp, s7
                  add          s11, ra, s3
238:              sll          a4, s10, s5
                  blt          s3, t2, 257f
                  sltiu        t1, a4, 837
241:              addi         s3, ra, 1097
                  nop
                  addi         s1, t2, 1032
                  sub          t4, s3, t5
                  or           tp, a4, a1
                  srli         a2, t0, 31
                  slt          zero, s0, a0
                  slli         a3, s10, 1
                  addi         s3, a0, -1515
                  slli         t5, t1, 17
                  bltu         t3, ra, 269f
                  srli         gp, s3, 3
                  slt          t5, s5, s6
                  or           s6, s9, t1
                  slli         a4, s6, 15
                  xori         a4, s9, -1087
257:              bge          a4, s9, 262f
                  sltiu        s1, sp, 974
                  addi         zero, a7, -461
                  srl          s10, s6, tp
                  add          s6, s9, a4
262:              bne          s3, a3, 272f
                  ori          s11, s3, 123
                  beq          gp, t0, 279f
                  bne          s5, s5, 279f
                  sltiu        t1, s6, 1488
                  bltu         t1, t1, 280f
                  or           s7, s6, a4
269:              and          t1, t3, sp
                  bltu         t5, a7, 279f
                  add          a1, s7, s2
272:              beq          a5, sp, 281f
                  and          t0, a5, a5
                  beq          s0, a1, 283f
                  sltiu        t2, sp, -416
                  bgeu         s9, zero, 284f
                  bltu         s11, a0, 286f
                  bltu         sp, zero, 283f
279:              slt          s5, a4, sp
280:              sltiu        zero, a6, -577
281:              srl          s10, a7, s3
                  sll          t0, a3, s4
283:              auipc        a3, 182954
284:              sll          s8, a4, s4
                  sltu         t1, a0, ra
286:              slli         gp, t5, 19
                  or           s7, s8, t4
                  beq          a3, s4, 297f
                  slli         s7, t3, 23
                  srli         a7, s9, 25
                  slti         t5, a5, -1741
                  blt          t1, ra, 306f
                  srl          a7, ra, t6
                  slti         zero, t0, 836
                  bne          tp, s8, 298f
                  sra          t3, t0, a0
297:              sub          t0, t4, s0
298:              add          s2, s10, t0
                  blt          t5, s9, 307f
                  slt          t2, ra, a3
                  bgeu         sp, s6, 310f
                  xor          a3, t4, t5
                  xor          s9, gp, a6
                  bne          s7, a5, 309f
                  srl          zero, a2, s9
306:              xor          t1, s9, s6
307:              xori         t3, s4, 1841
                  bgeu         a5, t0, 321f
309:              add          t4, s7, t5
310:              srl          a5, t1, t1
                  srai         a3, s3, 26
                  sub          t1, t0, s1
                  auipc        a5, 873548
                  xor          a4, s11, gp
                  or           s10, a5, s10
                  sll          s5, s6, t2
                  beq          tp, s2, 320f
                  sltiu        s0, t0, -1186
                  and          t2, zero, a5
320:              srai         t1, s0, 24
321:              sub          t1, gp, t2
                  bge          zero, a7, 336f
                  auipc        t6, 365970
                  andi         s7, a3, -1294
                  srl          t0, zero, s6
                  and          t6, a0, tp
                  sra          t6, t5, s10
                  ori          s7, s3, -1989
                  bltu         a1, t2, 342f
                  ori          s9, t1, -1278
                  sll          t6, gp, a7
                  auipc        s6, 121057
                  bge          a3, a0, 341f
                  nop
                  srai         s6, t5, 12
336:              sltu         gp, s11, t5
                  bltu         a0, tp, 346f
                  srli         s5, a1, 15
                  slti         zero, zero, 1043
                  blt          s10, t3, 358f
341:              bgeu         s9, a2, 349f
342:              sra          s10, gp, a5
                  nop
                  add          a0, sp, s1
                  sra          gp, s7, t4
346:              beq          a1, s3, 355f
                  sub          t0, t6, s8
                  bltu         t3, ra, 351f
349:              add          a5, s2, a4
                  bge          a2, s1, 360f
351:              ori          gp, s7, 1668
                  sra          t5, t0, zero
                  srai         ra, a0, 7
                  slli         s10, s2, 30
355:              sra          a4, ra, s0
                  sll          s9, s7, sp
                  andi         s10, s11, 1450
358:              sll          ra, a3, s1
                  bge          s2, t4, 373f
360:              bne          a6, s10, 368f
                  sll          t5, a4, a7
                  and          t3, t2, t1
                  bgeu         a6, s10, 372f
                  sra          a5, s4, zero
                  blt          t5, t1, 383f
                  auipc        s3, 1031143
                  srl          t5, s4, s7
368:              lui          s0, 660962
                  bgeu         t5, s2, 388f
                  blt          ra, s8, 374f
                  bgeu         t4, a6, 391f
372:              sll          s8, ra, a1
373:              beq          s11, s11, 378f
374:              slli         a4, a5, 6
                  srl          s3, t0, s8
                  sub          a4, t6, s4
                  beq          zero, s11, 386f
378:              bgeu         s5, gp, 391f
                  lui          a3, 374857
                  srl          a3, s6, a0
                  andi         s0, s3, 258
                  srl          t4, a2, a1
383:              or           zero, s11, s0
                  blt          a0, t5, 388f
                  blt          t4, a7, 402f
386:              and          s6, s6, a7
                  srli         gp, s10, 12
388:              ori          s5, s8, 1544
                  slti         t6, a4, -260
                  srl          t3, ra, s2
391:              sltiu        s6, a3, 1511
                  srli         gp, zero, 26
                  blt          t0, s9, 411f
                  srai         a5, t0, 23
                  sltu         t0, s3, s0
                  slti         s10, tp, -841
                  or           a4, t3, t3
                  sltu         s9, t6, gp
                  auipc        a4, 559470
                  or           t3, ra, tp
                  sub          gp, t6, s0
402:              sltu         t1, s7, tp
                  sltu         s10, s11, t3
                  sltu         a5, a7, sp
                  auipc        s5, 167418
                  lui          s1, 923809
                  ori          s1, t1, 1763
                  blt          s3, t3, 417f
                  bgeu         s0, a3, 418f
                  blt          a6, t4, 424f
411:              bne          s9, s1, 426f
                  sll          s7, s0, t2
                  bge          a0, s2, 416f
                  slli         ra, s3, 26
                  nop
416:              slti         a1, t3, 192
417:              slt          a2, a4, ra
418:              blt          s10, s0, 423f
                  sltiu        tp, s2, -572
                  bgeu         a0, a4, 438f
                  sll          s7, s4, a4
                  sll          a0, t0, gp
423:              sltu         tp, a2, t0
424:              or           a0, sp, s7
                  or           zero, a6, s6
426:              beq          s8, a1, 444f
                  andi         t6, s8, -1999
                  add          t2, s1, s0
                  nop
                  srl          a4, s3, a3
                  bge          s8, s8, 445f
                  sra          s8, s5, s6
                  xori         s9, s7, 461
                  add          ra, t4, a6
                  nop
                  sra          ra, t1, tp
                  slli         s7, a2, 24
438:              sub          t1, a2, a4
                  lui          s8, 109428
                  auipc        s8, 166438
                  xori         s7, a2, -495
                  sltu         t0, ra, a7
                  sltiu        a5, s8, -670
444:              srli         a2, s0, 5
445:              add          s2, s6, tp
                  sltiu        s11, zero, -177
                  andi         t5, t6, -975
                  add          s10, s2, a3
                  slli         tp, s3, 31
                  ori          s2, t1, 1599
                  beq          t2, t1, 464f
                  slli         s11, a4, 12
                  bge          t2, zero, 471f
                  bltu         s5, t3, 463f
                  srl          s0, t6, t6
                  auipc        t4, 818536
                  slti         t4, s9, -22
                  addi         s6, t6, -57
                  blt          a7, t0, 478f
                  blt          ra, t4, 480f
                  nop
                  andi         t5, s10, -35
463:              srai         t3, s7, 11
464:              andi         a7, a4, -1195
                  xor          a0, s3, s2
                  ori          s10, s1, 1900
                  auipc        a3, 218895
                  srai         a7, t5, 1
                  srai         tp, s10, 31
                  bne          s3, t2, 484f
471:              sltiu        s8, s0, 1239
                  slti         s2, t1, 626
                  sra          a7, s8, ra
                  auipc        t5, 934948
                  auipc        s5, 265098
                  or           s9, a1, s1
                  sltu         tp, s3, t1
478:              addi         a2, s11, 1113
                  slti         s7, t5, -1503
480:              sltiu        s11, t2, -55
                  bne          t0, s4, 489f
                  sra          a0, s0, s3
                  blt          ra, s8, 496f
484:              slli         s7, a2, 19
                  sub          s2, s3, s1
                  srl          s1, s3, a3
                  add          s5, a2, s7
                  ori          a4, s8, 528
489:              srl          s6, s11, ra
                  bge          t1, sp, 498f
                  slti         a0, a7, -1945
                  xor          a7, t1, s10
                  bgeu         a7, a7, 502f
                  slli         s3, tp, 19
                  slli         zero, s3, 14
496:              addi         a3, s0, 905
                  sub          zero, a1, a7
498:              beq          a7, a4, 503f
                  srl          t0, a7, s7
                  sltiu        a1, tp, -698
                  lui          a3, 556996
502:              beq          a7, a1, 517f
503:              srl          s8, t6, zero
                  ori          a7, s8, 184
                  sub          tp, s11, s6
                  bge          a6, zero, 520f
                  bltu         s2, a5, 511f
                  ori          s2, s10, -1053
                  sub          a5, ra, t5
                  xori         a1, a5, 1443
511:              xor          gp, t4, s9
                  bltu         t1, t6, 521f
                  xor          s9, s1, t0
                  auipc        t1, 1045292
                  sll          a0, s11, s6
                  bltu         s0, s9, 533f
517:              and          a1, t0, zero
                  ori          ra, s2, -1561
                  srl          s6, a1, a5
520:              sub          s0, t2, s11
521:              beq          t6, gp, 530f
                  bgeu         t4, s6, 530f
                  add          t2, t6, s10
                  slli         s0, s1, 19
                  sub          t0, t4, t3
                  ori          t0, s7, 163
                  slti         a7, s2, -89
                  or           ra, s9, t3
                  blt          t6, s7, 539f
530:              add          a1, s11, t4
                  auipc        a7, 937191
                  bge          t5, t0, 535f
533:              srli         a2, s9, 12
                  bne          s4, s5, 547f
535:              bgeu         s7, sp, 539f
                  srai         s10, s9, 27
                  sltiu        s9, s0, -391
                  addi         s11, t4, 775
539:              sltiu        a1, s5, 958
                  srli         s2, s7, 15
                  lui          a2, 679173
                  nop
                  bge          t1, s1, 546f
                  blt          t2, a2, 553f
                  bge          s9, a6, 548f
546:              slt          s9, tp, s1
547:              sra          t2, s8, s3
548:              xor          a4, s9, s9
                  and          s3, sp, s9
                  bltu         s4, a0, 559f
                  beq          s11, a5, 569f
                  slli         s2, ra, 12
553:              nop
                  beq          a1, s10, 564f
                  sltu         a7, s10, t4
                  bltu         t2, a1, 573f
                  ori          a1, t1, -1791
                  xori         a7, t1, 338
559:              blt          s0, ra, 573f
                  andi         s0, s4, 616
                  and          a0, s2, t5
                  beq          tp, s7, 580f
                  addi         a4, s0, -983
564:              or           a5, a6, t6
                  sub          a7, t5, a1
                  sub          zero, a3, s3
                  srl          a3, s6, s7
                  sll          s6, a2, s2
                  slli         t2, a3, 1
                  lui          t6, 208604
                  srai         t3, t2, 0
sub_1_j4:         jal          s6, sub_4 #jump sub_1 -> sub_4
                  blt          a5, t3, 569f
                  addi         a2, t4, 1646
                  sltu         s2, s4, s4
                  bgeu         a7, t4, 573f
569:              sub          s8, a2, s6
                  sll          t1, gp, s1
                  slli         a7, sp, 25
                  xori         s5, ra, -519
573:              xor          ra, s6, s0
                  lui          s10, 511842
                  slti         t5, a6, -408
                  sra          a7, s0, t1
                  add          t0, t0, s11
                  srli         s1, t2, 7
                  srai         s10, t2, 2
580:              xori         a3, t1, -1735
                  or           zero, t0, sp
                  sra          t2, s8, s6
                  xori         s1, a5, 555
                  lui          t2, 343467
                  bne          s6, s9, 599f
                  or           tp, a1, s6
                  bltu         a5, s2, 602f
                  bne          a0, tp, 608f
                  bltu         sp, s11, 598f
                  slti         a5, sp, -1641
                  beq          t0, a2, 610f
                  auipc        s5, 842102
                  lui          s8, 101
                  xor          t6, s4, t6
                  sub          t5, t1, a6
                  auipc        a7, 850798
                  ori          t2, tp, -180
598:              sub          t2, a0, sp
599:              slli         t5, a0, 8
                  sltu         s10, s0, t6
                  addi         t5, s7, -1722
602:              slt          tp, tp, a3
                  lui          ra, 270463
                  sltiu        t0, t1, 1391
                  xori         s11, s8, 1246
                  sub          t6, s11, t4
                  or           t0, s1, ra
                  addi         t5, zero, 10 #init loop 1 counter
                  auipc        a4, 1013584
                  sra          a2, tp, s4
                  nop
                  addi         a5, zero, -18 #init loop 1 limit
                  sra          s7, t1, gp
sub_1_8_1_t:      lui          gp, 693613
                  srli         s10, s6, 14
                  addi         t5, t5, -7 #update loop 1 counter
                  sltiu        gp, a5, 960
                  addi         s2, zero, 5 #init loop 0 counter
                  sltu         s10, a2, s2
                  srl          s10, gp, t3
                  addi         s0, zero, 4 #init loop 0 limit
                  or           a2, t4, t3
sub_1_8_0_t:      and          gp, gp, t6
                  addi         s2, s2, -3 #update loop 0 counter
                  bgeu         s2, s0, sub_1_8_0_t #branch for loop 0
                  beq          t5, a5, sub_1_8_1_t #branch for loop 1
                  sll          t2, a2, s2
608:              slli         s7, t0, 25
                  lui          a3, 491641
610:              bltu         s3, t6, 628f
                  sll          t1, s7, s2
                  sub          a0, a1, a2
                  blt          s4, a3, 621f
                  xor          s5, sp, t1
                  bgeu         s11, s8, 618f
                  srli         s8, s6, 0
                  srl          t3, a2, a6
618:              add          s7, s6, a3
                  slli         s10, s0, 24
                  xori         a5, s5, 1082
621:              lui          a3, 790224
                  srai         s3, s11, 0
                  auipc        s1, 88709
                  sra          s5, a1, t0
                  bne          a6, a5, 634f
                  andi         t1, a7, 319
                  lui          s10, 783755
628:              nop
                  bne          t2, a2, 634f
                  slti         s0, t2, -190
                  and          zero, s11, s6
                  beq          t0, sp, 636f
                  andi         gp, tp, -48
634:              xori         zero, t3, 54
                  slt          t6, t1, t1
636:              srl          s2, t4, s8
                  nop
                  ori          a0, gp, -299
                  srli         s7, a7, 26
                  ori          t5, a1, 220
                  srli         tp, tp, 21
                  bge          a7, s6, 644f
                  sll          t4, t3, s2
644:              add          s7, s8, s7
                  lw           s6, 4(s4)
                  sub          a3, tp, sp
                  sub          s8, s0, s5
                  auipc        t3, 930695
                  srl          a2, s5, t1
                  srli         a2, s4, 18
                  sll          t5, t4, a4
                  srli         a2, a1, 14
                  addi         s4, s4, 8
                  slli         a1, t0, 4
                  sltu         s3, a1, s3
941:              addi x3, x22, 0
941:              jalr x3, x3, 0
sub_5:            addi         s4, s4, -48
                  addi         a3, s10, 1451
                  add          gp, t1, zero
                  sw           s6, 4(s4)
                  auipc        a1, 321481
                  srl          ra, t0, s9
                  addi         t3, zero, 3 #init loop 1 counter
                  add          gp, s9, s0
                  xori         s6, s4, 1867
                  sltu         s2, s2, s10
                  sra          a7, t6, ra
                  lui          t2, 801836
                  addi         s3, zero, 10 #init loop 1 limit
sub_5_4_1_t:      sub          zero, s1, s3
                  srai         a7, s3, 29
                  addi         t3, t3, 6 #update loop 1 counter
                  addi         a1, zero, -10 #init loop 0 counter
                  and          a2, a2, a6
                  slt          s5, gp, s1
                  add          t2, t4, s2
                  addi         a4, zero, -18 #init loop 0 limit
                  sltu         t6, a4, t5
                  auipc        t1, 468303
                  sra          t6, a7, sp
sub_5_4_0_t:      sub          a0, sp, a2
                  srl          t1, a0, t3
                  addi         a1, a1, -4 #update loop 0 counter
                  srl          s6, s4, s10
                  beq          a1, a4, sub_5_4_0_t #branch for loop 0
                  nop
                  bltu         t3, s3, sub_5_4_1_t #branch for loop 1
                  srli         gp, s11, 30
                  addi         t0, zero, -9 #init loop 0 counter
                  ori          s2, a6, -310
                  slli         a7, s3, 23
                  andi         t1, s3, 491
                  addi         tp, zero, 15 #init loop 0 limit
                  or           s0, s1, a5
sub_5_10_0_t:     nop
                  slli         s8, s5, 31
                  and          s5, t1, s2
                  ori          a5, a1, 649
                  add          a4, a7, t6
                  addi         t0, t0, 1 #update loop 0 counter
                  srai         s0, t3, 22
                  slt          a7, s5, s7
                  xori         gp, s7, -646
                  bltu         t0, tp, sub_5_10_0_t #branch for loop 0
                  ori          a2, a1, -810
                  addi         a1, zero, 6 #init loop 1 counter
                  addi         t6, zero, -4 #init loop 1 limit
sub_5_8_1_t:      sub          s7, a4, sp
                  addi         a1, a1, -10 #update loop 1 counter
                  srl          a4, t0, s5
                  addi         ra, zero, 5 #init loop 0 counter
                  addi         s10, zero, 15 #init loop 0 limit
sub_5_8_0_t:      sub          t1, t0, s2
                  addi         ra, ra, 10 #update loop 0 counter
                  lui          t5, 1022855
                  bne          ra, s10, sub_5_8_0_t #branch for loop 0
                  beq          a1, t6, sub_5_8_1_t #branch for loop 1
                  andi         s2, s0, 555
                  addi         t0, zero, 8 #init loop 0 counter
                  addi         s8, zero, 7 #init loop 0 limit
                  auipc        t4, 448811
                  ori          t6, s7, 1527
sub_5_5_0_t:      lui          t2, 245153
                  addi         t0, t0, -5 #update loop 0 counter
                  nop
                  bgeu         t0, s8, sub_5_5_0_t #branch for loop 0
                  nop
                  addi         t1, zero, 10 #init loop 0 counter
                  lui          s1, 898202
                  andi         a2, s10, -568
                  addi         s2, zero, 10 #init loop 0 limit
sub_5_1_0_t:      sub          t6, s11, s9
                  slli         tp, s9, 11
                  addi         t1, t1, -9 #update loop 0 counter
                  bgeu         t1, s2, sub_5_1_0_t #branch for loop 0
                  xori         t4, t1, -304
                  addi         ra, zero, 8 #init loop 0 counter
                  slt          tp, s3, s7
                  and          a4, a4, t4
                  lui          s7, 950410
                  slt          a2, s3, a5
                  slli         a4, a6, 6
                  srai         a1, s3, 31
                  ori          a4, t0, 379
                  lui          s1, 321507
                  lui          s6, 378547
                  and          s10, tp, s8
                  sra          a7, s8, s9
                  sltu         t5, zero, a7
                  addi         t1, zero, 8 #init loop 0 limit
                  slli         s1, a1, 3
                  slti         tp, a1, 638
sub_5_9_0_t:      xor          t2, a0, t2
                  lui          s1, 210112
                  addi         ra, ra, -6 #update loop 0 counter
                  srl          s9, s9, t5
                  lui          t4, 604814
                  xor          t6, s1, t5
                  slti         s11, t1, 413
                  bgeu         ra, t1, sub_5_9_0_t #branch for loop 0
                  add          s5, a3, s6
                  addi         a1, zero, -10 #init loop 1 counter
                  xori         t4, s7, -1447
                  slt          a3, t2, s9
                  andi         s5, s5, 1370
                  nop
                  srai         t5, zero, 9
                  auipc        a7, 1019674
                  addi         a0, zero, -19 #init loop 1 limit
sub_5_3_1_t:      andi         s1, s7, 689
                  or           s5, t0, s9
                  addi         a1, a1, -3 #update loop 1 counter
                  or           t0, s10, t6
                  lui          a3, 823352
                  srl          s8, s4, t1
                  slti         s7, s8, -1786
                  slli         a2, a6, 24
                  addi         tp, zero, 10 #init loop 0 counter
                  addi         s11, zero, 10 #init loop 0 limit
                  sltiu        t5, s3, 953
sub_5_3_0_t:      nop
                  and          a4, a3, s8
                  srl          s0, s11, s7
                  nop
                  sltu         s0, s5, gp
                  addi         tp, tp, -9 #update loop 0 counter
                  sra          a7, a1, a0
                  auipc        t1, 475107
                  auipc        s1, 753811
                  srai         t1, a0, 5
                  bgeu         tp, s11, sub_5_3_0_t #branch for loop 0
                  sltu         ra, s10, s3
                  beq          a1, a0, sub_5_3_1_t #branch for loop 1
                  slti         s3, t0, -1996
                  sll          a2, t5, a5
                  slti         gp, s7, -178
                  ori          a3, a1, 1538
                  and          t1, a0, tp
                  sltu         s5, t6, t4
                  slt          s5, s9, tp
                  xor          s9, zero, tp
                  beq          a3, t4, 14f
                  srli         s8, tp, 1
                  srli         t2, t0, 22
                  nop
                  sra          s11, s1, t5
                  blt          s7, s7, 16f
                  blt          s6, s2, 14f
14:               auipc        t1, 152158
                  sub          s2, a2, a5
16:               auipc        t3, 1034323
                  ori          t0, s3, 1714
                  auipc        s11, 314776
                  add          a2, a3, a3
                  slti         zero, t1, -1517
                  bgeu         a6, t1, 27f
                  sub          s10, ra, s0
                  ori          gp, s9, 1656
                  slti         gp, s3, 62
                  blt          s3, a7, 29f
                  bgeu         s8, t5, 39f
27:               sltiu        s5, s0, 1689
                  slti         a4, t0, 168
29:               srl          a2, a7, t4
                  bgeu         s0, s4, 40f
                  and          t4, t1, a1
                  auipc        a5, 287185
                  bne          t1, t4, 49f
                  lui          gp, 155847
                  sltiu        s6, t6, -218
                  xor          a2, s1, ra
                  or           s6, t2, a1
                  beq          a2, a7, 45f
39:               sltiu        t5, t6, 1907
40:               addi         a0, sp, 864
                  sltu         t0, a1, s6
                  bne          t6, zero, 55f
                  blt          a4, a7, 51f
                  beq          gp, a2, 62f
45:               andi         a5, t5, -1664
                  srl          t1, a2, t1
                  and          a4, a1, ra
                  or           s7, t5, a1
49:               sltiu        ra, gp, -1185
                  sub          a2, t3, s2
51:               auipc        a3, 955971
                  ori          gp, t2, -1082
                  addi         a0, gp, 1653
                  andi         s8, s4, 1264
55:               bltu         t4, t1, 59f
                  and          a2, gp, s10
                  srl          s1, s0, a5
                  nop
59:               bge          a4, s9, 60f
60:               srl          s5, s10, s11
                  xor          t1, s3, s8
62:               blt          t2, s3, 75f
                  sra          a1, gp, t1
                  ori          s8, s0, -62
                  blt          a7, s6, 75f
                  bne          s7, s4, 86f
                  addi         s6, zero, 2 #init loop 1 counter
                  srl          s10, ra, a1
                  sub          s10, a3, t4
                  auipc        s9, 286771
                  ori          s7, s3, 1604
                  sltu         a2, s4, a2
                  slti         s9, sp, 971
                  lui          t4, 361772
                  srai         s1, s1, 12
                  slti         ra, t0, 2035
                  addi         a7, zero, -7 #init loop 1 limit
                  ori          gp, s0, 1694
sub_5_2_1_t:      xor          a2, gp, a3
                  add          tp, s1, s4
                  addi         s6, s6, -9 #update loop 1 counter
                  sub          t4, s3, s7
                  addi         s11, zero, 5 #init loop 0 counter
                  addi         s3, zero, 5 #init loop 0 limit
                  slti         t6, s8, 521
                  srli         a3, s10, 18
                  srl          zero, s5, s7
sub_5_2_0_t:      sub          a0, s6, a3
                  addi         s11, s11, -3 #update loop 0 counter
                  bgeu         s11, s3, sub_5_2_0_t #branch for loop 0
                  sltiu        s0, t1, 1742
                  xori         ra, t3, 574
                  srli         a1, s2, 3
                  sra          t6, s1, ra
                  beq          s6, a7, sub_5_2_1_t #branch for loop 1
                  add          t5, s4, s1
                  bltu         a2, gp, 69f
                  slt          s6, s10, s9
69:               srl          gp, s8, tp
                  bltu         s6, sp, 86f
                  blt          gp, t6, 81f
                  bltu         s2, a7, 76f
                  sra          a2, t6, a1
                  addi         a0, a4, 1757
75:               addi         a5, t6, 65
76:               sub          gp, s0, a4
                  srai         a4, a4, 20
                  bge          a3, s5, 88f
                  lui          s3, 676516
                  auipc        s1, 478525
81:               slti         s3, gp, 1982
                  blt          a7, s11, 85f
                  lui          a2, 578293
                  srai         t5, s10, 4
85:               xori         s3, sp, 320
86:               ori          gp, gp, -742
                  bne          sp, s9, 94f
88:               and          s9, a6, sp
                  slt          a2, a4, a4
                  sra          t6, t0, a2
                  slt          a1, a5, t2
                  sub          t1, tp, s4
                  srai         a1, a1, 26
94:               andi         a7, s7, 1358
                  slti         t0, t4, -524
                  and          s1, a0, a2
                  auipc        t2, 508388
                  nop
                  sra          a5, a3, s10
                  blt          s10, t1, 111f
                  bge          s5, s8, 110f
                  addi         a0, s7, -1065
                  or           t0, s1, a1
                  ori          a7, a7, 448
                  bge          zero, gp, 115f
                  xori         tp, a2, 1219
                  nop
                  ori          a0, t3, -1564
                  blt          a5, t0, 112f
110:              ori          s9, a3, 683
111:              lui          t6, 949184
112:              sra          a5, t1, s9
                  sll          a0, s3, t0
                  nop
115:              bgeu         a0, a2, 126f
                  xor          a2, t0, s11
                  and          t0, a7, a3
                  bltu         ra, ra, 124f
                  sub          a4, t3, t2
                  auipc        gp, 572489
                  xori         s5, s10, 1145
                  srli         s2, a6, 25
                  sltiu        tp, a6, 833
124:              addi         gp, s3, 1663
                  nop
126:              xori         gp, s4, -112
                  xor          s9, gp, s0
                  sltu         s0, a7, a6
                  ori          gp, tp, 486
                  nop
                  lui          a0, 953773
                  andi         t5, s8, -53
                  slti         s2, s7, -620
                  nop
                  bltu         a2, a3, 139f
                  sltiu        t3, t5, 798
                  xor          s2, zero, s9
                  slt          t3, s7, s0
139:              or           s8, s1, a6
                  nop
                  nop
                  xor          s1, s7, t4
                  srai         a7, s3, 5
                  slt          a7, a2, s10
                  xor          s10, a7, t4
                  nop
                  srai         s5, a2, 13
                  ori          t6, a7, 746
                  addi         t4, s5, -1509
                  sltiu        s6, ra, -1740
                  sltu         a3, a7, t4
                  andi         a1, t4, -878
                  sub          zero, s4, s0
                  bltu         gp, t1, 158f
                  srai         t6, a2, 22
                  sltu         s3, t3, a2
                  auipc        a0, 951252
158:              lui          a3, 728219
                  andi         s2, a1, 1393
                  ori          zero, t4, 1991
                  bge          s0, a2, 168f
                  sll          a5, s4, a3
                  srai         t6, s6, 15
                  add          s7, a4, tp
                  slti         s8, t0, 1897
                  andi         gp, t4, -1319
                  or           a0, s1, t4
168:              srai         a7, a0, 6
                  xor          zero, t2, t5
                  auipc        t0, 174397
                  slt          t5, s9, s1
                  sll          s2, ra, a1
                  bgeu         t4, s0, 183f
                  xor          gp, a1, s10
                  blt          s6, s11, 195f
                  sltu         tp, t0, s3
                  xori         s2, a6, -470
                  slli         tp, a1, 22
                  slt          a7, a2, s4
                  slti         t5, a3, -746
                  andi         s3, a3, 1718
                  srli         t5, s8, 3
183:              srli         s8, tp, 11
                  sltu         s7, t5, a2
                  sltu         a7, gp, a6
                  xori         a7, s10, 1651
                  sltu         t4, s7, s3
                  srl          s3, s2, a1
                  sub          s10, sp, a1
                  add          s11, s10, a4
                  srai         s11, a0, 17
                  lui          t2, 778648
                  bge          a2, s4, 209f
                  sltu         s2, a4, s2
195:              bge          tp, zero, 199f
                  bne          a6, a0, 206f
                  or           s1, t6, tp
                  sltiu        s3, a7, 24
199:              xori         zero, tp, 1731
                  addi         t5, t2, -425
                  sra          t3, a4, s6
                  bne          t2, t2, 211f
                  sra          a7, t6, a7
                  bgeu         s7, t3, 217f
                  nop
206:              beq          t2, t4, 209f
                  nop
                  sltiu        t6, s0, -1873
209:              add          zero, t3, ra
                  nop
211:              bgeu         t4, t0, 218f
                  slli         s11, s8, 6
                  blt          t0, s8, 216f
                  andi         t6, ra, -440
                  bge          s5, s7, 223f
216:              srl          a7, s9, s7
217:              slt          s5, s5, a6
218:              slt          a1, sp, t4
                  add          s0, s5, s11
                  ori          zero, a1, 558
                  add          a3, sp, t1
                  beq          ra, s4, 223f
223:              ori          s11, zero, 1055
                  srli         t5, a2, 3
                  slti         s6, t2, -358
                  bge          s9, s8, 228f
                  lui          s8, 176584
228:              or           a3, t2, s11
                  add          gp, s11, t5
                  srai         ra, s9, 0
                  bltu         ra, t3, 244f
                  blt          t2, s8, 243f
                  srai         t4, s8, 27
                  beq          t0, s6, 250f
                  or           s1, a6, t5
                  xor          s3, s0, s8
                  bgeu         t6, gp, 243f
                  sra          s0, gp, tp
                  sub          s10, a3, a6
                  bltu         ra, s6, 250f
                  srl          s8, a2, s4
                  lui          ra, 726219
243:              sll          s1, a6, tp
244:              ori          t4, gp, -892
                  bne          t5, t2, 263f
                  add          t5, a1, a0
                  bne          s9, s9, 257f
                  slli         zero, sp, 8
                  srli         s3, a2, 18
250:              slt          s8, ra, s8
                  bgeu         t3, zero, 261f
                  slli         zero, a1, 18
                  slti         a0, t0, -1734
                  sub          s8, s3, s4
                  and          a2, s10, s10
                  sra          s0, s6, s7
257:              beq          s3, t4, 261f
                  sltu         ra, a2, s9
                  sra          a5, a7, a5
                  xor          s9, s1, s11
261:              ori          s10, t2, -1730
                  sll          a0, a0, ra
263:              sltu         gp, a2, s11
                  bltu         a3, t1, 275f
                  srli         a0, s1, 19
                  sub          t1, s4, s4
                  srl          t2, s6, s10
                  slli         ra, a0, 0
                  beq          t6, a5, 282f
                  blt          t4, t5, 276f
                  srl          s6, a0, a1
                  sltiu        a7, s7, 804
                  nop
                  nop
275:              srai         ra, s6, 3
276:              sll          a2, t0, s5
                  addi         s3, zero, 9 #init loop 0 counter
                  slti         s2, a0, -1045
                  addi         a7, zero, 8 #init loop 0 limit
                  srai         t4, a6, 21
                  srai         s11, s1, 17
sub_5_11_0_t:     addi         t0, t6, 2009
                  addi         s3, s3, -7 #update loop 0 counter
                  xori         a4, a4, 1147
                  sltu         s1, a4, a7
                  ori          t3, s9, 1219
                  bgeu         s3, a7, sub_5_11_0_t #branch for loop 0
                  xori         t6, t2, -1394
                  bgeu         s4, a6, 278f
278:              auipc        tp, 919322
                  sltu         gp, s11, s0
                  bne          a0, s3, 287f
                  srli         ra, s8, 31
282:              bne          a3, a0, 283f
283:              slti         t4, sp, 1962
                  bltu         s4, a1, 295f
                  blt          a7, s6, 289f
                  sll          a2, s7, t3
287:              sll          s8, t3, s11
                  bne          s7, s6, 308f
289:              sra          a4, a7, ra
                  slli         s9, a1, 10
                  bge          a2, s8, 298f
                  xor          s9, s9, t4
                  srl          s7, s5, s4
                  ori          t4, a3, -1727
295:              xori         a5, zero, 276
                  bgeu         a0, sp, 297f
297:              srai         s1, s6, 1
298:              sub          t0, a4, a7
                  and          s1, tp, s2
                  add          t5, sp, s10
                  srli         s6, t0, 15
                  srai         t2, zero, 11
                  bgeu         s11, t0, 310f
                  ori          s2, s2, -1418
                  bge          s3, s8, 318f
                  xori         s1, s11, 1488
                  andi         t6, t3, 1490
308:              nop
                  or           ra, s5, t0
310:              add          t1, t0, s10
                  sra          s0, s3, t4
                  xor          zero, a0, s2
                  ori          t1, s5, -835
                  sub          s5, s10, t0
                  slti         t3, s3, 1988
                  bgeu         t6, s3, 332f
                  lui          t1, 83115
318:              beq          zero, s4, 324f
                  sra          s5, s7, gp
                  and          a2, t4, a7
                  bne          s7, s6, 332f
                  addi         a4, s5, -283
                  bne          a7, sp, 329f
324:              blt          s3, zero, 334f
                  bne          tp, s7, 327f
                  andi         t4, zero, -1702
327:              bge          t4, t1, 334f
                  beq          tp, t4, 338f
329:              lui          s0, 745458
                  addi         t4, zero, 0 #init loop 0 counter
                  slt          a7, s4, s10
                  ori          t1, a4, -1429
                  sltiu        t1, a6, -1935
                  addi         s10, zero, -6 #init loop 0 limit
                  sltiu        t2, a2, 1602
                  srli         s5, zero, 11
                  slt          a4, s1, sp
                  and          t5, a4, s5
                  lui          t0, 863429
                  lui          s3, 1014135
                  srai         a1, a2, 27
                  ori          t5, gp, -1842
                  or           t0, s9, t1
                  srl          a4, s10, t2
sub_5_0_0_t:      sltiu        a2, a6, -689
                  nop
                  addi         t4, t4, -7 #update loop 0 counter
                  auipc        a2, 194185
                  srl          s3, t4, s5
                  slli         a5, ra, 30
                  xor          s3, s4, a1
                  sltu         a5, t2, a3
                  srl          s5, s5, s3
                  add          t2, s0, gp
                  auipc        s5, 666328
                  bge          t4, s10, sub_5_0_0_t #branch for loop 0
                  sll          s9, a2, s5
                  addi         t1, a2, 973
                  bltu         a3, s11, 339f
332:              sll          a7, gp, sp
                  slli         s11, a5, 4
334:              nop
                  sra          ra, tp, a3
                  xori         a7, s10, 986
                  add          t6, t3, zero
338:              bltu         a6, gp, 351f
339:              sltiu        a7, s5, -631
                  beq          a2, s2, 356f
                  andi         s2, s8, 1246
                  lui          s1, 539104
                  andi         s5, s4, 1978
                  andi         t2, s0, -539
                  slti         t1, zero, 926
                  slli         t6, a2, 30
                  bge          s7, t4, 357f
                  ori          s9, s10, -1303
                  slt          a3, a2, gp
                  blt          s11, sp, 353f
351:              xori         t6, s3, 1671
                  andi         a2, t4, 1307
353:              beq          s6, a2, 362f
                  xori         s1, s0, 1670
                  and          t3, s11, s9
356:              sra          zero, a4, a1
357:              xor          t3, sp, t0
                  sltu         gp, t4, zero
                  xor          zero, a0, s10
                  nop
                  sltu         s11, a7, s0
362:              bltu         a2, t5, 375f
                  slt          s9, s7, gp
                  srl          s11, sp, gp
                  or           a4, zero, t4
                  sra          s3, s6, s4
                  lui          ra, 329831
                  auipc        s0, 648949
                  bne          a3, a6, 372f
                  xori         s8, s8, -1401
                  ori          a5, a4, -1544
372:              bgeu         s3, s1, 382f
                  andi         a3, s5, 1496
                  nop
375:              sra          gp, t2, t2
                  addi         s9, s4, 1875
                  lui          s5, 962776
                  ori          a4, t4, -237
                  lui          a4, 838658
                  auipc        s10, 381844
                  blt          a6, a1, 385f
382:              or           a2, tp, s3
                  slli         a2, t3, 19
                  addi         ra, a6, -47
385:              addi         s11, a3, -772
                  slli         a7, t0, 21
                  beq          s7, zero, 397f
                  bne          s7, s6, 406f
                  sub          s1, s1, s10
                  bgeu         tp, t3, 394f
                  beq          s9, s4, 395f
                  sltu         s8, zero, s5
                  slli         s11, s10, 0
394:              sra          t6, t5, zero
395:              slti         tp, a4, 353
                  and          tp, s0, zero
397:              bgeu         a3, s0, 407f
                  auipc        a4, 712974
                  slli         s11, t0, 10
                  add          zero, zero, a5
                  and          a4, t6, t6
                  xor          s1, tp, s9
                  lui          a4, 236294
                  lui          s0, 620349
                  beq          a2, s4, 412f
406:              sra          a0, a1, sp
407:              xori         s7, s2, 906
                  bgeu         t4, s6, 411f
                  andi         a2, s10, 268
                  lui          s11, 580099
411:              beq          s6, a4, 424f
412:              and          a2, s8, s0
                  and          a4, a6, t0
                  beq          a3, t0, 434f
                  sll          s2, a2, gp
                  ori          s10, s8, 35
                  bge          ra, t1, 418f
418:              sll          a5, a6, a5
                  xori         s7, s8, 1238
                  beq          zero, s10, 433f
                  sub          s5, a7, zero
                  auipc        a5, 742667
                  blt          s1, s9, 427f
424:              slli         t6, s8, 8
                  auipc        s6, 339497
                  srai         a5, t1, 4
427:              slt          t3, s10, t4
                  sub          a7, s8, t3
                  sra          s7, s5, gp
                  auipc        t0, 88442
                  sra          zero, s2, ra
                  xor          s1, s6, s1
433:              blt          a0, s9, 443f
434:              lui          t5, 494557
                  sra          s9, a5, a3
                  srli         a7, t1, 11
                  bltu         t1, t6, 447f
                  nop
                  nop
                  bne          tp, t4, 447f
                  xor          s2, s0, a3
                  bgeu         a1, ra, 453f
443:              srli         a0, s9, 5
                  nop
                  and          s10, sp, sp
                  sll          t1, t5, s5
447:              slli         t5, s11, 24
                  blt          a1, t3, 464f
                  blt          s7, zero, 458f
                  sll          a4, a4, s9
                  addi         s9, a0, 397
                  blt          t5, a4, 465f
453:              bge          tp, a4, 454f
454:              sub          s0, a6, t6
                  bge          s5, s8, 459f
                  sra          a1, zero, a4
                  slti         s1, t4, 669
458:              andi         s0, ra, 1979
459:              or           tp, a2, zero
                  slti         a3, a5, -522
                  or           tp, t5, tp
                  blt          s4, s11, 478f
                  slti         a3, s5, 2002
464:              lui          s1, 771813
465:              bgeu         t1, gp, 471f
                  xor          s8, a0, ra
                  bne          a7, s0, 470f
                  ori          t0, a4, 851
                  sll          s6, s11, s9
470:              and          zero, t6, a7
471:              slti         s6, a7, 1666
                  bge          a7, tp, 482f
                  xor          s7, s10, a3
                  bgeu         s3, s1, 480f
                  srai         t3, gp, 16
                  beq          a5, a1, 494f
                  ori          s10, a4, -728
478:              auipc        a3, 102967
                  srl          s7, s9, s5
480:              srli         t2, sp, 4
                  bgeu         a5, t5, 491f
482:              bge          s5, s11, 493f
                  ori          a7, s4, 1286
                  nop
                  and          a4, s4, sp
                  slli         a1, t5, 6
                  slt          a4, t4, zero
                  ori          s3, tp, 1994
                  srli         s8, t4, 24
                  sra          a1, ra, s2
                  addi         s10, zero, -4 #init loop 0 counter
                  sub          a2, a2, s10
                  sra          a7, t1, t6
                  addi         t5, zero, 20 #init loop 0 limit
                  xori         s0, s2, -1987
                  nop
sub_5_6_0_t:      andi         tp, s9, -1242
                  addi         s10, s10, 8 #update loop 0 counter
                  nop
                  bne          s10, t5, sub_5_6_0_t #branch for loop 0
                  slti         a2, s9, 448
491:              xori         s8, s1, -334
                  sltiu        a7, t4, 1295
493:              sll          t6, a6, s1
494:              and          s3, t0, t6
                  srl          s7, gp, a7
                  add          t3, s10, a4
                  ori          s2, a4, 1899
                  addi         s8, s5, -2028
                  blt          s6, s0, 503f
                  bge          t0, t0, 504f
                  blt          a2, t3, 503f
                  slt          a3, t3, a0
503:              srai         s8, t1, 4
504:              sra          s3, tp, s2
                  auipc        t4, 225984
                  sll          t0, tp, s2
                  slli         s11, zero, 29
                  sltu         zero, a6, a7
                  slti         a5, s10, 598
                  nop
                  srl          t0, a6, s2
                  srli         t0, t6, 13
                  sltu         s8, s2, a6
                  bltu         s10, s8, 521f
                  xori         zero, sp, 596
                  slli         tp, zero, 15
                  sll          a1, a4, t6
                  bgeu         s7, a4, 526f
                  add          tp, t1, s9
                  srai         s6, a4, 23
521:              srl          gp, s11, s8
                  slti         gp, s2, 357
                  sra          a7, s3, a6
                  sltiu        s11, s11, -1661
                  sll          a0, s4, zero
526:              auipc        a5, 837713
                  blt          t2, s10, 533f
                  slli         gp, s9, 15
                  beq          s11, s9, 539f
                  and          a1, t4, s0
                  srli         s3, t1, 19
                  blt          a3, s7, 533f
533:              add          a7, a6, t3
                  or           t6, a7, ra
                  add          t0, s8, t2
                  sltu         t5, t3, s9
                  sra          s10, s11, a7
                  bgeu         s1, s10, 545f
539:              sll          s6, s3, ra
                  auipc        s9, 764535
                  andi         a5, t5, -1991
                  auipc        a0, 551649
                  bltu         gp, sp, 553f
                  blt          t3, s2, 557f
545:              srai         zero, t3, 22
                  nop
                  blt          s7, s8, 555f
                  ori          t6, gp, -1320
                  srl          s0, s8, a3
                  sra          a0, a2, tp
                  sltu         t0, s8, s8
                  sll          s0, gp, t6
553:              add          a4, t5, s4
                  sltiu        s10, a6, -84
555:              lui          t0, 792436
                  bge          a5, t0, 563f
557:              add          s5, s7, tp
                  sll          t6, t6, a3
                  ori          a3, s7, 730
                  srli         a5, t3, 9
                  andi         s0, a2, 1602
                  slti         s9, a5, -1869
563:              slli         t1, a1, 30
                  bne          s4, sp, 582f
                  addi         a3, zero, 4 #init loop 0 counter
                  and          t5, s10, s10
                  slti         t6, a0, 1823
                  addi         t0, zero, 4 #init loop 0 limit
                  ori          t1, s0, -51
                  srl          s7, t2, ra
                  add          t4, ra, s9
sub_5_7_0_t:      sub          s1, gp, zero
                  sll          a2, a1, t0
                  nop
                  ori          s5, s4, 437
                  lui          t6, 902044
                  add          a0, a2, t0
                  slti         s2, s4, 1694
                  srai         t5, s5, 19
                  srli         t5, t5, 10
                  addi         a3, a3, -2 #update loop 0 counter
                  xori         a5, a3, 1190
                  add          s3, t3, s3
                  sltiu        a4, a0, -1214
                  sra          a0, a5, t1
                  xori         t3, a2, -977
                  bgeu         a3, t0, sub_5_7_0_t #branch for loop 0
                  addi         s7, ra, 508
                  nop
                  or           a7, s8, ra
                  andi         gp, t0, -1823
                  auipc        s2, 110310
                  sll          a1, t3, a1
                  lui          t6, 714447
                  blt          a2, s5, 591f
                  sltu         s0, t0, t2
                  slt          s2, s3, sp
                  sra          t5, a5, t2
                  blt          s4, t1, 578f
                  add          a3, ra, s7
                  bne          s11, s9, 581f
578:              nop
                  blt          s6, a1, 595f
                  srli         a7, s5, 8
581:              bge          a3, a3, 584f
582:              slt          s2, zero, s11
                  add          t5, a0, t3
584:              or           gp, s11, a2
                  srl          gp, a6, s11
                  auipc        s8, 688985
                  blt          s3, a4, 598f
                  addi         ra, t0, -2042
                  sltiu        s10, s7, -1472
                  andi         s5, s0, 942
591:              bgeu         sp, s3, 600f
                  slti         tp, tp, 981
                  andi         t4, t3, -458
                  andi         tp, t4, -624
595:              sll          a7, t5, s5
                  sra          t3, t5, a2
                  srai         s3, s0, 18
598:              bne          tp, s2, 609f
                  xor          s9, s8, a1
600:              xori         s7, s0, 1181
                  add          a2, s2, s8
                  add          tp, a4, s4
                  slti         s6, s4, 802
                  beq          t0, a0, 614f
                  add          s3, a0, a4
                  xori         s8, s5, 288
                  bltu         s9, t3, 614f
                  slli         s10, a7, 0
609:              bgeu         s0, s8, 614f
                  or           a4, a2, a4
                  addi         t3, s0, -504
                  srl          zero, a3, s7
                  srl          s8, s7, t2
614:              addi         t2, a4, -1110
                  and          s2, t0, s4
                  xori         s2, t6, 1387
                  lw           s6, 4(s4)
                  srl          a1, t2, s4
                  addi         s4, s4, 48
                  add          s7, t3, a2
                  lui          s11, 237764
                  sltiu        t5, s6, 788
866:              addi x6, x22, 1
866:              jalr x6, x6, 0
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
.word 0x53ed672b, 0xcf16e778, 0x1b61526d, 0x530f1141, 0xc23cb825, 0xeb25a21f, 0xfc62bc57, 0x93f3df79
.word 0x0bba93c5, 0xd99bdf1a, 0x9605f49e, 0x769d52e2, 0x39645809, 0x99d23664, 0x739e92ce, 0x83219f35
.word 0x027c10d0, 0x02e24f40, 0x16f4eeff, 0xe156b38a, 0x49e1f19a, 0x93fb0c9a, 0xecfb300c, 0x5dc25e2f
.word 0x6d9ddc8a, 0xdab8e805, 0xe936809d, 0x1d06d2a6, 0x1123bc2b, 0xd84953e9, 0x3219d284, 0xd8d0d42b
.word 0x7558364d, 0x27c81b41, 0x0e0cc54b, 0x9ce333bf, 0xb9be46c3, 0xcf864446, 0x5b79122c, 0xc675f923
.word 0x55817b81, 0xe174664d, 0xbf0f358e, 0x10787aa1, 0xde883ceb, 0xb110474f, 0x1bb79cbf, 0x10dd5fc8
.word 0x2458b621, 0xa6ecb2b4, 0x697e33b6, 0xff52b3d3, 0x3103b4ac, 0xa8b8b875, 0xa0b8de56, 0x5d9198f7
.word 0x7fa51e68, 0xc086eaf5, 0x296794e1, 0xaf9f0498, 0x8ff45165, 0x1f19c1bc, 0xc39c6050, 0x1b8ecc05
.word 0x8236b84c, 0x5d74ae57, 0x5c904f70, 0xb721860f, 0x4d433422, 0x47267067, 0xa1b78630, 0x7ce7ac7c
.word 0x4be9140d, 0x895ccfd1, 0xfbb1de59, 0x46bf10c0, 0xdb7ef0b3, 0x910ca458, 0x826a10e7, 0xf607fc97
.word 0x72ca09c2, 0x85ecd91e, 0xca585d48, 0x399f3349, 0x8bb66eee, 0xb7f36627, 0xfd83f9b4, 0x5b9dc2e9
.word 0xc8d0763f, 0x3d48d02d, 0xe77fd19d, 0x4611b71e, 0x2a5a753a, 0x4e01a144, 0x790747c2, 0x0d8c62d4
.word 0xa623bb45, 0xb2a614ae, 0x2a780e70, 0xbfbbcd95, 0xd3a336d0, 0x8c806c4f, 0x03102b8a, 0xf82da26a
.word 0x3d9abb65, 0x3038d4ce, 0xada6c4ab, 0x9d5c79ea, 0xf41fc170, 0x62feb4c4, 0x76b76d5d, 0x8d8fcf2c
.word 0x3b342589, 0x5dbd1a2d, 0x75a2d943, 0xf2e3ddfa, 0x4a827847, 0x0bb91e83, 0x2b04b043, 0xb7b434b9
.word 0xeac133fa, 0xf0f8fec7, 0x8c3ca6d0, 0xe2f54370, 0xc8fefe28, 0xadb1282d, 0x5fefb5a7, 0x08f5035c
.word 0xcd7b1a52, 0xdf491c0d, 0x29f03b48, 0x4e0bf3c0, 0xc51aada3, 0x3ed62f99, 0x794ccdb0, 0xa7968587
.word 0x6cef2707, 0x2f521323, 0xe7870356, 0xf01cdd15, 0xb5531d05, 0x708e2ae2, 0x1d44eee2, 0xf9f0cc3d
.word 0x2c11d621, 0x4f09558f, 0x923a1cf2, 0xb68ec4df, 0x287405e7, 0x3d0fc360, 0xc2a76ed5, 0xcbaae616
.word 0x70b52a24, 0x1a116ac1, 0x5e0c5d67, 0x096b5285, 0xa1cd7b7a, 0x19e2d371, 0xe354b7ae, 0xb7e374ad
.word 0xe8b872b2, 0xbdf852c4, 0x8071566a, 0x6ccfd2eb, 0x1a65ff8a, 0xb6b2b628, 0xc1249ba3, 0x20217a8a
.word 0xf915e0a8, 0x4e51ba5c, 0x0dde4636, 0x77bde5e4, 0x52887909, 0x1ccf2470, 0xb979fc7b, 0x5fde31a0
.word 0x5f21aa64, 0xfabc5911, 0xdc73f5ac, 0xda3cc972, 0xbb8038e4, 0xfead1c9b, 0x145cac9c, 0x1b6c78b4
.word 0xa42b6c05, 0x1f0a2f54, 0xd452f581, 0x9a638bf4, 0xfda304ae, 0x5aaeaa77, 0x851a18b1, 0xab8ab7d1
.word 0x890d7c7b, 0x22ebe8d8, 0x53599ea0, 0x94f9750c, 0xef0c5051, 0xfbca88b1, 0x32841f89, 0xaa998e69
.word 0xe9d2adbc, 0x09ae3c99, 0x8a81220b, 0x1cc45c4d, 0xf7004ba5, 0x0bf57290, 0x72bf3369, 0x73787a83
.word 0xcee4f039, 0x66f5d454, 0xca4f5a80, 0xee4db239, 0xad21d20d, 0xea7bdad8, 0x2e624157, 0x33281c26
.word 0x2dc34282, 0xdef183e8, 0x44e0b817, 0x49405be5, 0x1236ccef, 0x5861314e, 0xf40e897e, 0x28502a76
.word 0xc17b18a5, 0x2515daad, 0x15c4cd11, 0xfb45559b, 0xbee76637, 0xcebffe5b, 0x01ac61aa, 0xda743058
.word 0x6dd81a35, 0x8bfadf6b, 0x7ba80286, 0xbce3399c, 0x7fa722b6, 0x76f7ac76, 0x438c990c, 0x177c8b24
.word 0x8372bea3, 0xdd9be3e5, 0x516b929b, 0x606298a2, 0x23adfadf, 0xa89d94bc, 0x4314cd8b, 0xc5877853
.word 0x96c77ff5, 0x28c6b0fa, 0x00dfa6bb, 0x2ab26c5b, 0x1ae3e79a, 0x2489b8c3, 0xae9eaab4, 0x573c106a
.word 0x43071e36, 0x0ad2a91d, 0x405b04e9, 0x8c93902a, 0x213ade04, 0xbba57ebc, 0x1f0851f0, 0xf772fb01
.word 0xbf8ea17f, 0xe3699043, 0xe0c85947, 0xa2de504e, 0x46f0e9ff, 0x7a5a46d8, 0xab1c2ed5, 0x085e2ff3
.word 0xaade0659, 0x8a55db5f, 0x82302df1, 0xa52b1ef6, 0x1f99010c, 0x48b8821b, 0xf7437497, 0x1c4c6313
.word 0x6312b1d9, 0x932eac2b, 0xc98e4a7f, 0xa4ef3142, 0x8e88162a, 0xe87622bb, 0x314266fd, 0xa66f460a
.word 0x26d883fa, 0xdadadae3, 0x7910aab6, 0x362f55d2, 0x36d8c03f, 0x4ea08dbd, 0xd07ad6cf, 0xe1ccc6e9
.word 0x4986af3e, 0x541c72da, 0x77615ea1, 0x7b5a372b, 0x2a3ad824, 0xb4653a7c, 0x42dfd845, 0x5fd0082e
.word 0x8ac50f4d, 0x7eb38736, 0x74a92824, 0x398f1e8c, 0xf6514d4e, 0xa69a899d, 0xd59053fd, 0x4047ea31
.word 0xd2bbb09d, 0x2ba68867, 0xc0146e7e, 0x17e6a4f0, 0x54904f02, 0x75610402, 0xea70a623, 0x26effb71
.word 0xc99317bb, 0x90fc032e, 0xad631e8b, 0x2022ae50, 0xe5777fc8, 0xfda7f20a, 0xb8fb1730, 0x798e3c71
.word 0xa1e7bd4b, 0xb4f71a1e, 0xeecf09bf, 0x75994001, 0x40722137, 0x99046e52, 0x722922b3, 0xd5659996
.word 0xcd0f461f, 0xefc86cf2, 0x348dd5bf, 0x0f0a8283, 0xa3c78234, 0x47335aac, 0x865e2ab4, 0xab0a44a1
.word 0xbca6c348, 0x88b3f4e9, 0xd2eca293, 0xabb263b3, 0x2f42c1ae, 0xd42f3315, 0x188a4620, 0x8482a732
.word 0x53bcca67, 0x808064d4, 0x9828c613, 0x6dd74140, 0x92e48569, 0xf03080d0, 0x6d7227ad, 0x0e8291b3
.word 0x823073d2, 0xdbf6ba1a, 0x81f3b9c5, 0x657c7eb4, 0x9e74025e, 0x668bba39, 0xca1cbff2, 0x7ffc91ef
.word 0x7d187913, 0x0f04d21f, 0x3df759d3, 0x4e012c5f, 0xd4378cb3, 0x051d7756, 0xba994643, 0x79fdc029
.word 0xb93bc903, 0x61239894, 0xf92df789, 0x42a7401a, 0x0b4a1d30, 0x042a00dd, 0x67b9c0e0, 0xa479364f
.word 0x3eac41e0, 0x20a6c866, 0x1bb146c3, 0x788398c3, 0x76a7cd8c, 0x8afcfa1d, 0x6162a37d, 0x5fa7ec81
.word 0xd18c50f5, 0x6cf3b9b6, 0x574e7b11, 0xf0ed1755, 0x35fefd21, 0x67292981, 0x2b92ea44, 0x5e91272c
.word 0x9b465848, 0x401a9a8c, 0x0def4870, 0xcfc96597, 0xa385fbc2, 0xa34c0bbd, 0xec1aa4bc, 0x0c49bd4d
.word 0x0a1214f6, 0x057dea36, 0x271320aa, 0xdc387245, 0x56f04380, 0x421715fa, 0x8afbd474, 0xfa7092e3
.word 0xa6e49947, 0x04995235, 0x99f1f1a6, 0xd840c7e3, 0xffdfd114, 0x1e515293, 0x2f76ac44, 0xc6f4df87
.word 0x41ef4baa, 0x11da2c88, 0xcdeb46b7, 0x863103fb, 0xe4ce8877, 0x4e15e54b, 0x31fcfe2c, 0xc45f227c
.word 0x58437c0a, 0x778e6a45, 0x8f69321a, 0x346af064, 0x9f114503, 0x7ee6e8fa, 0xad85841b, 0xab071ed6
.word 0x13ca3716, 0x808573f7, 0xe389e5c6, 0xab102ef7, 0x307f302c, 0x7da8aa7e, 0x4cf8459b, 0xf6cf8004
.word 0xdf3d9dae, 0x211e0940, 0x075a811d, 0x9547a8ea, 0xed557926, 0x3d7bf074, 0x001fb5b6, 0x2443eb55
.word 0x85ec3c34, 0x462083ea, 0x6fb9bebf, 0x123d738a, 0xa07bdcbe, 0x2a021e22, 0x2ec5cd4b, 0x982c57f9
.word 0xeb7a2455, 0x3f6f9a63, 0x7fa4ee07, 0x077b7904, 0xec438e1b, 0x0d3b7728, 0x87573748, 0x19ee2b7b
.word 0xd677a474, 0x2e4d6618, 0xfa5f2cf5, 0xb752bed0, 0xea5680e3, 0x8b3f05cb, 0x4674885d, 0x3aa1d93b
.word 0x143269b6, 0xe0e3dc2e, 0xe081f1a5, 0x2bd4efda, 0xf60e36e2, 0xc4c700b3, 0xef0157e5, 0x0cfebd8d
.word 0x4831171e, 0xee5c31ab, 0x73031250, 0x10e4bb08, 0xccf4521a, 0xaf64059f, 0x286f62f5, 0x5a915029
.word 0xe92edb7b, 0x9600b0a6, 0xf891c517, 0x781cee31
.section .region_1,"aw",@progbits;
region_1:
.word 0xec6b21f8, 0x6179b33c, 0x5ac365cf, 0xdb794db3, 0x64207fe5, 0xe785277f, 0x2ea6a9b8, 0x6cec7e12
.word 0x52cf6091, 0xa67a00a5, 0x8fecf233, 0x87dba388, 0x4691c91f, 0x4867b256, 0x4787dd79, 0xce2459fe
.word 0x0d80cd95, 0x43efe22d, 0x608c00fb, 0xc3f81489, 0x0fdb8fa9, 0xff352e71, 0xedf3631b, 0x7da47967
.word 0x8a4f43dc, 0xa491eee4, 0x5c4dc170, 0x23a203aa, 0x174e2a90, 0x8e6a12fc, 0x4f01c49a, 0xe1452306
.word 0x174f1fe5, 0x08c64bce, 0x03767184, 0xfa95da18, 0x7a655c35, 0x8fcc674d, 0x5bddf81e, 0x25bce133
.word 0x2a15c72b, 0xad0c3a8b, 0xce35b7d9, 0xd9196ea7, 0xd93f88f6, 0xf2ebfb0d, 0x0caa69ca, 0x694e69b5
.word 0x48b6a695, 0x59aecf6a, 0x9dbabb42, 0x1cd6081d, 0x2d691151, 0x93407ab3, 0x9c9df29b, 0x3d2c53e3
.word 0x279ceeb6, 0x06f765f0, 0x0a9a8eef, 0x0f6a2607, 0xb8526c45, 0x8f860532, 0x1c40c266, 0x39172ef2
.word 0xee64456a, 0x12525d98, 0xb6bbaae2, 0x1d749a29, 0x30e1c433, 0x3cdc1d28, 0x883923dc, 0xa09e748a
.word 0xe9d17c3a, 0xdc1267f3, 0x1187a11d, 0xd3464de0, 0xd20b2141, 0x8e0285aa, 0x86d6a4ac, 0xf285c70c
.word 0x1f3c01ad, 0xad911097, 0x74733508, 0xf2d1c0ce, 0x03a580f5, 0xfce03fa9, 0x70282f33, 0x9e09ebaa
.word 0x8705fe96, 0xbf0fd1e4, 0xaa7191eb, 0x343dde63, 0x0a530930, 0xa8039f32, 0x614949e9, 0x5ed877d0
.word 0x9290c376, 0x00f26a91, 0x8bc27b45, 0x16caa369, 0x95d6d475, 0x6b40e244, 0x94aff4dd, 0x49444412
.word 0x87130ff9, 0xd310ab0a, 0xb988fcfb, 0xbc9db421, 0x3d77c6c2, 0x17880a72, 0x8672807f, 0x025926e4
.word 0x6c3b5f45, 0x5467809e, 0xcc7976a2, 0x374b2aa5, 0x04cb0961, 0xcd4eedf6, 0x1cba9893, 0x461ce275
.word 0xe93db268, 0xeac03af6, 0x9a6ece78, 0xf86cdad8, 0xaeb0407e, 0xb5ae4e34, 0x8fcb63db, 0x15170667
.word 0x2bae161c, 0xb48ae049, 0x8fcc2ddb, 0x798cc2ff, 0x95f811c0, 0xfdb544ef, 0x9416e809, 0xa1451b6f
.word 0xe7d01b2e, 0x9ccc542c, 0x1442980e, 0x2c00ad20, 0x6cd99485, 0x7ba00323, 0x6f3ab80a, 0x04be8fd8
.word 0xa815c1a5, 0x8d5f1536, 0xdf42d190, 0xa235088d, 0x885a0f07, 0x7cb17861, 0x15b21e3e, 0xb70b3b50
.word 0xde6ced6f, 0x40a0d208, 0xf70024f2, 0xa00b8283, 0xdf3c66ec, 0x700a8029, 0xf3bca020, 0x54245e59
.word 0x916bf409, 0x3a7bb178, 0xa0242f07, 0x9577ae41, 0xf594b728, 0xd7fc9bea, 0xf7440653, 0xe0978744
.word 0x2edc498e, 0x993c32a4, 0xaf3a2107, 0x4463ab89, 0x41bf3392, 0x23305dab, 0xa7dd8194, 0xb84b3bab
.word 0x3adbcbd9, 0x90227925, 0x71a299bf, 0x0d7131fa, 0x7339f8c4, 0xc241136b, 0x96b4fb28, 0x7d303545
.word 0x999a7e93, 0xc569f794, 0x8929d508, 0x3ff63986, 0x9eb2a3dc, 0xe6cb3a97, 0x5b5ffe7a, 0xabda1833
.word 0xb55a72d3, 0xa4078f06, 0x8121f9d8, 0xdfb3c138, 0x43da9d13, 0x13d0f793, 0x6647e0dc, 0x61701f77
.word 0x6461b1e0, 0xd27adf67, 0x71d56cbb, 0x773d825b, 0xb543b4c9, 0xb48d27de, 0x6c64891c, 0x57f342ee
.word 0x7adce97d, 0x50e318ed, 0xb09e1e34, 0xa461d8c2, 0x0015535b, 0x883d7246, 0xb21913cf, 0x37ff9834
.word 0x9d4bfda0, 0xb7959e5c, 0x1f5ea1d9, 0x86b5a024, 0x66cce5d2, 0xf958c70d, 0x452aca21, 0x589f43b1
.word 0x75351743, 0x6d86a127, 0x2889b3df, 0x0b81b4ae, 0x17c6b06a, 0x90cc5816, 0xf2b6267f, 0x465e6906
.word 0x2c28c114, 0x21d33c44, 0x94a8da2e, 0x41355ac1, 0x5ba728ea, 0xcf80e436, 0x12dbdf13, 0xb758e347
.word 0x90851f79, 0x33c3f719, 0x891b5f03, 0xed8b1af5, 0x7cb8fa3a, 0x7ff6e160, 0x9af323ae, 0x9d93380d
.word 0xe64db5fa, 0x886f43e3, 0xc1c6a823, 0x38b12981, 0x9dd453c2, 0x0c2be07d, 0x761917cb, 0xff03fdd7
.word 0xbdade78e, 0x3ec7bf27, 0xe42432f7, 0x857c01aa, 0xed331133, 0x5077a9b9, 0xba0d4200, 0x12f0305e
.word 0x00cef275, 0x10a9f10f, 0x0772ae17, 0xa414bc8f, 0x4abfeb75, 0x8474772f, 0x5ebbf763, 0x92eeec2a
.word 0x1802a9c4, 0x3f425e28, 0x1d2b97f8, 0xd6e1f0f3, 0x278d4782, 0x2d4f7e3f, 0xd23749c0, 0x52e0e9fd
.word 0xaa237653, 0x2ca84ae1, 0xa9b721c6, 0x1f82d4d8, 0xce1d70a5, 0xe9ddfce8, 0x1b0a42e7, 0x3d1ef2cb
.word 0x75ec83d1, 0x252eb6f1, 0xd99bcc7f, 0xab0f3990, 0x4313c377, 0xc2d10531, 0x9ec238a5, 0xdd1743fe
.word 0x07451b57, 0x08a490c6, 0x3fd43b56, 0x0ce09707, 0xb3a4b7de, 0x1bf30316, 0xa4184e89, 0x46cc378d
.word 0x3f51112a, 0xdc2546e2, 0xfdedf10c, 0x74c8dd93, 0x6654ea52, 0x37353d1e, 0x356e4b3a, 0x9703cc2e
.word 0x5d85635f, 0xd1e9ee46, 0x8be633df, 0x9b1b6925, 0x94d8c070, 0x66ed0212, 0x9a7e2892, 0x4d9e4fdd
.word 0x92ae65cf, 0xfa8934e6, 0x32f3e68d, 0xda54aa7b, 0xf46c55e6, 0x54837c43, 0x9183aa00, 0xf5ff10ea
.word 0x821895c0, 0x013dad27, 0x4d27977f, 0x2855028f, 0x2f5ffe64, 0xee7f54d5, 0xa69bd379, 0x993406f6
.word 0x1afad850, 0x9f3297eb, 0xd4c9b424, 0x2802b807, 0x4e68fbab, 0x17694a7f, 0x62e1f9f9, 0xed083ec4
.word 0xbc041b2d, 0x7683382d, 0x60502ab1, 0x7f4470f4, 0xc878491a, 0xde64bb20, 0xca39d2a9, 0xd66eca74
.word 0xdf2aa0e7, 0x126e2204, 0x72f92470, 0x7f68fb1c, 0x18a152ea, 0x10263d16, 0x67144606, 0x7dc06e68
.word 0x747127c8, 0x8398f958, 0x5120888e, 0x32f937f3, 0x9269f225, 0x5ae64ff8, 0x2a591ac0, 0x658f4c0d
.word 0x8aa2b01c, 0x5adf5a02, 0xea17dd23, 0xe619f5d2, 0x9e77a3f5, 0x83501278, 0xce00610a, 0x4dccf240
.word 0xe64aa460, 0x70eb43eb, 0x47636802, 0x260bd91c, 0xcd88af60, 0xef7328bb, 0x6f5db31a, 0x3fa3ae76
.word 0x137360d2, 0xe7c13806, 0x0d9d9e44, 0x16ac6a59, 0xec754798, 0xe70e4cc6, 0x69bd79c8, 0xe3731bb9
.word 0xf120ea99, 0x52971125, 0xad6b87b8, 0x29f8f849, 0x7e73d522, 0xfaa11a9d, 0x6eed570b, 0x148b11c9
.word 0xddb79381, 0xca91fee8, 0x7df9709b, 0x50ad8b3f, 0x4f5c1ee2, 0x224ebba5, 0x68e1e12a, 0x2087bb92
.word 0x23cfdc7b, 0x6b9b0406, 0xdd80b771, 0x25c5ca13, 0x660eee61, 0xc5429f4c, 0x9f9c704e, 0x6202cf9a
.word 0x12d7fd7a, 0x95b6e5a5, 0x5869ac35, 0x8b097ce9, 0xf8954b2e, 0xbf59ed29, 0x99288c76, 0x3f53364a
.word 0xce3990cf, 0x20a48c3a, 0x7428a0eb, 0xeaba161b, 0x6a788556, 0x4aebc2d9, 0x93c31350, 0x590b8897
.word 0x3af728d9, 0x8955a9ea, 0xa6673c35, 0xdca73abd, 0xe1a26c66, 0xa8f5cde3, 0x83865d8a, 0x6785064b
.word 0x58d20e4b, 0x66f08ef9, 0x6434a2d6, 0xc63a6fcf, 0x4ee11ac2, 0x58a94a43, 0x5c1233c8, 0xb27c57b2
.word 0xd3da28a0, 0xd4a0bd80, 0xa4353eaf, 0x1ac79425, 0xf6a223be, 0x77ca416b, 0xa5e2abab, 0x37e6999b
.word 0x122bb499, 0xdf856a1e, 0xa922285a, 0x6f41c334, 0x3a75f878, 0xc8f78b92, 0x3b7eeef2, 0x2bb04502
.word 0x48fa6e1e, 0xb980d207, 0x0cc336ad, 0x5b0ad7de, 0x4f0f41ac, 0x2112a08d, 0x53b2d3a2, 0xa4a4240a
.word 0xd9e201ec, 0x5eb3f518, 0xa408b995, 0x805a5bdb, 0xb07dc52f, 0xae61b908, 0xd94a5319, 0x7ca0d433
.word 0xfeb69b24, 0xfa40295b, 0x77fd8bab, 0x130e9fda, 0xb8099f1d, 0x4e328c50, 0x3c3f2aa1, 0xace21c51
.word 0x56fc1e5c, 0xc132c11e, 0x006ddda2, 0xd811a7da, 0x4593a66a, 0xed980d10, 0xbb350290, 0xba6bcefb
.word 0x80bed405, 0xf5e49e22, 0x1bb395d8, 0x20d38a27
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
                  add x16, x20, zero
                  csrr x11, 0x300 # MSTATUS
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 31
                  bne x11, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x11, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x11, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x11, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x11, x12, ecall_handler
                  li x12, 0x1
                  beq x11, x12, instr_fault_handler
                  li x12, 0x5
                  beq x11, x12, load_fault_handler
                  li x12, 0x7
                  beq x11, x12, store_fault_handler
                  li x12, 0xc
                  beq x11, x12, pt_fault_handler
                  li x12, 0xd
                  beq x11, x12, pt_fault_handler
                  li x12, 0xf
                  beq x11, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x20, x16, zero
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
                  add x20, x16, zero
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
                  add x20, x16, zero
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
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x20, x16, zero
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
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x20, x16, zero
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
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x20, x16, zero
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
