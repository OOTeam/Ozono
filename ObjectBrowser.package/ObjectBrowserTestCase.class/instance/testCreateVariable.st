tests
testCreateVariable
	| variableName |
	variableName :='pepita'.
	ob := OBLessonModel onLesson: currentLesson.
	ob createVariable: variableName .
	self assert: (ob variableNamed: variableName) pointsTo class = OBMetaObject.