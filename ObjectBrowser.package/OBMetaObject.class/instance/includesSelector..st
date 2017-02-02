methods
includesSelector: aSelector

	^self methods anySatisfy: [ :m | m selector == aSelector ]