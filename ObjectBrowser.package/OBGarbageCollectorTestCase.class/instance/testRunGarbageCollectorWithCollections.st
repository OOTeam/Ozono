tests
testRunGarbageCollectorWithCollections
	| variableName variableToCollection collection workspace |
	variableName :='col'.
	ob := OBLessonModel onLesson: currentLesson.
	ob createVariable: variableName .
	variableToCollection := ob variableNamed: variableName.
	
	workspace :=  currentLesson createWorkspace: 'WS' contents: ''.
	self executeOnWorkspace: workspace code: 'col := bag clone. col add: 3.'. 
	
	collection := variableToCollection pointsTo.
	self assert:(ob objects includes: collection).
	variableToCollection desreference.
	ob runGarbageCollector.
	
	self assert:(ob objects includes: collection) not.
	
	workspace closeYourself.