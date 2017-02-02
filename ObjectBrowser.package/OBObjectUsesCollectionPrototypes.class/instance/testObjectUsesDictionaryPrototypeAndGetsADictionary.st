tests
testObjectUsesDictionaryPrototypeAndGetsADictionary

	| dictionary |
	pepita compileMethod: 'createDictionary ^dictionary clone'.
	dictionary := pepita baseObject createDictionary.
	dictionary
		at: 1 put: 'hello';
		at: 2 put: 'world'.
	self assert: dictionary size equals: 2.
	self assert: (dictionary at: 1) equals: 'hello'.
	self assert: (dictionary at: 2) equals: 'world'.