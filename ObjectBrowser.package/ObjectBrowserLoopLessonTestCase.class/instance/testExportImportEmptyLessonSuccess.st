tests
testExportImportEmptyLessonSuccess

	lesson := self prepareEmptyLesson.
	lesson fileOut .
	lessonImported := self importLesson: lesson.
	
	self assert: lesson title equals:  lessonImported title.
	self assert: 0 equals:  lessonImported objects size.