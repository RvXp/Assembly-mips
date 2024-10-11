.data
	vetor: 	.word 67, 54, 75, 10, 14 
	espaco: 	.asciiz " "
.text
.globl main
	main:
		# setup doo vetor
		move $s1, $zero # Indice 
		move $s3, $zero # Indice
		li $s2, 20 # Tamanho do vetor
		jal loop1
		j encerramento
		
	loop1:
		beq $s3, $s2, print_ord
		move $t4, $zero   # $t4 = j = 0
		sub $t5, $s2, $s3  # $t5 = n - 1
		addi $t5, $t5, -4
		addi $s3, $s3, 4
		j loop2
		
		loop2:
			beq $t4, $t5, loop1
			lw $t6, vetor($t4)   # vector[j]
			addi $s0, $t4, 4      # j + 1	
			lw $t7, vetor($s0)   # vector[j+1]
			bgt $t6, $t7, if
			addi $t4, $t4, 4
			j loop2
			
			
			if:
				move $t8, $t6   # aux = vector[j]
				move $t6, $t7   # vector[j] = vector[j+1]
				move $t7, $t8   # vector[j+1] = aux

				# SALVA NA MEMÓRIA
				sw $t6, vetor($t4) 
				sw $t7, vetor($s0)
	
				addi $t4, $t4, 4
				j loop2	
	print_ord:
		li $v0, 1
		lw $a0, vetor($s1)
		syscall
		li $v0, 4
		la $a0, espaco
		syscall
		addi $s1, $s1, 4
		bne $s1, $s2, print_ord
		jr $ra
		
	encerramento:
		li $v0, 10
		syscall
		
	
