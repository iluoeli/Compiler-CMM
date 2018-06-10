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
subu $sp, $sp, 4
sw $ra, 0($sp)
sw $fp, -4($sp)
addi $fp, $sp, 4
li $t0, 1
move $a0, $t0
addi $sp, $sp, -4
jal write
li $t1, 0
move $v0, $t1
addi $sp, $sp, 4
jr $ra
