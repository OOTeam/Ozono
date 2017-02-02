queries
inClass: aClass isRedefined: aSelector

	^aClass
		allSuperclasses anySatisfy: [ :sc | sc includesSelector: aSelector ]