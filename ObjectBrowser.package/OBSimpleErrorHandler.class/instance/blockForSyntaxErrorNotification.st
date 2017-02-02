as yet unclassified
blockForSyntaxErrorNotification
	^ [ :error | 
	UIManager default inform: 'Ha ocurrido un error de sintaxis:  ' , error errorCode.
	nil ]