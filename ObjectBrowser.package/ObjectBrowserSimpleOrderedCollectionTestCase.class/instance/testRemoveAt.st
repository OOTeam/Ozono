tests
testRemoveAt
	self putSomeElements.
	self assert: 5 equals: (self collection at: 1).
	self collection removeAt: 1.
	self assert: (self collection includes: 5) not.
