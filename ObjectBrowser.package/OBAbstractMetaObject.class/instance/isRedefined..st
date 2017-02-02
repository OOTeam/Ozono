methods
isRedefined: aSelector

	^OBPharoReflection uniqueInstance
		inSubclassesOfClass: (OBPharoReflection uniqueInstance classOf: self baseObject)
		isRedefined: aSelector