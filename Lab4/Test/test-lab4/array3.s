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
  subu $sp, $sp, 4		#alloc -124($fp) for a
  la $t1, -120($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -128($fp) for temp5
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -132($fp) for temp6
  li $t3, 4
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -136($fp) for temp7
  li $t4, 24
  mul $t3, $t4, $t2
  subu $sp, $sp, 4		#alloc -140($fp) for temp4
  add $t4, $t1, $t3
  subu $sp, $sp, 4		#alloc -144($fp) for temp8
  li $t6, 5
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -148($fp) for temp9
  li $t7, 4
  mul $t6, $t7, $t5
  subu $sp, $sp, 4		#alloc -152($fp) for temp10
  add $t7, $t4, $t6
  subu $sp, $sp, 4		#alloc -156($fp) for temp11
  li $t9, 4
  move $t8, $t9
  sw $t8, 0($t7)
  subu $sp, $sp, 4		#alloc -160($fp) for temp2
  lw $s0, 0($t7)
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -164($fp) for temp15
  move $s0, $t0
  subu $sp, $sp, 4		#alloc -168($fp) for temp16
  li $s2, 4
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -172($fp) for temp17
  li $s3, 24
  mul $s2, $s3, $s1
  subu $sp, $sp, 4		#alloc -176($fp) for temp14
  add $s3, $s0, $s2
  subu $sp, $sp, 4		#alloc -180($fp) for temp18
  li $s5, 5
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -184($fp) for temp19
  li $s6, 4
  mul $s5, $s6, $s4
  subu $sp, $sp, 4		#alloc -188($fp) for temp20
  add $s6, $s3, $s5
  lw $s7, 0($s6)
  move $a0, $s7
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -192($fp) for temp21
  #spill 0
  sw $t0, -124($fp)		#spill
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
