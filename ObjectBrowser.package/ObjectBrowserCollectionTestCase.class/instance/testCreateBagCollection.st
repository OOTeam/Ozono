tests
testCreateBagCollection
	|miConjunto |
	miConjunto:= (currentLesson literalNamed: #bag) clone.
	self assert: 0 equals: miConjunto size.