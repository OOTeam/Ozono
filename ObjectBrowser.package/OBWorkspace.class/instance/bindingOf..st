bindings
bindingOf: aString
	(self hasBindingOf: aString)
		ifTrue: [ 
			(self isLiteral: aString)
				ifTrue: [ ^ aString -> (lesson literalNamed: aString asSymbol) ]
				ifFalse: [ ^ (lesson variableNamed: aString) baseObjectBinding ] ]
		ifFalse: [ self error: aString , ' no es un colaborador ni un objeto válido' translated ]