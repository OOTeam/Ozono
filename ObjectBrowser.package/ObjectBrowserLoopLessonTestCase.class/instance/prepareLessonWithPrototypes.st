as yet unclassified
prepareLessonWithPrototypes
	|  aLesson clon rosario fileEntry |
	fileEntry := self lessonWithPrototypesTitle asLegalSelector asFileName asFileReference, '.st'.
	fileEntry ensureDelete.
	aLesson := OBLesson new title: self lessonWithPrototypesTitle.
	
	rosario := self createRosarioObObject: aLesson .
	rosario addAttributeNamed: 'ubicacion'.
	aLesson createVariableNamed: 'rosario' pointingTo: rosario .
	
	clon := rosario clone.
	aLesson addObject: clon.
	aLesson createVariableNamed: 'clon' pointingTo: clon.
	
	clon compileMethod: 'otroMetodo
	^''Soy un clon'''.
	
	^ aLesson