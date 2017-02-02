actions
renameSelectedLesson

	| newTitle |
	newTitle := self obtainLessonName.
	(newTitle notNil and: [ newTitle notEmpty ])
		ifTrue: [ 
			self selectedLesson title: newTitle.
			self changed ]