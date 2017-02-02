template
writeLessonCreation

	self write: self lessonIdentification.
	self write: ' := '.
	self write: lesson class name.
	self write: ' new title: '''.
	self write: lesson title.
	self write: '''.'.
	self cr.
	
	self write: 'self addLesson: '.
	self write: self lessonIdentification.
	self write: '.'.
	self cr.
	self cr.