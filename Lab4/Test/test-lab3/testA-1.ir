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
  subu $sp, $sp, 4		#alloc -4($fp) for temp1
  li $t1, 3
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -8($fp) for t
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp3
  li $t3, 12
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -16($fp) for x
  move $t3, $t2
  subu $sp, $sp, 4		#alloc -20($fp) for temp2
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -24($fp) for temp8
  move $t5, $t3
  subu $sp, $sp, 4		#alloc -28($fp) for temp9
  move $t6, $t3
  subu $sp, $sp, 4		#alloc -32($fp) for temp6
  mul $t7, $t5, $t6
  subu $sp, $sp, 4		#alloc -36($fp) for temp7
  li $t9, 13
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -40($fp) for temp5
  add $t9, $t7, $t8
  subu $sp, $sp, 4		#alloc -44($fp) for b
  move $s0, $t9
  subu $sp, $sp, 4		#alloc -48($fp) for temp4
  move $s1, $s0
  subu $sp, $sp, 4		#alloc -52($fp) for temp14
  move $s2, $s0
  subu $sp, $sp, 4		#alloc -56($fp) for temp15
  li $s4, 13
  move $s3, $s4
  subu $sp, $sp, 4		#alloc -60($fp) for temp12
  div $s4, $s2, $s3
  subu $sp, $sp, 4		#alloc -64($fp) for temp13
  li $s6, 1
  move $s5, $s6
  subu $sp, $sp, 4		#alloc -68($fp) for temp11
  add $s6, $s4, $s5
  subu $sp, $sp, 4		#alloc -72($fp) for y
  move $s7, $s6
  subu $sp, $sp, 4		#alloc -76($fp) for temp10
  #spill 0
  sw $t0, -4($fp)		#spill
  move $t0, $s7
  subu $sp, $sp, 4		#alloc -80($fp) for temp20
  #spill 1
  sw $t1, -8($fp)		#spill
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -84($fp) for temp21
  #spill 2
  sw $t2, -12($fp)		#spill
  move $t2, $s0
  subu $sp, $sp, 4		#alloc -88($fp) for temp18
  #spill 3
  sw $t3, -16($fp)		#spill
  div $t3, $t1, $t2
  subu $sp, $sp, 4		#alloc -92($fp) for temp22
  #spill 4
  sw $t4, -20($fp)		#spill
  move $t4, $s0
  subu $sp, $sp, 4		#alloc -96($fp) for temp23
  #spill 5
  sw $t5, -24($fp)		#spill
  move $t5, $s7
  subu $sp, $sp, 4		#alloc -100($fp) for temp19
  #spill 6
  sw $t6, -28($fp)		#spill
  mul $t6, $t4, $t5
  subu $sp, $sp, 4		#alloc -104($fp) for temp17
  #spill 7
  sw $t7, -32($fp)		#spill
  add $t7, $t3, $t6
  subu $sp, $sp, 4		#alloc -108($fp) for z
  #spill 8
  sw $t8, -36($fp)		#spill
  move $t8, $t7
  subu $sp, $sp, 4		#alloc -112($fp) for temp16
  #spill 9
  sw $t9, -40($fp)		#spill
  move $t9, $t8
  subu $sp, $sp, 4		#alloc -116($fp) for temp25
  #spill 0
  sw $t0, -76($fp)		#spill
  move $t0, $t8
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -120($fp) for temp28
  #spill 1
  sw $t1, -80($fp)		#spill
  #spill 2
  sw $t2, -84($fp)		#spill
  lw $t2, -8($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -124($fp) for temp30
  #spill 3
  sw $t3, -88($fp)		#spill
  move $t3, $t8
  subu $sp, $sp, 4		#alloc -128($fp) for temp31
  #spill 4
  sw $t4, -92($fp)		#spill
  #spill 5
  sw $t5, -96($fp)		#spill
  li $t5, 2
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -132($fp) for temp29
  mul $t5, $t3, $t4
  subu $sp, $sp, 4		#alloc -136($fp) for temp27
  #spill 6
  sw $t6, -100($fp)		#spill
  add $t6, $t1, $t5
  subu $sp, $sp, 4		#alloc -140($fp) for c
  #spill 7
  sw $t7, -104($fp)		#spill
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -144($fp) for temp26
  #spill 8
  sw $t8, -108($fp)		#spill
  move $t8, $t7
  subu $sp, $sp, 4		#alloc -148($fp) for temp33
  #spill 9
  sw $t9, -112($fp)		#spill
  move $t9, $t7
  move $a0, $t9
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -152($fp) for temp42
  #spill 0
  sw $t0, -116($fp)		#spill
  #spill 1
  sw $t1, -120($fp)		#spill
  lw $t1, -16($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -156($fp) for temp43
  #spill 2
  sw $t2, -8($fp)		#spill
  move $t2, $s0
  subu $sp, $sp, 4		#alloc -160($fp) for temp40
  #spill 3
  sw $t3, -124($fp)		#spill
  add $t3, $t0, $t2
  subu $sp, $sp, 4		#alloc -164($fp) for temp41
  #spill 4
  sw $t4, -128($fp)		#spill
  move $t4, $s7
  subu $sp, $sp, 4		#alloc -168($fp) for temp38
  #spill 5
  sw $t5, -132($fp)		#spill
  add $t5, $t3, $t4
  subu $sp, $sp, 4		#alloc -172($fp) for temp44
  #spill 6
  sw $t6, -136($fp)		#spill
  move $t6, $t1
  subu $sp, $sp, 4		#alloc -176($fp) for temp45
  #spill 7
  sw $t7, -140($fp)		#spill
  #spill 8
  sw $t8, -144($fp)		#spill
  lw $t8, -140($fp)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -180($fp) for temp39
  #spill 9
  sw $t9, -148($fp)		#spill
  div $t9, $t6, $t7
  subu $sp, $sp, 4		#alloc -184($fp) for temp36
  #spill 0
  sw $t0, -152($fp)		#spill
  add $t0, $t5, $t9
  subu $sp, $sp, 4		#alloc -188($fp) for temp37
  #spill 1
  sw $t1, -16($fp)		#spill
  #spill 2
  sw $t2, -156($fp)		#spill
  lw $t2, -8($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -192($fp) for temp35
  #spill 3
  sw $t3, -160($fp)		#spill
  add $t3, $t0, $t1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -196($fp) for temp34
  #spill 4
  sw $t4, -164($fp)		#spill
  move $t4, $t2
  subu $sp, $sp, 4		#alloc -200($fp) for temp47
  #spill 5
  sw $t5, -168($fp)		#spill
  move $t5, $t2
  move $a0, $t5
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -204($fp) for temp48
  #spill 6
  sw $t6, -172($fp)		#spill
  move $t6, $0
  move $v0, $t6
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
