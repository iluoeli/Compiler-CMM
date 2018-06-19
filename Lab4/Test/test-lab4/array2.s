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
  subu $sp, $sp, 16		#alloc for temp1
  subu $sp, $sp, 4		#alloc -20($fp) for a
  la $t1, -16($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -24($fp) for temp4
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -28($fp) for temp5
  move $t2, $0
  subu $sp, $sp, 4		#alloc -32($fp) for temp6
  li $t4, 4
  mul $t3, $t4, $t2
  subu $sp, $sp, 4		#alloc -36($fp) for temp7
  add $t4, $t1, $t3
  subu $sp, $sp, 4		#alloc -40($fp) for temp8
  li $t6, 1
  move $t5, $t6
  sw $t5, 0($t4)
  subu $sp, $sp, 4		#alloc -44($fp) for temp2
  lw $t7, 0($t4)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -48($fp) for temp11
  move $t7, $t0
  subu $sp, $sp, 4		#alloc -52($fp) for temp12
  li $t9, 1
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -56($fp) for temp13
  li $s0, 4
  mul $t9, $s0, $t8
  subu $sp, $sp, 4		#alloc -60($fp) for temp14
  add $s0, $t7, $t9
  subu $sp, $sp, 4		#alloc -64($fp) for temp15
  li $s2, 2
  move $s1, $s2
  sw $s1, 0($s0)
  subu $sp, $sp, 4		#alloc -68($fp) for temp9
  lw $s3, 0($s0)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -72($fp) for temp18
  move $s3, $t0
  subu $sp, $sp, 4		#alloc -76($fp) for temp19
  li $s5, 2
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -80($fp) for temp20
  li $s6, 4
  mul $s5, $s6, $s4
  subu $sp, $sp, 4		#alloc -84($fp) for temp21
  add $s6, $s3, $s5
  subu $sp, $sp, 4		#alloc -88($fp) for temp22
  #spill 0
  sw $t0, -20($fp)		#spill
  li $t0, 3
  move $s7, $t0
  sw $s7, 0($s6)
  subu $sp, $sp, 4		#alloc -92($fp) for temp16
  #spill 1
  sw $t1, -24($fp)		#spill
  lw $t1, 0($s6)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -96($fp) for temp25
  #spill 2
  sw $t2, -28($fp)		#spill
  lw $t2, -20($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -100($fp) for temp26
  #spill 3
  sw $t3, -32($fp)		#spill
  #spill 4
  sw $t4, -36($fp)		#spill
  li $t4, 3
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -104($fp) for temp27
  #spill 5
  sw $t5, -40($fp)		#spill
  li $t5, 4
  mul $t4, $t5, $t3
  subu $sp, $sp, 4		#alloc -108($fp) for temp28
  add $t5, $t1, $t4
  subu $sp, $sp, 4		#alloc -112($fp) for temp29
  #spill 6
  sw $t6, -44($fp)		#spill
  #spill 7
  sw $t7, -48($fp)		#spill
  li $t7, 4
  move $t6, $t7
  sw $t6, 0($t5)
  subu $sp, $sp, 4		#alloc -116($fp) for temp23
  #spill 8
  sw $t8, -52($fp)		#spill
  lw $t8, 0($t5)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -120($fp) for temp32
  move $t8, $t2
  subu $sp, $sp, 4		#alloc -124($fp) for temp33
  #spill 9
  sw $t9, -56($fp)		#spill
  move $t9, $0
  subu $sp, $sp, 4		#alloc -128($fp) for temp34
  #spill 0
  sw $t0, -92($fp)		#spill
  #spill 1
  sw $t1, -96($fp)		#spill
  li $t1, 4
  mul $t0, $t1, $t9
  subu $sp, $sp, 4		#alloc -132($fp) for temp35
  add $t1, $t8, $t0
  #spill 2
  sw $t2, -20($fp)		#spill
  lw $t2, 0($t1)
  move $a0, $t2
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -136($fp) for temp38
  #spill 3
  sw $t3, -100($fp)		#spill
  #spill 4
  sw $t4, -104($fp)		#spill
  lw $t4, -20($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -140($fp) for temp39
  #spill 5
  sw $t5, -108($fp)		#spill
  #spill 6
  sw $t6, -112($fp)		#spill
  li $t6, 1
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -144($fp) for temp40
  #spill 7
  sw $t7, -116($fp)		#spill
  li $t7, 4
  mul $t6, $t7, $t5
  subu $sp, $sp, 4		#alloc -148($fp) for temp41
  add $t7, $t3, $t6
  #spill 8
  sw $t8, -120($fp)		#spill
  lw $t8, 0($t7)
  move $a0, $t8
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -152($fp) for temp44
  #spill 9
  sw $t9, -124($fp)		#spill
  move $t9, $t4
  subu $sp, $sp, 4		#alloc -156($fp) for temp45
  #spill 0
  sw $t0, -128($fp)		#spill
  #spill 1
  sw $t1, -132($fp)		#spill
  li $t1, 2
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -160($fp) for temp46
  #spill 2
  li $t2, 4
  mul $t1, $t2, $t0
  subu $sp, $sp, 4		#alloc -164($fp) for temp47
  add $t2, $t9, $t1
  #spill 3
  sw $t3, -136($fp)		#spill
  lw $t3, 0($t2)
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -168($fp) for temp50
  #spill 4
  sw $t4, -20($fp)		#spill
  #spill 5
  sw $t5, -140($fp)		#spill
  lw $t5, -20($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -172($fp) for temp51
  #spill 6
  sw $t6, -144($fp)		#spill
  #spill 7
  sw $t7, -148($fp)		#spill
  li $t7, 3
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -176($fp) for temp52
  #spill 8
  li $t8, 4
  mul $t7, $t8, $t6
  subu $sp, $sp, 4		#alloc -180($fp) for temp53
  add $t8, $t4, $t7
  #spill 9
  sw $t9, -152($fp)		#spill
  lw $t9, 0($t8)
  move $a0, $t9
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -184($fp) for temp54
  #spill 0
  sw $t0, -156($fp)		#spill
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
