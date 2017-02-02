methods
redefines: aSelector

	^OBPharoReflection uniqueInstance
		inClass: (OBPharoReflection uniqueInstance classOf: self baseObject)
		isRedefined: aSelector