as yet unclassified
setUp 
	super setUp.
	pepita := currentLesson createObject.
	pepita compileMethod: 'isSwallow
		^true'.
	currentLesson createVariableNamed: 'pepita' pointingTo: pepita.
