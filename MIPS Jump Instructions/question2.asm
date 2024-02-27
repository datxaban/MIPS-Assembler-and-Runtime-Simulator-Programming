.data
	sentence: .asciiz "please input an another integer numbers\n"
.text
	addi $t2,$zero,10 #b
	addi $t3,$zero,5 #c
	addi $t4,$zero,0 #0
	addi $t5,$zero,1 #1
	addi $t6,$zero,2 #2
	li $v0,5
	syscall
	add $a0,$0,$v0
	addi $t1,$a0,0
	beq $t1,$t4,case0
	beq $t1,$t5,case1
	beq $t1,$t6,case2
	j default
	case0:
		add $t4,$t2,$t3
		add $a0,$t4,$zero
		li $v0,1
		syscall
		j exit
	case1:
		sub $t4,$t2,$t3
		add $a0,$t4,$zero
		li $v0,1
		syscall
		j exit
	case2:
		sub $t4,$t3,$t2
		add $a0,$t4,$zero
		li $v0,1
		syscall
		j exit
	default:
		li $v0, 4
		la $a0, sentence
		syscall		
	exit:
	