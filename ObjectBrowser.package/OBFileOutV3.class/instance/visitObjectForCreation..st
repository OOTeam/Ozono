visiting
visitObjectForCreation: anObject

	self write: anObject posibleName.
	self write:  ' := '.
	self write: anObject class name.
	self write: ' newOn: '.
	self write: self  lessonIdentification.
	self write: '.'.
	self cr.