.data
	#area para dados na memoria principal
	msg: .asciiz "Ola, mundo" #mensagem a ser apresentada ao usuario
.text
	#area para instru��es do programa
	
	
	li $v0, 4   #instru��o para impress�o de String
	
	la $a0, msg #transporta msg para $A0
	
	syscall   #imprime o valor em $A0