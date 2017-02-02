ui-actions
menuActions

	^ OrderedCollection
		with: { 'abrir' translated 		. #openSelectedLesson }
		with: { 'eliminar' translated 		. #removeSelectedLesson }
		with: { 'renombrar' translated 	. #renameSelectedLesson }
		with: { 'exportar' translated 	. #fileOutSelectedLesson }
		with: { 'generar PDF' translated 	. #pdfSelectedLesson }