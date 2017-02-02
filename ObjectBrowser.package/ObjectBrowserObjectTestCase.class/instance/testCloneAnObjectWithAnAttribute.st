clone-tests
testCloneAnObjectWithAnAttribute
	| varName |
	varName := 'energia'.
	obo addAttributeNamed: varName .
	otroObo := obo clone.
	self assert: (otroObo hasAttributeNamed: varName).
	self assert: (otroObo basicObjectAtAttributeNamed: varName) equals: nil. 