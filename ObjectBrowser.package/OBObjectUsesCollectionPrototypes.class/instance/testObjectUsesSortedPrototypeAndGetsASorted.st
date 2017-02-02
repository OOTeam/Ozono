tests
testObjectUsesSortedPrototypeAndGetsASorted

	| sorted |
	pepita compileMethod: 'createSorted
		| points |
		points := sorted clone.
		points sortBlock: [ :a :b | a abs > b abs ].
		^ points'.
	sorted := pepita baseObject createSorted.
	sorted
		add: -1;
		add: -5;
		add: 10.
	self assert: sorted first equals: 10.
	self assert: sorted second equals: -5.
	self assert: sorted third equals: -1.