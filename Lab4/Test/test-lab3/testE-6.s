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

display:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for chess
  subu $sp, $sp, 4		#alloc -8($fp) for number
  subu $sp, $sp, 4		#alloc -12($fp) for sum
  subu $sp, $sp, 400		#alloc for temp1
  subu $sp, $sp, 4		#alloc -416($fp) for board
  la $t1, -412($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -420($fp) for temp2
  move $t1, $0
  subu $sp, $sp, 4		#alloc -424($fp) for i1
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -428($fp) for temp3
  move $t3, $0
  subu $sp, $sp, 4		#alloc -432($fp) for j1
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -436($fp) for temp4
  li $t6, 1
  move $t5, $t6
  subu $sp, $sp, 4		#alloc -440($fp) for tem
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -444($fp) for temp7
  move $t7, $a1
  subu $sp, $sp, 4		#alloc -448($fp) for temp8
  move $t8, $0
  subu $sp, $sp, 4		#alloc -452($fp) for temp9
  li $s0, 4
  mul $t9, $s0, $t8
  subu $sp, $sp, 4		#alloc -456($fp) for temp10
  add $s0, $t7, $t9
  subu $sp, $sp, 4		#alloc -460($fp) for temp6
  li $s2, 1
  move $s1, $s2
  sw $t0, -416($fp)		#spill
  sw $t1, -420($fp)		#spill
  sw $t2, -424($fp)		#spill
  sw $t3, -428($fp)		#spill
  sw $t4, -432($fp)		#spill
  sw $t5, -436($fp)		#spill
  sw $t6, -440($fp)		#spill
  sw $t7, -444($fp)		#spill
  sw $t8, -448($fp)		#spill
  sw $t9, -452($fp)		#spill
  sw $s0, -456($fp)		#spill
  sw $s1, -460($fp)		#spill
  sw $a0, -4($fp)		#spill
  sw $a1, -8($fp)		#spill
  sw $a2, -12($fp)		#spill
  lw $t1, -456($fp)
  lw $t0, 0($t1)
  lw $t2, -460($fp)
  beq $t0, $t2, label1
  sw $t1, -456($fp)		#spill
  sw $t2, -460($fp)		#spill
  j label2
label1:
label3:
  subu $sp, $sp, 4		#alloc -464($fp) for temp11
  lw $t1, -424($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -468($fp) for temp12
  lw $t3, -12($fp)
  move $t2, $t3
  sw $t0, -464($fp)		#spill
  sw $t1, -424($fp)		#spill
  sw $t2, -468($fp)		#spill
  sw $t3, -12($fp)		#spill
  lw $t0, -464($fp)
  lw $t1, -468($fp)
  blt $t0, $t1, label4
  sw $t0, -464($fp)		#spill
  sw $t1, -468($fp)		#spill
  j label5
label4:
  subu $sp, $sp, 4		#alloc -472($fp) for temp14
  move $t0, $0
  lw $t1, -432($fp)
  move $t1, $t0
  subu $sp, $sp, 4		#alloc -476($fp) for temp13
  move $t2, $t1
  subu $sp, $sp, 4		#alloc -480($fp) for temp16
  li $t4, 1
  move $t3, $t4
  lw $t4, -440($fp)
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -484($fp) for temp15
  move $t5, $t4
  sw $t0, -472($fp)		#spill
  sw $t1, -432($fp)		#spill
  sw $t2, -476($fp)		#spill
  sw $t3, -480($fp)		#spill
  sw $t4, -440($fp)		#spill
  sw $t5, -484($fp)		#spill
label6:
  subu $sp, $sp, 4		#alloc -488($fp) for temp17
  lw $t1, -432($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -492($fp) for temp18
  lw $t3, -12($fp)
  move $t2, $t3
  sw $t0, -488($fp)		#spill
  sw $t1, -432($fp)		#spill
  sw $t2, -492($fp)		#spill
  sw $t3, -12($fp)		#spill
  lw $t0, -488($fp)
  lw $t1, -492($fp)
  blt $t0, $t1, label7
  sw $t0, -488($fp)		#spill
  sw $t1, -492($fp)		#spill
  j label8
label7:
  subu $sp, $sp, 4		#alloc -496($fp) for temp19
  lw $t1, -432($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -500($fp) for temp21
  lw $t3, -4($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -504($fp) for temp22
  lw $t5, -424($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -508($fp) for temp23
  li $t7, 4
  mul $t6, $t7, $t4
  subu $sp, $sp, 4		#alloc -512($fp) for temp24
  add $t7, $t2, $t6
  sw $t0, -496($fp)		#spill
  sw $t1, -432($fp)		#spill
  sw $t2, -500($fp)		#spill
  sw $t3, -4($fp)		#spill
  sw $t4, -504($fp)		#spill
  sw $t5, -424($fp)		#spill
  sw $t6, -508($fp)		#spill
  sw $t7, -512($fp)		#spill
  lw $t0, -496($fp)
  lw $t2, -512($fp)
  lw $t1, 0($t2)
  beq $t0, $t1, label9
  sw $t0, -496($fp)		#spill
  sw $t2, -512($fp)		#spill
  j label10
label9:
  subu $sp, $sp, 4		#alloc -516($fp) for temp28
  lw $t1, -416($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -520($fp) for temp29
  lw $t3, -424($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -524($fp) for temp30
  li $t5, 40
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -528($fp) for temp27
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -532($fp) for temp31
  lw $t7, -432($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -536($fp) for temp32
  li $t9, 4
  mul $t8, $t9, $t6
  subu $sp, $sp, 4		#alloc -540($fp) for temp33
  add $t9, $t5, $t8
  subu $sp, $sp, 4		#alloc -544($fp) for temp34
  li $s1, 1
  move $s0, $s1
  sw $s0, 0($t9)
  subu $sp, $sp, 4		#alloc -548($fp) for temp25
  lw $s2, 0($t9)
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -552($fp) for temp39
  lw $s3, -440($fp)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -556($fp) for temp40
  li $s5, 10
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -560($fp) for temp37
  mul $s5, $s2, $s4
  subu $sp, $sp, 4		#alloc -564($fp) for temp38
  li $s7, 1
  move $s6, $s7
  subu $sp, $sp, 4		#alloc -568($fp) for temp36
  add $s7, $s5, $s6
  move $s3, $s7
  subu $sp, $sp, 4		#alloc -572($fp) for temp35
  #spill 0
  sw $t0, -516($fp)		#spill
  move $t0, $s3
  sw $t0, -572($fp)		#spill
  sw $t1, -416($fp)		#spill
  sw $t2, -520($fp)		#spill
  sw $t3, -424($fp)		#spill
  sw $t4, -524($fp)		#spill
  sw $t5, -528($fp)		#spill
  sw $t6, -532($fp)		#spill
  sw $t7, -432($fp)		#spill
  sw $t8, -536($fp)		#spill
  sw $t9, -540($fp)		#spill
  sw $s0, -544($fp)		#spill
  sw $s1, -548($fp)		#spill
  sw $s2, -552($fp)		#spill
  sw $s3, -440($fp)		#spill
  sw $s4, -556($fp)		#spill
  sw $s5, -560($fp)		#spill
  sw $s6, -564($fp)		#spill
  sw $s7, -568($fp)		#spill
  j label11
label10:
  subu $sp, $sp, 4		#alloc -576($fp) for temp44
  lw $t1, -416($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -580($fp) for temp45
  lw $t3, -424($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -584($fp) for temp46
  li $t5, 40
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -588($fp) for temp43
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -592($fp) for temp47
  lw $t7, -432($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -596($fp) for temp48
  li $t9, 4
  mul $t8, $t9, $t6
  subu $sp, $sp, 4		#alloc -600($fp) for temp49
  add $t9, $t5, $t8
  subu $sp, $sp, 4		#alloc -604($fp) for temp50
  move $s0, $0
  sw $s0, 0($t9)
  subu $sp, $sp, 4		#alloc -608($fp) for temp41
  lw $s2, 0($t9)
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -612($fp) for temp53
  lw $s3, -440($fp)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -616($fp) for temp54
  li $s5, 10
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -620($fp) for temp52
  mul $s5, $s2, $s4
  move $s3, $s5
  subu $sp, $sp, 4		#alloc -624($fp) for temp51
  move $s6, $s3
  sw $t0, -576($fp)		#spill
  sw $t1, -416($fp)		#spill
  sw $t2, -580($fp)		#spill
  sw $t3, -424($fp)		#spill
  sw $t4, -584($fp)		#spill
  sw $t5, -588($fp)		#spill
  sw $t6, -592($fp)		#spill
  sw $t7, -432($fp)		#spill
  sw $t8, -596($fp)		#spill
  sw $t9, -600($fp)		#spill
  sw $s0, -604($fp)		#spill
  sw $s1, -608($fp)		#spill
  sw $s2, -612($fp)		#spill
  sw $s3, -440($fp)		#spill
  sw $s4, -616($fp)		#spill
  sw $s5, -620($fp)		#spill
  sw $s6, -624($fp)		#spill
label11:
  subu $sp, $sp, 4		#alloc -628($fp) for temp57
  lw $t1, -432($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -632($fp) for temp58
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -636($fp) for temp56
  add $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -640($fp) for temp55
  move $t4, $t1
  sw $t0, -628($fp)		#spill
  sw $t1, -432($fp)		#spill
  sw $t2, -632($fp)		#spill
  sw $t3, -636($fp)		#spill
  sw $t4, -640($fp)		#spill
  j label6
label8:
  subu $sp, $sp, 4		#alloc -644($fp) for temp60
  lw $t1, -440($fp)
  move $t0, $t1
  move $a0, $t0
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -648($fp) for temp63
  lw $t3, -424($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -652($fp) for temp64
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -656($fp) for temp62
  add $t5, $t2, $t4
  move $t3, $t5
  subu $sp, $sp, 4		#alloc -660($fp) for temp61
  move $t6, $t3
  sw $t0, -644($fp)		#spill
  sw $t1, -440($fp)		#spill
  sw $t2, -648($fp)		#spill
  sw $t3, -424($fp)		#spill
  sw $t4, -652($fp)		#spill
  sw $t5, -656($fp)		#spill
  sw $t6, -660($fp)		#spill
  j label3
label5:
label2:
  subu $sp, $sp, 4		#alloc -664($fp) for temp65
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra

dfs:
  subu $sp, $sp, 8
  sw $ra, 4($sp)
  sw $fp, 0($sp)
  addiu $fp, $sp, 0
  subu $sp, $sp, 4		#alloc -4($fp) for p
  subu $sp, $sp, 4		#alloc -8($fp) for r
  subu $sp, $sp, 4		#alloc -12($fp) for ld
  subu $sp, $sp, 4		#alloc -16($fp) for rd
  subu $sp, $sp, 4		#alloc -20($fp) for temp66
  move $t0, $0
  subu $sp, $sp, 4		#alloc -24($fp) for j
  move $t1, $t0
  subu $sp, $sp, 40		#alloc for temp67
  subu $sp, $sp, 4		#alloc -68($fp) for nld
  la $t3, -64($fp)
  move $t2, $t3
  subu $sp, $sp, 40		#alloc for temp68
  subu $sp, $sp, 4		#alloc -112($fp) for nrd
  la $t4, -108($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -116($fp) for temp69
  lw $t5, 12($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -120($fp) for temp70
  lw $t7, 16($fp)
  move $t6, $t7
  sw $t0, -20($fp)		#spill
  sw $t1, -24($fp)		#spill
  sw $t2, -68($fp)		#spill
  sw $t3, -112($fp)		#spill
  sw $t4, -116($fp)		#spill
  sw $t5, 12($fp)		#spill
  sw $t6, -120($fp)		#spill
  sw $t7, 16($fp)		#spill
  sw $a0, -4($fp)		#spill
  sw $a1, -8($fp)		#spill
  sw $a2, -12($fp)		#spill
  sw $a3, -16($fp)		#spill
  lw $t0, -116($fp)
  lw $t1, -120($fp)
  beq $t0, $t1, label12
  sw $t0, -116($fp)		#spill
  sw $t1, -120($fp)		#spill
  j label13
label12:
  subu $sp, $sp, 4		#alloc -124($fp) for temp73
  lw $t1, 20($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -128($fp) for temp74
  move $t2, $0
  subu $sp, $sp, 4		#alloc -132($fp) for temp75
  li $t4, 4
  mul $t3, $t4, $t2
  subu $sp, $sp, 4		#alloc -136($fp) for temp76
  add $t4, $t0, $t3
  subu $sp, $sp, 4		#alloc -140($fp) for temp80
  move $t5, $t1
  subu $sp, $sp, 4		#alloc -144($fp) for temp81
  move $t6, $0
  subu $sp, $sp, 4		#alloc -148($fp) for temp82
  li $t8, 4
  mul $t7, $t8, $t6
  subu $sp, $sp, 4		#alloc -152($fp) for temp83
  add $t8, $t5, $t7
  subu $sp, $sp, 4		#alloc -156($fp) for temp79
  li $s0, 1
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -160($fp) for temp77
  lw $s1, 0($t8)
  add $s0, $s1, $t9
  sw $s0, 0($t4)
  subu $sp, $sp, 4		#alloc -164($fp) for temp71
  lw $s2, 0($t4)
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -168($fp) for temp85
  lw $s3, -4($fp)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -172($fp) for temp86
  move $s4, $t1
  subu $sp, $sp, 4		#alloc -176($fp) for temp87
  lw $s6, 16($fp)
  move $s5, $s6
  move $a0, $s2
  move $a1, $s4
  move $a2, $s5
  sw $t0, -124($fp)		#spill
  sw $t1, 20($fp)		#spill
  sw $t2, -128($fp)		#spill
  sw $t3, -132($fp)		#spill
  sw $t4, -136($fp)		#spill
  sw $t5, -140($fp)		#spill
  sw $t6, -144($fp)		#spill
  sw $t7, -148($fp)		#spill
  sw $t8, -152($fp)		#spill
  sw $t9, -156($fp)		#spill
  sw $s0, -160($fp)		#spill
  sw $s1, -164($fp)		#spill
  sw $s2, -168($fp)		#spill
  sw $s3, -4($fp)		#spill
  sw $s4, -172($fp)		#spill
  sw $s5, -176($fp)		#spill
  sw $s6, 16($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal display
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -180($fp) for temp84
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -184($fp) for temp88
  move $t1, $0
  move $v0, $t1
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -180($fp)		#spill
  sw $t1, -184($fp)		#spill
label13:
label14:
  subu $sp, $sp, 4		#alloc -188($fp) for temp89
  lw $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -192($fp) for temp90
  lw $t3, 16($fp)
  move $t2, $t3
  sw $t0, -188($fp)		#spill
  sw $t1, -24($fp)		#spill
  sw $t2, -192($fp)		#spill
  sw $t3, 16($fp)		#spill
  lw $t0, -188($fp)
  lw $t1, -192($fp)
  blt $t0, $t1, label15
  sw $t0, -188($fp)		#spill
  sw $t1, -192($fp)		#spill
  j label16
label15:
  subu $sp, $sp, 4		#alloc -196($fp) for temp93
  lw $t1, -8($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -200($fp) for temp94
  lw $t3, -24($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -204($fp) for temp95
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -208($fp) for temp96
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -212($fp) for temp92
  li $t7, 1
  move $t6, $t7
  sw $t0, -196($fp)		#spill
  sw $t1, -8($fp)		#spill
  sw $t2, -200($fp)		#spill
  sw $t3, -24($fp)		#spill
  sw $t4, -204($fp)		#spill
  sw $t5, -208($fp)		#spill
  sw $t6, -212($fp)		#spill
  lw $t1, -208($fp)
  lw $t0, 0($t1)
  lw $t2, -212($fp)
  beq $t0, $t2, label20
  sw $t1, -208($fp)		#spill
  sw $t2, -212($fp)		#spill
  j label18
label20:
  subu $sp, $sp, 4		#alloc -216($fp) for temp99
  lw $t1, -12($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -220($fp) for temp100
  lw $t3, -24($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -224($fp) for temp101
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -228($fp) for temp102
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -232($fp) for temp98
  li $t7, 1
  move $t6, $t7
  sw $t0, -216($fp)		#spill
  sw $t1, -12($fp)		#spill
  sw $t2, -220($fp)		#spill
  sw $t3, -24($fp)		#spill
  sw $t4, -224($fp)		#spill
  sw $t5, -228($fp)		#spill
  sw $t6, -232($fp)		#spill
  lw $t1, -228($fp)
  lw $t0, 0($t1)
  lw $t2, -232($fp)
  beq $t0, $t2, label19
  sw $t1, -228($fp)		#spill
  sw $t2, -232($fp)		#spill
  j label18
label19:
  subu $sp, $sp, 4		#alloc -236($fp) for temp105
  lw $t1, -16($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -240($fp) for temp106
  lw $t3, -24($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -244($fp) for temp107
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -248($fp) for temp108
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -252($fp) for temp104
  li $t7, 1
  move $t6, $t7
  sw $t0, -236($fp)		#spill
  sw $t1, -16($fp)		#spill
  sw $t2, -240($fp)		#spill
  sw $t3, -24($fp)		#spill
  sw $t4, -244($fp)		#spill
  sw $t5, -248($fp)		#spill
  sw $t6, -252($fp)		#spill
  lw $t1, -248($fp)
  lw $t0, 0($t1)
  lw $t2, -252($fp)
  beq $t0, $t2, label17
  sw $t1, -248($fp)		#spill
  sw $t2, -252($fp)		#spill
  j label18
label17:
  subu $sp, $sp, 4		#alloc -256($fp) for temp111
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -260($fp) for temp112
  lw $t3, 12($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -264($fp) for temp113
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -268($fp) for temp114
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -272($fp) for temp115
  lw $t7, -24($fp)
  move $t6, $t7
  sw $t6, 0($t5)
  subu $sp, $sp, 4		#alloc -276($fp) for temp109
  lw $t9, 0($t5)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -280($fp) for temp118
  lw $s0, -8($fp)
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -284($fp) for temp119
  move $s1, $t7
  subu $sp, $sp, 4		#alloc -288($fp) for temp120
  li $s3, 4
  mul $s2, $s3, $s1
  subu $sp, $sp, 4		#alloc -292($fp) for temp121
  add $s3, $t9, $s2
  subu $sp, $sp, 4		#alloc -296($fp) for temp122
  move $s4, $0
  sw $s4, 0($s3)
  subu $sp, $sp, 4		#alloc -300($fp) for temp116
  lw $s6, 0($s3)
  move $s5, $s6
  subu $sp, $sp, 4		#alloc -304($fp) for temp124
  move $s6, $0
  subu $sp, $sp, 4		#alloc -308($fp) for k
  move $s7, $s6
  subu $sp, $sp, 4		#alloc -312($fp) for temp123
  #spill 0
  sw $t0, -256($fp)		#spill
  move $t0, $s7
  sw $t0, -312($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -260($fp)		#spill
  sw $t3, 12($fp)		#spill
  sw $t4, -264($fp)		#spill
  sw $t5, -268($fp)		#spill
  sw $t6, -272($fp)		#spill
  sw $t7, -24($fp)		#spill
  sw $t8, -276($fp)		#spill
  sw $t9, -280($fp)		#spill
  sw $s0, -8($fp)		#spill
  sw $s1, -284($fp)		#spill
  sw $s2, -288($fp)		#spill
  sw $s3, -292($fp)		#spill
  sw $s4, -296($fp)		#spill
  sw $s5, -300($fp)		#spill
  sw $s6, -304($fp)		#spill
  sw $s7, -308($fp)		#spill
label21:
  subu $sp, $sp, 4		#alloc -316($fp) for temp125
  lw $t1, -308($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -320($fp) for temp127
  lw $t3, 16($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -324($fp) for temp128
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -328($fp) for temp126
  sub $t5, $t2, $t4
  sw $t0, -316($fp)		#spill
  sw $t1, -308($fp)		#spill
  sw $t2, -320($fp)		#spill
  sw $t3, 16($fp)		#spill
  sw $t4, -324($fp)		#spill
  sw $t5, -328($fp)		#spill
  lw $t0, -316($fp)
  lw $t1, -328($fp)
  blt $t0, $t1, label22
  sw $t0, -316($fp)		#spill
  sw $t1, -328($fp)		#spill
  j label23
label22:
  subu $sp, $sp, 4		#alloc -332($fp) for temp131
  lw $t1, -68($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -336($fp) for temp132
  lw $t3, -308($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -340($fp) for temp133
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -344($fp) for temp134
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -348($fp) for temp136
  lw $t7, -12($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -352($fp) for temp138
  move $t8, $t3
  subu $sp, $sp, 4		#alloc -356($fp) for temp139
  li $s0, 1
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -360($fp) for temp137
  add $s0, $t8, $t9
  subu $sp, $sp, 4		#alloc -364($fp) for temp140
  li $s2, 4
  mul $s1, $s2, $s0
  subu $sp, $sp, 4		#alloc -368($fp) for temp141
  add $s2, $t6, $s1
  lw $s3, 0($s2)
  sw $s3, 0($t5)
  subu $sp, $sp, 4		#alloc -372($fp) for temp129
  lw $s5, 0($t5)
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -376($fp) for temp144
  move $s5, $t3
  subu $sp, $sp, 4		#alloc -380($fp) for temp145
  li $s7, 1
  move $s6, $s7
  subu $sp, $sp, 4		#alloc -384($fp) for temp143
  add $s7, $s5, $s6
  move $t3, $s7
  subu $sp, $sp, 4		#alloc -388($fp) for temp142
  #spill 0
  sw $t0, -332($fp)		#spill
  move $t0, $t3
  sw $t0, -388($fp)		#spill
  sw $t1, -68($fp)		#spill
  sw $t2, -336($fp)		#spill
  sw $t3, -308($fp)		#spill
  sw $t4, -340($fp)		#spill
  sw $t5, -344($fp)		#spill
  sw $t6, -348($fp)		#spill
  sw $t7, -12($fp)		#spill
  sw $t8, -352($fp)		#spill
  sw $t9, -356($fp)		#spill
  sw $s0, -360($fp)		#spill
  sw $s1, -364($fp)		#spill
  sw $s2, -368($fp)		#spill
  sw $s4, -372($fp)		#spill
  sw $s5, -376($fp)		#spill
  sw $s6, -380($fp)		#spill
  sw $s7, -384($fp)		#spill
  j label21
label23:
  subu $sp, $sp, 4		#alloc -392($fp) for temp148
  lw $t1, -68($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -396($fp) for temp150
  lw $t3, 16($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -400($fp) for temp151
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -404($fp) for temp149
  sub $t5, $t2, $t4
  subu $sp, $sp, 4		#alloc -408($fp) for temp152
  li $t7, 4
  mul $t6, $t7, $t5
  subu $sp, $sp, 4		#alloc -412($fp) for temp153
  add $t7, $t0, $t6
  subu $sp, $sp, 4		#alloc -416($fp) for temp154
  li $t9, 1
  move $t8, $t9
  sw $t8, 0($t7)
  subu $sp, $sp, 4		#alloc -420($fp) for temp146
  lw $s0, 0($t7)
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -424($fp) for temp155
  lw $s1, -24($fp)
  move $s0, $s1
  subu $sp, $sp, 4		#alloc -428($fp) for temp156
  move $s2, $0
  sw $t0, -392($fp)		#spill
  sw $t1, -68($fp)		#spill
  sw $t2, -396($fp)		#spill
  sw $t3, 16($fp)		#spill
  sw $t4, -400($fp)		#spill
  sw $t5, -404($fp)		#spill
  sw $t6, -408($fp)		#spill
  sw $t7, -412($fp)		#spill
  sw $t8, -416($fp)		#spill
  sw $t9, -420($fp)		#spill
  sw $s0, -424($fp)		#spill
  sw $s1, -24($fp)		#spill
  sw $s2, -428($fp)		#spill
  lw $t0, -424($fp)
  lw $t1, -428($fp)
  bne $t0, $t1, label24
  sw $t0, -424($fp)		#spill
  sw $t1, -428($fp)		#spill
  j label25
label24:
  subu $sp, $sp, 4		#alloc -432($fp) for temp159
  lw $t1, -68($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -436($fp) for temp161
  lw $t3, -24($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -440($fp) for temp162
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -444($fp) for temp160
  sub $t5, $t2, $t4
  subu $sp, $sp, 4		#alloc -448($fp) for temp163
  li $t7, 4
  mul $t6, $t7, $t5
  subu $sp, $sp, 4		#alloc -452($fp) for temp164
  add $t7, $t0, $t6
  subu $sp, $sp, 4		#alloc -456($fp) for temp165
  move $t8, $0
  sw $t8, 0($t7)
  subu $sp, $sp, 4		#alloc -460($fp) for temp157
  lw $s0, 0($t7)
  move $t9, $s0
  sw $t0, -432($fp)		#spill
  sw $t1, -68($fp)		#spill
  sw $t2, -436($fp)		#spill
  sw $t3, -24($fp)		#spill
  sw $t4, -440($fp)		#spill
  sw $t5, -444($fp)		#spill
  sw $t6, -448($fp)		#spill
  sw $t7, -452($fp)		#spill
  sw $t8, -456($fp)		#spill
  sw $t9, -460($fp)		#spill
label25:
  subu $sp, $sp, 4		#alloc -464($fp) for temp168
  lw $t1, 16($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -468($fp) for temp169
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -472($fp) for temp167
  sub $t3, $t0, $t2
  lw $t4, -308($fp)
  move $t4, $t3
  subu $sp, $sp, 4		#alloc -476($fp) for temp166
  move $t5, $t4
  sw $t0, -464($fp)		#spill
  sw $t1, 16($fp)		#spill
  sw $t2, -468($fp)		#spill
  sw $t3, -472($fp)		#spill
  sw $t4, -308($fp)		#spill
  sw $t5, -476($fp)		#spill
label26:
  subu $sp, $sp, 4		#alloc -480($fp) for temp170
  lw $t1, -308($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -484($fp) for temp171
  move $t2, $0
  sw $t0, -480($fp)		#spill
  sw $t1, -308($fp)		#spill
  sw $t2, -484($fp)		#spill
  lw $t0, -480($fp)
  lw $t1, -484($fp)
  bgt $t0, $t1, label27
  sw $t0, -480($fp)		#spill
  sw $t1, -484($fp)		#spill
  j label28
label27:
  subu $sp, $sp, 4		#alloc -488($fp) for temp174
  lw $t1, -112($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -492($fp) for temp175
  lw $t3, -308($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -496($fp) for temp176
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -500($fp) for temp177
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -504($fp) for temp179
  lw $t7, -16($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -508($fp) for temp181
  move $t8, $t3
  subu $sp, $sp, 4		#alloc -512($fp) for temp182
  li $s0, 1
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -516($fp) for temp180
  sub $s0, $t8, $t9
  subu $sp, $sp, 4		#alloc -520($fp) for temp183
  li $s2, 4
  mul $s1, $s2, $s0
  subu $sp, $sp, 4		#alloc -524($fp) for temp184
  add $s2, $t6, $s1
  lw $s3, 0($s2)
  sw $s3, 0($t5)
  subu $sp, $sp, 4		#alloc -528($fp) for temp172
  lw $s5, 0($t5)
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -532($fp) for temp187
  move $s5, $t3
  subu $sp, $sp, 4		#alloc -536($fp) for temp188
  li $s7, 1
  move $s6, $s7
  subu $sp, $sp, 4		#alloc -540($fp) for temp186
  sub $s7, $s5, $s6
  move $t3, $s7
  subu $sp, $sp, 4		#alloc -544($fp) for temp185
  #spill 0
  sw $t0, -488($fp)		#spill
  move $t0, $t3
  sw $t0, -544($fp)		#spill
  sw $t1, -112($fp)		#spill
  sw $t2, -492($fp)		#spill
  sw $t3, -308($fp)		#spill
  sw $t4, -496($fp)		#spill
  sw $t5, -500($fp)		#spill
  sw $t6, -504($fp)		#spill
  sw $t7, -16($fp)		#spill
  sw $t8, -508($fp)		#spill
  sw $t9, -512($fp)		#spill
  sw $s0, -516($fp)		#spill
  sw $s1, -520($fp)		#spill
  sw $s2, -524($fp)		#spill
  sw $s4, -528($fp)		#spill
  sw $s5, -532($fp)		#spill
  sw $s6, -536($fp)		#spill
  sw $s7, -540($fp)		#spill
  j label26
label28:
  subu $sp, $sp, 4		#alloc -548($fp) for temp191
  lw $t1, -112($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -552($fp) for temp192
  move $t2, $0
  subu $sp, $sp, 4		#alloc -556($fp) for temp193
  li $t4, 4
  mul $t3, $t4, $t2
  subu $sp, $sp, 4		#alloc -560($fp) for temp194
  add $t4, $t0, $t3
  subu $sp, $sp, 4		#alloc -564($fp) for temp195
  li $t6, 1
  move $t5, $t6
  sw $t5, 0($t4)
  subu $sp, $sp, 4		#alloc -568($fp) for temp189
  lw $t7, 0($t4)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -572($fp) for temp196
  lw $t8, -24($fp)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -576($fp) for temp198
  lw $s0, 16($fp)
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -580($fp) for temp199
  li $s2, 1
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -584($fp) for temp197
  sub $s2, $t9, $s1
  sw $t0, -548($fp)		#spill
  sw $t1, -112($fp)		#spill
  sw $t2, -552($fp)		#spill
  sw $t3, -556($fp)		#spill
  sw $t4, -560($fp)		#spill
  sw $t5, -564($fp)		#spill
  sw $t6, -568($fp)		#spill
  sw $t7, -572($fp)		#spill
  sw $t8, -24($fp)		#spill
  sw $t9, -576($fp)		#spill
  sw $s0, 16($fp)		#spill
  sw $s1, -580($fp)		#spill
  sw $s2, -584($fp)		#spill
  lw $t0, -572($fp)
  lw $t1, -584($fp)
  bne $t0, $t1, label29
  sw $t0, -572($fp)		#spill
  sw $t1, -584($fp)		#spill
  j label30
label29:
  subu $sp, $sp, 4		#alloc -588($fp) for temp202
  lw $t1, -112($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -592($fp) for temp204
  lw $t3, -24($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -596($fp) for temp205
  li $t5, 1
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -600($fp) for temp203
  add $t5, $t2, $t4
  subu $sp, $sp, 4		#alloc -604($fp) for temp206
  li $t7, 4
  mul $t6, $t7, $t5
  subu $sp, $sp, 4		#alloc -608($fp) for temp207
  add $t7, $t0, $t6
  subu $sp, $sp, 4		#alloc -612($fp) for temp208
  move $t8, $0
  sw $t8, 0($t7)
  subu $sp, $sp, 4		#alloc -616($fp) for temp200
  lw $s0, 0($t7)
  move $t9, $s0
  sw $t0, -588($fp)		#spill
  sw $t1, -112($fp)		#spill
  sw $t2, -592($fp)		#spill
  sw $t3, -24($fp)		#spill
  sw $t4, -596($fp)		#spill
  sw $t5, -600($fp)		#spill
  sw $t6, -604($fp)		#spill
  sw $t7, -608($fp)		#spill
  sw $t8, -612($fp)		#spill
  sw $t9, -616($fp)		#spill
label30:
  subu $sp, $sp, 4		#alloc -620($fp) for temp210
  lw $t1, -4($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -624($fp) for temp211
  lw $t3, -8($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -628($fp) for temp212
  lw $t5, -68($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -632($fp) for temp213
  lw $t7, -112($fp)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -636($fp) for temp215
  lw $t9, 12($fp)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -640($fp) for temp216
  li $s1, 1
  move $s0, $s1
  subu $sp, $sp, 4		#alloc -644($fp) for temp214
  add $s1, $t8, $s0
  subu $sp, $sp, 4		#alloc -648($fp) for temp217
  lw $s3, 16($fp)
  move $s2, $s3
  subu $sp, $sp, 4		#alloc -652($fp) for temp218
  lw $s5, 20($fp)
  move $s4, $s5
  move $a0, $t0
  move $a1, $t2
  move $a2, $t4
  move $a3, $t6
  subu $sp, $sp, 12		#alloc for arg4~
  sw $s1, 0($sp)
  sw $s2, 4($sp)
  sw $s4, 8($sp)
  sw $t0, -620($fp)		#spill
  sw $t1, -4($fp)		#spill
  sw $t2, -624($fp)		#spill
  sw $t3, -8($fp)		#spill
  sw $t4, -628($fp)		#spill
  sw $t5, -68($fp)		#spill
  sw $t6, -632($fp)		#spill
  sw $t7, -112($fp)		#spill
  sw $t8, -636($fp)		#spill
  sw $t9, 12($fp)		#spill
  sw $s0, -640($fp)		#spill
  sw $s1, -644($fp)		#spill
  sw $s2, -648($fp)		#spill
  sw $s3, 16($fp)		#spill
  sw $s4, -652($fp)		#spill
  sw $s5, 20($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal dfs
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -656($fp) for temp209
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -660($fp) for temp221
  lw $t2, -8($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -664($fp) for temp222
  lw $t4, -24($fp)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -668($fp) for temp223
  li $t6, 4
  mul $t5, $t6, $t3
  subu $sp, $sp, 4		#alloc -672($fp) for temp224
  add $t6, $t1, $t5
  subu $sp, $sp, 4		#alloc -676($fp) for temp225
  li $t8, 1
  move $t7, $t8
  sw $t7, 0($t6)
  subu $sp, $sp, 4		#alloc -680($fp) for temp219
  lw $t9, 0($t6)
  move $t8, $t9
  sw $t0, -656($fp)		#spill
  sw $t1, -660($fp)		#spill
  sw $t2, -8($fp)		#spill
  sw $t3, -664($fp)		#spill
  sw $t4, -24($fp)		#spill
  sw $t5, -668($fp)		#spill
  sw $t6, -672($fp)		#spill
  sw $t7, -676($fp)		#spill
  sw $t8, -680($fp)		#spill
label18:
  subu $sp, $sp, 4		#alloc -684($fp) for temp228
  lw $t1, -24($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -688($fp) for temp229
  li $t3, 1
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -692($fp) for temp227
  add $t3, $t0, $t2
  move $t1, $t3
  subu $sp, $sp, 4		#alloc -696($fp) for temp226
  move $t4, $t1
  sw $t0, -684($fp)		#spill
  sw $t1, -24($fp)		#spill
  sw $t2, -688($fp)		#spill
  sw $t3, -692($fp)		#spill
  sw $t4, -696($fp)		#spill
  j label14
label16:
  subu $sp, $sp, 4		#alloc -700($fp) for temp230
  move $t0, $0
  move $v0, $t0
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
  subu $sp, $sp, 40		#alloc for temp231
  subu $sp, $sp, 4		#alloc -44($fp) for place
  la $t1, -40($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc for temp232
  subu $sp, $sp, 4		#alloc -52($fp) for count
  la $t2, -48($fp)
  move $t1, $t2
  subu $sp, $sp, 40		#alloc for temp233
  subu $sp, $sp, 4		#alloc -96($fp) for row
  la $t3, -92($fp)
  move $t2, $t3
  subu $sp, $sp, 40		#alloc for temp234
  subu $sp, $sp, 4		#alloc -140($fp) for ldiag
  la $t4, -136($fp)
  move $t3, $t4
  subu $sp, $sp, 40		#alloc for temp235
  subu $sp, $sp, 4		#alloc -184($fp) for rdiag
  la $t5, -180($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -188($fp) for temp236
  move $t5, $0
  subu $sp, $sp, 4		#alloc -192($fp) for i
  move $t6, $t5
  subu $sp, $sp, 4		#alloc -196($fp) for temp238
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal read
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  move $t7, $v0
  subu $sp, $sp, 4		#alloc -200($fp) for N
  move $t8, $t7
  subu $sp, $sp, 4		#alloc -204($fp) for temp237
  move $t9, $t8
  subu $sp, $sp, 4		#alloc -208($fp) for temp239
  move $s0, $t8
  subu $sp, $sp, 4		#alloc -212($fp) for temp240
  move $s1, $0
  sw $t0, -44($fp)		#spill
  sw $t1, -52($fp)		#spill
  sw $t2, -96($fp)		#spill
  sw $t3, -140($fp)		#spill
  sw $t4, -184($fp)		#spill
  sw $t5, -188($fp)		#spill
  sw $t6, -192($fp)		#spill
  sw $t7, -196($fp)		#spill
  sw $t8, -200($fp)		#spill
  sw $t9, -204($fp)		#spill
  sw $s0, -208($fp)		#spill
  sw $s1, -212($fp)		#spill
  lw $t0, -208($fp)
  lw $t1, -212($fp)
  beq $t0, $t1, label31
  sw $t0, -208($fp)		#spill
  sw $t1, -212($fp)		#spill
  j label33
label33:
  subu $sp, $sp, 4		#alloc -216($fp) for temp241
  lw $t1, -200($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -220($fp) for temp242
  li $t3, 10
  move $t2, $t3
  sw $t0, -216($fp)		#spill
  sw $t1, -200($fp)		#spill
  sw $t2, -220($fp)		#spill
  lw $t0, -216($fp)
  lw $t1, -220($fp)
  bgt $t0, $t1, label31
  sw $t0, -216($fp)		#spill
  sw $t1, -220($fp)		#spill
  j label32
label31:
  subu $sp, $sp, 4		#alloc -224($fp) for temp243
  move $t0, $0
  move $v0, $t0
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
  sw $t0, -224($fp)		#spill
label32:
label34:
  subu $sp, $sp, 4		#alloc -228($fp) for temp244
  lw $t1, -192($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -232($fp) for temp245
  lw $t3, -200($fp)
  move $t2, $t3
  sw $t0, -228($fp)		#spill
  sw $t1, -192($fp)		#spill
  sw $t2, -232($fp)		#spill
  sw $t3, -200($fp)		#spill
  lw $t0, -228($fp)
  lw $t1, -232($fp)
  blt $t0, $t1, label35
  sw $t0, -228($fp)		#spill
  sw $t1, -232($fp)		#spill
  j label36
label35:
  subu $sp, $sp, 4		#alloc -236($fp) for temp248
  lw $t1, -96($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -240($fp) for temp249
  lw $t3, -192($fp)
  move $t2, $t3
  subu $sp, $sp, 4		#alloc -244($fp) for temp250
  li $t5, 4
  mul $t4, $t5, $t2
  subu $sp, $sp, 4		#alloc -248($fp) for temp251
  add $t5, $t0, $t4
  subu $sp, $sp, 4		#alloc -252($fp) for temp252
  li $t7, 1
  move $t6, $t7
  sw $t6, 0($t5)
  subu $sp, $sp, 4		#alloc -256($fp) for temp246
  lw $t8, 0($t5)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -260($fp) for temp255
  lw $t9, -140($fp)
  move $t8, $t9
  subu $sp, $sp, 4		#alloc -264($fp) for temp256
  move $s0, $t3
  subu $sp, $sp, 4		#alloc -268($fp) for temp257
  li $s2, 4
  mul $s1, $s2, $s0
  subu $sp, $sp, 4		#alloc -272($fp) for temp258
  add $s2, $t8, $s1
  subu $sp, $sp, 4		#alloc -276($fp) for temp259
  li $s4, 1
  move $s3, $s4
  sw $s3, 0($s2)
  subu $sp, $sp, 4		#alloc -280($fp) for temp253
  lw $s5, 0($s2)
  move $s4, $s5
  subu $sp, $sp, 4		#alloc -284($fp) for temp262
  lw $s6, -184($fp)
  move $s5, $s6
  subu $sp, $sp, 4		#alloc -288($fp) for temp263
  move $s7, $t3
  subu $sp, $sp, 4		#alloc -292($fp) for temp264
  #spill 0
  sw $t0, -236($fp)		#spill
  #spill 1
  sw $t1, -96($fp)		#spill
  li $t1, 4
  mul $t0, $t1, $s7
  subu $sp, $sp, 4		#alloc -296($fp) for temp265
  add $t1, $s5, $t0
  subu $sp, $sp, 4		#alloc -300($fp) for temp266
  #spill 2
  sw $t2, -240($fp)		#spill
  #spill 3
  sw $t3, -192($fp)		#spill
  li $t3, 1
  move $t2, $t3
  sw $t2, 0($t1)
  subu $sp, $sp, 4		#alloc -304($fp) for temp260
  #spill 4
  sw $t4, -244($fp)		#spill
  lw $t4, 0($t1)
  move $t3, $t4
  subu $sp, $sp, 4		#alloc -308($fp) for temp269
  #spill 5
  sw $t5, -248($fp)		#spill
  lw $t5, -192($fp)
  move $t4, $t5
  subu $sp, $sp, 4		#alloc -312($fp) for temp270
  #spill 6
  sw $t6, -252($fp)		#spill
  #spill 7
  sw $t7, -256($fp)		#spill
  li $t7, 1
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -316($fp) for temp268
  add $t7, $t4, $t6
  move $t5, $t7
  subu $sp, $sp, 4		#alloc -320($fp) for temp267
  #spill 8
  sw $t8, -260($fp)		#spill
  move $t8, $t5
  sw $t0, -292($fp)		#spill
  sw $t1, -296($fp)		#spill
  sw $t2, -300($fp)		#spill
  sw $t3, -304($fp)		#spill
  sw $t4, -308($fp)		#spill
  sw $t5, -192($fp)		#spill
  sw $t6, -312($fp)		#spill
  sw $t7, -316($fp)		#spill
  sw $t8, -320($fp)		#spill
  sw $t9, -140($fp)		#spill
  sw $s0, -264($fp)		#spill
  sw $s1, -268($fp)		#spill
  sw $s2, -272($fp)		#spill
  sw $s3, -276($fp)		#spill
  sw $s4, -280($fp)		#spill
  sw $s5, -284($fp)		#spill
  sw $s6, -184($fp)		#spill
  sw $s7, -288($fp)		#spill
  j label34
label36:
  subu $sp, $sp, 4		#alloc -324($fp) for temp273
  lw $t1, -52($fp)
  move $t0, $t1
  subu $sp, $sp, 4		#alloc -328($fp) for temp274
  move $t2, $0
  subu $sp, $sp, 4		#alloc -332($fp) for temp275
  li $t4, 4
  mul $t3, $t4, $t2
  subu $sp, $sp, 4		#alloc -336($fp) for temp276
  add $t4, $t0, $t3
  subu $sp, $sp, 4		#alloc -340($fp) for temp277
  move $t5, $0
  sw $t5, 0($t4)
  subu $sp, $sp, 4		#alloc -344($fp) for temp271
  lw $t7, 0($t4)
  move $t6, $t7
  subu $sp, $sp, 4		#alloc -348($fp) for temp279
  lw $t8, -44($fp)
  move $t7, $t8
  subu $sp, $sp, 4		#alloc -352($fp) for temp280
  lw $s0, -96($fp)
  move $t9, $s0
  subu $sp, $sp, 4		#alloc -356($fp) for temp281
  lw $s2, -140($fp)
  move $s1, $s2
  subu $sp, $sp, 4		#alloc -360($fp) for temp282
  lw $s4, -184($fp)
  move $s3, $s4
  subu $sp, $sp, 4		#alloc -364($fp) for temp283
  move $s5, $0
  subu $sp, $sp, 4		#alloc -368($fp) for temp284
  lw $s7, -200($fp)
  move $s6, $s7
  subu $sp, $sp, 4		#alloc -372($fp) for temp285
  #spill 0
  sw $t0, -324($fp)		#spill
  move $t0, $t1
  move $a0, $t7
  move $a1, $t9
  move $a2, $s1
  move $a3, $s3
  subu $sp, $sp, 12		#alloc for arg4~
  sw $s5, 0($sp)
  sw $s6, 4($sp)
  sw $t0, 8($sp)
  sw $t0, -372($fp)		#spill
  sw $t1, -52($fp)		#spill
  sw $t2, -328($fp)		#spill
  sw $t3, -332($fp)		#spill
  sw $t4, -336($fp)		#spill
  sw $t5, -340($fp)		#spill
  sw $t6, -344($fp)		#spill
  sw $t7, -348($fp)		#spill
  sw $t8, -44($fp)		#spill
  sw $t9, -352($fp)		#spill
  sw $s0, -96($fp)		#spill
  sw $s1, -356($fp)		#spill
  sw $s2, -140($fp)		#spill
  sw $s3, -360($fp)		#spill
  sw $s4, -184($fp)		#spill
  sw $s5, -364($fp)		#spill
  sw $s6, -368($fp)		#spill
  sw $s7, -200($fp)		#spill
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal dfs
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -376($fp) for temp278
  move $t0, $v0
  subu $sp, $sp, 4		#alloc -380($fp) for temp288
  lw $t2, -52($fp)
  move $t1, $t2
  subu $sp, $sp, 4		#alloc -384($fp) for temp289
  move $t3, $0
  subu $sp, $sp, 4		#alloc -388($fp) for temp290
  li $t5, 4
  mul $t4, $t5, $t3
  subu $sp, $sp, 4		#alloc -392($fp) for temp291
  add $t5, $t1, $t4
  lw $t6, 0($t5)
  move $a0, $t6
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  jal write
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  subu $sp, $sp, 4		#alloc -396($fp) for temp292
  move $t7, $0
  move $v0, $t7
  addi, $sp, $fp, 0
  lw $ra, 4($sp)
  lw $fp, 0($sp)
  addi $sp, $sp, 8
  jr $ra
