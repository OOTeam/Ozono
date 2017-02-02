queries
inSubclassesOfClass: aClass isRedefined: aSelector

	^aClass allSubclasses
		anySatisfy: [ :sc | sc includesSelector: aSelector ]