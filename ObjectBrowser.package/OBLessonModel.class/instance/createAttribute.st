as yet unclassified
createAttribute
	| variableName |
	self errorHandler
		evaluate: [ 
			variableName := self request: '¿Qué nombre deseas ponerle a este nuevo atributo?' default: ''.
			variableName
				ifNotNil: [ 
					self validateVariableName: variableName usingExistingVariables: self selectedObject attributes.
					self selectedObject addAttributeNamed: variableName ] ].
	self changed