actions
importLesson

	self chooseLessonFile ifNotNil: [ :fileEntry | ^self importLesson: fileEntry ]