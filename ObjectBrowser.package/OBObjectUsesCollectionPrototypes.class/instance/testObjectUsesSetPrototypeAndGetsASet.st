tests
testObjectUsesSetPrototypeAndGetsASet

	| set |
	pepita compileMethod: 'createSet ^set clone'.
	set := pepita baseObject createSet.
	set
		add: 1;
		add: 1.
	self assert: set size equals: 1.