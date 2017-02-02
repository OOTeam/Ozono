visiting
visitAttribute: anAttribute

	| referencedObjectBrowserObject |
	referencedObjectBrowserObject := anAttribute pointsTo metaObject.
	referencedObjectBrowserObject accept: self.
	self addReferenceFrom: anAttribute owner to: referencedObjectBrowserObject named: anAttribute name