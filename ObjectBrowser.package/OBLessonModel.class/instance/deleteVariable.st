as yet unclassified
deleteVariable
	self errorHandler
		evaluate: [ 
			self selectedObjectAttribute ifNil: [ self error: 'No hay ninguna variable elegida' ].
			(self confirmDeletionOf: self selectedObjectAttribute)
				ifTrue: [ self doDeleteVariable ] ].
	self changed