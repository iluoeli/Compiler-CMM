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
  subu $sp, $sp, 4		#alloc -4($fp) for temp2
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -8($fp) for x
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp1
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -16($fp) for temp4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t3, $v0
  subu $sp, $sp, 4		#alloc -20($fp) for n
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -24($fp) for temp3
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -28($fp) for temp5
  move $t6, $t4
  subu $sp, $sp, 4		#alloc -32($fp) for temp9
  move $t7, $t4
  subu $sp, $sp, 4		#alloc -36($fp) for temp10
  li $t9, 2
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -40($fp) for temp7
  div $t9, $t7, $t8
  subu $sp, $sp, 4		#alloc -44($fp) for temp8
  li $s1, 2
  move $s0, $s1
  subu $sp, $sp, 4		#alloc -48($fp) for temp6
  mul $s1, $t9, $s0
  sw $t0, -4($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -12($fp)		#spill
  sw $t3, -16($fp)		#spill
  sw $t4, -20($fp)		#spill
  sw $t5, -24($fp)		#spill
  sw $t6, -28($fp)		#spill
  sw $t7, -32($fp)		#spill
  sw $t8, -36($fp)		#spill
  sw $t9, -40($fp)		#spill
  sw $s0, -44($fp)		#spill
  sw $s1, -48($fp)		#spill
  lw $t0, -28($fp)
  lw $t1, -48($fp)
  beq $t0, $t1, label1
  sw $t0, -28($fp)		#spill
  sw $t1, -48($fp)		#spill
  j label2
label1:
  subu $sp, $sp, 4		#alloc -52($fp) for temp12
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -56($fp) for result
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -60($fp) for temp11
  move $t2, $t1
  sw $t0, -52($fp)		#spill
  sw $t1, -56($fp)		#spill
  sw $t2, -60($fp)		#spill
  j label3
label2:
  subu $sp, $sp, 4		#alloc -64($fp) for temp14
  lw $t1, -8($fp)
  move $t0, $t1
  lw $t2, -56($fp)
  move $t2, $t0
  subu $sp, $sp, 4		#alloc -68($fp) for temp13
  move $t3, $t2
  sw $t0, -64($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -56($fp)		#spill
  sw $t3, -68($fp)		#spill
label3:
  subu $sp, $sp, 4		#alloc -72($fp) for temp17
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -76($fp) for temp18
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -80($fp) for temp16
  div $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -84($fp) for temp15
  move $t4, $t1
  sw $t0, -72($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -76($fp)		#spill
  sw $t3, -80($fp)		#spill
  sw $t4, -84($fp)		#spill
label4:
  subu $sp, $sp, 4		#alloc -88($fp) for temp19
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -92($fp) for temp20
  move $t2, $0
  sw $t0, -88($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -92($fp)		#spill
  lw $t0, -88($fp)
  lw $t1, -92($fp)
  bgt $t0, $t1, label5
  sw $t0, -88($fp)		#spill
  sw $t1, -92($fp)		#spill
  j label6
label5:
  subu $sp, $sp, 4		#alloc -96($fp) for temp23
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -100($fp) for temp24
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -104($fp) for temp22
  mul $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -108($fp) for temp21
  move $t4, $t1
  subu $sp, $sp, 4		#alloc -112($fp) for temp25
  lw $t6, -20($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -116($fp) for temp29
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -120($fp) for temp30
  li $t9, 2
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -124($fp) for temp27
  div $t9, $t7, $t8
  subu $sp, $sp, 4		#alloc -128($fp) for temp28
  li $s1, 2
  move $s0, $s1
  subu $sp, $sp, 4		#alloc -132($fp) for temp26
  mul $s1, $t9, $s0
  sw $t0, -96($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -100($fp)		#spill
  sw $t3, -104($fp)		#spill
  sw $t4, -108($fp)		#spill
  sw $t5, -112($fp)		#spill
  sw $t6, -20($fp)		#spill
  sw $t7, -116($fp)		#spill
  sw $t8, -120($fp)		#spill
  sw $t9, -124($fp)		#spill
  sw $s0, -128($fp)		#spill
  sw $s1, -132($fp)		#spill
  lw $t0, -112($fp)
  lw $t1, -132($fp)
  bne $t0, $t1, label7
  sw $t0, -112($fp)		#spill
  sw $t1, -132($fp)		#spill
  j label8
label7:
  subu $sp, $sp, 4		#alloc -136($fp) for temp33
  lw $t1, -56($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -140($fp) for temp34
  lw $t3, -8($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -144($fp) for temp32
  mul $t4, $t0, $t2
  move $t1, $t4
  subu $sp, $sp, 4		#alloc -148($fp) for temp31
  move $t5, $t1
  sw $t0, -136($fp)		#spill
  sw $t1, -56($fp)		#spill
  sw $t2, -140($fp)		#spill
  sw $t3, -8($fp)		#spill
  sw $t4, -144($fp)		#spill
  sw $t5, -148($fp)		#spill
label8:
  subu $sp, $sp, 4		#alloc -152($fp) for temp37
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -156($fp) for temp38
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -160($fp) for temp36
  div $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -164($fp) for temp35
  move $t4, $t1
  sw $t0, -152($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -156($fp)		#spill
  sw $t3, -160($fp)		#spill
  sw $t4, -164($fp)		#spill
  j label4
label6:
  subu $sp, $sp, 4		#alloc -168($fp) for temp40
  lw $t1, -56($fp)
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -172($fp) for temp41
  move $t2, $0
  move $v0, $t2
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
