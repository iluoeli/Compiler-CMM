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
  subu $sp, $sp, 80		#alloc for temp1
  subu $sp, $sp, 4		#alloc -84($fp) for cola
  la $t1, -80($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -88($fp) for temp2
  li $t2, 10
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -92($fp) for N
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -96($fp) for temp4
  move $t3, $0
  subu $sp, $sp, 4		#alloc -100($fp) for i
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -104($fp) for temp3
  move $t5, $t4
  sw $t0, -84($fp)		#spill
  sw $t1, -88($fp)		#spill
  sw $t2, -92($fp)		#spill
  sw $t3, -96($fp)		#spill
  sw $t4, -100($fp)		#spill
  sw $t5, -104($fp)		#spill
label1:
  subu $sp, $sp, 4		#alloc -108($fp) for temp5
  lw $t1, -100($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -112($fp) for temp6
  lw $t3, -92($fp)
  move $t2, $t3
  sw $t0, -108($fp)		#spill
  sw $t1, -100($fp)		#spill
  sw $t2, -112($fp)		#spill
  sw $t3, -92($fp)		#spill
  lw $t0, -108($fp)
  lw $t1, -112($fp)
  blt $t0, $t1, label2
  sw $t0, -108($fp)		#spill
  sw $t1, -112($fp)		#spill
  j label3
label2:
  subu $sp, $sp, 4		#alloc -116($fp) for temp10
  lw $t1, -84($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -120($fp) for temp11
  lw $t3, -100($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -124($fp) for temp12
  li $t5, 8
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -128($fp) for temp9
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -132($fp) for temp13
  add $t6, $t5, $0
  subu $sp, $sp, 4		#alloc -136($fp) for temp14
  li $t8, 10
  move $t7, $t8
  sw $t7, 0($t6)
  subu $sp, $sp, 4		#alloc -140($fp) for temp7
  lw $t9, 0($t6)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -144($fp) for temp18
  move $t9, $t1
  subu $sp, $sp, 4		#alloc -148($fp) for temp19
  move $s0, $t3
  subu $sp, $sp, 4		#alloc -152($fp) for temp20
  li $s2, 8
  mul $s1, $s2, $s0
  subu $sp, $sp, 4		#alloc -156($fp) for temp17
  add $s2, $t9, $s1
  subu $sp, $sp, 4		#alloc -160($fp) for temp21
  li $s4, 4
  add $s3, $s2, $s4
  subu $sp, $sp, 4		#alloc -164($fp) for temp22
  move $s4, $t3
  sw $s4, 0($s3)
  subu $sp, $sp, 4		#alloc -168($fp) for temp15
  lw $s6, 0($s3)
  move $s5, $s6
  subu $sp, $sp, 4		#alloc -172($fp) for temp25
  move $s6, $t3
  subu $sp, $sp, 4		#alloc -176($fp) for temp26
  #spill 0
  sw $t0, -116($fp)		#spill
  li $t0, 1
  move $s7, $t0
  subu $sp, $sp, 4		#alloc -180($fp) for temp24
  add $t0, $s6, $s7
  move $t3, $t0
  subu $sp, $sp, 4		#alloc -184($fp) for temp23
  #spill 1
  sw $t1, -84($fp)		#spill
  move $t1, $t3
  sw $t0, -180($fp)		#spill
  sw $t1, -184($fp)		#spill
  sw $t2, -120($fp)		#spill
  sw $t3, -100($fp)		#spill
  sw $t4, -124($fp)		#spill
  sw $t5, -128($fp)		#spill
  sw $t6, -132($fp)		#spill
  sw $t7, -136($fp)		#spill
  sw $t8, -140($fp)		#spill
  sw $t9, -144($fp)		#spill
  sw $s0, -148($fp)		#spill
  sw $s1, -152($fp)		#spill
  sw $s2, -156($fp)		#spill
  sw $s3, -160($fp)		#spill
  sw $s4, -164($fp)		#spill
  sw $s5, -168($fp)		#spill
  sw $s6, -172($fp)		#spill
  sw $s7, -176($fp)		#spill
  j label1
label3:
  subu $sp, $sp, 4		#alloc -188($fp) for temp28
  move $t0, $0
  lw $t1, -100($fp)
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -192($fp) for temp27
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -196($fp) for temp30
  move $t3, $0
  subu $sp, $sp, 4		#alloc -200($fp) for add
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -204($fp) for temp29
  move $t5, $t4
  sw $t0, -188($fp)		#spill
  sw $t1, -100($fp)		#spill
  sw $t2, -192($fp)		#spill
  sw $t3, -196($fp)		#spill
  sw $t4, -200($fp)		#spill
  sw $t5, -204($fp)		#spill
label4:
  subu $sp, $sp, 4		#alloc -208($fp) for temp31
  lw $t1, -100($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -212($fp) for temp32
  lw $t3, -92($fp)
  move $t2, $t3
  sw $t0, -208($fp)		#spill
  sw $t1, -100($fp)		#spill
  sw $t2, -212($fp)		#spill
  sw $t3, -92($fp)		#spill
  lw $t0, -208($fp)
  lw $t1, -212($fp)
  blt $t0, $t1, label5
  sw $t0, -208($fp)		#spill
  sw $t1, -212($fp)		#spill
  j label6
label5:
  subu $sp, $sp, 4		#alloc -216($fp) for temp34
  move $t0, $0
  subu $sp, $sp, 4		#alloc -220($fp) for j
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -224($fp) for temp33
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -228($fp) for temp37
  lw $t4, -200($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -232($fp) for temp40
  lw $t6, -84($fp)
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -236($fp) for temp41
  lw $t8, -100($fp)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -240($fp) for temp42
  li $s0, 8
  mul $t9, $s0, $t7
  subu $sp, $sp, 4		#alloc -244($fp) for temp39
  add $s0, $t5, $t9
  subu $sp, $sp, 4		#alloc -248($fp) for temp43
  li $s2, 4
  add $s1, $s0, $s2
  subu $sp, $sp, 4		#alloc -252($fp) for temp36
  lw $s3, 0($s1)
  add $s2, $t3, $s3
  move $t4, $s2
  subu $sp, $sp, 4		#alloc -256($fp) for temp35
  move $s3, $t4
  sw $t0, -216($fp)		#spill
  sw $t1, -220($fp)		#spill
  sw $t2, -224($fp)		#spill
  sw $t3, -228($fp)		#spill
  sw $t4, -200($fp)		#spill
  sw $t5, -232($fp)		#spill
  sw $t6, -84($fp)		#spill
  sw $t7, -236($fp)		#spill
  sw $t8, -100($fp)		#spill
  sw $t9, -240($fp)		#spill
  sw $s0, -244($fp)		#spill
  sw $s1, -248($fp)		#spill
  sw $s2, -252($fp)		#spill
  sw $s3, -256($fp)		#spill
label7:
  subu $sp, $sp, 4		#alloc -260($fp) for temp44
  lw $t1, -220($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -264($fp) for temp45
  lw $t3, -92($fp)
  move $t2, $t3
  sw $t0, -260($fp)		#spill
  sw $t1, -220($fp)		#spill
  sw $t2, -264($fp)		#spill
  sw $t3, -92($fp)		#spill
  lw $t0, -260($fp)
  lw $t1, -264($fp)
  blt $t0, $t1, label8
  sw $t0, -260($fp)		#spill
  sw $t1, -264($fp)		#spill
  j label9
label8:
  subu $sp, $sp, 4		#alloc -268($fp) for temp49
  lw $t1, -84($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -272($fp) for temp50
  lw $t3, -100($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -276($fp) for temp51
  li $t5, 8
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -280($fp) for temp48
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -284($fp) for temp52
  add $t6, $t5, $0
  subu $sp, $sp, 4		#alloc -288($fp) for temp57
  move $t7, $t1
  subu $sp, $sp, 4		#alloc -292($fp) for temp58
  move $t8, $t3
  subu $sp, $sp, 4		#alloc -296($fp) for temp59
  li $s0, 8
  mul $t9, $s0, $t8
  subu $sp, $sp, 4		#alloc -300($fp) for temp56
  add $s0, $t7, $t9
  subu $sp, $sp, 4		#alloc -304($fp) for temp60
  add $s1, $s0, $0
  subu $sp, $sp, 4		#alloc -308($fp) for temp61
  lw $s3, -200($fp)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -312($fp) for temp64
  move $s4, $t1
  subu $sp, $sp, 4		#alloc -316($fp) for temp65
  lw $s6, -220($fp)
  move $s5, $s6
  subu $sp, $sp, 4		#alloc -320($fp) for temp66
  #spill 0
  sw $t0, -268($fp)		#spill
  li $t0, 8
  mul $s7, $t0, $s5
  subu $sp, $sp, 4		#alloc -324($fp) for temp63
  add $t0, $s4, $s7
  subu $sp, $sp, 4		#alloc -328($fp) for temp67
  #spill 1
  sw $t1, -84($fp)		#spill
  #spill 2
  sw $t2, -272($fp)		#spill
  li $t2, 4
  add $t1, $t0, $t2
  subu $sp, $sp, 4		#alloc -332($fp) for temp55
  #spill 3
  sw $t3, -100($fp)		#spill
  lw $t3, 0($t1)
  mul $t2, $s2, $t3
  subu $sp, $sp, 4		#alloc -336($fp) for temp53
  #spill 4
  sw $t4, -276($fp)		#spill
  lw $t4, 0($s1)
  add $t3, $t4, $t2
  sw $t3, 0($t6)
  subu $sp, $sp, 4		#alloc -340($fp) for temp46
  #spill 5
  sw $t5, -280($fp)		#spill
  lw $t5, 0($t6)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -344($fp) for temp70
  move $t5, $s6
  subu $sp, $sp, 4		#alloc -348($fp) for temp71
  #spill 6
  sw $t6, -284($fp)		#spill
  #spill 7
  sw $t7, -288($fp)		#spill
  li $t7, 1
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -352($fp) for temp69
  add $t7, $t5, $t6
  move $s6, $t7
  subu $sp, $sp, 4		#alloc -356($fp) for temp68
  #spill 8
  sw $t8, -292($fp)		#spill
  move $t8, $s6
  sw $t0, -324($fp)		#spill
  sw $t1, -328($fp)		#spill
  sw $t2, -332($fp)		#spill
  sw $t3, -336($fp)		#spill
  sw $t4, -340($fp)		#spill
  sw $t5, -344($fp)		#spill
  sw $t6, -348($fp)		#spill
  sw $t7, -352($fp)		#spill
  sw $t8, -356($fp)		#spill
  sw $t9, -296($fp)		#spill
  sw $s0, -300($fp)		#spill
  sw $s1, -304($fp)		#spill
  sw $s2, -308($fp)		#spill
  sw $s3, -200($fp)		#spill
  sw $s4, -312($fp)		#spill
  sw $s5, -316($fp)		#spill
  sw $s6, -220($fp)		#spill
  sw $s7, -320($fp)		#spill
  j label7
label9:
  subu $sp, $sp, 4		#alloc -360($fp) for temp74
  lw $t1, -100($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -364($fp) for temp75
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -368($fp) for temp73
  add $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -372($fp) for temp72
  move $t4, $t1
  sw $t0, -360($fp)		#spill
  sw $t1, -100($fp)		#spill
  sw $t2, -364($fp)		#spill
  sw $t3, -368($fp)		#spill
  sw $t4, -372($fp)		#spill
  j label4
label6:
  subu $sp, $sp, 4		#alloc -376($fp) for temp79
  lw $t1, -84($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -380($fp) for temp81
  lw $t3, -92($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -384($fp) for temp82
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -388($fp) for temp80
  sub $t5, $t2, $t4
  subu $sp, $sp, 4		#alloc -392($fp) for temp83
  li $t7, 8
  mul $t6, $t7, $t5
  subu $sp, $sp, 4		#alloc -396($fp) for temp78
  add $t7, $t0, $t6
  subu $sp, $sp, 4		#alloc -400($fp) for temp84
  add $t8, $t7, $0
  lw $t9, 0($t8)
  move $a0, $t9
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -404($fp) for temp85
  move $s0, $0
  move $v0, $s0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
