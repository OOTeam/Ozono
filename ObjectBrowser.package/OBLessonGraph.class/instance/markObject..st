visiting
markObject: anObject

	derreferencedObjects remove: anObject.
	anObject allRelationships do: [ :v | v accept: self ].
