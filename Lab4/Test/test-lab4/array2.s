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
  subu $sp, $sp, 16		#alloc for temp1
  subu $sp, $sp, 4		#alloc for a
  la $t1, -16($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc for temp3
  move $t1, $t0
  subu $sp, $sp, 4		#alloc for temp4
  move $t2, $0
  subu $sp, $sp, 4		#alloc for temp5
  li $t4, 4
  mul $t3, $t4, $t2
  subu $sp, $sp, 4		#alloc for temp6
  add $t4, $t1, $t3
  subu $sp, $sp, 4		#alloc for temp7
  li $t6, 1
  move $t5, $t6
  sw $t5, 0($t4)
  subu $sp, $sp, 4		#alloc for temp9
  move $t6, $t0
  subu $sp, $sp, 4		#alloc for temp10
  li $t8, 1
  move $t7, $t8
  subu $sp, $sp, 4		#alloc for temp11
  li $t9, 4
  mul $t8, $t9, $t7
  subu $sp, $sp, 4		#alloc for temp12
  add $t9, $t6, $t8
  subu $sp, $sp, 4		#alloc for temp13
  li $s1, 2
  move $s0, $s1
  sw $s0, 0($t9)
  subu $sp, $sp, 4		#alloc for temp15
  move $s1, $t0
  subu $sp, $sp, 4		#alloc for temp16
  li $s3, 2
  move $s2, $s3
  subu $sp, $sp, 4		#alloc for temp17
  li $s4, 4
  mul $s3, $s4, $s2
  subu $sp, $sp, 4		#alloc for temp18
  add $s4, $s1, $s3
  subu $sp, $sp, 4		#alloc for temp19
  li $s6, 3
  move $s5, $s6
  sw $s5, 0($s4)
  subu $sp, $sp, 4		#alloc for temp21
  move $s6, $t0
  subu $sp, $sp, 4		#alloc for temp22
