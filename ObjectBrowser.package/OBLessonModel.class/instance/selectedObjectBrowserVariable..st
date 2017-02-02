selection
selectedObjectBrowserVariable: anOBVariable
	selectedObjectBrowserVariable  := anOBVariable.
	selectedObjectAttribute := OBNullLessonVariable new.
	selectedObjectMethod := OBNullMethod new.
	anOBVariable notifySelectionTo: self objectSelectionInterested.
	selectedPage := #objects.
	self changed.