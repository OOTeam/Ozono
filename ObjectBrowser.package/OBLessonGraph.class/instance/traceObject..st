visiting
traceObject: anObject

	self addObject: anObject.
	derreferencedObjects add: anObject.
	anObject allRelationships do: [ :v | v accept: self ].