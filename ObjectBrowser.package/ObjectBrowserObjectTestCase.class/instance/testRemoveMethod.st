method-tests
testRemoveMethod
	| methodString method |
	methodString := 'unMetodo ^2'.
	obo compileMethod: methodString.
	method := obo >> #unMetodo.
	obo removeMethod: method.
	
	self assert: obo methods size = 0.
	self assert: (obo includesSelector: #unMetodo) not.
	self assert: ((OBPharoReflection uniqueInstance classOf: obo baseObject) includesSelector: method selector) not