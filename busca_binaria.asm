.data
	nao_encontrado: .asciiz "\nValor nao encontrado"
	vector: 	.word 10, 14, 54, 67, 75
		
.text
.globl main

	main:
		#setup do vetor
		move $s1, $zero # Indice do vetor 
		li $s2, 20 # Tamanho do vetor
		jal busca_setup
		j encerramento
		
	busca_setup:
		move $t0, $zero # inicio = 0
		addi $t1, $s2, -4 # fim = tamanho do vetor - 1 
		li $t2, 2
		li $t4, 4
		
		li $v0, 5
		syscall
		move $t8, $v0 # numero a ser buscado
		j busca_binaria
		
		
	busca_binaria:
# A divisão da posição por 4 é necessaria para garantir que a manipulação da unidade de memoria será feita a partir do endereço inicial
		div $t5, $t0, $t4 
		div $t6, $t1, $t4
		bgt $t5, $t6, falha # se incio > fim o valor não foi encontrado
		add $t3, $t5, $t6
		div $t3, $t3, $t2
		mul $t3, $t3, $t4
		lw $t9, vector($t3)
		beq $t9, $t8, acerto
		bgt $t9, $t8, else_if
		j else
		
		
		else_if:
			div $t3, $t3, $t4
			addi $t3, $t3, -1
			mul $t3, $t3, $t4
			move $t1, $t3
			j busca_binaria
			
		else:
			div $t3, $t3, $t4
			addi $t3, $t3, 1
			mul $t3, $t3, $t4
			move $t0, $t3
			j busca_binaria
			
	acerto:
		li $v0, 1
		div $t3, $t3, $t4
		move $a0, $t3
		syscall
		jr $ra
		
	falha:
		li $v0, 4
		la $a0, nao_encontrado
		syscall
		jr $ra
	encerramento:
		li $v0, 10
		syscall
