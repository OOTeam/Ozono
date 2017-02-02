visiting
visitObject: anObject

	(visitedObjects includes: anObject)
		ifTrue: [ ^self ].
	visitedObjects add: anObject.
	self passOnObject: anObject.