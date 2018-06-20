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

main:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 20		#alloc for temp1
  subu $sp, $sp, 4		#alloc -24($fp) for x
  la $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -28($fp) for temp3
  move $t1, $0
  subu $sp, $sp, 4		#alloc -32($fp) for i
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -36($fp) for temp2
  move $t3, $t2
  sw $t0, -24($fp)		#spill
  sw $t1, -28($fp)		#spill
  sw $t2, -32($fp)		#spill
  sw $t3, -36($fp)		#spill
label1:
  subu $sp, $sp, 4		#alloc -40($fp) for temp4
  lw $t1, -32($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -44($fp) for temp5
  li $t3, 5
  move $t2, $t3
  sw $t0, -40($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -44($fp)		#spill
  lw $t0, -40($fp)
  lw $t1, -44($fp)
  blt $t0, $t1, label2
  sw $t0, -40($fp)		#spill
  sw $t1, -44($fp)		#spill
  j label3
label2:
  subu $sp, $sp, 4		#alloc -48($fp) for temp8
  lw $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -52($fp) for temp9
  lw $t3, -32($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -56($fp) for temp10
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -60($fp) for temp11
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -64($fp) for temp12
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t6, $v0
  sw $t6, 0($t5)
  subu $sp, $sp, 4		#alloc -68($fp) for temp6
  lw $t8, 0($t5)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -72($fp) for temp15
  move $t8, $t3
  subu $sp, $sp, 4		#alloc -76($fp) for temp16
  li $s0, 1
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -80($fp) for temp14
  add $s0, $t8, $t9
  move $t3, $s0
  subu $sp, $sp, 4		#alloc -84($fp) for temp13
  move $s1, $t3
  sw $t0, -48($fp)		#spill
  sw $t1, -24($fp)		#spill
  sw $t2, -52($fp)		#spill
  sw $t3, -32($fp)		#spill
  sw $t4, -56($fp)		#spill
  sw $t5, -60($fp)		#spill
  sw $t6, -64($fp)		#spill
  sw $t7, -68($fp)		#spill
  sw $t8, -72($fp)		#spill
  sw $t9, -76($fp)		#spill
  sw $s0, -80($fp)		#spill
  sw $s1, -84($fp)		#spill
  j label1
label3:
  subu $sp, $sp, 4		#alloc -88($fp) for temp18
  li $t1, 1
  move $t0, $t1
  lw $t1, -32($fp)
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -92($fp) for temp17
  move $t2, $t1
  sw $t0, -88($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -92($fp)		#spill
label4:
  subu $sp, $sp, 4		#alloc -96($fp) for temp19
  lw $t1, -32($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -100($fp) for temp20
  li $t3, 5
  move $t2, $t3
  sw $t0, -96($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -100($fp)		#spill
  lw $t0, -96($fp)
  lw $t1, -100($fp)
  blt $t0, $t1, label5
  sw $t0, -96($fp)		#spill
  sw $t1, -100($fp)		#spill
  j label6
label5:
  subu $sp, $sp, 4		#alloc -104($fp) for temp22
  lw $t1, -32($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -108($fp) for j
  move $t2, $t0
  subu $sp, $sp, 4		#alloc -112($fp) for temp21
  move $t3, $t2
  sw $t0, -104($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -108($fp)		#spill
  sw $t3, -112($fp)		#spill
label7:
  subu $sp, $sp, 4		#alloc -116($fp) for temp23
  lw $t1, -108($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -120($fp) for temp24
  move $t2, $0
  sw $t0, -116($fp)		#spill
  sw $t1, -108($fp)		#spill
  sw $t2, -120($fp)		#spill
  lw $t0, -116($fp)
  lw $t1, -120($fp)
  bgt $t0, $t1, label10
  sw $t0, -116($fp)		#spill
  sw $t1, -120($fp)		#spill
  j label9
label10:
  subu $sp, $sp, 4		#alloc -124($fp) for temp27
  lw $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -128($fp) for temp29
  lw $t3, -108($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -132($fp) for temp30
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -136($fp) for temp28
  sub $t5, $t2, $t4
  subu $sp, $sp, 4		#alloc -140($fp) for temp31
  li $t7, 4
  mul $t6, $t7, $t5
  subu $sp, $sp, 4		#alloc -144($fp) for temp32
  add $t7, $t0, $t6
  subu $sp, $sp, 4		#alloc -148($fp) for temp33
  move $t8, $t1
  subu $sp, $sp, 4		#alloc -152($fp) for temp34
  move $t9, $t3
  subu $sp, $sp, 4		#alloc -156($fp) for temp35
  li $s1, 4
  mul $s0, $s1, $t9
  subu $sp, $sp, 4		#alloc -160($fp) for temp36
  add $s1, $t8, $s0
  sw $t0, -124($fp)		#spill
  sw $t1, -24($fp)		#spill
  sw $t2, -128($fp)		#spill
  sw $t3, -108($fp)		#spill
  sw $t4, -132($fp)		#spill
  sw $t5, -136($fp)		#spill
  sw $t6, -140($fp)		#spill
  sw $t7, -144($fp)		#spill
  sw $t8, -148($fp)		#spill
  sw $t9, -152($fp)		#spill
  sw $s0, -156($fp)		#spill
  sw $s1, -160($fp)		#spill
  lw $t1, -144($fp)
  lw $t0, 0($t1)
  lw $t3, -160($fp)
  lw $t2, 0($t3)
  bgt $t0, $t2, label8
  sw $t1, -144($fp)		#spill
  sw $t3, -160($fp)		#spill
  j label9
label8:
  subu $sp, $sp, 4		#alloc -164($fp) for temp39
  lw $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -168($fp) for temp40
  lw $t3, -108($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -172($fp) for temp41
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -176($fp) for temp42
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -180($fp) for tem
  lw $t7, 0($t5)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -184($fp) for temp37
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -188($fp) for temp45
  move $t8, $t1
  subu $sp, $sp, 4		#alloc -192($fp) for temp46
  move $t9, $t3
  subu $sp, $sp, 4		#alloc -196($fp) for temp47
  li $s1, 4
  mul $s0, $s1, $t9
  subu $sp, $sp, 4		#alloc -200($fp) for temp48
  add $s1, $t8, $s0
  subu $sp, $sp, 4		#alloc -204($fp) for temp50
  move $s2, $t1
  subu $sp, $sp, 4		#alloc -208($fp) for temp52
  move $s3, $t3
  subu $sp, $sp, 4		#alloc -212($fp) for temp53
  li $s5, 1
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -216($fp) for temp51
  sub $s5, $s3, $s4
  subu $sp, $sp, 4		#alloc -220($fp) for temp54
  li $s7, 4
  mul $s6, $s7, $s5
  subu $sp, $sp, 4		#alloc -224($fp) for temp55
  add $s7, $s2, $s6
  #spill 0
  sw $t0, -164($fp)		#spill
  lw $t0, 0($s7)
  sw $t0, 0($s1)
  subu $sp, $sp, 4		#alloc -228($fp) for temp43
  #spill 1
  sw $t1, -24($fp)		#spill
  #spill 2
  sw $t2, -168($fp)		#spill
  lw $t2, 0($s1)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -232($fp) for temp58
  #spill 3
  sw $t3, -108($fp)		#spill
  lw $t3, -24($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -236($fp) for temp60
  #spill 4
  sw $t4, -172($fp)		#spill
  #spill 5
  sw $t5, -176($fp)		#spill
  lw $t5, -108($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -240($fp) for temp61
  #spill 6
  sw $t6, -180($fp)		#spill
  #spill 7
  sw $t7, -184($fp)		#spill
  li $t7, 1
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -244($fp) for temp59
  sub $t7, $t4, $t6
  subu $sp, $sp, 4		#alloc -248($fp) for temp62
  #spill 8
  sw $t8, -188($fp)		#spill
  #spill 9
  sw $t9, -192($fp)		#spill
  li $t9, 4
  mul $t8, $t9, $t7
  subu $sp, $sp, 4		#alloc -252($fp) for temp63
  add $t9, $t2, $t8
  subu $sp, $sp, 4		#alloc -256($fp) for temp64
  #spill 0
  #spill 1
  sw $t1, -228($fp)		#spill
  lw $t1, -180($fp)
  move $t0, $t1
  sw $t0, 0($t9)
  subu $sp, $sp, 4		#alloc -260($fp) for temp56
  #spill 2
  sw $t2, -232($fp)		#spill
  #spill 3
  sw $t3, -24($fp)		#spill
  lw $t3, 0($t9)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -264($fp) for temp67
  move $t3, $t5
  subu $sp, $sp, 4		#alloc -268($fp) for temp68
  #spill 4
  sw $t4, -236($fp)		#spill
  #spill 5
  sw $t5, -108($fp)		#spill
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -272($fp) for temp66
  sub $t5, $t3, $t4
  #spill 6
  sw $t6, -240($fp)		#spill
  lw $t6, -108($fp)
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -276($fp) for temp65
  #spill 7
  sw $t7, -244($fp)		#spill
  move $t7, $t6
  sw $t0, -256($fp)		#spill
  sw $t1, -180($fp)		#spill
  sw $t2, -260($fp)		#spill
  sw $t3, -264($fp)		#spill
  sw $t4, -268($fp)		#spill
  sw $t5, -272($fp)		#spill
  sw $t6, -108($fp)		#spill
  sw $t7, -276($fp)		#spill
  sw $t8, -248($fp)		#spill
  sw $t9, -252($fp)		#spill
  sw $s0, -196($fp)		#spill
  sw $s1, -200($fp)		#spill
  sw $s2, -204($fp)		#spill
  sw $s3, -208($fp)		#spill
  sw $s4, -212($fp)		#spill
  sw $s5, -216($fp)		#spill
  sw $s6, -220($fp)		#spill
  sw $s7, -224($fp)		#spill
  j label7
label9:
  subu $sp, $sp, 4		#alloc -280($fp) for temp71
  lw $t1, -32($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -284($fp) for temp72
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -288($fp) for temp70
  add $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -292($fp) for temp69
  move $t4, $t1
  sw $t0, -280($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -284($fp)		#spill
  sw $t3, -288($fp)		#spill
  sw $t4, -292($fp)		#spill
  j label4
label6:
  subu $sp, $sp, 4		#alloc -296($fp) for temp74
  move $t0, $0
  lw $t1, -32($fp)
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -300($fp) for temp73
  move $t2, $t1
  sw $t0, -296($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -300($fp)		#spill
label11:
  subu $sp, $sp, 4		#alloc -304($fp) for temp75
  lw $t1, -32($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -308($fp) for temp76
  li $t3, 5
  move $t2, $t3
  sw $t0, -304($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -308($fp)		#spill
  lw $t0, -304($fp)
  lw $t1, -308($fp)
  blt $t0, $t1, label12
  sw $t0, -304($fp)		#spill
  sw $t1, -308($fp)		#spill
  j label13
label12:
  subu $sp, $sp, 4		#alloc -312($fp) for temp79
  lw $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -316($fp) for temp80
  lw $t3, -32($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -320($fp) for temp81
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -324($fp) for temp82
  add $t5, $t0, $t4
  lw $t6, 0($t5)
  move $a0, $t6
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -328($fp) for temp85
  move $t7, $t3
  subu $sp, $sp, 4		#alloc -332($fp) for temp86
  li $t9, 1
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -336($fp) for temp84
  add $t9, $t7, $t8
  move $t3, $t9
  subu $sp, $sp, 4		#alloc -340($fp) for temp83
  move $s0, $t3
  sw $t0, -312($fp)		#spill
  sw $t1, -24($fp)		#spill
  sw $t2, -316($fp)		#spill
  sw $t3, -32($fp)		#spill
  sw $t4, -320($fp)		#spill
  sw $t5, -324($fp)		#spill
  sw $t7, -328($fp)		#spill
  sw $t8, -332($fp)		#spill
  sw $t9, -336($fp)		#spill
  sw $s0, -340($fp)		#spill
  j label11
label13:
  subu $sp, $sp, 4		#alloc -344($fp) for temp87
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
