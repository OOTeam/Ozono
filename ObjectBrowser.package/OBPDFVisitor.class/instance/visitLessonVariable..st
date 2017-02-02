visitor
visitLessonVariable: variable
	builder createSubHeading: variable name.
	objectName := variable name.
	variable pointsTo accept:self.