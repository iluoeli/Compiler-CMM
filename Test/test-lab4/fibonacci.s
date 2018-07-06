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
  subu $sp, $sp, 4
  move $t0, $0
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4
  move $t3, $t2
  subu $sp, $sp, 4
  move $t4, $0
  subu $sp, $sp, 4
  move $t5, $t4
  subu $sp, $sp, 4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t6, $v0
  subu $sp, $sp, 4
  move $t7, $t6
  subu $sp, $sp, 4
  move $t8, $t7
  sw $t0, -4($fp)
  sw $t1, -8($fp)
  sw $t2, -12($fp)
  sw $t3, -16($fp)
  sw $t4, -20($fp)
  sw $t5, -24($fp)
  sw $t6, -28($fp)
  sw $t7, -32($fp)
  sw $t8, -36($fp)
label1:
  subu $sp, $sp, 4
  lw $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  lw $t3, -32($fp)
  move $t2, $t3
  sw $t0, -40($fp)
  sw $t1, -24($fp)
  sw $t2, -44($fp)
  sw $t3, -32($fp)
  lw $t0, -40($fp)
  lw $t1, -44($fp)
  blt $t0, $t1, label2
  sw $t0, -40($fp)
  sw $t1, -44($fp)
  j label3
label2:
  subu $sp, $sp, 4
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  lw $t3, -16($fp)
  move $t2, $t3
  subu $sp, $sp, 4
  add $t4, $t0, $t2
  subu $sp, $sp, 4
  move $t5, $t4
  subu $sp, $sp, 4
  move $t6, $t5
  subu $sp, $sp, 4
  move $t7, $t3
  move $a0, $t7
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $t8, $t3
  move $t1, $t8
  subu $sp, $sp, 4
  move $t9, $t1
  subu $sp, $sp, 4
  move $s0, $t5
  move $t3, $s0
  subu $sp, $sp, 4
  move $s1, $t3
  subu $sp, $sp, 4
  lw $s3, -24($fp)
  move $s2, $s3
  subu $sp, $sp, 4
  li $s5, 1
  move $s4, $s5
  subu $sp, $sp, 4
  add $s5, $s2, $s4
  move $s3, $s5
  subu $sp, $sp, 4
  move $s6, $s3
  sw $t0, -48($fp)
  sw $t1, -8($fp)
  sw $t2, -52($fp)
  sw $t3, -16($fp)
  sw $t4, -56($fp)
  sw $t5, -60($fp)
  sw $t6, -64($fp)
  sw $t7, -68($fp)
  sw $t8, -72($fp)
  sw $t9, -76($fp)
  sw $s0, -80($fp)
  sw $s1, -84($fp)
  sw $s2, -88($fp)
  sw $s3, -24($fp)
  sw $s4, -92($fp)
  sw $s5, -96($fp)
  sw $s6, -100($fp)
  j label1
label3:
  subu $sp, $sp, 4
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
