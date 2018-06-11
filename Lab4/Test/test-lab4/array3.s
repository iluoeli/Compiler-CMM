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
subu $sp, $sp, 120		#alloc for temp1
subu $sp, $sp, 4		#alloc for a
la $t1, -120($fp)
move $t0, $t1
subu $sp, $sp, 4		#alloc for temp4
move $t1, $t0
subu $sp, $sp, 4		#alloc for temp5
li $t3, 4
move $t2, $t3
subu $sp, $sp, 4		#alloc for temp6
li $t4, 24
mul $t3, $t4, $t2
subu $sp, $sp, 4		#alloc for temp3
add $t4, $t1, $t3
subu $sp, $sp, 4		#alloc for temp7
li $t6, 5
move $t5, $t6
subu $sp, $sp, 4		#alloc for temp8
li $t7, 4
mul $t6, $t7, $t5
subu $sp, $sp, 4		#alloc for temp9
add $t7, $t4, $t6
subu $sp, $sp, 4		#alloc for temp10
li $t9, 4
move $t8, $t9
sw $t8, 0($t7)
subu $sp, $sp, 4		#alloc for temp13
move $t9, $t0
subu $sp, $sp, 4		#alloc for temp14
li $s1, 4
move $s0, $s1
subu $sp, $sp, 4		#alloc for temp15
li $s2, 24
mul $s1, $s2, $s0
subu $sp, $sp, 4		#alloc for temp12
add $s2, $t9, $s1
subu $sp, $sp, 4		#alloc for temp16
li $s4, 5
move $s3, $s4
subu $sp, $sp, 4		#alloc for temp17
li $s5, 4
mul $s4, $s5, $s3
subu $sp, $sp, 4		#alloc for temp18
add $s5, $s2, $s4
lw $s6, 0($s5)
move $a0, $s6
addi $sp, $sp, -4
sw $ra, 0($sp)
jal write
lw $ra, 0($sp)
addi $sp, $sp, 4
subu $sp, $sp, 4		#alloc for temp19
move $s7, $0
move $v0, $s7
addi, $sp, $fp, 0
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
