instance-creation
createFreeLesson

	| lesson |
	lesson := self newFreeLesson.
	self addLesson: lesson.
	^lesson.