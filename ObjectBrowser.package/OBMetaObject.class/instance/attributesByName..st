attributes
attributesByName: someAttributes
	^ (someAttributes collect: [ :var | OBDirectAttribute newNamed: var owner: self ])
		asSortedCollection: [ :var1 :var2 | var1 name <= var2 name ]