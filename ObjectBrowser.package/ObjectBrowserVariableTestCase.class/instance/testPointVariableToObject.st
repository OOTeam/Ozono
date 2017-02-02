tests
testPointVariableToObject
	| anObject |
	anObject := 2.
	variable pointTo: anObject metaObject.
	self assert: variable pointsTo baseObject  = anObject .