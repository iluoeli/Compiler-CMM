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
  subu $sp, $sp, 4		#alloc -4($fp) for n
  subu $sp, $sp, 4		#alloc -8($fp) for temp1
  move $t0, $a0
  subu $sp, $sp, 4		#alloc -12($fp) for temp2
  li $t2, 1
  move $t1, $t2
  sw $t0, -8($fp)		#spill
  sw $t1, -12($fp)		#spill
  sw $a0, -4($fp)		#spill
  lw $t0, -8($fp)
  lw $t1, -12($fp)
  ble $t0, $t1, label1
  sw $t0, -8($fp)		#spill
  sw $t1, -12($fp)		#spill
  j label2
label1:
  subu $sp, $sp, 4		#alloc -16($fp) for temp3
  li $t1, 1
  move $t0, $t1
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -16($fp)		#spill
  j label3
label2:
  subu $sp, $sp, 4		#alloc -20($fp) for temp8
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -24($fp) for temp9
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -28($fp) for temp7
  sub $t3, $t0, $t2
  move $a0, $t3
  sw $t0, -20($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -24($fp)		#spill
  sw $t3, -28($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal f
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -32($fp) for temp5
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -36($fp) for temp6
  lw $t2, -4($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -40($fp) for temp4
  mul $t3, $t0, $t1
  move $v0, $t3
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -32($fp)		#spill
  sw $t1, -36($fp)		#spill
  sw $t2, -4($fp)		#spill
  sw $t3, -40($fp)		#spill
label3:

main:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for temp11
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -8($fp) for i
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp10
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -16($fp) for temp14
  move $t3, $t1
  move $a0, $t3
  sw $t0, -4($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -12($fp)		#spill
  sw $t3, -16($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal f
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -20($fp) for temp13
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -24($fp) for result
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -28($fp) for temp12
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -32($fp) for temp16
  move $t3, $t1
  move $a0, $t3
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -36($fp) for temp17
  move $t4, $0
  move $v0, $t4
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
