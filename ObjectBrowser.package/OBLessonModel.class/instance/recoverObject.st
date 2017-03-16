as yet unclassified
recoverObject
	| variableName |
	(self errorHandler
		evaluate: [
			variableName := self request: 'Nombre del objeto' default: 'objetoRecuperado'.
			variableName ifNotNil: [ 
				self createVariable: variableName toRecover: self selectedDerreferencedObject baseObject.
				]
		]).
	self changed