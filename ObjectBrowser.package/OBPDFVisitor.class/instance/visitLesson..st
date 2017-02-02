visitor
visitLesson: lesson
	lesson variables do:[ :e | e accept: self].
	self visitTests: lesson.