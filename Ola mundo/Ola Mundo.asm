.data
	#area para dados na memoria principal
	msg: .asciiz "Ola, mundo" #mensagem a ser apresentada ao usuario
.text
	#area para instruções do programa
	
	
	li $v0, 4   #instrução para impressão de String
	
	la $a0, msg #transporta msg para $A0
	
	syscall   #imprime o valor em $A0