showing
createCollection: aCollectionFactory

	self createObject: [ :collectionName | | realClone obClone |
		realClone := aCollectionFactory clone.
		obClone := realClone metaObject.
		self 
			createVariable: collectionName 
			referencingTo: obClone ]