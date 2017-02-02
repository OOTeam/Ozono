running
fillUpLesson
	| pepita |
	currentLesson title: 'A Test Lesson'.
	pepita := currentLesson createObject.
	pepita addAttributeNamed: 'energia'.
	pepita attributeNamed: 'energia' pointTo: (OBExternalObjectMetaObject for: 1234).	
		
	currentLesson createVariableNamed: 'pepita' pointingTo: pepita.
