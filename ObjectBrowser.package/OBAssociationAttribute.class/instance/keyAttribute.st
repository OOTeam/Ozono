references
keyAttribute
	^OBSpecialAttribute 
			newNamed: 'clave'
			owner: self objectPointed
			pointingTo: (self objectPointed baseObject key metaObject)