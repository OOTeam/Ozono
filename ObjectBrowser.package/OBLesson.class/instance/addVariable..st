lesson-variables
addVariable: aVariable
	self variables add: aVariable.
	self suspendAllWhile: [
		self executionContext class addInstVarNamed: aVariable name.
	].