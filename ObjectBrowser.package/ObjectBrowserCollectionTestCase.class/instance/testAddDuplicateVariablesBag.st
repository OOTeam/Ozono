tests
testAddDuplicateVariablesBag
	|miBolsa|
	miBolsa := (currentLesson literalNamed: #bag) clone.
	self assert: 0 equals: miBolsa size.
	self agregarRepetidos: miBolsa .
	self assert: 2 equals: miBolsa size.
	