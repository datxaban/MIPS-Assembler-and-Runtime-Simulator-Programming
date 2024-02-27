.data
	arr: .space 40
.text
	add $t0,$zero,$zero #sum
	add $t1,$zero,$zero #count
	la $a1, arr
	loop:
		slti $t3,$t1,10	#bool
		beq  $t3,$zero,exit
		li $v0, 5
		syscall
		add $a0,$0,$v0	
		add $t0,$t0,$a0 #sum
		sw $a0,($a1) #sote a0 to a1
		addi $a1,$a1,4
		addi $t1,$t1,1
		j loop
	exit:
		addi $a0,$t0,0
		li $v0,1
		syscall
		
