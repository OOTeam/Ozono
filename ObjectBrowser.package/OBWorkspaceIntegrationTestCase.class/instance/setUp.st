as yet unclassified
setUp
	super setUp.
	lessonModel := OBLessonModel onLesson: currentLesson.
	workspace :=  lessonModel createWorkspace: 'WS'.