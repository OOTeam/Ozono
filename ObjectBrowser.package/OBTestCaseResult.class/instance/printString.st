printing
printString
	^'Errores: ' translated , 
		self errors size printString, 
		' Fallas: ' translated , 
		self failures size printString, 
		' Exitos: ' translated , 
		self succeededTests size printString