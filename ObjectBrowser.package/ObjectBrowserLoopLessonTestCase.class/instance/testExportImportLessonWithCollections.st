tests
testExportImportLessonWithCollections

	lesson := self prepareLessonWithCollections.
	lesson fileOut .
	lessonImported := self importLesson: lesson.
	
	self assert: lesson title equals:  lessonImported title.
	self assert: lessonImported objects size equals:  lesson objects size.
	self assert: (lessonImported objects anySatisfy: [ :obj |
		(obj hasAttributeNamed: 'energia') and: [(self contentPointedTo: obj byAtribute: 'energia') isNil ]
	])