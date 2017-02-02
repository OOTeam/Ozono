tests
testCreateNonValidVariableNamed: variableName
	ob := OBLessonModel onLesson: currentLesson.
	self should: [ob createVariable: variableName ] raise: Error.
	self assert: (currentLesson hasVariableNamed: variableName) not