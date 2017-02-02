tests
testCreateWrongCharVariable
	' ,¡!¿?|%&()$#"''' do: [ :c |
			self testCreateNonValidVariableNamed: 'Pepita', c asString
		].