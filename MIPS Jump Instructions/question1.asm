.data
.text
	add $t2,$zero,$zero
	loop:
		li $v0,5
		syscall
		add $a0,$0,$v0
		slti $t1,$a0,0
		bne $t1,$zero,print
		add $t2,$t2,$a0
		j loop
	print:
		add $a0,$0,$t2
		li $v0, 1
		syscall