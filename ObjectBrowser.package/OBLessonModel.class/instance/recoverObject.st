as yet unclassified
recoverObject
	| variableName |
	(self errorHandler
		evaluate: [
			variableName := self request: 'Nombre de la referencia' default: 'recuperadoDeLaPapelera'.
			variableName ifNotNil: [ 
				self createVariable: variableName toRecover: self selectedDerreferencedObject baseObject.
				]
		]).
	self changed