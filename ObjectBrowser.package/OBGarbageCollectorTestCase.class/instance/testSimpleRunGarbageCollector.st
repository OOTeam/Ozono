tests
testSimpleRunGarbageCollector
	| variableName variableToPepita pepita |
	variableName :='pepita'.
	ob := OBLessonModel onLesson: currentLesson.
	ob createVariable: variableName .
	variableToPepita := ob variableNamed: variableName.
	pepita := variableToPepita pointsTo.
	variableToPepita desreference.
	
	ob runGarbageCollector.
	
	self assert:(ob objects includes: pepita) not