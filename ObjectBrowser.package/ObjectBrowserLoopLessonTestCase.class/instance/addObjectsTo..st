adding
addObjectsTo: lesson 
	| pepita rosario|
	pepita := self createPepitaObObject: lesson .
	rosario := self createRosarioObObject: lesson .
	lesson createVariableNamed: 'pepita' pointingTo: pepita.
	lesson createVariableNamed: 'rosario' pointingTo: rosario .
	^lesson.