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
  subu $sp, $sp, 4		#alloc for p1
  subu $sp, $sp, 4		#alloc for p2
  subu $sp, $sp, 4		#alloc for p3
  subu $sp, $sp, 4		#alloc for p4
  subu $sp, $sp, 4		#alloc for temp12
  li $t1, 1
  mul $t0, $a0, $t1
  subu $sp, $sp, 4		#alloc for temp13
  li $t2, 2
  mul $t1, $a1, $t2
  subu $sp, $sp, 4		#alloc for temp10
  add $t2, $t0, $t1
  subu $sp, $sp, 4		#alloc for temp11
  li $t4, 3
  mul $t3, $a2, $t4
  subu $sp, $sp, 4		#alloc for temp8
  add $t4, $t2, $t3
  subu $sp, $sp, 4		#alloc for temp9
  li $t6, 4
  mul $t5, $a3, $t6
  subu $sp, $sp, 4		#alloc for temp6
  add $t6, $t4, $t5
  subu $sp, $sp, 4		#alloc for temp7
  lw $t8, 12($fp)
  li $t9, 5
  mul $t7, $t8, $t9
  subu $sp, $sp, 4		#alloc for temp4
  add $t9, $t6, $t7
  subu $sp, $sp, 4		#alloc for temp5
  lw $s1, 16($fp)
  li $s2, 6
  mul $s0, $s1, $s2
  subu $sp, $sp, 4		#alloc for temp2
  add $s2, $t9, $s0
  subu $sp, $sp, 4		#alloc for temp3
  lw $s4, 20($fp)
  li $s5, 7
  mul $s3, $s4, $s5
  subu $sp, $sp, 4		#alloc for temp1
  add $s5, $s2, $s3
  move $v0, $s5
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
  subu $sp, $sp, 4		#alloc for a1
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc for a2
  li $t2, 2
  move $t1, $t2
  subu $sp, $sp, 4		#alloc for a3
  li $t3, 3
  move $t2, $t3
  subu $sp, $sp, 4		#alloc for a4
  li $t4, 4
  move $t3, $t4
  subu $sp, $sp, 4		#alloc for a5
  li $t5, 5
  move $t4, $t5
  subu $sp, $sp, 4		#alloc for a6
  li $t6, 6
  move $t5, $t6
  subu $sp, $sp, 4		#alloc for a7
  li $t7, 7
  move $t6, $t7
  move $a0, $t0
  move $a1, $t1
  move $a2, $t2
  move $a3, $t3
  subu $sp, $sp, -8		#alloc for arg4~
  sw $t4, 0($sp)
  sw $t5, 4($sp)
  sw $t6, 8($sp)
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal f
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc for n
  move $t7, $v0
  move $a0, $t7
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
