tests
removeTest: aTest
	tests removeKey: aTest selector.
	OBPharoReflection uniqueInstance inClassOf: self executionContext removeMethodWithSelector: aTest selector