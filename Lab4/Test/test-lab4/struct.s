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

sum:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for arg
  subu $sp, $sp, 4		#alloc -8($fp) for temp4
  move $t0, $a0
  subu $sp, $sp, 4		#alloc -12($fp) for temp5
  add $t1, $t0, $0
  subu $sp, $sp, 4		#alloc -16($fp) for temp6
  move $t2, $a0
  subu $sp, $sp, 4		#alloc -20($fp) for temp7
  li $t4, 4
  add $t3, $t2, $t4
  subu $sp, $sp, 4		#alloc -24($fp) for temp1
  lw $t5, 0($t1)
  lw $t6, 0($t3)
  add $t4, $t5, $t6
  move $v0, $t4
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
  subu $sp, $sp, 8		#alloc for temp8
  subu $sp, $sp, 4		#alloc -12($fp) for n
  la $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -16($fp) for temp11
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -20($fp) for temp12
  add $t2, $t1, $0
  subu $sp, $sp, 4		#alloc -24($fp) for temp13
  li $t4, 1
  move $t3, $t4
  sw $t3, 0($t2)
  subu $sp, $sp, 4		#alloc -28($fp) for temp9
  lw $t5, 0($t2)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -32($fp) for temp16
  move $t5, $t0
  subu $sp, $sp, 4		#alloc -36($fp) for temp17
  li $t7, 4
  add $t6, $t5, $t7
  subu $sp, $sp, 4		#alloc -40($fp) for temp18
  li $t8, 2
  move $t7, $t8
  sw $t7, 0($t6)
  subu $sp, $sp, 4		#alloc -44($fp) for temp14
  lw $t9, 0($t6)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -48($fp) for temp21
  move $t9, $t0
  move $a0, $t9
  sw $t0, -12($fp)		#spill
  sw $t1, -16($fp)		#spill
  sw $t2, -20($fp)		#spill
  sw $t3, -24($fp)		#spill
  sw $t4, -28($fp)		#spill
  sw $t5, -32($fp)		#spill
  sw $t6, -36($fp)		#spill
  sw $t7, -40($fp)		#spill
  sw $t8, -44($fp)		#spill
  sw $t9, -48($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal sum
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -52($fp) for temp20
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -56($fp) for rlt
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -60($fp) for temp19
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -64($fp) for temp23
  move $t3, $t1
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -68($fp) for temp24
  move $t4, $0
  move $v0, $t4
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
