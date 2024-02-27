.data
	arr: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
.text
main:	
	add $t0,$zero,$zero #counteven
	add $t6,$zero,$zero #countodd
	add $t1,$zero,$zero #sumofeven
	add $t5,$zero,$zero #sumofodd
	la $t2, arr
	loop: #even
		slti $t3,$t0,5	#bool
		beq  $t3,$zero,setting
		lw $t4,($t2) #arr
		addi $t2,$t2,8
		add $t1,$t1,$t4
		addi $t0,$t0,1
		j loop
	setting:
		la $t7,arr
		j loop2
	loop2: #odd
		slti $t3,$t6,5 #count
		beq $t3,$zero,Exit #bool
		lw $t4,4($t7) #arr
		addi $t7,$t7,8
		add $t5,$t5,$t4 #sum
		addi $t6,$t6,1
		j loop2
	Exit:
	addi $a0, $t1, 0
	li $v0, 1
	syscall
	addi $a0,$t5,0
	li $v0,1
	syscall
	