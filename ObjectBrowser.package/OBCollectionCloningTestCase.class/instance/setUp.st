as yet unclassified
setUp
	super setUp.
	workspace :=  currentLesson createWorkspace: 'WS' contents: ''.
	
	lessonModel := OBLessonModel onLesson: currentLesson.
	
	lessonModel createVariable: 'obj'.
	obj := lessonModel variableNamed: 'obj'.
	obj pointsTo addAttributeNamed:'x'.
	obj pointsTo compileMethod: 'x. ^x'.
	obj pointsTo compileMethod: 'x:aValue.  x:= aValue'.