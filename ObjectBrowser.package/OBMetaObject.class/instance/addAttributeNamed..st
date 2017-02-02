attributes
addAttributeNamed: attributeName

	OBPharoReflection uniqueInstance
		addInstanceVariable: attributeName
		toClassOfObject: self baseObject.

	self flushAttributesCache.
	self changed.