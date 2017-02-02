attributes
removeAttribute: anAttribute

	anAttribute removeFrom: (OBPharoReflection uniqueInstance classOf: self baseObject).
	self flushAttributesCache.
	self changed.