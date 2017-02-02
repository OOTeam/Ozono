tests
testAt
	self putSomeElements.
	self assert: 6 equals: (self collection at: 2).
