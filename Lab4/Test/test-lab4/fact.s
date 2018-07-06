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

fact:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4
  subu $sp, $sp, 4
  move $t0, $a0
  subu $sp, $sp, 4
  li $t2, 1
  move $t1, $t2
  sw $t0, -8($fp)
  sw $t1, -12($fp)
  sw $a0, -4($fp)
  lw $t0, -8($fp)
  lw $t1, -12($fp)
  beq $t0, $t1, label1
  sw $t0, -8($fp)
  sw $t1, -12($fp)
  j label2
label1:
  subu $sp, $sp, 4
  lw $t1, -4($fp)
  move $t0, $t1
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -16($fp)
  sw $t1, -4($fp)
  j label3
label2:
  subu $sp, $sp, 4
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  move $t2, $t1
  subu $sp, $sp, 4
  li $t4, 1
  move $t3, $t4
  subu $sp, $sp, 4
  sub $t4, $t2, $t3
  move $a0, $t4
  sw $t0, -20($fp)
  sw $t1, -4($fp)
  sw $t2, -24($fp)
  sw $t3, -28($fp)
  sw $t4, -32($fp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal fact
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4
  lw $t2, -20($fp)
  mul $t1, $t2, $t0
  move $v0, $t1
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -36($fp)
  sw $t1, -40($fp)
  sw $t2, -20($fp)
label3:

main:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  move $t2, $t1
  subu $sp, $sp, 4
  move $t3, $t1
  subu $sp, $sp, 4
  li $t5, 1
  move $t4, $t5
  sw $t0, -4($fp)
  sw $t1, -8($fp)
  sw $t2, -12($fp)
  sw $t3, -16($fp)
  sw $t4, -20($fp)
  lw $t0, -16($fp)
  lw $t1, -20($fp)
  bgt $t0, $t1, label4
  sw $t0, -16($fp)
  sw $t1, -20($fp)
  j label5
label4:
  subu $sp, $sp, 4
  lw $t1, -8($fp)
  move $t0, $t1
  move $a0, $t0
  sw $t0, -24($fp)
  sw $t1, -8($fp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal fact
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4
  move $t1, $t0
  subu $sp, $sp, 4
  move $t2, $t1
  sw $t0, -28($fp)
  sw $t1, -32($fp)
  sw $t2, -36($fp)
  j label6
label5:
  subu $sp, $sp, 4
  li $t1, 1
  move $t0, $t1
  lw $t1, -32($fp)
  move $t1, $t0
  subu $sp, $sp, 4
  move $t2, $t1
  sw $t0, -40($fp)
  sw $t1, -32($fp)
  sw $t2, -44($fp)
label6:
  subu $sp, $sp, 4
  lw $t1, -32($fp)
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4
  move $t2, $0
  move $v0, $t2
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
