showing
createObject: creationBlock
	self errorHandler evaluate: [creationBlock value: self obtainObjectName].
	self changed.