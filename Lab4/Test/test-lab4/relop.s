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
addi $sp, $sp, -4
addi $sp, $sp, -4
sw $ra, 0($sp)
jal read
lw $ra, 0($sp)
addi $sp, $sp, 4
move $t0, $v0
addi $sp, $sp, -4
li $t2, 0
li $t3, 1
sub $t1, $t2, $t3
ble $t0, $t1, label1
j label2
label1:
addi $sp, $sp, -4
li $t5, 0
li $t6, 1
sub $t4, $t5, $t6
move $a0, $t4
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
label2:
li $t7, 1
bgt $t0, $t7, label3
j label4
label3:
li $t8, 1
move $a0, $t8
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
label4:
li $t9, 0
bne $t0, $t9, label5
j label6
label5:
