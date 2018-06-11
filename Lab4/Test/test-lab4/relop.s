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
  subu $sp, $sp, 4		#alloc for i
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  blt $t0, $0, label1
  j label2
label1:
  subu $sp, $sp, 4		#alloc for temp4
  li $t2, 1
  sub $t1, $0, $t2
  move $a0, $t1
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
label2:
  beq $t0, $0, label3
  j label4
label3:
  move $a0, $0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
label4:
  bgt $t0, $0, label5
  j label6
label5:
  li $t2, 1
  move $a0, $t2
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
label6:
  subu $sp, $sp, 4		#alloc for temp13
  li $t4, 1
  sub $t3, $0, $t4
  ble $t0, $t3, label7
  j label8
label7:
  subu $sp, $sp, 4		#alloc for temp15
  li $t5, 1
  sub $t4, $0, $t5
  move $a0, $t4
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
label8:
  li $t5, 1
  bge $t0, $t5, label9
  j label10
label9:
  li $t6, 1
  move $a0, $t6
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
label10:
  bne $t0, $0, label11
  j label12
label11:
  move $a0, $0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
label12:
  move $v0, $0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
