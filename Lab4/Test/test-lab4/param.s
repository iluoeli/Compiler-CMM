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
subu $sp, $sp, 4		#alloc for a
subu $sp, $sp, 4		#alloc for b
subu $sp, $sp, 4		#alloc for temp1
add $t0, $a0, $a1
move $v0, $t0
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
subu $sp, $sp, 4		#alloc for i
li $t1, 1
move $t0, $t1
subu $sp, $sp, 4		#alloc for j
li $t2, 2
move $t1, $t2
move $a0, $t0
move $a1, $t1
addi $sp, $sp, -4
sw $ra, 0($sp)
jal f
lw $ra, 0($sp)
addi $sp, $sp, 4
subu $sp, $sp, 4		#alloc for n
move $t2, $v0
move $a0, $t2
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
move $v0, $0
addi, $sp, $fp, 0
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
