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
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -8($fp) for i
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp2
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -16($fp) for temp3
  move $t3, $0
  sw $t0, -4($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -12($fp)		#spill
  sw $t3, -16($fp)		#spill
  lw $t0, -12($fp)
  lw $t1, -16($fp)
  blt $t0, $t1, label1
  sw $t0, -12($fp)		#spill
  sw $t1, -16($fp)		#spill
  j label2
label1:
  subu $sp, $sp, 4		#alloc -20($fp) for temp6
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -24($fp) for temp5
  sub $t1, $0, $t0
  move $a0, $t1
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -20($fp)		#spill
  sw $t1, -24($fp)		#spill
label2:
  subu $sp, $sp, 4		#alloc -28($fp) for temp7
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -32($fp) for temp8
  move $t2, $0
  sw $t0, -28($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -32($fp)		#spill
  lw $t0, -28($fp)
  lw $t1, -32($fp)
  beq $t0, $t1, label3
  sw $t0, -28($fp)		#spill
  sw $t1, -32($fp)		#spill
  j label4
label3:
  subu $sp, $sp, 4		#alloc -36($fp) for temp10
  move $t0, $0
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -36($fp)		#spill
label4:
  subu $sp, $sp, 4		#alloc -40($fp) for temp11
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -44($fp) for temp12
  move $t2, $0
  sw $t0, -40($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -44($fp)		#spill
  lw $t0, -40($fp)
  lw $t1, -44($fp)
  bgt $t0, $t1, label5
  sw $t0, -40($fp)		#spill
  sw $t1, -44($fp)		#spill
  j label6
label5:
  subu $sp, $sp, 4		#alloc -48($fp) for temp14
  li $t1, 1
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -48($fp)		#spill
label6:
  subu $sp, $sp, 4		#alloc -52($fp) for temp15
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -56($fp) for temp17
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -60($fp) for temp16
  sub $t3, $0, $t2
  sw $t0, -52($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -56($fp)		#spill
  sw $t3, -60($fp)		#spill
  lw $t0, -52($fp)
  lw $t1, -60($fp)
  ble $t0, $t1, label7
  sw $t0, -52($fp)		#spill
  sw $t1, -60($fp)		#spill
  j label8
label7:
  subu $sp, $sp, 4		#alloc -64($fp) for temp20
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -68($fp) for temp19
  sub $t1, $0, $t0
  move $a0, $t1
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -64($fp)		#spill
  sw $t1, -68($fp)		#spill
label8:
  subu $sp, $sp, 4		#alloc -72($fp) for temp21
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -76($fp) for temp22
  li $t3, 1
  move $t2, $t3
  sw $t0, -72($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -76($fp)		#spill
  lw $t0, -72($fp)
  lw $t1, -76($fp)
  bge $t0, $t1, label9
  sw $t0, -72($fp)		#spill
  sw $t1, -76($fp)		#spill
  j label10
label9:
  subu $sp, $sp, 4		#alloc -80($fp) for temp24
  li $t1, 1
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -80($fp)		#spill
label10:
  subu $sp, $sp, 4		#alloc -84($fp) for temp25
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -88($fp) for temp26
  move $t2, $0
  sw $t0, -84($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -88($fp)		#spill
  lw $t0, -84($fp)
  lw $t1, -88($fp)
  bne $t0, $t1, label11
  sw $t0, -84($fp)		#spill
  sw $t1, -88($fp)		#spill
  j label12
label11:
  subu $sp, $sp, 4		#alloc -92($fp) for temp28
  move $t0, $0
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -92($fp)		#spill
label12:
  subu $sp, $sp, 4		#alloc -96($fp) for temp29
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
