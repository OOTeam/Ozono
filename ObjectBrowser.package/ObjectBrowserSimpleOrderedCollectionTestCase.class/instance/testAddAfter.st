tests
testAddAfter
	self putSomeElements.
	self assert: 6 equals: (self collection at: 2).
	self collection add: 666 after: 5.
	self assert: 666 equals: (self collection at: 2).