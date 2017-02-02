lesson-variables
removeVariable: anOBVariable

	self variables remove: anOBVariable .
	self suspendAllWhile: [
		self executionContext class removeInstVarNamed: anOBVariable name.
	]