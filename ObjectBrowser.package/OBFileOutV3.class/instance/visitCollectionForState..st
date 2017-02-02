visiting
visitCollectionForState: aCollection

	aCollection baseObject do:  [ :each | 
			self write: aCollection posibleName.
			self write: ' add: '.
			self write: each metaObject posibleName.
			self write: '.'.
			self cr.
			]