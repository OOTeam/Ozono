deleting
deleteTest
	(self confirmDeletionOf: self selectedTest)
		ifTrue: [ self doDeleteTest ]