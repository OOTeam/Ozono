method-tests
testAddMethod
	| method |
	method := 'unMetodo ^2'.
	obo compileMethod: method.
	self assert: obo methods size = 1.
	self assert: (obo includesSelector: #unMetodo).