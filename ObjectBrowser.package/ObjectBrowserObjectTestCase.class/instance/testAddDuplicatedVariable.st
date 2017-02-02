attribute-tests
testAddDuplicatedVariable
	| varName |
	varName := 'energia'.
	obo addAttributeNamed: varName .
	self should: [obo addAttributeNamed: varName] raise: Exception.
	self assert: obo attributes size = 1.