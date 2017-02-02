tests
testObjectUsesBagPrototypeAndGetsABag

	| bag |
	pepita compileMethod: 'createBag ^bag clone'.
	bag := pepita baseObject createBag.
	bag
		add: 1;
		add: 1.
	self assert: bag size equals: 2.