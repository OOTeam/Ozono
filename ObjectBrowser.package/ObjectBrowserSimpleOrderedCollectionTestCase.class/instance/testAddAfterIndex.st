tests
testAddAfterIndex
	self putSomeElements.
	self assert: 8 equals: (self collection at: 3).
	self collection add: 666 afterIndex: 2.
	self assert: 666 equals: (self collection at: 3).