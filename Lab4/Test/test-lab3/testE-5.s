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

qsort:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for array
  subu $sp, $sp, 4		#alloc -8($fp) for l
  subu $sp, $sp, 4		#alloc -12($fp) for r
  subu $sp, $sp, 4		#alloc -16($fp) for temp2
  move $t0, $a0
  subu $sp, $sp, 4		#alloc -20($fp) for temp3
  move $t1, $a1
  subu $sp, $sp, 4		#alloc -24($fp) for temp4
  li $t3, 4
  mul $t2, $t3, $t1
  subu $sp, $sp, 4		#alloc -28($fp) for temp5
  add $t3, $t0, $t2
  subu $sp, $sp, 4		#alloc -32($fp) for x
  lw $t5, 0($t3)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -36($fp) for temp6
  move $t5, $a1
  subu $sp, $sp, 4		#alloc -40($fp) for a
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -44($fp) for temp7
  move $t7, $a2
  subu $sp, $sp, 4		#alloc -48($fp) for b
  move $t8, $t7
  subu $sp, $sp, 4		#alloc -52($fp) for temp8
  move $t9, $t6
  subu $sp, $sp, 4		#alloc -56($fp) for temp9
  move $s0, $t8
  sw $t0, -16($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -24($fp)		#spill
  sw $t3, -28($fp)		#spill
  sw $t4, -32($fp)		#spill
  sw $t5, -36($fp)		#spill
  sw $t6, -40($fp)		#spill
  sw $t7, -44($fp)		#spill
  sw $t8, -48($fp)		#spill
  sw $t9, -52($fp)		#spill
  sw $s0, -56($fp)		#spill
  sw $a0, -4($fp)		#spill
  sw $a1, -8($fp)		#spill
  sw $a2, -12($fp)		#spill
  lw $t0, -52($fp)
  lw $t1, -56($fp)
  blt $t0, $t1, label1
  sw $t0, -52($fp)		#spill
  sw $t1, -56($fp)		#spill
  j label2
label1:
label3:
  subu $sp, $sp, 4		#alloc -60($fp) for temp10
  lw $t1, -40($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -64($fp) for temp11
  lw $t3, -48($fp)
  move $t2, $t3
  sw $t0, -60($fp)		#spill
  sw $t1, -40($fp)		#spill
  sw $t2, -64($fp)		#spill
  sw $t3, -48($fp)		#spill
  lw $t0, -60($fp)
  lw $t1, -64($fp)
  blt $t0, $t1, label4
  sw $t0, -60($fp)		#spill
  sw $t1, -64($fp)		#spill
  j label5
label4:
label6:
  subu $sp, $sp, 4		#alloc -68($fp) for temp12
  lw $t1, -40($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -72($fp) for temp13
  lw $t3, -48($fp)
  move $t2, $t3
  sw $t0, -68($fp)		#spill
  sw $t1, -40($fp)		#spill
  sw $t2, -72($fp)		#spill
  sw $t3, -48($fp)		#spill
  lw $t0, -68($fp)
  lw $t1, -72($fp)
  blt $t0, $t1, label9
  sw $t0, -68($fp)		#spill
  sw $t1, -72($fp)		#spill
  j label8
label9:
  subu $sp, $sp, 4		#alloc -76($fp) for temp16
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -80($fp) for temp17
  lw $t3, -48($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -84($fp) for temp18
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -88($fp) for temp19
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -92($fp) for temp15
  lw $t7, -32($fp)
  move $t6, $t7
  sw $t0, -76($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -80($fp)		#spill
  sw $t3, -48($fp)		#spill
  sw $t4, -84($fp)		#spill
  sw $t5, -88($fp)		#spill
  sw $t6, -92($fp)		#spill
  sw $t7, -32($fp)		#spill
  lw $t1, -88($fp)
  lw $t0, 0($t1)
  lw $t2, -92($fp)
  bgt $t0, $t2, label7
  sw $t1, -88($fp)		#spill
  sw $t2, -92($fp)		#spill
  j label8
label7:
  subu $sp, $sp, 4		#alloc -96($fp) for temp22
  lw $t1, -48($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -100($fp) for temp23
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -104($fp) for temp21
  sub $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -108($fp) for temp20
  move $t4, $t1
  sw $t0, -96($fp)		#spill
  sw $t1, -48($fp)		#spill
  sw $t2, -100($fp)		#spill
  sw $t3, -104($fp)		#spill
  sw $t4, -108($fp)		#spill
  j label6
label8:
  subu $sp, $sp, 4		#alloc -112($fp) for temp24
  lw $t1, -40($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -116($fp) for temp25
  lw $t3, -48($fp)
  move $t2, $t3
  sw $t0, -112($fp)		#spill
  sw $t1, -40($fp)		#spill
  sw $t2, -116($fp)		#spill
  sw $t3, -48($fp)		#spill
  lw $t0, -112($fp)
  lw $t1, -116($fp)
  blt $t0, $t1, label10
  sw $t0, -112($fp)		#spill
  sw $t1, -116($fp)		#spill
  j label11
label10:
  subu $sp, $sp, 4		#alloc -120($fp) for temp28
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -124($fp) for temp29
  lw $t3, -40($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -128($fp) for temp30
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -132($fp) for temp31
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -136($fp) for temp33
  move $t6, $t1
  subu $sp, $sp, 4		#alloc -140($fp) for temp34
  lw $t8, -48($fp)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -144($fp) for temp35
  li $s0, 4
  mul $t9, $s0, $t7
  subu $sp, $sp, 4		#alloc -148($fp) for temp36
  add $s0, $t6, $t9
  lw $s1, 0($s0)
  sw $s1, 0($t5)
  subu $sp, $sp, 4		#alloc -152($fp) for temp26
  lw $s3, 0($t5)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -156($fp) for temp39
  move $s3, $t3
  subu $sp, $sp, 4		#alloc -160($fp) for temp40
  li $s5, 1
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -164($fp) for temp38
  add $s5, $s3, $s4
  move $t3, $s5
  subu $sp, $sp, 4		#alloc -168($fp) for temp37
  move $s6, $t3
  sw $t0, -120($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -124($fp)		#spill
  sw $t3, -40($fp)		#spill
  sw $t4, -128($fp)		#spill
  sw $t5, -132($fp)		#spill
  sw $t6, -136($fp)		#spill
  sw $t7, -140($fp)		#spill
  sw $t8, -48($fp)		#spill
  sw $t9, -144($fp)		#spill
  sw $s0, -148($fp)		#spill
  sw $s2, -152($fp)		#spill
  sw $s3, -156($fp)		#spill
  sw $s4, -160($fp)		#spill
  sw $s5, -164($fp)		#spill
  sw $s6, -168($fp)		#spill
label11:
label12:
  subu $sp, $sp, 4		#alloc -172($fp) for temp41
  lw $t1, -40($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -176($fp) for temp42
  lw $t3, -48($fp)
  move $t2, $t3
  sw $t0, -172($fp)		#spill
  sw $t1, -40($fp)		#spill
  sw $t2, -176($fp)		#spill
  sw $t3, -48($fp)		#spill
  lw $t0, -172($fp)
  lw $t1, -176($fp)
  blt $t0, $t1, label15
  sw $t0, -172($fp)		#spill
  sw $t1, -176($fp)		#spill
  j label14
label15:
  subu $sp, $sp, 4		#alloc -180($fp) for temp45
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -184($fp) for temp46
  lw $t3, -40($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -188($fp) for temp47
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -192($fp) for temp48
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -196($fp) for temp44
  lw $t7, -32($fp)
  move $t6, $t7
  sw $t0, -180($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -184($fp)		#spill
  sw $t3, -40($fp)		#spill
  sw $t4, -188($fp)		#spill
  sw $t5, -192($fp)		#spill
  sw $t6, -196($fp)		#spill
  sw $t7, -32($fp)		#spill
  lw $t1, -192($fp)
  lw $t0, 0($t1)
  lw $t2, -196($fp)
  blt $t0, $t2, label13
  sw $t1, -192($fp)		#spill
  sw $t2, -196($fp)		#spill
  j label14
label13:
  subu $sp, $sp, 4		#alloc -200($fp) for temp51
  lw $t1, -40($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -204($fp) for temp52
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -208($fp) for temp50
  add $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -212($fp) for temp49
  move $t4, $t1
  sw $t0, -200($fp)		#spill
  sw $t1, -40($fp)		#spill
  sw $t2, -204($fp)		#spill
  sw $t3, -208($fp)		#spill
  sw $t4, -212($fp)		#spill
  j label12
label14:
  subu $sp, $sp, 4		#alloc -216($fp) for temp53
  lw $t1, -40($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -220($fp) for temp54
  lw $t3, -48($fp)
  move $t2, $t3
  sw $t0, -216($fp)		#spill
  sw $t1, -40($fp)		#spill
  sw $t2, -220($fp)		#spill
  sw $t3, -48($fp)		#spill
  lw $t0, -216($fp)
  lw $t1, -220($fp)
  blt $t0, $t1, label16
  sw $t0, -216($fp)		#spill
  sw $t1, -220($fp)		#spill
  j label17
label16:
  subu $sp, $sp, 4		#alloc -224($fp) for temp57
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -228($fp) for temp58
  lw $t3, -48($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -232($fp) for temp59
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -236($fp) for temp60
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -240($fp) for temp62
  move $t6, $t1
  subu $sp, $sp, 4		#alloc -244($fp) for temp63
  lw $t8, -40($fp)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -248($fp) for temp64
  li $s0, 4
  mul $t9, $s0, $t7
  subu $sp, $sp, 4		#alloc -252($fp) for temp65
  add $s0, $t6, $t9
  lw $s1, 0($s0)
  sw $s1, 0($t5)
  subu $sp, $sp, 4		#alloc -256($fp) for temp55
  lw $s3, 0($t5)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -260($fp) for temp68
  move $s3, $t3
  subu $sp, $sp, 4		#alloc -264($fp) for temp69
  li $s5, 1
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -268($fp) for temp67
  sub $s5, $s3, $s4
  move $t3, $s5
  subu $sp, $sp, 4		#alloc -272($fp) for temp66
  move $s6, $t3
  sw $t0, -224($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -228($fp)		#spill
  sw $t3, -48($fp)		#spill
  sw $t4, -232($fp)		#spill
  sw $t5, -236($fp)		#spill
  sw $t6, -240($fp)		#spill
  sw $t7, -244($fp)		#spill
  sw $t8, -40($fp)		#spill
  sw $t9, -248($fp)		#spill
  sw $s0, -252($fp)		#spill
  sw $s2, -256($fp)		#spill
  sw $s3, -260($fp)		#spill
  sw $s4, -264($fp)		#spill
  sw $s5, -268($fp)		#spill
  sw $s6, -272($fp)		#spill
label17:
  j label3
label5:
  subu $sp, $sp, 4		#alloc -276($fp) for temp72
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -280($fp) for temp73
  lw $t3, -40($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -284($fp) for temp74
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -288($fp) for temp75
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -292($fp) for temp76
  lw $t7, -32($fp)
  move $t6, $t7
  sw $t6, 0($t5)
  subu $sp, $sp, 4		#alloc -296($fp) for temp70
  lw $t9, 0($t5)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -300($fp) for temp78
  move $t9, $t1
  subu $sp, $sp, 4		#alloc -304($fp) for temp79
  lw $s1, -8($fp)
  move $s0, $s1
  subu $sp, $sp, 4		#alloc -308($fp) for temp81
  move $s2, $t3
  subu $sp, $sp, 4		#alloc -312($fp) for temp82
  li $s4, 1
  move $s3, $s4
  subu $sp, $sp, 4		#alloc -316($fp) for temp80
  sub $s4, $s2, $s3
  move $a0, $t9
  move $a1, $s0
  move $a2, $s4
  sw $t0, -276($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -280($fp)		#spill
  sw $t3, -40($fp)		#spill
  sw $t4, -284($fp)		#spill
  sw $t5, -288($fp)		#spill
  sw $t6, -292($fp)		#spill
  sw $t7, -32($fp)		#spill
  sw $t8, -296($fp)		#spill
  sw $t9, -300($fp)		#spill
  sw $s0, -304($fp)		#spill
  sw $s1, -8($fp)		#spill
  sw $s2, -308($fp)		#spill
  sw $s3, -312($fp)		#spill
  sw $s4, -316($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal qsort
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -320($fp) for temp77
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -324($fp) for temp84
  lw $t2, -4($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -328($fp) for temp86
  lw $t4, -40($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -332($fp) for temp87
  li $t6, 1
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -336($fp) for temp85
  add $t6, $t3, $t5
  subu $sp, $sp, 4		#alloc -340($fp) for temp88
  lw $t8, -12($fp)
  move $t7, $t8
  move $a0, $t1
  move $a1, $t6
  move $a2, $t7
  sw $t0, -320($fp)		#spill
  sw $t1, -324($fp)		#spill
  sw $t2, -4($fp)		#spill
  sw $t3, -328($fp)		#spill
  sw $t4, -40($fp)		#spill
  sw $t5, -332($fp)		#spill
  sw $t6, -336($fp)		#spill
  sw $t7, -340($fp)		#spill
  sw $t8, -12($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal qsort
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -344($fp) for temp83
  move $t0, $v0
  sw $t0, -344($fp)		#spill
label2:
  subu $sp, $sp, 4		#alloc -348($fp) for temp89
  move $t0, $0
  move $v0, $t0
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
  subu $sp, $sp, 40		#alloc for temp90
  subu $sp, $sp, 4		#alloc -44($fp) for number
  la $t1, -40($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -48($fp) for temp91
  li $t2, 10
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -52($fp) for N
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -56($fp) for temp92
  move $t3, $0
  subu $sp, $sp, 4		#alloc -60($fp) for i
  move $t4, $t3
  sw $t0, -44($fp)		#spill
  sw $t1, -48($fp)		#spill
  sw $t2, -52($fp)		#spill
  sw $t3, -56($fp)		#spill
  sw $t4, -60($fp)		#spill
label18:
  subu $sp, $sp, 4		#alloc -64($fp) for temp93
  lw $t1, -60($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -68($fp) for temp94
  lw $t3, -52($fp)
  move $t2, $t3
  sw $t0, -64($fp)		#spill
  sw $t1, -60($fp)		#spill
  sw $t2, -68($fp)		#spill
  sw $t3, -52($fp)		#spill
  lw $t0, -64($fp)
  lw $t1, -68($fp)
  blt $t0, $t1, label19
  sw $t0, -64($fp)		#spill
  sw $t1, -68($fp)		#spill
  j label20
label19:
  subu $sp, $sp, 4		#alloc -72($fp) for temp97
  lw $t1, -44($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -76($fp) for temp98
  lw $t3, -60($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -80($fp) for temp99
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -84($fp) for temp100
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -88($fp) for temp101
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t6, $v0
  sw $t6, 0($t5)
  subu $sp, $sp, 4		#alloc -92($fp) for temp95
  lw $t8, 0($t5)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -96($fp) for temp104
  move $t8, $t3
  subu $sp, $sp, 4		#alloc -100($fp) for temp105
  li $s0, 1
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -104($fp) for temp103
  add $s0, $t8, $t9
  move $t3, $s0
  subu $sp, $sp, 4		#alloc -108($fp) for temp102
  move $s1, $t3
  sw $t0, -72($fp)		#spill
  sw $t1, -44($fp)		#spill
  sw $t2, -76($fp)		#spill
  sw $t3, -60($fp)		#spill
  sw $t4, -80($fp)		#spill
  sw $t5, -84($fp)		#spill
  sw $t6, -88($fp)		#spill
  sw $t7, -92($fp)		#spill
  sw $t8, -96($fp)		#spill
  sw $t9, -100($fp)		#spill
  sw $s0, -104($fp)		#spill
  sw $s1, -108($fp)		#spill
  j label18
label20:
  subu $sp, $sp, 4		#alloc -112($fp) for temp107
  lw $t1, -44($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -116($fp) for temp108
  move $t2, $0
  subu $sp, $sp, 4		#alloc -120($fp) for temp110
  lw $t4, -52($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -124($fp) for temp111
  li $t6, 1
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -128($fp) for temp109
  sub $t6, $t3, $t5
  move $a0, $t0
  move $a1, $t2
  move $a2, $t6
  sw $t0, -112($fp)		#spill
  sw $t1, -44($fp)		#spill
  sw $t2, -116($fp)		#spill
  sw $t3, -120($fp)		#spill
  sw $t4, -52($fp)		#spill
  sw $t5, -124($fp)		#spill
  sw $t6, -128($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal qsort
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -132($fp) for temp106
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -136($fp) for temp113
  move $t1, $0
  lw $t2, -60($fp)
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -140($fp) for temp112
  move $t3, $t2
  sw $t0, -132($fp)		#spill
  sw $t1, -136($fp)		#spill
  sw $t2, -60($fp)		#spill
  sw $t3, -140($fp)		#spill
label21:
  subu $sp, $sp, 4		#alloc -144($fp) for temp114
  lw $t1, -60($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -148($fp) for temp115
  lw $t3, -52($fp)
  move $t2, $t3
  sw $t0, -144($fp)		#spill
  sw $t1, -60($fp)		#spill
  sw $t2, -148($fp)		#spill
  sw $t3, -52($fp)		#spill
  lw $t0, -144($fp)
  lw $t1, -148($fp)
  blt $t0, $t1, label22
  sw $t0, -144($fp)		#spill
  sw $t1, -148($fp)		#spill
  j label23
label22:
  subu $sp, $sp, 4		#alloc -152($fp) for temp118
  lw $t1, -44($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -156($fp) for temp119
  lw $t3, -60($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -160($fp) for temp120
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -164($fp) for temp121
  add $t5, $t0, $t4
  lw $t6, 0($t5)
  move $a0, $t6
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -168($fp) for temp124
  move $t7, $t3
  subu $sp, $sp, 4		#alloc -172($fp) for temp125
  li $t9, 1
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -176($fp) for temp123
  add $t9, $t7, $t8
  move $t3, $t9
  subu $sp, $sp, 4		#alloc -180($fp) for temp122
  move $s0, $t3
  sw $t0, -152($fp)		#spill
  sw $t1, -44($fp)		#spill
  sw $t2, -156($fp)		#spill
  sw $t3, -60($fp)		#spill
  sw $t4, -160($fp)		#spill
  sw $t5, -164($fp)		#spill
  sw $t7, -168($fp)		#spill
  sw $t8, -172($fp)		#spill
  sw $t9, -176($fp)		#spill
  sw $s0, -180($fp)		#spill
  j label21
label23:
  subu $sp, $sp, 4		#alloc -184($fp) for temp126
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
