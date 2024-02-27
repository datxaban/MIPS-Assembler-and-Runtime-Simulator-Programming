.data
	arr: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	request: .asciiz "Input a number that is greater than 0 and less than 10 "
.text	
	la $s1,	arr #baseaddress of arr
	li $v0, 4
	la $a0,request
	syscall
	li $v0,5 #input an interger
	syscall
	add $a0,$0,$v0 #a0 is index
	add $t0,$zero,$zero #count1
	add $t1,$zero,$zero #count2
	loop1: #count the index
		add $t0,$t0,1
		bne $t0,$a0,loop1
	loop2: #load the number to the t5
		#lw $t2,0($s1)
		addi $s1,$s1,4
		addi $t1,$t1,1
		bne $t1,$t0,loop2
	print:	
		lw $t5,($s1) #t5 is number
		addi $a0, $t5, 0
		li $v0, 1
		syscall 
		
		
		
	
