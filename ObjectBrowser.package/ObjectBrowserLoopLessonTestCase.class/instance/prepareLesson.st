as yet unclassified
prepareLesson
	| lesson |
	lesson := OBLesson new title: self lessonWithObjectsTitle.
	self addObjectsTo: lesson .
	
	^lesson.