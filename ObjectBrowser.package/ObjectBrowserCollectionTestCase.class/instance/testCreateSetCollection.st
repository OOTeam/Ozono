tests
testCreateSetCollection
	|miConjunto |
	miConjunto:= (currentLesson literalNamed: #set) clone.
	self assert: 0 equals: miConjunto size.