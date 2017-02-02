deleting
doDeleteMethod
	self errorHandler evaluate: [ self selectedObject removeMethod: self selectedObjectMethod ].
	self selectedObjectMethod: OBNullMethod new.
	self changed