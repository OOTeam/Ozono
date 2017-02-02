references
valueAttribute
	^OBSpecialAttribute 
			newNamed: 'valor'
			owner: self objectPointed
			pointingTo: (self objectPointed baseObject value metaObject)