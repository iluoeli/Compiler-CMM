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
  subu $sp, $sp, 4		#alloc -4($fp) for a
  subu $sp, $sp, 4		#alloc -8($fp) for b
  subu $sp, $sp, 4		#alloc -12($fp) for temp2
  move $t0, $a0
  subu $sp, $sp, 4		#alloc -16($fp) for temp3
  move $t1, $a1
  subu $sp, $sp, 4		#alloc -20($fp) for temp1
  add $t2, $t0, $t1
  move $v0, $t2
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
  subu $sp, $sp, 4		#alloc -4($fp) for temp4
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -8($fp) for i
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp5
  li $t3, 2
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -16($fp) for j
  move $t3, $t2
  subu $sp, $sp, 4		#alloc -20($fp) for temp7
  move $t4, $t1
  subu $sp, $sp, 4		#alloc -24($fp) for temp8
  move $t5, $t3
  move $a0, $t4
  move $a1, $t5
  sw $t0, -4($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -12($fp)		#spill
  sw $t3, -16($fp)		#spill
  sw $t4, -20($fp)		#spill
  sw $t5, -24($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal f
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -28($fp) for temp6
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -32($fp) for n
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -36($fp) for temp10
  move $t2, $t1
  move $a0, $t2
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -40($fp) for temp11
  move $t3, $0
  move $v0, $t3
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
