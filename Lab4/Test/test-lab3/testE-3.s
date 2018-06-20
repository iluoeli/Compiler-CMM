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

calculate:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for class
  subu $sp, $sp, 4		#alloc -8($fp) for temp1
  move $t0, $0
  subu $sp, $sp, 4		#alloc -12($fp) for sum
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -16($fp) for temp2
  move $t2, $0
  subu $sp, $sp, 4		#alloc -20($fp) for i
  move $t3, $t2
  subu $sp, $sp, 4		#alloc -24($fp) for temp3
  li $t5, 50
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -28($fp) for N
  move $t5, $t4
  sw $t0, -8($fp)		#spill
  sw $t1, -12($fp)		#spill
  sw $t2, -16($fp)		#spill
  sw $t3, -20($fp)		#spill
  sw $t4, -24($fp)		#spill
  sw $t5, -28($fp)		#spill
  sw $a0, -4($fp)		#spill
label1:
  subu $sp, $sp, 4		#alloc -32($fp) for temp4
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -36($fp) for temp5
  lw $t3, -28($fp)
  move $t2, $t3
  sw $t0, -32($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -36($fp)		#spill
  sw $t3, -28($fp)		#spill
  lw $t0, -32($fp)
  lw $t1, -36($fp)
  blt $t0, $t1, label2
  sw $t0, -32($fp)		#spill
  sw $t1, -36($fp)		#spill
  j label3
label2:
  subu $sp, $sp, 4		#alloc -40($fp) for temp8
  lw $t1, -12($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -44($fp) for temp12
  lw $t3, -4($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -48($fp) for temp11
  add $t4, $t2, $0
  subu $sp, $sp, 4		#alloc -52($fp) for temp13
  lw $t6, -20($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -56($fp) for temp14
  li $t8, 8
  mul $t7, $t8, $t5
  subu $sp, $sp, 4		#alloc -60($fp) for temp10
  add $t8, $t4, $t7
  subu $sp, $sp, 4		#alloc -64($fp) for temp15
  li $s0, 4
  add $t9, $t8, $s0
  subu $sp, $sp, 4		#alloc -68($fp) for temp7
  lw $s1, 0($t9)
  add $s0, $t0, $s1
  move $t1, $s0
  subu $sp, $sp, 4		#alloc -72($fp) for temp6
  move $s1, $t1
  subu $sp, $sp, 4		#alloc -76($fp) for temp18
  move $s2, $t6
  subu $sp, $sp, 4		#alloc -80($fp) for temp19
  li $s4, 1
  move $s3, $s4
  subu $sp, $sp, 4		#alloc -84($fp) for temp17
  add $s4, $s2, $s3
  move $t6, $s4
  subu $sp, $sp, 4		#alloc -88($fp) for temp16
  move $s5, $t6
  sw $t0, -40($fp)		#spill
  sw $t1, -12($fp)		#spill
  sw $t2, -44($fp)		#spill
  sw $t3, -4($fp)		#spill
  sw $t4, -48($fp)		#spill
  sw $t5, -52($fp)		#spill
  sw $t6, -20($fp)		#spill
  sw $t7, -56($fp)		#spill
  sw $t8, -60($fp)		#spill
  sw $t9, -64($fp)		#spill
  sw $s0, -68($fp)		#spill
  sw $s1, -72($fp)		#spill
  sw $s2, -76($fp)		#spill
  sw $s3, -80($fp)		#spill
  sw $s4, -84($fp)		#spill
  sw $s5, -88($fp)		#spill
  j label1
label3:
  subu $sp, $sp, 4		#alloc -92($fp) for temp22
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -96($fp) for temp23
  li $t3, 400
  add $t2, $t0, $t3
  subu $sp, $sp, 4		#alloc -100($fp) for temp25
  lw $t4, -12($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -104($fp) for temp26
  lw $t6, -28($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -108($fp) for temp24
  div $t7, $t3, $t5
  sw $t7, 0($t2)
  subu $sp, $sp, 4		#alloc -112($fp) for temp20
  lw $t9, 0($t2)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -116($fp) for temp28
  move $t9, $t4
  subu $sp, $sp, 4		#alloc -120($fp) for temp29
  move $s0, $t6
  subu $sp, $sp, 4		#alloc -124($fp) for temp27
  div $s1, $t9, $s0
  move $v0, $s1
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
  subu $sp, $sp, 4040		#alloc for temp30
  subu $sp, $sp, 4		#alloc -4044($fp) for school
  la $t1, -4040($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -4048($fp) for temp31
  move $t1, $0
  subu $sp, $sp, 4		#alloc -4052($fp) for i1
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -4056($fp) for temp32
  move $t3, $0
  subu $sp, $sp, 4		#alloc -4060($fp) for j1
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -4064($fp) for temp33
  li $t6, 50
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -4068($fp) for N1
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -4072($fp) for temp34
  li $t8, 10
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -4076($fp) for N2
  move $t8, $t7
  sw $t0, -4044($fp)		#spill
  sw $t1, -4048($fp)		#spill
  sw $t2, -4052($fp)		#spill
  sw $t3, -4056($fp)		#spill
  sw $t4, -4060($fp)		#spill
  sw $t5, -4064($fp)		#spill
  sw $t6, -4068($fp)		#spill
  sw $t7, -4072($fp)		#spill
  sw $t8, -4076($fp)		#spill
label4:
  subu $sp, $sp, 4		#alloc -4080($fp) for temp35
  lw $t1, -4052($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -4084($fp) for temp36
  lw $t3, -4076($fp)
  move $t2, $t3
  sw $t0, -4080($fp)		#spill
  sw $t1, -4052($fp)		#spill
  sw $t2, -4084($fp)		#spill
  sw $t3, -4076($fp)		#spill
  lw $t0, -4080($fp)
  lw $t1, -4084($fp)
  blt $t0, $t1, label5
  sw $t0, -4080($fp)		#spill
  sw $t1, -4084($fp)		#spill
  j label6
label5:
  subu $sp, $sp, 4		#alloc -4088($fp) for temp38
  move $t0, $0
  lw $t1, -4060($fp)
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -4092($fp) for temp37
  move $t2, $t1
  sw $t0, -4088($fp)		#spill
  sw $t1, -4060($fp)		#spill
  sw $t2, -4092($fp)		#spill
label7:
  subu $sp, $sp, 4		#alloc -4096($fp) for temp39
  lw $t1, -4060($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -4100($fp) for temp40
  lw $t3, -4068($fp)
  move $t2, $t3
  sw $t0, -4096($fp)		#spill
  sw $t1, -4060($fp)		#spill
  sw $t2, -4100($fp)		#spill
  sw $t3, -4068($fp)		#spill
  lw $t0, -4096($fp)
  lw $t1, -4100($fp)
  blt $t0, $t1, label8
  sw $t0, -4096($fp)		#spill
  sw $t1, -4100($fp)		#spill
  j label9
label8:
  subu $sp, $sp, 4		#alloc -4104($fp) for temp46
  lw $t1, -4044($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -4108($fp) for temp47
  lw $t3, -4052($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -4112($fp) for temp48
  li $t5, 404
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -4116($fp) for temp45
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -4120($fp) for temp44
  add $t6, $t5, $0
  subu $sp, $sp, 4		#alloc -4124($fp) for temp49
  lw $t8, -4060($fp)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -4128($fp) for temp50
  li $s0, 8
  mul $t9, $s0, $t7
  subu $sp, $sp, 4		#alloc -4132($fp) for temp43
  add $s0, $t6, $t9
  subu $sp, $sp, 4		#alloc -4136($fp) for temp51
  li $s2, 4
  add $s1, $s0, $s2
  subu $sp, $sp, 4		#alloc -4140($fp) for temp53
  move $s2, $t3
  subu $sp, $sp, 4		#alloc -4144($fp) for temp55
  move $s3, $t8
  subu $sp, $sp, 4		#alloc -4148($fp) for temp56
  li $s5, 5
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -4152($fp) for temp54
  mul $s5, $s3, $s4
  subu $sp, $sp, 4		#alloc -4156($fp) for temp52
  add $s6, $s2, $s5
  sw $s6, 0($s1)
  subu $sp, $sp, 4		#alloc -4160($fp) for temp41
  #spill 0
  sw $t0, -4104($fp)		#spill
  lw $t0, 0($s1)
  move $s7, $t0
  subu $sp, $sp, 4		#alloc -4164($fp) for temp59
  move $t0, $t8
  subu $sp, $sp, 4		#alloc -4168($fp) for temp60
  #spill 1
  sw $t1, -4044($fp)		#spill
  #spill 2
  sw $t2, -4108($fp)		#spill
  li $t2, 1
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -4172($fp) for temp58
  add $t2, $t0, $t1
  move $t8, $t2
  subu $sp, $sp, 4		#alloc -4176($fp) for temp57
  #spill 3
  sw $t3, -4052($fp)		#spill
  move $t3, $t8
  sw $t0, -4164($fp)		#spill
  sw $t1, -4168($fp)		#spill
  sw $t2, -4172($fp)		#spill
  sw $t3, -4176($fp)		#spill
  sw $t4, -4112($fp)		#spill
  sw $t5, -4116($fp)		#spill
  sw $t6, -4120($fp)		#spill
  sw $t7, -4124($fp)		#spill
  sw $t8, -4060($fp)		#spill
  sw $t9, -4128($fp)		#spill
  sw $s0, -4132($fp)		#spill
  sw $s1, -4136($fp)		#spill
  sw $s2, -4140($fp)		#spill
  sw $s3, -4144($fp)		#spill
  sw $s4, -4148($fp)		#spill
  sw $s5, -4152($fp)		#spill
  sw $s6, -4156($fp)		#spill
  sw $s7, -4160($fp)		#spill
  j label7
label9:
  subu $sp, $sp, 4		#alloc -4180($fp) for temp63
  lw $t1, -4052($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -4184($fp) for temp64
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -4188($fp) for temp62
  add $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -4192($fp) for temp61
  move $t4, $t1
  sw $t0, -4180($fp)		#spill
  sw $t1, -4052($fp)		#spill
  sw $t2, -4184($fp)		#spill
  sw $t3, -4188($fp)		#spill
  sw $t4, -4192($fp)		#spill
  j label4
label6:
  subu $sp, $sp, 4		#alloc -4196($fp) for temp66
  move $t0, $0
  lw $t1, -4060($fp)
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -4200($fp) for temp65
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -4204($fp) for temp68
  move $t3, $0
  lw $t4, -4052($fp)
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -4208($fp) for temp67
  move $t5, $t4
  sw $t0, -4196($fp)		#spill
  sw $t1, -4060($fp)		#spill
  sw $t2, -4200($fp)		#spill
  sw $t3, -4204($fp)		#spill
  sw $t4, -4052($fp)		#spill
  sw $t5, -4208($fp)		#spill
label10:
  subu $sp, $sp, 4		#alloc -4212($fp) for temp69
  lw $t1, -4052($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -4216($fp) for temp70
  lw $t3, -4076($fp)
  move $t2, $t3
  sw $t0, -4212($fp)		#spill
  sw $t1, -4052($fp)		#spill
  sw $t2, -4216($fp)		#spill
  sw $t3, -4076($fp)		#spill
  lw $t0, -4212($fp)
  lw $t1, -4216($fp)
  blt $t0, $t1, label11
  sw $t0, -4212($fp)		#spill
  sw $t1, -4216($fp)		#spill
  j label12
label11:
  subu $sp, $sp, 4		#alloc -4220($fp) for temp73
  lw $t1, -4060($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -4224($fp) for temp76
  lw $t3, -4044($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -4228($fp) for temp77
  lw $t5, -4052($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -4232($fp) for temp78
  li $t7, 404
  mul $t6, $t7, $t4
  subu $sp, $sp, 4		#alloc -4236($fp) for temp75
  add $t7, $t2, $t6
  move $a0, $t7
  sw $t0, -4220($fp)		#spill
  sw $t1, -4060($fp)		#spill
  sw $t2, -4224($fp)		#spill
  sw $t3, -4044($fp)		#spill
  sw $t4, -4228($fp)		#spill
  sw $t5, -4052($fp)		#spill
  sw $t6, -4232($fp)		#spill
  sw $t7, -4236($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal calculate
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -4240($fp) for temp74
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -4244($fp) for temp72
  lw $t2, -4220($fp)
  add $t1, $t2, $t0
  lw $t3, -4060($fp)
  move $t3, $t1
  subu $sp, $sp, 4		#alloc -4248($fp) for temp71
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -4252($fp) for temp81
  lw $t6, -4052($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -4256($fp) for temp82
  li $t8, 1
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -4260($fp) for temp80
  add $t8, $t5, $t7
  move $t6, $t8
  subu $sp, $sp, 4		#alloc -4264($fp) for temp79
  move $t9, $t6
  sw $t0, -4240($fp)		#spill
  sw $t1, -4244($fp)		#spill
  sw $t2, -4220($fp)		#spill
  sw $t3, -4060($fp)		#spill
  sw $t4, -4248($fp)		#spill
  sw $t5, -4252($fp)		#spill
  sw $t6, -4052($fp)		#spill
  sw $t7, -4256($fp)		#spill
  sw $t8, -4260($fp)		#spill
  sw $t9, -4264($fp)		#spill
  j label10
label12:
  subu $sp, $sp, 4		#alloc -4268($fp) for temp84
  lw $t1, -4060($fp)
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -4272($fp) for temp85
  move $t2, $0
  move $v0, $t2
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
