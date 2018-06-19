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
  subu $sp, $sp, 8		#alloc for temp1
  subu $sp, $sp, 4		#alloc -12($fp) for cola
  la $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -16($fp) for temp4
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -20($fp) for temp5
  add $t2, $t1, $0
  subu $sp, $sp, 4		#alloc -24($fp) for temp6
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t3, $v0
  sw $t3, 0($t2)
  subu $sp, $sp, 4		#alloc -28($fp) for temp2
  lw $t5, 0($t2)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -32($fp) for temp9
  move $t5, $t0
  subu $sp, $sp, 4		#alloc -36($fp) for temp10
  li $t7, 4
  add $t6, $t5, $t7
  subu $sp, $sp, 4		#alloc -40($fp) for temp11
  li $t8, 3
  move $t7, $t8
  sw $t7, 0($t6)
  subu $sp, $sp, 4		#alloc -44($fp) for temp7
  lw $t9, 0($t6)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -48($fp) for temp16
  move $t9, $t0
  subu $sp, $sp, 4		#alloc -52($fp) for temp17
  add $s0, $t9, $0
  subu $sp, $sp, 4		#alloc -56($fp) for temp18
  move $s1, $t0
  subu $sp, $sp, 4		#alloc -60($fp) for temp19
  li $s3, 4
  add $s2, $s1, $s3
  subu $sp, $sp, 4		#alloc -64($fp) for temp13
  lw $s4, 0($s0)
  lw $s5, 0($s2)
  add $s3, $s4, $s5
  move $a0, $s3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -68($fp) for temp20
  move $s4, $0
  move $v0, $s4
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
