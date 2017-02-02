as yet unclassified
validateVariableName: aVariableNameString usingExistingVariables: variables
	(aVariableNameString isNil or: [aVariableNameString isEmpty])
		ifTrue:[ self error: 'El nombre de la variable no debe ser vacío'  translated ].
	(aVariableNameString matchesRegex: '[a-z]+([a-z]|[A-Z]|[0-9])*')
		ifFalse:[ self error: 'El nombre de la variable no puede contener espacios ni carácteres extraños, y debe empezar con minúscula' translated].
	(variables anySatisfy: [:v | v name = aVariableNameString ])
		ifTrue: [ self error: 'Ya se ha definido una variable de nombre ' translated, aVariableNameString  ]