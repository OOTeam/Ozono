visiting
visitLessonVariable: aLessonVariable

	aLessonVariable pointsTo accept: self.
	self addReferenceFrom: lesson to: aLessonVariable pointsTo named: aLessonVariable name.