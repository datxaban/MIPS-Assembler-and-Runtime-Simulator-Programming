.data
	nums:.word 10
	array:.word 1,2,3,4,5,6,7,8,9,99
	maxis: .asciiz "Max number is: "

.text
main:
	
	li $v0, 4 
	la $a0, maxis
	syscall 
	
	la $s0,array
	la $t0,nums
	lw $t1,0($t0) 

	jal max

	move $a0,$v0
	li $v0,1
	syscall

	li $v0,10
	syscall

max:
	addi $sp,$sp,-8
	lw $a0,0($s0)
	sw $ra,4($sp)
	sw $a0,0($sp)
	bne $t1,1,End
	add $v0,$zero,$a0
	addi $sp,$sp,8
	jr $ra
End:
	addi $t1,$t1,-1
	addi $s0,$s0,4
	jal max
	lw $ra,4($sp)
	lw $a0,0($sp)
	slt $t3,$a0,$v0
	beq $t3,0,End1
	back:
	addi $sp,$sp,8
	jr $ra
End1:
	#addi $sp,$sp,8
	add $v0,$a0,$zero
	j back

