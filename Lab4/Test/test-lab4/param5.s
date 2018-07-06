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
  subu $sp, $sp, 4
  subu $sp, $sp, 4
  subu $sp, $sp, 4
  subu $sp, $sp, 4
  subu $sp, $sp, 4
  move $t0, $a0
  subu $sp, $sp, 4
  li $t2, 1
  move $t1, $t2
  subu $sp, $sp, 4
  mul $t2, $t0, $t1
  subu $sp, $sp, 4
  move $t3, $a1
  subu $sp, $sp, 4
  li $t5, 2
  move $t4, $t5
  subu $sp, $sp, 4
  mul $t5, $t3, $t4
  subu $sp, $sp, 4
  add $t6, $t2, $t5
  subu $sp, $sp, 4
  move $t7, $a2
  subu $sp, $sp, 4
  li $t9, 3
  move $t8, $t9
  subu $sp, $sp, 4
  mul $t9, $t7, $t8
  subu $sp, $sp, 4
  add $s0, $t6, $t9
  subu $sp, $sp, 4
  move $s1, $a3
  subu $sp, $sp, 4
  li $s3, 4
  move $s2, $s3
  subu $sp, $sp, 4
  mul $s3, $s1, $s2
  subu $sp, $sp, 4
  add $s4, $s0, $s3
  subu $sp, $sp, 4
  lw $s6, 12($fp)
  move $s5, $s6
  subu $sp, $sp, 4
  sw $t0, -20($fp)
  li $t0, 5
  move $s7, $t0
  subu $sp, $sp, 4
  mul $t0, $s5, $s7
  subu $sp, $sp, 4
  sw $t1, -24($fp)
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
  subu $sp, $sp, 4
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4
  move $t3, $t2
  subu $sp, $sp, 4
  li $t5, 3
  move $t4, $t5
  subu $sp, $sp, 4
  move $t5, $t4
  subu $sp, $sp, 4
  li $t7, 4
  move $t6, $t7
  subu $sp, $sp, 4
  move $t7, $t6
  subu $sp, $sp, 4
  li $t9, 5
  move $t8, $t9
  subu $sp, $sp, 4
  move $t9, $t8
  subu $sp, $sp, 4
  move $s0, $t1
  subu $sp, $sp, 4
  move $s1, $t3
  subu $sp, $sp, 4
  move $s2, $t5
  subu $sp, $sp, 4
  move $s3, $t7
  subu $sp, $sp, 4
  move $s4, $t9
  move $a0, $s0
  move $a1, $s1
  move $a2, $s2
  move $a3, $s3
  subu $sp, $sp, 4
  sw $s4, 0($sp)
  sw $t0, -4($fp)
  sw $t1, -8($fp)
  sw $t2, -12($fp)
  sw $t3, -16($fp)
  sw $t4, -20($fp)
  sw $t5, -24($fp)
  sw $t6, -28($fp)
  sw $t7, -32($fp)
  sw $t8, -36($fp)
  sw $t9, -40($fp)
  sw $s0, -44($fp)
  sw $s1, -48($fp)
  sw $s2, -52($fp)
  sw $s3, -56($fp)
  sw $s4, -60($fp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal f
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  move $t2, $t1
  move $a0, $t2
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $t3, $0
  move $v0, $t3
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
