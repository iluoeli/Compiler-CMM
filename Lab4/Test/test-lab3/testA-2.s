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
  subu $sp, $sp, 4		#alloc -8($fp) for dollar
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
  subu $sp, $sp, 4		#alloc -20($fp) for rmb
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -24($fp) for temp3
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -28($fp) for temp5
  move $t6, $t1
  subu $sp, $sp, 4		#alloc -32($fp) for temp6
  li $t8, 100
  move $t7, $t8
  sw $t0, -4($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -12($fp)		#spill
  sw $t3, -16($fp)		#spill
  sw $t4, -20($fp)		#spill
  sw $t5, -24($fp)		#spill
  sw $t6, -28($fp)		#spill
  sw $t7, -32($fp)		#spill
  lw $t0, -28($fp)
  lw $t1, -32($fp)
  bgt $t0, $t1, label1
  sw $t0, -28($fp)		#spill
  sw $t1, -32($fp)		#spill
  j label2
label1:
  subu $sp, $sp, 4		#alloc -36($fp) for temp7
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -40($fp) for temp8
  li $t3, 50
  move $t2, $t3
  sw $t0, -36($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -40($fp)		#spill
  lw $t0, -36($fp)
  lw $t1, -40($fp)
  blt $t0, $t1, label4
  sw $t0, -36($fp)		#spill
  sw $t1, -40($fp)		#spill
  j label5
label4:
  subu $sp, $sp, 4		#alloc -44($fp) for temp11
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -48($fp) for temp12
  lw $t3, -8($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -52($fp) for temp10
  add $t4, $t0, $t2
  move $a0, $t4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -44($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -48($fp)		#spill
  sw $t3, -8($fp)		#spill
  sw $t4, -52($fp)		#spill
  j label6
label5:
  subu $sp, $sp, 4		#alloc -56($fp) for temp15
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -60($fp) for temp16
  lw $t3, -8($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -64($fp) for temp14
  sub $t4, $t0, $t2
  move $a0, $t4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -56($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -60($fp)		#spill
  sw $t3, -8($fp)		#spill
  sw $t4, -64($fp)		#spill
label6:
  j label3
label2:
  subu $sp, $sp, 4		#alloc -68($fp) for temp17
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -72($fp) for temp18
  li $t3, 100
  move $t2, $t3
  sw $t0, -68($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -72($fp)		#spill
  lw $t0, -68($fp)
  lw $t1, -72($fp)
  beq $t0, $t1, label7
  sw $t0, -68($fp)		#spill
  sw $t1, -72($fp)		#spill
  j label8
label7:
  subu $sp, $sp, 4		#alloc -76($fp) for temp19
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -80($fp) for temp20
  li $t3, 100
  move $t2, $t3
  sw $t0, -76($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -80($fp)		#spill
  lw $t0, -76($fp)
  lw $t1, -80($fp)
  blt $t0, $t1, label10
  sw $t0, -76($fp)		#spill
  sw $t1, -80($fp)		#spill
  j label11
label10:
  subu $sp, $sp, 4		#alloc -84($fp) for temp22
  lw $t1, -20($fp)
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -84($fp)		#spill
  sw $t1, -20($fp)		#spill
  j label12
label11:
  subu $sp, $sp, 4		#alloc -88($fp) for temp25
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -92($fp) for temp26
  li $t3, 100
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -96($fp) for temp24
  sub $t3, $t0, $t2
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -88($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -92($fp)		#spill
  sw $t3, -96($fp)		#spill
label12:
  j label9
label8:
  subu $sp, $sp, 4		#alloc -100($fp) for temp27
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -104($fp) for temp28
  li $t3, 100
  move $t2, $t3
  sw $t0, -100($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -104($fp)		#spill
  lw $t0, -100($fp)
  lw $t1, -104($fp)
  blt $t0, $t1, label13
  sw $t0, -100($fp)		#spill
  sw $t1, -104($fp)		#spill
  j label14
label13:
  subu $sp, $sp, 4		#alloc -108($fp) for temp31
  lw $t1, -20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -112($fp) for temp32
  lw $t3, -8($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -116($fp) for temp29
  add $t4, $t0, $t2
  subu $sp, $sp, 4		#alloc -120($fp) for temp30
  li $t6, 100
  move $t5, $t6
  sw $t0, -108($fp)		#spill
  sw $t1, -20($fp)		#spill
  sw $t2, -112($fp)		#spill
  sw $t3, -8($fp)		#spill
  sw $t4, -116($fp)		#spill
  sw $t5, -120($fp)		#spill
  lw $t0, -116($fp)
  lw $t1, -120($fp)
  bgt $t0, $t1, label15
  sw $t0, -116($fp)		#spill
  sw $t1, -120($fp)		#spill
  j label16
label15:
  subu $sp, $sp, 4		#alloc -124($fp) for temp35
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -128($fp) for temp36
  li $t3, 100
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -132($fp) for temp34
  add $t3, $t0, $t2
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -124($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -128($fp)		#spill
  sw $t3, -132($fp)		#spill
  j label17
label16:
  subu $sp, $sp, 4		#alloc -136($fp) for temp38
  li $t1, 100
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -136($fp)		#spill
label17:
label14:
label9:
label3:
  subu $sp, $sp, 4		#alloc -140($fp) for temp41
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -144($fp) for temp42
  lw $t3, -20($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -148($fp) for temp40
  add $t4, $t0, $t2
  move $a0, $t4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -152($fp) for temp43
  move $t5, $0
  move $v0, $t5
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
