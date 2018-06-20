.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
read:
  li $v0, 4
  la $a0, _prompt
  syscall
  li $v0, 5
  syscall
  jr $ra
  
write:
  li $v0, 1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  move $v0, $0
  jr $ra

process:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for x
  subu $sp, $sp, 4		#alloc -8($fp) for temp1
  li $t1, 3
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -12($fp) for y
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -16($fp) for temp8
  li $t3, 11
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -20($fp) for temp9
  li $t4, 3
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -24($fp) for temp6
  mul $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc -28($fp) for temp7
  li $t6, 2
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -32($fp) for temp4
  sub $t6, $t4, $t5
  subu $sp, $sp, 4		#alloc -36($fp) for temp5
  li $t8, 5
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -40($fp) for temp3
  add $t8, $t6, $t7
  move $t1, $t8
  subu $sp, $sp, 4		#alloc -44($fp) for temp2
  move $t9, $t1
  subu $sp, $sp, 4		#alloc -48($fp) for temp30
  move $s0, $a0
  subu $sp, $sp, 4		#alloc -52($fp) for temp31
  li $s2, 321
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -56($fp) for temp28
  mul $s2, $s0, $s1
  subu $sp, $sp, 4		#alloc -60($fp) for temp29
  li $s4, 2
  move $s3, $s4
  subu $sp, $sp, 4		#alloc -64($fp) for temp26
  mul $s4, $s2, $s3
  subu $sp, $sp, 4		#alloc -68($fp) for temp32
  move $s5, $a0
  subu $sp, $sp, 4		#alloc -72($fp) for temp33
  move $s6, $t1
  subu $sp, $sp, 4		#alloc -76($fp) for temp27
  mul $s7, $s5, $s6
  subu $sp, $sp, 4		#alloc -80($fp) for temp24
  #spill 0
  sw $t0, -8($fp)		#spill
  add $t0, $s4, $s7
  subu $sp, $sp, 4		#alloc -84($fp) for temp25
  #spill 1
  sw $t1, -12($fp)		#spill
  move $t1, $a0
  subu $sp, $sp, 4		#alloc -88($fp) for temp22
  #spill 2
  sw $t2, -16($fp)		#spill
  sub $t2, $t0, $t1
  subu $sp, $sp, 4		#alloc -92($fp) for temp34
  #spill 3
  sw $t3, -20($fp)		#spill
  #spill 4
  sw $t4, -24($fp)		#spill
  lw $t4, -12($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -96($fp) for temp35
  #spill 5
  sw $t5, -28($fp)		#spill
  move $t5, $a0
  subu $sp, $sp, 4		#alloc -100($fp) for temp23
  #spill 6
  sw $t6, -32($fp)		#spill
  mul $t6, $t3, $t5
  subu $sp, $sp, 4		#alloc -104($fp) for temp20
  #spill 7
  sw $t7, -36($fp)		#spill
  add $t7, $t2, $t6
  subu $sp, $sp, 4		#alloc -108($fp) for temp36
  #spill 8
  sw $t8, -40($fp)		#spill
  move $t8, $t4
  subu $sp, $sp, 4		#alloc -112($fp) for temp37
  #spill 9
  sw $t9, -44($fp)		#spill
  move $t9, $t4
  subu $sp, $sp, 4		#alloc -116($fp) for temp21
  #spill 0
  sw $t0, -80($fp)		#spill
  mul $t0, $t8, $t9
  subu $sp, $sp, 4		#alloc -120($fp) for temp18
  #spill 1
  sw $t1, -84($fp)		#spill
  add $t1, $t7, $t0
  subu $sp, $sp, 4		#alloc -124($fp) for temp19
  #spill 2
  sw $t2, -88($fp)		#spill
  move $t2, $a0
  subu $sp, $sp, 4		#alloc -128($fp) for temp16
  #spill 3
  sw $t3, -92($fp)		#spill
  add $t3, $t1, $t2
  subu $sp, $sp, 4		#alloc -132($fp) for temp17
  #spill 4
  sw $t4, -12($fp)		#spill
  move $t4, $a0
  subu $sp, $sp, 4		#alloc -136($fp) for temp14
  #spill 5
  sw $t5, -96($fp)		#spill
  add $t5, $t3, $t4
  subu $sp, $sp, 4		#alloc -140($fp) for temp15
  #spill 6
  sw $t6, -100($fp)		#spill
  #spill 7
  sw $t7, -104($fp)		#spill
  li $t7, 23
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -144($fp) for temp12
  sub $t7, $t5, $t6
  subu $sp, $sp, 4		#alloc -148($fp) for temp13
  #spill 8
  sw $t8, -108($fp)		#spill
  #spill 9
  sw $t9, -112($fp)		#spill
  li $t9, 45
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -152($fp) for temp11
  add $t9, $t7, $t8
  #spill 0
  sw $t0, -116($fp)		#spill
  lw $t0, -12($fp)
  move $t0, $t9
  subu $sp, $sp, 4		#alloc -156($fp) for temp10
  #spill 1
  sw $t1, -120($fp)		#spill
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -160($fp) for temp52
  #spill 2
  sw $t2, -124($fp)		#spill
  move $t2, $t0
  subu $sp, $sp, 4		#alloc -164($fp) for temp53
  #spill 3
  sw $t3, -128($fp)		#spill
  #spill 4
  sw $t4, -132($fp)		#spill
  li $t4, 3
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -168($fp) for temp50
  div $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc -172($fp) for temp54
  #spill 5
  sw $t5, -136($fp)		#spill
  #spill 6
  sw $t6, -140($fp)		#spill
  li $t6, 14
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -176($fp) for temp55
  #spill 7
  sw $t7, -144($fp)		#spill
  li $t7, 24
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -180($fp) for temp51
  mul $t7, $t5, $t6
  subu $sp, $sp, 4		#alloc -184($fp) for temp48
  #spill 8
  sw $t8, -148($fp)		#spill
  add $t8, $t4, $t7
  subu $sp, $sp, 4		#alloc -188($fp) for temp58
  #spill 9
  sw $t9, -152($fp)		#spill
  move $t9, $a0
  subu $sp, $sp, 4		#alloc -192($fp) for temp59
  #spill 0
  sw $t0, -12($fp)		#spill
  #spill 1
  sw $t1, -156($fp)		#spill
  li $t1, 12
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -196($fp) for temp56
  mul $t1, $t9, $t0
  subu $sp, $sp, 4		#alloc -200($fp) for temp57
  #spill 2
  sw $t2, -160($fp)		#spill
  #spill 3
  sw $t3, -164($fp)		#spill
  li $t3, 4
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -204($fp) for temp49
  div $t3, $t1, $t2
  subu $sp, $sp, 4		#alloc -208($fp) for temp46
  #spill 4
  sw $t4, -168($fp)		#spill
  sub $t4, $t8, $t3
  subu $sp, $sp, 4		#alloc -212($fp) for temp60
  #spill 5
  sw $t5, -172($fp)		#spill
  #spill 6
  sw $t6, -176($fp)		#spill
  li $t6, 20
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -216($fp) for temp61
  #spill 7
  sw $t7, -180($fp)		#spill
  li $t7, 3
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -220($fp) for temp47
  mul $t7, $t5, $t6
  subu $sp, $sp, 4		#alloc -224($fp) for temp44
  #spill 8
  sw $t8, -184($fp)		#spill
  sub $t8, $t4, $t7
  subu $sp, $sp, 4		#alloc -228($fp) for temp64
  #spill 9
  sw $t9, -188($fp)		#spill
  #spill 0
  sw $t0, -192($fp)		#spill
  lw $t0, -12($fp)
  move $t9, $t0
  subu $sp, $sp, 4		#alloc -232($fp) for temp65
  #spill 1
  sw $t1, -196($fp)		#spill
  #spill 2
  sw $t2, -200($fp)		#spill
  li $t2, 12
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -236($fp) for temp62
  div $t2, $t9, $t1
  subu $sp, $sp, 4		#alloc -240($fp) for temp63
  #spill 3
  sw $t3, -204($fp)		#spill
  #spill 4
  sw $t4, -208($fp)		#spill
  li $t4, 24
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -244($fp) for temp45
  mul $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc -248($fp) for temp42
  #spill 5
  sw $t5, -212($fp)		#spill
  add $t5, $t8, $t4
  subu $sp, $sp, 4		#alloc -252($fp) for temp66
  #spill 6
  sw $t6, -216($fp)		#spill
  #spill 7
  sw $t7, -220($fp)		#spill
  li $t7, 12
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -256($fp) for temp67
  #spill 8
  sw $t8, -224($fp)		#spill
  li $t8, 3
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -260($fp) for temp43
  mul $t8, $t6, $t7
  subu $sp, $sp, 4		#alloc -264($fp) for temp40
  #spill 9
  sw $t9, -228($fp)		#spill
  add $t9, $t5, $t8
  subu $sp, $sp, 4		#alloc -268($fp) for temp68
  #spill 0
  sw $t0, -12($fp)		#spill
  #spill 1
  sw $t1, -232($fp)		#spill
  li $t1, 3
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -272($fp) for temp69
  #spill 2
  sw $t2, -236($fp)		#spill
  li $t2, 2
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -276($fp) for temp41
  div $t2, $t0, $t1
  subu $sp, $sp, 4		#alloc -280($fp) for temp39
  #spill 3
  sw $t3, -240($fp)		#spill
  add $t3, $t9, $t2
  #spill 4
  sw $t4, -244($fp)		#spill
  lw $t4, -12($fp)
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -284($fp) for temp38
  #spill 5
  sw $t5, -248($fp)		#spill
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -288($fp) for temp74
  #spill 6
  sw $t6, -252($fp)		#spill
  move $t6, $a0
  subu $sp, $sp, 4		#alloc -292($fp) for temp76
  #spill 7
  sw $t7, -256($fp)		#spill
  #spill 8
  sw $t8, -260($fp)		#spill
  li $t8, 4
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -296($fp) for temp77
  #spill 9
  sw $t9, -264($fp)		#spill
  li $t9, 6
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -300($fp) for temp75
  mul $t9, $t7, $t8
  subu $sp, $sp, 4		#alloc -304($fp) for temp72
  #spill 0
  sw $t0, -268($fp)		#spill
  add $t0, $t6, $t9
  subu $sp, $sp, 4		#alloc -308($fp) for temp78
  #spill 1
  sw $t1, -272($fp)		#spill
  #spill 2
  sw $t2, -276($fp)		#spill
  li $t2, 3
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -312($fp) for temp79
  #spill 3
  sw $t3, -280($fp)		#spill
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -316($fp) for temp73
  div $t3, $t1, $t2
  subu $sp, $sp, 4		#alloc -320($fp) for temp71
  #spill 4
  sw $t4, -12($fp)		#spill
  add $t4, $t0, $t3
  #spill 5
  sw $t5, -284($fp)		#spill
  lw $t5, -12($fp)
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -324($fp) for temp70
  #spill 6
  sw $t6, -288($fp)		#spill
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -328($fp) for temp80
  #spill 7
  sw $t7, -292($fp)		#spill
  move $t7, $t5
  move $v0, $t7
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra

main:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for temp86
  li $t1, 5
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -8($fp) for temp87
  li $t2, 2
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -12($fp) for temp84
  div $t2, $t0, $t1
  subu $sp, $sp, 4		#alloc -16($fp) for temp85
  li $t4, 14
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -20($fp) for temp82
  add $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc -24($fp) for temp83
  li $t6, 3
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -28($fp) for temp81
  sub $t6, $t4, $t5
  subu $sp, $sp, 4		#alloc -32($fp) for a
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -36($fp) for temp93
  li $t9, 7
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -40($fp) for temp94
  li $s0, 5
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -44($fp) for temp91
  mul $s0, $t8, $t9
  subu $sp, $sp, 4		#alloc -48($fp) for temp92
  li $s2, 2
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -52($fp) for temp89
  div $s2, $s0, $s1
  subu $sp, $sp, 4		#alloc -56($fp) for temp90
  li $s4, 3
  move $s3, $s4
  subu $sp, $sp, 4		#alloc -60($fp) for temp88
  add $s4, $s2, $s3
  subu $sp, $sp, 4		#alloc -64($fp) for b
  move $s5, $s4
  subu $sp, $sp, 4		#alloc -68($fp) for temp100
  li $s7, 4
  move $s6, $s7
  subu $sp, $sp, 4		#alloc -72($fp) for temp101
  #spill 0
  sw $t0, -4($fp)		#spill
  li $t0, 5
  move $s7, $t0
  subu $sp, $sp, 4		#alloc -76($fp) for temp98
  add $t0, $s6, $s7
  subu $sp, $sp, 4		#alloc -80($fp) for temp99
  #spill 1
  sw $t1, -8($fp)		#spill
  #spill 2
  sw $t2, -12($fp)		#spill
  li $t2, 6
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -84($fp) for temp96
  add $t2, $t0, $t1
  subu $sp, $sp, 4		#alloc -88($fp) for temp102
  #spill 3
  sw $t3, -16($fp)		#spill
  #spill 4
  sw $t4, -20($fp)		#spill
  li $t4, 1
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -92($fp) for temp103
  #spill 5
  sw $t5, -24($fp)		#spill
  li $t5, 2
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -96($fp) for temp97
  div $t5, $t3, $t4
  subu $sp, $sp, 4		#alloc -100($fp) for temp95
  #spill 6
  sw $t6, -28($fp)		#spill
  sub $t6, $t2, $t5
  subu $sp, $sp, 4		#alloc -104($fp) for c
  #spill 7
  sw $t7, -32($fp)		#spill
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -108($fp) for temp107
  #spill 8
  sw $t8, -36($fp)		#spill
  #spill 9
  sw $t9, -40($fp)		#spill
  lw $t9, -32($fp)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -112($fp) for temp108
  #spill 0
  sw $t0, -76($fp)		#spill
  move $t0, $s5
  subu $sp, $sp, 4		#alloc -116($fp) for temp105
  #spill 1
  sw $t1, -80($fp)		#spill
  add $t1, $t8, $t0
  subu $sp, $sp, 4		#alloc -120($fp) for temp106
  #spill 2
  sw $t2, -84($fp)		#spill
  move $t2, $t7
  subu $sp, $sp, 4		#alloc -124($fp) for temp104
  #spill 3
  sw $t3, -88($fp)		#spill
  add $t3, $t1, $t2
  subu $sp, $sp, 4		#alloc -128($fp) for d
  #spill 4
  sw $t4, -92($fp)		#spill
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -132($fp) for temp112
  #spill 5
  sw $t5, -96($fp)		#spill
  move $t5, $t9
  subu $sp, $sp, 4		#alloc -136($fp) for temp113
  #spill 6
  sw $t6, -100($fp)		#spill
  move $t6, $s5
  subu $sp, $sp, 4		#alloc -140($fp) for temp110
  #spill 7
  sw $t7, -104($fp)		#spill
  mul $t7, $t5, $t6
  subu $sp, $sp, 4		#alloc -144($fp) for temp114
  #spill 8
  sw $t8, -108($fp)		#spill
  #spill 9
  sw $t9, -32($fp)		#spill
  lw $t9, -104($fp)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -148($fp) for temp115
  #spill 0
  sw $t0, -112($fp)		#spill
  #spill 1
  sw $t1, -116($fp)		#spill
  li $t1, 2
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -152($fp) for temp111
  div $t1, $t8, $t0
  subu $sp, $sp, 4		#alloc -156($fp) for temp109
  #spill 2
  sw $t2, -120($fp)		#spill
  add $t2, $t7, $t1
  subu $sp, $sp, 4		#alloc -160($fp) for e
  #spill 3
  sw $t3, -124($fp)		#spill
  move $t3, $t2
  subu $sp, $sp, 4		#alloc -164($fp) for temp119
  #spill 4
  sw $t4, -128($fp)		#spill
  #spill 5
  sw $t5, -132($fp)		#spill
  lw $t5, -32($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -168($fp) for temp120
  #spill 6
  sw $t6, -136($fp)		#spill
  move $t6, $s5
  subu $sp, $sp, 4		#alloc -172($fp) for temp117
  #spill 7
  sw $t7, -140($fp)		#spill
  sub $t7, $t4, $t6
  subu $sp, $sp, 4		#alloc -176($fp) for temp118
  #spill 8
  sw $t8, -144($fp)		#spill
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -180($fp) for temp116
  #spill 9
  sw $t9, -104($fp)		#spill
  sub $t9, $t7, $t8
  subu $sp, $sp, 4		#alloc -184($fp) for f
  #spill 0
  sw $t0, -148($fp)		#spill
  move $t0, $t9
  subu $sp, $sp, 4		#alloc -188($fp) for temp121
  #spill 1
  sw $t1, -152($fp)		#spill
  #spill 2
  sw $t2, -156($fp)		#spill
  li $t2, 42
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -192($fp) for g1
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -196($fp) for temp122
  #spill 3
  sw $t3, -160($fp)		#spill
  move $t3, $0
  subu $sp, $sp, 4		#alloc -200($fp) for i
  #spill 4
  sw $t4, -164($fp)		#spill
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -204($fp) for temp131
  #spill 5
  sw $t5, -32($fp)		#spill
  #spill 6
  sw $t6, -168($fp)		#spill
  lw $t6, -32($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -208($fp) for temp132
  #spill 7
  sw $t7, -172($fp)		#spill
  move $t7, $s5
  subu $sp, $sp, 4		#alloc -212($fp) for temp129
  #spill 8
  sw $t8, -176($fp)		#spill
  add $t8, $t5, $t7
  subu $sp, $sp, 4		#alloc -216($fp) for temp130
  #spill 9
  sw $t9, -180($fp)		#spill
  #spill 0
  sw $t0, -184($fp)		#spill
  lw $t0, -104($fp)
  move $t9, $t0
  subu $sp, $sp, 4		#alloc -220($fp) for temp127
  #spill 1
  sw $t1, -188($fp)		#spill
  add $t1, $t8, $t9
  subu $sp, $sp, 4		#alloc -224($fp) for temp133
  #spill 2
  sw $t2, -192($fp)		#spill
  #spill 3
  sw $t3, -196($fp)		#spill
  li $t3, 1000
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -228($fp) for temp134
  #spill 4
  sw $t4, -200($fp)		#spill
  li $t4, 2
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -232($fp) for temp128
  mul $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc -236($fp) for temp125
  #spill 5
  sw $t5, -204($fp)		#spill
  add $t5, $t1, $t4
  subu $sp, $sp, 4		#alloc -240($fp) for temp126
  #spill 6
  sw $t6, -32($fp)		#spill
  #spill 7
  sw $t7, -208($fp)		#spill
  lw $t7, -184($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -244($fp) for temp124
  #spill 8
  sw $t8, -212($fp)		#spill
  sub $t8, $t5, $t6
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -248($fp) for temp123
  #spill 9
  sw $t9, -216($fp)		#spill
  move $t9, $t7
  sw $t0, -104($fp)		#spill
  sw $t1, -220($fp)		#spill
  sw $t2, -224($fp)		#spill
  sw $t3, -228($fp)		#spill
  sw $t4, -232($fp)		#spill
  sw $t5, -236($fp)		#spill
  sw $t6, -240($fp)		#spill
  sw $t7, -184($fp)		#spill
  sw $t8, -244($fp)		#spill
  sw $t9, -248($fp)		#spill
  sw $s0, -44($fp)		#spill
  sw $s1, -48($fp)		#spill
  sw $s2, -52($fp)		#spill
  sw $s3, -56($fp)		#spill
  sw $s4, -60($fp)		#spill
  sw $s5, -64($fp)		#spill
  sw $s6, -68($fp)		#spill
  sw $s7, -72($fp)		#spill
label1:
  subu $sp, $sp, 4		#alloc -252($fp) for temp137
  lw $t1, -32($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -256($fp) for temp138
  lw $t3, -64($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -260($fp) for temp135
  add $t4, $t0, $t2
  subu $sp, $sp, 4		#alloc -264($fp) for temp136
  lw $t6, -184($fp)
  move $t5, $t6
  sw $t0, -252($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -256($fp)		#spill
  sw $t3, -64($fp)		#spill
  sw $t4, -260($fp)		#spill
  sw $t5, -264($fp)		#spill
  sw $t6, -184($fp)		#spill
  lw $t0, -260($fp)
  lw $t1, -264($fp)
  blt $t0, $t1, label2
  sw $t0, -260($fp)		#spill
  sw $t1, -264($fp)		#spill
  j label3
label2:
  subu $sp, $sp, 4		#alloc -268($fp) for temp147
  lw $t1, -192($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -272($fp) for temp149
  lw $t3, -200($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -276($fp) for temp150
  li $t5, 12
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -280($fp) for temp148
  mul $t5, $t2, $t4
  subu $sp, $sp, 4		#alloc -284($fp) for temp145
  add $t6, $t0, $t5
  subu $sp, $sp, 4		#alloc -288($fp) for temp146
  li $t8, 4
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -292($fp) for temp143
  add $t8, $t6, $t7
  subu $sp, $sp, 4		#alloc -296($fp) for temp144
  li $s0, 5
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -300($fp) for temp141
  add $s0, $t8, $t9
  subu $sp, $sp, 4		#alloc -304($fp) for temp151
  li $s2, 7
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -308($fp) for temp152
  li $s3, 3
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -312($fp) for temp142
  div $s3, $s1, $s2
  subu $sp, $sp, 4		#alloc -316($fp) for temp140
  add $s4, $s0, $s3
  move $t1, $s4
  subu $sp, $sp, 4		#alloc -320($fp) for temp139
  move $s5, $t1
  subu $sp, $sp, 4		#alloc -324($fp) for temp161
  lw $s7, -184($fp)
  move $s6, $s7
  move $a0, $s6
  sw $t0, -268($fp)		#spill
  sw $t1, -192($fp)		#spill
  sw $t2, -272($fp)		#spill
  sw $t3, -200($fp)		#spill
  sw $t4, -276($fp)		#spill
  sw $t5, -280($fp)		#spill
  sw $t6, -284($fp)		#spill
  sw $t7, -288($fp)		#spill
  sw $t8, -292($fp)		#spill
  sw $t9, -296($fp)		#spill
  sw $s0, -300($fp)		#spill
  sw $s1, -304($fp)		#spill
  sw $s2, -308($fp)		#spill
  sw $s3, -312($fp)		#spill
  sw $s4, -316($fp)		#spill
  sw $s5, -320($fp)		#spill
  sw $s6, -324($fp)		#spill
  sw $s7, -184($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal process
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -328($fp) for temp159
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -332($fp) for temp162
  li $t2, 2
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -336($fp) for temp163
  lw $t3, -32($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -340($fp) for temp160
  mul $t4, $t1, $t2
  subu $sp, $sp, 4		#alloc -344($fp) for temp157
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -348($fp) for temp158
  lw $t7, -184($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -352($fp) for temp155
  sub $t8, $t5, $t6
  subu $sp, $sp, 4		#alloc -356($fp) for temp164
  lw $s0, -104($fp)
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -360($fp) for temp165
  lw $s2, -128($fp)
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -364($fp) for temp156
  mul $s3, $t9, $s1
  subu $sp, $sp, 4		#alloc -368($fp) for temp154
  add $s4, $t8, $s3
  subu $sp, $sp, 4		#alloc -372($fp) for g
  move $s5, $s4
  subu $sp, $sp, 4		#alloc -376($fp) for temp153
  move $s6, $s5
  subu $sp, $sp, 4		#alloc -380($fp) for temp168
  #spill 0
  sw $t0, -328($fp)		#spill
  lw $t0, -200($fp)
  move $s7, $t0
  subu $sp, $sp, 4		#alloc -384($fp) for temp169
  #spill 1
  sw $t1, -332($fp)		#spill
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -388($fp) for temp167
  #spill 2
  sw $t2, -336($fp)		#spill
  add $t2, $s7, $t1
  move $t0, $t2
  subu $sp, $sp, 4		#alloc -392($fp) for temp166
  #spill 3
  sw $t3, -32($fp)		#spill
  move $t3, $t0
  subu $sp, $sp, 4		#alloc -396($fp) for temp172
  #spill 4
  sw $t4, -340($fp)		#spill
  move $t4, $t0
  subu $sp, $sp, 4		#alloc -400($fp) for temp173
  #spill 5
  sw $t5, -344($fp)		#spill
  move $t5, $t0
  subu $sp, $sp, 4		#alloc -404($fp) for temp171
  #spill 6
  sw $t6, -348($fp)		#spill
  add $t6, $t4, $t5
  move $t0, $t6
  subu $sp, $sp, 4		#alloc -408($fp) for temp170
  #spill 7
  sw $t7, -184($fp)		#spill
  move $t7, $t0
  subu $sp, $sp, 4		#alloc -412($fp) for temp176
  #spill 8
  sw $t8, -352($fp)		#spill
  move $t8, $t0
  subu $sp, $sp, 4		#alloc -416($fp) for temp177
  #spill 9
  sw $t9, -356($fp)		#spill
  move $t9, $t0
  subu $sp, $sp, 4		#alloc -420($fp) for temp175
  #spill 0
  sw $t0, -200($fp)		#spill
  add $t0, $t8, $t9
  #spill 1
  sw $t1, -384($fp)		#spill
  lw $t1, -200($fp)
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -424($fp) for temp174
  #spill 2
  sw $t2, -388($fp)		#spill
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -428($fp) for temp180
  #spill 3
  sw $t3, -392($fp)		#spill
  move $t3, $t1
  subu $sp, $sp, 4		#alloc -432($fp) for temp181
  #spill 4
  sw $t4, -396($fp)		#spill
  move $t4, $t1
  subu $sp, $sp, 4		#alloc -436($fp) for temp179
  #spill 5
  sw $t5, -400($fp)		#spill
  add $t5, $t3, $t4
  move $t1, $t5
  subu $sp, $sp, 4		#alloc -440($fp) for temp178
  #spill 6
  sw $t6, -404($fp)		#spill
  move $t6, $t1
  subu $sp, $sp, 4		#alloc -444($fp) for temp184
  #spill 7
  sw $t7, -408($fp)		#spill
  move $t7, $t1
  subu $sp, $sp, 4		#alloc -448($fp) for temp185
  #spill 8
  sw $t8, -412($fp)		#spill
  move $t8, $t1
  subu $sp, $sp, 4		#alloc -452($fp) for temp183
  #spill 9
  sw $t9, -416($fp)		#spill
  add $t9, $t7, $t8
  move $t1, $t9
  subu $sp, $sp, 4		#alloc -456($fp) for temp182
  #spill 0
  sw $t0, -420($fp)		#spill
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -460($fp) for temp188
  #spill 1
  sw $t1, -200($fp)		#spill
  #spill 2
  sw $t2, -424($fp)		#spill
  lw $t2, -200($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -464($fp) for temp189
  #spill 3
  sw $t3, -428($fp)		#spill
  #spill 4
  sw $t4, -432($fp)		#spill
  li $t4, 3
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -468($fp) for temp187
  add $t4, $t1, $t3
  subu $sp, $sp, 4		#alloc -472($fp) for h
  #spill 5
  sw $t5, -436($fp)		#spill
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -476($fp) for temp186
  #spill 6
  sw $t6, -440($fp)		#spill
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -480($fp) for temp192
  #spill 7
  sw $t7, -444($fp)		#spill
  move $t7, $t5
  subu $sp, $sp, 4		#alloc -484($fp) for temp193
  #spill 8
  sw $t8, -448($fp)		#spill
  #spill 9
  sw $t9, -452($fp)		#spill
  li $t9, 1
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -488($fp) for temp191
  sub $t9, $t7, $t8
  move $t5, $t9
  subu $sp, $sp, 4		#alloc -492($fp) for temp190
  #spill 0
  sw $t0, -456($fp)		#spill
  move $t0, $t5
  subu $sp, $sp, 4		#alloc -496($fp) for temp196
  #spill 1
  sw $t1, -460($fp)		#spill
  move $t1, $t5
  subu $sp, $sp, 4		#alloc -500($fp) for temp197
  #spill 2
  sw $t2, -200($fp)		#spill
  #spill 3
  sw $t3, -464($fp)		#spill
  li $t3, 3
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -504($fp) for temp195
  add $t3, $t1, $t2
  move $t5, $t3
  subu $sp, $sp, 4		#alloc -508($fp) for temp194
  #spill 4
  sw $t4, -468($fp)		#spill
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -512($fp) for temp200
  #spill 5
  sw $t5, -472($fp)		#spill
  #spill 6
  sw $t6, -476($fp)		#spill
  lw $t6, -472($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -516($fp) for temp202
  #spill 7
  sw $t7, -480($fp)		#spill
  #spill 8
  sw $t8, -484($fp)		#spill
  li $t8, 3
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -520($fp) for temp203
  #spill 9
  sw $t9, -488($fp)		#spill
  li $t9, 2
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -524($fp) for temp201
  mul $t9, $t7, $t8
  subu $sp, $sp, 4		#alloc -528($fp) for temp199
  #spill 0
  sw $t0, -492($fp)		#spill
  sub $t0, $t5, $t9
  move $t6, $t0
  subu $sp, $sp, 4		#alloc -532($fp) for temp198
  #spill 1
  sw $t1, -496($fp)		#spill
  move $t1, $t6
  subu $sp, $sp, 4		#alloc -536($fp) for temp206
  #spill 2
  sw $t2, -500($fp)		#spill
  #spill 3
  sw $t3, -504($fp)		#spill
  lw $t3, -32($fp)
  move $t2, $t3
  move $a0, $t2
  sw $t0, -528($fp)		#spill
  sw $t1, -532($fp)		#spill
  sw $t2, -536($fp)		#spill
  sw $t3, -32($fp)		#spill
  sw $t4, -508($fp)		#spill
  sw $t5, -512($fp)		#spill
  sw $t6, -472($fp)		#spill
  sw $t7, -516($fp)		#spill
  sw $t8, -520($fp)		#spill
  sw $t9, -524($fp)		#spill
  sw $s0, -104($fp)		#spill
  sw $s1, -360($fp)		#spill
  sw $s2, -128($fp)		#spill
  sw $s3, -364($fp)		#spill
  sw $s4, -368($fp)		#spill
  sw $s5, -372($fp)		#spill
  sw $s6, -376($fp)		#spill
  sw $s7, -380($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal process
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -540($fp) for temp204
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -544($fp) for temp212
  lw $t2, -32($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -548($fp) for temp213
  li $t4, 3
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -552($fp) for temp210
  add $t4, $t1, $t3
  subu $sp, $sp, 4		#alloc -556($fp) for temp211
  li $t6, 2
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -560($fp) for temp208
  sub $t6, $t4, $t5
  subu $sp, $sp, 4		#alloc -564($fp) for temp209
  li $t8, 1
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -568($fp) for temp207
  sub $t8, $t6, $t7
  move $a0, $t8
  sw $t0, -540($fp)		#spill
  sw $t1, -544($fp)		#spill
  sw $t2, -32($fp)		#spill
  sw $t3, -548($fp)		#spill
  sw $t4, -552($fp)		#spill
  sw $t5, -556($fp)		#spill
  sw $t6, -560($fp)		#spill
  sw $t7, -564($fp)		#spill
  sw $t8, -568($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal process
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -572($fp) for temp205
  move $t0, $v0
  sw $t0, -572($fp)		#spill
  lw $t0, -540($fp)
  lw $t1, -572($fp)
  beq $t0, $t1, label4
  sw $t0, -540($fp)		#spill
  sw $t1, -572($fp)		#spill
  j label5
label4:
  subu $sp, $sp, 4		#alloc -576($fp) for temp218
  lw $t1, -184($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -580($fp) for temp219
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -584($fp) for temp216
  sub $t3, $t0, $t2
  subu $sp, $sp, 4		#alloc -588($fp) for temp217
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -592($fp) for temp215
  add $t5, $t3, $t4
  move $t1, $t5
  subu $sp, $sp, 4		#alloc -596($fp) for temp214
  move $t6, $t1
  sw $t0, -576($fp)		#spill
  sw $t1, -184($fp)		#spill
  sw $t2, -580($fp)		#spill
  sw $t3, -584($fp)		#spill
  sw $t4, -588($fp)		#spill
  sw $t5, -592($fp)		#spill
  sw $t6, -596($fp)		#spill
label5:
  subu $sp, $sp, 4		#alloc -600($fp) for temp224
  lw $t1, -32($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -604($fp) for temp225
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -608($fp) for temp222
  add $t3, $t0, $t2
  subu $sp, $sp, 4		#alloc -612($fp) for temp223
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -616($fp) for temp221
  add $t5, $t3, $t4
  move $t1, $t5
  subu $sp, $sp, 4		#alloc -620($fp) for temp220
  move $t6, $t1
  sw $t0, -600($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -604($fp)		#spill
  sw $t3, -608($fp)		#spill
  sw $t4, -612($fp)		#spill
  sw $t5, -616($fp)		#spill
  sw $t6, -620($fp)		#spill
  j label1
label3:
  subu $sp, $sp, 4		#alloc -624($fp) for temp228
  lw $t1, -192($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -628($fp) for temp230
  li $t3, 3
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -632($fp) for temp231
  li $t4, 4
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -636($fp) for temp229
  mul $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc -640($fp) for temp227
  sub $t5, $t0, $t4
  lw $t6, -472($fp)
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -644($fp) for temp226
  move $t7, $t6
  sw $t0, -624($fp)		#spill
  sw $t1, -192($fp)		#spill
  sw $t2, -628($fp)		#spill
  sw $t3, -632($fp)		#spill
  sw $t4, -636($fp)		#spill
  sw $t5, -640($fp)		#spill
  sw $t6, -472($fp)		#spill
  sw $t7, -644($fp)		#spill
label6:
  subu $sp, $sp, 4		#alloc -648($fp) for temp232
  lw $t1, -472($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -652($fp) for temp233
  lw $t3, -192($fp)
  move $t2, $t3
  sw $t0, -648($fp)		#spill
  sw $t1, -472($fp)		#spill
  sw $t2, -652($fp)		#spill
  sw $t3, -192($fp)		#spill
  lw $t0, -648($fp)
  lw $t1, -652($fp)
  blt $t0, $t1, label7
  sw $t0, -648($fp)		#spill
  sw $t1, -652($fp)		#spill
  j label8
label7:
  subu $sp, $sp, 4		#alloc -656($fp) for temp240
  li $t1, 15
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -660($fp) for temp241
  li $t2, 4
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -664($fp) for temp238
  mul $t2, $t0, $t1
  subu $sp, $sp, 4		#alloc -668($fp) for temp239
  li $t4, 2
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -672($fp) for temp236
  sub $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc -676($fp) for temp237
  lw $t6, -32($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -680($fp) for temp235
  add $t7, $t4, $t5
  lw $t8, -184($fp)
  move $t8, $t7
  subu $sp, $sp, 4		#alloc -684($fp) for temp234
  move $t9, $t8
  subu $sp, $sp, 4		#alloc -688($fp) for temp244
  lw $s1, -192($fp)
  move $s0, $s1
  subu $sp, $sp, 4		#alloc -692($fp) for temp245
  li $s3, 12
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -696($fp) for temp243
  sub $s3, $s0, $s2
  lw $s4, -372($fp)
  move $s4, $s3
  subu $sp, $sp, 4		#alloc -700($fp) for temp242
  move $s5, $s4
  subu $sp, $sp, 4		#alloc -704($fp) for temp248
  lw $s7, -472($fp)
  move $s6, $s7
  subu $sp, $sp, 4		#alloc -708($fp) for temp249
  #spill 0
  sw $t0, -656($fp)		#spill
  #spill 1
  sw $t1, -660($fp)		#spill
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -712($fp) for temp247
  add $t1, $s6, $t0
  move $s7, $t1
  subu $sp, $sp, 4		#alloc -716($fp) for temp246
  #spill 2
  sw $t2, -664($fp)		#spill
  move $t2, $s7
  subu $sp, $sp, 4		#alloc -720($fp) for temp251
  #spill 3
  sw $t3, -668($fp)		#spill
  move $t3, $s1
  move $s4, $t3
  subu $sp, $sp, 4		#alloc -724($fp) for temp250
  #spill 4
  sw $t4, -672($fp)		#spill
  move $t4, $s4
  subu $sp, $sp, 4		#alloc -728($fp) for temp254
  #spill 5
  sw $t5, -676($fp)		#spill
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -732($fp) for temp255
  #spill 6
  sw $t6, -32($fp)		#spill
  #spill 7
  sw $t7, -680($fp)		#spill
  lw $t7, -64($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -736($fp) for temp253
  #spill 8
  sw $t8, -184($fp)		#spill
  add $t8, $t5, $t6
  #spill 9
  sw $t9, -684($fp)		#spill
  lw $t9, -200($fp)
  move $t9, $t8
  subu $sp, $sp, 4		#alloc -740($fp) for temp252
  #spill 0
  sw $t0, -708($fp)		#spill
  move $t0, $t9
  subu $sp, $sp, 4		#alloc -744($fp) for temp258
  #spill 1
  sw $t1, -712($fp)		#spill
  #spill 2
  sw $t2, -716($fp)		#spill
  lw $t2, -32($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -748($fp) for temp259
  #spill 3
  sw $t3, -720($fp)		#spill
  move $t3, $t7
  subu $sp, $sp, 4		#alloc -752($fp) for temp257
  #spill 4
  sw $t4, -724($fp)		#spill
  add $t4, $t1, $t3
  #spill 5
  sw $t5, -728($fp)		#spill
  lw $t5, -104($fp)
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -756($fp) for temp256
  #spill 6
  sw $t6, -732($fp)		#spill
  move $t6, $t5
  sw $t0, -740($fp)		#spill
  sw $t1, -744($fp)		#spill
  sw $t2, -32($fp)		#spill
  sw $t3, -748($fp)		#spill
  sw $t4, -752($fp)		#spill
  sw $t5, -104($fp)		#spill
  sw $t6, -756($fp)		#spill
  sw $t7, -64($fp)		#spill
  sw $t8, -736($fp)		#spill
  sw $t9, -200($fp)		#spill
  sw $s0, -688($fp)		#spill
  sw $s1, -192($fp)		#spill
  sw $s2, -692($fp)		#spill
  sw $s3, -696($fp)		#spill
  sw $s4, -372($fp)		#spill
  sw $s5, -700($fp)		#spill
  sw $s6, -704($fp)		#spill
  sw $s7, -472($fp)		#spill
  j label6
label8:
  subu $sp, $sp, 4		#alloc -760($fp) for temp261
  lw $t1, -184($fp)
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -764($fp) for temp264
  lw $t3, -32($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -768($fp) for temp265
  lw $t5, -64($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -772($fp) for temp263
  add $t6, $t2, $t4
  move $t3, $t6
  subu $sp, $sp, 4		#alloc -776($fp) for temp262
  move $t7, $t3
  subu $sp, $sp, 4		#alloc -780($fp) for temp268
  move $t8, $t3
  subu $sp, $sp, 4		#alloc -784($fp) for temp269
  move $t9, $t5
  subu $sp, $sp, 4		#alloc -788($fp) for temp267
  add $s0, $t8, $t9
  move $t5, $s0
  subu $sp, $sp, 4		#alloc -792($fp) for temp266
  move $s1, $t5
  subu $sp, $sp, 4		#alloc -796($fp) for temp272
  move $s2, $t3
  subu $sp, $sp, 4		#alloc -800($fp) for temp273
  move $s3, $t5
  subu $sp, $sp, 4		#alloc -804($fp) for temp271
  add $s4, $s2, $s3
  lw $s5, -104($fp)
  move $s5, $s4
  subu $sp, $sp, 4		#alloc -808($fp) for temp270
  move $s6, $s5
  subu $sp, $sp, 4		#alloc -812($fp) for temp276
  move $s7, $t3
  subu $sp, $sp, 4		#alloc -816($fp) for temp277
  #spill 0
  sw $t0, -760($fp)		#spill
  move $t0, $t5
  subu $sp, $sp, 4		#alloc -820($fp) for temp275
  #spill 1
  sw $t1, -184($fp)		#spill
  add $t1, $s7, $t0
  #spill 2
  sw $t2, -764($fp)		#spill
  lw $t2, -184($fp)
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -824($fp) for temp274
  #spill 3
  sw $t3, -32($fp)		#spill
  move $t3, $t2
  subu $sp, $sp, 4		#alloc -828($fp) for temp280
  #spill 4
  sw $t4, -768($fp)		#spill
  #spill 5
  sw $t5, -64($fp)		#spill
  lw $t5, -32($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -832($fp) for temp281
  #spill 6
  sw $t6, -772($fp)		#spill
  #spill 7
  sw $t7, -776($fp)		#spill
  lw $t7, -64($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -836($fp) for temp279
  #spill 8
  sw $t8, -780($fp)		#spill
  add $t8, $t4, $t6
  #spill 9
  sw $t9, -784($fp)		#spill
  lw $t9, -372($fp)
  move $t9, $t8
  subu $sp, $sp, 4		#alloc -840($fp) for temp278
  #spill 0
  sw $t0, -816($fp)		#spill
  move $t0, $t9
  subu $sp, $sp, 4		#alloc -844($fp) for temp286
  #spill 1
  sw $t1, -820($fp)		#spill
  move $t1, $s5
  subu $sp, $sp, 4		#alloc -848($fp) for temp287
  #spill 2
  sw $t2, -184($fp)		#spill
  #spill 3
  sw $t3, -824($fp)		#spill
  lw $t3, -184($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -852($fp) for temp284
  #spill 4
  sw $t4, -828($fp)		#spill
  add $t4, $t1, $t2
  subu $sp, $sp, 4		#alloc -856($fp) for temp285
  #spill 5
  sw $t5, -32($fp)		#spill
  move $t5, $t9
  subu $sp, $sp, 4		#alloc -860($fp) for temp283
  #spill 6
  sw $t6, -832($fp)		#spill
  add $t6, $t4, $t5
  move $a0, $t6
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -864($fp) for temp288
  #spill 7
  sw $t7, -64($fp)		#spill
  move $t7, $0
  move $v0, $t7
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
