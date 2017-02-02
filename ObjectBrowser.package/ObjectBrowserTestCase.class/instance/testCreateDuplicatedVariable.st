tests
testCreateDuplicatedVariable
	| variableName |
	variableName :='pepita'.
	ob := OBLessonModel onLesson: currentLesson.
	ob createVariable: variableName .
	self should: [ob createVariable: variableName ] raise: Error