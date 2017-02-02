execution
putInContext: anOBVariable

	self
		instVarNamed: anOBVariable name
		put: anOBVariable pointsTo baseObject.