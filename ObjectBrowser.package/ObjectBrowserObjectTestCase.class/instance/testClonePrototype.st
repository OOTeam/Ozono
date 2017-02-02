clone-tests
testClonePrototype
	otroObo := obo clone.
	self assert: (obo == otroObo prototype).