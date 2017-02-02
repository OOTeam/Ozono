visiting
visitAssociationAttribute: anAttribute

	(self includesObject: anAttribute objectPointed) ifTrue: [ ^self ].
	
	self visitAttribute: anAttribute.
	anAttribute keyAttribute accept: self.
	anAttribute valueAttribute accept: self.