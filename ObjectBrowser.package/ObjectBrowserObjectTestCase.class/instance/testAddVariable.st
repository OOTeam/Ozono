attribute-tests
testAddVariable
	| varName |
	varName := 'energia'.
	obo addAttributeNamed: varName .
	self assert: obo attributes size = 1.
	self assert: (obo hasAttributeNamed: varName).