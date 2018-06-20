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

search:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for target
  subu $sp, $sp, 20		#alloc for temp1
  subu $sp, $sp, 4		#alloc -28($fp) for x
  la $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -32($fp) for temp2
  move $t1, $0
  subu $sp, $sp, 4		#alloc -36($fp) for i
  move $t2, $t1
  sw $t0, -28($fp)		#spill
  sw $t1, -32($fp)		#spill
  sw $t2, -36($fp)		#spill
  sw $a0, -4($fp)		#spill
label1:
  subu $sp, $sp, 4		#alloc -40($fp) for temp3
  lw $t1, -36($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -44($fp) for temp4
  li $t3, 5
  move $t2, $t3
  sw $t0, -40($fp)		#spill
  sw $t1, -36($fp)		#spill
  sw $t2, -44($fp)		#spill
  lw $t0, -40($fp)
  lw $t1, -44($fp)
  blt $t0, $t1, label2
  sw $t0, -40($fp)		#spill
  sw $t1, -44($fp)		#spill
  j label3
label2:
  subu $sp, $sp, 4		#alloc -48($fp) for temp7
  lw $t1, -28($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -52($fp) for temp8
  lw $t3, -36($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -56($fp) for temp9
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -60($fp) for temp10
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -64($fp) for temp11
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t6, $v0
  sw $t6, 0($t5)
  subu $sp, $sp, 4		#alloc -68($fp) for temp5
  lw $t8, 0($t5)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -72($fp) for temp14
  move $t8, $t3
  subu $sp, $sp, 4		#alloc -76($fp) for temp15
  li $s0, 1
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -80($fp) for temp13
  add $s0, $t8, $t9
  move $t3, $s0
  subu $sp, $sp, 4		#alloc -84($fp) for temp12
  move $s1, $t3
  sw $t0, -48($fp)		#spill
  sw $t1, -28($fp)		#spill
  sw $t2, -52($fp)		#spill
  sw $t3, -36($fp)		#spill
  sw $t4, -56($fp)		#spill
  sw $t5, -60($fp)		#spill
  sw $t6, -64($fp)		#spill
  sw $t7, -68($fp)		#spill
  sw $t8, -72($fp)		#spill
  sw $t9, -76($fp)		#spill
  sw $s0, -80($fp)		#spill
  sw $s1, -84($fp)		#spill
  j label1
label3:
  subu $sp, $sp, 4		#alloc -88($fp) for temp17
  move $t0, $0
  subu $sp, $sp, 4		#alloc -92($fp) for left
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -96($fp) for temp16
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -100($fp) for temp19
  li $t4, 4
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -104($fp) for right
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -108($fp) for temp18
  move $t5, $t4
  sw $t0, -88($fp)		#spill
  sw $t1, -92($fp)		#spill
  sw $t2, -96($fp)		#spill
  sw $t3, -100($fp)		#spill
  sw $t4, -104($fp)		#spill
  sw $t5, -108($fp)		#spill
label4:
  subu $sp, $sp, 4		#alloc -112($fp) for temp20
  lw $t1, -92($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -116($fp) for temp21
  lw $t3, -104($fp)
  move $t2, $t3
  sw $t0, -112($fp)		#spill
  sw $t1, -92($fp)		#spill
  sw $t2, -116($fp)		#spill
  sw $t3, -104($fp)		#spill
  lw $t0, -112($fp)
  lw $t1, -116($fp)
  ble $t0, $t1, label5
  sw $t0, -112($fp)		#spill
  sw $t1, -116($fp)		#spill
  j label6
label5:
  subu $sp, $sp, 4		#alloc -120($fp) for temp26
  lw $t1, -92($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -124($fp) for temp27
  lw $t3, -104($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -128($fp) for temp24
  add $t4, $t0, $t2
  subu $sp, $sp, 4		#alloc -132($fp) for temp25
  li $t6, 2
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -136($fp) for temp23
  div $t6, $t4, $t5
  subu $sp, $sp, 4		#alloc -140($fp) for index
  move $t7, $t6
  subu $sp, $sp, 4		#alloc -144($fp) for temp22
  move $t8, $t7
  subu $sp, $sp, 4		#alloc -148($fp) for temp30
  lw $s0, -28($fp)
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -152($fp) for temp31
  move $s1, $t7
  subu $sp, $sp, 4		#alloc -156($fp) for temp32
  li $s3, 4
  mul $s2, $s3, $s1
  subu $sp, $sp, 4		#alloc -160($fp) for temp33
  add $s3, $t9, $s2
  subu $sp, $sp, 4		#alloc -164($fp) for middle
  lw $s5, 0($s3)
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -168($fp) for temp28
  move $s5, $s4
  subu $sp, $sp, 4		#alloc -172($fp) for temp34
  move $s6, $s4
  subu $sp, $sp, 4		#alloc -176($fp) for temp35
  #spill 0
  sw $t0, -120($fp)		#spill
  lw $t0, -4($fp)
  move $s7, $t0
  sw $t0, -4($fp)		#spill
  sw $t1, -92($fp)		#spill
  sw $t2, -124($fp)		#spill
  sw $t3, -104($fp)		#spill
  sw $t4, -128($fp)		#spill
  sw $t5, -132($fp)		#spill
  sw $t6, -136($fp)		#spill
  sw $t7, -140($fp)		#spill
  sw $t8, -144($fp)		#spill
  sw $t9, -148($fp)		#spill
  sw $s0, -28($fp)		#spill
  sw $s1, -152($fp)		#spill
  sw $s2, -156($fp)		#spill
  sw $s3, -160($fp)		#spill
  sw $s4, -164($fp)		#spill
  sw $s5, -168($fp)		#spill
  sw $s6, -172($fp)		#spill
  sw $s7, -176($fp)		#spill
  lw $t0, -172($fp)
  lw $t1, -176($fp)
  beq $t0, $t1, label7
  sw $t0, -172($fp)		#spill
  sw $t1, -176($fp)		#spill
  j label8
label7:
  subu $sp, $sp, 4		#alloc -180($fp) for temp36
  lw $t1, -140($fp)
  move $t0, $t1
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -180($fp)		#spill
  sw $t1, -140($fp)		#spill
label8:
  subu $sp, $sp, 4		#alloc -184($fp) for temp37
  move $t0, $0
  subu $sp, $sp, 4		#alloc -188($fp) for temp38
  lw $t2, -164($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -192($fp) for temp40
  lw $t4, -28($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -196($fp) for temp41
  lw $t6, -92($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -200($fp) for temp42
  li $t8, 4
  mul $t7, $t8, $t5
  subu $sp, $sp, 4		#alloc -204($fp) for temp43
  add $t8, $t3, $t7
  sw $t0, -184($fp)		#spill
  sw $t1, -188($fp)		#spill
  sw $t2, -164($fp)		#spill
  sw $t3, -192($fp)		#spill
  sw $t4, -28($fp)		#spill
  sw $t5, -196($fp)		#spill
  sw $t6, -92($fp)		#spill
  sw $t7, -200($fp)		#spill
  sw $t8, -204($fp)		#spill
  lw $t0, -188($fp)
  lw $t2, -204($fp)
  lw $t1, 0($t2)
  bgt $t0, $t1, label16
  sw $t0, -188($fp)		#spill
  sw $t2, -204($fp)		#spill
  j label14
label16:
  subu $sp, $sp, 4		#alloc -208($fp) for temp44
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -212($fp) for temp46
  lw $t3, -28($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -216($fp) for temp47
  lw $t5, -92($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -220($fp) for temp48
  li $t7, 4
  mul $t6, $t7, $t4
  subu $sp, $sp, 4		#alloc -224($fp) for temp49
  add $t7, $t2, $t6
  sw $t0, -208($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -212($fp)		#spill
  sw $t3, -28($fp)		#spill
  sw $t4, -216($fp)		#spill
  sw $t5, -92($fp)		#spill
  sw $t6, -220($fp)		#spill
  sw $t7, -224($fp)		#spill
  lw $t0, -208($fp)
  lw $t2, -224($fp)
  lw $t1, 0($t2)
  bge $t0, $t1, label15
  sw $t0, -208($fp)		#spill
  sw $t2, -224($fp)		#spill
  j label14
label15:
  subu $sp, $sp, 4		#alloc -228($fp) for temp50
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -232($fp) for temp51
  lw $t3, -164($fp)
  move $t2, $t3
  sw $t0, -228($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -232($fp)		#spill
  sw $t3, -164($fp)		#spill
  lw $t0, -228($fp)
  lw $t1, -232($fp)
  blt $t0, $t1, label13
  sw $t0, -228($fp)		#spill
  sw $t1, -232($fp)		#spill
  j label14
label13:
  lw $t0, -184($fp)
  li $t1, 1
  move $t0, $t1
  sw $t0, -184($fp)		#spill
label14:
  lw $t0, -184($fp)
  bne $t0, $0, label9
  sw $t0, -184($fp)		#spill
  j label12
label12:
  subu $sp, $sp, 4		#alloc -236($fp) for temp52
  move $t0, $0
  subu $sp, $sp, 4		#alloc -240($fp) for temp53
  lw $t2, -164($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -244($fp) for temp55
  lw $t4, -28($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -248($fp) for temp56
  lw $t6, -92($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -252($fp) for temp57
  li $t8, 4
  mul $t7, $t8, $t5
  subu $sp, $sp, 4		#alloc -256($fp) for temp58
  add $t8, $t3, $t7
  sw $t0, -236($fp)		#spill
  sw $t1, -240($fp)		#spill
  sw $t2, -164($fp)		#spill
  sw $t3, -244($fp)		#spill
  sw $t4, -28($fp)		#spill
  sw $t5, -248($fp)		#spill
  sw $t6, -92($fp)		#spill
  sw $t7, -252($fp)		#spill
  sw $t8, -256($fp)		#spill
  lw $t0, -240($fp)
  lw $t2, -256($fp)
  lw $t1, 0($t2)
  blt $t0, $t1, label19
  sw $t0, -240($fp)		#spill
  sw $t2, -256($fp)		#spill
  j label18
label19:
  subu $sp, $sp, 4		#alloc -260($fp) for temp59
  move $t0, $0
  subu $sp, $sp, 4		#alloc -264($fp) for temp60
  lw $t2, -4($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -268($fp) for temp62
  lw $t4, -28($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -272($fp) for temp63
  lw $t6, -92($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -276($fp) for temp64
  li $t8, 4
  mul $t7, $t8, $t5
  subu $sp, $sp, 4		#alloc -280($fp) for temp65
  add $t8, $t3, $t7
  sw $t0, -260($fp)		#spill
  sw $t1, -264($fp)		#spill
  sw $t2, -4($fp)		#spill
  sw $t3, -268($fp)		#spill
  sw $t4, -28($fp)		#spill
  sw $t5, -272($fp)		#spill
  sw $t6, -92($fp)		#spill
  sw $t7, -276($fp)		#spill
  sw $t8, -280($fp)		#spill
  lw $t0, -264($fp)
  lw $t2, -280($fp)
  lw $t1, 0($t2)
  bge $t0, $t1, label20
  sw $t0, -264($fp)		#spill
  sw $t2, -280($fp)		#spill
  j label22
label22:
  subu $sp, $sp, 4		#alloc -284($fp) for temp66
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -288($fp) for temp67
  lw $t3, -164($fp)
  move $t2, $t3
  sw $t0, -284($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -288($fp)		#spill
  sw $t3, -164($fp)		#spill
  lw $t0, -284($fp)
  lw $t1, -288($fp)
  blt $t0, $t1, label20
  sw $t0, -284($fp)		#spill
  sw $t1, -288($fp)		#spill
  j label21
label20:
  lw $t0, -260($fp)
  li $t1, 1
  move $t0, $t1
  sw $t0, -260($fp)		#spill
label21:
  lw $t0, -260($fp)
  bne $t0, $0, label17
  sw $t0, -260($fp)		#spill
  j label18
label17:
  lw $t0, -236($fp)
  li $t1, 1
  move $t0, $t1
  sw $t0, -236($fp)		#spill
label18:
  lw $t0, -236($fp)
  bne $t0, $0, label9
  sw $t0, -236($fp)		#spill
  j label10
label9:
  subu $sp, $sp, 4		#alloc -292($fp) for temp70
  lw $t1, -140($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -296($fp) for temp71
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -300($fp) for temp69
  sub $t3, $t0, $t2
  lw $t4, -104($fp)
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -304($fp) for temp68
  move $t5, $t4
  sw $t0, -292($fp)		#spill
  sw $t1, -140($fp)		#spill
  sw $t2, -296($fp)		#spill
  sw $t3, -300($fp)		#spill
  sw $t4, -104($fp)		#spill
  sw $t5, -304($fp)		#spill
  j label11
label10:
  subu $sp, $sp, 4		#alloc -308($fp) for temp74
  lw $t1, -140($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -312($fp) for temp75
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -316($fp) for temp73
  add $t3, $t0, $t2
  lw $t4, -92($fp)
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -320($fp) for temp72
  move $t5, $t4
  sw $t0, -308($fp)		#spill
  sw $t1, -140($fp)		#spill
  sw $t2, -312($fp)		#spill
  sw $t3, -316($fp)		#spill
  sw $t4, -92($fp)		#spill
  sw $t5, -320($fp)		#spill
label11:
  j label4
label6:
  subu $sp, $sp, 4		#alloc -324($fp) for temp77
  li $t1, 1
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -328($fp) for temp76
  sub $t1, $0, $t0
  move $v0, $t1
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
  subu $sp, $sp, 4		#alloc -4($fp) for temp79
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -8($fp) for n
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -12($fp) for temp78
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -16($fp) for temp82
  move $t3, $t1
  move $a0, $t3
  sw $t0, -4($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -12($fp)		#spill
  sw $t3, -16($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal search
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -20($fp) for temp81
  move $t0, $v0
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -24($fp) for temp83
  move $t1, $0
  move $v0, $t1
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
