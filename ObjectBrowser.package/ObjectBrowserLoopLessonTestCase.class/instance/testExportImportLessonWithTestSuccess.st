tests
testExportImportLessonWithTestSuccess

		lesson := self prepareLessonWithTest.
		lesson fileOut.
		lessonImported := self importLesson: lesson.
		
		self assert: lesson title equals:  lessonImported title.
		self assert: lesson tests size equals:  lessonImported tests size.