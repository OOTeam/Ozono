method-tests
testAddSintacticBadMethod
	| method |
	method := 'unMetodo ^2['.
	self should:[obo compileMethod: method] raise: SyntaxErrorNotification .