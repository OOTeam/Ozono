tests
testNewVariableName
	| varName |
	varName := 'pepita'.
	variable name: varName.
	self assert: variable name = varName.