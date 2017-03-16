as yet unclassified
deleteVariable
	self errorHandler
		evaluate: [ 
			self selectedObjectAttribute ifNil: [ self error: 'No hay ningún colaborador elegido' ].
			(self confirmDeletionOf: self selectedObjectAttribute)
				ifTrue: [ self doDeleteVariable ] ].
	self changed