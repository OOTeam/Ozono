deleting
doDeleteTest
	self errorHandler evaluate: [ self lesson removeTest: self selectedTest ].
	self selectedTest: nil.
	self changed