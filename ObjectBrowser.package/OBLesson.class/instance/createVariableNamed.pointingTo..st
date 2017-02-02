lesson-variables
createVariableNamed: aVariableName pointingTo: anObject
	
	| newVariable |
	newVariable := (OBLessonVariable newNamed: aVariableName)
		pointTo: anObject;
		yourself.
	self addVariable: newVariable.
	^newVariable