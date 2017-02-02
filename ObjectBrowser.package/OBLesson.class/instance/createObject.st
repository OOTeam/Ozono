objects
createObject

	| newObject |
	newObject := OBMetaObject newOn: self.
	self addObject: newObject.
	^ newObject