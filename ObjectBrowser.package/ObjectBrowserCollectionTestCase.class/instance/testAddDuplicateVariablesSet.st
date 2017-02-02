tests
testAddDuplicateVariablesSet
	|sinRepetidos|	
	sinRepetidos := (currentLesson literalNamed: #set) clone.
	self agregarRepetidos: sinRepetidos .
	self assert: 1 equals: sinRepetidos size.
	