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
  move $t3, $0
  sw $t0, -4($fp)
  sw $t1, -8($fp)
  sw $t2, -12($fp)
  sw $t3, -16($fp)
  lw $t0, -12($fp)
  lw $t1, -16($fp)
  blt $t0, $t1, label1
  sw $t0, -12($fp)
  sw $t1, -16($fp)
  j label2
label1:
  subu $sp, $sp, 4
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4
  sub $t1, $0, $t0
  move $a0, $t1
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -20($fp)
  sw $t1, -24($fp)
label2:
  subu $sp, $sp, 4
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  move $t2, $0
  sw $t0, -28($fp)
  sw $t1, -8($fp)
  sw $t2, -32($fp)
  lw $t0, -28($fp)
  lw $t1, -32($fp)
  beq $t0, $t1, label3
  sw $t0, -28($fp)
  sw $t1, -32($fp)
  j label4
label3:
  subu $sp, $sp, 4
  move $t0, $0
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -36($fp)
label4:
  subu $sp, $sp, 4
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  move $t2, $0
  sw $t0, -40($fp)
  sw $t1, -8($fp)
  sw $t2, -44($fp)
  lw $t0, -40($fp)
  lw $t1, -44($fp)
  bgt $t0, $t1, label5
  sw $t0, -40($fp)
  sw $t1, -44($fp)
  j label6
label5:
  subu $sp, $sp, 4
  li $t1, 1
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -48($fp)
label6:
  subu $sp, $sp, 4
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4
  sub $t3, $0, $t2
  sw $t0, -52($fp)
  sw $t1, -8($fp)
  sw $t2, -56($fp)
  sw $t3, -60($fp)
  lw $t0, -52($fp)
  lw $t1, -60($fp)
  ble $t0, $t1, label7
  sw $t0, -52($fp)
  sw $t1, -60($fp)
  j label8
label7:
  subu $sp, $sp, 4
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4
  sub $t1, $0, $t0
  move $a0, $t1
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -64($fp)
  sw $t1, -68($fp)
label8:
  subu $sp, $sp, 4
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  li $t3, 1
  move $t2, $t3
  sw $t0, -72($fp)
  sw $t1, -8($fp)
  sw $t2, -76($fp)
  lw $t0, -72($fp)
  lw $t1, -76($fp)
  bge $t0, $t1, label9
  sw $t0, -72($fp)
  sw $t1, -76($fp)
  j label10
label9:
  subu $sp, $sp, 4
  li $t1, 1
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -80($fp)
label10:
  subu $sp, $sp, 4
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4
  move $t2, $0
  sw $t0, -84($fp)
  sw $t1, -8($fp)
  sw $t2, -88($fp)
  lw $t0, -84($fp)
  lw $t1, -88($fp)
  bne $t0, $t1, label11
  sw $t0, -84($fp)
  sw $t1, -88($fp)
  j label12
label11:
  subu $sp, $sp, 4
  move $t0, $0
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  sw $t0, -92($fp)
label12:
  subu $sp, $sp, 4
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
