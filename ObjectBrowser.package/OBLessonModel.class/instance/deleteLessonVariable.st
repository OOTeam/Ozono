as yet unclassified
deleteLessonVariable
	self errorHandler
		evaluate: [ 
			self selectedObject ifNil: [ self error: 'No hay ninguna referencia elegida' ].
			(self confirmDeletionOf: self selectedObject)
				ifTrue: [ 
					self doDeleteLessonVariable.
					self selectedObjectBrowserVariable: OBNullLessonVariable new ] ].
	self changed