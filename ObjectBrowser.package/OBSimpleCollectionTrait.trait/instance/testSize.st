tests
testSize
	self assert: 0 equals: self collection size.
	self putSomeElements .
	self assert: 3 equals: self collection  size.