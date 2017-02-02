tests
testAdd
	self assert: 0 equals: self collection size.
	self collection add: 1.
	self collection add: 1.
	self assert: self expectedOnAdd equals: self collection size.
	