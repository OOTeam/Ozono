actions
createNewFreeLesson

	| lesson lessonName |
	lessonName :=self obtainLessonName.
	lessonName ifNotNil:[
		lesson := lessonContainer createLessonNamed: lessonName .
		lesson openInWorld.
		self changed .
	]