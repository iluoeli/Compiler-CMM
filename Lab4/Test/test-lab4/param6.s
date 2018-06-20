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
  subu $sp, $sp, 4		#alloc -20($fp) for temp12
  move $t0, $a0
  subu $sp, $sp, 4		#alloc -24($fp) for temp13
  li $t2, 1
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -28($fp) for temp10
  mul $t2, $t0, $t1
  subu $sp, $sp, 4		#alloc -32($fp) for temp14
  move $t3, $a1
  subu $sp, $sp, 4		#alloc -36($fp) for temp15
  li $t5, 2
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -40($fp) for temp11
  mul $t5, $t3, $t4
  subu $sp, $sp, 4		#alloc -44($fp) for temp8
  add $t6, $t2, $t5
  subu $sp, $sp, 4		#alloc -48($fp) for temp16
  move $t7, $a2
  subu $sp, $sp, 4		#alloc -52($fp) for temp17
  li $t9, 3
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -56($fp) for temp9
  mul $t9, $t7, $t8
  subu $sp, $sp, 4		#alloc -60($fp) for temp6
  add $s0, $t6, $t9
  subu $sp, $sp, 4		#alloc -64($fp) for temp18
  move $s1, $a3
  subu $sp, $sp, 4		#alloc -68($fp) for temp19
  li $s3, 4
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -72($fp) for temp7
  mul $s3, $s1, $s2
  subu $sp, $sp, 4		#alloc -76($fp) for temp4
  add $s4, $s0, $s3
  subu $sp, $sp, 4		#alloc -80($fp) for temp20
  lw $s6, 12($fp)
  move $s5, $s6
  subu $sp, $sp, 4		#alloc -84($fp) for temp21
  #spill 0
  sw $t0, -20($fp)		#spill
  li $t0, 5
  move $s7, $t0
  subu $sp, $sp, 4		#alloc -88($fp) for temp5
  mul $t0, $s5, $s7
  subu $sp, $sp, 4		#alloc -92($fp) for temp2
  #spill 1
  sw $t1, -24($fp)		#spill
  add $t1, $s4, $t0
  subu $sp, $sp, 4		#alloc -96($fp) for temp22
  #spill 2
  sw $t2, -28($fp)		#spill
  #spill 3
  sw $t3, -32($fp)		#spill
  lw $t3, 16($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -100($fp) for temp23
  #spill 4
  sw $t4, -36($fp)		#spill
  #spill 5
  sw $t5, -40($fp)		#spill
  li $t5, 6
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -104($fp) for temp3
  mul $t5, $t2, $t4
  subu $sp, $sp, 4		#alloc -108($fp) for temp1
  #spill 6
  sw $t6, -44($fp)		#spill
  add $t6, $t1, $t5
  move $v0, $t6
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
  subu $sp, $sp, 4		#alloc -4($fp) for temp24
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -8($fp) for a1
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp25
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -16($fp) for a2
  move $t3, $t2
  subu $sp, $sp, 4		#alloc -20($fp) for temp26
  li $t5, 3
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -24($fp) for a3
  move $t5, $t4
  subu $sp, $sp, 4		#alloc -28($fp) for temp27
  li $t7, 4
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -32($fp) for a4
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -36($fp) for temp28
  li $t9, 5
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -40($fp) for a5
  move $t9, $t8
  subu $sp, $sp, 4		#alloc -44($fp) for temp29
  li $s1, 6
  move $s0, $s1
  subu $sp, $sp, 4		#alloc -48($fp) for a6
  move $s1, $s0
  subu $sp, $sp, 4		#alloc -52($fp) for temp31
  move $s2, $t1
  subu $sp, $sp, 4		#alloc -56($fp) for temp32
  move $s3, $t3
  subu $sp, $sp, 4		#alloc -60($fp) for temp33
  move $s4, $t5
  subu $sp, $sp, 4		#alloc -64($fp) for temp34
  move $s5, $t7
  subu $sp, $sp, 4		#alloc -68($fp) for temp35
  move $s6, $t9
  subu $sp, $sp, 4		#alloc -72($fp) for temp36
  move $s7, $s1
  move $a0, $s2
  move $a1, $s3
  move $a2, $s4
  move $a3, $s5
  subu $sp, $sp, 8		#alloc for arg4~
  sw $s6, 0($sp)
  sw $s7, 4($sp)
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
  sw $s2, -52($fp)		#spill
  sw $s3, -56($fp)		#spill
  sw $s4, -60($fp)		#spill
  sw $s5, -64($fp)		#spill
  sw $s6, -68($fp)		#spill
  sw $s7, -72($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal f
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -76($fp) for temp30
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -80($fp) for n
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -84($fp) for temp38
  move $t2, $t1
  move $a0, $t2
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -88($fp) for temp39
  move $t3, $0
  move $v0, $t3
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
