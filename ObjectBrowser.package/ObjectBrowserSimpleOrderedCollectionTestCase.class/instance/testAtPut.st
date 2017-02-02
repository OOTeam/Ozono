tests
testAtPut
	self putSomeElements.
	self assert: 5 equals: (self collection at: 1).
	self collection at: 1 put: 666.
	self assert: 666 equals: (self collection at: 1).
