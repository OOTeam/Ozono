tests
testObjectUsesOrderedCollectionPrototypeAndGetsAnOrderedCollection

	| orderedCollection |
	pepita compileMethod: 'createOrdered ^ordered clone'.
	orderedCollection := pepita baseObject createOrdered.
	orderedCollection
		add: 1;
		add: 13.
	self assert: orderedCollection size equals: 2.
	self assert: orderedCollection first equals: 1.
	self assert: orderedCollection second equals: 13.