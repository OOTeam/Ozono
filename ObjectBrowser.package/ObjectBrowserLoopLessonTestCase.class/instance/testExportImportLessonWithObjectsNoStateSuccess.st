tests
testExportImportLessonWithObjectsNoStateSuccess

	lesson := self prepareLesson.
	lesson fileOut.
	lessonImported := self importLesson: lesson.
	
	self assert: lesson title equals:  lessonImported title.
	self assert: lesson objects size equals:  lessonImported objects size