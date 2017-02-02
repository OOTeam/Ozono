deleting
deleteMethod
	(self confirmDeletionOf: self selectedObjectMethod)
		ifTrue: [ self doDeleteMethod ]