cloning
basicClone

	| collection |
	collection := self newMetaObjectForCollection: self createRealCollection.
	lesson ifNotNil: [  lesson addObject: collection].
	^collection