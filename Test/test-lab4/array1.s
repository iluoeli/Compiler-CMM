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
  subu $sp, $sp, 16
  subu $sp, $sp, 4
  la $t1, -16($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  move $t2, $0
  subu $sp, $sp, 4
  li $t4, 4
  mul $t3, $t4, $t2
  subu $sp, $sp, 4
  add $t4, $t1, $t3
  subu $sp, $sp, 4
  li $t6, 1
  move $t5, $t6
  subu $sp, $sp, 4
  li $t7, 3
  move $t6, $t7
  subu $sp, $sp, 4
  add $t7, $t5, $t6
  sw $t7, 0($t4)
  subu $sp, $sp, 4
  lw $t9, 0($t4)
  move $t8, $t9
  subu $sp, $sp, 4
  move $t9, $t0
  subu $sp, $sp, 4
  move $s0, $0
  subu $sp, $sp, 4
  li $s2, 4
  mul $s1, $s2, $s0
  subu $sp, $sp, 4
  add $s2, $t9, $s1
  lw $s3, 0($s2)
  move $a0, $s3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $s4, $0
  move $v0, $s4
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
