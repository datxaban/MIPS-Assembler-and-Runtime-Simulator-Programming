.data
	arr: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
.text
main:	
	add $t0,$zero,$zero #count
	add $t1,$zero,$zero #sum
	la $t2, arr
	loop:
		slti $t3,$t0,10	#bool
		beq  $t3,$zero,Exit
		lw $t4,($t2) #arr
		addi $t2,$t2,4
		add $t1,$t1,$t4
		addi $t0,$t0,1
		j loop
	Exit:
	addi $a0, $t1, 0
	li $v0, 1
	syscall
	