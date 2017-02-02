as yet unclassified
prepareLessonWithState
	|  aLesson pepita rosario fileEntry |
	fileEntry := self lessonWithStateTitle asLegalSelector asFileName asFileReference, '.st'.
	fileEntry ensureDelete.
	aLesson := OBLesson new title: self lessonWithStateTitle.
	pepita := self createPepitaObObject: aLesson .
	rosario := self createRosarioObObject: aLesson .
	aLesson createVariableNamed: 'pepita' pointingTo: pepita.
	aLesson createVariableNamed: 'rosario' pointingTo: rosario .
	
	pepita attributeNamed: 'dondeEstas' pointTo: rosario.
	pepita attributeNamed: 'energia' pointTo: (OBExternalObjectMetaObject for: nil).
	
	^ aLesson