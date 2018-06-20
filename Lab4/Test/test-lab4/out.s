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
  move $t0, $0
  subu $sp, $sp, 4		#alloc -8($fp) for a
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp2
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -16($fp) for b
  move $t3, $t2
  subu $sp, $sp, 4		#alloc -20($fp) for temp3
  move $t4, $0
  subu $sp, $sp, 4		#alloc -24($fp) for i
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -28($fp) for temp5
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t6, $v0
  subu $sp, $sp, 4		#alloc -32($fp) for n
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -36($fp) for temp4
  move $t8, $t7
  sw $t0, -4($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -12($fp)		#spill
  sw $t3, -16($fp)		#spill
  sw $t4, -20($fp)		#spill
  sw $t5, -24($fp)		#spill
  sw $t6, -28($fp)		#spill
  sw $t7, -32($fp)		#spill
  sw $t8, -36($fp)		#spill
label1:
  subu $sp, $sp, 4		#alloc -40($fp) for temp6
  lw $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -44($fp) for temp7
  lw $t3, -32($fp)
  move $t2, $t3
  sw $t0, -40($fp)		#spill
  sw $t1, -24($fp)		#spill
  sw $t2, -44($fp)		#spill
  sw $t3, -32($fp)		#spill
  lw $t0, -40($fp)
  lw $t1, -44($fp)
  blt $t0, $t1, label2
  sw $t0, -40($fp)		#spill
  sw $t1, -44($fp)		#spill
  j label3
label2:
  subu $sp, $sp, 4		#alloc -48($fp) for temp10
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -52($fp) for temp11
  lw $t3, -16($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -56($fp) for temp9
  add $t4, $t0, $t2
  subu $sp, $sp, 4		#alloc -60($fp) for c
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -64($fp) for temp8
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -68($fp) for temp13
  move $t7, $t3
  move $a0, $t7
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -72($fp) for temp15
  move $t8, $t3
  move $t1, $t8
  subu $sp, $sp, 4		#alloc -76($fp) for temp14
  move $t9, $t1
  subu $sp, $sp, 4		#alloc -80($fp) for temp17
  move $s0, $t5
  move $t3, $s0
  subu $sp, $sp, 4		#alloc -84($fp) for temp16
  move $s1, $t3
  subu $sp, $sp, 4		#alloc -88($fp) for temp20
  lw $s3, -24($fp)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -92($fp) for temp21
  li $s5, 1
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -96($fp) for temp19
  add $s5, $s2, $s4
  move $s3, $s5
  subu $sp, $sp, 4		#alloc -100($fp) for temp18
  move $s6, $s3
  sw $t0, -48($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -52($fp)		#spill
  sw $t3, -16($fp)		#spill
  sw $t4, -56($fp)		#spill
  sw $t5, -60($fp)		#spill
  sw $t6, -64($fp)		#spill
  sw $t7, -68($fp)		#spill
  sw $t8, -72($fp)		#spill
  sw $t9, -76($fp)		#spill
  sw $s0, -80($fp)		#spill
  sw $s1, -84($fp)		#spill
  sw $s2, -88($fp)		#spill
  sw $s3, -24($fp)		#spill
  sw $s4, -92($fp)		#spill
  sw $s5, -96($fp)		#spill
  sw $s6, -100($fp)		#spill
  j label1
label3:
  subu $sp, $sp, 4		#alloc -104($fp) for temp22
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
