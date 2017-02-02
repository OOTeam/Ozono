attributes
basicRelationships
	
	^self baseObject collect: [ :elem | 
		OBSpecialAttribute 
			newNamed: 'elemento'
			owner: self
			pointingTo: elem metaObject
		]