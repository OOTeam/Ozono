comparing
= anObject
	^(anObject isKindOf: OBDereferencedObject) and: [ anObject baseObject = self baseObject  ]