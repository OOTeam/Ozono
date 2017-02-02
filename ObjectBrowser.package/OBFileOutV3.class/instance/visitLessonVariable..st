visiting
visitLessonVariable: aVariable

	self write: self lessonIdentification.
	self write: ' createVariableNamed: '''.
	self write: aVariable name.
	self write: ''' pointingTo: '.
	self write: aVariable pointsTo posibleName.
	self write: '.'.
	self cr.