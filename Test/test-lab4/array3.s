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
  subu $sp, $sp, 120
  subu $sp, $sp, 4
  la $t1, -120($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  li $t3, 4
  move $t2, $t3
  subu $sp, $sp, 4
  li $t4, 24
  mul $t3, $t4, $t2
  subu $sp, $sp, 4
  add $t4, $t1, $t3
  subu $sp, $sp, 4
  li $t6, 5
  move $t5, $t6
  subu $sp, $sp, 4
  li $t7, 4
  mul $t6, $t7, $t5
  subu $sp, $sp, 4
  add $t7, $t4, $t6
  subu $sp, $sp, 4
  li $t9, 4
  move $t8, $t9
  sw $t8, 0($t7)
  subu $sp, $sp, 4
  lw $s0, 0($t7)
  move $t9, $s0
  subu $sp, $sp, 4
  move $s0, $t0
  subu $sp, $sp, 4
  li $s2, 4
  move $s1, $s2
  subu $sp, $sp, 4
  li $s3, 24
  mul $s2, $s3, $s1
  subu $sp, $sp, 4
  add $s3, $s0, $s2
  subu $sp, $sp, 4
  li $s5, 5
  move $s4, $s5
  subu $sp, $sp, 4
  li $s6, 4
  mul $s5, $s6, $s4
  subu $sp, $sp, 4
  add $s6, $s3, $s5
  lw $s7, 0($s6)
  move $a0, $s7
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  sw $t0, -124($fp)
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
