visiting
visitMethod: aMethod

	self write: currentObject posibleName.
	self write: ' compileMethod: '.
	self write: aMethod code printString.
	self write: '.'.
	self cr.