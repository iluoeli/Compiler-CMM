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
  subu $sp, $sp, 4		#alloc -20($fp) for a
  la $t1, -16($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -24($fp) for temp4
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -28($fp) for temp5
  move $t2, $0
  subu $sp, $sp, 4		#alloc -32($fp) for temp6
  li $t4, 4
  mul $t3, $t4, $t2
  subu $sp, $sp, 4		#alloc -36($fp) for temp7
  add $t4, $t1, $t3
  subu $sp, $sp, 4		#alloc -40($fp) for temp9
  li $t6, 1
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -44($fp) for temp10
  li $t7, 3
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -48($fp) for temp8
  add $t7, $t5, $t6
  sw $t7, 0($t4)
  subu $sp, $sp, 4		#alloc -52($fp) for temp2
  lw $t9, 0($t4)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -56($fp) for temp13
  move $t9, $t0
  subu $sp, $sp, 4		#alloc -60($fp) for temp14
  move $s0, $0
  subu $sp, $sp, 4		#alloc -64($fp) for temp15
  li $s2, 4
  mul $s1, $s2, $s0
  subu $sp, $sp, 4		#alloc -68($fp) for temp16
  add $s2, $t9, $s1
  lw $s3, 0($s2)
  move $a0, $s3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -72($fp) for temp17
  move $s4, $0
  move $v0, $s4
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
