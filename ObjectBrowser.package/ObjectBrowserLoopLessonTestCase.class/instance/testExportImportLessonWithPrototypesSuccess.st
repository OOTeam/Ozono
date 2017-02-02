tests
testExportImportLessonWithPrototypesSuccess

		lesson := self prepareLessonWithPrototypes.
		lesson fileOut.
		lessonImported := self importLesson: lesson.
		
		self assertEquals: [ :obo | (obo methods collect: #selector) , obo attributeNames ] inAllObjectsFrom: lesson and: lessonImported.
