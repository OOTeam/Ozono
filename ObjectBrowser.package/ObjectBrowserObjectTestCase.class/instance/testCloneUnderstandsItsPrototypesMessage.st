clone-tests
testCloneUnderstandsItsPrototypesMessage
	| method |
	method := 'unMetodo ^2'.
	obo compileMethod: method.
	otroObo := obo clone.
	self assert: (otroObo includesSelector: #unMetodo).
	self assert: otroObo baseObject unMetodo equals: 2