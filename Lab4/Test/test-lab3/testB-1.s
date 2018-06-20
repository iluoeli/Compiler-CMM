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

myPow:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for x
  subu $sp, $sp, 4		#alloc -8($fp) for n
  subu $sp, $sp, 4		#alloc -12($fp) for temp1
  move $t0, $a1
  subu $sp, $sp, 4		#alloc -16($fp) for temp2
  move $t1, $0
  sw $t0, -12($fp)		#spill
  sw $t1, -16($fp)		#spill
  sw $a0, -4($fp)		#spill
  sw $a1, -8($fp)		#spill
  lw $t0, -12($fp)
  lw $t1, -16($fp)
  beq $t0, $t1, label1
  sw $t0, -12($fp)		#spill
  sw $t1, -16($fp)		#spill
  j label2
label1:
  subu $sp, $sp, 4		#alloc -20($fp) for temp3
  li $t1, 1
  move $t0, $t1
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -20($fp)		#spill
label2:
  subu $sp, $sp, 4		#alloc -24($fp) for temp4
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -28($fp) for temp5
  li $t3, 1
  move $t2, $t3
  sw $t0, -24($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -28($fp)		#spill
  lw $t0, -24($fp)
  lw $t1, -28($fp)
  beq $t0, $t1, label3
  sw $t0, -24($fp)		#spill
  sw $t1, -28($fp)		#spill
  j label4
label3:
  subu $sp, $sp, 4		#alloc -32($fp) for temp6
  lw $t1, -4($fp)
  move $t0, $t1
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -32($fp)		#spill
  sw $t1, -4($fp)		#spill
label4:
  subu $sp, $sp, 4		#alloc -36($fp) for temp7
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -40($fp) for temp8
  li $t3, 2
  move $t2, $t3
  sw $t0, -36($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -40($fp)		#spill
  lw $t0, -36($fp)
  lw $t1, -40($fp)
  beq $t0, $t1, label5
  sw $t0, -36($fp)		#spill
  sw $t1, -40($fp)		#spill
  j label6
label5:
  subu $sp, $sp, 4		#alloc -44($fp) for temp10
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -48($fp) for temp11
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -52($fp) for temp9
  mul $t3, $t0, $t2
  move $v0, $t3
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -44($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -48($fp)		#spill
  sw $t3, -52($fp)		#spill
label6:
  subu $sp, $sp, 4		#alloc -56($fp) for temp12
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -60($fp) for temp16
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -64($fp) for temp17
  li $t4, 2
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -68($fp) for temp14
  div $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc -72($fp) for temp15
  li $t6, 2
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -76($fp) for temp13
  mul $t6, $t4, $t5
  sw $t0, -56($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -60($fp)		#spill
  sw $t3, -64($fp)		#spill
  sw $t4, -68($fp)		#spill
  sw $t5, -72($fp)		#spill
  sw $t6, -76($fp)		#spill
  lw $t0, -56($fp)
  lw $t1, -76($fp)
  beq $t0, $t1, label7
  sw $t0, -56($fp)		#spill
  sw $t1, -76($fp)		#spill
  j label8
label7:
  subu $sp, $sp, 4		#alloc -80($fp) for temp20
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -84($fp) for temp22
  lw $t3, -8($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -88($fp) for temp23
  li $t5, 2
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -92($fp) for temp21
  div $t5, $t2, $t4
  move $a0, $t0
  move $a1, $t5
  sw $t0, -80($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -84($fp)		#spill
  sw $t3, -8($fp)		#spill
  sw $t4, -88($fp)		#spill
  sw $t5, -92($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal myPow
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -96($fp) for temp19
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -100($fp) for temp24
  li $t2, 2
  move $t1, $t2
  move $a0, $t0
  move $a1, $t1
  sw $t0, -96($fp)		#spill
  sw $t1, -100($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal myPow
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -104($fp) for temp18
  move $t0, $v0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -104($fp)		#spill
  j label9
label8:
  subu $sp, $sp, 4		#alloc -108($fp) for temp28
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -112($fp) for temp30
  lw $t3, -8($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -116($fp) for temp31
  li $t5, 2
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -120($fp) for temp29
  div $t5, $t2, $t4
  move $a0, $t0
  move $a1, $t5
  sw $t0, -108($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -112($fp)		#spill
  sw $t3, -8($fp)		#spill
  sw $t4, -116($fp)		#spill
  sw $t5, -120($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal myPow
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -124($fp) for temp27
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -128($fp) for temp32
  li $t2, 2
  move $t1, $t2
  move $a0, $t0
  move $a1, $t1
  sw $t0, -124($fp)		#spill
  sw $t1, -128($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal myPow
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -132($fp) for temp26
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -136($fp) for value
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -140($fp) for temp25
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -144($fp) for temp34
  lw $t4, -4($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -148($fp) for temp35
  move $t5, $t1
  subu $sp, $sp, 4		#alloc -152($fp) for temp33
  mul $t6, $t3, $t5
  move $v0, $t6
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -132($fp)		#spill
  sw $t1, -136($fp)		#spill
  sw $t2, -140($fp)		#spill
  sw $t3, -144($fp)		#spill
  sw $t4, -4($fp)		#spill
  sw $t5, -148($fp)		#spill
  sw $t6, -152($fp)		#spill
label9:

main:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for temp37
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -8($fp) for x1
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp36
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -16($fp) for temp39
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t3, $v0
  subu $sp, $sp, 4		#alloc -20($fp) for n1
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -24($fp) for temp38
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -28($fp) for temp42
  move $t6, $t1
  subu $sp, $sp, 4		#alloc -32($fp) for temp43
  move $t7, $t4
  move $a0, $t6
  move $a1, $t7
  sw $t0, -4($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -12($fp)		#spill
  sw $t3, -16($fp)		#spill
  sw $t4, -20($fp)		#spill
  sw $t5, -24($fp)		#spill
  sw $t6, -28($fp)		#spill
  sw $t7, -32($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal myPow
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -36($fp) for temp41
  move $t0, $v0
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -40($fp) for temp44
  move $t1, $0
  move $v0, $t1
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
