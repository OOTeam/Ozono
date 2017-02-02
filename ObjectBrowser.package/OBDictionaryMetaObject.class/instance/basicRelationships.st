attributes
basicRelationships
	
	^self baseObject associations collect: [ :elem | 
		OBAssociationAttribute 
			newNamed: 'associacion'
			owner: self
			pointingTo: elem metaObject
		]