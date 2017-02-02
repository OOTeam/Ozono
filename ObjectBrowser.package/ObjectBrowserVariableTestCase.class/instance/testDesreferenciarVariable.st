tests
testDesreferenciarVariable
	| anObject |
	anObject := 2.
	variable pointTo: anObject metaObject.
	self assert: variable pointsTo baseObject == anObject .
	variable desreference.
	self assert: variable pointsTo baseObject == nil.