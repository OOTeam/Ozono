bindings
bindingOf: aString
	(self hasBindingOf: aString)
		ifTrue: [ 
			(self isLiteral: aString)
				ifTrue: [ ^ aString -> (lesson literalNamed: aString asSymbol) ]
				ifFalse: [ ^ (lesson variableNamed: aString) baseObjectBinding ] ]
		ifFalse: [ self error: aString , ' no es una variable definida ni un literal válido' translated ]