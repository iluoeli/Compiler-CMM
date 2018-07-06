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
  subu $sp, $sp, 4
  subu $sp, $sp, 4
  move $t0, $a0
  subu $sp, $sp, 4
  add $t1, $t0, $0
  subu $sp, $sp, 4
  move $t2, $a0
  subu $sp, $sp, 4
  li $t4, 4
  add $t3, $t2, $t4
  subu $sp, $sp, 4
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
  subu $sp, $sp, 8
  subu $sp, $sp, 4
  la $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  add $t2, $t1, $0
  subu $sp, $sp, 4
  li $t4, 1
  move $t3, $t4
  sw $t3, 0($t2)
  subu $sp, $sp, 4
  lw $t5, 0($t2)
  move $t4, $t5
  subu $sp, $sp, 4
  move $t5, $t0
  subu $sp, $sp, 4
  li $t7, 4
  add $t6, $t5, $t7
  subu $sp, $sp, 4
  li $t8, 2
  move $t7, $t8
  sw $t7, 0($t6)
  subu $sp, $sp, 4
  lw $t9, 0($t6)
  move $t8, $t9
  subu $sp, $sp, 4
  move $t9, $t0
  move $a0, $t9
  sw $t0, -12($fp)
  sw $t1, -16($fp)
  sw $t2, -20($fp)
  sw $t3, -24($fp)
  sw $t4, -28($fp)
  sw $t5, -32($fp)
  sw $t6, -36($fp)
  sw $t7, -40($fp)
  sw $t8, -44($fp)
  sw $t9, -48($fp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal sum
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  move $t2, $t1
  subu $sp, $sp, 4
  move $t3, $t1
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $t4, $0
  move $v0, $t4
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
