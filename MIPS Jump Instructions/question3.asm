.data
	arr: .space 40
	sentence: .asciiz "The number does not exist"
.text	
	add $t0,$zero,$zero #count
	addi $t1,$zero,10 #cout from 10
	la $s1, arr
	loop:	
		li $v0,5 #nh?p s? nguyên
		syscall
		add $a0,$0,$v0
		sw $a0,($s1) #save to $s1
		addi $s1,$s1,4 # chuy?n sang ph?n t? k?
		addi $t0,$t0,1 # t?ng bi?n ??m count t0
		bne $t0,$t1,loop
	add $t1,$zero,$zero #t1 is now 0
	li $v0,5
	syscall
	add $t3,$0,$v0 #nh?p integer t3
	next:
		beq $t0,$t1,end
		lw $t2,($s1) #laod to t2
		addi $s1,$s1,-4
		beq $t2,$t3,print
		addi $t0,$t0,-1
		j next
	print:
		add $a0,$0, $t0
		li $v0,1
		syscall
		j nothing
	end:	
		li $v0,4
		la $a0,sentence
		syscall
	nothing: 
		
		