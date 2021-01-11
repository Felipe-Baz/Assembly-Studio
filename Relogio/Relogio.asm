.data
	#area para dados na memoria principal
	msgHora: .asciiz "Forneça as horas: " #mensagem a ser apresentada ao usuario para pedido da hora
	msgMin: .asciiz "Forneça os Minutos : " #mensagem a ser apresentada ao usuario para pedido dos minutos
	msgSeg: .asciiz "Forneça os Segundos: " #mensagem a ser apresentada ao usuario para pedido dos segundos
	saida: .asciiz  "Horário digitado: " #mensagem de saida
	saida2: .asciiz ":"
	
.text
	#recebimento e impressão do pedido de Horas
	li $v0, 4 #imprimir uma string
	la $a0, msgHora
	syscall
	li $v0, 5 #leitura de inteiros
	syscall
	move $t0, $v0 #valor fornecido esta em $t0
	
	#recebimento e impressão do pedido de Minutos
	li $v0, 4 #imprimir uma string
	la $a0, msgMin
	syscall
	li $v0, 5 #leitura de inteiros
	syscall
	move $t1, $v0 #valor fornecido esta em $t1
	
	#recebimento e impressão do pedido de Segundos
	li $v0, 4 #imprimir uma string
	la $a0, msgSeg
	syscall
	li $v0, 5 #leitura de inteiros
	syscall
	move $t2, $v0 #valor fornecido esta em $t2
	
	#saida
	li $v0, 4 #imprimir uma string "Horário digitado: "
	la $a0, saida
	syscall
	
	li $v0, 1 #imprimir um inteiro
	move $a0, $t0
	syscall
	
	
	li $v0, 4 #imprimir uma string ":"
	la $a0, saida2
	syscall
	
	li $v0, 1 #imprimir um inteiro
	move $a0, $t1
	syscall
	
	li $v0, 4 #imprimir uma string ":"
	la $a0, saida2
	syscall
	
	li $v0, 1 #imprimir um inteiro
	move $a0, $t2
	syscall
	
	