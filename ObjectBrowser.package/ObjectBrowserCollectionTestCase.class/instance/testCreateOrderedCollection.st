tests
testCreateOrderedCollection
	|miConjunto |
	miConjunto:= (currentLesson literalNamed: #ordered) clone.
	self assert: 0 equals: miConjunto size.