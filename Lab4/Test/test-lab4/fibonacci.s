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
  subu $sp, $sp, 4		#alloc for a
  move $t0, $0
  subu $sp, $sp, 4		#alloc for i
  move $t1, $0
  subu $sp, $sp, 4		#alloc for b
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc for n
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t3, $v0
label1:
  blt $t1, $t3, label2
  j label3
label2:
  move $t0, $t2
  subu $sp, $sp, 4		#alloc for c
  add $t4, $t0, $t0
  move $t2, $t4
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  li $t5, 1
  add $t1, $t1, $t5
  j label1
label3:
  move $v0, $0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
