.data
	sumis: .asciiz "Sum is: "
	elems: .word 1,2,3,4,5,6,7,8,9,0
.text 
main:	
	la $s0,elems
	li $v0, 4 
	la $a0, sumis
	syscall 
	addi $t1,$zero,10
	jal sum
	add $a0, $v0, $0
	li $v0, 1
	syscall
	li $v0,10
	syscall
sum:
	addi $sp,$sp,-8
	lw $a0,($s0)
	sw $ra,0($sp)
	sw $a0,4($sp)
	bne $t1,1,L1
	add $v0,$zero,$a0
	addi $sp,$sp,8
	jr $ra
L1:	
	addi $t1,$t1,-1
	addi $s0,$s0,4
	jal sum
	lw $a0,4($sp)
	lw $ra,0($sp)
	add $v0,$a0,$v0
	addi $sp,$sp,8
	jr $ra
