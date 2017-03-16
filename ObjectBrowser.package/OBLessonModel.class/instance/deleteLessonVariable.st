as yet unclassified
deleteLessonVariable
	self errorHandler
		evaluate: [ 
			self selectedObject ifNil: [ self error: 'No hay ningún colaborador interno elegido' ].
			(self confirmDeletionOf: self selectedObject)
				ifTrue: [ 
					self doDeleteLessonVariable.
					self selectedObjectBrowserVariable: OBNullLessonVariable new ] ].
	self changed