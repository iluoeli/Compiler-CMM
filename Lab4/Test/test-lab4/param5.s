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

f:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for p1
  subu $sp, $sp, 4		#alloc -8($fp) for p2
  subu $sp, $sp, 4		#alloc -12($fp) for p3
  subu $sp, $sp, 4		#alloc -16($fp) for p4
  subu $sp, $sp, 4		#alloc -20($fp) for temp10
  move $t0, $a0
  subu $sp, $sp, 4		#alloc -24($fp) for temp11
  li $t2, 1
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -28($fp) for temp8
  mul $t2, $t0, $t1
  subu $sp, $sp, 4		#alloc -32($fp) for temp12
  move $t3, $a1
  subu $sp, $sp, 4		#alloc -36($fp) for temp13
  li $t5, 2
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -40($fp) for temp9
  mul $t5, $t3, $t4
  subu $sp, $sp, 4		#alloc -44($fp) for temp6
  add $t6, $t2, $t5
  subu $sp, $sp, 4		#alloc -48($fp) for temp14
  move $t7, $a2
  subu $sp, $sp, 4		#alloc -52($fp) for temp15
  li $t9, 3
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -56($fp) for temp7
  mul $t9, $t7, $t8
  subu $sp, $sp, 4		#alloc -60($fp) for temp4
  add $s0, $t6, $t9
  subu $sp, $sp, 4		#alloc -64($fp) for temp16
  move $s1, $a3
  subu $sp, $sp, 4		#alloc -68($fp) for temp17
  li $s3, 4
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -72($fp) for temp5
  mul $s3, $s1, $s2
  subu $sp, $sp, 4		#alloc -76($fp) for temp2
  add $s4, $s0, $s3
  subu $sp, $sp, 4		#alloc -80($fp) for temp18
  lw $s6, 12($fp)
  move $s5, $s6
  subu $sp, $sp, 4		#alloc -84($fp) for temp19
  #spill 0
  sw $t0, -20($fp)		#spill
  li $t0, 5
  move $s7, $t0
  subu $sp, $sp, 4		#alloc -88($fp) for temp3
  mul $t0, $s5, $s7
  subu $sp, $sp, 4		#alloc -92($fp) for temp1
  #spill 1
  sw $t1, -24($fp)		#spill
  add $t1, $s4, $t0
  move $v0, $t1
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
  subu $sp, $sp, 4		#alloc -4($fp) for temp20
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -8($fp) for a1
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp21
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -16($fp) for a2
  move $t3, $t2
  subu $sp, $sp, 4		#alloc -20($fp) for temp22
  li $t5, 3
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -24($fp) for a3
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -28($fp) for temp23
  li $t7, 4
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -32($fp) for a4
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -36($fp) for temp24
  li $t9, 5
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -40($fp) for a5
  move $t9, $t8
  subu $sp, $sp, 4		#alloc -44($fp) for temp26
  #spill 0
  sw $t0, -4($fp)		#spill
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -48($fp) for temp27
  #spill 1
  sw $t1, -8($fp)		#spill
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -52($fp) for temp28
  #spill 2
  sw $t2, -12($fp)		#spill
  move $t2, $t5
  subu $sp, $sp, 4		#alloc -56($fp) for temp29
  #spill 3
  sw $t3, -16($fp)		#spill
  move $t3, $t7
  subu $sp, $sp, 4		#alloc -60($fp) for temp30
  #spill 4
  sw $t4, -20($fp)		#spill
  move $t4, $t9
  move $a0, $t0
  move $a1, $t1
  move $a2, $t2
  move $a3, $t3
  subu $sp, $sp, -8		#alloc for arg4~
  sw $t4, 0($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal f
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -64($fp) for temp25
  #spill 5
  sw $t5, -24($fp)		#spill
  move $t5, $v0
  subu $sp, $sp, 4		#alloc -68($fp) for n
  #spill 6
  sw $t6, -28($fp)		#spill
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -72($fp) for temp32
  #spill 7
  sw $t7, -32($fp)		#spill
  move $t7, $t6
  move $a0, $t7
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -76($fp) for temp33
  #spill 8
  sw $t8, -36($fp)		#spill
  move $t8, $0
  move $v0, $t8
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
