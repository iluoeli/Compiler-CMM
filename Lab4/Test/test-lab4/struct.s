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
  subu $sp, $sp, 4		#alloc for arg
  subu $sp, $sp, 4		#alloc for temp5
  add $t0, $a0, $0
  subu $sp, $sp, 4		#alloc for temp7
  li $t2, 4
  add $t1, $a0, $t2
  subu $sp, $sp, 4		#alloc for temp1
  lw $t3, 0($t0)
  lw $t4, 0($t1)
  add $t2, $t3, $t4
  move $v0, $t2
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
  subu $sp, $sp, 4		#alloc for n
  la $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc for temp10
  move $t1, $t0
  subu $sp, $sp, 4		#alloc for temp11
  add $t2, $t1, $0
  subu $sp, $sp, 4		#alloc for temp12
  li $t4, 1
  move $t3, $t4
  sw $t3, 0($t2)
  subu $sp, $sp, 4		#alloc for temp14
  move $t4, $t0
  subu $sp, $sp, 4		#alloc for temp15
  li $t6, 4
  add $t5, $t4, $t6
  subu $sp, $sp, 4		#alloc for temp16
  li $t7, 2
  move $t6, $t7
  sw $t6, 0($t5)
  subu $sp, $sp, 4		#alloc for temp18
  move $t7, $t0
  move $a0, $t7
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal sum
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc for temp17
  move $t8, $v0
  subu $sp, $sp, 4		#alloc for rlt
  move $t9, $t8
  subu $sp, $sp, 4		#alloc for temp19
  move $s0, $t9
  move $a0, $s0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc for temp20
  move $s1, $0
  move $v0, $s1
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
