tests
testExportImportLessonWithObjectsStateSuccess

		lesson := self prepareLessonWithState.
		lesson fileOut.
		lessonImported := self importLesson: lesson.
		
		self assert: lesson title equals:  lessonImported title.
		self assert: lesson objects size equals:  lessonImported objects size.
		self assert: (lessonImported objects anySatisfy: [ :obj |
			(obj hasAttributeNamed: 'energia') and: [(self contentPointedTo: obj byAtribute: 'energia') isNil ]
		]).
		self assert: (self variablesFrom: lesson equalVariablesFrom: lessonImported)