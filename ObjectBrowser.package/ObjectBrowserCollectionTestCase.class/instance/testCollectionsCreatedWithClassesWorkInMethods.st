tests
testCollectionsCreatedWithClassesWorkInMethods
	| pepita |
	pepita := currentLesson createObject.
	currentLesson createVariableNamed: 'pepita' pointingTo: pepita.
	self assert: (currentLesson hasVariableNamed: 'pepita').
	pepita addAttributeNamed: 'col'.
	pepita compileMethod: 'initialize
		col := Bag new.
		col add: 1.
		col add: 2.'.
	pepita compileMethod: 'size
		^ col size'.
	pepita baseObject initialize.
	self assert: pepita baseObject size equals: 2.
	
	