tests
testObtainFirst
	|miConjunto |
	miConjunto:= (currentLesson literalNamed: #ordered) clone.
	miConjunto add: 1.
	miConjunto add: 2.
	self assert: 1 equals: miConjunto first .