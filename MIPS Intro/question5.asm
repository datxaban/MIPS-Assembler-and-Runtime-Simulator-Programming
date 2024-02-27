.data 
	array: .word 1,2,3,4,5,6,7,8,9,10
	arr: .space 40
	Result: .asciiz "Values of new array: "
.text
	la $s0,	array #baseaddress of array
	la $s3, arr
	add $t0,$zero,$zero #count from 0
	add $t2,$zero,$zero #count from 0
	addi $t1,$zero,10 #t1 is 10
	setting:
		addi $t0,$t0,1
		addi $s0,$s0,4 #array index is ten
		bne $t0,$t1,setting
	addi $s0,$s0,-4
	loop:
		addi $t2,$t2,1
		lw $t3,($s0) #load from array to t3
		sw $t3,($s3)
		addi $s3,$s3,4
		addi $s0,$s0,-4
		bne $t2,$t1,loop
	reset: la $s2, arr
	print:	li $v0, 4
		la $a0,Result
		syscall
	check:
		addi $t2,$t2,-1
		lw $t3,($s2)
		addi $s2,$s2,4
		addi $a0, $t3, 0 # Assign an integer to a0
		li $v0, 1 # Print integer a0
		syscall
		bne $t2,$zero,check
		
		
		
		
		
	