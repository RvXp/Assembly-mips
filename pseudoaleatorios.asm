.data 
	semente:	.word 83
	espaco: 	.asciiz " "
	vetor:		
		.align	2
		.space 20
.text
.globl main

	main: 	# setup do vetor
		move $s1, $zero #incdice do vetor
		li $s2, 20	#tamanho do vetor (5 posiçõs)
		
		# setup para gerarnumeros pseudo-aleatorios
		lw $t0, semente
		li $t1, 1664525
		li $t2, 1013904223
		li $t3, 101	# Limite para os números gerados
		jal gerador_de_numeros
		j encerramento
		
	gerador_de_numeros:
		mul $t0, $t0, $t1
		add $t0, $t0, $t2
		remu $t0, $t0, $t3
		addi $t0, $t0, 1 # exclui o valor 0
		j adicionar_no_vetor
		
	adicionar_no_vetor: # Preenche i vetor
		sw $t0, vetor($s1)
		addi $s1, $s1, 4
		bne $s1, $s2, gerador_de_numeros # se todas as posições do vetor foram preenchida o salto não ocorre
		
		move $s1, $zero
		# Printa o vetor 
	print: 
		li $v0, 1
		lw $a0, vetor($s1)
		syscall
		li $v0, 4
		la $a0, espaco
		syscall
		addi $s1, $s1, 4
		bne $s1, $s2, print
		jr $ra
	encerramento:
		li $v0, 10
		syscall