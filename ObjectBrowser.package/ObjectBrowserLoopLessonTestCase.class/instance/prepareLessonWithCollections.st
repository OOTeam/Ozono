as yet unclassified
prepareLessonWithCollections
	| aLesson pepita rosario fileEntry theSet theDictionary |
	fileEntry := self lessonWithCollectionTitle asLegalSelector asFileName asFileReference, '.st'.
	fileEntry ensureDelete.
	aLesson := OBLesson new title: self lessonWithCollectionTitle.
	pepita := self createPepitaObObject: aLesson .
	rosario := self createRosarioObObject: aLesson .
	aLesson createVariableNamed: 'pepita' pointingTo: pepita.
	aLesson createVariableNamed: 'rosario' pointingTo: rosario .
	theSet := (aLesson literalNamed: #set) clone.
	theSet add: pepita baseObject.
	theSet add: rosario baseObject.
	
	theDictionary := (aLesson literalNamed: #dictionary) clone.
	theDictionary at: pepita baseObject put: rosario baseObject.
	theDictionary at: 1 put: 'hola'.
	theDictionary at: 1 put: pepita baseObject.
	
	pepita attributeNamed: 'dondeEstas' pointTo: rosario.
	pepita attributeNamed: 'energia' pointTo: (OBExternalObjectMetaObject for: nil).
	
	^ aLesson