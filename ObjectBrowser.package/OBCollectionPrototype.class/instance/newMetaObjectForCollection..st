instance-creation
newMetaObjectForCollection: aRealCollection

	| metaCollection |
	metaCollection := self collectionMetaObjectClass
						newWithRealObject: aRealCollection
						prototype: self.
	aRealCollection metaObject: metaCollection.
	^metaCollection.