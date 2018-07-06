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
  sw $t5, 0($t4)
  subu $sp, $sp, 4
  lw $t7, 0($t4)
  move $t6, $t7
  subu $sp, $sp, 4
  move $t7, $t0
  subu $sp, $sp, 4
  li $t9, 1
  move $t8, $t9
  subu $sp, $sp, 4
  li $s0, 4
  mul $t9, $s0, $t8
  subu $sp, $sp, 4
  add $s0, $t7, $t9
  subu $sp, $sp, 4
  li $s2, 2
  move $s1, $s2
  sw $s1, 0($s0)
  subu $sp, $sp, 4
  lw $s3, 0($s0)
  move $s2, $s3
  subu $sp, $sp, 4
  move $s3, $t0
  subu $sp, $sp, 4
  li $s5, 2
  move $s4, $s5
  subu $sp, $sp, 4
  li $s6, 4
  mul $s5, $s6, $s4
  subu $sp, $sp, 4
  add $s6, $s3, $s5
  subu $sp, $sp, 4
  sw $t0, -20($fp)
  li $t0, 3
  move $s7, $t0
  sw $s7, 0($s6)
  subu $sp, $sp, 4
  sw $t1, -24($fp)
  lw $t1, 0($s6)
  move $t0, $t1
  subu $sp, $sp, 4
  sw $t2, -28($fp)
  lw $t2, -20($fp)
  move $t1, $t2
  subu $sp, $sp, 4
  sw $t3, -32($fp)
  sw $t4, -36($fp)
  li $t4, 3
  move $t3, $t4
  subu $sp, $sp, 4
  sw $t5, -40($fp)
  li $t5, 4
  mul $t4, $t5, $t3
  subu $sp, $sp, 4
  add $t5, $t1, $t4
  subu $sp, $sp, 4
  sw $t6, -44($fp)
  sw $t7, -48($fp)
  li $t7, 4
  move $t6, $t7
  sw $t6, 0($t5)
  subu $sp, $sp, 4
  sw $t8, -52($fp)
  lw $t8, 0($t5)
  move $t7, $t8
  subu $sp, $sp, 4
  move $t8, $t2
  subu $sp, $sp, 4
  sw $t9, -56($fp)
  move $t9, $0
  subu $sp, $sp, 4
  sw $t0, -92($fp)
  sw $t1, -96($fp)
  li $t1, 4
  mul $t0, $t1, $t9
  subu $sp, $sp, 4
  add $t1, $t8, $t0
  sw $t2, -20($fp)
  lw $t2, 0($t1)
  move $a0, $t2
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  sw $t3, -100($fp)
  sw $t4, -104($fp)
  lw $t4, -20($fp)
  move $t3, $t4
  subu $sp, $sp, 4
  sw $t5, -108($fp)
  sw $t6, -112($fp)
  li $t6, 1
  move $t5, $t6
  subu $sp, $sp, 4
  sw $t7, -116($fp)
  li $t7, 4
  mul $t6, $t7, $t5
  subu $sp, $sp, 4
  add $t7, $t3, $t6
  sw $t8, -120($fp)
  lw $t8, 0($t7)
  move $a0, $t8
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  sw $t9, -124($fp)
  move $t9, $t4
  subu $sp, $sp, 4
  sw $t0, -128($fp)
  sw $t1, -132($fp)
  li $t1, 2
  move $t0, $t1
  subu $sp, $sp, 4
  li $t2, 4
  mul $t1, $t2, $t0
  subu $sp, $sp, 4
  add $t2, $t9, $t1
  sw $t3, -136($fp)
  lw $t3, 0($t2)
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  sw $t4, -20($fp)
  sw $t5, -140($fp)
  lw $t5, -20($fp)
  move $t4, $t5
  subu $sp, $sp, 4
  sw $t6, -144($fp)
  sw $t7, -148($fp)
  li $t7, 3
  move $t6, $t7
  subu $sp, $sp, 4
  li $t8, 4
  mul $t7, $t8, $t6
  subu $sp, $sp, 4
  add $t8, $t4, $t7
  sw $t9, -152($fp)
  lw $t9, 0($t8)
  move $a0, $t9
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  sw $t0, -156($fp)
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
